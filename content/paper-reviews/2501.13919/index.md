---
title: "Temporal Preference Optimization for Long-Form Video Understanding"
summary: "Boosting long-form video understanding, Temporal Preference Optimization (TPO) enhances video-LLMs by leveraging preference learning.  It achieves this through a self-training method using preference ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Stanford University",]
showSummary: true
date: 2025-01-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13919 {{< /keyword >}}
{{< keyword icon="writer" >}} Rui Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13919" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13919" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13919/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video-LLMs often struggle with temporal grounding in long-form videos, mainly due to the limitations of the existing two-stage training paradigm and weakly aligned training signals. These models heavily rely on meticulous and expensive curated instruction-tuning datasets, and they often fail to grasp subtle temporal relationships present in long videos, resulting in suboptimal performance on tasks demanding fine-grained or long-context temporal grounding. 

To tackle this, the authors present Temporal Preference Optimization (TPO). TPO is a novel post-training framework that enhances the temporal grounding abilities of video-LLMs using preference learning. It leverages curated preference datasets at two levels: localized and comprehensive temporal grounding, which allow the model to distinguish between well-grounded and less accurate temporal responses. By training on these preference datasets, TPO substantially improves temporal understanding and reduces reliance on manual annotations.  Experiments show that TPO significantly improves the performance across various long-form video benchmarks, establishing the leading 7B model on Video-MME.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Temporal Preference Optimization (TPO) improves the temporal grounding in video-LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TPO uses a self-training approach with preference datasets at two granularities (localized and comprehensive). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show TPO's effectiveness across multiple benchmarks, achieving state-of-the-art results. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces a novel post-training framework, Temporal Preference Optimization (TPO), to significantly improve the temporal grounding capabilities of large video-multimodal models.** This addresses a critical challenge in long-form video understanding, where current models struggle to accurately identify and utilize temporal information.  TPO's self-training approach reduces reliance on manually annotated data, making it a scalable and efficient solution. The findings open avenues for advancing temporal reasoning in long-form video analysis and other related domains.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13919/x1.png)

> 🔼 This figure illustrates the Temporal Preference Optimization (TPO) framework, a self-improvement method enhancing video-LMMs' understanding.  It operates at two levels: localized TPO, focusing on short video segments and contrasting responses that either include or exclude the target segment; and comprehensive TPO, using full versus downsampled videos to contrast responses to high-level queries.  The resulting preference data, after filtering, trains the video-LMM to favor temporally accurate responses.
> <details>
> <summary>read the caption</summary>
> Figure 1: Temporal Preference Optimization (TPO) is a self-improvement preference optimization technique designed to enhance video comprehension in video-LMMs by modeling temporal preferences at two granular levels: localized and comprehensive TPO. In localized TPO (upper-left), we generate queries focused on short segments, with contrastive responses that retain or exclude the target segment. For comprehensive TPO (lower-left), queries are designed for high-level understanding, using intact video versus sparse downsampled video for contrasting responses. After post-filtering, the contrast response pairs are serving as the preference dataset to train a video-LMM, guiding the model to prioritize preferred responses for improved video understanding.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.5.6.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.6.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.2.1">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.5.6.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.3.1">MLVU (M-avg)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.4.1">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.7.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.5.7.2.1.1">Short</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.7.2.2.1">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.7.2.3.1">Long</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.7.2.4.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.8.3.1">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.2">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.3">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.4">61.1/61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.5">50.4/53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.6">46.2/47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.8.3.7">52.6/54.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.2">  <span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T1.2.2.2.1">+</span> SFT<math alttext="{}_{\text{Self}}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m2.1"><semantics id="S4.T1.2.2.2.m2.1a"><msub id="S4.T1.2.2.2.m2.1.1" xref="S4.T1.2.2.2.m2.1.1.cmml"><mi id="S4.T1.2.2.2.m2.1.1a" xref="S4.T1.2.2.2.m2.1.1.cmml"></mi><mtext id="S4.T1.2.2.2.m2.1.1.1" xref="S4.T1.2.2.2.m2.1.1.1a.cmml">Self</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m2.1b"><apply id="S4.T1.2.2.2.m2.1.1.cmml" xref="S4.T1.2.2.2.m2.1.1"><ci id="S4.T1.2.2.2.m2.1.1.1a.cmml" xref="S4.T1.2.2.2.m2.1.1.1"><mtext id="S4.T1.2.2.2.m2.1.1.1.cmml" mathsize="70%" xref="S4.T1.2.2.2.m2.1.1.1">Self</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m2.1c">{}_{\text{Self}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m2.1d">start_FLOATSUBSCRIPT Self end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.3">52.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5">62.6/<span class="ltx_text ltx_font_bold" id="S4.T1.2.2.5.1">67.7</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6">52.4/52.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7">46.8/47.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8">53.9/55.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.4.2">  <span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T1.4.4.2.1">+</span> SFT<math alttext="{}_{\text{LLM}}" class="ltx_Math" display="inline" id="S4.T1.4.4.2.m2.1"><semantics id="S4.T1.4.4.2.m2.1a"><msub id="S4.T1.4.4.2.m2.1.1" xref="S4.T1.4.4.2.m2.1.1.cmml"><mi id="S4.T1.4.4.2.m2.1.1a" xref="S4.T1.4.4.2.m2.1.1.cmml"></mi><mtext id="S4.T1.4.4.2.m2.1.1.1" xref="S4.T1.4.4.2.m2.1.1.1a.cmml">LLM</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.2.m2.1b"><apply id="S4.T1.4.4.2.m2.1.1.cmml" xref="S4.T1.4.4.2.m2.1.1"><ci id="S4.T1.4.4.2.m2.1.1.1a.cmml" xref="S4.T1.4.4.2.m2.1.1.1"><mtext id="S4.T1.4.4.2.m2.1.1.1.cmml" mathsize="70%" xref="S4.T1.4.4.2.m2.1.1.1">LLM</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.2.m2.1c">{}_{\text{LLM}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.2.m2.1d">start_FLOATSUBSCRIPT LLM end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.3">53.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4">59.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.5">
<span class="ltx_text ltx_font_bold" id="S4.T1.4.4.5.1">63.7</span>/64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6">52.6/54.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7">46.3/47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8">54.2/55.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.1">  <span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T1.5.5.1.1">+</span> Hound-DPO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.2">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.3">59.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.4">62.2/65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5">52.4/54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.6">46.1/46.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7">53.6/55.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.1.1">LongVA-TPO</span> <span class="ltx_text" id="S4.T1.5.9.4.1.2" style="font-size:80%;">(<span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S4.T1.5.9.4.1.2.1">ours</span>)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.2.1">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.3.1">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.4">63.1/66.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.5">
<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.5.1">54.8</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.5.2">55.3</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.6.1">47.4</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.6.2">47.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.9.4.7">
<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.7.1">55.1</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.5.9.4.7.2">56.6</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of the proposed Temporal Preference Optimization (TPO) method against three baseline methods on three video understanding benchmarks: LongVideoBench, MLVU, and Video-MME.  For each benchmark, the table shows the performance scores (presumably accuracy or a similar metric) for each method. The Video-MME benchmark results are further broken down into scores with and without subtitles ('w/o subs / w/ subs').  Importantly, the results for the LongVA and LongVA+Hound-DPO methods are based on pre-trained, publicly available model weights, whereas the results for the other methods (including TPO) were obtained using models trained by the authors of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of LongVA-TPO on LongVideoBench [54], MLVU [68] and Video-MME [15] benchmarks compared to 3 baseline methods mentioned in 4.2. The Video-MME results are presented in the format “w/o subs / w/ subs”. The results for LongVA and LongVA+Hound-DPO are based on publicly available checkpoints, while the other results are evaluated using our trained model.
> </details>





### In-depth insights


#### Temporal Grounding
Temporal grounding in video understanding is a significant challenge, focusing on precisely locating events and actions within a video's temporal dimension.  **Current methods often struggle with long-form videos**, where complex temporal relationships and extended dependencies make accurate grounding difficult.  This necessitates advanced techniques beyond simple frame-by-frame analysis.  **Preference learning emerges as a powerful technique**, enabling models to learn nuanced temporal relationships by comparing preferred and dis-preferred responses.  This approach is particularly valuable as it reduces reliance on expensive and time-consuming manual annotations.  By incorporating various granularities of temporal preference data, from localized segments to comprehensive sequences, **models can learn to prioritize temporally coherent responses**. This improved grounding significantly enhances the model's capacity to accurately answer questions requiring detailed temporal understanding, advancing the state-of-the-art in long-form video analysis.

#### Preference Learning
Preference learning, a machine learning paradigm, **focuses on learning from user preferences rather than explicit labels**  This is particularly valuable in scenarios where obtaining precise labels is difficult or expensive.  In the context of video-LLMs, preference learning is a powerful technique for aligning model behavior with human expectations regarding temporal understanding. **By training models on paired examples of preferred and less-preferred responses**, often generated from variations in video segments or queries, the system learns to prioritize outputs consistent with human judgment on temporal grounding. This approach is especially effective when dealing with long-form videos, where sophisticated temporal reasoning is crucial but data annotation is expensive. **Direct preference optimization (DPO) and other preference learning methods directly integrate user preference data into model training**, offering a flexible and efficient alternative to traditional supervised approaches.  This allows the model to learn nuanced temporal relationships and generate temporally grounded responses more effectively, thereby improving long-form video understanding capabilities.  **The choice of preference data granularity, either focused on specific video segments or encompassing the whole sequence, greatly influences the performance**. Choosing a data strategy carefully enhances the effectiveness of preference learning for temporal reasoning in video-LLMs.

#### TPO Framework
The Temporal Preference Optimization (TPO) framework is a novel post-training approach designed to enhance the temporal grounding capabilities of video-LLMs.  **Its core innovation lies in leveraging preference learning**, moving beyond traditional supervised fine-tuning.  TPO uses curated preference datasets at two granularities: **localized temporal grounding** (focusing on specific video segments) and **comprehensive temporal grounding** (capturing extended temporal dependencies). By contrasting preferred and dis-preferred responses, the model learns to prioritize temporally accurate and well-grounded answers.  **This self-training approach reduces reliance on manually annotated data**, making it a more scalable and efficient solution for improving video understanding, especially for long-form videos. The framework shows promising results across multiple benchmarks, demonstrating its effectiveness in enhancing temporal reasoning and its potential to improve state-of-the-art video-LLMs.

#### Benchmark Results
Benchmark results in a research paper are crucial for evaluating the proposed method's performance and comparing it against existing state-of-the-art approaches.  A thoughtful analysis would consider various aspects. **Firstly**, the choice of benchmarks is vital; selecting relevant and widely-used datasets demonstrates the method's generalizability and impact. **Secondly**, a thorough comparison should be provided, not just raw scores, but a detailed analysis of the results on each benchmark, including any significant differences or trends. **Thirdly**, the analysis must address potential limitations.  Were there any specific scenarios where the method underperformed?  Did the metrics fully capture the nuances of the task?   **Finally**, the discussion should highlight the method's advantages and disadvantages in relation to the benchmarks, offering insights into its strengths and weaknesses.  The overall goal is not just to present numbers but to provide a comprehensive, nuanced evaluation that clearly demonstrates the paper's contribution to the field.

#### Future of TPO
The future of Temporal Preference Optimization (TPO) looks promising.  **Scalability** is key;  as larger video datasets become available, TPO's self-training nature will prove beneficial, reducing the reliance on expensive, manually annotated data.  **Expanding TPO's application beyond the current benchmarks** is another key area. Exploring its effectiveness in diverse video tasks, such as complex event detection or detailed activity recognition, will be crucial.  **Integration with other video understanding techniques** could also boost performance. For example, combining TPO with advanced temporal modeling methods could yield more accurate and robust temporal grounding. **Addressing limitations** such as potential bias in generated preferences and sensitivity to specific video-LMM architectures will necessitate further research.  Finally, **investigating TPO in different modalities**, such as audio or multi-modal contexts, could offer exciting new avenues for temporal reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13919/x2.png)

> 🔼 This figure displays a comparison of the performance of the LongVA and LongVA-TPO models on the MLVU benchmark across various video lengths. The x-axis represents the input video length (number of frames) on a logarithmic scale, and the y-axis shows the performance score of each model.  The results reveal that LongVA-TPO consistently demonstrates improved performance as input video length increases, showcasing better handling of longer contexts. Conversely, the performance of the LongVA model plateaus and even degrades when the input exceeds 64 frames, indicating limitations in processing extended temporal information.
> <details>
> <summary>read the caption</summary>
> Figure 2: The performance of LongVA-TPO and LongVA on MLVU with different input lengths. LongVA-TPO consistently shows performance improvements with longer inputs, whereas LongVA experiences performance degradation when the input exceeds 64 frames.
> </details>



![](https://arxiv.org/html/2501.13919/extracted/6150550/sec/length.png)

> 🔼 Figure 3 presents a visual comparison of the LongVA-TPO model's performance against the original LongVA model on the 'needle-in-a-haystack' task.  This task tests the ability of the models to locate a specific, rare event within a lengthy video. The figure uses heatmaps to represent model performance at different video lengths, showing the percentage of correct responses across varying video durations. The heatmaps highlight how the LongVA-TPO model maintains consistently better performance compared to the original LongVA, especially as the video length increases.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of our LongVA-TPO model and the original LongVA model on the needle-in-a-haystack task.
> </details>



![](https://arxiv.org/html/2501.13919/extracted/6150550/sec/question_type2.png)

> 🔼 This figure showcases a qualitative comparison of the LongVA and LongVA-TPO models' performance on two videos sourced from the VideoMME benchmark dataset.  The comparison focuses on the quality of generated responses to both comprehensive (high-level understanding) and localized (specific segment) questions.  The results illustrate that the LongVA-TPO model consistently produces superior response quality, demonstrating the effectiveness of the Temporal Preference Optimization (TPO) framework in enhancing the temporal grounding capabilities of video-LMMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison between LongVA-TPO model and LongVA on two videos from VideoMME benchmark. Our LongVA-TPO model demonstrates superior generation quality on both comprehensive and localized questions.
> </details>



![](https://arxiv.org/html/2501.13919/x5.png)

> 🔼 This figure shows a pie chart illustrating the distribution of video lengths within a dataset of 8,000 videos used for training.  The dataset is comprised of videos with durations categorized into four ranges: less than 1 minute, 1 to 3 minutes, 3 to 10 minutes, and more than 10 minutes. The chart visually represents the proportion of videos falling into each of these duration categories, offering insight into the temporal characteristics of the video data used in the study.
> <details>
> <summary>read the caption</summary>
> Figure 5: The distribution of lengths for 8K crawled videos.
> </details>



![](https://arxiv.org/html/2501.13919/x6.png)

> 🔼 This figure shows a pie chart visualizing the distribution of various question types within a curated dataset of 10,000 question-answer pairs. This dataset was specifically created for training the LongVA-TPO model, a model focused on enhancing temporal understanding in videos. Each slice of the pie chart represents a different question type, indicating the relative frequency of each type in the dataset.  The categories included are: Temporal Reasoning, Action Reasoning, Causal Reasoning, Information Extraction, Descriptive Questions, Summarization, Object Reasoning, and Spatial Reasoning. The sizes of the slices visually represent the proportion of each question type within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: The distribution of question types for 10K curated preference dataset for LongVA-TPO.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.3.1">LongVideoBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.4.1">MLVU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.2.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.5.1">Video-MME</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1.1">(M-avg)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">Short</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.3.1">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.4.1">Long</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.5.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.3.3.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.3">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.4">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.5">80.0/82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.6">70.3/76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.7">65.3/72.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.3.3.8">71.9/77.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.4.4.1">Video-LLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.3">39.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.4">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.5">45.3/46.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.6">38.0/40.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.7">36.2/38.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4.8">39.9/41.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.5.5.1">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.3">40.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.6.6.1">PLLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.3">40.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.7.7.1">Qwen-VL-Max <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.4">42.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.5">55.8/57.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.6">49.2/48.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.7">48.9/47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.8">51.3/51.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.8.8.1">ShareGPT4Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.3">39.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.4">46.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.5">48.3/53.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.6">36.3/39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.7">35.0/37.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.8">39.9/43.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.9.9.1">InternVL-Chat-V1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.2">20B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.3">51.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.4">50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.5">50.7/52.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.6">60.2/61.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.7">46.4/49.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.8">45.6/46.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.10.10.1">VideoChat2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.3">39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.4">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.5">48.3/52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.6">37.0/39.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.7">33.2/39.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.8">39.5/43.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.11.11.1">LongLLaVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.4">56.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.5">61.9/66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.6">51.4/54.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.7">45.4/50.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.8">52.9/57.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.12.12.1">Video-CCAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.4">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.5">62.2/66.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.6">50.6/56.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.7">46.7/49.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.8">53.2/57.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.13.13.1">NVILA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.3">57.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.4">70.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.5">75.7/77.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.6">62.2/69.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.7">54.8/63.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.8">64.2/70.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.14.14.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.3">55.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.8">63.3/69.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.15.15.1">Apollo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.3">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.4">70.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.8">61.3/63.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.16.16.1">LongVA-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.3">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.4">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.5">61.1/61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.6">50.4/53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.7">46.2/47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.8">52.6/54.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.17.17.1">LLaVA-Video-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.13919v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.3">58.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.4">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.8">63.3/69.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.18.18.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.18.18.1.1">LongVA-TPO</span> <span class="ltx_text" id="S4.T2.2.18.18.1.2" style="font-size:80%;">(<span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S4.T2.2.18.18.1.2.1">ours</span>)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.3">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.4">61.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.5">63.1/66.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.6">54.8/55.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.7">47.4/47.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.18.18.8">55.1/56.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.19.19.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.1.1">LLaVA-Video-TPO</span> <span class="ltx_text" id="S4.T2.2.19.19.1.2" style="font-size:80%;">(<span class="ltx_text ltx_font_typewriter ltx_font_bold" id="S4.T2.2.19.19.1.2.1">ours</span>)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.3.1">60.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.4.1">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.5">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.5.1">76.8</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.5.2">78.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.6">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.6.1">64.6</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.6.2">69.4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.7">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.7.1">55.4</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.7.2">66.4</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.19.19.8">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.8.1">65.6</span>/<span class="ltx_text ltx_font_bold" id="S4.T2.2.19.19.8.2">71.5</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of the performance of various video large multimodal models (video-LMMs) on three benchmark datasets: LongVideoBench, MLVU, and Video-MME.  It shows the strengths and weaknesses of different models in handling long-form video understanding tasks.  The Video-MME results are presented as two scores; the first (before the '/') reflects performance without subtitles, and the second (after the '/') shows performance with subtitles.  This allows for a nuanced understanding of model capabilities, revealing how much reliance they have on textual information versus inherent visual and temporal cues within the video itself. The table helps to establish the effectiveness of the Temporal Preference Optimization (TPO) method by comparing its results to state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on LongVideoBench [54], MLVU [68] and Video-MME [15] compared with state-of-the-art models. The Video-MME results are presented in the format “w/o subs / w/ subs”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.4.1.1.1">
<span class="ltx_p" id="S4.T3.3.4.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.1.1.1.1">Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.2.1">LongVideoBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.3.1">MLVU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.4.1.4.1">VideoMME</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.5.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.5.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.5.1.1.1">
<span class="ltx_p" id="S4.T3.3.5.1.1.1.1" style="width:42.7pt;">LongVA</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.5.1.2">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.5.1.3">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.5.1.4">52.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1" style="width:42.7pt;">TPO<math alttext="{}_{\text{2k}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><msub id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.1.m1.1.1a" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.1.1.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.1a.cmml">2k</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1"><ci id="S4.T3.1.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1.1"><mtext id="S4.T3.1.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.1.1.1.1.1.m1.1.1.1">2k</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">{}_{\text{2k}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT 2k end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.2">52.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3">57.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4">52.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T3.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.1.1">
<span class="ltx_p" id="S4.T3.2.2.1.1.1" style="width:42.7pt;">TPO<math alttext="{}_{\text{5k}}" class="ltx_Math" display="inline" id="S4.T3.2.2.1.1.1.m1.1"><semantics id="S4.T3.2.2.1.1.1.m1.1a"><msub id="S4.T3.2.2.1.1.1.m1.1.1" xref="S4.T3.2.2.1.1.1.m1.1.1.cmml"><mi id="S4.T3.2.2.1.1.1.m1.1.1a" xref="S4.T3.2.2.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.2.2.1.1.1.m1.1.1.1" xref="S4.T3.2.2.1.1.1.m1.1.1.1a.cmml">5k</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.1.1.m1.1b"><apply id="S4.T3.2.2.1.1.1.m1.1.1.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1"><ci id="S4.T3.2.2.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.2.2.1.1.1.m1.1.1.1"><mtext id="S4.T3.2.2.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.2.2.1.1.1.m1.1.1.1">5k</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.1.1.m1.1c">{}_{\text{5k}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.1.1.m1.1d">start_FLOATSUBSCRIPT 5k end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2">53.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.3">59.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4">53.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.3.3.1.1">
<span class="ltx_p" id="S4.T3.3.3.1.1.1" style="width:42.7pt;">TPO<math alttext="{}_{\text{10k}}" class="ltx_Math" display="inline" id="S4.T3.3.3.1.1.1.m1.1"><semantics id="S4.T3.3.3.1.1.1.m1.1a"><msub id="S4.T3.3.3.1.1.1.m1.1.1" xref="S4.T3.3.3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.3.3.1.1.1.m1.1.1a" xref="S4.T3.3.3.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.3.3.1.1.1.m1.1.1.1" xref="S4.T3.3.3.1.1.1.m1.1.1.1a.cmml">10k</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.1.1.m1.1b"><apply id="S4.T3.3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.3.1.1.1.m1.1.1"><ci id="S4.T3.3.3.1.1.1.m1.1.1.1a.cmml" xref="S4.T3.3.3.1.1.1.m1.1.1.1"><mtext id="S4.T3.3.3.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.3.3.1.1.1.m1.1.1.1">10k</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.1.1.m1.1c">{}_{\text{10k}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.1.1.m1.1d">start_FLOATSUBSCRIPT 10k end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.2.1">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1">55.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Temporal Preference Optimization (TPO) method on the LongVideoBench, MLVU, and Video-MME benchmarks, using different sizes of the training dataset.  It demonstrates how the model's performance improves as the amount of training data increases. Note that the Video-MME results presented here are without subtitles.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of LongVA-TPO (TPO) trained on different data scales. TPO achieves consistent performance improvements as the data scale increases. The performance on the VideoMME benchmark is evaluated without subtitles.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.3.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.4.1.1.1">
<span class="ltx_p" id="S4.T4.3.4.1.1.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.1.1.1.1">Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.2.1">LongVideoBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.3.1">MLVU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.4.1">VideoMME</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.5.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.5.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.5.1.1.1">
<span class="ltx_p" id="S4.T4.3.5.1.1.1.1" style="width:34.1pt;">LongVA</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.5.1.2">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.5.1.3">58.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.5.1.4">52.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.1.1.1.1">
<span class="ltx_p" id="S4.T4.1.1.1.1.1" style="width:34.1pt;">TPO<math alttext="{}_{\text{localized}}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.1.m1.1.1a" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T4.1.1.1.1.1.m1.1.1.1" xref="S4.T4.1.1.1.1.1.m1.1.1.1a.cmml">localized</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1"><ci id="S4.T4.1.1.1.1.1.m1.1.1.1a.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1.1"><mtext id="S4.T4.1.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.1.1.1.1.1.m1.1.1.1">localized</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">{}_{\text{localized}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT localized end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2">53.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3">58.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4">54.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S4.T4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.2.1.1">
<span class="ltx_p" id="S4.T4.2.2.1.1.1" style="width:34.1pt;">TPO<math alttext="{}_{\text{comprehensive}}" class="ltx_Math" display="inline" id="S4.T4.2.2.1.1.1.m1.1"><semantics id="S4.T4.2.2.1.1.1.m1.1a"><msub id="S4.T4.2.2.1.1.1.m1.1.1" xref="S4.T4.2.2.1.1.1.m1.1.1.cmml"><mi id="S4.T4.2.2.1.1.1.m1.1.1a" xref="S4.T4.2.2.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T4.2.2.1.1.1.m1.1.1.1" xref="S4.T4.2.2.1.1.1.m1.1.1.1a.cmml">comprehensive</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.1.1.1.m1.1b"><apply id="S4.T4.2.2.1.1.1.m1.1.1.cmml" xref="S4.T4.2.2.1.1.1.m1.1.1"><ci id="S4.T4.2.2.1.1.1.m1.1.1.1a.cmml" xref="S4.T4.2.2.1.1.1.m1.1.1.1"><mtext id="S4.T4.2.2.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.2.2.1.1.1.m1.1.1.1">comprehensive</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.1.1.1.m1.1c">{}_{\text{comprehensive}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.1.1.1.m1.1d">start_FLOATSUBSCRIPT comprehensive end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.3">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4">53.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.3.3.1.1">
<span class="ltx_p" id="S4.T4.3.3.1.1.1" style="width:34.1pt;">TPO<math alttext="{}_{\text{full}}" class="ltx_Math" display="inline" id="S4.T4.3.3.1.1.1.m1.1"><semantics id="S4.T4.3.3.1.1.1.m1.1a"><msub id="S4.T4.3.3.1.1.1.m1.1.1" xref="S4.T4.3.3.1.1.1.m1.1.1.cmml"><mi id="S4.T4.3.3.1.1.1.m1.1.1a" xref="S4.T4.3.3.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T4.3.3.1.1.1.m1.1.1.1" xref="S4.T4.3.3.1.1.1.m1.1.1.1a.cmml">full</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.1.1.1.m1.1b"><apply id="S4.T4.3.3.1.1.1.m1.1.1.cmml" xref="S4.T4.3.3.1.1.1.m1.1.1"><ci id="S4.T4.3.3.1.1.1.m1.1.1.1a.cmml" xref="S4.T4.3.3.1.1.1.m1.1.1.1"><mtext id="S4.T4.3.3.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T4.3.3.1.1.1.m1.1.1.1">full</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.1.1.1.m1.1c">{}_{\text{full}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.1.1.1.m1.1d">start_FLOATSUBSCRIPT full end_FLOATSUBSCRIPT</annotation></semantics></math></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.2.1">54.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.1">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.4.1">55.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of using different granularities of data in the Temporal Preference Optimization (TPO) framework.  It compares the performance of models trained using only localized temporal preference data, only comprehensive temporal preference data, and a combination of both.  The results are presented for three long-form video understanding benchmarks: LongVideoBench, MLVU, and Video-MME, showing the relative contribution of each data type and the synergistic benefit of combining them.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of different data granularities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T5.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.1.1.1.1">
<span class="ltx_p" id="A4.T5.2.1.1.1.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.2.1.1.1.1.1.1" style="font-size:144%;">Localized/Comprehensive TPO Ratio</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T5.2.1.1.2.1" style="font-size:144%;">LongVideoBench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T5.2.1.1.3.1" style="font-size:144%;">MLVU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.2.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T5.2.1.1.4.1" style="font-size:144%;">VideoMME</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.2.2.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="A4.T5.2.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.2.1.1.1">
<span class="ltx_p" id="A4.T5.2.2.1.1.1.1" style="width:170.7pt;"><span class="ltx_text" id="A4.T5.2.2.1.1.1.1.1" style="font-size:144%;">10:0</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.1.2"><span class="ltx_text" id="A4.T5.2.2.1.2.1" style="font-size:144%;">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.1.3"><span class="ltx_text" id="A4.T5.2.2.1.3.1" style="font-size:144%;">58.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.2.2.1.4"><span class="ltx_text" id="A4.T5.2.2.1.4.1" style="font-size:144%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.3.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="A4.T5.2.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.3.2.1.1">
<span class="ltx_p" id="A4.T5.2.3.2.1.1.1" style="width:170.7pt;"><span class="ltx_text" id="A4.T5.2.3.2.1.1.1.1" style="font-size:144%;">8:2</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A4.T5.2.3.2.2"><span class="ltx_text" id="A4.T5.2.3.2.2.1" style="font-size:144%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.3.2.3"><span class="ltx_text" id="A4.T5.2.3.2.3.1" style="font-size:144%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.3.2.4"><span class="ltx_text" id="A4.T5.2.3.2.4.1" style="font-size:144%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.4.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="A4.T5.2.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.4.3.1.1">
<span class="ltx_p" id="A4.T5.2.4.3.1.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.2.4.3.1.1.1.1" style="font-size:144%;">5:5</span><span class="ltx_text" id="A4.T5.2.4.3.1.1.1.2" style="font-size:144%;"> (</span><span class="ltx_text ltx_font_bold" id="A4.T5.2.4.3.1.1.1.3" style="font-size:144%;">Our final TPO model</span><span class="ltx_text" id="A4.T5.2.4.3.1.1.1.4" style="font-size:144%;">)</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A4.T5.2.4.3.2"><span class="ltx_text ltx_font_bold" id="A4.T5.2.4.3.2.1" style="font-size:144%;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.4.3.3"><span class="ltx_text ltx_font_bold" id="A4.T5.2.4.3.3.1" style="font-size:144%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.4.3.4"><span class="ltx_text ltx_font_bold" id="A4.T5.2.4.3.4.1" style="font-size:144%;">55.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.5.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="A4.T5.2.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.5.4.1.1">
<span class="ltx_p" id="A4.T5.2.5.4.1.1.1" style="width:170.7pt;"><span class="ltx_text" id="A4.T5.2.5.4.1.1.1.1" style="font-size:144%;">2:8</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.4.2"><span class="ltx_text" id="A4.T5.2.5.4.2.1" style="font-size:144%;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.4.3"><span class="ltx_text" id="A4.T5.2.5.4.3.1" style="font-size:144%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.2.5.4.4"><span class="ltx_text" id="A4.T5.2.5.4.4.1" style="font-size:144%;">54.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.6.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="A4.T5.2.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.6.5.1.1">
<span class="ltx_p" id="A4.T5.2.6.5.1.1.1" style="width:170.7pt;"><span class="ltx_text" id="A4.T5.2.6.5.1.1.1.1" style="font-size:144%;">0:10</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.6.5.2"><span class="ltx_text" id="A4.T5.2.6.5.2.1" style="font-size:144%;">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.6.5.3"><span class="ltx_text" id="A4.T5.2.6.5.3.1" style="font-size:144%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.2.6.5.4"><span class="ltx_text" id="A4.T5.2.6.5.4.1" style="font-size:144%;">53.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Temporal Preference Optimization (TPO) model trained on various combinations of localized and comprehensive temporal preference data.  The LongVA model was used as the base model. Different ratios of localized to comprehensive data were used during training (10:0, 8:2, 5:5, 2:8, 0:10), representing the proportion of localized and comprehensive data.  The results show the performance on three different video understanding benchmarks: LongVideoBench, MLVU, and Video-MME. This allows for an analysis of how the balance between localized and comprehensive training data impacts overall performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Results of TPO trained on different data mix ratios for localized TPO and comprehensive TPO data based on the LongVA model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13919/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13919/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}