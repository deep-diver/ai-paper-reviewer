---
title: "Step1X-Edit: A Practical Framework for General Image Editing"
summary: "Step1X-Edit: A practical framework for general image editing, outperforming existing models and approaching closed-source performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 StepFun",]
showSummary: true
date: 2025-04-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17761 {{< /keyword >}}
{{< keyword icon="writer" >}} Shiyu Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17761" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17761" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17761/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Image editing tech has advanced rapidly with models like GPT-40, showcasing impressive capabilities. However, a gap persists between open-source algorithms and closed-source models, limiting reproducibility and transparency. Existing open-source efforts are not good enough and there are issues with data scarcity and alignment. To address this gap, researchers aim to narrow this performance gap, pushing evaluation. 



To address these issues, the study introduces a state-of-the-art image editing model. A data generation pipeline is designed to produce high-quality editing data. It develops GEdit-Bench, a benchmark grounded in real-world usages, for evaluation. The model adopts a Multimodal LLM and outperforms open-source baselines, approaching leading proprietary models in performance. The project name is Step1X-Edit.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Step1X-Edit, a new open-source image editing framework, achieves performance rivaling closed-source models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new high-quality image editing dataset and benchmark (GEdit-Bench) are introduced for training and evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework combines a multimodal LLM with a diffusion image decoder for precise and faithful image editing. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is crucial, bridging the gap between **open-source and closed-source image editing**. The new benchmark supports thorough evaluation, promoting authentic image editing. It inspires future research, enhancing editing capabilities and real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17761/x1.png)

> 🔼 Figure 1 showcases the capabilities of Step1X-Edit, a novel open-source image editing model.  It demonstrates the model's ability to perform a wide range of editing tasks, achieving results comparable to closed-source, proprietary models.  The figure displays diverse before-and-after image pairs, each illustrating a different editing operation. These operations include motion changes, material modifications, subject additions and removals, background alterations, style transfers, text modifications, portrait beautifications, and color adjustments.  The variety and quality of the edits highlight Step1X-Edit's comprehensive and powerful editing capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Step1X-Edit. Step1X-Edit is an open-source general editing model that achieves proprietary-level performance with comprehensive editing capabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.1.1">Benchmarks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.2.1">Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.3.1">Real Image</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.4.1">Genuine Instruction</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.5.1">Human Filtering</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.6.1">#Sub-tasks</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.7.1">Public Availability</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.1.2.1.1">EditBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib47" title="">47</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.2">240</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.3"><span class="ltx_text" id="S4.T1.2.1.2.1.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.4"><span class="ltx_text" id="S4.T1.2.1.2.1.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.5"><span class="ltx_text" id="S4.T1.2.1.2.1.5.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.6">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.7"><span class="ltx_text" id="S4.T1.2.1.2.1.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.3.2.1">EmuEdit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib40" title="">40</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.2">3,055</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.3"><span class="ltx_text" id="S4.T1.2.1.3.2.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.4"><span class="ltx_text" id="S4.T1.2.1.3.2.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.5"><span class="ltx_text" id="S4.T1.2.1.3.2.5.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.6">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.7"><span class="ltx_text" id="S4.T1.2.1.3.2.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.4.3.1">HIVE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib60" title="">60</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.2">1,000</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.3"><span class="ltx_text" id="S4.T1.2.1.4.3.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.4"><span class="ltx_text" id="S4.T1.2.1.4.3.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.5"><span class="ltx_text" id="S4.T1.2.1.4.3.5.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.6">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.7"><span class="ltx_text" id="S4.T1.2.1.4.3.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.5.4.1">HQ-Eidt <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.2">1,640</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.3"><span class="ltx_text" id="S4.T1.2.1.5.4.3.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.4"><span class="ltx_text" id="S4.T1.2.1.5.4.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.5"><span class="ltx_text" id="S4.T1.2.1.5.4.5.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.6">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.4.7"><span class="ltx_text" id="S4.T1.2.1.5.4.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.6.5.1">MagicBrush <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib57" title="">57</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.2">1,053</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.3"><span class="ltx_text" id="S4.T1.2.1.6.5.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.4"><span class="ltx_text" id="S4.T1.2.1.6.5.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.5"><span class="ltx_text" id="S4.T1.2.1.6.5.5.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.6">7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.5.7"><span class="ltx_text" id="S4.T1.2.1.6.5.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.7.6">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.7.6.1">AnyEdit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib39" title="">39</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.2">1,250</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.3"><span class="ltx_text" id="S4.T1.2.1.7.6.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.4"><span class="ltx_text" id="S4.T1.2.1.7.6.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.5"><span class="ltx_text" id="S4.T1.2.1.7.6.5.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.6">25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.7.6.7"><span class="ltx_text" id="S4.T1.2.1.7.6.7.1" style="color:#70B48F;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.8.7">
<td class="ltx_td ltx_align_left" id="S4.T1.2.1.8.7.1">ICE-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib30" title="">30</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.2">6,538</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.3"><span class="ltx_text" id="S4.T1.2.1.8.7.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.4"><span class="ltx_text" id="S4.T1.2.1.8.7.4.1" style="color:#F28080;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.5"><span class="ltx_text" id="S4.T1.2.1.8.7.5.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.6">31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.8.7.7"><span class="ltx_text" id="S4.T1.2.1.8.7.7.1" style="color:#F28080;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.9.8.1.1">GEdit-Bench(Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.2">606</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.3"><span class="ltx_text" id="S4.T1.2.1.9.8.3.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.4"><span class="ltx_text" id="S4.T1.2.1.9.8.4.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.5"><span class="ltx_text" id="S4.T1.2.1.9.8.5.1" style="color:#70B48F;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.6">11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.9.8.7"><span class="ltx_text" id="S4.T1.2.1.9.8.7.1" style="color:#70B48F;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares key characteristics of various open-source image editing benchmarks.  It highlights the limitations of existing benchmarks, which often rely on synthetic (not real-world) user inputs and lack significant human involvement in their creation and curation.  The table emphasizes that the lack of real-world data and human oversight in these existing datasets necessitates the creation of a new, more robust benchmark, GEdit-Bench, which is detailed in the paper. This new benchmark addresses the shortcomings by using real-world user instructions and incorporating human evaluation, resulting in a more accurate and reliable evaluation of image editing models.
> <details>
> <summary>read the caption</summary>
> Table 1: Key Attributes of Open-source Edit Benchmarks. The reliance of existing open-source benchmarks on synthetic user inputs and minimal human involvement highlights the necessity of our proposed GEdit-Bench.
> </details>





### In-depth insights


#### Edit Frontier
**Pushing the 'Edit Frontier' implies constant advancements** in image and video editing. It requires addressing limitations like task specificity and lack of general-purpose editability. **Future research involves creating more versatile models** supporting incremental editing, fine-grained region control, and instruction feedback. Bridging the gap between user intent and model action is key. Architectural innovations unifying understanding and generation are also necessary. **Evaluation benchmarks should become more complex** to reflect authentic real-world editing demands and facilitate comprehensive assessment of model performance across diverse editing scenarios. Data quality and diversity are also very important.

#### Step1X-Edit Model
The paper introduces Step1X-Edit, an **open-source image editing model** aiming to bridge the performance gap between open and closed-source systems. The model **leverages a multimodal LLM** to process reference images and user instructions, extracting latent embeddings integrated with a diffusion image decoder. A **key contribution is a new data generation pipeline** for high-quality training data and the GEdit-Bench benchmark for real-world instruction evaluation.  Step1X-Edit **outperforms existing open-source baselines** and approaches proprietary model performance, marking significant progress in general image editing.

#### GEdit-Bench
**GEdit-Bench** serves as a crucial component for assessing image editing models, addressing the limitations of existing benchmarks by prioritizing real-world applicability. The benchmark is carefully constructed with images and editing instructions that reflect actual user needs and diverse editing scenarios. This focus on **authentic evaluation** is significant. The efforts to create GEdit-Bench involve a meticulous data collection and filtering process, ensuring that the benchmark is both **representative** and of sufficient **quality** to support robust evaluations of image editing models. The benchmark distinguishes itself by grounding the evaluation in practical use cases rather than synthetic or artificial scenarios which can make the evaluation result more reliable.

#### Data Pipeline
The research paper highlights the crucial role of a **robust data pipeline** in achieving state-of-the-art image editing results. It acknowledges the limitations of existing datasets concerning scale and quality, which motivates the creation of a **new data generation pipeline**. This pipeline's design is geared towards producing high-quality image editing data, ensuring diversity and representativeness to support effective model training. The paper details a process of web crawling to gather image editing examples, followed by in-depth analysis and categorization into distinct types of edits. The pipeline aims to generate a large-scale dataset consisting of source images, editing instructions, and target images, which necessitates sophisticated steps. The inclusion of both **multimodal LLMs and human annotators** in a rigorous filtering process emphasizes the commitment to data quality. The goal is to create dataset that surpasses existing ones in scale and quality.

#### Future Editing
Future editing could involve more **seamless integration of AI** into existing creative workflows, allowing users to interact with images using **natural language commands** for highly specific and nuanced edits. This would require advancements in AI's understanding of context and semantics, enabling it to interpret complex instructions and generate realistic and consistent results. We might see the emergence of **highly personalized editing tools** that learn from user preferences and editing styles, automating repetitive tasks and suggesting creative options. The goal would be to have greater user control and **access to tools with zero-shot generalization** across various domains. Future research should focus on creating open datasets and evaluation metrics to promote the development of transparent and reproducible image editing methods. It is also important to consider **fairness and safety issues** in image editing techniques to prevent their misuse and ensure that they reflect a wider range of creative ideas and values.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17761/x2.png)

> 🔼 This bar chart compares the sizes of various image editing datasets.  It visually represents the number of data points (images and their corresponding editing instructions) in each dataset. This allows for a quick comparison of the scale of different publicly available and proprietary datasets used in image editing research, highlighting the relative size of the Step1X-Edit dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data Volume Comparison.
> </details>



![](https://arxiv.org/html/2504.17761/x3.png)

> 🔼 This figure provides a visual representation of the data creation pipeline and sub-task distribution used in the Step1X-Edit model.  The left side details the data creation pipeline, showing the steps involved in creating high-quality image editing data for each of the eleven sub-tasks. This includes processes such as annotation, segmentation, image generation, filtering, and human verification. Each sub-task (e.g., subject addition, background change, style transfer) has a dedicated pipeline illustrated in the figure. The right side shows a pie chart summarizing the proportion of the training data allocated to each sub-task, offering a clear view of data distribution among different editing operations.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data Construction Pipeline and Sub-Task Distribution.
> </details>



![](https://arxiv.org/html/2504.17761/x4.png)

> 🔼 This figure illustrates the architecture of the Step1X-Edit model.  The model takes both an image and editing instructions as input. A Multimodal Large Language Model (MLLM) processes the image and instructions to generate a set of 'editing tokens' that represent the desired changes.  These tokens are then passed through a connector module to a Diffusion in Transformer (DiT)-based network, which decodes the tokens and generates the final edited image.
> <details>
> <summary>read the caption</summary>
> Figure 4: Framework of Step1X-Edit. Step1X-Edit leverages the image understanding capabilities of MLLMs to parse editing instructions and generate editing tokens, which are then decoded into images using a DiT-based network.
> </details>



![](https://arxiv.org/html/2504.17761/x5.png)

> 🔼 The figure illustrates the de-identification process used to protect user privacy in the GEdit-Bench dataset.  The process involves a multi-faceted reverse image search across multiple public search engines to find publicly accessible alternative images similar to the original images. If no suitable alternatives are found, the editing instructions are carefully modified to maintain the original intent while ensuring anonymity. This ensures ethical data usage and preserves the benchmark's integrity.
> <details>
> <summary>read the caption</summary>
> Figure 5: De-Identification Process.
> </details>



![](https://arxiv.org/html/2504.17761/x10.png)

> 🔼 This figure displays the VIEScore results for a subset of the GEdit-Bench benchmark. The 'Intersection-subset' refers to the set of editing tasks where all the evaluated models (open-source and closed-source) successfully produced results. The VIEScore metric provides a comprehensive assessment of the image editing quality, encompassing semantic consistency (how well the edit adheres to the instructions), perceptual quality (how visually natural the edited image appears), and an overall score.  Each point on the radar chart represents a specific editing task category, and the distance of the point from the center indicates the model's performance in that category.
> <details>
> <summary>read the caption</summary>
> (a) VIEScore for the Intersection-subset.
> </details>



![](https://arxiv.org/html/2504.17761/x11.png)

> 🔼 This figure shows the VIEScore (Visual Instruction Evaluation Score) for all editing tasks in the GEdit-Bench benchmark.  VIEScore assesses the quality of image edits by considering semantic consistency, perceptual quality, and an overall score.  The full set includes all test samples, not just the subset where all models produced valid results. The radar chart visualizes the performance of each image editing model across different editing tasks.
> <details>
> <summary>read the caption</summary>
> (b) VIEScore for the Full set.
> </details>



![](https://arxiv.org/html/2504.17761/x12.png)

> 🔼 This figure shows the VIEScore (Visual Instruction Editing Score) for a subset of the GEdit-Bench benchmark.  The Intersection-subset includes only the results where all tested models successfully produced outputs for given instructions.  The VIEScore is composed of three metrics: semantic consistency, perceptual quality and an overall score, providing a comprehensive evaluation of the image editing results in various sub-tasks within the benchmark.
> <details>
> <summary>read the caption</summary>
> (c) VIEScore for the Intersection-subset.
> </details>



![](https://arxiv.org/html/2504.17761/x13.png)

> 🔼 This figure shows the VIEScore (Visual Instruction Editing Score) for all sub-tasks in the GEdit-Bench benchmark.  It's a radar chart comparing different image editing models, including open-source options and proprietary models such as GPT-40.  Each axis represents a specific editing task, and the distance from the center reflects the model's performance on that task, according to the VIEScore metric, which incorporates semantic consistency and perceptual quality assessments.  The chart visualizes a comprehensive comparison across multiple tasks for all tested models, illustrating their strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> (d) VIEScore for the Full set.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.2.2.2.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.3.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S4.T2.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">GEdit-Bench-EN (Intersection subset)</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T2.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">GEdit-Bench-EN (Full set)</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.1.1">G_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.2.1">G_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.3.1">G_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.4.1">Q_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.5.1">Q_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.6.1">Q_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.7.1">G_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.8.1">G_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.3.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.9.1">G_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.10.1">Q_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.11"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.11.1">Q_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3.1.12"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.3.1.12.1">Q_O</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.4.2.1">Instruct-Pix2Pix <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib8" title="">8</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.2">3.473</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.3">5.601</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.4.2.4">3.631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.5">4.836</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.6">6.948</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.4.2.7">4.655</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.8">3.575</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.9">5.491</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.4.2.10">3.684</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.11">4.772</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.12">6.870</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4.2.13">4.576</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.5.3.1">MagicBrush <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib57" title="">57</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.2">4.646</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.3">5.800</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.5.3.4">4.578</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.5">5.806</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.6">7.162</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.5.3.7">5.632</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.8">4.677</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.9">5.656</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.5.3.10">4.518</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.11">5.733</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.12">7.066</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.5.3.13">5.536</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.6.4.1">AnyEdit <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib55" title="">55</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.2">3.177</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.3">5.856</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.6.4.4">3.231</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.5">3.583</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.6">6.751</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.6.4.7">3.498</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.8">3.178</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.9">5.820</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.6.4.10">3.212</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.11">3.438</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.12">6.729</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6.4.13">3.361</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.7.5.1">OmniGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib51" title="">51</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.2">6.070</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.3">5.885</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.7.5.4">5.162</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.5">7.022</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.6">6.853</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.7.5.7">6.565</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.8">5.963</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.9">5.888</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.7.5.10">5.061</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.11">6.900</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.12">6.781</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7.5.13">6.413</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.8.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.1.1">Step1X-Edit</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.2.1">7.183</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.3.1">6.818</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.8.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.4.1">6.813</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.5.1">7.380</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.6.1">7.229</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.8.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.7.1">7.161</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.8.1">7.091</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.9"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.9.1">6.763</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.8.6.10"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.10.1">6.701</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.11"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.11.1">7.332</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.12"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.12.1">7.204</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.8.6.13"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.8.6.13.1">7.104</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.9.7.1">Gemini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib14" title="">14</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.2">6.697</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.3">6.638</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.9.7.4">6.322</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.5">7.276</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.6">7.306</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.9.7.7">6.978</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.8">6.732</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.9">6.606</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.9.7.10">6.315</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.11">7.287</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.12">7.315</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.9.7.13">6.982</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.10.8.1">Doubao <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib41" title="">41</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.2">7.004</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.3">7.215</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.10.8.4">6.828</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.5">7.417</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.6">7.635</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.10.8.7">7.273</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.8">6.916</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.9">7.188</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.10.8.10">6.754</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.11">7.382</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.12">7.639</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.10.8.13">7.241</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.2.2.11.9.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib29" title="">29</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.2">7.844</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.3">7.592</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.11.9.4">7.517</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.5">7.873</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.6">7.690</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.11.9.7">7.694</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.8">7.850</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.9">7.620</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.2.2.11.9.10">7.534</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.11">7.826</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.12">7.689</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.2.11.9.13">7.646</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of various image editing models' performance on the English version of the GEdit-Bench benchmark.  It shows the Semantic Consistency (SC), Perceptual Quality (PQ), and Overall (O) scores for each model, evaluated using both GPT-4.1 and Qwen2.5-VL-75B.  The results are broken down into two sets: an 'Intersection subset' including only the prompts where all models returned valid results (434 instances), and a 'Full set' containing all 606 prompts in the benchmark.  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative evaluation on GEdit-Bench-EN. All metrics are reported as higher-is-better (↑↑\uparrow↑). The Intersection subset reflects the subset of prompts where all methods return valid responses with a total of 434 instances; the Full set includes all the 606 instances. G_SC, G_PQ, and G_O refer to the metrics evaluated by GPT-4.1, while Q_SC, Q_PQ, and Q_O refer to the metrics evaluated by Qwen2.5-VL-75B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.2.2.2.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.3.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S4.T3.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">GEdit-Bench-CN (Intersection subset)</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">GEdit-Bench-CN (Full set)</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.1.1">G_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.2.1">G_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.3.1">G_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.4.1">Q_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.5.1">Q_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.6.1">Q_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.7.1">G_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.8"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.8.1">G_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.3.1.9"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.9.1">G_O</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.10"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.10.1">Q_SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.11"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.11.1">Q_PQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3.1.12"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.12.1">Q_O</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.2.2.4.2.1">Gemini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib14" title="">14</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.2">5.580</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.3">6.757</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.4.2.4">5.505</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.5">5.658</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.6">7.362</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.4.2.7">5.522</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.8">5.427</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.9">6.767</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.4.2.10">5.360</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.11">5.617</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.12">7.360</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4.2.13">5.485</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.5.3.1">Doubao <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib41" title="">41</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.2">7.076</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.3">7.315</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.5.3.4">6.869</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.5">7.122</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.6">7.669</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.5.3.7">7.062</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.8">6.984</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.9">7.273</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.5.3.10">6.772</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.11">7.116</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.12">7.667</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.5.3.13">7.063</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.2.2.6.4.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib29" title="">29</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.2">7.722</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.3">7.590</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.6.4.4">7.353</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.5">7.771</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.6">7.625</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.6.4.7">7.572</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.8">7.673</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.9">7.559</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.2.2.6.4.10">7.302</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.11">7.698</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.12">7.634</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.6.4.13">7.529</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.2.2.7.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.7.5.1.1">Step1X-Edit</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.2">7.250</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.3">6.855</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.2.2.7.5.4">6.898</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.5">7.347</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.6">7.327</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.2.2.7.5.7">7.232</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.8">7.204</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.9">6.869</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.2.2.7.5.10">6.861</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.11">7.282</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.12">7.303</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.2.2.7.5.13">7.161</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a quantitative comparison of various image editing models' performance on the GEdit-Bench-CN dataset, specifically focusing on Chinese instructions.  The evaluation uses three metrics: Semantic Consistency (SC), Perceptual Quality (PQ), and an Overall score (O).  These metrics are assessed both by GPT-4.1 and Qwen2.5-VL-75B to provide a more comprehensive evaluation.  The results are split into two sets: the Intersection subset (422 instances) where all models provided valid results, and the Full set (606 instances) including all prompts, regardless of model response validity.  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative evaluation on GEdit-Bench-CN. All metrics are reported as higher-is-better (↑↑\uparrow↑). The Intersection subset reflects the subset of prompts where all methods return valid responses with a total of 422 instances; the Full set includes all the 606 instances. G_SC, G_PQ, and G_O refer to the metrics evaluated by GPT-4.1, while Q_SC, Q_PQ, and Q_O refer to the metrics evaluated by Qwen2.5-VL-75B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.2.3.1.1"><span class="ltx_text" id="S4.T4.2.3.1.1.1" style="font-size:80%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.3.1.2">
<span class="ltx_text" id="S4.T4.2.3.1.2.1" style="font-size:80%;">Gemini </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.2.3.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib14" title="">14</a><span class="ltx_text" id="S4.T4.2.3.1.2.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.3.1.3">
<span class="ltx_text" id="S4.T4.2.3.1.3.1" style="font-size:80%;">Doubao </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.2.3.1.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib41" title="">41</a><span class="ltx_text" id="S4.T4.2.3.1.3.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.2.3.1.4">
<span class="ltx_text" id="S4.T4.2.3.1.4.1" style="font-size:80%;">GPT-4o </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.2.3.1.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.17761v1#bib.bib29" title="">29</a><span class="ltx_text" id="S4.T4.2.3.1.4.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.3.1.5"><span class="ltx_text" id="S4.T4.2.3.1.5.1" style="font-size:80%;">Step1X-Edit</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:80%;">UP-IS (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.2" style="font-size:80%;">)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2"><span class="ltx_text" id="S4.T4.1.1.2.1" style="font-size:80%;">7.109</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3"><span class="ltx_text" id="S4.T4.1.1.3.1" style="font-size:80%;">6.320</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.4"><span class="ltx_text" id="S4.T4.1.1.4.1" style="font-size:80%;">6.961</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.5"><span class="ltx_text" id="S4.T4.1.1.5.1" style="font-size:80%;">6.544</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.2.2.1">
<span class="ltx_text" id="S4.T4.2.2.1.1" style="font-size:80%;">UP-Full (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.1.m1.1"><semantics id="S4.T4.2.2.1.m1.1a"><mo id="S4.T4.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.1.m1.1b"><ci id="S4.T4.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.1.2" style="font-size:80%;">)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2"><span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:80%;">6.603</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.3"><span class="ltx_text" id="S4.T4.2.2.3.1" style="font-size:80%;">5.678</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.2.2.4"><span class="ltx_text" id="S4.T4.2.2.4.1" style="font-size:80%;">7.134</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.5"><span class="ltx_text" id="S4.T4.2.2.5.1" style="font-size:80%;">6.939</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user preference study conducted to evaluate the subjective quality of image editing results produced by four different models: Gemini, Doubao, GPT-40, and Step1X-Edit.  The study used the GEdit-Bench dataset, and user preferences were scored on a five-point scale for both a subset of the data (Intersection subset, where all models provided results) and the full dataset.  The scores represent the average user preferences and are reported as higher scores being better. UP-IS represents the scores for the Intersection subset, while UP-Full represents the scores for the complete dataset.  The table allows for a comparison of user preferences across different models for the overall quality of their image editing results.
> <details>
> <summary>read the caption</summary>
> Table 4: Overall user preference (UP) evaluation on GEdit-Bench. UP-IS and UP-Full represent user preference score for Intersection subset (IS) and Full set (Full), respectively. All metrics are reported as higher-is-better (↑↑\uparrow↑).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17761/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17761/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}