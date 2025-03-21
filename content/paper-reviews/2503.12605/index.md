---
title: "Multimodal Chain-of-Thought Reasoning: A Comprehensive Survey"
summary: "A comprehensive survey of multimodal chain-of-thought (MCoT) reasoning, bridging the gap in existing literature and fostering innovation towards multimodal AGI."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 NUS",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12605 {{< /keyword >}}
{{< keyword icon="writer" >}} Yaoting Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12605" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12605" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12605/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal chain-of-thought (MCoT) reasoning enhances AI by extending chain-of-thought reasoning to multimodal contexts, integrating modalities like image, video, and audio. This approach has gained traction in applications like robotics, healthcare and autonomous driving. Current MCOT studies design innovative reasoning paradigms to address the unique challenges of each modality, and Multimodal Large Language Models (MLLMs) are playing an increasingly significant role. 



To address the lack of a unified resource, this survey offers a systematic overview of MCOT reasoning, defining key concepts and providing a taxonomy of methodologies from various perspectives, such as rationale construction, structural reasoning and objective granularity. It highlights applications, datasets, and benchmarks, also exploring the future directions and existing challenges in the field of MCOT. A key resource, it aims to foster innovation toward achieving multimodal AGI.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Presents the first systematic survey of MCoT reasoning, defining key concepts and taxonomies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Analyzes current MCoT methodologies across various modalities and application scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Offers insights into existing challenges and future research directions to foster innovation in multimodal AGI. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey on MCOT is essential for researchers, **consolidating knowledge and spurring innovation** by pinpointing existing challenges and future research directions. The provided resources support further advancements in multimodal AGI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12605/extracted/6284801/fig/cover-teasure-map.png)

> 🔼 This figure is a timeline showcasing the development of Multimodal Chain-of-Thought (MCoT) reasoning models.  It visually represents the chronological order of significant model releases, highlighting the integration of various modalities beyond text. Models shown in gray represent text-only Large Language Models (LLMs), while colored circles added to model names indicate the inclusion of specific additional modalities (e.g., audio, video, 3D). This visualization helps to understand the evolution of MCoT reasoning across various modalities and the increasing complexity of the models over time.
> <details>
> <summary>read the caption</summary>
> Figure 1: Developing timeline of Multimodal Chain-of-Thought (MCoT) reasoning. Models with names in gray are text-only LLMs. For clarity, the models in the figure are assumed to include the image modality by default, unless specified with special modalities indicated by colored circles.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1" style="background-color:#DAE8FC;">Terms</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1" style="background-color:#DAE8FC;">Abbrev.</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" id="S2.T1.1.1.3" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1" style="background-color:#DAE8FC;">Description</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1" style="padding-left:7.1pt;padding-right:7.1pt;">In-context Learning</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2" style="padding-left:7.1pt;padding-right:7.1pt;">ICL</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.2.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.3.1">
<span class="ltx_p" id="S2.T1.1.2.3.1.1" style="width:241.8pt;">Prompting LLMs with task-specific examples without additional explicit training.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.1" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text" id="S2.T1.1.3.1.1" style="background-color:#EFEFEF;">Chain-of-Thought</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text" id="S2.T1.1.3.2.1" style="background-color:#EFEFEF;">CoT</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.3.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S2.T1.1.3.3.1.1" style="width:241.8pt;">Prompting LLMs to reason step-by-step or breaks complex problems into logical steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.1" style="padding-left:7.1pt;padding-right:7.1pt;">Multimodal CoT</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.2" style="padding-left:7.1pt;padding-right:7.1pt;">MCoT</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.4.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.1">
<span class="ltx_p" id="S2.T1.1.4.3.1.1" style="width:241.8pt;">Extends CoT to reason with multimodalities, <em class="ltx_emph ltx_font_italic" id="S2.T1.1.4.3.1.1.1">e.g.</em>, audio, image.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.1" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text" id="S2.T1.1.5.1.1" style="background-color:#EFEFEF;">Cross-modal CoT</span></td>
<td class="ltx_td" id="S2.T1.1.5.2" style="padding-left:7.1pt;padding-right:7.1pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.5.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S2.T1.1.5.3.1.1" style="width:241.8pt;">Reasoning with two or more multimodalities, <em class="ltx_emph ltx_font_italic" id="S2.T1.1.5.3.1.1.1">e.g.</em>, audio-visual.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.1" style="padding-left:7.1pt;padding-right:7.1pt;">Thought</td>
<td class="ltx_td" id="S2.T1.1.6.2" style="padding-left:7.1pt;padding-right:7.1pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.6.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.3.1">
<span class="ltx_p" id="S2.T1.1.6.3.1.1" style="width:241.8pt;">A single reasoning step in CoT.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.7.1" style="padding-left:7.1pt;padding-right:7.1pt;"><span class="ltx_text" id="S2.T1.1.7.1.1" style="background-color:#EFEFEF;">Rationale</span></td>
<td class="ltx_td ltx_border_bb" id="S2.T1.1.7.2" style="padding-left:7.1pt;padding-right:7.1pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S2.T1.1.7.3" style="padding-left:7.1pt;padding-right:7.1pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S2.T1.1.7.3.1.1" style="width:241.8pt;">Built upon multiple thoughts to support the final answer.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table defines key terms frequently used in the context of Multimodal Chain-of-Thought (MCoT) reasoning, clarifying their meaning and usage within the paper.  It includes terms like In-context Learning (ICL), Chain-of-Thought (CoT), Multimodal CoT (MCOT), Cross-modal CoT, Thought, and Rationale, providing concise descriptions of each to ensure a shared understanding of terminology.
> <details>
> <summary>read the caption</summary>
> Table 1: Interpretation of MCoT-related terms.
> </details>





### In-depth insights


#### MCOT's Timeline
Based on the provided research paper, an MCOT's timeline is presented to observe the key milestones in this emerging field. The developing timeline of MCOT reasoning and the models in the figure are assumed to include the image modality by default, unless specified with special modalities indicated by colored circles. This shows the **progression of MCOT from basic COT methods to more complex structured approaches.** It shows how the field has advanced, incorporating different modalities and reasoning structures to tackle complex problems in different modalities, such as audio, video, structured datasets and images. The survey identifies **key research directions, challenges, and offers resources to support** and accelerate progress within the research community.

#### Beyond Text: MCOT
Considering 'Beyond Text: MCOT' as a conceptual heading, it encapsulates the essence of Multimodal Chain-of-Thought reasoning's departure from traditional, text-centric AI. It signifies the integration of diverse data modalities like images, audio, and video to emulate human-like cognition more accurately. **MCOT's multimodal approach enables richer contextual understanding and more nuanced reasoning processes**. This heading implies the development of AI systems capable of processing and reasoning across various sensory inputs, leading to more comprehensive and insightful outputs. It also highlights the challenges involved, such as aligning different modalities, managing data complexity, and ensuring seamless integration, yet it envisions a future where AI systems can perceive and interact with the world in a more holistic and human-aligned manner. **MCOT broadens applicability in fields like robotics, healthcare, and autonomous driving**, where understanding the environment through multiple senses is critical.

#### Modality Spectrum
When considering a 'Modality Spectrum' in multimodal research, the focus shifts to the **range and diversity of input types** a system can effectively process and integrate. This spectrum encompasses everything from traditional data like text and images, to more complex modalities such as audio, video, 3D data, sensor readings, and even physiological signals. A crucial aspect is the **interoperability and synergy between different modalities**. The spectrum isn't just about the number of modalities handled, but also the system's ability to **fuse information across modalities**, addressing potential challenges like modality imbalance, noise, and asynchronous data. Research in this area aims to create systems that can dynamically adapt to different modal combinations, understand intricate relationships between modalities, and ultimately achieve more robust and comprehensive representations of the world, thus enabling advanced AI applications.

#### Rationale Focus
Rationale focus centers on the **methodologies employed in building reasoning chains**, a departure from direct input-output methods. While the final answer is important, the *emphasis* is on *how* that answer was derived and justified. Methodologies are broadly prompt, plan and learning-based. **Prompt based** methods use instructions or demonstrations to guide rationales *during* inference, while **plan based** methods enable the model to dynamically explore various paths and improving insights. Finally, **Learning based** methods enable rationale construction *during* the training or fine-tuning, where models explicitly learn reasoning skills. Each serves to enhance the fidelity and explainability of the reasoning process, an essential aspect of trustworthy AI system.

#### Theor. Support?
It appears we're pondering the theoretical underpinnings, potentially for a novel system or technique. **Strong theoretical support is crucial for long-term viability and widespread acceptance**. This might involve elements of information theory (bounds on performance), computational complexity (scalability), statistical learning theory (generalization guarantees), or even formal logic (soundness/completeness). It would be vital to address potential limitations, acknowledge assumptions, and contrast this theory against existing frameworks. The more robustly the system can be justified theoretically, the better the chances of it being trusted and adopted by the broader research community. Also, it would be helpful to see whether it can be expressed using formal models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12605/x1.png)

> 🔼 This figure presents a comprehensive taxonomy of Multimodal Chain-of-Thought (MCoT) reasoning methods.  It organizes various MCoT techniques across several dimensions, including the modality of data involved (image, video, audio, 3D, table/chart, cross-modal), the methodology employed (rationale construction, structural reasoning, information enhancing, objective granularity, multimodal rationale, test-time scaling), and the applications in which these methods are used (embodied AI, agentic systems, autonomous driving, healthcare, social and human interaction, and multimodal generation).  Each category contains specific examples of relevant models and papers.
> <details>
> <summary>read the caption</summary>
> Figure 2: Taxonomy of MCoT reasoning.
> </details>



![](https://arxiv.org/html/2503.12605/x2.png)

> 🔼 This figure illustrates the evolution of reasoning structures or topologies used in Chain-of-Thought (CoT) and Multimodal Chain-of-Thought (MCoT) reasoning. It starts by showing basic paradigms for CoT and MCoT, highlighting the differences between direct input-output methods and methods that employ majority voting or self-consistency checks. Then, it moves to structured CoT and MCoT methods, which employ more sophisticated reasoning structures.  Specifically, the figure displays three main types of topologies: chain, tree, and graph. Chain topologies represent linear, sequential reasoning; tree topologies allow for exploration and backtracking; and graph and hypergraph topologies facilitate aggregation among multiple nodes, enabling reasoning over more complex multimodal inputs. The figure showcases how the evolution of these topologies directly reflects a progression from linear reasoning to parallel and branching exploration with higher-order associations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Different thought paradigms of CoT and MCoT.
> </details>



![](https://arxiv.org/html/2503.12605/x3.png)

> 🔼 Figure 4 illustrates the typical architectures of multimodal large language models (MLLMs).  It contrasts comprehension-only MLLMs with those capable of both comprehension and generation.  Comprehension-only models process multimodal embeddings or tokens into a decoder structure that produces an output.  Comprehension and generation models utilize a similar process but also include a generation component allowing them to produce both multimodal outputs (text, image, video, audio, 3D data) and textual outputs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Common architectures for comprehension-only and comprehension-generation MLLMs.
> </details>



![](https://arxiv.org/html/2503.12605/x4.png)

> 🔼 Figure 5 presents several example applications of Multimodal Chain-of-Thought (MCoT) reasoning across various modalities.  Each example showcases a task, the input modalities (e.g., audio, image, video), the reasoning process as a chain of thoughts, and the final answer. Modalities involved include audio, images, video, 3D data, and tables; task types include question answering, grounding, and generation.  This highlights MCoT's adaptability and wide applicability.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of MCoT applications in various modalities and tasks.
> </details>



![](https://arxiv.org/html/2503.12605/x5.png)

> 🔼 This figure illustrates three main methodologies used in Multimodal Chain-of-Thought (MCoT) reasoning, categorized by how the rationale (the step-by-step reasoning process) is constructed.  Prompt-based methods use carefully crafted prompts to guide the model's reasoning.  Plan-based methods allow models to dynamically explore and refine thoughts using tree, graph, or hypergraph structures. Learning-based methods incorporate rationale construction directly into the training or fine-tuning process, teaching the model to generate rationales alongside the final answers. The figure also highlights how each method integrates multimodal inputs from various modalities (Image, Video, Audio, etc.) into the LLM.
> <details>
> <summary>read the caption</summary>
> Figure 6: MCoT reasoning methods under different rationale construction perspectives.
> </details>



![](https://arxiv.org/html/2503.12605/x6.png)

> 🔼 This figure illustrates different methodologies employed in MCoT reasoning, categorized by their structural reasoning approach. It shows how various methods handle the organization and flow of information during the reasoning process, contrasting asynchronous modality processing, defined procedures, and autonomous procedure learning. Asynchronous approaches process modalities independently, defined procedures follow predefined steps, and autonomous methods let the model decide the sequence of reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 7: MCoT methods under different structural reasoning perspectives.
> </details>



![](https://arxiv.org/html/2503.12605/x7.png)

> 🔼 Figure 8 illustrates different methodologies employed in MCOT reasoning, focusing on how enhancing the input information improves the reasoning process.  It shows three main approaches: using expert tools to integrate external knowledge or perform specialized operations (e.g., geometric manipulation), retrieving world knowledge from external sources (e.g., knowledge graphs, databases) to enhance the reasoning process, and leveraging in-context knowledge retrieval from the existing information in the input or already generated rationales.  Each approach is represented visually, highlighting how these techniques improve multimodal reasoning in MCOT.
> <details>
> <summary>read the caption</summary>
> Figure 8: MCoT reasoning under perspectives with information enhancing.
> </details>



![](https://arxiv.org/html/2503.12605/x8.png)

> 🔼 Figure 9 illustrates different methodologies within Multimodal Chain-of-Thought (MCoT) reasoning, categorized by the granularity of their objectives.  It shows how approaches vary depending on whether the goal is a high-level overview (coarse understanding), precise identification of specific elements (semantic grounding), or detailed analysis of individual components (fine-grained understanding).  The figure visually represents the different levels of detail and information processing involved in each approach.
> <details>
> <summary>read the caption</summary>
> Figure 9: MCoT reasoning under the perspectives of various objective granularities.
> </details>



![](https://arxiv.org/html/2503.12605/x9.png)

> 🔼 This figure illustrates the concept of Multimodal Chain-of-Thought (MCoT) reasoning using multimodal rationales.  It shows that, unlike traditional text-only CoT reasoning, MCoT reasoning integrates multiple modalities (represented by 'M') into the rationale generation process. This means that the reasoning steps are not limited to text but can also incorporate information from images, audio, video, or other modalities, leading to a more comprehensive and nuanced understanding of the problem and ultimately, a more accurate answer.
> <details>
> <summary>read the caption</summary>
> Figure 10: MCoT reasoning with multimodal rationale.
> </details>



![](https://arxiv.org/html/2503.12605/x10.png)

> 🔼 This figure illustrates different test-time scaling strategies used in Multimodal Chain-of-Thought (MCoT) reasoning.  It shows how reinforcement learning (RL) can enhance the quality of reasoning and enable active long-CoT reasoning capabilities even without extensive annotated training data for long chains of thought.  The figure depicts various approaches, emphasizing that supervised fine-tuning (SFT) is an optional component in this process.  The options shown highlight different ways to scale the reasoning process at test time, thus allowing for more efficient and effective reasoning in resource-constrained settings.
> <details>
> <summary>read the caption</summary>
> Figure 11: MCoT reasoning with test-time scaling strategies. RL can help improve reasoning quality, or active long-CoT reasoning ability without annotated long-CoT training data. SFT is optional.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T2.1.1.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1" style="background-color:#DAE8FC;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1" style="background-color:#DAE8FC;">Foundational LLMs</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1" style="background-color:#DAE8FC;">Modality</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1" style="background-color:#DAE8FC;">Learning</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1" style="background-color:#DAE8FC;">Cold Start</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.1" style="background-color:#DAE8FC;">Algorithm</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.1" style="background-color:#DAE8FC;">Aha-moment</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.1.2.1" style="padding-left:1.7pt;padding-right:1.7pt;">Deepseek-R1-Zero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib137" title="">137</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.2" style="padding-left:1.7pt;padding-right:1.7pt;">Deepseek-V3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.3" style="padding-left:1.7pt;padding-right:1.7pt;">T</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.6" style="padding-left:1.7pt;padding-right:1.7pt;">GRPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.2.7" style="padding-left:1.7pt;padding-right:1.7pt;">✔</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.3.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.1.1" style="background-color:#EFEFEF;">Deepseek-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib137" title="">137</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.2.1" style="background-color:#EFEFEF;">Deepseek-V3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.3.1" style="background-color:#EFEFEF;">T</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.4.1" style="background-color:#EFEFEF;">SFT+RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.5.1" style="background-color:#EFEFEF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.6.1" style="background-color:#EFEFEF;">GRPO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.3.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.3.7.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.1.4.1" style="padding-left:1.7pt;padding-right:1.7pt;">LLaVA-Reasoner <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib138" title="">138</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.2" style="padding-left:1.7pt;padding-right:1.7pt;">LLaMA3-LLaVA-NEXT-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.4" style="padding-left:1.7pt;padding-right:1.7pt;">SFT+RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.5" style="padding-left:1.7pt;padding-right:1.7pt;">✔</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.6" style="padding-left:1.7pt;padding-right:1.7pt;">DPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.4.7" style="padding-left:1.7pt;padding-right:1.7pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.5.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.1.1" style="background-color:#EFEFEF;">Insight-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib91" title="">91</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.2.1" style="background-color:#EFEFEF;">LLaMA3-LLaVA-NEXT-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.4.1" style="background-color:#EFEFEF;">SFT+RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.5.1" style="background-color:#EFEFEF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.6.1" style="background-color:#EFEFEF;">DPO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.5.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.5.7.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T2.1.6.1" style="padding-left:1.7pt;padding-right:1.7pt;">Multimodal-Open-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib99" title="">99</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.2" style="padding-left:1.7pt;padding-right:1.7pt;">Qwen2-VL-7B-Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.6" style="padding-left:1.7pt;padding-right:1.7pt;">GRPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.6.7" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.7.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.1.1" style="background-color:#EFEFEF;">R1-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib101" title="">101</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.2.1" style="background-color:#EFEFEF;">Qwen2.5-VL-7B-Instruct</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.4.1" style="background-color:#EFEFEF;">SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.6.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.7.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.7.7.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.8.1" style="padding-left:1.7pt;padding-right:1.7pt;">R1-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib236" title="">236</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.2" style="padding-left:1.7pt;padding-right:1.7pt;">Qwen2.5-VL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.6" style="padding-left:1.7pt;padding-right:1.7pt;">GPRO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.8.7" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.9.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.1.1" style="background-color:#EFEFEF;">VLM-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib237" title="">237</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.2.1" style="background-color:#EFEFEF;">Qwen2.5-VL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.4.1" style="background-color:#EFEFEF;">RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.5.1" style="background-color:#EFEFEF;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.6.1" style="background-color:#EFEFEF;">GPRO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.9.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.9.7.1" style="background-color:#EFEFEF;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.10.1" style="padding-left:1.7pt;padding-right:1.7pt;">LMM-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib238" title="">238</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.2" style="padding-left:1.7pt;padding-right:1.7pt;">Qwen2.5-VL-Instruct-3B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.6" style="padding-left:1.7pt;padding-right:1.7pt;">PPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.10.7" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.11" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.11.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.1.1" style="background-color:#EFEFEF;">Curr-ReFT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib243" title="">243</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.2.1" style="background-color:#EFEFEF;">Qwen2.5-VL-3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.4.1" style="background-color:#EFEFEF;">RL+SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.5.1" style="background-color:#EFEFEF;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.6.1" style="background-color:#EFEFEF;">GPRO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.11.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.11.7.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.12.1" style="padding-left:1.7pt;padding-right:1.7pt;">Seg-Zero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib244" title="">244</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.2" style="padding-left:1.7pt;padding-right:1.7pt;">Qwen2.5-VL-3B + SAM2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.6" style="padding-left:1.7pt;padding-right:1.7pt;">GPRO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.12.7" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.13" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.13.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.1.1" style="background-color:#EFEFEF;">MM-Eureka <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib245" title="">245</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.2.1" style="background-color:#EFEFEF;">InternVL2.5-Instruct-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.4.1" style="background-color:#EFEFEF;">SFT+RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.5.1" style="background-color:#EFEFEF;">✔</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.6.1" style="background-color:#EFEFEF;">RLOO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.13.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.13.7.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.14.1" style="padding-left:1.7pt;padding-right:1.7pt;">MM-Eureka-Zero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib245" title="">245</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.2" style="padding-left:1.7pt;padding-right:1.7pt;">InternVL2.5-Pretrained-38B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.6" style="padding-left:1.7pt;padding-right:1.7pt;">RLOO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.14.7" style="padding-left:1.7pt;padding-right:1.7pt;">✔</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.15" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.15.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.1.1" style="background-color:#EFEFEF;">VisualThinker-R1-Zero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib246" title="">246</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.2.1" style="background-color:#EFEFEF;">Qwen2-VL-2B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.3.1" style="background-color:#EFEFEF;">T,I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.4.1" style="background-color:#EFEFEF;">RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.5.1" style="background-color:#EFEFEF;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.6.1" style="background-color:#EFEFEF;">GPRO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.15.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.15.7.1" style="background-color:#EFEFEF;">✔</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.16.1" style="padding-left:1.7pt;padding-right:1.7pt;">Easy-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib239" title="">239</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.2" style="padding-left:1.7pt;padding-right:1.7pt;">Qwen2.5-VL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.4" style="padding-left:1.7pt;padding-right:1.7pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.5" style="padding-left:1.7pt;padding-right:1.7pt;">✗</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.6" style="padding-left:1.7pt;padding-right:1.7pt;">GRPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.16.7" style="padding-left:1.7pt;padding-right:1.7pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.17" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T2.1.17.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.1.1" style="background-color:#EFEFEF;">Open-R1-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib242" title="">242</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.2.1" style="background-color:#EFEFEF;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.3.1" style="background-color:#EFEFEF;">T,I,V</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.4.1" style="background-color:#EFEFEF;">RL</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.5.1" style="background-color:#EFEFEF;">✗</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.6.1" style="background-color:#EFEFEF;">GRPO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.17.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S4.T2.1.17.7.1" style="background-color:#EFEFEF;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T2.1.18.1" style="padding-left:1.7pt;padding-right:1.7pt;">R1-Omni <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib130" title="">130</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.2" style="padding-left:1.7pt;padding-right:1.7pt;">HumanOmni-0.5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.3" style="padding-left:1.7pt;padding-right:1.7pt;">T,I,V,A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.4" style="padding-left:1.7pt;padding-right:1.7pt;">SFT+RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.5" style="padding-left:1.7pt;padding-right:1.7pt;">✔</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.6" style="padding-left:1.7pt;padding-right:1.7pt;">GRPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.18.7" style="padding-left:1.7pt;padding-right:1.7pt;">-</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares various multimodal large language models (MLLMs) that utilize reinforcement learning for reasoning tasks.  It highlights key characteristics such as the foundational LLM used, the modalities supported (text, image, video, audio), whether supervised fine-tuning (SFT) was employed, the reinforcement learning algorithm used, whether cold start capabilities were present and whether the model demonstrated an 'aha moment', an indication of insightful reasoning.  Deepseek-R1, a text-only model, is included for comparative analysis.
> <details>
> <summary>read the caption</summary>
> Table 2: Multimodal reasoning models utilizing reinforcement learning. Deepseek-R1 serves as a text-only LLM for comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.1">
<tr class="ltx_tr" id="S5.T3.1.1" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S5.T3.1.1.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1" style="background-color:#DAE8FC;">Datasets</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1" style="background-color:#DAE8FC;">Year</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.1" style="background-color:#DAE8FC;">Task</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.1" style="background-color:#DAE8FC;">Domain</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.5.1" style="background-color:#DAE8FC;">Modality</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.6.1" style="background-color:#DAE8FC;">Format</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T3.1.1.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.7.1" style="background-color:#DAE8FC;">Samples</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.2">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="7" id="S5.T3.1.2.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.1.2.1.1">Training with rationale</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.3.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.1.1" style="background-color:#EFEFEF;">ScienceQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib157" title="">157</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.2.1" style="background-color:#EFEFEF;">2022</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.4.1" style="background-color:#EFEFEF;">Science</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.6.1" style="background-color:#EFEFEF;">MC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.3.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.3.7.1" style="background-color:#EFEFEF;">21K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.4.1" style="padding-left:1.7pt;padding-right:1.7pt;">A-OKVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib158" title="">158</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.2" style="padding-left:1.7pt;padding-right:1.7pt;">2022</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.3" style="padding-left:1.7pt;padding-right:1.7pt;">VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.4.7" style="padding-left:1.7pt;padding-right:1.7pt;">25K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.5.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.1.1" style="background-color:#EFEFEF;">EgoCoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib39" title="">39</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.2.1" style="background-color:#EFEFEF;">2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.3.1" style="background-color:#EFEFEF;">VideoQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.5.1" style="background-color:#EFEFEF;">T, V</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.6.1" style="background-color:#EFEFEF;">Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.5.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.5.7.1" style="background-color:#EFEFEF;">200M</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.6.1" style="padding-left:1.7pt;padding-right:1.7pt;">VideoCoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib159" title="">159</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.3" style="padding-left:1.7pt;padding-right:1.7pt;">VideoQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.4" style="padding-left:1.7pt;padding-right:1.7pt;">Human Action</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, V</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.6" style="padding-left:1.7pt;padding-right:1.7pt;">Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.6.7" style="padding-left:1.7pt;padding-right:1.7pt;">22K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.7" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.7.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.1.1" style="background-color:#EFEFEF;">VideoEspresso <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib160" title="">160</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.3.1" style="background-color:#EFEFEF;">VideoQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.5.1" style="background-color:#EFEFEF;">T, V</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.6.1" style="background-color:#EFEFEF;">Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.7.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.7.7.1" style="background-color:#EFEFEF;">202,164</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.8.1" style="padding-left:1.7pt;padding-right:1.7pt;">EMMA-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib140" title="">140</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.3" style="padding-left:1.7pt;padding-right:1.7pt;">Robot Manipulation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.4" style="padding-left:1.7pt;padding-right:1.7pt;">Indoor</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, V</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.6" style="padding-left:1.7pt;padding-right:1.7pt;">Robot Actions</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.8.7" style="padding-left:1.7pt;padding-right:1.7pt;">60K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.9" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.9.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.1.1" style="background-color:#EFEFEF;">M3CoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib161" title="">161</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.4.1" style="background-color:#EFEFEF;">Science, Math, Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.6.1" style="background-color:#EFEFEF;">MC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.9.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.9.7.1" style="background-color:#EFEFEF;">11.4K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.10.1" style="padding-left:1.7pt;padding-right:1.7pt;">MAVIS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib162" title="">162</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.3" style="padding-left:1.7pt;padding-right:1.7pt;">ScienceQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.4" style="padding-left:1.7pt;padding-right:1.7pt;">Math</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.10.7" style="padding-left:1.7pt;padding-right:1.7pt;">834K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.11" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.11.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.1.1" style="background-color:#EFEFEF;">LLaVA-CoT-100k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib225" title="">225</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.4.1" style="background-color:#EFEFEF;">Common, Science</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.11.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.11.7.1" style="background-color:#EFEFEF;">834K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.12.1" style="padding-left:1.7pt;padding-right:1.7pt;">MAmmoTH-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib252" title="">252</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.3" style="padding-left:1.7pt;padding-right:1.7pt;">Diverse</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.4" style="padding-left:1.7pt;padding-right:1.7pt;">Diverse</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.12.7" style="padding-left:1.7pt;padding-right:1.7pt;">12M</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.13" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.13.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.1.1" style="background-color:#EFEFEF;">Mulberry-260k <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib94" title="">94</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.3.1" style="background-color:#EFEFEF;">Diverse</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.4.1" style="background-color:#EFEFEF;">Diverse</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.13.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.13.7.1" style="background-color:#EFEFEF;">260K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.14.1" style="padding-left:1.7pt;padding-right:1.7pt;">MM-Verify <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib253" title="">253</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.2" style="padding-left:1.7pt;padding-right:1.7pt;">2025</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.3" style="padding-left:1.7pt;padding-right:1.7pt;">MathQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.4" style="padding-left:1.7pt;padding-right:1.7pt;">Math</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.14.7" style="padding-left:1.7pt;padding-right:1.7pt;">59,772</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.15" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.15.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.1.1" style="background-color:#EFEFEF;">VisualPRM400K <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib241" title="">241</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.2.1" style="background-color:#EFEFEF;">2025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.3.1" style="background-color:#EFEFEF;">ScienceQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.4.1" style="background-color:#EFEFEF;">Math, Science</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.15.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.15.7.1" style="background-color:#EFEFEF;">400K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.16.1" style="padding-left:1.7pt;padding-right:1.7pt;">R1-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib101" title="">101</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.2" style="padding-left:1.7pt;padding-right:1.7pt;">2025</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.3" style="padding-left:1.7pt;padding-right:1.7pt;">Diverse</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.4" style="padding-left:1.7pt;padding-right:1.7pt;">Diverse</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.16.7" style="padding-left:1.7pt;padding-right:1.7pt;">155K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.17">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="7" id="S5.T3.1.17.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.1.17.1.1">Evaluation without rationale</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.18" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.18.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.1.1" style="background-color:#EFEFEF;">MMMU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib163" title="">163</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.2.1" style="background-color:#EFEFEF;">2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.4.1" style="background-color:#EFEFEF;">Arts, Science</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.18.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.18.7.1" style="background-color:#EFEFEF;">11.5K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.19.1" style="padding-left:1.7pt;padding-right:1.7pt;">SEED <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib164" title="">164</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.2" style="padding-left:1.7pt;padding-right:1.7pt;">2023</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.3" style="padding-left:1.7pt;padding-right:1.7pt;">VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.19.7" style="padding-left:1.7pt;padding-right:1.7pt;">19K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.20" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.20.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.1.1" style="background-color:#EFEFEF;">MathVista <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib165" title="">165</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.2.1" style="background-color:#EFEFEF;">2023</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.3.1" style="background-color:#EFEFEF;">ScienceQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.4.1" style="background-color:#EFEFEF;">Math</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.20.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.20.7.1" style="background-color:#EFEFEF;">6,141</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.21.1" style="padding-left:1.7pt;padding-right:1.7pt;">MathVerse <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib166" title="">166</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.3" style="padding-left:1.7pt;padding-right:1.7pt;">ScienceQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.4" style="padding-left:1.7pt;padding-right:1.7pt;">Math</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.21.7" style="padding-left:1.7pt;padding-right:1.7pt;">15K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.22" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.22.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.1.1" style="background-color:#EFEFEF;">Math-Vision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib167" title="">167</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.3.1" style="background-color:#EFEFEF;">ScienceQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.4.1" style="background-color:#EFEFEF;">Math</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.22.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.22.7.1" style="background-color:#EFEFEF;">3040</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.23.1" style="padding-left:1.7pt;padding-right:1.7pt;">MeViS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib171" title="">171</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.2" style="padding-left:1.7pt;padding-right:1.7pt;">2023</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.3" style="padding-left:1.7pt;padding-right:1.7pt;">Referring VOS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, V</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.6" style="padding-left:1.7pt;padding-right:1.7pt;">Dense Mask</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.23.7" style="padding-left:1.7pt;padding-right:1.7pt;">2K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.24" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.24.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.1.1" style="background-color:#EFEFEF;">VSIBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib170" title="">170</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.3.1" style="background-color:#EFEFEF;">VideoQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.4.1" style="background-color:#EFEFEF;">Indoor</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.5.1" style="background-color:#EFEFEF;">T, V</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.24.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.24.7.1" style="background-color:#EFEFEF;">5K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.25.1" style="padding-left:1.7pt;padding-right:1.7pt;">HallusionBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib172" title="">172</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.3" style="padding-left:1.7pt;padding-right:1.7pt;">VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.6" style="padding-left:1.7pt;padding-right:1.7pt;">Yes-No</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.25.7" style="padding-left:1.7pt;padding-right:1.7pt;">1,129</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.26" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.26.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.1.1" style="background-color:#EFEFEF;">AV-Odyssey <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib254" title="">254</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.3.1" style="background-color:#EFEFEF;">AVQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.5.1" style="background-color:#EFEFEF;">T, V, A</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.6.1" style="background-color:#EFEFEF;">MC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.26.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.26.7.1" style="background-color:#EFEFEF;">4,555</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.27.1" style="padding-left:1.7pt;padding-right:1.7pt;">AVHBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib174" title="">174</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.3" style="padding-left:1.7pt;padding-right:1.7pt;">AVQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, V, A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.6" style="padding-left:1.7pt;padding-right:1.7pt;">Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.27.7" style="padding-left:1.7pt;padding-right:1.7pt;">5,816</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.28" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.28.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.1.1" style="background-color:#EFEFEF;">RefAVS-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib169" title="">169</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.3.1" style="background-color:#EFEFEF;">Referring AVS</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.5.1" style="background-color:#EFEFEF;">T, V, A</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.6.1" style="background-color:#EFEFEF;">Dense Mask</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.28.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.28.7.1" style="background-color:#EFEFEF;">4,770</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.29.1" style="padding-left:1.7pt;padding-right:1.7pt;">MMAU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib255" title="">255</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.3" style="padding-left:1.7pt;padding-right:1.7pt;">AQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.29.7" style="padding-left:1.7pt;padding-right:1.7pt;">10K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.30" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.30.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.1.1" style="background-color:#EFEFEF;">AVTrustBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib173" title="">173</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.2.1" style="background-color:#EFEFEF;">2025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.3.1" style="background-color:#EFEFEF;">AVQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.5.1" style="background-color:#EFEFEF;">T, V, A</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.30.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.30.7.1" style="background-color:#EFEFEF;">600K</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.31.1" style="padding-left:1.7pt;padding-right:1.7pt;">MIG-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib135" title="">135</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.2" style="padding-left:1.7pt;padding-right:1.7pt;">2025</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.3" style="padding-left:1.7pt;padding-right:1.7pt;">Multi-image Grounding</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.6" style="padding-left:1.7pt;padding-right:1.7pt;">BBox</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.31.7" style="padding-left:1.7pt;padding-right:1.7pt;">5.89K</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.32" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.32.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.1.1" style="background-color:#EFEFEF;">MedAgentsBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib256" title="">256</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.2.1" style="background-color:#EFEFEF;">2025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.3.1" style="background-color:#EFEFEF;">MedicalQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.4.1" style="background-color:#EFEFEF;">Medical</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.32.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.32.7.1" style="background-color:#EFEFEF;">862</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.33">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="7" id="S5.T3.1.33.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T3.1.33.1.1">Evaluation with rationale</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.34" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.34.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.1.1" style="background-color:#EFEFEF;">CoMT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib175" title="">175</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.6.1" style="background-color:#EFEFEF;">MC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.34.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.34.7.1" style="background-color:#EFEFEF;">3,853</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.35.1" style="padding-left:1.7pt;padding-right:1.7pt;">OmniBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib180" title="">180</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.3" style="padding-left:1.7pt;padding-right:1.7pt;">VideoQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I, A</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.35.7" style="padding-left:1.7pt;padding-right:1.7pt;">1,142</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.36" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.36.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.1.1" style="background-color:#EFEFEF;">WorldQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib176" title="">176</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.3.1" style="background-color:#EFEFEF;">VideoQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.4.1" style="background-color:#EFEFEF;">Common</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.5.1" style="background-color:#EFEFEF;">T, V, A</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.6.1" style="background-color:#EFEFEF;">Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.36.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.36.7.1" style="background-color:#EFEFEF;">1,007</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.37.1" style="padding-left:1.7pt;padding-right:1.7pt;">MiCEval <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib177" title="">177</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.2" style="padding-left:1.7pt;padding-right:1.7pt;">2024</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.3" style="padding-left:1.7pt;padding-right:1.7pt;">VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.4" style="padding-left:1.7pt;padding-right:1.7pt;">Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.6" style="padding-left:1.7pt;padding-right:1.7pt;">Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.37.7" style="padding-left:1.7pt;padding-right:1.7pt;">643</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.38" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.38.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.1.1" style="background-color:#EFEFEF;">OlympiadBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib178" title="">178</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.2.1" style="background-color:#EFEFEF;">2024</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.3.1" style="background-color:#EFEFEF;">ScienceQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.4.1" style="background-color:#EFEFEF;">Maths, Physics</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.6.1" style="background-color:#EFEFEF;">Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.38.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.38.7.1" style="background-color:#EFEFEF;">8,476</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.39">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.39.1" style="padding-left:1.7pt;padding-right:1.7pt;">MME-CoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib179" title="">179</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.2" style="padding-left:1.7pt;padding-right:1.7pt;">2025</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.3" style="padding-left:1.7pt;padding-right:1.7pt;">VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.4" style="padding-left:1.7pt;padding-right:1.7pt;">Science, Math, Common</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.39.7" style="padding-left:1.7pt;padding-right:1.7pt;">1,130</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.40" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S5.T3.1.40.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.1.1" style="background-color:#EFEFEF;">EMMA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib168" title="">168</a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.2" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.2.1" style="background-color:#EFEFEF;">2025</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.3.1" style="background-color:#EFEFEF;">VQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.4.1" style="background-color:#EFEFEF;">Science</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.5.1" style="background-color:#EFEFEF;">T, I</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.6.1" style="background-color:#EFEFEF;">MC and Open</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.1.40.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="S5.T3.1.40.7.1" style="background-color:#EFEFEF;">2,788</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_b" id="S5.T3.1.41.1" style="padding-left:1.7pt;padding-right:1.7pt;">VisualProcessBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib241" title="">241</a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.2" style="padding-left:1.7pt;padding-right:1.7pt;">2025</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.3" style="padding-left:1.7pt;padding-right:1.7pt;">ScienceQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.4" style="padding-left:1.7pt;padding-right:1.7pt;">Math, Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.5" style="padding-left:1.7pt;padding-right:1.7pt;">T, I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.6" style="padding-left:1.7pt;padding-right:1.7pt;">MC and Open</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S5.T3.1.41.7" style="padding-left:1.7pt;padding-right:1.7pt;">2,866</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists datasets and benchmarks used for training and evaluating Multimodal Chain-of-Thought (MCoT) reasoning models.  It categorizes datasets based on whether they provide rationales (step-by-step explanations) during training.  It also specifies the task (e.g., Visual Question Answering, Video Question Answering), domain (e.g., Science, Common Sense), modalities involved (Text, Image, Video, Audio), and the format of the answers (multiple-choice or open-ended).  The table also indicates the number of samples in each dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Datasets and Benchmarks for MCoT Training and Evaluation. “MC” and “Open” refer to multiple-choice and open-ended answer formats, while “T”, “I”, “V”, and “A” represent Text, Image, Video, and Audio, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T4.1">
<tr class="ltx_tr" id="S6.T4.1.1" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T4.1.1.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1" style="background-color:#DAE8FC;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.2.1" style="background-color:#DAE8FC;">Params (B)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.3.1" style="background-color:#DAE8FC;">MMMU (Val)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.4.1" style="background-color:#DAE8FC;">MathVista (mini)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.5.1" style="background-color:#DAE8FC;">Math-Vision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.6.1" style="background-color:#DAE8FC;">EMMA (mini)</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T4.1.2.1" style="padding-left:4.6pt;padding-right:4.6pt;">Human</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.3" style="padding-left:4.6pt;padding-right:4.6pt;">88.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.4" style="padding-left:4.6pt;padding-right:4.6pt;">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.5" style="padding-left:4.6pt;padding-right:4.6pt;">68.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.6" style="padding-left:4.6pt;padding-right:4.6pt;">77.75</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.3.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.1.1" style="background-color:#EFEFEF;">Random Choice</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.3.1" style="background-color:#EFEFEF;">22.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.4.1" style="background-color:#EFEFEF;">17.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.5.1" style="background-color:#EFEFEF;">7.17</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.3.6.1" style="background-color:#EFEFEF;">22.75</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.4.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.4.1.1">OpenAI</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.5.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.1.1" style="background-color:#EFEFEF;">o1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib216" title="">216</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.3.1" style="background-color:#EFEFEF;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.4.1" style="background-color:#EFEFEF;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.5.6.1" style="background-color:#EFEFEF;">45.75</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6">
<td class="ltx_td ltx_align_left" id="S6.T4.1.6.1" style="padding-left:4.6pt;padding-right:4.6pt;">GPT-4.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib257" title="">257</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.3" style="padding-left:4.6pt;padding-right:4.6pt;">74.4</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.4" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.6.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.7">
<td class="ltx_td ltx_align_left" id="S6.T4.1.7.1" style="padding-left:4.6pt;padding-right:4.6pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib212" title="">212</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.3" style="padding-left:4.6pt;padding-right:4.6pt;">69.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.4" style="padding-left:4.6pt;padding-right:4.6pt;">63.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.5" style="padding-left:4.6pt;padding-right:4.6pt;">30.39</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.7.6" style="padding-left:4.6pt;padding-right:4.6pt;">36.00</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.8" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.8.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.1.1" style="background-color:#EFEFEF;">GPT-4o mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib212" title="">212</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.3.1" style="background-color:#EFEFEF;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.4.1" style="background-color:#EFEFEF;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.8.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.8.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.9" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.9.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.1.1" style="background-color:#EFEFEF;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib258" title="">258</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.3.1" style="background-color:#EFEFEF;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.4.1" style="background-color:#EFEFEF;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.5.1" style="background-color:#EFEFEF;">23.98</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.9.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.9.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.10.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.10.1.1">Google &amp; DeepMind</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.11" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.11.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.1.1" style="background-color:#EFEFEF;">Gemini 2.0 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib259" title="">259</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.3.1" style="background-color:#EFEFEF;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.11.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.11.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.12">
<td class="ltx_td ltx_align_left" id="S6.T4.1.12.1" style="padding-left:4.6pt;padding-right:4.6pt;">Gemini 2.0 Flash <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib259" title="">259</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.3" style="padding-left:4.6pt;padding-right:4.6pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.4" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.5" style="padding-left:4.6pt;padding-right:4.6pt;">41.3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.12.6" style="padding-left:4.6pt;padding-right:4.6pt;">48.00</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.13" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.13.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.1.1" style="background-color:#EFEFEF;">Gemini 1.5 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib260" title="">260</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.3.1" style="background-color:#EFEFEF;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.4.1" style="background-color:#EFEFEF;">63.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.5.1" style="background-color:#EFEFEF;">19.24</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.13.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.13.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.14.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.14.1.1">Anthropic</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.15" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.15.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.1.1" style="background-color:#EFEFEF;">Claude 3.7 Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib194" title="">194</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.3.1" style="background-color:#EFEFEF;">75</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.15.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.15.6.1" style="background-color:#EFEFEF;">56.50</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.16">
<td class="ltx_td ltx_align_left" id="S6.T4.1.16.1" style="padding-left:4.6pt;padding-right:4.6pt;">Claude 3.5 Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib194" title="">194</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.3" style="padding-left:4.6pt;padding-right:4.6pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.4" style="padding-left:4.6pt;padding-right:4.6pt;">67.7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.5" style="padding-left:4.6pt;padding-right:4.6pt;">37.99</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.16.6" style="padding-left:4.6pt;padding-right:4.6pt;">37.00</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.17" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.17.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.1.1" style="background-color:#EFEFEF;">Claude 3 Opus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib194" title="">194</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.17.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.17.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.3.1" style="background-color:#EFEFEF;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.17.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.4.1" style="background-color:#EFEFEF;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.17.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.5.1" style="background-color:#EFEFEF;">27.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.17.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.17.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.18">
<td class="ltx_td ltx_align_left" id="S6.T4.1.18.1" style="padding-left:4.6pt;padding-right:4.6pt;">Claude 3 Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib194" title="">194</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.18.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.18.3" style="padding-left:4.6pt;padding-right:4.6pt;">53.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.18.4" style="padding-left:4.6pt;padding-right:4.6pt;">47.9</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.18.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.18.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.19.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.19.1.1">xAI</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.20" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.20.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.1.1" style="background-color:#EFEFEF;">Grok-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib261" title="">261</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.20.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.20.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.3.1" style="background-color:#EFEFEF;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.20.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.20.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.20.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.20.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.21">
<td class="ltx_td ltx_align_left" id="S6.T4.1.21.1" style="padding-left:4.6pt;padding-right:4.6pt;">Grok-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib262" title="">262</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.21.2" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.21.3" style="padding-left:4.6pt;padding-right:4.6pt;">66.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.21.4" style="padding-left:4.6pt;padding-right:4.6pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.21.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.21.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.22" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.22.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.1.1" style="background-color:#EFEFEF;">Grok-2 mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib262" title="">262</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.22.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.22.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.3.1" style="background-color:#EFEFEF;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.22.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.4.1" style="background-color:#EFEFEF;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.22.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.22.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.22.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.23.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.23.1.1">Moonshot</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.24" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.24.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.1.1" style="background-color:#EFEFEF;">Kimi-k1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib263" title="">263</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.24.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.2.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.24.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.3.1" style="background-color:#EFEFEF;">70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.24.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.4.1" style="background-color:#EFEFEF;">74.9 (test)</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.24.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.5.1" style="background-color:#EFEFEF;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.24.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.24.6.1" style="background-color:#EFEFEF;">33.75</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.25">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.25.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.25.1.1">Alibaba</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.26" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.26.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.1.1" style="background-color:#EFEFEF;">QVQ-72B-Preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib264" title="">264</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.26.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.2.1" style="background-color:#EFEFEF;">72</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.26.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.3.1" style="background-color:#EFEFEF;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.26.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.4.1" style="background-color:#EFEFEF;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.26.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.5.1" style="background-color:#EFEFEF;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.26.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.26.6.1" style="background-color:#EFEFEF;">32.00</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.27">
<td class="ltx_td ltx_align_left" id="S6.T4.1.27.1" style="padding-left:4.6pt;padding-right:4.6pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib265" title="">265</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.27.2" style="padding-left:4.6pt;padding-right:4.6pt;">72</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.27.3" style="padding-left:4.6pt;padding-right:4.6pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.27.4" style="padding-left:4.6pt;padding-right:4.6pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.27.5" style="padding-left:4.6pt;padding-right:4.6pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.27.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.28" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.28.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.1.1" style="background-color:#EFEFEF;">Qwen2-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib11" title="">11</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.28.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.2.1" style="background-color:#EFEFEF;">72</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.28.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.3.1" style="background-color:#EFEFEF;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.28.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.4.1" style="background-color:#EFEFEF;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.28.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.5.1" style="background-color:#EFEFEF;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.28.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.28.6.1" style="background-color:#EFEFEF;">37.25</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.29">
<td class="ltx_td ltx_align_left" id="S6.T4.1.29.1" style="padding-left:4.6pt;padding-right:4.6pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib265" title="">265</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.29.2" style="padding-left:4.6pt;padding-right:4.6pt;">7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.29.3" style="padding-left:4.6pt;padding-right:4.6pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.29.4" style="padding-left:4.6pt;padding-right:4.6pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.29.5" style="padding-left:4.6pt;padding-right:4.6pt;">25.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.29.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.30" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.30.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.1.1" style="background-color:#EFEFEF;">Qwen2-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib11" title="">11</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.30.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.2.1" style="background-color:#EFEFEF;">7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.30.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.3.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.30.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.30.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.5.1" style="background-color:#EFEFEF;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.30.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.30.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.31">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.31.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.31.1.1">OpenGVLab</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.32" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.32.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.1.1" style="background-color:#EFEFEF;">InternVL2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib266" title="">266</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.32.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.2.1" style="background-color:#EFEFEF;">78</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.32.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.3.1" style="background-color:#EFEFEF;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.32.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.32.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.32.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.32.6.1" style="background-color:#EFEFEF;">35.25</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.33">
<td class="ltx_td ltx_align_left" id="S6.T4.1.33.1" style="padding-left:4.6pt;padding-right:4.6pt;">InternVL2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib267" title="">267</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.33.2" style="padding-left:4.6pt;padding-right:4.6pt;">76</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.33.3" style="padding-left:4.6pt;padding-right:4.6pt;">58.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.33.4" style="padding-left:4.6pt;padding-right:4.6pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.33.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.33.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.34">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.34.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.34.1.1">LLaMA</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.35" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.35.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.1.1" style="background-color:#EFEFEF;">Llama-3.2-90B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib268" title="">268</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.35.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.2.1" style="background-color:#EFEFEF;">90</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.35.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.3.1" style="background-color:#EFEFEF;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.35.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.4.1" style="background-color:#EFEFEF;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.35.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.35.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.35.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.36">
<td class="ltx_td ltx_align_left" id="S6.T4.1.36.1" style="padding-left:4.6pt;padding-right:4.6pt;">Llama-3.2-11B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib268" title="">268</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.36.2" style="padding-left:4.6pt;padding-right:4.6pt;">11</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.36.3" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.36.4" style="padding-left:4.6pt;padding-right:4.6pt;">48.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.36.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.36.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.37">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.37.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.37.1.1">LLaVA</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.38" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.38.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.1.1" style="background-color:#EFEFEF;">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib269" title="">269</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.38.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.2.1" style="background-color:#EFEFEF;">72</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.38.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.3.1" style="background-color:#EFEFEF;">56.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.38.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.4.1" style="background-color:#EFEFEF;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.38.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.38.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.38.6.1" style="background-color:#EFEFEF;">27.25</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.39">
<td class="ltx_td ltx_align_left" id="S6.T4.1.39.1" style="padding-left:4.6pt;padding-right:4.6pt;">LlaVA-NEXT-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib270" title="">270</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.39.2" style="padding-left:4.6pt;padding-right:4.6pt;">72</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.39.3" style="padding-left:4.6pt;padding-right:4.6pt;">49.9</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.39.4" style="padding-left:4.6pt;padding-right:4.6pt;">46.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.39.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.39.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.40" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.40.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.1.1" style="background-color:#EFEFEF;">LLaVA-NEXT-34B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib270" title="">270</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.40.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.2.1" style="background-color:#EFEFEF;">34</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.40.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.3.1" style="background-color:#EFEFEF;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.40.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.4.1" style="background-color:#EFEFEF;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.40.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.40.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.40.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.41">
<td class="ltx_td ltx_align_left" id="S6.T4.1.41.1" style="padding-left:4.6pt;padding-right:4.6pt;">LLaVA-NEXT-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib270" title="">270</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.41.2" style="padding-left:4.6pt;padding-right:4.6pt;">8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.41.3" style="padding-left:4.6pt;padding-right:4.6pt;">41.7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.41.4" style="padding-left:4.6pt;padding-right:4.6pt;">37.5</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.41.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.41.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.42" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.42.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.1.1" style="background-color:#EFEFEF;">LLaVA-Reasoner <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib138" title="">138</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.42.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.2.1" style="background-color:#EFEFEF;">8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.42.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.3.1" style="background-color:#EFEFEF;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.42.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.4.1" style="background-color:#EFEFEF;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.42.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.42.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.42.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.43">
<td class="ltx_td ltx_align_left" id="S6.T4.1.43.1" style="padding-left:4.6pt;padding-right:4.6pt;">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib271" title="">271</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.43.2" style="padding-left:4.6pt;padding-right:4.6pt;">13</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.43.3" style="padding-left:4.6pt;padding-right:4.6pt;">36.4</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.43.4" style="padding-left:4.6pt;padding-right:4.6pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.43.5" style="padding-left:4.6pt;padding-right:4.6pt;">11.12</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.43.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.44">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S6.T4.1.44.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T4.1.44.1.1">Community</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.45" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.45.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.1.1" style="background-color:#EFEFEF;">Mulberry <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib94" title="">94</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.45.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.2.1" style="background-color:#EFEFEF;">7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.45.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.3.1" style="background-color:#EFEFEF;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.45.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.4.1" style="background-color:#EFEFEF;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.45.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.45.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.45.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.46">
<td class="ltx_td ltx_align_left" id="S6.T4.1.46.1" style="padding-left:4.6pt;padding-right:4.6pt;">MAmmoTH-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib252" title="">252</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.46.2" style="padding-left:4.6pt;padding-right:4.6pt;">8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.46.3" style="padding-left:4.6pt;padding-right:4.6pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.46.4" style="padding-left:4.6pt;padding-right:4.6pt;">67.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.46.5" style="padding-left:4.6pt;padding-right:4.6pt;">24.4</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.46.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.47" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.47.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.1.1" style="background-color:#EFEFEF;">MM-Eureka <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib245" title="">245</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.47.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.2.1" style="background-color:#EFEFEF;">8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.47.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.3.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.47.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.4.1" style="background-color:#EFEFEF;">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.47.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.5.1" style="background-color:#EFEFEF;">22.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.47.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.47.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.48">
<td class="ltx_td ltx_align_left" id="S6.T4.1.48.1" style="padding-left:4.6pt;padding-right:4.6pt;">MM-Eureka-Zero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib245" title="">245</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.48.2" style="padding-left:4.6pt;padding-right:4.6pt;">38</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.48.3" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.48.4" style="padding-left:4.6pt;padding-right:4.6pt;">64.2</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.48.5" style="padding-left:4.6pt;padding-right:4.6pt;">26.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.48.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.49" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.49.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.1.1" style="background-color:#EFEFEF;">Curr-ReFT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib243" title="">243</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.49.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.2.1" style="background-color:#EFEFEF;">7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.49.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.3.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.49.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.4.1" style="background-color:#EFEFEF;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.49.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.49.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.49.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.50">
<td class="ltx_td ltx_align_left" id="S6.T4.1.50.1" style="padding-left:4.6pt;padding-right:4.6pt;">Curr-ReFT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib243" title="">243</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.50.2" style="padding-left:4.6pt;padding-right:4.6pt;">3</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.50.3" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.50.4" style="padding-left:4.6pt;padding-right:4.6pt;">58.6</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.50.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.50.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.51" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.51.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.1.1" style="background-color:#EFEFEF;">LMM-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib238" title="">238</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.51.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.2.1" style="background-color:#EFEFEF;">3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.51.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.3.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.51.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.4.1" style="background-color:#EFEFEF;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.51.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.5.1" style="background-color:#EFEFEF;">26.35</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.51.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.51.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.52">
<td class="ltx_td ltx_align_left" id="S6.T4.1.52.1" style="padding-left:4.6pt;padding-right:4.6pt;">LlamaV-o1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib97" title="">97</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.52.2" style="padding-left:4.6pt;padding-right:4.6pt;">11</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.52.3" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.52.4" style="padding-left:4.6pt;padding-right:4.6pt;">54.4</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.52.5" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.52.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.53" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left" id="S6.T4.1.53.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.1.1" style="background-color:#EFEFEF;">R1-Onevision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib101" title="">101</a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.53.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.2.1" style="background-color:#EFEFEF;">7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.53.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.3.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.53.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.4.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.53.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.5.1" style="background-color:#EFEFEF;">26.16</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.53.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.53.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.54">
<td class="ltx_td ltx_align_left" id="S6.T4.1.54.1" style="padding-left:4.6pt;padding-right:4.6pt;">Virgo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib95" title="">95</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.54.2" style="padding-left:4.6pt;padding-right:4.6pt;">7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.54.3" style="padding-left:4.6pt;padding-right:4.6pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.54.4" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.54.5" style="padding-left:4.6pt;padding-right:4.6pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.54.6" style="padding-left:4.6pt;padding-right:4.6pt;">-</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.55" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S6.T4.1.55.1" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.1.1" style="background-color:#EFEFEF;">Insight-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12605v1#bib.bib91" title="">91</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.55.2" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.2.1" style="background-color:#EFEFEF;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.55.3" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.3.1" style="background-color:#EFEFEF;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.55.4" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.4.1" style="background-color:#EFEFEF;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.55.5" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.5.1" style="background-color:#EFEFEF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T4.1.55.6" style="padding-left:4.6pt;padding-right:4.6pt;"><span class="ltx_text" id="S6.T4.1.55.6.1" style="background-color:#EFEFEF;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various multimodal large language models (MLLMs) from different institutions. The comparison is based on four benchmarks: MMMU (Validation set), MathVista (Mini version), Math-Vision, and EMMA (Mini version).  Each benchmark likely tests different aspects of MLLM capabilities, such as mathematical reasoning, problem-solving, and understanding of visual and textual information. The table allows readers to quickly assess the relative performance of different MLLMs in these benchmark tasks, highlighting the strengths and weaknesses of various models.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of MLLMs from various institutions across four benchmarks: MMMU (Val), MathVista (Mini), Math-Vision, and EMMA (Mini).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12605/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12605/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}