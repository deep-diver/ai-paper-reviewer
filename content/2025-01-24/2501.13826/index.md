---
title: "Video-MMMU: Evaluating Knowledge Acquisition from Multi-Discipline Professional Videos"
summary: "Video-MMMU benchmark systematically evaluates Large Multimodal Models’ knowledge acquisition from videos across multiple disciplines and cognitive stages, revealing significant gaps between human and ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Nanyang Technological University",]
showSummary: true
date: 2025-01-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13826 {{< /keyword >}}
{{< keyword icon="writer" >}} Kairui Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13826" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13826" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13826/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video benchmarks inadequately assess Large Multimodal Models’ (LMMs) ability to learn from videos.  This limits our understanding of how well these models acquire knowledge compared to humans, and what improvements are needed.  Existing benchmarks often focus on simpler visual understanding tasks, neglecting the cognitive processes involved in true knowledge acquisition.

To address this, researchers created Video-MMMU, a new benchmark using a diverse set of 300 expert-level videos and 900 human-annotated questions.  Video-MMMU systematically evaluates LMMs across three cognitive stages: perception, comprehension, and adaptation.  The results reveal a considerable gap between human and model learning abilities and highlight the challenge of enabling LMMs to acquire complex knowledge from videos.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Video-MMMU benchmark assesses LMMs' knowledge acquisition from videos across six disciplines and three cognitive stages (perception, comprehension, adaptation). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Significant performance gaps exist between humans and models in video-based knowledge acquisition, particularly in higher-order cognitive tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Audio transcripts improve model performance on perception and comprehension but not adaptation, highlighting a trade-off between immediate understanding and long-term knowledge retention. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in multimodal learning and large language models.  It **introduces a novel benchmark, Video-MMMU**, for evaluating knowledge acquisition from videos, addressing a significant gap in current research.  This benchmark is **highly relevant** to the ongoing effort to improve LLM understanding of video content and opens **new avenues for research** into more effective video-based learning techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13826/x2.png)

> 🔼 Figure 1 illustrates the three stages of knowledge acquisition in Video-MMMU:  Perception, Comprehension, and Adaptation.  Perception focuses on whether a model can extract key pieces of information from a video.  Comprehension assesses the model's ability to understand the core concepts presented in the video. Finally, Adaptation tests the model's capacity to apply this learned knowledge to solve new and related problems not directly shown in the video.  Each stage involves a different level of cognitive complexity, progressing from simple information retrieval to complex problem solving.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of Video-MMMU: Evaluating the knowledge acquisition capability from videos through three cognitive stages: 1) Perception:  if models can identify key information related to knowledge; 2) Comprehension:  if models can interpret the underlying concepts; 3) Adaptation: if models can adapt the knowledge from videos to novel scenarios.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1" style="font-size:90%;">Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1" style="font-size:90%;">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.3.1" style="font-size:90%;">Question</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.4.1" style="font-size:90%;">Video</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.5.1" style="font-size:90%;">Knowledge</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td" id="S3.T1.2.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.2.1" style="font-size:90%;">Domain</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.3.1" style="font-size:90%;">Length</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.4.1" style="font-size:90%;">Duration</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.2.5.1" style="font-size:90%;">driven</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:90%;">Video-MME </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S3.T1.2.1.3.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.3.1" style="font-size:90%;">35.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="font-size:90%;">1017.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.2.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:90%;">MMBench-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="S3.T1.2.1.4.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="font-size:90%;">10.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="font-size:90%;">165.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:90%;">Video-Bench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="S3.T1.2.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.3.1" style="font-size:90%;">21.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.4.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.5.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.6.1.1" style="font-size:90%;">TempCompass </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T1.2.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.3.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.4.1" style="font-size:90%;">11.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.6.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.7.1.1" style="font-size:90%;">MVBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S3.T1.2.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.3.1" style="font-size:90%;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.4.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.7.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S3.T1.2.1.8.1.1" style="font-size:90%;">AutoEval-Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.2.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S3.T1.2.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.2.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.3.1" style="font-size:90%;">11.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.4.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.1.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.8.5.1" style="font-size:90%;color:#B22222;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.2.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.1.1" style="font-size:90%;">Video-MMMU</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.2.1" style="font-size:90%;">Professional</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.3.1" style="font-size:90%;">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.4.1" style="font-size:90%;">506.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.1.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S3.T1.2.1.9.5.1" style="font-size:90%;color:#556B2F;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares Video-MMMU with other popular video question answering benchmarks, highlighting key differences in terms of video domains, question length, video duration, and whether the benchmark focuses on knowledge-driven question answering.  It demonstrates that Video-MMMU is unique in its focus on evaluating knowledge acquisition from professional-level educational videos, which require deeper understanding and reasoning beyond visual recognition tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Video-MMMU and other widely adopted video benchmarks.
> </details>





### In-depth insights


#### Video-Based Learning
Video-based learning presents a **powerful and engaging** method for knowledge acquisition, leveraging the visual and auditory senses to facilitate comprehension and retention.  **Effective video-based learning** designs progress systematically through cognitive stages, starting with the perception of information, followed by comprehension of concepts, and culminating in the application of learned knowledge to novel problems.  **High-quality educational videos** should be rich in multimedia elements, providing clear explanations, demonstrations, and examples to cater to diverse learning styles.  However, the effectiveness of video-based learning hinges on careful pedagogical design, ensuring relevance, clarity, and appropriate pacing.  **The successful integration** of video into educational settings requires thoughtful consideration of learner needs, assessment strategies, and technological infrastructure.  Furthermore, it is crucial to acknowledge the **limitations of current AI models** in fully emulating the human capacity for video-based learning. While some progress has been made, significant gaps remain in models' abilities to perceive, comprehend, and adapt knowledge from video content, particularly in complex or nuanced situations. Future research should focus on improving the capabilities of AI in extracting meaningful insights and generating effective learning experiences from video data.

#### MMMU Benchmark
A hypothetical MMMU Benchmark in a research paper would likely involve a multifaceted evaluation of large multimodal models (LMMs).  It would assess their ability to acquire and utilize knowledge from diverse, professional-level videos. The benchmark would likely incorporate **multiple stages of cognitive processing**: perception (identifying key information), comprehension (understanding underlying concepts), and adaptation (applying knowledge to novel problems).  **Multi-disciplinary video datasets** would be crucial, spanning various fields to test generalizability and avoid overfitting to specific domains.  **Quantitative metrics** would be essential, possibly including a 'knowledge gain' metric to capture improvement in performance after video exposure.  The benchmark would help researchers understand the strengths and weaknesses of LMMs in real-world knowledge acquisition tasks, and would likely facilitate the development of more robust and human-like learning capabilities in AI models.  **A crucial aspect** would be the detailed annotation and quality control of videos and questions, ensuring the validity and reliability of the benchmark's results.

#### Cognitive Track Eval
A hypothetical "Cognitive Track Eval" section in a research paper would delve into the evaluation methodology for assessing knowledge acquisition through different cognitive stages.  It would likely involve a detailed description of the **three-stage model** (Perception, Comprehension, Adaptation), outlining how each stage is measured.  The metrics used, such as accuracy scores or a novel knowledge gain metric, would be defined and justified.  The evaluation process would be explained, including the types of questions used to assess each cognitive level, the datasets employed, and the models tested.  **Benchmarking against existing methods** would demonstrate the novelty and effectiveness of the proposed evaluation scheme. Finally, a discussion of the **limitations** and potential future improvements to the cognitive evaluation would be critical, for example, acknowledging the challenges of accurately measuring complex cognitive processes, and addressing potential biases inherent in the evaluation tasks and datasets.  The analysis of results from this evaluation would form a significant part of this section, highlighting the **strengths and weaknesses** of different large multimodal models (LMMs) in acquiring and applying knowledge from videos.

#### Model Limitations
Large multimodal models (LMMs) demonstrate significant limitations in acquiring and applying knowledge from videos, especially as cognitive demands increase.  **Performance noticeably declines on comprehension and adaptation tasks**, highlighting a critical gap between human and model learning capabilities. While LMMs show some progress in knowledge acquisition, as evidenced by improvement on specific questions after video exposure, this improvement is often offset by a tendency to lose previously correct answers, indicating a fragility in knowledge retention and application.  **Models struggle with adapting learned methods to novel scenarios**, often failing to translate theoretical understanding to practical application. This suggests that existing LMMs lack the robust, adaptable reasoning capabilities needed for effective real-world video-based learning. Addressing these limitations requires further research focusing on improving knowledge retention, adaptable reasoning, and the ability to handle nuanced problem-solving in dynamic contexts.

#### Future Directions
Future research should prioritize addressing the significant gap between human and model knowledge acquisition from videos.  **Improving LMMs' ability to adapt learned knowledge to novel scenarios is crucial**, focusing on enhancing their ability to process and reason with information presented in diverse visual formats, including complex diagrams and handwritten notes.  Further exploration of the interplay between audio and visual information is needed, investigating how audio transcripts can both enhance and hinder effective knowledge acquisition.  **Developing more sophisticated evaluation metrics** beyond simple accuracy, such as those capturing the nuanced aspects of human learning, is essential to better understand model capabilities and limitations.  Finally, expanding Video-MMMU with a broader range of disciplines and more complex question types, especially those requiring higher-order reasoning and problem-solving, will provide more robust benchmarks for assessing progress in video-based learning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13826/x3.png)

> 🔼 Figure 2 presents examples from the Video-MMMU dataset, showcasing the diversity of its content.  The dataset includes videos from six academic disciplines (Art, Business, Humanities, Medicine, Science, and Engineering) and three tracks of questions (Perception, Comprehension, and Adaptation) designed to evaluate different levels of knowledge acquisition. The figure is organized into two rows. The top row displays Concept-Introduction videos, which primarily focus on explaining core concepts and theories using explanatory content. The bottom row shows Problem-Solving videos, which demonstrate step-by-step solutions to example questions, often illustrating practical applications of the concepts presented.
> <details>
> <summary>read the caption</summary>
> Figure 2: Sampled Video-MMMU examples across 6 academic disciplines and 3 tracks. The examples are organized in two rows based on distinct video types: (1) Concept-Introduction videos (top row) focus on teaching factual knowledge, fundamental concepts, and theories through explanatory content, while (2) Problem-Solving videos (bottom row) demonstrate step-by-step solutions to an example question.
> </details>



![](https://arxiv.org/html/2501.13826/x4.png)

> 🔼 Figure 3 presents a taxonomy of the question and answer (QA) pairs used in the Video-MMMU dataset, categorized by cognitive level and video discipline.  (a) shows a pie chart illustrating the distribution of videos across six disciplines: Art, Business, Humanities, Medicine, Science, and Engineering. (b) displays a donut chart visualizing the distribution of QA pairs across the three cognitive levels: Perception, Comprehension, and Adaptation.  Finally, (c) presents bar charts depicting the number of questions that do or do not utilize audio for each discipline.
> <details>
> <summary>read the caption</summary>
> Figure 3: Taxonomy of QA types and video disciplines.
> </details>



![](https://arxiv.org/html/2501.13826/x5.png)

> 🔼 This figure shows the performance comparison of different large multimodal models (LLMs) across three knowledge acquisition tracks (Perception, Comprehension, and Adaptation) before and after adding audio transcripts to the video inputs.  The x-axis represents the different tasks, while the y-axis shows the accuracy in percentage.  The chart visually demonstrates the impact of including audio information on the models' ability to acquire knowledge from videos.  Specifically, it highlights whether the additional audio context improves or hinders the models' performance on each type of task.  We can compare the model's performance on the same task with or without audio to better understand the role of audio in video-based learning.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance comparison across tracks before and after adding audio transcripts.
> </details>



![](https://arxiv.org/html/2501.13826/x6.png)

> 🔼 The figure shows a bar chart comparing the knowledge gain (Δknowledge) of different large language models (LLMs) and humans after watching videos in the Adaptation track of the Video-MMMU benchmark.  Δknowledge represents the percentage improvement in the models’ performance on post-video questions compared to their pre-video performance on the same questions.  Higher values indicate a greater knowledge gain from the videos. The chart visually demonstrates the significant difference in knowledge acquisition between human subjects and the various LLMs, highlighting the challenge LLMs face in adapting and applying knowledge from videos to new scenarios.
> <details>
> <summary>read the caption</summary>
> (a) Comparison of ΔknowledgesubscriptΔknowledge\Delta_{\text{knowledge}}roman_Δ start_POSTSUBSCRIPT knowledge end_POSTSUBSCRIPT (performance improvement in the Adaptation track after watching the video compared to before).
> </details>



![](https://arxiv.org/html/2501.13826/x7.png)

> 🔼 This figure shows two bar charts visualizing the performance of different large language models (LLMs) on the Adaptation track of the Video-MMMU benchmark. The left chart displays the 'Wrong-to-Right Rate,' which represents the percentage of questions initially answered incorrectly by the model without watching the video but correctly after watching the video. The right chart displays the 'Right-to-Wrong Rate,' which represents the percentage of questions initially answered correctly by the model but incorrectly after watching the video.  Both charts help illustrate how the LLMs' knowledge changes (or doesn't change) after they view a video, offering insights into their ability to acquire and apply knowledge from video content. The comparison highlights the effectiveness of video-based learning for different models and the challenges these models face in adapting their knowledge.
> <details>
> <summary>read the caption</summary>
> (b) Comparison of Wrong-to-Right Rate (the percentage of Adaptation track questions that were initially answered incorrectly without the video but correctly after watching the video) and Right-to-Wrong Rate (vice versa).
> </details>



![](https://arxiv.org/html/2501.13826/x8.png)

> 🔼 Figure 5 presents key results from the experiment measuring knowledge gain (Δknowledge).  The left subplot (a) compares the knowledge gain of humans versus various large language models (LLMs) after watching educational videos. It shows the percentage improvement in performance on a post-video assessment compared to pre-video assessment performance. The right subplot (b) further analyzes LLM responses to questions. It displays two metrics: the Wrong-to-Right Rate (percentage of initially incorrect answers that were corrected after video exposure) and the Right-to-Wrong Rate (percentage of initially correct answers that became incorrect after video exposure).  These metrics illustrate how LLMs change their answers after viewing the educational videos, revealing insights into their knowledge acquisition process.
> <details>
> <summary>read the caption</summary>
> Figure 5: Key findings in the experiment of ΔknowledgesubscriptΔknowledge\Delta_{\text{knowledge}}roman_Δ start_POSTSUBSCRIPT knowledge end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2501.13826/x9.png)

> 🔼 This figure demonstrates a case where a large language model (LLM) fails to adapt a method learned from a video to a new, slightly different scenario.  The model correctly recalls the knowledge presented in the video about Depth-First Search (DFS) and its use in graph traversal, specifically concerning the concept of 'discovery/finishing' timestamps. However, when presented with a graph that contains cycles (not shown in the video), the model cannot correctly apply the algorithm. The example highlights the model's limitation in adapting previously learned knowledge to new, more complex situations where subtle differences in the context significantly alter the procedure.
> <details>
> <summary>read the caption</summary>
> Figure 6: A Case of Method Adaptation Error. The model can recall the correct knowledge from the video but fails to adapt the method to a new scenario. More error cases are analyzed in the Appendix.
> </details>



![](https://arxiv.org/html/2501.13826/x10.png)

> 🔼 This figure shows a breakdown of the 100 errors that were manually analyzed by human annotators in the responses generated by the Claude-3.5-Sonnet model on the adaptation tasks of the Video-MMMU benchmark. The errors are categorized into five main types: Method Adaptation Error (64%), Question Misreading Error (15%), Method Selection Error (8%), Annotation Error (4%), and Refuse to Answer (4%).  The Method Adaptation Error is the most frequent, indicating that the model often struggles to apply knowledge acquired from the video to novel, yet similar problems.  Question Misreading suggests the model misunderstood aspects of the questions themselves.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of the 100 human-annotated errors in Claude-3.5-Sonnet.
> </details>



![](https://arxiv.org/html/2501.13826/x11.png)

> 🔼 The prompt shown in Figure 8 is used for the Adaptation track in the Video-MMMU benchmark.  It instructs the large multimodal model (LMM) to watch and learn from the provided video and then use that knowledge to answer a question. Importantly, the image related to the question is presented only at the end of the video, forcing the LMM to fully process the video content before attempting to answer. This setup specifically tests the LMM's ability to adapt previously learned knowledge to a novel scenario.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for Adaptation track.
> </details>



![](https://arxiv.org/html/2501.13826/x12.png)

> 🔼 This figure shows the prompt used to instruct an AI model to determine whether audio information is necessary to answer a question based on a video.  The model is given a video clip, a question, and the corresponding answer. It must then determine if audio was required to answer the question, providing a detailed explanation of its reasoning and outputting a JSON object with a 'reason' field (containing the explanation) and a 'use_audio' field (a boolean indicating true or false). The JSON output format is also specified in the prompt.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for determining the helpfulness of audio.
> </details>



![](https://arxiv.org/html/2501.13826/x13.png)

> 🔼 The figure illustrates the detailed steps involved in creating the Video-MMMU dataset.  It starts with selecting topics and curating videos from YouTube using the YouTube Data API and GPT-40. A three-tier quality assurance process is then applied, involving annotators, GPT-40, and domain experts. Next, question-answer pairs (QA) are annotated, categorizing questions into three cognitive levels (Perception, Comprehension, and Adaptation). Each level has different question types (e.g., OCR, ASR, CC, PSC, CSA, PSA). Finally, the audio processing step uses Gemini 1.5 Pro to analyze each video-question pair and assess the potential helpfulness of audio to the models.
> <details>
> <summary>read the caption</summary>
> Figure 10: An illustration of the dataset curation pipeline.
> </details>



![](https://arxiv.org/html/2501.13826/x14.png)

> 🔼 This figure shows a sample error case from the Adaptation track of the Video-MMMU benchmark.  The model, Claude-3.5-Sonnet, is presented with a circuit problem where a switch is added to a parallel circuit. The model fails to correctly adapt the quantitative analysis method of calculating currents from the video example, leading to a wrong answer. The human response correctly applies the method to solve the new problem. This illustrates a Method Selection Error where the model chooses the wrong approach rather than failing to understand the concepts.
> <details>
> <summary>read the caption</summary>
> Figure 11: A sample error case in the Adaptation track: Method Selection Error by Claude-3.5-Sonnet.
> </details>



![](https://arxiv.org/html/2501.13826/x15.png)

> 🔼 This figure showcases a case where Claude-3.5-Sonnet, a large language model, made an error in solving an adaptation task due to misinterpreting the question.  The task involves analyzing a Howe bridge truss structure under a specified load, specifically calculating the maximum force in bar CG. The model correctly identifies the necessary steps (calculating reactions, applying the method of sections) but misinterprets a key detail in the problem statement: it incorrectly assumes that bar CG is a vertical member, leading to inaccurate calculations. In contrast, a human expert correctly identifies CG as a diagonal member and performs the calculations accurately, resulting in a different answer. This highlights a limitation of the model in precisely extracting information and applying it correctly to problem solving within the context of the presented information.
> <details>
> <summary>read the caption</summary>
> Figure 12: A sample error case in the Adaptation track: Question Misreading Error by Claude-3.5-Sonnet.
> </details>



![](https://arxiv.org/html/2501.13826/x16.png)

> 🔼 This figure presents a case where GPT-40, a large language model, demonstrates a method adaptation error during an adaptation task within the Video-MMMU benchmark.  The task involves using knowledge from a video lecture on calculating displacement from velocity-time graphs. The question asks to determine the time at which an object returns to its initial position given a velocity-time graph showing both positive and negative velocities.  GPT-40 initially displays some understanding of the concept of area under the curve representing displacement, but fails to correctly adapt this knowledge to a scenario with both positive and negative areas. In contrast, a human expert correctly solves the problem by calculating the net displacement, demonstrating the model's limitation in adapting learned methods to new, similar situations.
> <details>
> <summary>read the caption</summary>
> Figure 13: A sample error case in the Adaptation track: Method Adaptation Error by GPT-4o.
> </details>



![](https://arxiv.org/html/2501.13826/x17.png)

> 🔼 This figure shows a case where GPT-40 made an error in the Adaptation track due to misreading the question.  The video lecture covered the photoelectric effect, and the question asked for the approximate work function of a material, given a graph of maximum kinetic energy of photoelectrons versus the frequency of photons.  GPT-40 initially attempted to solve this using formulas and substituting values. However, after reviewing the video, GPT-40 correctly identified the need to find the y-intercept of the graph to find the answer. Yet, GPT-40 misread the y-intercept from the graph, resulting in an incorrect answer. This demonstrates that while the model may have learned the correct method after seeing the video, its performance was hampered by an error in visual interpretation. The human response correctly identifies the y-intercept and calculates the correct answer.
> <details>
> <summary>read the caption</summary>
> Figure 14: A sample error case in the Adaptation track: Question Misreading Error by GPT-4o.
> </details>



![](https://arxiv.org/html/2501.13826/x18.png)

> 🔼 This figure shows a sample error case in the Perception track.  The model is asked to identify three different types of muscle tissue in images from a video.  The question is designed to test the model's ability to identify the muscle tissue based on visual cues. The model fails to identify the muscles correctly in this instance, showing a weakness in its ability to perform accurate visual perception and recognition tasks. This error highlights that the model may not correctly perceive spatial arrangements in visual content, relying instead on a habitual reading order (left to right, top to bottom).
> <details>
> <summary>read the caption</summary>
> Figure 15: A sample error case in the Perception track.
> </details>



![](https://arxiv.org/html/2501.13826/x19.png)

> 🔼 This figure showcases a typical error in the perception track, specifically highlighting how the model incorrectly identifies the ion channels in a neuron based on their color-coding in a video animation.  The model's response demonstrates a failure to correctly associate the colors (blue, orange/yellow, green) with the respective ion channels (sodium, mechanically-gated, potassium) as accurately depicted in the video's visual elements. The model's response indicates confusion in understanding the visual cues and their correlation to the correct labels.
> <details>
> <summary>read the caption</summary>
> Figure 16: A sample error case in the Perception track.
> </details>



![](https://arxiv.org/html/2501.13826/x20.png)

> 🔼 This figure showcases a specific instance where a large language model (LLM) exhibited an error in the comprehension track of the Video-MMMU benchmark.  The task involved understanding and applying a breadth-first search (BFS) algorithm to construct a spanning tree within a graph. The model correctly identified that a BFS involves horizontal exploration before vertical exploration. However, the model made mistakes when the starting node (root node) was changed from node A to node F. The model did not correctly identify which nodes were directly connected to the new root node and, as a result, incorrectly determined the nodes located at level 3 of the BFS spanning tree. This error highlights the challenges faced by LLMs in transferring their understanding of algorithms and problem-solving strategies to novel scenarios, even with minor input changes.
> <details>
> <summary>read the caption</summary>
> Figure 17: A sample error case in the Comprehension track.
> </details>



![](https://arxiv.org/html/2501.13826/x21.png)

> 🔼 The figure showcases a comprehension error made by Claude-3.5-Sonnet. The model incorrectly uses the formula  `t = (2 * Voy) / g` to calculate the time of flight for a projectile launched from a cliff at an angle of 30 degrees. This formula is only valid for projectiles launched from ground level and returning to it.  The correct approach, demonstrated in the video lecture, involves using the quadratic equation `y(t) = Yo + Voy * t - (1/2) * g * t²` to account for the different launch and landing heights. This highlights the model's failure to fully grasp the problem-solving strategy and adapt it to a slightly modified scenario.
> <details>
> <summary>read the caption</summary>
> Figure 18: A sample error case in the Comprehension track.
> </details>



![](https://arxiv.org/html/2501.13826/x22.png)

> 🔼 This figure showcases a successful instance of knowledge acquisition from a video lecture, demonstrated by the Claude-3.5-Sonnet model. Initially, the model incorrectly calculated the maximum flow in a network using the Ford-Fulkerson algorithm. However, after viewing a video explaining the algorithm and its steps, the model revised its approach. It correctly identified augmenting paths, respected capacity constraints, and applied flow conservation rules to arrive at the accurate solution. This highlights the model's ability to learn and utilize the information presented in the video, thereby improving its performance in solving network flow problems.
> <details>
> <summary>read the caption</summary>
> Figure 19: A Wrong-to-Right example of Claude-3.5-Sonnet in the Adaptation track.
> </details>



![](https://arxiv.org/html/2501.13826/x23.png)

> 🔼 This figure shows a successful knowledge acquisition example from a video lecture on thin film interference.  Claude-3.5-Sonnet initially incorrectly calculates the film thickness needed for maximum constructive interference, due to a misunderstanding of phase shifts at the boundaries between materials with different refractive indices. After watching the video, however, the model correctly identifies the phase shift based on the relative refractive indices and applies the correct formula for constructive interference to determine the proper film thickness. This demonstrates the model's ability to learn from video and correct its understanding of complex physics principles.
> <details>
> <summary>read the caption</summary>
> Figure 20: A Wrong-to-Right example of Claude-3.5-Sonnet in the Adaptation track.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.1">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T2.2.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T2.2.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.2.1" style="font-size:90%;">Overall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.2.1.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.3.1" style="font-size:90%;">Results by Track</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T2.2.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.4.1" style="font-size:90%;">Results by Discipline</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_nopad_r" id="S4.T2.2.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.2.2.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1" style="font-size:90%;">Perception</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.2.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.4.1" style="font-size:90%;">Comprehension</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right ltx_border_t" id="S4.T2.2.2.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.2.5.1" style="font-size:90%;">Adaptation</span><span class="ltx_text" id="S4.T2.2.2.5.2" style="font-size:90%;">   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.6.1" style="font-size:90%;">Art.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.7.1" style="font-size:90%;">Biz.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.1" style="font-size:90%;">Sci.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.9.1" style="font-size:90%;">Med.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.10.1" style="font-size:90%;">Hum.</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.11.1" style="font-size:90%;">Eng.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.2.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.3.1.1" style="font-size:90%;">Random Choice</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.3.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.2.1" style="font-size:90%;">14.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.3.1" style="font-size:90%;">12.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.4.1" style="font-size:90%;">14.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right ltx_border_t" id="S4.T2.2.3.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.3.5.1" style="font-size:90%;">16.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.6.1" style="font-size:90%;">11.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.7.1" style="font-size:90%;">12.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.8.1" style="font-size:90%;">12.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.9.1" style="font-size:90%;">22.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.10.1" style="font-size:90%;">10.48</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.3.11.1" style="font-size:90%;">13.57</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.4.1.1" style="font-size:90%;">Human Expert</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.4.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.2.1" style="font-size:90%;">74.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.3.1" style="font-size:90%;">84.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.4.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.4.1" style="font-size:90%;">78.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.4.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.4.5.1" style="font-size:90%;">60.33   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.6.1" style="font-size:90%;">80.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.7.1" style="font-size:90%;">78.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.8.1" style="font-size:90%;">74.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.9.1" style="font-size:90%;">70.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.10.1" style="font-size:90%;">84.76</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.4.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.4.11.1" style="font-size:90%;">69.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5" style="background-color:#CCCCFF;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S4.T2.2.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.1.1" style="font-size:90%;background-color:#CCCCFF;">Proprietary LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.2.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.1.1" style="font-size:90%;">Gemini 1.5 Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.6.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.2.1" style="font-size:90%;">49.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.3.1" style="font-size:90%;">57.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.6.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.4.1" style="font-size:90%;">49.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right ltx_border_t" id="S4.T2.2.6.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.6.5.1" style="font-size:90%;">43.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.6.1" style="font-size:90%;">63.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.7.1" style="font-size:90%;">53.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.8.1" style="font-size:90%;">43.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.9.1" style="font-size:90%;">49.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.6.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.10.1" style="font-size:90%;">59.05</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.6.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.6.11.1" style="font-size:90%;">45.72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.1.1" style="font-size:90%;">Gemini 1.5 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.7.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.2.1" style="font-size:90%;">53.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.3.1" style="font-size:90%;">59.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.7.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.4.1" style="font-size:90%;">53.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.7.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.7.5.1" style="font-size:90%;">49.33   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.6.1" style="font-size:90%;">57.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.7.1" style="font-size:90%;">59.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.8.1" style="font-size:90%;">49.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.9.1" style="font-size:90%;">57.42</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.10.1" style="font-size:90%;">58.10</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.7.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.7.11.1" style="font-size:90%;">50.31</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.8.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.8.1.1" style="font-size:90%;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.8.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.2.1" style="font-size:90%;">61.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.3.1" style="font-size:90%;">66.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.8.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.4.1" style="font-size:90%;">62.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.8.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.8.5.1" style="font-size:90%;">55.67</span><span class="ltx_text" id="S4.T2.2.8.5.2" style="font-size:90%;">   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.6.1" style="font-size:90%;">69.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.7.1" style="font-size:90%;">66.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.8.1" style="font-size:90%;">51.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.8.9.1" style="font-size:90%;">64.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.10.1" style="font-size:90%;">69.52</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.8.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.8.11.1" style="font-size:90%;">57.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.9.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.1.1" style="font-size:90%;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.9.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.2.1" style="font-size:90%;">65.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.3.1" style="font-size:90%;">72.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.9.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.4.1" style="font-size:90%;">69.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.9.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.9.5.1" style="font-size:90%;">55.67</span><span class="ltx_text" id="S4.T2.2.9.5.2" style="font-size:90%;">   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.9.6.1" style="font-size:90%;">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.7.1" style="font-size:90%;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.8.1" style="font-size:90%;">56.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.9.9.1" style="font-size:90%;">58.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.10.1" style="font-size:90%;">75.24</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.9.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.11.1" style="font-size:90%;">66.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S4.T2.2.10.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.10.1.1" style="font-size:90%;background-color:#E6E6FF;">Open-source LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.2.11.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.11.1.1" style="font-size:90%;">VILA1.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.11.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.2.1" style="font-size:90%;">20.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.3.1" style="font-size:90%;">20.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.2.11.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.4.1" style="font-size:90%;">17.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right ltx_border_t" id="S4.T2.2.11.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.11.5.1" style="font-size:90%;">25.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.6.1" style="font-size:90%;">34.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.7.1" style="font-size:90%;">14.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.8.1" style="font-size:90%;">19.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.9.1" style="font-size:90%;">19.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.11.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.10.1" style="font-size:90%;">21.91</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.11.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.11.11.1" style="font-size:90%;">21.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.12.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.12.1.1" style="font-size:90%;">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.12.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.2.1" style="font-size:90%;">23.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.3.1" style="font-size:90%;">24.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.12.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.4.1" style="font-size:90%;">24.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.12.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.12.5.1" style="font-size:90%;">23.67   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.6.1" style="font-size:90%;">41.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.7.1" style="font-size:90%;">20.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.8.1" style="font-size:90%;">21.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.9.1" style="font-size:90%;">24.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.10.1" style="font-size:90%;">23.81</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.12.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.12.11.1" style="font-size:90%;">23.01</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.13.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.13.1.1" style="font-size:90%;">Llama-3.2-11B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.13.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.2.1" style="font-size:90%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.3.1" style="font-size:90%;">35.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.13.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.4.1" style="font-size:90%;">32.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.13.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.13.5.1" style="font-size:90%;">22.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.6.1" style="font-size:90%;">39.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.7.1" style="font-size:90%;">28.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.8.1" style="font-size:90%;">21.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.9.1" style="font-size:90%;">35.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.10.1" style="font-size:90%;">33.33</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.13.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.13.11.1" style="font-size:90%;">28.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.14">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.14.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.14.1.1" style="font-size:90%;">LLaVA-OneVision-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.14.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.2.1" style="font-size:90%;">33.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.3.1" style="font-size:90%;">40.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.14.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.4.1" style="font-size:90%;">31.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.14.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.14.5.1" style="font-size:90%;">30.67   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.6.1" style="font-size:90%;">49.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.7.1" style="font-size:90%;">29.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.8.1" style="font-size:90%;">34.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.9.1" style="font-size:90%;">31.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.10.1" style="font-size:90%;">46.67</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.14.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.14.11.1" style="font-size:90%;">29.20</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.15.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.15.1.1" style="font-size:90%;">VILA1.5-40B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.15.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.2.1" style="font-size:90%;">34.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.3.1" style="font-size:90%;">38.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.15.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.4.1" style="font-size:90%;">30.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.15.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.15.5.1" style="font-size:90%;">32.67   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.6.1" style="font-size:90%;">57.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.7.1" style="font-size:90%;">27.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.8.1" style="font-size:90%;">23.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.9.1" style="font-size:90%;">37.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.10.1" style="font-size:90%;">41.91</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.15.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.15.11.1" style="font-size:90%;">32.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.16">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.16.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.16.1.1" style="font-size:90%;">LLaVA-Video-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.16.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.2.1" style="font-size:90%;">36.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.3.1" style="font-size:90%;">41.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.16.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.4.1" style="font-size:90%;">33.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.16.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.16.5.1" style="font-size:90%;">33.33   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.6.1" style="font-size:90%;">65.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.7.1" style="font-size:90%;">34.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.8.1" style="font-size:90%;">32.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.9.1" style="font-size:90%;">42.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.16.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.10.1" style="font-size:90%;">45.71</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.16.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.16.11.1" style="font-size:90%;">27.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.17">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.17.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.17.1.1" style="font-size:90%;">InternVL2-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.17.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.2.1" style="font-size:90%;">37.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.3.1" style="font-size:90%;">47.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.17.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.4.1" style="font-size:90%;">33.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.17.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.17.5.1" style="font-size:90%;">31.67   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.6.1" style="font-size:90%;">55.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.7.1" style="font-size:90%;">34.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.8.1" style="font-size:90%;">30.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.9.1" style="font-size:90%;">34.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.10.1" style="font-size:90%;">41.91</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.17.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.17.11.1" style="font-size:90%;">38.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.18">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.18.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.18.1.1" style="font-size:90%;">MAmmoTH-VL-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.18.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.2.1" style="font-size:90%;">41.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.3.1" style="font-size:90%;">51.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.18.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.4.1" style="font-size:90%;">40.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.18.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.18.5.1" style="font-size:90%;">33.67   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.6.1" style="font-size:90%;">47.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.7.1" style="font-size:90%;">37.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.8.1" style="font-size:90%;">36.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.9.1" style="font-size:90%;">36.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.10.1" style="font-size:90%;">49.52</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.18.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.18.11.1" style="font-size:90%;">43.95</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.19">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.19.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.19.1.1" style="font-size:90%;">LLaVA-OneVision-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.19.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.2.1" style="font-size:90%;">48.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.3.1" style="font-size:90%;">59.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.19.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.4.1" style="font-size:90%;">42.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.19.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.19.5.1" style="font-size:90%;">43.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.6.1" style="font-size:90%;">61.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.7.1" style="font-size:90%;">46.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.8.1" style="font-size:90%;">40.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.9.1" style="font-size:90%;">54.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.10.1" style="font-size:90%;">60.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.19.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.19.11.1" style="font-size:90%;">43.95</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.20">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.2.20.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.20.1.1" style="font-size:90%;">LLaVA-Video-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.20.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.2.1" style="font-size:90%;">49.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.3.1" style="font-size:90%;">59.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.2.20.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.4.1" style="font-size:90%;">46.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right" id="S4.T2.2.20.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.20.5.1" style="font-size:90%;">43.33   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.6.1" style="font-size:90%;">69.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.7.1" style="font-size:90%;">44.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.8.1" style="font-size:90%;">41.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.9.1" style="font-size:90%;">58.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.10.1" style="font-size:90%;">57.14</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.2.20.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.20.11.1" style="font-size:90%;">45.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.21">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.2.21.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.21.1.1" style="font-size:90%;">Aria <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.2.21.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.2.1" style="font-size:90%;">50.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.3.1" style="font-size:90%;">65.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.2.21.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.4.1" style="font-size:90%;">46.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_right ltx_border_bb" id="S4.T2.2.21.5" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S4.T2.2.21.5.1" style="font-size:90%;">40.00   </span><span class="ltx_rule" style="width:0.5pt;background:black;display:inline-block;"> </span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.21.6.1" style="font-size:90%;">71.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.7.1" style="font-size:90%;">47.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.8" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.8.1" style="font-size:90%;">44.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.9" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.9.1" style="font-size:90%;">58.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.21.10" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.10.1" style="font-size:90%;">62.86</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.21.11" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S4.T2.2.21.11.1" style="font-size:90%;">43.66</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of various Large Multimodal Models (LMMs) on the Video-MMMU benchmark.  The benchmark assesses knowledge acquisition from videos across three cognitive levels (Perception, Comprehension, and Adaptation), each representing increasing cognitive complexity. The results are broken down by both cognitive track and by six different disciplines (Art, Business, Science, Medicine, Humanities, and Engineering) included in the benchmark's video dataset.  This allows for a comprehensive understanding of model strengths and weaknesses across various tasks and subject domains.
> <details>
> <summary>read the caption</summary>
> Table 2: Video-MMMU Evaluation Results across three cognitive tracks (Perception, Comprehension, Adaptation) and six disciplines (Art, Business, Science, Medicine, Humanities, Engineering).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S7.T3.2">
<tr class="ltx_tr" id="S7.T3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S7.T3.2.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.1.1.1">
<span class="ltx_p" id="S7.T3.2.1.1.1.1" style="width:59.6pt;"><span class="ltx_text ltx_font_bold" id="S7.T3.2.1.1.1.1.1" style="font-size:90%;">Discipline</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" id="S7.T3.2.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S7.T3.2.1.2.1" style="font-size:90%;">Subjects</span></td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S7.T3.2.2.1" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.2.1.1">
<span class="ltx_p" id="S7.T3.2.2.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.2.1.1.1.1" style="font-size:90%;">Art</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S7.T3.2.2.2" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.2.2.1">
<span class="ltx_p" id="S7.T3.2.2.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.2.2.1.1.1" style="font-size:90%;">Art History, Art Theory, Design, Music</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T3.2.3.1" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.3.1.1">
<span class="ltx_p" id="S7.T3.2.3.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.3.1.1.1.1" style="font-size:90%;">Business</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S7.T3.2.3.2" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.3.2.1">
<span class="ltx_p" id="S7.T3.2.3.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.3.2.1.1.1" style="font-size:90%;">Accounting, Economics, Finance, Manage, Marketing</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T3.2.4.1" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.4.1.1">
<span class="ltx_p" id="S7.T3.2.4.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.4.1.1.1.1" style="font-size:90%;">Science</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S7.T3.2.4.2" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.4.2.1">
<span class="ltx_p" id="S7.T3.2.4.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.4.2.1.1.1" style="font-size:90%;">Biology, Chemistry, Geography, Math, Physics</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T3.2.5.1" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.5.1.1">
<span class="ltx_p" id="S7.T3.2.5.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.5.1.1.1.1" style="font-size:90%;">Medicine</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S7.T3.2.5.2" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.5.2.1">
<span class="ltx_p" id="S7.T3.2.5.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.5.2.1.1.1" style="font-size:90%;">Basic Medical Science, Clinical Medicine, Diagnostics and Laboratory Medicine, Pharmacy, Public Health</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S7.T3.2.6.1" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.6.1.1">
<span class="ltx_p" id="S7.T3.2.6.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.6.1.1.1.1" style="font-size:90%;">Humanities</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S7.T3.2.6.2" style="padding-bottom:5.0pt;padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.6.2.1">
<span class="ltx_p" id="S7.T3.2.6.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.6.2.1.1.1" style="font-size:90%;">History, Literature, Psychology, Sociology</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S7.T3.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S7.T3.2.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.7.1.1">
<span class="ltx_p" id="S7.T3.2.7.1.1.1" style="width:59.6pt;"><span class="ltx_text" id="S7.T3.2.7.1.1.1.1" style="font-size:90%;">Engineering</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S7.T3.2.7.2" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="S7.T3.2.7.2.1">
<span class="ltx_p" id="S7.T3.2.7.2.1.1" style="width:159.0pt;"><span class="ltx_text" id="S7.T3.2.7.2.1.1.1" style="font-size:90%;">Agriculture, Architecture and Engineering, Computer Science, Electronics, Energy and Power, Materials, Mechanical Engineering</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 30 subjects that are included in the Video-MMMU dataset, categorized into six academic disciplines: Art, Business, Medicine, Science, Humanities, and Engineering.  Each discipline contains a subset of the 30 subjects, providing a breakdown of the dataset's coverage across various fields of study.
> <details>
> <summary>read the caption</summary>
> Table 3: Subjects categorized under six disciplines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S8.T4.1">
<tr class="ltx_tr" id="S8.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.2.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.1">
<math alttext="\Delta_{\text{knowledge}}" class="ltx_Math" display="inline" id="S8.T4.1.1.1.m1.1"><semantics id="S8.T4.1.1.1.m1.1a"><msub id="S8.T4.1.1.1.m1.1.1" xref="S8.T4.1.1.1.m1.1.1.cmml"><mi id="S8.T4.1.1.1.m1.1.1.2" mathsize="144%" mathvariant="normal" xref="S8.T4.1.1.1.m1.1.1.2.cmml">Δ</mi><mtext class="ltx_mathvariant_bold" id="S8.T4.1.1.1.m1.1.1.3" mathsize="144%" xref="S8.T4.1.1.1.m1.1.1.3a.cmml">knowledge</mtext></msub><annotation-xml encoding="MathML-Content" id="S8.T4.1.1.1.m1.1b"><apply id="S8.T4.1.1.1.m1.1.1.cmml" xref="S8.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S8.T4.1.1.1.m1.1.1.1.cmml" xref="S8.T4.1.1.1.m1.1.1">subscript</csymbol><ci id="S8.T4.1.1.1.m1.1.1.2.cmml" xref="S8.T4.1.1.1.m1.1.1.2">Δ</ci><ci id="S8.T4.1.1.1.m1.1.1.3a.cmml" xref="S8.T4.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S8.T4.1.1.1.m1.1.1.3.cmml" mathsize="101%" xref="S8.T4.1.1.1.m1.1.1.3">knowledge</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T4.1.1.1.m1.1c">\Delta_{\text{knowledge}}</annotation><annotation encoding="application/x-llamapun" id="S8.T4.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT knowledge end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.1.1" style="font-size:144%;"> (%)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S8.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.3.1" style="font-size:144%;">Wrong-to-Right</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S8.T4.1.1.4"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.4.1" style="font-size:144%;">Right-to-Wrong</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.2">
<td class="ltx_td" id="S8.T4.1.2.1"></td>
<td class="ltx_td" id="S8.T4.1.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.2.3"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.3.1" style="font-size:144%;">No. of Questions</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.2.4"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.4.1" style="font-size:144%;">Rate (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.2.5"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.5.1" style="font-size:144%;">No. of Questions</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.2.6"><span class="ltx_text ltx_font_bold" id="S8.T4.1.2.6.1" style="font-size:144%;">Rate (%)</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.1.3.1"><span class="ltx_text" id="S8.T4.1.3.1.1" style="font-size:144%;">Human Expert</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.3.2"><span class="ltx_text" id="S8.T4.1.3.2.1" style="font-size:144%;">33.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.3.3"><span class="ltx_text" id="S8.T4.1.3.3.1" style="font-size:144%;">72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.3.4"><span class="ltx_text" id="S8.T4.1.3.4.1" style="font-size:144%;">40.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.3.5"><span class="ltx_text" id="S8.T4.1.3.5.1" style="font-size:144%;">13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.3.6"><span class="ltx_text" id="S8.T4.1.3.6.1" style="font-size:144%;">10.7</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.4">
<td class="ltx_td ltx_align_left" id="S8.T4.1.4.1">
<span class="ltx_text" id="S8.T4.1.4.1.1" style="font-size:144%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S8.T4.1.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.4.2"><span class="ltx_text" id="S8.T4.1.4.2.1" style="font-size:144%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.4.3"><span class="ltx_text" id="S8.T4.1.4.3.1" style="font-size:144%;">44</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.4.4"><span class="ltx_text" id="S8.T4.1.4.4.1" style="font-size:144%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.4.5"><span class="ltx_text" id="S8.T4.1.4.5.1" style="font-size:144%;">19</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.4.6"><span class="ltx_text" id="S8.T4.1.4.6.1" style="font-size:144%;">13.3</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.5">
<td class="ltx_td ltx_align_left" id="S8.T4.1.5.1">
<span class="ltx_text" id="S8.T4.1.5.1.1" style="font-size:144%;">Claude-3.5-Sonnet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S8.T4.1.5.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.5.2"><span class="ltx_text" id="S8.T4.1.5.2.1" style="font-size:144%;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.5.3"><span class="ltx_text" id="S8.T4.1.5.3.1" style="font-size:144%;">42</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.5.4"><span class="ltx_text" id="S8.T4.1.5.4.1" style="font-size:144%;">28.8</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.5.5"><span class="ltx_text" id="S8.T4.1.5.5.1" style="font-size:144%;">30</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.5.6"><span class="ltx_text" id="S8.T4.1.5.6.1" style="font-size:144%;">19.5</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.6">
<td class="ltx_td ltx_align_left" id="S8.T4.1.6.1">
<span class="ltx_text" id="S8.T4.1.6.1.1" style="font-size:144%;">VILA-1.5-40B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S8.T4.1.6.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.6.2"><span class="ltx_text" id="S8.T4.1.6.2.1" style="font-size:144%;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.6.3"><span class="ltx_text" id="S8.T4.1.6.3.1" style="font-size:144%;">57</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.6.4"><span class="ltx_text" id="S8.T4.1.6.4.1" style="font-size:144%;">25.2</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.6.5"><span class="ltx_text" id="S8.T4.1.6.5.1" style="font-size:144%;">34</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.6.6"><span class="ltx_text" id="S8.T4.1.6.6.1" style="font-size:144%;">45.9</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.7">
<td class="ltx_td ltx_align_left" id="S8.T4.1.7.1">
<span class="ltx_text" id="S8.T4.1.7.1.1" style="font-size:144%;">Gemini-1.5-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S8.T4.1.7.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.7.2"><span class="ltx_text" id="S8.T4.1.7.2.1" style="font-size:144%;">8.7</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.7.3"><span class="ltx_text" id="S8.T4.1.7.3.1" style="font-size:144%;">49</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.7.4"><span class="ltx_text" id="S8.T4.1.7.4.1" style="font-size:144%;">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.7.5"><span class="ltx_text" id="S8.T4.1.7.5.1" style="font-size:144%;">33</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.7.6"><span class="ltx_text" id="S8.T4.1.7.6.1" style="font-size:144%;">24.6</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.8">
<td class="ltx_td ltx_align_left" id="S8.T4.1.8.1">
<span class="ltx_text" id="S8.T4.1.8.1.1" style="font-size:144%;">LLaVA-Video-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S8.T4.1.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.8.2"><span class="ltx_text" id="S8.T4.1.8.2.1" style="font-size:144%;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.8.3"><span class="ltx_text" id="S8.T4.1.8.3.1" style="font-size:144%;">40</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.8.4"><span class="ltx_text" id="S8.T4.1.8.4.1" style="font-size:144%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.8.5"><span class="ltx_text" id="S8.T4.1.8.5.1" style="font-size:144%;">29</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.8.6"><span class="ltx_text" id="S8.T4.1.8.6.1" style="font-size:144%;">24.6</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.9">
<td class="ltx_td ltx_align_left" id="S8.T4.1.9.1">
<span class="ltx_text" id="S8.T4.1.9.1.1" style="font-size:144%;">LLaVA-OneVision-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S8.T4.1.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.9.2"><span class="ltx_text" id="S8.T4.1.9.2.1" style="font-size:144%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.9.3"><span class="ltx_text" id="S8.T4.1.9.3.1" style="font-size:144%;">37</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.9.4"><span class="ltx_text" id="S8.T4.1.9.4.1" style="font-size:144%;">20.6</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.9.5"><span class="ltx_text" id="S8.T4.1.9.5.1" style="font-size:144%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.9.6"><span class="ltx_text" id="S8.T4.1.9.6.1" style="font-size:144%;">23.3</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.10">
<td class="ltx_td ltx_align_left" id="S8.T4.1.10.1">
<span class="ltx_text" id="S8.T4.1.10.1.1" style="font-size:144%;">VILA-1.5-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S8.T4.1.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.10.2"><span class="ltx_text" id="S8.T4.1.10.2.1" style="font-size:144%;">5.9</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.10.3"><span class="ltx_text" id="S8.T4.1.10.3.1" style="font-size:144%;">48</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.10.4"><span class="ltx_text" id="S8.T4.1.10.4.1" style="font-size:144%;">20.2</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.10.5"><span class="ltx_text" id="S8.T4.1.10.5.1" style="font-size:144%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.10.6"><span class="ltx_text" id="S8.T4.1.10.6.1" style="font-size:144%;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.11">
<td class="ltx_td ltx_align_left" id="S8.T4.1.11.1">
<span class="ltx_text" id="S8.T4.1.11.1.1" style="font-size:144%;">Aria </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a><span class="ltx_text" id="S8.T4.1.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.11.2"><span class="ltx_text" id="S8.T4.1.11.2.1" style="font-size:144%;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.11.3"><span class="ltx_text" id="S8.T4.1.11.3.1" style="font-size:144%;">47</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.11.4"><span class="ltx_text" id="S8.T4.1.11.4.1" style="font-size:144%;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.11.5"><span class="ltx_text" id="S8.T4.1.11.5.1" style="font-size:144%;">42</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.11.6"><span class="ltx_text" id="S8.T4.1.11.6.1" style="font-size:144%;">36.5</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.12">
<td class="ltx_td ltx_align_left" id="S8.T4.1.12.1">
<span class="ltx_text" id="S8.T4.1.12.1.1" style="font-size:144%;">MAmmoTH-VL-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.12.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S8.T4.1.12.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.12.2"><span class="ltx_text" id="S8.T4.1.12.2.1" style="font-size:144%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.12.3"><span class="ltx_text" id="S8.T4.1.12.3.1" style="font-size:144%;">48</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.12.4"><span class="ltx_text" id="S8.T4.1.12.4.1" style="font-size:144%;">23.9</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.12.5"><span class="ltx_text" id="S8.T4.1.12.5.1" style="font-size:144%;">45</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.12.6"><span class="ltx_text" id="S8.T4.1.12.6.1" style="font-size:144%;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.1.13.1">
<span class="ltx_text" id="S8.T4.1.13.1.1" style="font-size:144%;">Gemini-1.5-Flash </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.13.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S8.T4.1.13.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.13.2"><span class="ltx_text" id="S8.T4.1.13.2.1" style="font-size:144%;">-3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.13.3"><span class="ltx_text" id="S8.T4.1.13.3.1" style="font-size:144%;">39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.13.4"><span class="ltx_text" id="S8.T4.1.13.4.1" style="font-size:144%;">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.13.5"><span class="ltx_text" id="S8.T4.1.13.5.1" style="font-size:144%;">42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.13.6"><span class="ltx_text" id="S8.T4.1.13.6.1" style="font-size:144%;">31.3</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.14">
<td class="ltx_td ltx_align_left" id="S8.T4.1.14.1">
<span class="ltx_text" id="S8.T4.1.14.1.1" style="font-size:144%;">LLaVA-Video-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.14.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S8.T4.1.14.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.14.2"><span class="ltx_text" id="S8.T4.1.14.2.1" style="font-size:144%;">-5.3</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.14.3"><span class="ltx_text" id="S8.T4.1.14.3.1" style="font-size:144%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.14.4"><span class="ltx_text" id="S8.T4.1.14.4.1" style="font-size:144%;">18.5</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.14.5"><span class="ltx_text" id="S8.T4.1.14.5.1" style="font-size:144%;">47</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.14.6"><span class="ltx_text" id="S8.T4.1.14.6.1" style="font-size:144%;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.15">
<td class="ltx_td ltx_align_left" id="S8.T4.1.15.1">
<span class="ltx_text" id="S8.T4.1.15.1.1" style="font-size:144%;">LLaVA-OneVision-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.15.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S8.T4.1.15.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.15.2"><span class="ltx_text" id="S8.T4.1.15.2.1" style="font-size:144%;">-5.6</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.15.3"><span class="ltx_text" id="S8.T4.1.15.3.1" style="font-size:144%;">36</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.15.4"><span class="ltx_text" id="S8.T4.1.15.4.1" style="font-size:144%;">18.2</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.15.5"><span class="ltx_text" id="S8.T4.1.15.5.1" style="font-size:144%;">43</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.15.6"><span class="ltx_text" id="S8.T4.1.15.6.1" style="font-size:144%;">42.2</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.16">
<td class="ltx_td ltx_align_left" id="S8.T4.1.16.1">
<span class="ltx_text" id="S8.T4.1.16.1.1" style="font-size:144%;">LongVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.16.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S8.T4.1.16.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.16.2"><span class="ltx_text" id="S8.T4.1.16.2.1" style="font-size:144%;">-7.0</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.16.3"><span class="ltx_text" id="S8.T4.1.16.3.1" style="font-size:144%;">29</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.16.4"><span class="ltx_text" id="S8.T4.1.16.4.1" style="font-size:144%;">13.6</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.16.5"><span class="ltx_text" id="S8.T4.1.16.5.1" style="font-size:144%;">47</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.16.6"><span class="ltx_text" id="S8.T4.1.16.6.1" style="font-size:144%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.17">
<td class="ltx_td ltx_align_left ltx_border_b" id="S8.T4.1.17.1">
<span class="ltx_text" id="S8.T4.1.17.1.1" style="font-size:144%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.1.17.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.13826v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="S8.T4.1.17.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T4.1.17.2"><span class="ltx_text" id="S8.T4.1.17.2.1" style="font-size:144%;">-8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T4.1.17.3"><span class="ltx_text" id="S8.T4.1.17.3.1" style="font-size:144%;">46</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T4.1.17.4"><span class="ltx_text" id="S8.T4.1.17.4.1" style="font-size:144%;">24.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T4.1.17.5"><span class="ltx_text" id="S8.T4.1.17.5.1" style="font-size:144%;">61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S8.T4.1.17.6"><span class="ltx_text" id="S8.T4.1.17.6.1" style="font-size:144%;">55.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the knowledge acquisition results for various models in the Adaptation track of the Video-MMMU benchmark.  For each model, it shows the overall knowledge gain (Δknowledge), calculated as the percentage improvement in accuracy on Adaptation questions after watching relevant videos, compared to before watching the videos.  Furthermore, it provides a more granular analysis by showing the number and percentage of questions where models initially answered incorrectly but corrected their answer after watching the video (Wrong-to-Right Rate) and vice versa (Right-to-Wrong Rate). This allows a more nuanced understanding of model learning beyond the simple accuracy change, revealing both the ability to learn from the video and the tendency to lose existing knowledge.  The data includes both open-source and proprietary Large Multimodal Models (LMMs), providing a comprehensive comparison of their knowledge acquisition capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Additional Knowledge Acquisition Experiment Results with Delta (%) values.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13826/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13826/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}