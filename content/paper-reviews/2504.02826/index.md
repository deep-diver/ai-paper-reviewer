---
title: "Envisioning Beyond the Pixels: Benchmarking Reasoning-Informed Visual Editing"
summary: "RISEBench: A new benchmark for reasoning-informed visual editing to evaluate instruction following, appearance consistency and plausibility in generated images."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02826 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangyu Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02826" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02826" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02826/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Multi-modality Models (LMMs) have made progress in visual tasks, but struggle with General Visual Editing, particularly with complex instructions, consistency, and flexible inputs. Current open-source methods are limited in accurately following editing instructions, preserving image appearance, and supporting diverse input formats. To tackle these issues, the paper introduces a new benchmark.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces RISEBench, the first benchmark for evaluating Reasoning-Informed visual Editing (RISE). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Identifies four key reasoning types: Temporal, Causal, Spatial, and Logical Reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluates Instruction Reasoning, Appearance Consistency, and Visual Plausibility with human judges and LMM-as-a-judge. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This benchmark offers **valuable insights** into the strengths and weaknesses of existing LMMs in visual editing, providing a **foundation** for future research and development in reasoning-aware multimodal systems, particularly for **improving performance** in tasks requiring complex logical reasoning and visual understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02826/x1.png)

> 🔼 This figure showcases the performance comparison of several leading models on visual editing tasks that require reasoning capabilities.  The models are evaluated across various aspects to assess their ability to accurately follow complex instructions, maintain appearance consistency, and produce visually plausible results.  The visualization helps to identify strengths and weaknesses of different models in handling different types of reasoning challenges within a visual editing context.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of leading models on our Reasoning-Informed viSual Editing tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.2.1" style="padding:2pt 8.0pt;">
<span class="ltx_rule" style="width:100%;height:1.5pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1.1">Models</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S3.T1.1.1.2.2" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1">Temporal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S3.T1.1.1.2.3" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.3.1">Causal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S3.T1.1.1.2.4" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.4.1">Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S3.T1.1.1.2.5" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.5.1">Logical</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T1.1.1.2.6" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.6.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_border_r" id="S3.T1.1.1.3.1" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2" style="padding:2pt 8.0pt;">Score</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.3" style="padding:2pt 8.0pt;">Accuracy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.4" style="padding:2pt 8.0pt;">Score</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.5" style="padding:2pt 8.0pt;">Accuracy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.6" style="padding:2pt 8.0pt;">Score</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.7" style="padding:2pt 8.0pt;">Accuracy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.8" style="padding:2pt 8.0pt;">Score</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.9" style="padding:2pt 8.0pt;">Accuracy</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.10" style="padding:2pt 8.0pt;">Score</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.11" style="padding:2pt 8.0pt;">Accuracy</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.4.1" style="padding:2pt 8.0pt;">GPT-4o-Native</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.2" style="padding:2pt 8.0pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4.3" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.3.1">18.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4" style="padding:2pt 8.0pt;">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4.5" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.5.1">43.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.6" style="padding:2pt 8.0pt;">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4.7" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.7.1">43.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.8" style="padding:2pt 8.0pt;">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.4.9" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.9.1">37.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.10" style="padding:2pt 8.0pt;">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.11" style="padding:2pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.11.1">35.9%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.5.1" style="padding:2pt 8.0pt;">Gemini-2.0-Flash <cite class="ltx_cite ltx_citemacro_citep">(Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02826v1#bib.bib18" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.2" style="padding:2pt 8.0pt;">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.3" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4" style="padding:2pt 8.0pt;">65.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.5" style="padding:2pt 8.0pt;">6.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.6" style="padding:2pt 8.0pt;">71.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.7" style="padding:2pt 8.0pt;">25.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.8" style="padding:2pt 8.0pt;">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.9" style="padding:2pt 8.0pt;">12.5%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.10" style="padding:2pt 8.0pt;">56.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.11" style="padding:2pt 8.0pt;">10.9%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.1.1" style="padding:2pt 8.0pt;">GPT-4o<sup class="ltx_sup" id="S3.T1.1.1.1.1.1">∗</sup> <cite class="ltx_cite ltx_citemacro_citep">(Hurst et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02826v1#bib.bib6" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.2" style="padding:2pt 8.0pt;">64.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.1.3" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.4" style="padding:2pt 8.0pt;">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.1.5" style="padding:2pt 8.0pt;">6.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.6" style="padding:2pt 8.0pt;">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.1.7" style="padding:2pt 8.0pt;">6.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.8" style="padding:2pt 8.0pt;">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.1.9" style="padding:2pt 8.0pt;">6.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.10" style="padding:2pt 8.0pt;">58.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.11" style="padding:2pt 8.0pt;">4.7%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.6.1" style="padding:2pt 8.0pt;">EMU2 <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02826v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.2" style="padding:2pt 8.0pt;">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.3" style="padding:2pt 8.0pt;">6.3%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4" style="padding:2pt 8.0pt;">49.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.5" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6" style="padding:2pt 8.0pt;">33.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.7" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.8" style="padding:2pt 8.0pt;">18.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.9" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.10" style="padding:2pt 8.0pt;">39.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.11" style="padding:2pt 8.0pt;">1.5%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.7.1" style="padding:2pt 8.0pt;">FLUX.1-Canny <cite class="ltx_cite ltx_citemacro_citep">(Labs, <a class="ltx_ref" href="https://arxiv.org/html/2504.02826v1#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.2" style="padding:2pt 8.0pt;">29.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.3" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.4" style="padding:2pt 8.0pt;">24.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.5" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.6" style="padding:2pt 8.0pt;">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.7" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.8" style="padding:2pt 8.0pt;">11.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.9" style="padding:2pt 8.0pt;">0.0%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.10" style="padding:2pt 8.0pt;">24.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.11" style="padding:2pt 8.0pt;">0.0%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.8.1" style="padding:2pt 8.0pt;"><span class="ltx_rule" style="width:100%;height:1.5pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T1.1.1.8.2" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.3" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.4" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.5" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.6" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.7" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.8" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.9" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.10" style="padding:2pt 8.0pt;"></td>
<td class="ltx_td" id="S3.T1.1.1.8.11" style="padding:2pt 8.0pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of various large multimodal models on the RISEBench benchmark.  The benchmark assesses the models' abilities in reasoning-informed visual editing across four reasoning types: temporal, causal, spatial, and logical.  The key metrics are overall score and accuracy.  The results show that GPT-40-Native outperforms all other models, but even its accuracy is relatively low (35.9%), indicating significant challenges remain in developing robust models for this task. Gemini-2.0-Flash achieves the second-best performance (10.9% accuracy). All other models show near-zero accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall performance on RISEBench. GPT-4o-Native achieves the highest performance with an accuracy of only 35.9%, followed by Gemini-2-Flash with the second-highest accuracy (10.9%). The remaining models perform close to zero, which highlights the significant challenges that remain in achieving robust reasoning-informed visual editing.
> </details>





### In-depth insights


#### RISE:Visual Edits
RISE:Visual Edits, as a concept, suggests **reasoning-informed visual modifications**. This goes beyond simple image manipulation, implying an understanding of context, physics, and even implied intent. The challenges are immense such as; maintaining consistency, following complex instructions, and supporting diverse inputs. A benchmark like **RISEBench** becomes crucial here. It serves to quantitatively assess these abilities, something lacking at present. Such a benchmark would evaluate instruction following, appearance consistency, and visual plausibility. It highlights model strengths and weaknesses, guiding future research in reasoning-aware visual editing.

#### Benchmark: RISE
The heart of RISEBench lies in its well-defined benchmark construction. By focusing on **Temporal, Causal, Spatial, and Logical Reasoning**, the benchmark categorizes the key image editing challenges. The **curation of high-quality test cases** for each category is key. Each sample includes an input image and an instruction prompt, thus illustrating reasoning-driven image transformations. Through these categories, RISE aims to evaluate a model's ability to understand both the explicit and implicit visual changes required.

#### LMMs Struggle
**LMMs face challenges** in general visual editing, particularly with complex instructions, appearance consistency, and flexible input formats. **Open-source models** struggle with these aspects, hindering practical utility. Proprietary models like **GPT-4o demonstrate advancements**, but even they face difficulties, **particularly in logical reasoning**. The paper introduces RISEBench to address this gap, highlighting the need for improvement in reasoning-informed visual editing.

#### RISE Evaluation
Based on the paper, RISE evaluation is a key focus, involving both **human and LMM-as-a-judge approaches** to assess Instruction Reasoning, Appearance Consistency, and Visual Plausibility. The evaluation leverages carefully crafted prompts for the evaluator model, which suggests a structured and analytical approach. Evaluating the complex visual transformations in reasoning-informed editing is challenging. RISEBench addresses this with detailed scoring guidelines and a comprehensive evaluation pipeline. The use of **LMMs as judges** offers a scalable and reproducible alternative to costly human evaluations. The design emphasizes instruction following and the preservation of visual attributes. The evaluation design includes both quantitative metrics (Score and Accuracy) and qualitative assessments, aiming for a balanced perspective on model performance. RISE is a benchmark for visual understanding and reasoning. 

#### Future of RISE
The future of Reasoning-Informed Visual Editing (RISE) is bright, with significant potential for advancements in multimodal AI.  **Future research should focus on addressing the limitations in logical reasoning** identified in the RISEBench study. Developing more sophisticated architectures and training strategies could enable models to better internalize and apply formal rules for visual problem-solving.  **Expanding RISEBench to include a wider range of tasks and complexities** is crucial for comprehensive evaluations. This includes incorporating more real-world scenarios, nuanced instructions, and diverse visual styles.  **Improving appearance consistency in native generation models** through architectural modifications or fine-tuning techniques is a key area for improvement. Addressing visual artifact generation and enhancing visual fidelity are essential for creating realistic and contextually relevant outputs.  **Ultimately, the goal is to create RISE models capable of seamlessly integrating reasoning and visual editing abilities**, enabling a new generation of AI-powered tools for creative expression, image manipulation, and problem-solving. This involves fostering more comprehensive, reliable, and scalable evaluations of next-generation multimodal systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02826/x2.png)

> 🔼 RISEBench is a benchmark for evaluating reasoning-informed visual editing.  Figure 2 shows example questions from each of its four reasoning categories: Temporal, Causal, Spatial, and Logical. Each example requires a deep understanding of the image and the ability to reason about changes over time, cause-and-effect relationships, spatial arrangements, and logical inferences. This highlights the complexity of the tasks in RISEBench and the advanced reasoning skills needed to solve them.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of RISEBench. We present illustrative example questions from each of the four problem categories, each demanding profound image understanding and reasoning capabilities.
> </details>



![](https://arxiv.org/html/2504.02826/x3.png)

> 🔼 RISEBench evaluates generated images based on three key aspects: how well the image follows instructions, how consistent the image's appearance is with the original, and how visually realistic the image is.  For each aspect, GPT-40 assesses various image features and provides a score.
> <details>
> <summary>read the caption</summary>
> Figure 3: Evaluation metrics of RISEBench. RISEBench assesses the quality of generated images along three key dimensions: Instruction Following, Appearance Consistency, and Visual Plausibility. For each dimension, carefully crafted prompts are provided to the evaluator model (GPT-4o in this study), which analyzes various inputs and returns scores for each corresponding sub-dimension.
> </details>



![](https://arxiv.org/html/2504.02826/x4.png)

> 🔼 This figure compares the performance of various large multimodal models on three key aspects of reasoning-informed visual editing: Instruction Reasoning (how well the model follows instructions), Appearance Consistency (how well the model maintains the original image's visual attributes during editing), and Visual Plausibility (how realistic and coherent the generated image is).  As shown, GPT-40-Native and Gemini-2-Flash, which use native image generation, significantly outperform the other models across all three dimensions.  GPT-40*, although proficient at understanding instructions, struggles to preserve the original image's appearance. The remaining models exhibit poor performance in following instructions, which underscores the challenge of effectively integrating reasoning into visual editing.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison across models on three evaluation sub-dimensions. The native generation models, GPT-4o-Native and Gemini-2-Flash, demonstrate strong performance across all three evaluation dimensions. GPT-4o∗ performs well in instruction reasoning but struggles with appearance consistency. The remaining models fail to follow instructions, highlighting the gap in reasoning-informed visual editing.
> </details>



![](https://arxiv.org/html/2504.02826/x5.png)

> 🔼 This figure visualizes the outputs of five different large multimodal models on a selection of tasks from the RISEBench benchmark.  Each row represents a specific reasoning task (temporal, causal, spatial, or logical), showing the input image and the results generated by each of the five models.  The models' outputs demonstrate varying degrees of success in understanding and correctly performing the instructed image manipulations. The differences highlight the challenges models still face in general visual editing, especially when complex reasoning is involved. Appendix B in the paper provides a more complete set of results for all tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of models’ outputs on RISEBench. The complete outputs of the five evaluated models are provided in Appx. B for comprehensive comparison.
> </details>



![](https://arxiv.org/html/2504.02826/x6.png)

> 🔼 Figure 6 displays the strong agreement between human and model evaluations of image generation quality.  Subfigure (a) shows overlapping score distributions for human judges and a GPT-40 model acting as an automated evaluator.  Subfigure (b) shows the Mean Absolute Error (MAE) between human and model scores across three dimensions (Instruction Reasoning, Appearance Consistency, Visual Plausibility) and the overall score, all with low MAE values. This indicates the model's assessments closely match human judgments.
> <details>
> <summary>read the caption</summary>
> Figure 6: Correlation between human and model-based judgments. (a) illustrates the score distributions from human annotators and the model-based evaluator, while (b) presents the MAE between the two, with scores ranging from 0 to 4. The close alignment in score distributions and the low MAE values together indicate a strong correlation between human and model judgments.
> </details>



![](https://arxiv.org/html/2504.02826/x7.png)

> 🔼 This figure illustrates the multi-stage process used by the GPT-40* model for image generation.  It starts with analyzing the input image and instructions.  Then, it creates a textual description of the reasoning process, which is then used to generate code that overlays elements (such as lines or text) onto the original image.  This approach contrasts with the native generation models that directly modify pixel values of the image.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example of cascade generation pipeline in GPT-4o∗.
> </details>



![](https://arxiv.org/html/2504.02826/x8.png)

> 🔼 This figure displays examples of outputs from various large multimodal models (LMMs) on a subset of the logical reasoning tasks within the RISEBench benchmark.  Each row presents a single task, showing the input image and the generated outputs from five different models: EMU2, FLUX.1-Canny, GPT-40*, Gemini-2.0-Flash, and GPT-40-Native. The tasks include solving mazes, completing shape patterns, solving mathematical equations represented visually, and solving classic puzzles like the Klotski game. The figure allows for a visual comparison of the models' performance on a diverse range of logical reasoning problems.
> <details>
> <summary>read the caption</summary>
> Figure 8: Logical Reasoning Outputs – Part 1.
> </details>



![](https://arxiv.org/html/2504.02826/x9.png)

> 🔼 Figure 9 shows the outputs of five different large multimodal models on a subset of logical reasoning tasks from the RISEBench benchmark.  Each task requires the model to solve a visual puzzle or logical challenge, such as completing a pattern, solving a maze, or arranging objects according to specific rules. The figure visually compares the performance of each model, highlighting their relative strengths and weaknesses in terms of their ability to perform logical reasoning on visual tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: Logical Reasoning Outputs – Part 2.
> </details>



![](https://arxiv.org/html/2504.02826/x10.png)

> 🔼 This figure displays example outputs from different large multi-modality models (LMMs) on spatial reasoning tasks within the RISEBench benchmark.  The tasks require the models to understand and manipulate spatial relationships between objects. Examples include generating a top-down view of a scene, assembling objects into a complete structure, or understanding the spatial relationships between objects to correctly arrange them in 3D space. The figure showcases the differences in the models' abilities to perform these tasks accurately and effectively, highlighting both strengths and limitations of each model.
> <details>
> <summary>read the caption</summary>
> Figure 10: Spatial Reasoning Outputs – Part 1.
> </details>



![](https://arxiv.org/html/2504.02826/x11.png)

> 🔼 This figure shows the outputs of five different large multi-modality models (LMMs) on a series of spatial reasoning tasks.  Each task requires the model to manipulate or reason about the spatial relationships between objects, such as assembling parts to form a complete object (e.g., a table or clock), creating a specific shape from smaller parts (e.g., a tangram), or completing a visual puzzle. The models' responses demonstrate varying levels of success in understanding and correctly performing these tasks.  The image highlights differences in the models' abilities to understand spatial relationships, spatial transformations and geometric structures.
> <details>
> <summary>read the caption</summary>
> Figure 11: Spatial Reasoning Outputs – Part 2.
> </details>



![](https://arxiv.org/html/2504.02826/x12.png)

> 🔼 This figure displays example outputs from five different models (EMU2, FLUX1-Canny, GPT-40*, Gemini-2.0-Flash, GPT-40-Native) when tasked with temporal reasoning tasks.  Each row presents a different prompt, showing the original image and the resulting image generated by each model. The prompts involve predicting how an object's appearance will change over time (e.g., a banana ripening, a puppy growing, a person aging). The figure helps to visualize how well different models understand temporal change and generate consistent, realistic outputs.
> <details>
> <summary>read the caption</summary>
> Figure 12: Temporal Reasoning Outputs – Part 1.
> </details>



![](https://arxiv.org/html/2504.02826/x13.png)

> 🔼 This figure displays example outputs from five different visual editing models (EMU2, FLUX 1.0-Canny, GPT-40*, Gemini 2.0-Flash, GPT-40-Native) on temporal reasoning tasks.  Each row presents a task, showing the input image and the outputs generated by each model.  The tasks involve predicting the visual changes of an image over time, such as fruit rotting, a person's hair growing, or a building weathering. The results highlight the varying capabilities of these models in terms of accuracy, realism, and consistency.
> <details>
> <summary>read the caption</summary>
> Figure 13: Temporal Reasoning Outputs – Part 2.
> </details>



![](https://arxiv.org/html/2504.02826/x14.png)

> 🔼 This figure showcases example outputs from five different large multi-modality models (LMMs) for causal reasoning tasks within the RISEBench benchmark.  Each row presents a single causal reasoning challenge, beginning with the input image and prompt.  The subsequent columns display the outputs generated by each of the five models: EMU2, FLUX.1-Canny, GPT-40*, Gemini-2.0-Flash, and GPT-40-Native. The figure illustrates the variation in model performance in addressing causal reasoning scenarios related to visual editing.  The challenges involve understanding and depicting the visual consequences of actions or events on an object, such as the effect of biting an apple, roasting a steak, or the impact of a ball hitting an obstacle.
> <details>
> <summary>read the caption</summary>
> Figure 14: Causal Reasoning Outputs – Part 1.
> </details>



![](https://arxiv.org/html/2504.02826/x9.png)

> 🔼 This figure shows examples of model outputs for causal reasoning tasks in the RISEBench benchmark.  Each row presents a causal reasoning task, beginning with the input image and the instruction, followed by outputs from five different large multi-modal models (LMMs): EMU2, FLUX.1-Canny, GPT-40*, Gemini-2.0-Flash, and GPT-40-Native. The tasks require the models to understand and generate images representing the result of a causal event or action applied to the input image. The variety of tasks and model outputs demonstrate the challenges in accurate causal reasoning in visual editing.
> <details>
> <summary>read the caption</summary>
> Figure 15: Causal Reasoning Outputs – Part 2.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02826/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02826/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}