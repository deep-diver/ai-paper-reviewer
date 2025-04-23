---
title: "FocusedAD: Character-centric Movie Audio Description"
summary: "FocusedAD generates character-centric movie audio descriptions, enhancing accessibility for visually impaired audiences."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12157 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiaojun Ye et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12157" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12157" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12157/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Movie Audio Description (AD) assists blind and visually impaired (BVI) audiences. AD demands plot-relevant narration, posing unique challenges in movie understanding. Existing models employ image encoders and generate dense video captions, resulting in redundant object-centric descriptions. Existing models also struggle to identify characters effectively, resulting in semantic ambiguity. To address these issues, the paper proposes a new framework, FocusedAD. 



FocusedAD delivers character-centric movie audio descriptions. It includes a Character Perception Module (CPM) for tracking character regions and linking them to names. The Dynamic Prior Module (DPM) injects contextual cues from prior ADs and subtitles. The Focused Caption Module (FCM) generates narrations enriched with plot-relevant details and named characters. The framework achieves state-of-the-art performance on multiple benchmarks and introduces an automated pipeline for building character query banks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FocusedAD framework delivers character-centric movie audio descriptions by identifying active main characters and focusing on storyline-relevant regions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Character Perception Module (CPM) tracks character regions and links them to names. Dynamic Prior Module (DPM) injects contextual cues from prior ADs and subtitles. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art performance on multiple benchmarks, including strong zero-shot results on MAD-eval-Named and Cinepile-AD dataset. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach that **enhances audio descriptions for movies, focusing on character-centric narratives**. This is important for making videos more accessible, especially for BVI audiences, and **advances research in automated video understanding**. It addresses key limitations of existing models and **opens new avenues for research in multi-modal learning**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12157/x1.png)

> 🔼 This figure illustrates the architecture of FocusedAD, a novel model for generating character-centric movie audio descriptions.  The model focuses on the appearances and actions of the main characters within specific regions of the movie clip.  Colored bounding boxes highlight the characters' locations in each frame. The overall process demonstrates how the system incorporates narrative context to generate concise and informative descriptions, addressing the challenges of creating effective audio descriptions for visually impaired audiences.
> <details>
> <summary>read the caption</summary>
> Figure 1. FocusedAD: We propose an automated character-centric AD generation model that emphasizes main character regions’ appearances and actions while incorporating narrative context. Characters appearing in the movie clip are annotated with colored bounding boxes.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.1"><span class="ltx_text" id="S5.T1.1.1.1.1.1" style="font-size:90%;">Exp.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.2"><span class="ltx_text" id="S5.T1.1.1.1.2.1" style="font-size:90%;">TP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.3"><span class="ltx_text" id="S5.T1.1.1.1.3.1" style="font-size:90%;">character bank</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.4"><span class="ltx_text" id="S5.T1.1.1.1.4.1" style="font-size:90%;">SP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.5"><span class="ltx_text" id="S5.T1.1.1.1.5.1" style="font-size:90%;">Region</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.6"><span class="ltx_text" id="S5.T1.1.1.1.6.1" style="font-size:90%;">S</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.7"><span class="ltx_text" id="S5.T1.1.1.1.7.1" style="font-size:90%;">M</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1.8"><span class="ltx_text" id="S5.T1.1.1.1.8.1" style="font-size:90%;">BertS</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.1"><span class="ltx_text" id="S5.T1.1.2.1.1.1" style="font-size:90%;">A1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.2"><span class="ltx_text" id="S5.T1.1.2.1.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.3"><span class="ltx_text" id="S5.T1.1.2.1.3.1" style="font-size:90%;">best query</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.4"><span class="ltx_text" id="S5.T1.1.2.1.4.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.5"><span class="ltx_text" id="S5.T1.1.2.1.5.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.6"><span class="ltx_text" id="S5.T1.1.2.1.6.1" style="font-size:90%;">5.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.7"><span class="ltx_text" id="S5.T1.1.2.1.7.1" style="font-size:90%;">7.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.8"><span class="ltx_text" id="S5.T1.1.2.1.8.1" style="font-size:90%;">54.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.2">
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.1"><span class="ltx_text" id="S5.T1.1.3.2.1.1" style="font-size:90%;">A2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.2"><span class="ltx_text" id="S5.T1.1.3.2.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.3"><span class="ltx_text" id="S5.T1.1.3.2.3.1" style="font-size:90%;">best query</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.4"><span class="ltx_text" id="S5.T1.1.3.2.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.5"><span class="ltx_text" id="S5.T1.1.3.2.5.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.6"><span class="ltx_text" id="S5.T1.1.3.2.6.1" style="font-size:90%;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.7"><span class="ltx_text" id="S5.T1.1.3.2.7.1" style="font-size:90%;">7.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.8"><span class="ltx_text" id="S5.T1.1.3.2.8.1" style="font-size:90%;">55.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.1"><span class="ltx_text" id="S5.T1.1.4.3.1.1" style="font-size:90%;">B1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.2"><span class="ltx_text" id="S5.T1.1.4.3.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.3"><span class="ltx_text" id="S5.T1.1.4.3.3.1" style="font-size:90%;">none</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.4"><span class="ltx_text" id="S5.T1.1.4.3.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.5"><span class="ltx_text" id="S5.T1.1.4.3.5.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.6"><span class="ltx_text" id="S5.T1.1.4.3.6.1" style="font-size:90%;">2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.7"><span class="ltx_text" id="S5.T1.1.4.3.7.1" style="font-size:90%;">6.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.4.3.8"><span class="ltx_text" id="S5.T1.1.4.3.8.1" style="font-size:90%;">54.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.4">
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.1"><span class="ltx_text" id="S5.T1.1.5.4.1.1" style="font-size:90%;">B2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.2"><span class="ltx_text" id="S5.T1.1.5.4.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.3"><span class="ltx_text" id="S5.T1.1.5.4.3.1" style="font-size:90%;">actor</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.4"><span class="ltx_text" id="S5.T1.1.5.4.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.5"><span class="ltx_text" id="S5.T1.1.5.4.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.6"><span class="ltx_text" id="S5.T1.1.5.4.6.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.7"><span class="ltx_text" id="S5.T1.1.5.4.7.1" style="font-size:90%;">7.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.5.4.8"><span class="ltx_text" id="S5.T1.1.5.4.8.1" style="font-size:90%;">54.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.1"><span class="ltx_text" id="S5.T1.1.6.5.1.1" style="font-size:90%;">C1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.2"><span class="ltx_text" id="S5.T1.1.6.5.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.3"><span class="ltx_text" id="S5.T1.1.6.5.3.1" style="font-size:90%;">best query</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.4"><span class="ltx_text" id="S5.T1.1.6.5.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.5"><span class="ltx_text" id="S5.T1.1.6.5.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.6"><span class="ltx_text" id="S5.T1.1.6.5.6.1" style="font-size:90%;">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.7"><span class="ltx_text" id="S5.T1.1.6.5.7.1" style="font-size:90%;">7.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.6.5.8"><span class="ltx_text" id="S5.T1.1.6.5.8.1" style="font-size:90%;">55.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.1"><span class="ltx_text" id="S5.T1.1.7.6.1.1" style="font-size:90%;">C2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.2"><span class="ltx_text" id="S5.T1.1.7.6.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.3"><span class="ltx_text" id="S5.T1.1.7.6.3.1" style="font-size:90%;">best query</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.4"><span class="ltx_text" id="S5.T1.1.7.6.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.5"><span class="ltx_text" id="S5.T1.1.7.6.5.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.6"><span class="ltx_text" id="S5.T1.1.7.6.6.1" style="font-size:90%;">7.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.7"><span class="ltx_text" id="S5.T1.1.7.6.7.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.7.6.8"><span class="ltx_text" id="S5.T1.1.7.6.8.1" style="font-size:90%;">57.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This ablation study analyzes the impact of different components of the FocusedAD model on the MAD-eval-Named dataset.  The results are evaluated using three metrics: SPICE (S), METEOR (M), and BertScore (BertS), which assess the quality and coherence of the generated audio descriptions.  The table shows the performance with various combinations of key features, including character query methods (best query vs. actor portraits), the use of text priors (TP), the incorporation of a soft prompt (SP), and the inclusion of character region information.  Each row represents a different experimental setup, allowing for a comparison of the model's performance under various conditions.
> <details>
> <summary>read the caption</summary>
> Table 1. Ablation studies for AD generation on the MAD-eval-Named. Performance is reported in terms of SPICE (S), METEOR (M) and BertScore (BertS). SP means soft prompt. TP means text prior.
> </details>





### In-depth insights


#### AD Challenges
**AD challenges** involve multiple facets like limited datasets, focus on salient content and character identification. Existing datasets often lack sufficient character information, high annotation cost. Narrations need plot relevance, explicit character references to assist BVI audience. Unlike general video captioning, **AD demands conciseness**, due to the simultaneous processing of AD and original soundtracks requiring high cognitive load. The narrative should focus on appearance, actions, inter-character dynamics. **Effective character identification** across frames is crucial. Overcoming the limitations requires integrating character perception, contextual cues, and focused caption generation to deliver character-centric, plot-relevant ADs.

#### FocusedAD Model
The "FocusedAD Model" appears to be a novel framework designed for automatic movie audio description (AD), with a specific emphasis on **character-centric narration**. It aims to address the limitations of existing video captioning and AD systems by focusing on plot-relevant details and explicitly naming characters, catering to the needs of blind and visually impaired audiences. The model likely incorporates modules for character perception (identifying and tracking characters), dynamic prior injection (incorporating contextual cues from prior ADs and subtitles), and focused caption generation (creating narrations enriched with plot details and named characters). A key challenge is **accurate character identification**, especially in scenes with multiple characters and variations in appearance. To overcome this, the model introduces an automated pipeline for building character query banks. The model's performance is evaluated on benchmarks, including zero-shot results, suggesting its ability to generalize to unseen data. The focus on narrative coherence and character-centric details differentiates it from general video captioning models. The model helps the visually impaired follow the storyline.

#### CPM Insights
While the provided text does not explicitly contain a section titled "CPM Insights", we can infer insights from the "Character Perception Module" (CPM) described. The CPM likely **enhances AD generation by focusing on narratively salient regions and characters**, leading to more coherent and informative descriptions for BVI audiences. It enables **accurate character identification** even with variations in appearance by incorporating character best query bank and **reduces semantic ambiguity** which ensures that generated AD are highly relevant to the plot.

#### Dataset Pipeline
From the paper, the dataset pipeline seems meticulously crafted to address the limitations of existing Audio Description (AD) datasets. A key aspect is the automated construction of a character query bank, addressing challenges in character identification due to variations in appearance. The pipeline leverages Storyboard20K and enriches it with no-dialogue movie clips, character region annotations, and movie AD ground truths. The process involves extracting complete movie clips, cropping character-annotated regions followed by employing FaceNet, and clustering algorithms. This approach mitigates feature shifts due to discrepancies between portraits and actual movie appearances. The AD annotations are categorized into three types based on the availability of character names and visual regions. This allows for targeted training of different model capabilities, such as focused region description, contextual feature utilization, and dynamic character weighting.

#### Future Directions
While this paper makes significant strides in character-centric audio description, numerous avenues remain for future exploration. **Improving the robustness of character recognition** in challenging conditions (e.g., poor lighting, occlusions) is critical. Exploring methods to incorporate **emotional cues** from facial expressions and body language into the AD could enhance the experience. The framework could be extended to handle **more complex narrative structures**, such as flashbacks or multiple interwoven storylines, requiring more sophisticated temporal reasoning. Another direction involves **personalizing AD** based on user preferences, level of visual impairment, or cognitive abilities, creating a tailored experience. Finally, conducting **user studies** with BVI audiences to evaluate the effectiveness and usability of automatically generated AD is essential for real-world impact. It is also vital to enhance the model's ability to **differentiate between similar-looking characters** and maintain consistent character identification throughout longer videos. Future work also include investigating methods to automatically **determine the appropriate level of detail** in AD, balancing conciseness with informativeness to avoid overwhelming listeners. Addressing these issues would further improve the accessibility and enjoyment of movies for BVI audiences.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12157/x2.png)

> 🔼 FocusedAD processes movie clips to generate character-centric audio descriptions.  First, it creates a 'character best query bank' by clustering character images.  The Character Perception Module then identifies main characters in key frames and tracks their presence across the entire clip. The Dynamic Prior Module uses soft prompts to incorporate contextual information from previous audio descriptions and subtitles. Finally, the Focused Caption Module combines scene-level, character-level tokens, and soft prompts to produce the final narration.
> <details>
> <summary>read the caption</summary>
> Figure 2. Overview of FocusedAD: FocusedAD takes movie clips as input and captures the character best query bank through clustering. The Character Perception Module identifies main characters in key frames and bi-directionally propagates character regions across the entire key frame sequence. Then, through the Dynamic Prior Module, it dynamically integrates visual and text priors using soft prompts. Finally, the Focused Caption Module takes scene-level tokens, character-level tokens, and soft prompts as input to generate character-centric audio descriptions.
> </details>



![](https://arxiv.org/html/2504.12157/x3.png)

> 🔼 The Character Perception Module (CPM) processes video frames sequentially.  For each key frame, it identifies main characters using face detection and a character query bank. These detected regions are then propagated bidirectionally through the sequence, refining the character localization across time. Each frame's features are integrated with contextual information from previous frames (stored in a memory bank), improving the accuracy of character identification. Finally, the refined character region predictions and key frame embeddings are saved in the memory bank for use by subsequent modules.
> <details>
> <summary>read the caption</summary>
> Figure 3. Character Perception Module traverses the key frame sequence, detecting main characters in any frame and obtaining their segmented regions. Videos are processed in a streaming fashion, where each frame cross-attends to the main character memories from context frames. Finally, both the region prediction and key frame embeddings are stored into memory bank.
> </details>



![](https://arxiv.org/html/2504.12157/x4.png)

> 🔼 Figure 4 illustrates the mechanism by which contextual information (text and visual priors) is incorporated into the Focused Caption Module.  The figure shows an instruction template which includes placeholders for the previous audio descriptions and subtitles (Text Prior) as well as the detected character bounding boxes (Visual Prior).  A trainable 'Soft Prompt' is also included, acting as a flexible weighting mechanism to adjust the influence of the prior information.  This allows the model to dynamically adapt to varying scene complexities and character counts.
> <details>
> <summary>read the caption</summary>
> Figure 4. Instruction template with soft prompt. We use a well-designed instruction template with trainable soft prompts to inject the text prior and visual prior into Focused Caption Module.
> </details>



![](https://arxiv.org/html/2504.12157/x5.png)

> 🔼 Figure 5 shows examples from the Storyboard-v2 dataset.  This dataset is constructed for training a movie audio description (AD) model. Each sample in the dataset consists of three key parts: (i) a movie clip, which is a short segment of a movie; (ii) character regions, which are bounding boxes identifying the locations of the main characters within each frame of the movie clip; and (iii) movie audio description ground truth, which is a human-written, accurate textual description of the events occurring in the movie clip, focusing on the actions and interactions of the characters. These three components enable the training of a model to generate accurate and contextually relevant ADs.
> <details>
> <summary>read the caption</summary>
> Figure 5. Samples of Storyboard-v2. Our dataset involves three main part, i.e., (i)movie clips, (ii) character regions, (iii) movie audio description ground-truth
> </details>



![](https://arxiv.org/html/2504.12157/x6.png)

> 🔼 Figure 6 visualizes the results of a clustering algorithm used to determine the optimal 'best query' representations for each character in the movie *Harry Potter and the Deathly Hallows*.  The algorithm aims to generate a compact representation of each character's visual appearance across different scenes and lighting conditions, improving the accuracy of character recognition in the later stages of the video audio description (AD) generation pipeline. Each point in the graph represents a cropped image of a character's face.  Points of the same color are grouped together; the center of each group represents the 'best query'. This process minimizes the impact of variations in appearance on character identification.
> <details>
> <summary>read the caption</summary>
> Figure 6. The clustering results for obtaining the best query from the movie Harry Potter and the Deathly Hallows.
> </details>



![](https://arxiv.org/html/2504.12157/x7.png)

> 🔼 This ablation study analyzes the impact of different thresholds used in the character recognition module of the FocusedAD model.  The experiment uses the movie *Les Misérables* as it provides a representative sample of data from the MAD-eval-Named dataset.  The graph plots the performance metrics (SPICE, METEOR, BertScore) against varying threshold values, demonstrating how different thresholds affect the model's ability to identify main characters accurately. The optimal threshold balances precision and recall in character identification and ultimately improves the quality of the generated audio descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 7. Ablation study on the film Les Misérables to evaluate changes in FocusedAD indicators under varying thresholds. This film is selected for its representative nature, as its metrics closely align with the average of MAD-eval-Named.
> </details>



![](https://arxiv.org/html/2504.12157/x8.png)

> 🔼 This figure showcases qualitative examples of audio descriptions generated by the FocusedAD model.  The top two examples originate from the MAD-eval-Named dataset, while the bottom two are from Cinepile-AD.  Each example visually demonstrates how the Character Perception Module identifies and incorporates main characters' names into the generated audio description.  The displayed portrait images are those with the closest visual similarity to the 'best query' for each character, as determined by a clustering process.  However, the model itself uses the actual 'best query' features (rather than the portrait images) as input for its generation process. This highlights the model's ability to accurately identify and use main characters' features for improved narrative coherence.
> <details>
> <summary>read the caption</summary>
> Figure 8. Qualitative results of our method. The top two movie clips demos are from MAD-eval-Named and the bottom two movie clips demos are from Cinepile-AD. The Character Perception Module can recognize active main characters and feed their names into the AD generation pipeline. For visualization purposes, we display the portrait images of characters that have the closest distance to the best query, but the model actually utilizes the best query features as input.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12157/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12157/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}