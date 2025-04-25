---
title: "TimeChat-Online: 80% Visual Tokens are Naturally Redundant in Streaming Videos"
summary: "TimeChat-Online: Redundant Visual Tokens"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17343 {{< /keyword >}}
{{< keyword icon="writer" >}} Linli Yao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17343" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17343" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17343/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Online video platforms need real-time video understanding, but current Video Large Language Models (VideoLLMs) struggle with streaming due to dense, redundant frames and the need for instant user interaction. Short-context models lose context, while long-context models are slow. Existing compression methods are inflexible and language-guided approaches are inefficient. The key is addressing the fundamental challenge of visual redundancy. 



This paper introduces **TimeChat-Online**, featuring Differential Token Drop (DTD), inspired by human visual perception. DTD preserves meaningful temporal changes, filtering static content and reducing video tokens by 82.8% without user queries. **TimeChat-Online-139K**, a new dataset, supports backward tracing, current perception, and future-responding scenarios. This achieves superior performance on streaming benchmarks and enhances long-form video tasks, revealing natural video redundancy for future VideoLLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Differential Token Dropping (DTD) reduces video tokens by 82.8% while maintaining accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TimeChat-Online enables real-time video interaction with proactive response capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The new TimeChat-Online-139K dataset facilitates more flexible streaming VideoQA interactions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **TimeChat-Online**, a novel streaming video understanding framework. By addressing the high visual redundancy inherent in streaming videos, this research significantly advances efficient video processing, opening new avenues for real-time video analysis and interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17343/x1.png)

> 🔼 This figure showcases TimeChat-Online, a system designed for efficient streaming video understanding.  Its key innovation is the Differential Token Dropping (DTD) module. DTD intelligently identifies and removes redundant visual information in video streams, resulting in an 82.8% reduction in the number of video tokens processed.  This reduction is achieved without relying on user queries or prompts, making the system highly efficient.  Despite the significant reduction in data, TimeChat-Online maintains over 98% of its original accuracy while achieving a 1.76x speedup in response time.  The DTD module also automatically detects scene changes in the video, which enables the system's proactive response feature.
> <details>
> <summary>read the caption</summary>
> Figure 1. This paper presents TimeChat-Online for efficient Streaming Video Understanding (Chen et al., 2024a). Its core design is the Differential Token Dropping (DTD) module that selectively preserves only significant temporal changes across video streams. The DTD eliminates 82.8% of redundant video tokens without any user-query guidance, while achieving a 1.76×\times× speedup in response latency and maintaining over 98% of original accuracy. Furthermore, it naturally monitors video scene transitions, facilitating online Proactive Responding.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T9.2">
<tr class="ltx_tr" id="A1.T9.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T9.2.1.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T9.2.1.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.2.1">#Videos</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T9.2.1.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.3.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T9.2.1.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.4.1">#Videos</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T9.2.1.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.5.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T9.2.1.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.1.6.1">#Videos</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.2.2.1" style="padding:1pt 10.0pt;">COIN <cite class="ltx_cite ltx_citemacro_citep">(Tang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib53" title="">2019</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.2.2.2" style="padding:1pt 10.0pt;">151</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.2.2.3" style="padding:1pt 10.0pt;">QV-Highlights <cite class="ltx_cite ltx_citemacro_citep">(Lei et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib24" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.2.2.4" style="padding:1pt 10.0pt;">1778</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.2.2.5" style="padding:1pt 10.0pt;">ActivityNet <cite class="ltx_cite ltx_citemacro_citep">(Fabian Caba Heilbron and Niebles, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib16" title="">2015</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T9.2.2.6" style="padding:1pt 10.0pt;">12</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.3">
<td class="ltx_td ltx_align_left" id="A1.T9.2.3.1" style="padding:1pt 10.0pt;">HD-VILA <cite class="ltx_cite ltx_citemacro_citep">(Xue et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib65" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.3.2" style="padding:1pt 10.0pt;">695</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.3.3" style="padding:1pt 10.0pt;">YouCook2 <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib84" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.3.4" style="padding:1pt 10.0pt;">710</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.3.5" style="padding:1pt 10.0pt;">TVSum <cite class="ltx_cite ltx_citemacro_citep">(Song et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib51" title="">2015</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.3.6" style="padding:1pt 10.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.4">
<td class="ltx_td ltx_align_left" id="A1.T9.2.4.1" style="padding:1pt 10.0pt;">ViTT <cite class="ltx_cite ltx_citemacro_citep">(Huang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib21" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.4.2" style="padding:1pt 10.0pt;">2000</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.4.3" style="padding:1pt 10.0pt;">QuerYD <cite class="ltx_cite ltx_citemacro_citep">(Oncescu et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib41" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.4.4" style="padding:1pt 10.0pt;">566</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.4.5" style="padding:1pt 10.0pt;">YouMakeup <cite class="ltx_cite ltx_citemacro_citep">(Wang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib57" title="">2019</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.4.6" style="padding:1pt 10.0pt;">1801</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.5">
<td class="ltx_td ltx_align_left" id="A1.T9.2.5.1" style="padding:1pt 10.0pt;">VideoIC <cite class="ltx_cite ltx_citemacro_citep">(Wang et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib56" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.5.2" style="padding:1pt 10.0pt;">2649</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.5.3" style="padding:1pt 10.0pt;">Movie101 <cite class="ltx_cite ltx_citemacro_citep">(Yue et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib72" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.5.4" style="padding:1pt 10.0pt;">202</td>
<td class="ltx_td ltx_align_left" id="A1.T9.2.5.5" style="padding:1pt 10.0pt;">HiREST <cite class="ltx_cite ltx_citemacro_citep">(Zala et al<span class="ltx_text">.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2504.17343v1#bib.bib73" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="A1.T9.2.5.6" style="padding:1pt 10.0pt;">469</td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.6">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" colspan="5" id="A1.T9.2.6.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.6.1.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A1.T9.2.6.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.2.6.2.1">11,043</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a performance comparison of various models on the StreamingBench benchmark, focusing on real-time visual understanding tasks.  The benchmark includes tasks such as object perception, causal reasoning, clip summarization, attribute perception, event understanding, text-rich understanding, prospective reasoning, spatial understanding, action perception, and counting.  The table shows each model's accuracy on each task, along with the number of frames and the percentage of video tokens remaining after any token dropping that was performed.  A 100% value in the 'VTokens(%)' column indicates that no token dropping was done, while a value like ↓82.6% signifies a reduction of 82.6% in the number of video tokens used.  The best performance for each metric is shown in bold, and the second-best performance is underlined. This allows for a direct comparison of different models' efficiency and accuracy in processing streaming video data for real-time comprehension.
> <details>
> <summary>read the caption</summary>
> Table 1. Performance comparison on StreamingBench focusing on Real-Time Visual Understanding tasks. Real-Time Visual Understanding encompasses Object Perception (OP), Causal Reasoning (CR), Clips Summarization (CS), Attribute Perception (ATP), Event Understanding (EU), Text-Rich Understanding (TR), Prospective Reasoning (PR), Spatial Understanding (SU), Action Perception (ACP), and Counting (CT). “VTokens(%)” represents the percentage of video tokens remaining after dropping, where 100%percent100100\%100 % indicates no dropping, and ↓82.6%↓absentpercent82.6\downarrow 82.6\%↓ 82.6 % signifies an 82.6% reduction in video tokens. The bold values indicate the best performance and underlined values indicate the second best.
> </details>





### In-depth insights


#### Token Drop DTD
The paper introduces a **Differential Token Drop (DTD)** module to address visual redundancy in streaming videos. Inspired by Change Blindness, it selectively preserves significant temporal changes while filtering out static content.  DTD reduces video tokens by **82.8%** on StreamingBench, maintaining 98% accuracy, implying over 80% of visual content is naturally redundant.  DTD leverages both pixel and feature-level redundancy calculation, followed by position-aware token dropping using Multi-modal Rotary Position Embedding **(M-ROPE)** to preserve spatial-temporal relationships. The core idea is to mimic human visual perception which doesn't capture every detail, DTD significantly improves efficiency without sacrificing performance by dropping redundant visual elements during the video processing.

#### Online VideoLLM
The concept of an 'Online VideoLLM' represents a significant leap in video understanding, shifting from processing entire videos offline to handling continuous streams in real-time. **Efficiency is paramount**, demanding solutions that circumvent the computational overhead of dense, redundant frames. **Adaptability** is also crucial, allowing the system to respond proactively by leveraging naturally occurring transitions in video scenes, rather than relying on static analysis. An effective Online VideoLLM must address both the challenge of processing long, redundant video contexts and the demand for real-time interaction and proactive responsiveness. **Novel architectures** and training methodologies are needed to fully realize the potential of online video understanding.

#### Token Redundancy
**Token redundancy** in video streams is a significant challenge, particularly in online streaming applications, where real-time processing is crucial. The paper introduces Differential Token Drop (DTD) to efficiently reduce this redundancy. DTD leverages the phenomenon of visual Change Blindness, selectively preserving meaningful temporal changes and filtering out static content. Experimental results demonstrate an impressive **82.8% reduction** in video tokens while maintaining over **98% of the original accuracy**. This highlights that a substantial portion of visual data in streaming videos is inherently redundant without requiring language guidance. By tackling redundancy at the visual level, DTD enhances the efficiency of video processing, paving the way for faster response times and more effective utilization of computational resources in video-based systems.

#### Online-139K Data
The dataset, TimeChat-Online-139K, seems crucial, addressing the scarcity of streaming VideoQA data. It facilitates more flexible real-time interactions, unlike transformed datasets with limited diversity. The use of long-range videos averaging 11.1 minutes ensures visually informative content. Scene-oriented dense captions, generated by GPT-4o, add depth, capturing static/dynamic elements and camera movements. By including preceding frame captions, it helps understanding of camera movements that often have contrasts between frames. It encompasses backward tracing, real-time perception, and forward active responding by the various streaming QAs, which is important for real-time interaction. **The emphasis on generating 'unanswerable' negative samples for training proactive capabilities is a key novel aspect**, enhancing the model's ability to handle future-oriented questions and trigger responses at appropriate scene transitions, as identified using low-token drop frames.

#### Proactive Respond
**Proactive responding** is a crucial aspect of streaming video understanding, enabling models to anticipate user needs and provide timely, relevant information. This capability goes beyond simply answering questions about the current or past video content; it involves predicting future events and offering insights based on anticipated developments. The ability to foresee and respond to future-oriented queries significantly enhances the user experience, making video interaction more intuitive and engaging. By monitoring video scene transitions and identifying trigger times, models can provide proactive responses that are both informative and contextually appropriate, thus highlighting the potential for intelligent and responsive video systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17343/x2.png)

> 🔼 This figure illustrates the core mechanism of TimeChat-Online, called Differential Token Dropping (DTD).  DTD efficiently processes video streams by focusing only on significant changes between consecutive frames. The process is broken down into three steps: 1) The video frames are divided into patches, which are then encoded into visual tokens. 2) The algorithm then calculates the redundancy of visually similar patches between consecutive frames. 3) Finally, temporally redundant tokens are dropped, but their spatial and temporal information is preserved. This results in a variable drop rate for each frame, which helps identify significant changes in a video scene, such as scene transitions. These transitions are then used to trigger a proactive response feature in TimeChat-Online, enabling real-time interactions.
> <details>
> <summary>read the caption</summary>
> Figure 2. The core of TimeChat-Online lies in the Differential Token Dropping (DTD) design for efficiently encoding video streams. DTD captures significant temporal changes through three steps: (a) patchifying and encoding dense video frames, (b) calculating static redundancy between temporally-consecutive and spatially-identical video tokens, (c) dropping temporally-redundant video tokens while preserving the (temporal, height, width) positions of remaining tokens. DTD dynamically eliminates visual redundancy in the temporal dimension, yielding an adaptive drop ratio for each frame. During Real-Time Interaction, frames with low drop ratios in the timeline indicate video scene transitions, triggering TimeChat-Online to achieve Proactive Responding at these scene-oriented timestamps.
> </details>



![](https://arxiv.org/html/2504.17343/x3.png)

> 🔼 This figure illustrates how video redundancy varies depending on video length within the VideoMME benchmark (Fu et al., 2024).  The x-axis represents the percentage of video tokens dropped, while the y-axis shows the accuracy.  Separate lines depict the results for short, medium, and long videos.  The plot demonstrates that longer videos exhibit significantly higher redundancy than shorter videos, allowing for a greater reduction in video tokens (higher drop ratio) without a substantial drop in accuracy. This highlights the potential for efficient video processing by exploiting naturally occurring redundancy in longer video content.
> <details>
> <summary>read the caption</summary>
> Figure 3. Video redundancy of different video length on VideoMME (Fu et al., 2024).
> </details>



![](https://arxiv.org/html/2504.17343/x4.png)

> 🔼 This figure showcases a real-world example of TimeChat-Online's proactive response capability during a streaming video question answering (Streaming VideoQA) task on the StreamingBench benchmark. A user asks, 'What specifically did the woman in red do?'  The video shows the woman performing several actions over time.  Because the question can't be fully answered using only the currently available video segment, TimeChat-Online proactively generates responses at several points in the future. These future response times (Trigger Times) are cleverly identified by analyzing the Differential Token Drop (DTD) module's output. The DTD module's output curve shows points of low token drop ratios, indicating scene changes in the video stream.  These transitions act as natural triggers for generating answers as new, relevant information becomes available.
> <details>
> <summary>read the caption</summary>
> Figure 4. Case study of TimeChat-Online on StreamingBench. When a user proposes a question “What specifically did the woman in red do?” that can also be answered by the future moments, TimeChat-Online will proactively generate responses at the future trigger time (i.e., the video scene transition timestamps), which are indicated by the frames with low token drop ratios.
> </details>



![](https://arxiv.org/html/2504.17343/x5.png)

> 🔼 This histogram displays the distribution of video lengths within the TimeChat-Online-139K dataset. The x-axis represents the duration of videos, categorized into bins (e.g., ≤6 minutes, >6 minutes, >7 minutes, and so on). The y-axis shows the count or number of videos falling into each duration bin.  The graph visually represents the prevalence of different video lengths in the dataset, highlighting the number of short, medium, and long videos included. The caption indicates that the shortest video in this dataset is 5 minutes long.
> <details>
> <summary>read the caption</summary>
> Figure 5. Distribution of video durations across the 11,043 videos in our dataset. The minimum video length in our dataset is 5 minutes.
> </details>



![](https://arxiv.org/html/2504.17343/x6.png)

> 🔼 This figure visualizes the results of applying Differential Token Drop (DTD) with feature-level token dropping to a video from the StreamingBench dataset.  The left panel (a) shows the original video frames. The right panel (b) displays the drop ratio over time, indicating the proportion of tokens removed at each point in the video.  A threshold of τfeat = 0.4 was used, resulting in a 58.3% reduction in the total number of tokens.  The visualization demonstrates how DTD selectively preserves significant temporal changes while eliminating redundant visual content.
> <details>
> <summary>read the caption</summary>
> (a) Feature-level: τf⁢e⁢a⁢t=0.4,drop ratio=58.3%formulae-sequencesubscript𝜏𝑓𝑒𝑎𝑡0.4drop ratiopercent58.3\tau_{feat}=0.4,\text{drop ratio}=58.3\%italic_τ start_POSTSUBSCRIPT italic_f italic_e italic_a italic_t end_POSTSUBSCRIPT = 0.4 , drop ratio = 58.3 %
> </details>



![](https://arxiv.org/html/2504.17343/x7.png)

> 🔼 Figure 7(b) visualizes the results of pixel-level token dropping with a threshold (τpixel) of 0.1.  This method focuses on eliminating redundant visual tokens by comparing the pixel-level similarity between consecutive patches within video frames. If the L1 distance between corresponding patches is below the set threshold, the latter patch is deemed redundant and dropped. The image displays the result of this process, highlighting the preserved and dropped tokens to illustrate how the approach selectively removes redundant visual information while maintaining crucial temporal changes.
> <details>
> <summary>read the caption</summary>
> (b) Pixel-level: τp⁢i⁢x⁢e⁢l=0.1subscript𝜏𝑝𝑖𝑥𝑒𝑙0.1\tau_{pixel}=0.1italic_τ start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT = 0.1
> </details>



![](https://arxiv.org/html/2504.17343/x8.png)

> 🔼 This figure visualizes the effects of both feature-level and pixel-level token dropping techniques on video case 752 from the StreamingBench dataset.  It provides a visual comparison of how each method handles redundancy in video frames, illustrating which parts of the video are deemed important enough to retain. Subfigure (a) displays the results of feature-level token dropping, while subfigure (b) shows the results of pixel-level token dropping. The differences highlight the varying approaches to identifying and preserving salient information in video streams.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualization of (a) Feature-level token dropping and (b) Pixel-level token dropping for the video case 752 from StreamingBench.
> </details>



![](https://arxiv.org/html/2504.17343/x9.png)

> 🔼 This figure visualizes the results of applying Differential Token Drop (DTD) with different threshold parameters.  The left-hand side shows the original video frames. The right-hand side shows the frames after applying DTD.  Specifically, (a) demonstrates feature-level DTD, and (b) demonstrates pixel-level DTD.  The drop ratio represents the percentage of video tokens that have been dropped. The results highlight the effectiveness of DTD in reducing visual redundancy and show that feature-level DTD is generally more effective at eliminating visual redundancy compared to pixel-level DTD.
> <details>
> <summary>read the caption</summary>
> (a) Feature-level: τf⁢e⁢a⁢t=0.4,drop ratio=89.5%formulae-sequencesubscript𝜏𝑓𝑒𝑎𝑡0.4drop ratiopercent89.5\tau_{feat}=0.4,\text{drop ratio}=89.5\%italic_τ start_POSTSUBSCRIPT italic_f italic_e italic_a italic_t end_POSTSUBSCRIPT = 0.4 , drop ratio = 89.5 %
> </details>



![](https://arxiv.org/html/2504.17343/x10.png)

> 🔼 This figure shows the results of pixel-level token dropping with a threshold (τpixel) of 0.1.  It visually demonstrates how the algorithm selectively removes redundant visual information from a video frame by comparing pixel values between temporally consecutive patches. Patches with pixel-level similarity above the threshold are considered redundant and dropped, while others are preserved. This process effectively reduces the number of video tokens while preserving significant visual content. The figure likely contains a visual representation of the frame before and after this token dropping process, highlighting the removed and retained patches. 
> <details>
> <summary>read the caption</summary>
> (b) Pixel-level: τp⁢i⁢x⁢e⁢l=0.1subscript𝜏𝑝𝑖𝑥𝑒𝑙0.1\tau_{pixel}=0.1italic_τ start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT = 0.1
> </details>



![](https://arxiv.org/html/2504.17343/x11.png)

> 🔼 This figure shows a comparison of feature-level and pixel-level token dropping methods applied to video case 671 from the StreamingBench dataset.  The visualization helps to understand how these different token dropping strategies affect video encoding. (a) shows feature-level token dropping, where the model retains visually significant features across consecutive frames. (b) demonstrates pixel-level token dropping, which focuses on preserving pixel-level similarity between frames. By comparing the results of both methods, one can better appreciate the impact of different approaches to visual redundancy reduction in video streaming applications.
> <details>
> <summary>read the caption</summary>
> Figure 7. Visualization of (a) Feature-level token dropping and (b) Pixel-level token dropping for the video case 671 from StreamingBench.
> </details>



![](https://arxiv.org/html/2504.17343/x12.png)

> 🔼 This figure visualizes how video scene transitions are detected using the Differential Token Drop (DTD) method. The top panel (a) shows a specific scene transition point in the video and highlights it as a trigger time.  The trigger time is identified by a low drop ratio in the DTD's drop ratio curve. This signifies a significant visual change between consecutive frames, indicating a change of scene. The bottom panel (b) displays the drop ratio curve throughout the timeline of the video, clearly showcasing the location of trigger times (where the curve dips) corresponding to scene transitions.
> <details>
> <summary>read the caption</summary>
> (a) Scene Transition Point w/ Trigger Time
> </details>



![](https://arxiv.org/html/2504.17343/x13.png)

> 🔼 This figure shows the drop ratio over time. The drop ratio represents the percentage of video tokens dropped by the Differential Token Drop (DTD) module at each time step.  The x-axis represents the time, and the y-axis represents the drop ratio. The curve visually depicts how the DTD module adapts to the visual redundancy in the video stream by dynamically adjusting the number of tokens dropped.  High points on the curve indicate a larger proportion of tokens being dropped (high redundancy), while low points suggest that fewer tokens are being dropped (low redundancy). This visualization is essential for understanding how the DTD module's performance and efficiency vary over time and its effectiveness at reducing redundant information in streaming video.
> <details>
> <summary>read the caption</summary>
> (b) Drop Ratio - Timeline Curve
> </details>



![](https://arxiv.org/html/2504.17343/x14.png)

> 🔼 This figure visualizes how the TimeChat-Online model identifies scene transitions in a video stream. The key is the 'drop ratio', which represents the percentage of video tokens removed by the Differential Token Drop (DTD) module at each frame.  A low drop ratio indicates a significant change in visual content, suggesting a scene transition.  The figure plots the drop ratio over time, highlighting frames (colored) where the drop ratio falls below a certain threshold (here, 0.6), indicating these are the detected scene transitions. The model uses a temporal patch size of 2 which helps the system to compare consecutive frames effectively. The figure shows that TimeChat-Online can accurately detect these transition points which are used to trigger proactive responses.
> <details>
> <summary>read the caption</summary>
> Figure 8. Visualization of monitored Trigger Time via drop ratio curve. The colored highlighted frames correspond to trigger times that reveal video scene transitions. Our model utilizes a temporal patch size of 2.
> </details>



![](https://arxiv.org/html/2504.17343/x15.png)

> 🔼 This figure visualizes how video scene transitions are identified and used for proactive responding in the TimeChat-Online system.  The top panel (a) shows individual frames highlighted based on whether they were identified as a scene transition point. This is determined by the DTD module's drop ratio, with lower drop ratios indicating scene transitions. The bottom panel (b) shows the drop ratio over time, which visually illustrates where the significant temporal changes in the video occur and trigger proactive responses.  The colored highlighted frames correspond to trigger times that reveal video scene transitions.
> <details>
> <summary>read the caption</summary>
> (a) Scene Transition Point w/ Trigger Time
> </details>



![](https://arxiv.org/html/2504.17343/x16.png)

> 🔼 This figure shows the drop ratio over time. The drop ratio represents the percentage of video tokens dropped by the Differential Token Drop (DTD) module at each time step.  The x-axis represents the time, and the y-axis represents the drop ratio.  The curve visually shows how the DTD module dynamically adjusts the number of tokens dropped based on the visual content of the video.  Low points on the curve indicate significant visual changes, while high points indicate periods of visual redundancy.
> <details>
> <summary>read the caption</summary>
> (b) Drop Ratio - Timeline Curve
> </details>



![](https://arxiv.org/html/2504.17343/x17.png)

> 🔼 Figure 9 visualizes how the TimeChat-Online model identifies scene transitions in streaming videos.  The x-axis represents the time progression of the video, while the y-axis shows the ratio of visual tokens dropped by the Differential Token Dropping (DTD) module.  A lower drop ratio indicates a more significant change in the video's visual content—a scene transition. The colored, highlighted frames along the x-axis directly correspond to these moments of low drop ratio, visually highlighting the model's ability to detect scene transitions using the DTD module.  The graph's smooth curve further emphasizes the continuous monitoring capability of the DTD module in identifying meaningful changes.
> <details>
> <summary>read the caption</summary>
> Figure 9. Visualization of monitored Trigger Time via drop ratio curve. The colored highlighted frames correspond to trigger times that reveal video scene transitions. Our model utilizes a temporal patch size of 2.
> </details>



![](https://arxiv.org/html/2504.17343/x18.png)

> 🔼 This figure showcases a case study from the StreamingBench dataset, illustrating TimeChat-Online's proactive response capability.  A user asks, 'What specifically did the woman in red do?'  The video shows the woman performing several actions over time.  Because the question can't be fully answered using only the currently available information, TimeChat-Online uses the drop ratio curve to identify future 'trigger times,' which signify transitions between video scenes. These transitions are indicated by valleys in the drop ratio curve, where fewer tokens are dropped. The model then generates answers at these trigger times, adding the newly available visual information. The figure visually depicts the frames where these trigger times occur and provides the corresponding answers, thus demonstrating the system's ability to generate answers based on the dynamic flow of information in a streaming video.
> <details>
> <summary>read the caption</summary>
> Figure 10. Case study of TimeChat-Online on StreamingBench with drop ratio curve. When a user proposes a question “What specifically did the woman in red do?” that can also be answered by the future moments, TimeChat-Online will proactively generate responses at the future trigger time (i.e., the video scene transition timestamps), which are indicated by the frames with low token drop ratios.
> </details>



![](https://arxiv.org/html/2504.17343/x19.png)

> 🔼 This figure visualizes the results of pixel-level token dropping with a threshold (τpixel) of 0.01. It showcases how the model selectively removes redundant visual tokens in video frames based on pixel-level similarity.  The image likely shows examples of video frames before and after the token dropping process, highlighting the reduction in visual information while preserving essential details.  The specific content shown depends on the visuals in the original figure; it could include images with marked redundant patches or tokens to illustrate the effectiveness of the method.
> <details>
> <summary>read the caption</summary>
> (a) Pixel-level: τp⁢i⁢x⁢e⁢l=0.01subscript𝜏𝑝𝑖𝑥𝑒𝑙0.01\tau_{pixel}=0.01italic_τ start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT = 0.01
> </details>



![](https://arxiv.org/html/2504.17343/x20.png)

> 🔼 The figure visualizes the results of pixel-level token dropping with a threshold (τpixel) set to 0.05.  It shows which visual tokens are retained and which are dropped based on the similarity of pixel values between consecutive frames. This method aims to remove redundant information by preserving only tokens representing significant visual changes.  The image likely displays a comparison between the original video frames and the frames after the application of the pixel-level token dropping algorithm, highlighting the reduced number of tokens while hopefully maintaining crucial visual information.
> <details>
> <summary>read the caption</summary>
> (b) Pixel-level: τp⁢i⁢x⁢e⁢l=0.05subscript𝜏𝑝𝑖𝑥𝑒𝑙0.05\tau_{pixel}=0.05italic_τ start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT = 0.05
> </details>



![](https://arxiv.org/html/2504.17343/x21.png)

> 🔼 This figure displays the results of pixel-level token dropping with a threshold of τpixel=0.1.  It visually demonstrates how the model selectively removes redundant visual tokens from a video frame by comparing the pixel-level similarity between consecutive frames.  Pixels with low similarity (below the threshold) are preserved, while those with high similarity (above the threshold) are dropped, effectively reducing redundancy without losing essential visual information. The image showcases a sample video frame before and after the pixel-level token dropping process, highlighting the tokens retained and the ones removed.
> <details>
> <summary>read the caption</summary>
> (c) Pixel-level: τp⁢i⁢x⁢e⁢l=0.1subscript𝜏𝑝𝑖𝑥𝑒𝑙0.1\tau_{pixel}=0.1italic_τ start_POSTSUBSCRIPT italic_p italic_i italic_x italic_e italic_l end_POSTSUBSCRIPT = 0.1
> </details>



![](https://arxiv.org/html/2504.17343/x22.png)

> 🔼 This figure shows a visualization of the feature-level token dropping method used in the paper.  Different threshold values (τfeat) are used to control how many tokens are dropped, simulating the filtering of less important visual information. The figure demonstrates that by adjusting τfeat, the model can achieve different levels of token reduction, effectively managing visual redundancy in the video.
> <details>
> <summary>read the caption</summary>
> (d) Feature-level: τf⁢e⁢a⁢t=0.7subscript𝜏𝑓𝑒𝑎𝑡0.7\tau_{feat}=0.7italic_τ start_POSTSUBSCRIPT italic_f italic_e italic_a italic_t end_POSTSUBSCRIPT = 0.7
> </details>



![](https://arxiv.org/html/2504.17343/x23.png)

> 🔼 This figure is a visualization of the Differential Token Dropping (DTD) method's feature-level token dropping. Specifically, it displays how this technique operates when the feature-level redundancy threshold (τfeat) is set to 0.6.  The image visually represents a set of video frames (or patches) where certain tokens have been dropped, as indicated by the visual representation (likely grayscale or other visual cue).  The dropped tokens are those that are considered redundant according to the algorithm at this threshold. This visualization helps illustrate the effectiveness of the DTD in reducing the number of video tokens while preserving meaningful visual information.
> <details>
> <summary>read the caption</summary>
> (e) Feature-level: τf⁢e⁢a⁢t=0.6subscript𝜏𝑓𝑒𝑎𝑡0.6\tau_{feat}=0.6italic_τ start_POSTSUBSCRIPT italic_f italic_e italic_a italic_t end_POSTSUBSCRIPT = 0.6
> </details>



![](https://arxiv.org/html/2504.17343/x24.png)

> 🔼 This figure visualizes the results of applying feature-level Differential Token Drop (DTD) with a threshold (τ_feat) of 0.5.  It showcases how the algorithm selectively removes redundant visual tokens from a video sequence while preserving important temporal changes. The visualization likely displays a sequence of video frames before and after applying the DTD, allowing comparison of the original visual data and the reduced representation. It demonstrates the effectiveness of DTD in reducing data volume for efficient video processing while maintaining essential visual information.
> <details>
> <summary>read the caption</summary>
> (f) Feature-level: τf⁢e⁢a⁢t=0.5subscript𝜏𝑓𝑒𝑎𝑡0.5\tau_{feat}=0.5italic_τ start_POSTSUBSCRIPT italic_f italic_e italic_a italic_t end_POSTSUBSCRIPT = 0.5
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17343/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17343/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}