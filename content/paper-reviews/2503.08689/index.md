---
title: "QuoTA: Query-oriented Token Assignment via CoT Query Decouple for Long Video Comprehension"
summary: "QuoTA: Task-aware token assignment boosts long video comprehension in LVLMs via query-decoupled processing, without extra training!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Xiamen University",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08689 {{< /keyword >}}
{{< keyword icon="writer" >}} Yongdong Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08689" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08689" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08689/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advances in long video understanding use token pruning. However, they overlook input-level semantic correlation between visual tokens and instructions. The paper introduces **QuoTA**, a modular, training-free method for visual token assignment that considers query-oriented frame-level importance in Large Video-Language Models.



**QuoTA** strategically allocates frame-level importance scores based on query relevance, decoupling the query via Chain-of-Thoughts reasoning to facilitate more precise frame importance scoring.  This approach improves performance on six benchmarks by aligning visual processing with task-specific needs, optimizing token budget utilization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} QuoTA: a plug-and-play module, enhances long video comprehension in LVLMs by assigning visual tokens based on query relevance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It decouples the query using Chain-of-Thoughts, leading to more precise LVLM-based frame importance scoring. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method achieves state-of-the-art results on multiple benchmarks, demonstrating its effectiveness and generalizability. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical challenge of **efficiently processing long videos in LVLMs**. QuoTA's training-free, plug-and-play design offers immediate benefits, paving the way for more effective video analysis and understanding in resource-constrained environments, and opens new research directions in query-focused attention mechanisms.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08689/x1.png)

> 🔼 Figure 1 presents a comparative performance analysis of different token assignment methods on the Video-MME benchmark.  It specifically examines the impact of three techniques – AIM [50], FrameFusion [9], and the proposed QuoTA – when integrated with two large video-language models (LVLMs): LLaVA-Video-7B [48] and LLaVA-OV-7B [13]. The x-axis represents the relative visual token budget (percentage of total tokens used), while the y-axis shows the overall performance on Video-MME.  The figure demonstrates that QuoTA consistently outperforms both AIM and FrameFusion across various token budget settings, showcasing its effectiveness in enhancing the performance of the base LVLMs without requiring additional computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparative analysis of Video-MME [7] when implementing attention-based token assignment methods AIM [50] and FrameFusion [9], alongside our proposed query-oriented QuoTA within LLaVA-Video-7B [48] and LLaVA-OV-7B [13] across varied relative visual token budgets. QuoTA demonstrates superior efficacy while exhibiting consistent performance enhancement across diverse token budget configurations relative to the baseline.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.SS2.tab1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS2.tab1.1.1.1" style="background-color:#CCCCCC;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S3.SS2.tab1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.tab1.1.1.1.1.1" style="background-color:#CCCCCC;">
<span class="ltx_p" id="S3.SS2.tab1.1.1.1.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS2.tab1.1.1.1.1.1.1.1">Prompt for Frame Scoring Based on Source Query</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS2.tab1.1.2.1" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S3.SS2.tab1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.tab1.1.2.1.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS2.tab1.1.2.1.1.1.1" style="width:390.3pt;">Question: Does this frame contain any information to answer the given query: {query}?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.tab1.1.3.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S3.SS2.tab1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.tab1.1.3.2.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS2.tab1.1.3.2.1.1.1" style="width:390.3pt;">A. Yes. B. No.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS2.tab1.1.4.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="S3.SS2.tab1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS2.tab1.1.4.3.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS2.tab1.1.4.3.1.1.1" style="width:390.3pt;">Answer the letter directly.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of various Large Video-Language Models (LVLMs) on three benchmark datasets for long video understanding: LongVideoBench, MLVU, and Video-MME.  The table shows the performance of several models, including proprietary models like GPT-4 and Gemini, as well as open-source models such as LongVA, Video-XL, and LLaVA.  The performance metric used is an overall accuracy score, presented as a percentage, and the results are broken down by video length (short, medium, long) to highlight performance variation across different video durations.  It also shows the number of parameters and frames used by each model.  A key finding highlighted in the caption is that adding the QuoTA module to the LLaVA-Video-7B model resulted in a 1.5% average performance improvement across the three benchmark datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance on the validation set of LongVideoBench [37], MLVU [51] and Video-MME [7]. By applying QuoTA to LLaVA-Video-7B [48], we observed an average performance improvement of 1.5% across three long video understanding benchmarks while setting new state-of-the-art. * denotes using the same visual token budget as the baseline. Models in parentheses represent the baselines they used.
> </details>





### In-depth insights


#### Query-Aware Tokens
**Query-aware tokens** represent a paradigm shift in visual processing, moving beyond generic feature extraction to task-specific content selection. The idea is that not all visual tokens are equally relevant to a given query, so a model should focus its resources on the most informative ones. This approach aligns visual processing with task objectives, optimizing token budget utilization. Methods for achieving query-awareness could involve **attention mechanisms or direct relevance scoring**. Challenges include effectively decoupling the query and scoring visual frames. The potential benefits include improved performance, efficiency, and interpretability in video comprehension tasks.

#### CoT Query Split
**CoT Query Split** is a technique to decompose complex queries into simpler sub-questions, enabling more accurate frame-level scoring. This leverages LVLMs' reasoning abilities, structuring the query for better visual grounding. By focusing on key elements and question types, it facilitates targeted frame analysis, enhancing relevance and reducing noise. This approach is crucial for effective token allocation, ensuring critical information is prioritized, leading to improved overall comprehension and performance of the model. Different splitting strategies, such as entity-based and event-driven, cater to various task types, optimizing the selection process.

#### Frame Importance
Frame Importance, as implicitly discussed in the paper, centers on identifying the most salient frames within a video for effective comprehension. The research addresses this by strategically allocating importance scores based on **query relevance**, ensuring that processing aligns with task-specific needs. Instead of merely increasing frame quantities, which can introduce redundancy, the approach optimizes token budget utilization while preserving semantically relevant content. The method strategically assigns **frame-level importance** before cross-modal interactions, leveraging Chain-of-Thoughts reasoning to decouple queries and enhance scoring precision, crucial for downstream tasks. The success of QuoTA underscores the significance of query-aware frame selection in mitigating redundancy and accentuating salient information, highlighting a departure from conventional attention-based techniques by explicitly incorporating query-specific relevance into visual token assignment.

#### Token Assignment
The document likely discusses different strategies for assigning visual tokens in video understanding models. It seems **token assignment** aims to select the most relevant visual features for a given task or query. This may involve reducing redundancy by prioritizing keyframes or specific objects within frames, potentially using techniques like attention mechanisms or frame scoring based on relevance. The goal is to improve the model's efficiency and accuracy by focusing on the most informative visual elements, while filtering out less relevant information to address the challenges of long video comprehension. The key is to balance computational costs and information density by strategically managing the token budget.

#### Long Video LVLMs
Long Video LVLMs present a crucial area within multimodal learning, tackling challenges of processing extensive temporal data. Existing methods often prune tokens via attention, yet **overlook the semantic input correlation** between visual tokens and instructions. This underscores the need for approaches like the proposed QuoTA, which strategically assigns importance based on query relevance to optimize token budget. **This ante-hoc token assignment aligns visual processing with specific tasks**, preserving semantically relevant content. The core is balancing efficiency via token reduction and relevance through task-aware selection, offering a promising direction in LVLM research.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08689/x2.png)

> 🔼 QuoTA's framework consists of four stages: First, a dynamic frame sampler extracts frames from the video based on its duration. Second, a Vision Transformer (ViT) processes these frames to produce visual embeddings. Third, the 'based LVLM' uses Chain-of-Thought reasoning to transform the input query into a more specific question. This question is then used to prompt a lightweight 'scoring LVLM' to generate frame-wise importance scores, evaluating each frame's relevance to the query.  Finally, a token assigner uses these scores to adjust the visual embeddings, effectively weighting them according to their relevance to the query, producing rescaled frame embeddings.
> <details>
> <summary>read the caption</summary>
> Figure 2: The framework of QuoTA. Initially, a dynamic frame sampler extracts T𝑇Titalic_T frames from the video based on its duration, which are subsequently processed by ViT to generate visual embeddings 𝐄𝐄\bm{\mathrm{E}}bold_E. Then, the based LVLM decouples the input query using Chain-of-Thoughts [36] reasoning into a decoupled clue to generate frame-wise importance scores through scoring LVLM in parallel, thus evaluating the relevance to the query of each frame. Finally, a token assigner rescales the frame embeddings to 𝐄^bold-^𝐄\bm{\mathrm{\hat{E}}}overbold_^ start_ARG bold_E end_ARG based on these importance scores.
> </details>



![](https://arxiv.org/html/2503.08689/x3.png)

> 🔼 This figure displays a qualitative analysis of QuoTA's performance on the Video-MME benchmark using the LLaVA-Video-7B model.  It showcases two example queries and their corresponding video segments.  Frames deemed important by QuoTA (query-oriented keyframes) are highlighted with blue borders.  A bar chart visually represents the normalized importance scores assigned by QuoTA to each frame within the video segment, illustrating how the model prioritizes certain frames based on their relevance to the query. This visualization helps understand how QuoTA focuses the model's attention on the most pertinent parts of the video for accurate response generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative result shown in Video-MME [7] benchmark when applying QuoTA with LLaVA-Video-7B [48]. The video frames with a blue border are query-oriented keyframes, and the bar chart shows the normalized scores of QuoTA for each frame.
> </details>



![](https://arxiv.org/html/2503.08689/x4.png)

> 🔼 This figure shows the detailed prompt engineering strategy used in the paper for object list-based chain of thought reasoning. The prompt guides the large language model (LLM) to first determine if identifying specific objects is necessary to answer the question. If yes, the model is then prompted to list those objects, followed by a filtering step to eliminate any abstract concepts and leave only physical entities.  The example prompts help illustrate this three-step process and ensure the LLM focuses on relevant objects in the video frames.
> <details>
> <summary>read the caption</summary>
> Figure 4: CoT-driven decouple prompt for object list.
> </details>



![](https://arxiv.org/html/2503.08689/x5.png)

> 🔼 This figure demonstrates the Chain-of-Thought (CoT) driven query decoupling prompt specifically designed for video events.  The prompt guides the large language model (LLM) to break down a complex query into a simpler, more focused question about the presence of key video events or elements within a frame.  This process aids in generating more accurate frame-level importance scores by focusing the LLM on specific, easily identifiable aspects of the video content rather than the entire, potentially ambiguous original query.
> <details>
> <summary>read the caption</summary>
> Figure 5: CoT-driven decouple prompt for video event.
> </details>



![](https://arxiv.org/html/2503.08689/x6.png)

> 🔼 Figure 6 presents a detailed breakdown of the performance achieved by various frame scoring strategies within the LLaVA-Video-7B model on the Video-MME benchmark.  It showcases a comparison of different approaches for assigning importance scores to video frames, including methods based on LVLMs with and without Chain-of-Thought (CoT) reasoning, and even CLIP-based scoring. The graph displays the performance on individual sub-tasks within Video-MME, offering a granular view of how each method performs in aspects such as temporal perception, spatial perception, action recognition, and more. This allows for a direct comparison of the effectiveness of different query-oriented token selection strategies and their relative strengths and weaknesses across a range of video understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Sub-task results shown in Video-MME [7] benchmark when applying distinct frame scoring strategy of LLaVA-Video-7B [48].
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.SS3.tab1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS3.tab1.1.1.1" style="background-color:#CCCCCC;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S3.SS3.tab1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.tab1.1.1.1.1.1" style="background-color:#CCCCCC;">
<span class="ltx_p" id="S3.SS3.tab1.1.1.1.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.tab1.1.1.1.1.1.1.1">Prompt for Frame Scoring Based on Entity List</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS3.tab1.1.2.1" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S3.SS3.tab1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.tab1.1.2.1.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS3.tab1.1.2.1.1.1.1" style="width:390.3pt;">Question: Does the frame contain any objects of the following list: {object_list}?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.3.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S3.SS3.tab1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.tab1.1.3.2.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS3.tab1.1.3.2.1.1.1" style="width:390.3pt;">A. Yes. B. No.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.tab1.1.4.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="S3.SS3.tab1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.tab1.1.4.3.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="S3.SS3.tab1.1.4.3.1.1.1" style="width:390.3pt;">Answer the letter directly.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance comparison of various 7B-scale Large Video-Language Models (LVLMs) on three video understanding benchmarks: MVBench, VNBench, and NeXT-QA.  The results are shown using the original frame rates of the videos.  A key finding is that incorporating QuoTA into the LLaVA-Video-7B model leads to a significant average performance improvement (4.8%) across all three benchmarks.  The most substantial improvement (10.3%) is observed on the VNBench (Needle-In-A-Haystack) benchmark, demonstrating QuoTA's effectiveness in focusing on query-relevant keyframes.  This places QuoTA's enhanced LLaVA-Video-7B model ahead of the state-of-the-art model LongVILA.
> <details>
> <summary>read the caption</summary>
> Table 2: The overall performance on MVBench [15], VNBench [49] and NeXT-QA [39] at 7B-scale LVLMs with the setting of the original frame rates. By applying QuoTA to LLaVA-Video-7B [48], we observed an average performance improvement of 4.8% across three benchmarks, especially a 10.3% improvement on the Needle-In-A-Haystack benchmark VNBench [49], which set a new state-of-the-art performing better then LongVILA [40], demonstrating QuoTA assist query-oriented keyframes focusing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.1" rowspan="2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.1.2" rowspan="2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.2.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.3" rowspan="2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.3.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.4.1">LongVideo</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.1.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.5.1">MLVU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.2.1.1.6" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.6.1">Video-MME</span> (wo/w-subtitles)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.2.1" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.1.1">Bench</span> (val)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.2.2" style="padding-left:5.1pt;padding-right:5.1pt;">(m-avg)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.3" style="padding-left:5.1pt;padding-right:5.1pt;">Short</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4" style="padding-left:5.1pt;padding-right:5.1pt;">Medium</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.5" style="padding-left:5.1pt;padding-right:5.1pt;">Long</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.6" style="padding-left:5.1pt;padding-right:5.1pt;">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T1.2.3.3.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.2.3.3.1.1">Proprietary LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.4.4.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.1.1" style="background-color:#E6E6E6;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.4.2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.2.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.4.4.3" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.3.1" style="background-color:#E6E6E6;">384</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.4.4.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.4.1" style="background-color:#E6E6E6;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.4.4.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.5.1" style="background-color:#E6E6E6;">64.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.4.6" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.6.1" style="background-color:#E6E6E6;">80.0/82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.4.7" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.7.1" style="background-color:#E6E6E6;">70.3/76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.4.8" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.8.1" style="background-color:#E6E6E6;">65.3/72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.4.4.9" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.4.4.9.1" style="background-color:#E6E6E6;">71.9/77.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5.5" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.5.5.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.1.1" style="background-color:#E6E6E6;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5.2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.2.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.5.3" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.3.1" style="background-color:#E6E6E6;">0.5 fps</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.5.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.4.1" style="background-color:#E6E6E6;">64.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.5.5.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.5.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5.6" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.6.1" style="background-color:#E6E6E6;">81.7/84.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5.7" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.7.1" style="background-color:#E6E6E6;">74.3/81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5.8" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.8.1" style="background-color:#E6E6E6;">67.4/77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.5.5.9" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.5.5.9.1" style="background-color:#E6E6E6;">75.0/81.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T1.2.6.6.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.2.6.6.1.1">Open-Source LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.7.7.1" style="padding-left:5.1pt;padding-right:5.1pt;">LongVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.7.7.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.7.7.3" style="padding-left:5.1pt;padding-right:5.1pt;">128</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.7.7.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.7.7.5" style="padding-left:5.1pt;padding-right:5.1pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.7.7.6" style="padding-left:5.1pt;padding-right:5.1pt;">61.1/61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.7.7.7" style="padding-left:5.1pt;padding-right:5.1pt;">50.4/53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.7.7.8" style="padding-left:5.1pt;padding-right:5.1pt;">46.2/47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.7.7.9" style="padding-left:5.1pt;padding-right:5.1pt;">52.6/54.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.8.8.1" style="padding-left:5.1pt;padding-right:5.1pt;">Video-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.8.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.8.8.3" style="padding-left:5.1pt;padding-right:5.1pt;">128</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.8.8.4" style="padding-left:5.1pt;padding-right:5.1pt;">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.8.8.5" style="padding-left:5.1pt;padding-right:5.1pt;">64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.8.6" style="padding-left:5.1pt;padding-right:5.1pt;">64.0/67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.8.7" style="padding-left:5.1pt;padding-right:5.1pt;">53.2/60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.8.8" style="padding-left:5.1pt;padding-right:5.1pt;">49.2/54.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.8.8.9" style="padding-left:5.1pt;padding-right:5.1pt;">55.5/61.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.9.9.1" style="padding-left:5.1pt;padding-right:5.1pt;">VITA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.9.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.9.9.3" style="padding-left:5.1pt;padding-right:5.1pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.9.9.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.9.9.5" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.9.6" style="padding-left:5.1pt;padding-right:5.1pt;">67.0/69.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.9.7" style="padding-left:5.1pt;padding-right:5.1pt;">54.2/55.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.9.8" style="padding-left:5.1pt;padding-right:5.1pt;">47.1/50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.9.9.9" style="padding-left:5.1pt;padding-right:5.1pt;">56.1/58.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.10.10.1" style="padding-left:5.1pt;padding-right:5.1pt;">TimeMarker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.10.2" style="padding-left:5.1pt;padding-right:5.1pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.10.10.3" style="padding-left:5.1pt;padding-right:5.1pt;">128</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.10.10.4" style="padding-left:5.1pt;padding-right:5.1pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.10.10.5" style="padding-left:5.1pt;padding-right:5.1pt;">63.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.10.6" style="padding-left:5.1pt;padding-right:5.1pt;">71.0/75.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.10.7" style="padding-left:5.1pt;padding-right:5.1pt;">54.4/60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.10.8" style="padding-left:5.1pt;padding-right:5.1pt;">46.4/51.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.10.10.9" style="padding-left:5.1pt;padding-right:5.1pt;">57.3/62.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.11.11.1" style="padding-left:5.1pt;padding-right:5.1pt;">AIM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite> (LLaVA-OV)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.11.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.11.11.3" style="padding-left:5.1pt;padding-right:5.1pt;">32*</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.11.11.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.11.11.5" style="padding-left:5.1pt;padding-right:5.1pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.11.6" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.11.7" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.11.8" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.11.11.9" style="padding-left:5.1pt;padding-right:5.1pt;">59.2/62.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.12.12.1" style="padding-left:5.1pt;padding-right:5.1pt;">LongVILA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.12.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.12.12.3" style="padding-left:5.1pt;padding-right:5.1pt;">256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.12.12.4" style="padding-left:5.1pt;padding-right:5.1pt;">57.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.12.12.5" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.12.6" style="padding-left:5.1pt;padding-right:5.1pt;">69.0/72.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.12.7" style="padding-left:5.1pt;padding-right:5.1pt;">58.3/64.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.12.8" style="padding-left:5.1pt;padding-right:5.1pt;">53.0/57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.12.12.9" style="padding-left:5.1pt;padding-right:5.1pt;">60.1/65.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.13.13.1" style="padding-left:5.1pt;padding-right:5.1pt;">LongVU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.13.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.13.13.3" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.13.13.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.13.13.5" style="padding-left:5.1pt;padding-right:5.1pt;">65.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.13.6" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.13.7" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.13.8" style="padding-left:5.1pt;padding-right:5.1pt;">59.5/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.13.13.9" style="padding-left:5.1pt;padding-right:5.1pt;">60.6/-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.14.14.1" style="padding-left:5.1pt;padding-right:5.1pt;">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.14.14.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.14.14.3" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.14.14.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.14.14.5" style="padding-left:5.1pt;padding-right:5.1pt;">64.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.14.14.6" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.14.14.7" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.14.14.8" style="padding-left:5.1pt;padding-right:5.1pt;">-/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.14.14.9" style="padding-left:5.1pt;padding-right:5.1pt;">63.3/69.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.15.15.1" style="padding-left:5.1pt;padding-right:5.1pt;">ReTaKe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite> (Qwen2-VL)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.15.15.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.15.15.3" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.15.15.4" style="padding-left:5.1pt;padding-right:5.1pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.15.15.5" style="padding-left:5.1pt;padding-right:5.1pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.15.15.6" style="padding-left:5.1pt;padding-right:5.1pt;">72.8/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.15.15.7" style="padding-left:5.1pt;padding-right:5.1pt;">62.7/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.15.15.8" style="padding-left:5.1pt;padding-right:5.1pt;">56.2/-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.15.15.9" style="padding-left:5.1pt;padding-right:5.1pt;">63.9/-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.16.16.1" style="padding-left:5.1pt;padding-right:5.1pt;">NVILA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.16.16.2" style="padding-left:5.1pt;padding-right:5.1pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.16.16.3" style="padding-left:5.1pt;padding-right:5.1pt;">256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.16.16.4" style="padding-left:5.1pt;padding-right:5.1pt;">57.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.16.16.5" style="padding-left:5.1pt;padding-right:5.1pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.16.16.6" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.16.16.6.1">75.7</span>/<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.16.16.6.2">77.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.16.16.7" style="padding-left:5.1pt;padding-right:5.1pt;">62.2/<span class="ltx_text ltx_font_bold" id="S4.T1.2.16.16.7.1">69.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.16.16.8" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.16.16.8.1">54.9</span>/63.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.16.16.9" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.16.16.9.1">64.2</span>/<span class="ltx_text ltx_font_bold" id="S4.T1.2.16.16.9.2">70.0</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.17.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.17.17.1" style="padding-left:5.1pt;padding-right:5.1pt;">LLaVA-OV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.17.17.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.17.17.3" style="padding-left:5.1pt;padding-right:5.1pt;">64</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.17.17.4" style="padding-left:5.1pt;padding-right:5.1pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.17.17.5" style="padding-left:5.1pt;padding-right:5.1pt;">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.17.17.6" style="padding-left:5.1pt;padding-right:5.1pt;">70.2/74.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.17.17.7" style="padding-left:5.1pt;padding-right:5.1pt;">56.6/64.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.17.17.8" style="padding-left:5.1pt;padding-right:5.1pt;">47.7/62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.17.17.9" style="padding-left:5.1pt;padding-right:5.1pt;">58.1/66.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.18.18" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.18.18.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.1.1" style="background-color:#E6FFFF;">LLaVA-OV + QuoTA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.18.18.2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.2.1" style="background-color:#E6FFFF;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.18.18.3" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.3.1" style="background-color:#E6FFFF;">64*</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.18.18.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.4.1" style="background-color:#E6FFFF;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.18.18.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.5.1" style="background-color:#E6FFFF;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.18.18.6" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.6.1" style="background-color:#E6FFFF;">71.1/74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.18.18.7" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.7.1" style="background-color:#E6FFFF;">58.8/65.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.18.18.8" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.8.1" style="background-color:#E6FFFF;">52.2/<span class="ltx_text ltx_font_bold" id="S4.T1.2.18.18.8.1.1">63.9</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.18.18.9" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.18.18.9.1" style="background-color:#E6FFFF;">60.7/68.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.19.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.19.19.1" style="padding-left:5.1pt;padding-right:5.1pt;">LLaVA-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.19.19.2" style="padding-left:5.1pt;padding-right:5.1pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.19.19.3" style="padding-left:5.1pt;padding-right:5.1pt;">64</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.19.19.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.19.19.4.1">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.19.19.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.19.19.5.1">70.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.19.19.6" style="padding-left:5.1pt;padding-right:5.1pt;">75.4/77.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.19.19.7" style="padding-left:5.1pt;padding-right:5.1pt;">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.19.19.7.1">62.6</span>/67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.19.19.8" style="padding-left:5.1pt;padding-right:5.1pt;">51.8/<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.19.19.8.1">63.6</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.19.19.9" style="padding-left:5.1pt;padding-right:5.1pt;">63.3/<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.19.19.9.1">69.5</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.20.20" style="background-color:#E6FFFF;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.20.20.1" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.20.20.1.1" style="background-color:#E6FFFF;">LLaVA-Video + QuoTA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.20.20.2" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.20.20.2.1" style="background-color:#E6FFFF;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.20.20.3" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text" id="S4.T1.2.20.20.3.1" style="background-color:#E6FFFF;">64*</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.20.20.4" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.4.1" style="background-color:#E6FFFF;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.20.20.5" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.5.1" style="background-color:#E6FFFF;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.20.20.6" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.6.1" style="background-color:#E6FFFF;">77.1<span class="ltx_text ltx_font_medium" id="S4.T1.2.20.20.6.1.1">/</span>79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.20.20.7" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.7.1" style="background-color:#E6FFFF;">64.9<span class="ltx_text ltx_font_medium" id="S4.T1.2.20.20.7.1.1">/<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.20.20.7.1.1.1">68.0</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.20.20.8" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.8.1" style="background-color:#E6FFFF;">55.7<span class="ltx_text ltx_font_medium" id="S4.T1.2.20.20.8.1.1">/62.9</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.20.20.9" style="padding-left:5.1pt;padding-right:5.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.20.20.9.1" style="background-color:#E6FFFF;">65.9<span class="ltx_text ltx_font_medium" id="S4.T1.2.20.20.9.1.1">/</span>70.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different components of the QuoTA model on two video understanding benchmarks: Video-MME and VNBench.  The study compares several configurations of the QuoTA model, varying the frame sampling method (fixed-length sampling of 96 frames versus dynamic sampling of 96-160 frames), the inclusion of LVLM-based frame scoring (Wei.), and the use of Chain-of-Thought driven query decoupling (CoT-Dec.).  All configurations maintain a consistent token budget.  The results show the performance of each configuration on Video-MME and VNBench, allowing for a detailed analysis of the contribution of each QuoTA component.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on combinations of different components in Video-MME [7] and VNBench [49] when using Long-LLaVA-7B [43] as the based LVLM on QuoTA. Fix-len. and Dy-len. represent fix sampled 96-frame and dynamic sampled 96∼similar-to\sim∼160 frames with the same token budget Ntsubscript𝑁𝑡N_{t}italic_N start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT as the baseline, respectively. Wei. and CoT-Dec. denote the LVLM-based frame scoring and CoT-Driven Query Decouple in Section 3.3 and 3.4, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.1.1.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.2.1">MVBench</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.3.1">NeXT-QA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.2.1.1.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.4.1">VNBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S4.T2.2.2.2.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.2.2.2.1.1">Proprietary LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3.3" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.3.3.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.3.3.1.1" style="background-color:#E6E6E6;">Gemini-1.5-Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.3.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.3.3.2.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.3.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.3.3.3.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.3.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.3.3.4.1" style="background-color:#E6E6E6;">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.4.4.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.4.4.1.1" style="background-color:#E6E6E6;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.4.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.4.4.2.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.4.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.4.4.3.1" style="background-color:#E6E6E6;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.4.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.4.4.4.1" style="background-color:#E6E6E6;">64.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.5">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="4" id="S4.T2.2.5.5.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.2.5.5.1.1">Open-Source LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.6.6.1" style="padding:-0.25pt 1.4pt;">LongVA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.6.6.2" style="padding:-0.25pt 1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.6.6.3" style="padding:-0.25pt 1.4pt;">68.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.6.6.4" style="padding:-0.25pt 1.4pt;">41.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.7.7.1" style="padding:-0.25pt 1.4pt;">mPLUG-Owl3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.7.7.2" style="padding:-0.25pt 1.4pt;">54.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.7.7.3" style="padding:-0.25pt 1.4pt;">76.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.7.7.4" style="padding:-0.25pt 1.4pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.8.8.1" style="padding:-0.25pt 1.4pt;">Video-XL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.8.8.2" style="padding:-0.25pt 1.4pt;">55.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.8.8.3" style="padding:-0.25pt 1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.8.8.4" style="padding:-0.25pt 1.4pt;">61.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.9.9.1" style="padding:-0.25pt 1.4pt;">LongVILA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.9.9.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.9.2.1">67.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.9.9.3" style="padding:-0.25pt 1.4pt;">80.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.9.9.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.9.9.4.1">63.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.10.10.1" style="padding:-0.25pt 1.4pt;">LLaVA-OV <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.10.10.2" style="padding:-0.25pt 1.4pt;">56.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.10.10.3" style="padding:-0.25pt 1.4pt;">79.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.10.10.4" style="padding:-0.25pt 1.4pt;">44.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11.11" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.11.11.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.11.11.1.1" style="background-color:#E6FFFF;">LLaVA-OV + QuoTA</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.11.11.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.11.11.2.1" style="background-color:#E6FFFF;">57.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.11.11.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.11.11.3.1" style="background-color:#E6FFFF;">80.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.11.11.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.11.11.4.1" style="background-color:#E6FFFF;">49.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.12.12.1" style="padding:-0.25pt 1.4pt;">LLaVA-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08689v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.12.12.2" style="padding:-0.25pt 1.4pt;">58.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.12.12.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.12.12.3.1">83.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.12.12.4" style="padding:-0.25pt 1.4pt;">54.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13.13" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.13.13.1" style="padding:-0.25pt 1.4pt;"><span class="ltx_text" id="S4.T2.2.13.13.1.1" style="background-color:#E6FFFF;">LLaVA-Video + QuoTA</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.13.13.2" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.2.13.13.2.1" style="background-color:#E6FFFF;">62.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.13.13.3" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.13.13.3.1" style="background-color:#E6FFFF;">83.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.2.13.13.4" style="padding:-0.25pt 1.4pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.13.13.4.1" style="background-color:#E6FFFF;">64.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 shows the performance comparison of different frame sampling strategies and token budgets using the Video-MME and VNBench datasets.  The baseline model is LLaVA-Video-7B with a fixed number of frames and tokens.  The experiments introduce dynamic frame sampling, adjusting the number of frames based on video length and varying the total token budget.  Different combinations of  `Tbase` (base number of frames), `α` (hyperparameter controlling the maximum number of additional frames), and `Nt` (total visual token budget) are tested. The table presents results for these varying configurations,  showing the impact on performance (measured by accuracy on the benchmarks) and inference time per sample. The gray rows indicate the baseline's performance with fixed frame sampling.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on different frame-sampling strategies and token budgets in Video-MME [7] and VNBench [49]. Gray rows represent baseline LLaVA-Video-7B [48] with fixed frame sampling while others represent dynamic sampling with varying Tb⁢a⁢s⁢esubscript𝑇𝑏𝑎𝑠𝑒T_{base}italic_T start_POSTSUBSCRIPT italic_b italic_a italic_s italic_e end_POSTSUBSCRIPT and α𝛼\alphaitalic_α in different budget Ntsubscript𝑁𝑡N_{t}italic_N start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT when extending the baseline with QuoTA. #Time denotes the average time during inference per sample.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.6.1.1.1" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.1.1">Fix-len.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.6.1.1.2" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.2.1">Dy-len.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.6.1.1.3" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.3.1">Wei.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.6.1.1.4" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.4.1">CoT-Dec.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.6.1.1.5" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.5.1">V-MME</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.1.1.6" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.1.1.6.1">VNBench</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.2.1.1" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.6.2.1.2" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.2.1.3" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.6.2.1.4" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.2.1.5" style="padding:-0.25pt 2.8pt;">63.3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.2.1.6" style="padding:-0.25pt 2.8pt;">54.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.3.2.1" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.3.2.2" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.6.3.2.3" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.3.2.4" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.3.2.5" style="padding:-0.25pt 2.8pt;">64.0</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.3.2.6" style="padding:-0.25pt 2.8pt;">58.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.4.3">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.6.4.3.1" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.4.3.2" style="padding:-0.25pt 2.8pt;">✓</td>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.6.4.3.3" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.4.3.4" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.4.3.5" style="padding:-0.25pt 2.8pt;">63.5</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.4.3.6" style="padding:-0.25pt 2.8pt;">58.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.5.4.1" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.5.4.2" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.5.4.3" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.5.4.4" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.5.4.5" style="padding:-0.25pt 2.8pt;">63.6</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.5.4.6" style="padding:-0.25pt 2.8pt;">49.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.5">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T3.6.6.5.1" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.5.2" style="padding:-0.25pt 2.8pt;">✓</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.6.5.3" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.6.5.4" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.6.5.5" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.6.5.5.1">64.4</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.5.6" style="padding:-0.25pt 2.8pt;">48.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.7.6.1" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_border_r" id="S4.T3.6.7.6.2" style="padding:-0.25pt 2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.7.6.3" style="padding:-0.25pt 2.8pt;">✓</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.7.6.4" style="padding:-0.25pt 2.8pt;">✓</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T3.6.7.6.5" style="padding:-0.25pt 2.8pt;">64.2</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.7.6.6" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.7.6.6.1">60.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.8.7.1" style="padding:-0.25pt 2.8pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.8.7.2" style="padding:-0.25pt 2.8pt;"><span class="ltx_text" id="S4.T3.6.8.7.2.1" style="background-color:#E6FFFF;">✓</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.8.7.3" style="padding:-0.25pt 2.8pt;"><span class="ltx_text" id="S4.T3.6.8.7.3.1" style="background-color:#E6FFFF;">✓</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.8.7.4" style="padding:-0.25pt 2.8pt;"><span class="ltx_text" id="S4.T3.6.8.7.4.1" style="background-color:#E6FFFF;">✓</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.8.7.5" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.8.7.5.1" style="background-color:#E6FFFF;">65.9</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.8.7.6" style="padding:-0.25pt 2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.8.7.6.1" style="background-color:#E6FFFF;">60.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different visual token assignment strategies within the QuoTA framework, specifically focusing on their impact on the performance of the LLaVA-Video-7B model across two video understanding benchmarks: Video-MME and VNBench.  The strategies evaluated include the baseline (no special token assignment), bilinear interpolation, adaptive pooling, and dynamic token merging.  The results highlight the effectiveness of each method in terms of overall performance, broken down further by sub-task within the benchmarks.  The 'None' row represents the model's performance without any specialized token assignment, providing a basis for comparison.
> <details>
> <summary>read the caption</summary>
> Table 5: Results on different token assignment strategies when extending QuoTA with LLaVA-Video-7B [48] on Video-MME [7] and VNBench [49]. “None” represents the baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1" style="padding:-0.25pt 4.3pt;"><math alttext="T_{base}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.m1.1.1" xref="S4.T4.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.m1.1.1.2.cmml">T</mi><mrow id="S4.T4.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.m1.1.1.3.cmml"><mi id="S4.T4.1.1.1.m1.1.1.3.2" xref="S4.T4.1.1.1.m1.1.1.3.2.cmml">b</mi><mo id="S4.T4.1.1.1.m1.1.1.3.1" xref="S4.T4.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.m1.1.1.3.3" xref="S4.T4.1.1.1.m1.1.1.3.3.cmml">a</mi><mo id="S4.T4.1.1.1.m1.1.1.3.1a" xref="S4.T4.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.m1.1.1.3.4" xref="S4.T4.1.1.1.m1.1.1.3.4.cmml">s</mi><mo id="S4.T4.1.1.1.m1.1.1.3.1b" xref="S4.T4.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.m1.1.1.3.5" xref="S4.T4.1.1.1.m1.1.1.3.5.cmml">e</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.m1.1.1.2">𝑇</ci><apply id="S4.T4.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.m1.1.1.3"><times id="S4.T4.1.1.1.m1.1.1.3.1.cmml" xref="S4.T4.1.1.1.m1.1.1.3.1"></times><ci id="S4.T4.1.1.1.m1.1.1.3.2.cmml" xref="S4.T4.1.1.1.m1.1.1.3.2">𝑏</ci><ci id="S4.T4.1.1.1.m1.1.1.3.3.cmml" xref="S4.T4.1.1.1.m1.1.1.3.3">𝑎</ci><ci id="S4.T4.1.1.1.m1.1.1.3.4.cmml" xref="S4.T4.1.1.1.m1.1.1.3.4">𝑠</ci><ci id="S4.T4.1.1.1.m1.1.1.3.5.cmml" xref="S4.T4.1.1.1.m1.1.1.3.5">𝑒</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">T_{base}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">italic_T start_POSTSUBSCRIPT italic_b italic_a italic_s italic_e end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T4.2.2.2" style="padding:-0.25pt 4.3pt;"><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mi id="S4.T4.2.2.2.m1.1.1" xref="S4.T4.2.2.2.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">italic_α</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3" style="padding:-0.25pt 4.3pt;"><math alttext="N_{t}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><msub id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml"><mi id="S4.T4.3.3.3.m1.1.1.2" xref="S4.T4.3.3.3.m1.1.1.2.cmml">N</mi><mi id="S4.T4.3.3.3.m1.1.1.3" xref="S4.T4.3.3.3.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T4.3.3.3.m1.1.1.2.cmml" xref="S4.T4.3.3.3.m1.1.1.2">𝑁</ci><ci id="S4.T4.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">N_{t}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">italic_N start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.3.3.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.4.1">#Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.5.1">V-MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.6.1">VNBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.4.1" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.4.1.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.1.1" style="background-color:#F2F2F2;">16</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.4.1.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.2.1" style="background-color:#F2F2F2;">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.3.1" style="background-color:#F2F2F2;">3,136</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.4.1.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.4.1" style="background-color:#F2F2F2;">4.50s</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.5.1" style="background-color:#F2F2F2;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.4.1.6.1" style="background-color:#F2F2F2;">30.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.5.2.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.1.1" style="background-color:#F2F2F2;">32</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.5.2.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.2.1" style="background-color:#F2F2F2;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.3.1" style="background-color:#F2F2F2;">6,272</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.5.2.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.4.1" style="background-color:#F2F2F2;">9.07s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.5.1" style="background-color:#F2F2F2;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.5.2.6.1" style="background-color:#F2F2F2;">40.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.6.3" style="background-color:#F2F2F2;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.6.3.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.1.1" style="background-color:#F2F2F2;">64</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.6.3.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.2.1" style="background-color:#F2F2F2;">0</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.3.1" style="background-color:#F2F2F2;">12,544</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.6.3.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.4.1" style="background-color:#F2F2F2;">15.31s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.5.1" style="background-color:#F2F2F2;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.6.3.6.1" style="background-color:#F2F2F2;">54.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T4.3.7.4.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.3.7.4.1.1">Dynamic sampling with 25% budget (3,136 tokens)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.3.8.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.8.5.1" style="padding:-0.25pt 4.3pt;">32</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.8.5.2" style="padding:-0.25pt 4.3pt;">32</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.8.5.3" style="padding:-0.25pt 4.3pt;">3,136</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.8.5.4" style="padding:-0.25pt 4.3pt;">6.59s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.8.5.5" style="padding:-0.25pt 4.3pt;">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.8.5.6" style="padding:-0.25pt 4.3pt;">39.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.9.6" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.9.6.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.9.6.1.1" style="background-color:#E6FFFF;">64</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.9.6.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.9.6.2.1" style="background-color:#E6FFFF;">32</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.9.6.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.9.6.3.1" style="background-color:#E6FFFF;">3,136</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.9.6.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.9.6.4.1" style="background-color:#E6FFFF;">7.42s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.9.6.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.9.6.5.1" style="background-color:#E6FFFF;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.9.6.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.9.6.6.1" style="background-color:#E6FFFF;">49.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.10.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.10.7.1" style="padding:-0.25pt 4.3pt;">64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.10.7.2" style="padding:-0.25pt 4.3pt;">64</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.10.7.3" style="padding:-0.25pt 4.3pt;">3,136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.10.7.4" style="padding:-0.25pt 4.3pt;">8.33s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.10.7.5" style="padding:-0.25pt 4.3pt;">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.10.7.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.10.7.6.1">49.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.11.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.11.8.1" style="padding:-0.25pt 4.3pt;">96</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.11.8.2" style="padding:-0.25pt 4.3pt;">64</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.11.8.3" style="padding:-0.25pt 4.3pt;">3,136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.11.8.4" style="padding:-0.25pt 4.3pt;">9.54s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.11.8.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.11.8.5.1">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.11.8.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.11.8.6.1">50.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.12.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T4.3.12.9.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.3.12.9.1.1">Dynamic sampling with 50% budget (6,272 tokens)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.3.13.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.13.10.1" style="padding:-0.25pt 4.3pt;">32</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.13.10.2" style="padding:-0.25pt 4.3pt;">32</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.13.10.3" style="padding:-0.25pt 4.3pt;">6,272</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.13.10.4" style="padding:-0.25pt 4.3pt;">11.51s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.13.10.5" style="padding:-0.25pt 4.3pt;">62.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.13.10.6" style="padding:-0.25pt 4.3pt;">35.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.14.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.14.11.1" style="padding:-0.25pt 4.3pt;">64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.14.11.2" style="padding:-0.25pt 4.3pt;">32</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.14.11.3" style="padding:-0.25pt 4.3pt;">6,272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.14.11.4" style="padding:-0.25pt 4.3pt;">12.34s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.14.11.5" style="padding:-0.25pt 4.3pt;">63.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.14.11.6" style="padding:-0.25pt 4.3pt;">47.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.15.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.15.12.1" style="padding:-0.25pt 4.3pt;">64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.15.12.2" style="padding:-0.25pt 4.3pt;">64</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.15.12.3" style="padding:-0.25pt 4.3pt;">6,272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.15.12.4" style="padding:-0.25pt 4.3pt;">13.29s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.15.12.5" style="padding:-0.25pt 4.3pt;">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.15.12.6" style="padding:-0.25pt 4.3pt;">54.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.16.13" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.16.13.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.16.13.1.1" style="background-color:#E6FFFF;">96</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.16.13.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.16.13.2.1" style="background-color:#E6FFFF;">64</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.16.13.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.16.13.3.1" style="background-color:#E6FFFF;">6,272</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.16.13.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.16.13.4.1" style="background-color:#E6FFFF;">14.13s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.16.13.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.16.13.5.1" style="background-color:#E6FFFF;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.16.13.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.16.13.6.1" style="background-color:#E6FFFF;">58.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.17.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.17.14.1" style="padding:-0.25pt 4.3pt;">96</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.17.14.2" style="padding:-0.25pt 4.3pt;">96</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.17.14.3" style="padding:-0.25pt 4.3pt;">6,272</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.17.14.4" style="padding:-0.25pt 4.3pt;">15.07s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.17.14.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.17.14.5.1">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.17.14.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.17.14.6.1">57.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.18.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T4.3.18.15.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.3.18.15.1.1">Dynamic sampling with 100% budget (12,544 tokens)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.3.19.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.19.16.1" style="padding:-0.25pt 4.3pt;">64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.19.16.2" style="padding:-0.25pt 4.3pt;">64</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.19.16.3" style="padding:-0.25pt 4.3pt;">12,544</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.3.19.16.4" style="padding:-0.25pt 4.3pt;">20.85s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.19.16.5" style="padding:-0.25pt 4.3pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.19.16.6" style="padding:-0.25pt 4.3pt;">56.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.20.17" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.20.17.1" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.20.17.1.1" style="background-color:#E6FFFF;">96</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.20.17.2" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.20.17.2.1" style="background-color:#E6FFFF;">64</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.20.17.3" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.20.17.3.1" style="background-color:#E6FFFF;">12,544</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.20.17.4" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.20.17.4.1" style="background-color:#E6FFFF;">21.68s</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.20.17.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.20.17.5.1" style="background-color:#E6FFFF;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.20.17.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text" id="S4.T4.3.20.17.6.1" style="background-color:#E6FFFF;">60.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.21.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.21.18.1" style="padding:-0.25pt 4.3pt;">96</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.21.18.2" style="padding:-0.25pt 4.3pt;">96</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.21.18.3" style="padding:-0.25pt 4.3pt;">12,544</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.21.18.4" style="padding:-0.25pt 4.3pt;">22.97s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.21.18.5" style="padding:-0.25pt 4.3pt;">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.21.18.6" style="padding:-0.25pt 4.3pt;">60.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.22.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.22.19.1" style="padding:-0.25pt 4.3pt;">128</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T4.3.22.19.2" style="padding:-0.25pt 4.3pt;">96</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.22.19.3" style="padding:-0.25pt 4.3pt;">12,544</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.22.19.4" style="padding:-0.25pt 4.3pt;">24.82s</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.22.19.5" style="padding:-0.25pt 4.3pt;">64.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.22.19.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.22.19.6.1">64.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.23.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.23.20.1" style="padding:-0.25pt 4.3pt;">128</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.23.20.2" style="padding:-0.25pt 4.3pt;">128</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.23.20.3" style="padding:-0.25pt 4.3pt;">12,544</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.3.23.20.4" style="padding:-0.25pt 4.3pt;">26.49s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.23.20.5" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.23.20.5.1">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.23.20.6" style="padding:-0.25pt 4.3pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T4.3.23.20.6.1">63.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of different frame scoring strategies within the QuoTA framework, specifically when integrated with the LLaVA-Video-7B model. It evaluates the performance on two benchmark datasets: Video-MME and VNBench. The strategies compared include using no frame scoring (baseline), a LVLM-based approach, LVLM-based approaches with Chain-of-Thought (CoT) reasoning for entity or event-centric decomposition, and a CLIP-based CoT approach.  The results are shown in terms of overall performance and broken down for different sub-tasks within each benchmark to highlight the strengths and weaknesses of each scoring strategy.
> <details>
> <summary>read the caption</summary>
> Table 6: Results on different frame scoring strategies when extending QuoTA with LLaVA-Video-7B [48] on Video-MME [7] and VNBench [49]. “None” represents the baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.2.1.1.1" rowspan="2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.1.1">Visual Token Assigner</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T5.2.1.1.2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.2.1">Video-MME</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.3" rowspan="2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.3.1">VNBench</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.1" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.1.1">S</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.2.1">M</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S4.T5.2.2.2.3" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.3.1">L</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T5.2.2.2.4" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.4.1">O</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.3.1.1" style="padding:-0.25pt 2.0pt;">None</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.3.1.2" style="padding:-0.25pt 2.0pt;">75.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.3.1.3" style="padding:-0.25pt 2.0pt;">62.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.3.1.4" style="padding:-0.25pt 2.0pt;">51.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.3.1.5" style="padding:-0.25pt 2.0pt;">63.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.3.1.6" style="padding:-0.25pt 2.0pt;">54.4</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4.2" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.4.2.1" style="padding:-0.25pt 2.0pt;"><span class="ltx_text" id="S4.T5.2.4.2.1.1" style="background-color:#E6FFFF;">Bilinear Interpolation</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.4.2.2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.4.2.2.1" style="background-color:#E6FFFF;">77.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.4.2.3" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.4.2.3.1" style="background-color:#E6FFFF;">64.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.4.2.4" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.4.2.4.1" style="background-color:#E6FFFF;">55.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.2.4.2.5" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.4.2.5.1" style="background-color:#E6FFFF;">65.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.4.2.6" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.2.4.2.6.1" style="background-color:#E6FFFF;">64.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.2.5.3.1" style="padding:-0.25pt 2.0pt;">Adaptive Pooling</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.5.3.2" style="padding:-0.25pt 2.0pt;">75.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.5.3.3" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.2.5.3.3.1">63.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.5.3.4" style="padding:-0.25pt 2.0pt;">53.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T5.2.5.3.5" style="padding:-0.25pt 2.0pt;">63.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.2.5.3.6" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.5.3.6.1">64.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.2.6.4.1" style="padding:-0.25pt 2.0pt;">Dynamic Token Merging</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.2" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.2.6.4.2.1">76.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.3" style="padding:-0.25pt 2.0pt;">62.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.4" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.2.6.4.4.1">54.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.2.6.4.5" style="padding:-0.25pt 2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.2.6.4.5.1">64.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.6.4.6" style="padding:-0.25pt 2.0pt;">63.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different frame scoring strategies within the QuoTA framework, specifically when integrated with the LLaVA-Video-7B model on the VNBench benchmark. It details the performance across various sub-tasks, including counting, ordering, and retrieval, allowing for a nuanced evaluation of the effectiveness of distinct scoring approaches.  The results showcase the impact of the various methods on achieving the overall goal of accurate and efficient video understanding.
> <details>
> <summary>read the caption</summary>
> Table 7: Results on different frame scoring strategies when extending QuoTA with LLaVA-Video-7B [48] on VNBench [49].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08689/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08689/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}