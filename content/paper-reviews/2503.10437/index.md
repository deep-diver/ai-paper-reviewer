---
title: "4D LangSplat: 4D Language Gaussian Splatting via Multimodal Large Language Models"
summary: "4D LangSplat learns 4D language fields for dynamic scenes using multimodal large language models, enabling time-sensitive open-vocabulary queries."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Harvard University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10437 {{< /keyword >}}
{{< keyword icon="writer" >}} Wanhua Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10437" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10437" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10437/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods struggle with dynamic 4D fields since CLIP can't capture temporal dynamics in videos. Real-world environments are inherently dynamic, and vision models can't achieve pixel-aligned, object-wise video features. This poses challenges for building an accurate 4D language field. Existing models extract global video-level features, overlooking specific object-level details, leading to difficulty in spatiotemporal semantic representation. 



To address these challenges, **4D LangSplat** uses multimodal large language models to generate detailed, temporally consistent captions for each object throughout a video. These captions serve as pixel-aligned, object-specific feature supervision, facilitating open-vocabulary queries. A status deformable network models smooth transitions exhibited by objects. This captures gradual transitions, enhancing the model's temporal consistency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a novel 4D language field for dynamic scenes, enhancing spatiotemporal query capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Uses multimodal object-wise video prompting to generate detailed, temporally consistent captions for objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes a status deformable network to model continuous state changes in dynamic scenes effectively. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**4D LangSplat** enables time-sensitive & open-ended language queries in dynamic scenes efficiently, bridging the gap between static scene understanding and real-world dynamics. This research provides a solid foundation for future work, helping understand complex scenes more easily.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10437/x2.png)

> 🔼 This figure visualizes the language features learned by the 4D LangSplat model.  The top two rows showcase the model's ability to capture dynamic changes over time, such as the gradual diffusion of coffee. The bottom two rows demonstrate the model's capacity to track changes in object state, specifically the opening and closing of a chicken container. Importantly, the figure highlights that 4D LangSplat maintains consistent semantic features for aspects of the scene that do not change over time, illustrating the precision of its semantic field through clear object boundaries.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of the learned language features of our 4D LangSplat. We observe that 4D LangSplat effectively learns dynamic semantic features that change over time, such as the gradual diffusion of coffee shown in the first two rows, and the “chicken” toggling between open and closed states in the latter two rows. Additionally, our semantic field captures consistent features for semantics that remain unchanged over time, with the clear object boundaries in the visualization demonstrating the precision of our semantic field.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.1">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.2.1.1.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T1.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">americano</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">chickchicken</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">split-cookie</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.1.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">espresso</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.1.1.6" style="padding-left:0.0pt;padding-right:0.0pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Acc(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">Acc(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">Acc(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.7" style="padding-left:0.0pt;padding-right:0.0pt;">Acc(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.8" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.9" style="padding-left:0.0pt;padding-right:0.0pt;">Acc(%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.2.10" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU(%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T1.2.1.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">LangSplat <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">45.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">23.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">53.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">18.20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.6" style="padding-left:0.0pt;padding-right:0.0pt;">73.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.7" style="padding-left:0.0pt;padding-right:0.0pt;">33.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.8" style="padding-left:0.0pt;padding-right:0.0pt;">44.03</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.9" style="padding-left:0.0pt;padding-right:0.0pt;">16.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.10" style="padding-left:0.0pt;padding-right:0.0pt;">54.01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.2.1.3.11" style="padding-left:0.0pt;padding-right:0.0pt;">22.65</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.1.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Deformable CLIP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">60.57</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">39.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">52.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">42.77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.6" style="padding-left:0.0pt;padding-right:0.0pt;">89.62</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.7" style="padding-left:0.0pt;padding-right:0.0pt;">75.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.8" style="padding-left:0.0pt;padding-right:0.0pt;">44.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.9" style="padding-left:0.0pt;padding-right:0.0pt;">20.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.10" style="padding-left:0.0pt;padding-right:0.0pt;">61.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.4.11" style="padding-left:0.0pt;padding-right:0.0pt;">44.72</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.2.1.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">Non-Status Field</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">83.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">59.59</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">94.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">86.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.6" style="padding-left:0.0pt;padding-right:0.0pt;">91.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.7" style="padding-left:0.0pt;padding-right:0.0pt;">78.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.8" style="padding-left:0.0pt;padding-right:0.0pt;">78.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.9" style="padding-left:0.0pt;padding-right:0.0pt;">47.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.10" style="padding-left:0.0pt;padding-right:0.0pt;">87.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.2.1.5.11" style="padding-left:0.0pt;padding-right:0.0pt;">68.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Ours</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.2.1">89.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.3.1">66.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.4.1">96.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.5.1">90.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.6.1">95.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.7.1">83.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.8" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.8.1">81.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.9" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.9.1">49.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.10" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.10.1">90.83</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.6.11" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.6.11.1">72.26</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods' performance on time-sensitive queries using the HyperNeRF dataset.  It shows the accuracy (Acc) and Intersection over Union (IoU) scores for four different query types (americano, chickchicken, split-cookie, espresso).  The results are presented for four methods: LangSplat, Deformable CLIP, Non-Status Field, and the proposed method (Ours).  The table allows for a direct comparison of the proposed method's performance against existing state-of-the-art techniques in handling time-sensitive queries for dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparisons of time-sensitive querying on the HyperNeRF [37] dataset.
> </details>





### In-depth insights


#### 4D LangSplat
The term '4D LangSplat' evokes a novel approach to scene representation, extending the concept of 3D Gaussian Splatting (**3D-GS**) into the temporal dimension.  It suggests incorporating language understanding into a 4D scene representation, enabling users to query dynamic scenes with natural language. The 'LangSplat' part implies a fusion of language embeddings with the Gaussian primitives, allowing for semantic queries. **Challenges include capturing temporal coherence**, handling dynamic object states, and effectively fusing visual and textual information.  Success hinges on innovative techniques for learning semantic representations in dynamic scenes and efficiently rendering them in real-time. It likely involves leveraging large language models (**LLMs**) and multimodal learning to bridge the gap between visual and textual domains for 4D scene understanding.

#### Status Network
The paper introduces a 'status deformable network' to explicitly model the continuous changes in dynamic scenes. This network constrains the Gaussian point's semantic features to evolve within a predefined set of states. This approach enriches reconstruction quality and enhance temporal consistency, which means the model will capture the gradual transitions across object states, it also prevents any abrupt shifts in its semantic features.  The status deformable network design demonstrates its adaptability to both spatial and temporal context, by capturing the nuances of evolving object states, therefore providing better open-world querying.

#### MLLM Prompting
In the context of this research paper, MLLM prompting emerges as a crucial technique for enhancing the understanding and manipulation of dynamic 4D scenes. **MLLMs, or Multimodal Large Language Models**, are utilized to generate detailed, temporally consistent captions for objects throughout a video, overcoming limitations of vision-based feature supervision. The core idea is to leverage the capacity of MLLMs to process both visual and textual inputs, enabling the creation of rich, object-specific descriptions that capture the evolving semantics of the scene. This approach contrasts traditional methods that rely on static image-text matching, which struggle to capture the temporal dynamics inherent in video data. **Prompt engineering** becomes essential, employing both visual and textual cues to guide the MLLM towards generating captions focused on specific objects and their actions within the video. By converting video data into object-level captions, the research facilitates the training of a 4D language field that can effectively handle both time-agnostic and time-sensitive open-vocabulary queries, marking a significant advancement in the field.

#### Dynamic Semantics
The research addresses **dynamic semantics** in 4D language fields, recognizing the limitations of CLIP in capturing temporal changes. **Real-world scenes evolve**, requiring models to understand object transformations and time-sensitive queries. The challenge lies in obtaining **pixel-aligned, object-level features** from videos, as current models often provide global features. The solution is **4D LangSplat**, which learns directly from text generated by MLLMs rather than relying on visual features. This involves **multimodal object-wise video prompting** to generate detailed captions and a status deformable network to model smooth transitions between object states, ultimately supporting accurate and efficient time-sensitive queries.

#### 4D Querying
**4D Querying** leverages both time-agnostic and time-sensitive semantic fields. The time-agnostic aspect handles unchanging object attributes, utilizing relevance scores for segmentation masks. Time-sensitive queries combine both semantic fields; the former creates an initial mask, while the latter refines it to specific timeframes based on cosine similarity. A threshold determines relevant time segments, and the time-agnostic mask is retained as the final mask prediction. This enables capturing both persistent and dynamic object characteristics in scenes.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10437/x3.png)

> 🔼 This figure illustrates the architecture of 4D LangSplat, a method for creating a time-varying semantic field.  The process begins with a video input that is segmented into individual objects using the Segment Anything Model (SAM). Multimodal object-wise prompting is then applied, combining visual and textual prompts to guide a Multimodal Large Language Model (MLLM) in generating detailed, temporally consistent captions for each object.  These captions are encoded using a Large Language Model (LLM) into sentence embeddings, which act as pixel-aligned, object-level feature supervision.  A status deformable network models the smooth transitions between object states over time.  Finally, these features are integrated into a 4D language field using 4D Gaussian splatting.
> <details>
> <summary>read the caption</summary>
> Figure 2: The framework of constructing a time-varying semantic field in 4D LangSplat. We first use multimodal object-wise prompting to convert a video into pixel-aligned object-level caption features. Then, we learn a 4D language field with a status deformable network.
> </details>



![](https://arxiv.org/html/2503.10437/x4.png)

> 🔼 This table presents a quantitative comparison of the effectiveness of different visual prompting techniques used in the 4D LangSplat model.  The visual prompts are designed to guide a Multimodal Large Language Model (MLLM) in generating accurate and detailed captions for objects in video frames.  The table shows the average cosine similarity scores (Asim) achieved when using different visual prompts (Blur, Gray, Contour) in combination with image and video prompts. The Asim score reflects how well the generated captions align with the actual object features and their temporal dynamics.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparisons of Visual prompts.
> </details>



![](https://arxiv.org/html/2503.10437/x5.png)

> 🔼 This table presents ablation study results, comparing the performance of different text prompt strategies used in the multimodal object-wise video prompting method. It shows how various combinations of visual and textual prompts affect the quality of captions generated by the MLLM. The metrics used to evaluate the quality are the cosine similarity scores between generated captions and query features (both positive and negative samples). The results demonstrate how different prompting techniques influence the ability of the MLLM to generate precise, temporally consistent, and contextually relevant captions for each object in a video frame.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparisons of Text prompts.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T2.2.1.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S4.T2.2.1.1.1">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.2.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">HyperNeRF</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.2.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">Neu3D</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">mIoU</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">mAcc</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">mIoU</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">mAcc</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.2.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">Feature-3DGS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">36.63</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">74.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">34.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.2.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">87.12</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.2.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">Gaussian Grouping <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.2" style="padding-left:0.0pt;padding-right:0.0pt;">50.49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">80.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">49.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">95.05</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.2.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">LangSplat <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.5.2" style="padding-left:0.0pt;padding-right:0.0pt;">74.92</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">97.72</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.5.4" style="padding-left:0.0pt;padding-right:0.0pt;">61.49</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.2.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">91.89</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.2.6.1" style="padding-left:0.0pt;padding-right:0.0pt;">Ours</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.2.1">82.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.3.1">98.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.4.1">85.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.5.1">98.32</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of different methods on time-agnostic querying tasks.  Two datasets are used for evaluation: HyperNeRF [37] and Neu3D [27]. The metrics used for comparison are mean Intersection over Union (mIoU) and mean Accuracy (mAcc).  Higher values for both mIoU and mAcc indicate better performance in accurately identifying and segmenting objects within the scene in response to open-vocabulary queries.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative comparisons of time-agnostic querying on the HyperNeRF [37] and Neu3D [27] datasets (Numbers in %).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.7.7">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Blur</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">Gray</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">Contour</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\Delta_{\mathrm{sim}}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mi id="S4.T4.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml">sim</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">Δ</ci><ci id="S4.T4.1.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.1.m1.1.1.3">sim</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\Delta_{\mathrm{sim}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT roman_sim end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mi id="S4.T4.2.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T4.2.2.2.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T4.2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T4.2.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.2.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.33</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><mi id="S4.T4.3.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T4.3.3.3.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.4.4.4.2.m1.1"><semantics id="S4.T4.4.4.4.2.m1.1a"><mi id="S4.T4.4.4.4.2.m1.1.1" mathvariant="normal" xref="S4.T4.4.4.4.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.2.m1.1b"><ci id="S4.T4.4.4.4.2.m1.1.1.cmml" xref="S4.T4.4.4.4.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T4.4.4.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.4.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">2.15</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.5.5.5.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mi id="S4.T4.5.5.5.1.m1.1.1" mathvariant="normal" xref="S4.T4.5.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><ci id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.6.6.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.6.6.6.2.m1.1"><semantics id="S4.T4.6.6.6.2.m1.1a"><mi id="S4.T4.6.6.6.2.m1.1.1" mathvariant="normal" xref="S4.T4.6.6.6.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.2.m1.1b"><ci id="S4.T4.6.6.6.2.m1.1.1.cmml" xref="S4.T4.6.6.6.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.7.7.7.3" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.7.7.7.3.m1.1"><semantics id="S4.T4.7.7.7.3.m1.1a"><mi id="S4.T4.7.7.7.3.m1.1.1" mathvariant="normal" xref="S4.T4.7.7.7.3.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.3.m1.1b"><ci id="S4.T4.7.7.7.3.m1.1.1.cmml" xref="S4.T4.7.7.7.3.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.3.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.3.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.7.7.7.4" style="padding-left:0.0pt;padding-right:0.0pt;">3.32</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of varying the number of semantic states (K) in the status deformable network for the 'chick_chicken' query on the HyperNeRF dataset.  It shows the accuracy (Acc) and Intersection over Union (IoU) metrics obtained when using different values for K, illustrating how the choice of K affects the model's performance in capturing the nuanced transitions between semantic states of the 'chick_chicken' object (e.g., closed versus open).
> <details>
> <summary>read the caption</summary>
> Table 5: Results for different state numbers on chick_chicken.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.11.4">
<tr class="ltx_tr" id="S4.T4.8.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.8.1.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">Video</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.8.1.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">Image</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.8.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\Delta_{\mathrm{sim}}" class="ltx_Math" display="inline" id="S4.T4.8.1.1.1.m1.1"><semantics id="S4.T4.8.1.1.1.m1.1a"><msub id="S4.T4.8.1.1.1.m1.1.1" xref="S4.T4.8.1.1.1.m1.1.1.cmml"><mi id="S4.T4.8.1.1.1.m1.1.1.2" mathvariant="normal" xref="S4.T4.8.1.1.1.m1.1.1.2.cmml">Δ</mi><mi id="S4.T4.8.1.1.1.m1.1.1.3" xref="S4.T4.8.1.1.1.m1.1.1.3.cmml">sim</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.8.1.1.1.m1.1b"><apply id="S4.T4.8.1.1.1.m1.1.1.cmml" xref="S4.T4.8.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.8.1.1.1.m1.1.1.1.cmml" xref="S4.T4.8.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.8.1.1.1.m1.1.1.2.cmml" xref="S4.T4.8.1.1.1.m1.1.1.2">Δ</ci><ci id="S4.T4.8.1.1.1.m1.1.1.3.cmml" xref="S4.T4.8.1.1.1.m1.1.1.3">sim</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.1.1.1.m1.1c">\Delta_{\mathrm{sim}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT roman_sim end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.4.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T4.11.4.5.1" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S4.T4.11.4.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.11.4.5.3" style="padding-left:0.0pt;padding-right:0.0pt;">0.14</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.9.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.9.2.2.1.m1.1"><semantics id="S4.T4.9.2.2.1.m1.1a"><mi id="S4.T4.9.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T4.9.2.2.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.9.2.2.1.m1.1b"><ci id="S4.T4.9.2.2.1.m1.1.1.cmml" xref="S4.T4.9.2.2.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.2.2.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.2.2.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S4.T4.9.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.9.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">1.01</td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.10.3.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.10.3.3.1.m1.1"><semantics id="S4.T4.10.3.3.1.m1.1a"><mi id="S4.T4.10.3.3.1.m1.1.1" mathvariant="normal" xref="S4.T4.10.3.3.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.10.3.3.1.m1.1b"><ci id="S4.T4.10.3.3.1.m1.1.1.cmml" xref="S4.T4.10.3.3.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.3.3.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.3.3.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.11.4.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S4.T4.11.4.4.2.m1.1"><semantics id="S4.T4.11.4.4.2.m1.1a"><mi id="S4.T4.11.4.4.2.m1.1.1" mathvariant="normal" xref="S4.T4.11.4.4.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S4.T4.11.4.4.2.m1.1b"><ci id="S4.T4.11.4.4.2.m1.1.1.cmml" xref="S4.T4.11.4.4.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.4.4.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.4.4.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T4.11.4.4.3" style="padding-left:0.0pt;padding-right:0.0pt;">3.32</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific text prompts used in the multimodal object-wise video prompting method.  The prompts guide the large language model (LLM) in generating captions for objects within video frames. It explains how visual prompts (red contour, grayscale, blur) are used to focus the LLM's attention on the object of interest while providing background context for temporal consistency.  The prompts are designed to ensure that the generated captions accurately describe the object's state in the specific frame, avoiding extraneous information or redundant descriptions.
> <details>
> <summary>read the caption</summary>
> Table 6: Details of Text prompts
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T5.2.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T5.2.1.6" style="padding-left:0.0pt;padding-right:0.0pt;">6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T5.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">Acc (%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">94.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.1">97.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">95.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">94.56</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;">94.56</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T5.2.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">vIoU (%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">88.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.3.1">91.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">89.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">88.98</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T5.2.3.6" style="padding-left:0.0pt;padding-right:0.0pt;">86.28</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different methods in terms of frames per second (FPS) for processing queries.  It shows the speed at which each method can handle queries, highlighting the efficiency gains of the proposed 4D LangSplat approach compared to baselines like Gaussian Grouping. This is crucial for real-time applications that require fast response times.
> <details>
> <summary>read the caption</summary>
> Table 7: Query Performance Comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.2">
<tr class="ltx_tr" id="A2.T6.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.1.1">
<span class="ltx_p" id="A2.T6.2.1.1.1.1" style="width:49.7pt;"><span class="ltx_text" id="A2.T6.2.1.1.1.1.1" style="font-size:144%;">Video prompts</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.1.2.1">
<span class="ltx_p" id="A2.T6.2.1.2.1.1" style="width:149.1pt;"><span class="ltx_text" id="A2.T6.2.1.2.1.1.1" style="font-size:144%;">Image prompts</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T6.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.1.1">
<span class="ltx_p" id="A2.T6.2.2.1.1.1" style="width:49.7pt;"><span class="ltx_text" id="A2.T6.2.2.1.1.1.1" style="font-size:144%;">I highlighted the objects I want you to describe in red outline and blurred the objects that don’t need you to describe. First please determine the object highlighted in red line in the video. Then briefly summarize the transformation process of this object.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T6.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.2.1">
<span class="ltx_p" id="A2.T6.2.2.2.1.1" style="width:149.1pt;"><span class="ltx_text" id="A2.T6.2.2.2.1.1.1" style="font-size:144%;">You have an understanding of the overall transformation process of the object: {video prompt}. Now, I have provided you with images extracted from this process. Please describe the specific state of the object(s) in the given image, without referring to the entire video process. Avoid describing states that you can’t infer directly from the picture. Avoid repeating descriptions in context. For example, if the context suggests the object is moving up and down but the image shows it is just moving down, explicitly only state that the object is in a moving down state. If the context suggests the object is breaking but the image shows it is complete right now, explicitly only state that the object appears to be complete. If context tells you something changes from green to blue, but it’s blue in this image, just state that the object is blue.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a quantitative comparison of the performance of different methods on the HyperNeRF dataset for time-agnostic semantic segmentation.  It shows the mean Intersection over Union (mIoU) and mean Accuracy (mAcc) achieved by several approaches including Feature-3DGS, Gaussian Grouping, LangSplat, and the proposed method (Ours). The comparison is done across multiple object categories (americano, chickchicken, split-cookie, espresso, keyboard, torchocolate).  This table allows for a direct assessment of the proposed approach's effectiveness compared to state-of-the-art methods in achieving precise and accurate semantic segmentation in dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of mean IoU and mean Accuracy for various methods on the HyperNeRF [37] datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.2">
<tr class="ltx_tr" id="A2.T7.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A2.T7.2.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T7.2.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.1.2.1" style="font-size:144%;">FPS</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T7.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T7.2.2.1.1" style="font-size:144%;">Gaussian Grouping </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T7.2.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A2.T7.2.2.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T7.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.2.2.1" style="font-size:144%;">1.47</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A2.T7.2.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.3.1.1" style="font-size:144%;">Ours-agnostic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T7.2.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.2.3.2.1" style="font-size:144%;">5.24</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A2.T7.2.4.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.4.1.1" style="font-size:144%;">Ours-sensitive</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A2.T7.2.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T7.2.4.2.1" style="font-size:144%;">4.05</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of different methods on the Neu3D dataset [27] for time-agnostic open-vocabulary queries.  The metrics used are mean Intersection over Union (mIoU) and mean Accuracy (mAcc).  Multiple semantic categories are evaluated, and the results show the performance of Feature-3DGS [67], Gaussian Grouping [63], LangSplat [38], and the proposed method (Ours). This allows for a direct comparison of the proposed approach against existing state-of-the-art methods in terms of both accuracy and efficiency in handling dynamic scenes.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison of mean IoU and mean Accuracy for various methods on the Neu3D [27] dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.2">
<tr class="ltx_tr" id="A2.T8.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T8.2.1.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T8.2.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.1.2.1" style="font-size:144%;">americano</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T8.2.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.1.3.1" style="font-size:144%;">chickchicken</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T8.2.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.1.4.1" style="font-size:144%;">split-cookie</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.1.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.2.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.3.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.4.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.5.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.2.6.1" style="font-size:144%;">mAcc(%)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.3.1.1" style="font-size:144%;">Feature-3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="A2.T8.2.3.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.2.1" style="font-size:144%;">34.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.3.1" style="font-size:144%;">62.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.4.1" style="font-size:144%;">47.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.5.1" style="font-size:144%;">87.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.6.1" style="font-size:144%;">47.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.3.7.1" style="font-size:144%;">68.25</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.4.1.1" style="font-size:144%;">Gaussian Grouping </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A2.T8.2.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.2.1" style="font-size:144%;">61.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.3.1" style="font-size:144%;">71.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.4.1" style="font-size:144%;">34.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.5.1" style="font-size:144%;">75.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.6.1" style="font-size:144%;">72.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.4.7.1" style="font-size:144%;">96.56</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.5.1.1" style="font-size:144%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A2.T8.2.5.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.2.1" style="font-size:144%;">72.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.3.1" style="font-size:144%;">97.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.4.1" style="font-size:144%;">75.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.5.1" style="font-size:144%;">97.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.6.1" style="font-size:144%;">76.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.5.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.5.7.1" style="font-size:144%;">97.32</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.6.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.2.1" style="font-size:144%;">83.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.3.1" style="font-size:144%;">98.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.4.1" style="font-size:144%;">86.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.5.1" style="font-size:144%;">98.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.6.1" style="font-size:144%;">90.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.6.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.6.7.1" style="font-size:144%;">98.67</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.7.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.7.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T8.2.7.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.7.2.1" style="font-size:144%;">espresso</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T8.2.7.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.7.3.1" style="font-size:144%;">keyboard</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T8.2.7.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.7.4.1" style="font-size:144%;">torchocolate</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.1.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.2.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.3.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.4.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.5.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.8.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.8.6.1" style="font-size:144%;">mAcc(%)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.9.1.1" style="font-size:144%;">Feature-3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="A2.T8.2.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.2.1" style="font-size:144%;">24.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.3.1" style="font-size:144%;">80.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.4.1" style="font-size:144%;">42.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.5.1" style="font-size:144%;">80.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.6.1" style="font-size:144%;">24.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T8.2.9.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.9.7.1" style="font-size:144%;">64.58</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.10.1.1" style="font-size:144%;">Gaussian Grouping </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A2.T8.2.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.2.1" style="font-size:144%;">32.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.3.1" style="font-size:144%;">82.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.4.1" style="font-size:144%;">42.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.5.1" style="font-size:144%;">74.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.6.1" style="font-size:144%;">58.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.10.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.10.7.1" style="font-size:144%;">85.52</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T8.2.11.1.1" style="font-size:144%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T8.2.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A2.T8.2.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.11.2.1" style="font-size:144%;">82.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.11.3.1" style="font-size:144%;">98.66</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.11.4.1" style="font-size:144%;">72.42</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.11.5.1" style="font-size:144%;">96.75</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.11.6.1" style="font-size:144%;">69.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T8.2.11.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.11.7.1" style="font-size:144%;">98.09</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.12.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.12.2.1" style="font-size:144%;">83.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.12.3.1" style="font-size:144%;">97.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.12.4.1" style="font-size:144%;">79.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T8.2.12.5.1" style="font-size:144%;">95.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.12.6.1" style="font-size:144%;">71.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.2.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.12.7.1" style="font-size:144%;">98.10</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy results of video classification using MLLM-based embeddings.  It compares the performance of the proposed method against state-of-the-art methods (IMP) on three widely used video classification datasets: HMDB51, UCF101, and Kinetics400. The results demonstrate the effectiveness of MLLM-based embeddings in video classification, even without fine-tuning, achieving competitive accuracy scores compared to specialized methods.  The table highlights the ability of the MLLM-generated embeddings to capture spatiotemporal information relevant for video understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Accuracy Results (%) on the Video Classification task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.2">
<tr class="ltx_tr" id="A2.T9.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T9.2.1.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T9.2.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.1.2.1" style="font-size:144%;">coffee martini</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T9.2.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.1.3.1" style="font-size:144%;">cook spinach</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A2.T9.2.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.1.4.1" style="font-size:144%;">cut roasted beef</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.1.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.2.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.3.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.4.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.5.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.2.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.2.6.1" style="font-size:144%;">mAcc(%)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.3.1.1" style="font-size:144%;">Feature-3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="A2.T9.2.3.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.2.1" style="font-size:144%;">30.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.3.1" style="font-size:144%;">84.74</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.4.1" style="font-size:144%;">41.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.5.1" style="font-size:144%;">95.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.6.1" style="font-size:144%;">31.66</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.3.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.3.7.1" style="font-size:144%;">91.07</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.4.1.1" style="font-size:144%;">Gaussian Grouping </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A2.T9.2.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.2.1" style="font-size:144%;">71.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.3.1" style="font-size:144%;">97.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.4.1" style="font-size:144%;">46.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.5.1" style="font-size:144%;">93.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.6.1" style="font-size:144%;">54.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.4.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.4.7.1" style="font-size:144%;">93.25</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.5.1.1" style="font-size:144%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A2.T9.2.5.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.2.1" style="font-size:144%;">67.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.3.1" style="font-size:144%;">98.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.4.1" style="font-size:144%;">78.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.5.1" style="font-size:144%;">98.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.6.1" style="font-size:144%;">36.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.5.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.5.7.1" style="font-size:144%;">97.04</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.6.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.2.1" style="font-size:144%;">85.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.3.1" style="font-size:144%;">99.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.4.1" style="font-size:144%;">85.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.5.1" style="font-size:144%;">99.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.6.1" style="font-size:144%;">85.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.6.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.6.7.1" style="font-size:144%;">99.28</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.7.1" rowspan="2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.7.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T9.2.7.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.7.2.1" style="font-size:144%;">flame salmon</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T9.2.7.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.7.3.1" style="font-size:144%;">flame steak</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A2.T9.2.7.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.7.4.1" style="font-size:144%;">sear steak</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.1.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.2.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.3.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.4.1" style="font-size:144%;">mAcc(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.5.1" style="font-size:144%;">mIoU(%)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.8.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.8.6.1" style="font-size:144%;">mAcc(%)</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.9.1.1" style="font-size:144%;">Feature-3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="A2.T9.2.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.2.1" style="font-size:144%;">54.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.3.1" style="font-size:144%;">77.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.4.1" style="font-size:144%;">27.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.5.1" style="font-size:144%;">88.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.6.1" style="font-size:144%;">24.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T9.2.9.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.9.7.1" style="font-size:144%;">85.94</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.10.1.1" style="font-size:144%;">Gaussian Grouping </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A2.T9.2.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.10.2.1" style="font-size:144%;">35.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.10.3.1" style="font-size:144%;">94.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.10.4.1" style="font-size:144%;">36.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.10.5.1" style="font-size:144%;">95.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.10.6.1" style="font-size:144%;">54.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.10.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.10.7.1" style="font-size:144%;">95.27</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.1" style="padding-left:0.0pt;padding-right:0.0pt;">
<span class="ltx_text" id="A2.T9.2.11.1.1" style="font-size:144%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T9.2.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.10437v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="A2.T9.2.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.11.2.1" style="font-size:144%;">66.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.11.3.1" style="font-size:144%;">82.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.11.4.1" style="font-size:144%;">64.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.11.5.1" style="font-size:144%;">97.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.11.6.1" style="font-size:144%;">78.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A2.T9.2.11.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.11.7.1" style="font-size:144%;">98.60</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.12.1.1" style="font-size:144%;">Ours</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.12.2.1" style="font-size:144%;">89.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.12.3.1" style="font-size:144%;">94.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.12.4.1" style="font-size:144%;">88.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.12.5.1" style="font-size:144%;">98.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.6" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="A2.T9.2.12.6.1" style="font-size:144%;">76.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.2.12.7" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.2.12.7.1" style="font-size:144%;">99.38</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents the results of a spatial-temporal action localization experiment conducted on the UCF101 dataset [44].  The table compares the performance of a method using Multimodal Large Language Model (MLLM)-based embeddings against a state-of-the-art (SOTA) method, HIT [12]. The performance is evaluated using mean average precision (mAP) at three different Intersection over Union (IoU) thresholds (0.1, 0.2, and 0.5).  This demonstrates the ability of MLLM-based embeddings to capture spatio-temporal information, even in a zero-shot setting.
> <details>
> <summary>read the caption</summary>
> Table 11: Spatial-Temporal Action Localization Results (%) on UCF101 [44].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10437/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10437/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}