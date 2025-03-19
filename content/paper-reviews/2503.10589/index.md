---
title: "Long Context Tuning for Video Generation"
summary: "LCT: Fine-tunes single-shot video diffusion models for coherent multi-shot video generation without extra parameters!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 The Chinese University of Hong Kong",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10589 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuwei Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10589" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10589" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10589/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advances in video generation can produce realistic single-shot videos, but real-world videos require multi-shot scenes with consistency across shots. There is a gap between current single-shot video capabilities and real video content production demands. Bridging this gap necessitates evolving from single-shot synthesis to scene-level generation, where a scene is a series of coherent single-shot videos. This requires consistency in visual appearance and temporal dynamics to ensure a coherent narration flow. Current solutions struggle with both visual and temporal coherence across shots. 



To solve the problem, the paper introduces **Long Context Tuning (LCT), a training paradigm that expands the context window of pre-trained single-shot video diffusion models to learn scene-level consistency directly from data.** LCT expands full attention mechanisms to encompass all shots within a scene, incorporating interleaved 3D position embedding and an asynchronous noise strategy. This enables both joint and auto-regressive shot generation without additional parameters. The method demonstrated single-shot models after LCT can produce coherent multi-shot scenes and exhibit compositional generation and interactive shot extension.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Long Context Tuning (LCT) expands the context window of pre-trained single-shot video diffusion models to learn scene-level consistency directly from data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LCT enables both joint and auto-regressive shot generation without additional parameters by expanding full attention mechanisms from individual shots to encompass all shots within a scene. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Models with bidirectional attention after LCT can further be fine-tuned with context-causal attention, facilitating auto-regressive generation with efficient KV-cache. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **addresses a critical gap in video generation by enabling the creation of longer, coherent, multi-shot scenes.** LCT offers a practical way to extend existing single-shot models, paving the way for more complex and realistic video content creation. The emergent capabilities demonstrated by LCT, such as compositional generation and shot extension, **open new avenues for interactive video editing and personalized content creation.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.10589/x1.png)

> 🔼 This figure demonstrates the capabilities of Long Context Tuning (LCT), a method for enhancing single-shot video diffusion models to generate multi-shot videos with scene-level consistency. The top example showcases scene-level video generation suitable for short film production. The figure also illustrates three additional capabilities enabled by LCT: interactive multi-shot direction (allowing for modifications during generation), single-shot extension (extending a single-shot video), and zero-shot compositional generation (creating videos by combining different character identities and environmental contexts).  Note that the model was not explicitly trained for these tasks, demonstrating emergent capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We propose Long Context Tuning (LCT) to expand the context window of pre-trained single-shot video diffusion models. A direct application of LCT is scene-level video generation for short film production, as shown in the top example. We also show several emerging capabilities offered by LCT, such as interactive multi-shot direction and single shot extension, as well as zero-shot compositional generation, despite the model having never been trained on such tasks. We recommend referring to our Project Page for better visualization.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.5.6.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.5.5.6.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.5.5.6.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.5.5.6.1.2.1">Visual</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.6.1.3"><span class="ltx_text ltx_font_italic" id="S4.T1.5.5.6.1.3.1">Temporal</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.5.5.6.1.4"><span class="ltx_text ltx_font_italic" id="S4.T1.5.5.6.1.4.1">Semantic</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.1.1">Aesthetic<sub class="ltx_sub" id="S4.T1.1.1.1.1.1">↑</sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.2.2">Quality<sub class="ltx_sub" id="S4.T1.2.2.2.2.1">↑</sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.3.3">Consistency (avg.)<sub class="ltx_sub" id="S4.T1.3.3.3.3.1">↑</sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.4.4.4.4">Text<sub class="ltx_sub" id="S4.T1.4.4.4.4.1">↑</sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.5.5">User Study<sub class="ltx_sub" id="S4.T1.5.5.5.5.1">↑</sub>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.5.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.7.1.1">VideoStudio <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10589v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.7.1.2.1">61.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.1.3"><span class="ltx_text ltx_ulem_uline" id="S4.T1.5.5.7.1.3.1">73.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.1.4">95.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.1.5"><span class="ltx_text ltx_ulem_uline" id="S4.T1.5.5.7.1.5.1">28.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.7.1.6">2.14</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.5.5.8.2.1">StoryDiffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10589v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite> + Kling <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10589v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2.2">60.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.2.3.1">74.04</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.2.4.1">96.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2.5">27.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.8.2.6"><span class="ltx_text ltx_ulem_uline" id="S4.T1.5.5.8.2.6.1">2.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.9.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.5.5.9.3.1">IC-LoRA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10589v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite> + Kling <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10589v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3.2">57.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3.3">69.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3.4"><span class="ltx_text ltx_ulem_uline" id="S4.T1.5.5.9.3.4.1">96.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3.5">27.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.9.3.6">1.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.10.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.5.5.10.4.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.10.4.2"><span class="ltx_text ltx_ulem_uline" id="S4.T1.5.5.10.4.2.1">60.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.10.4.3">67.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.10.4.4">95.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.10.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.4.5.1">30.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.10.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.10.4.6.1">3.79</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative analysis of different video generation methods, comparing their performance across several aspects.  Automatic metrics assess visual and semantic quality. Additionally, average human ranking (AHR) provides a subjective evaluation. A key metric is 'Consistency (avg.),' representing the average score of subject and background consistency, which is crucial for scene coherence in video generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative Evaluations. We adopt automatic metrics and average human ranking (AHR). “Consistency (avg.)” represents the average score of subject and background consistency.
> </details>





### In-depth insights


#### Scene-Level Gen
**Scene-Level Generation** marks a significant advancement in AI-driven content creation, shifting the focus from isolated, single-shot video clips to the generation of coherent and contextually consistent multi-shot scenes. This transition addresses a key limitation of earlier video generation models, which often struggled to maintain visual and dynamic consistency across multiple shots, a crucial element in narrative storytelling. The emergence of **appearance-conditioned** and **keyframe-based methods** signals an effort to enforce cross-shot coherence, either by conditioning on visual elements such as character identity and background or by generating coherent keyframes to guide subsequent video synthesis. Despite these advancements, challenges remain in modeling complex scene-level coherence and ensuring temporal consistency across shots, highlighting the need for innovative approaches that can effectively capture and reproduce the intricate dynamics of real-world scenes.

#### Long Context Tuning
**Long Context Tuning (LCT)** focuses on expanding the contextual understanding of video generation models. This involves increasing the model's ability to maintain consistency and coherence across extended video sequences or 'scenes'. Traditional video generation models often struggle with long-range dependencies, resulting in inconsistencies in character identity, environment, and plot progression over time. LCT aims to address these limitations by enabling models to capture and utilize information from a wider temporal context. The key idea is to train the model to understand the relationships between different parts of a video sequence, allowing it to generate more realistic and coherent content. This may involve techniques such as increasing the receptive field of the model, incorporating memory mechanisms, or using attention mechanisms to focus on relevant information from the past. Effective LCT can lead to significant improvements in video quality, realism, and storytelling capabilities, paving the way for more sophisticated and engaging video content creation.

#### Causal Attention
While the term 'Causal Attention' isn't explicitly a heading, the paper discusses context-causal attention as a refinement over bidirectional attention in video generation. The essence revolves around **directionality**: cleaner history samples require less from subsequent ones, making bidirectional attention redundant. By implementing context-causal attention (bidirectional within a shot, but tokens attend only to preceding context), and fine-tuning the causal variant, allows K, V features cached from history sample generation, **eliminating repeated computation and reducing overhead**. It prioritizes past information, leading to better consistency and enabling efficient auto-regressive generation crucial for extending video sequences. This technique effectively enforces sequential dependency, thereby giving greater weight to preceding conditions, also contributing for **maintaining coherence and reducing artifacts**.

#### Emergent Capabil.
The "Emergent Capabilities" section highlights the novel functionalities that arise in the model **after** Long Context Tuning (LCT), exceeding its pre-trained capabilities. A notable example is **conditional and compositional generation**, where the model synthesizes coherent videos by combining separate identity and environment images, despite not being explicitly trained for this task. This stems from the model's learned scene-level visual relations. The model demonstrates single-shot extension, enabling **interactive shot extension** without abrupt cuts, creating seamless connections between existing and desired future content. This is facilitated by removing the '[SHOT CUT]' marker and crafting bridging prompts. Interactive generation further allows directors to shape content iteratively based on previously generated footage.

#### Context Matters
The idea of 'context matters' is crucial for video generation. Current models produce realistic, minute-long, single-shot videos. However, real-world videos have multi-shot scenes that require visual and dynamic consistency across shots. Long Context Tuning (LCT) addresses this by expanding the context window of pre-trained single-shot models to learn scene-level consistency. LCT uses full attention mechanisms, interleaved 3D position embedding, and an asynchronous noise strategy. This enables joint and auto-regressive shot generation without additional parameters. LCT can create coherent multi-shot scenes and exhibits emerging capabilities, including compositional generation and interactive shot extension. LCT paves the way for more practical visual content creation by emphasizing the need to move from single-shot synthesis to scene-level generation, where scenes are defined as a series of single-shot videos with coherent events unfolding over time. **Visual coherence** and **temporal coherence** are critical for scene-level video generation.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10589/x2.png)

> 🔼 Figure 2 shows an example of the scene-level video data used in the paper.  The figure highlights the two-tiered prompt structure used for generating videos: a global prompt that provides high-level information about characters, the setting, and the overall story; and per-shot prompts that give detailed instructions for each individual shot within the scene. This structure allows for a more nuanced control over the video generation process, ensuring consistency across shots while allowing for specific variations in each shot's content.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Scene-level Video Data Example. Global prompt contains shared elements like character, environment, and story overview, while per-shot prompt details events in each shot.
> </details>



![](https://arxiv.org/html/2503.10589/x3.png)

> 🔼 Figure 3 illustrates the architecture of the Long Context Tuning (LCT) model.  Panel (a) shows the Long-context MMDiT block, which extends the attention mechanism to encompass all text and video tokens within a scene. This allows the model to consider relationships between multiple shots simultaneously. It also incorporates independent noise levels for individual shots and uses 3D RoPE (Rotary Positional Embedding) to represent the positional information of tokens within the scene. The 3D RoPE provides a better representation of the spatial and temporal relationships between shots. Panel (b) details how the interleaved 3D RoPE coordinates are organized. At the shot level, text tokens appear before video tokens along the space diagonal, and at the scene level, shots are arranged sequentially, forming an interleaved pattern of text and video tokens. This organization helps the model understand the sequential structure of the scenes and learn the relationships between consecutive shots.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Architecture Designs. (a) Long-context MMDiT block. We expand the attention operation to all text and video tokens within a scene, and apply independent noise levels to individual shots. The interleaved 3D RoPE assigns distinct coordinates for each shot. (b) Interleaved 3D RoPE coordinates. At shot-level, text tokens precede video tokens along the space diagonal. At scene-level, tokens are arranged shot by shot, forming an interleaved “[text]-[video]-[text]-...” pattern along the space diagonal.
> </details>



![](https://arxiv.org/html/2503.10589/x4.png)

> 🔼 Figure 4 illustrates the different inference modes available for the proposed Long Context Tuning (LCT) model.  Panel (a) shows the bidirectional model, which offers two generation approaches: (a.1) joint denoising, where all shots in a scene are processed simultaneously; and (a.2) visual-conditioned generation, where some shots serve as conditions while others are generated. Panel (b) depicts the context-causal model, which uses autoregressive generation. In this mode, each shot's generation leverages information from previously generated shots, enabling a sequential, step-by-step creation of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Inference Modes. (a) Bidirectional model enables (a.1) joint or (a.2) visual-conditioned generation, while (b) context-causal model supports auto-regressive generation.
> </details>



![](https://arxiv.org/html/2503.10589/x5.png)

> 🔼 Figure 5 presents a qualitative comparison of various scene-level video generation methods.  It shows several video sequences generated by different models, illustrating the visual quality and consistency. To highlight a particular challenge of keyframe-based methods, the figure also expands upon two shots from one method, showing the 'reappearance' problem where consistency issues arise when a character is not properly captured in initial keyframes but appears later in the video sequence. The 'Ours' method's results include simplified caption prompts to help the reader better understand the generated content.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Qualitative Comparisons. We show stacked video frames synthesized by all methods, and expand two shots to illustrate the “reappearance” issue discussed in Sec. 4.1. The simplified prompts for each shot can be found in the subtitle in “Ours”.
> </details>



![](https://arxiv.org/html/2503.10589/x6.png)

> 🔼 This figure compares the background fidelity of videos generated using bidirectional and causal attention models.  The causal model, by leveraging information from previously generated frames, accurately replicates the streetlights' layout from the history condition, demonstrating superior consistency and attention to detail.
> <details>
> <summary>read the caption</summary>
> Figure 6: Fidelity to History Condition. The video background generated by the causal model exhibits superior fidelity to the history condition, as evidenced by the street lights’ layout.
> </details>



![](https://arxiv.org/html/2503.10589/x7.png)

> 🔼 This figure shows how the choice of conditioning timestep in the autoregressive inference method affects the quality of the generated video.  A smaller timestep (closer to 0) uses cleaner history samples as conditions which leads to better fidelity to the original condition. However, using a very small timestep can lead to error accumulation, where errors from earlier frames are propagated to later frames. A larger timestep results in some loss of fidelity to the initial conditions, but helps mitigate the error accumulation problem. The figure illustrates this trade-off by showing the effect of different timesteps (500 and 900) on the fidelity of the video background compared to the original condition.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effects of Conditioning Timestep. Large timesteps sacrifice fidelity to the condition.
> </details>



![](https://arxiv.org/html/2503.10589/x8.png)

> 🔼 This figure shows the impact of different conditioning timesteps on the quality of autoregressive video generation.  The experiment uses a model where previous frames are used as conditioning information (history) for generating subsequent frames.  Using clean history (timestep 0) preserves the most detail from past frames, but errors accumulate over time. As the timestep increases, some detail is lost from the history, but the overall structure and consistency of the generated video are better maintained as the model isn't overly influenced by small errors in earlier frames. The figure demonstrates a trade-off between preserving fidelity to the initial history (clean history) and mitigating the accumulation of errors in longer sequences.
> <details>
> <summary>read the caption</summary>
> Figure 8: Effects of History Timestep. Large timesteps mitigate “error accumulation” issue at the cost of history fidelity.
> </details>



![](https://arxiv.org/html/2503.10589/x9.png)

> 🔼 This figure demonstrates the effectiveness of adapting a pre-trained bidirectional model to a context-causal architecture.  Starting with weights from a bidirectional model, the model was fine-tuned with causal attention.  After only 1000 training iterations, the context-causal model displays significantly improved consistency in generated videos, comparable to the results achieved after substantially more training (9000 iterations). This highlights the efficiency of the causal adaptation process and its ability to quickly acquire the desired temporal coherence in video generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Causal Adaptation. After 1K updates from bidirectional weights, the causal architecture shows excellent consistency.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10589/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10589/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}