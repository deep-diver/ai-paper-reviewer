---
title: "A Unified Agentic Framework for Evaluating Conditional Image Generation"
summary: "CIGEVAL: Agentic framework for conditional image generation evaluation, improving human alignment."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Harbin Institute of Technology (Shenzhen)",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07046 {{< /keyword >}}
{{< keyword icon="writer" >}} Jifang Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07046" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07046" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07046/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Conditional image generation has seen progress, but reliable, task-agnostic evaluation remains a challenge. Existing metrics are often task-specific, lack explainability, and don't align well with human judgment, making it difficult to assess AI-synthesized images effectively. Even powerful multimodal models like GPT-40 struggle with subtle image nuances, leading to low correlation with human ratings in various image editing tasks.



This paper introduces **CIGEVAL**, an agentic framework leveraging large multimodal models to tackle conditional image generation evaluation. It integrates a multi-functional toolbox and a fine-grained evaluation framework. Synthesized evaluation trajectories allow smaller LMMs to autonomously select tools for nuanced analysis. Experiments show CIGEVAL aligns closely with human assessments, surpassing previous state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CIGEVAL is a unified agentic framework using LMMs for comprehensive image generation evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Fine-tuning open-source LMMs with CIGEVAL significantly enhances their evaluation performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CIGEVAL achieves high correlation with human assessments, closely matching inter-annotator agreement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces **CIGEVAL**, a novel framework for evaluating conditional image generation, crucial for assessing AI-synthesized images. **CIGEVAL** aligns better with human judgment than existing metrics, offering a more reliable and explainable evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07046/x1.png)

> 🔼 This figure illustrates a subject-driven image editing task where the goal is to replace the glasses in a source image with those from a subject image.  Human evaluators gave this a low score, but traditional metrics and even the GPT-40-based VIEScore system gave it a high score, highlighting a limitation of those methods.  The CIGEVAL framework, however, uses additional tools (in this case, presumably object recognition and comparison) to compare the shapes and designs of the glasses in both images. By detecting these differences, CIGEVAL provides a more accurate and nuanced assessment, resulting in a lower score that aligns with human evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of subject-driven image editing with human-annotated low scores. Both traditional metrics and GPT-4o-based VIEScore assign high scores. By integrating GPT-4o with tools, CIGEval, our agentic evaluation framework, highlights the glasses object in both images, and finds their different shapes and designs, thereby reaching the correct score. “Source” and “Subject” means “source image” and “subject image”.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1"># Instructions</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.2.1"># Images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1"># Human Ratings</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.1.1">Text-guided Image Generation (5 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.1">197</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.2">985</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3.3">2955</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.1.1">Mask-guided Image Editing (4 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.1">179</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.2">716</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5.3">2148</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.6.1.1">Text-guided Image Editing (8 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.1">179</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.2">1432</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.7.3">4296</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.8.1.1">Subject-driven Image Generation (4 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.9.9.1">150</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.9.9.2">600</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.9.9.3">1800</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.1.1">Subject-driven Image Editing (3 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.11.11.1">154</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.11.11.2">462</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.11.3">1386</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.12.1.1">Multi-concept Image Composition (3 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13.13">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.13.13.1">102</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.13.13.2">306</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.13.3">918</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.14.14.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.14.14.1.1">Control-guided Image Generation (2 models)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15.15">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.15.15.1">150</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.15.15.2">300</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.15.3">900</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.16.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.16.16.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.16.16.1.1">Sum of 7 tasks</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.17.17.1">1111</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.17.17.2">4801</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.17.17.3">14403</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the tools integrated into the CIGEVAL framework. Each tool serves a specific purpose in analyzing and evaluating generated images.  The tools include Grounding (identifying object coordinates), Highlight (highlighting image regions), Difference (detecting pixel differences between images), and Scene Graph (analyzing objects and their relationships within an image). The table shows the tool's input, output (including example outputs), and its function in the overall evaluation process.
> <details>
> <summary>read the caption</summary>
> Table 1: Tools used in our CIGEval framework.
> </details>





### In-depth insights


#### Agentic CIGEval
While the exact term "Agentic CIGEval" isn't explicitly present, the core idea revolves around developing an **autonomous evaluation framework for conditional image generation**. This "agent" leverages large multimodal models (LMMs) with integrated tools to analyze images and assign scores that align with human perception. A key aspect is enabling **smaller LMMs to perform complex evaluations** through a synthesized training process, where the agent autonomously selects tools and makes nuanced analyses. This contrasts with traditional metrics which often lack explainability and human alignment. The agentic approach also addresses the challenges of evaluating images generated under multiple conditions, ensuring comprehensive and reliable assessments by focusing on improving AI-Synthesized images effectively.

#### Multi-Tool LMM
The concept of a 'Multi-Tool LMM' (Large Multimodal Model) suggests a strategic enhancement to traditional LMMs by equipping them with a diverse array of specialized tools. This approach moves beyond relying solely on the model's inherent capabilities, allowing it to leverage external modules for specific tasks. The core idea is that an LMM, when integrated with tools like image manipulation, object recognition, and semantic analysis, becomes a more versatile and powerful agent. This architecture enables the model to perform complex reasoning and decision-making processes. **The multi-tool approach is crucial for tasks requiring fine-grained analysis or external knowledge integration**. Furthermore, the framework's success hinges on the LMM's ability to intelligently select and utilize the appropriate tool for each sub-task, mimicking a human expert leveraging different instruments for a multifaceted problem. **By combining the reasoning power of LMMs with the precision of specialized tools, it offers a pathway to more reliable, explainable, and human-aligned AI systems**.

#### Human Alignment
**Traditional image evaluation metrics often diverge significantly from human perception.** Metrics like DINO and CLIP, while useful, rely on image similarity measurements that don't always align with how humans assess image quality or fidelity to a prompt. This discrepancy arises because these metrics may not capture subtle nuances or higher-level semantic understanding that humans readily perceive. **Even advanced large multimodal models (LMMs) like GPT-40, as demonstrated by VIEScore, can struggle to accurately evaluate certain image attributes, particularly subtle image nuances in editing tasks**, resulting in lower correlations with human judgment. Overcoming this misalignment is crucial for developing evaluation systems that reliably reflect human preferences and expectations in image generation.

#### Fine-Tune LMMs
**Fine-tuning Large Multimodal Models (LMMs)** is a crucial step to adapt pre-trained models for specific downstream tasks. This process involves updating the model's parameters using a task-specific dataset, enabling it to better understand and generate relevant outputs. Effective fine-tuning strategies often involve careful selection of the training data and choice of appropriate loss functions, **regularization techniques**, and **hyperparameter optimization**. A well fine-tuned LMM can demonstrate improved performance on tasks such as image captioning, visual question answering, and multimodal reasoning. Strategies that carefully balance **model fidelity** to pre-trained knowledge and adaptation to the nuances of target datasets often yield the best results. Also, **avoiding over-fitting** becomes vital to maintain generalization and is often achieved through regularization techniques.

#### GPT-4o Insights
While the paper doesn't explicitly have a section titled 'GPT-4o Insights,' it does provide observations relating to GPT-4o. The paper notes that GPT-4o excels at tasks with **single image input** like text-guided generation/editing and subject-driven generation, showing good alignment with human annotators. It also shows challenges when dealing with more **complex scenarios involving multiple images and strict control signals.** This includes precise replication of subjects and adherence to specific control guidances like canny edges/openpose. Also, the paper sees GPT-4o has a tendency toward **specific color palettes** (yellow, orange, warm lighting).


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07046/x6.png)

> 🔼 This figure illustrates the CIGEVAL evaluation framework. It shows how CIGEVAL, an AI agent, processes an image evaluation task.  First, the task is decomposed into smaller sub-tasks (e.g., evaluating whether the image follows the instructions, assessing the quality of edits).  Then, CIGEVAL autonomously selects the most appropriate tool from its toolbox for each sub-task.  These tools perform specific analyses on the image.  Finally, CIGEVAL integrates the results from all these analyses to generate a comprehensive and nuanced evaluation score, closely mimicking human judgment. The example shown is based on Figure 1.
> <details>
> <summary>read the caption</summary>
> Figure 2: The evaluation process of CIGEval regarding the example in Figure 1. CIGEval autonomously selects appropriate tools for each decomposed sub-task, and then conducts fine-grained analyses based on the observed tool outputs.
> </details>



![](https://arxiv.org/html/2504.07046/x7.png)

> 🔼 This figure showcases a text-guided image editing example where the automated evaluation metric, VIEScore, gives a high score (8/10), while the human annotator gives a much lower score (2/10).  The discrepancy highlights the limitations of existing metrics in capturing subtle nuances of image edits.  The example involves adding water and flowers to a bathtub. VIEScore overlooks the unnatural placement of the added elements, while CIGEVAL identifies and highlights the over-editing issue through a fine-grained analysis using its agentic framework and toolset, leading to a more accurate assessment.
> <details>
> <summary>read the caption</summary>
> Figure 3: Case study of a text-guided image editing example with a low human annotation score.
> </details>



![](https://arxiv.org/html/2504.07046/x8.png)

> 🔼 This figure showcases three examples of GPT-4's image generation capabilities, using cases taken directly from OpenAI's official website.  Each example highlights a different aspect of GPT-4's performance. The first shows successful text-guided image editing, accurately adding a detective hat and monocle to a cat. The second demonstrates text-to-image generation, with the model attempting to produce a periodic table; however, imperfections in the generated table highlight the limitations in accurately representing nuanced and detailed information. The third example shows that GPT-4 struggles with a text-guided image editing task requiring a reversal of steps in a multi-step process.  This illustrates both the successes and limitations of GPT-4's image generation abilities, emphasizing that performance is task-dependent.
> <details>
> <summary>read the caption</summary>
> Figure 4: Case study of GPT-4o’s image generation. Examples are adapted from OpenAI’s official website.
> </details>



![](https://arxiv.org/html/2504.07046/x9.png)

> 🔼 This figure showcases a case study of multi-concept image composition using the CIGEVAL framework.  It compares the evaluation results of VIESCORE and CIGEVAL for a task involving generating an image of a teddy bear holding a flower, given two source images (teddy bear and flower).  CIGEVAL leverages its toolbox, specifically the grounding and highlight tools, to perform a more detailed analysis than VIESCORE, focusing on the fine-grained aspects such as color and shape similarity between the generated and source flowers. The visual demonstrates that CIGEVAL provides a more nuanced and accurate evaluation, resulting in a lower score compared to VIESCORE due to its detection of discrepancies between the generated flower and the source image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Case study of a multi-concept image composition example. Here is the fine-grained score for concept consistency.
> </details>



![](https://arxiv.org/html/2504.07046/x10.png)

> 🔼 This figure showcases three examples of images generated by GPT-40 for the control-guided image generation task within the ImagenHub benchmark.  Each example displays the prompt, the generated image, the CIGEval score and rationale, and the human evaluation score.  The goal is to illustrate how CIGEVAL assesses images generated under specific control instructions, highlighting its ability to detect subtle differences in adherence to the guidance. The control guidance used varies across the examples, demonstrating the framework's versatility in evaluating different control mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s control-guided image generation task.
> </details>



![](https://arxiv.org/html/2504.07046/x11.png)

> 🔼 Figure 7 showcases three examples from the ImagenHub benchmark's multi-concept image composition task, highlighting GPT-4's performance in generating images based on multiple input concepts.  Each example shows the input concepts (e.g., a teddy bear, a flower, a cat), and the generated image. The goal of the task is to combine the concepts in a meaningful and visually coherent way, which assesses the model's ability to integrate diverse concepts into a singular output.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s multi-concept image composition task.
> </details>



![](https://arxiv.org/html/2504.07046/x12.png)

> 🔼 This figure showcases three examples from the ImagenHub benchmark's subject-driven image editing task, illustrating GPT-4's performance in this specific area. Each example presents the source image, the subject image to be incorporated, the generated image produced by GPT-4, and the evaluations from both CIGEVAL and human raters.  The scores for subject consistency and background preservation are provided for both automated and human assessments, allowing for a direct comparison of the results and highlighting any discrepancies. This visual representation serves to exemplify the detailed, fine-grained analysis capabilities of CIGEVAL, as opposed to other more generalized metrics.
> <details>
> <summary>read the caption</summary>
> Figure 8: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s subject-driven image editing task.
> </details>



![](https://arxiv.org/html/2504.07046/x13.png)

> 🔼 Figure 9 presents three examples from the ImagenHub benchmark's subject-driven image generation task, showcasing GPT-4's performance. Each example shows the source image (subject), the generated image by GPT-4, the CIGEVAL scores, and the human evaluation scores.  The examples illustrate variations in prompt following and subject consistency, highlighting the nuanced evaluation capabilities of CIGEVAL.
> <details>
> <summary>read the caption</summary>
> Figure 9: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s subject-driven image generation task.
> </details>



![](https://arxiv.org/html/2504.07046/x14.png)

> 🔼 This figure showcases three examples of images generated by GPT-40 using text prompts in a text-guided image generation task from the ImagenHub benchmark.  Each example demonstrates GPT-40's ability to generate images corresponding to simple object descriptions (a black banana, a blue bird and brown bear, and a red car). The results highlight GPT-40's capacity to fulfill straightforward generation requests successfully.  This is particularly useful in illustrating how the model performs on basic tasks and highlights its accuracy in understanding and visualising simple textual inputs.
> <details>
> <summary>read the caption</summary>
> Figure 10: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s text-guided image generation task.
> </details>



![](https://arxiv.org/html/2504.07046/x15.png)

> 🔼 This figure showcases three examples of text-guided image editing using GPT-40,  demonstrating the model's ability to follow instructions.  Each example shows the original image, the edited image generated by GPT-40, the CIGEval score, and the human evaluation score. The examples illustrate various levels of success in the editing task, highlighting the nuances of automatically evaluating AI-generated images.
> <details>
> <summary>read the caption</summary>
> Figure 11: Case study of GPT-4o’s image generation. Examples are taken from ImagenHub’s text-guided image editing task.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1.1.1">Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1.1.1">Text-guided IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1.1.1">Mask-guided IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.4.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1.1.1">Text-guided IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.5.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.5.1.1.1">Control-guided IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.6.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.6.1.1.1">Subject-driven IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.7.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.7.1.1.1">Subject-driven IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.8.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.8.1.1.1">Multi-concept IC</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T3.1.1.1.1.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.9.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.9.1.1.1">Avg.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.2.2.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.1.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.1.1.1">Human Raters</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.2.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.2.1.1">0.5044</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.3.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.3.1.1">0.5390</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.4.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.4.1.1">0.4230</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.5.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.5.1.1">0.5443</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.6.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.6.1.1">0.4780</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.7.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.7.1.1">0.4887</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S4.T3.1.1.2.2.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.8.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.8.1.1">0.5927</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.2.2.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.2.9.1">
<span class="ltx_p" id="S4.T3.1.1.2.2.9.1.1">0.4700</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.3.3.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.1.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.1.1.1">CLIPScore</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.2.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.2.1.1">-0.0817</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.3.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.4.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.5.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.6.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.7.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.7.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S4.T3.1.1.3.3.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.8.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.8.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T3.1.1.3.3.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.3.9.1">
<span class="ltx_p" id="S4.T3.1.1.3.3.9.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.4.4.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.1.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.1.1.1">LPIPS</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.3.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.3.1.1">-0.1012</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.4.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.4.1.1">0.0956</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.5.1.1">0.3699</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.6.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.6.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.7.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.7.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.4.4.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.8.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.8.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.4.4.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.4.9.1">
<span class="ltx_p" id="S4.T3.1.1.4.4.9.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.5.5.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.1.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.1.1.1">DINO</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.3.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.4.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.6.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.6.1.1">0.4160</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.7.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.7.1.1">0.3022</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.5.5.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.8.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.8.1.1">0.0979</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.5.5.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.5.9.1">
<span class="ltx_p" id="S4.T3.1.1.5.5.9.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.6.6.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.1.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.1.1.1">CLIP-I</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.2.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.2.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.3.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.3.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.4.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.4.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.5.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.5.1.1">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.6.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.6.1.1">0.2961</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.7.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.7.1.1">0.2834</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.6.6.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.8.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.8.1.1">0.1512</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.6.6.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.6.6.9.1">
<span class="ltx_p" id="S4.T3.1.1.6.6.9.1.1">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<th class="ltx_td ltx_align_center ltx_align_middle ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T3.1.1.7.7.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.7.7.1.1">LLaMA3-LLaVA-NeXT-8B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.8.8.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.1.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.8.8.1.1.1.1">VIEScore</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.2.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.2.1.1">0.1948</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.3.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.3.1.1">0.2037</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.4.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.4.1.1">0.0363</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.5.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.5.1.1">0.4001</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.6.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.6.1.1">0.1592</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.7.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.7.1.1">-0.1153</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.8.8.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.8.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.8.1.1">0.1308</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.8.8.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.8.8.9.1">
<span class="ltx_p" id="S4.T3.1.1.8.8.9.1.1">0.1432</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.9" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.9.9.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.1.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.9.9.1.1.1.1" style="background-color:#EFEFEF;">CIGEval</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.2.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.2.1.1">0.1420</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.3.1.1">0.2843</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.4.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.4.1.1">0.0744</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.5.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.5.1.1">0.4487</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.6.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.6.1.1">0.2891</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.7.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.7.1.1">-0.0699</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.9.9.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.8.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.8.1.1">0.3704</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.9.9.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.9.9.9.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.9.9.9.1.1">0.2164</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.10">
<th class="ltx_td ltx_align_center ltx_align_middle ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T3.1.1.10.10.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.10.10.1.1">Qwen2.5-VL-7B-Instruct</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.11">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.11.11.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.1.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.11.11.1.1.1.1">VIEScore</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.2.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.2.1.1">0.4218</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.3.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.3.1.1">0.3555</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.4.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.4.1.1">0.0252</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.5.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.5.1.1">0.2836</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.6.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.6.1.1">0.4264</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.7.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.7.1.1">-0.0452</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.11.11.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.8.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.8.1.1">0.3328</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.11.11.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.11.11.9.1">
<span class="ltx_p" id="S4.T3.1.1.11.11.9.1.1">0.2516</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.12" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.12.12.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.1.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.12.12.1.1.1.1" style="background-color:#EFEFEF;">CIGEval</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.2.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.2.1.1">0.4347</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.3.1.1">0.4685</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.4.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.4.1.1">0.2567</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.5.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.5.1.1">0.3752</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.6.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.6.1.1">0.4374</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.7.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.7.1.1">0.4863</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.12.12.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.8.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.8.1.1">0.3251</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.12.12.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.12.12.9.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.12.12.9.1.1">0.3780</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.13">
<th class="ltx_td ltx_align_center ltx_align_middle ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T3.1.1.13.13.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.13.13.1.1">GPT-4o</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14.14">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.14.14.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.1.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.14.14.1.1.1.1">VIEScore</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.2.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.2.1.1">0.4989</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.3.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.3.1.1">0.5421</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.4.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.4.1.1">0.4062</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.5.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.5.1.1">0.4972</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.6.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.6.1.1">0.4806</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.7.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.7.1.1">0.4800</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T3.1.1.14.14.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.8.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.8.1.1">0.4516</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T3.1.1.14.14.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.14.14.9.1">
<span class="ltx_p" id="S4.T3.1.1.14.14.9.1.1">0.4459</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15.15" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.1.1.15.15.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.1.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.15.15.1.1.1.1" style="background-color:#EFEFEF;">CIGEval</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.2" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.2.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.2.1.1.1">0.5027</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.3.1.1.1">0.5465</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.4.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.4.1.1.1">0.4090</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.5.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.5.1.1.1">0.5402</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.6.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.6.1.1.1">0.4930</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.7.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.7.1.1.1">0.5185</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r" id="S4.T3.1.1.15.15.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.8.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.8.1.1.1">0.4931</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T3.1.1.15.15.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.15.15.9.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T3.1.1.15.15.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.9.1.1.1">0.4625</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a statistical overview of the ImagenHub benchmark dataset used in the paper's experiments.  It details the number of instructions provided for each of the seven conditional image generation tasks, the number of different AI models evaluated on those tasks, the total number of synthetic images generated by those models, and finally, the total number of human ratings collected for the generated images. This information provides context for understanding the scale and scope of the evaluation undertaken in the paper.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics of ImagenHub: the number of instructions, evaluated models, synthesized images, and human ratings used in this paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Configuration</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.2.2.1.1" style="background-color:#EFEFEF;">CIGEval</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.2.2"><span class="ltx_text" id="S4.T4.1.1.2.2.2.1" style="background-color:#EFEFEF;">0.7262</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.3.3.1">w/o <span class="ltx_text ltx_font_typewriter" id="S4.T4.1.1.3.3.1.1">Grounding</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.3.2">0.6376</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.4.1">w/o <span class="ltx_text ltx_font_typewriter" id="S4.T4.1.1.4.4.1.1">Difference</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.2">0.7020</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.5.1">w/o <span class="ltx_text ltx_font_typewriter" id="S4.T4.1.1.5.5.1.1">Scene Graph</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5.2">0.6471</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.6.6.1">
<span class="ltx_text ltx_font_typewriter" id="S4.T4.1.1.6.6.1.1">Scene Graph</span> with <span class="ltx_text ltx_font_italic" id="S4.T4.1.1.6.6.1.2">Qwen2.5-VL-7B-Instruct</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.6.6.2">0.7120</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.7.7.1">
<span class="ltx_text ltx_font_typewriter" id="S4.T4.1.1.7.7.1.1">Scene Graph</span> with <span class="ltx_text ltx_font_italic" id="S4.T4.1.1.7.7.1.2">Qwen2.5-VL-70B-Instruct</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.7.7.2">0.7311</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Spearman correlation scores achieved by different methods across seven conditional image generation tasks.  The evaluation metrics are compared against human assessments to determine the correlation.  Three different Large Multimodal Models (LMMs) serve as backbones for the evaluation methods: a 7B parameter Qwen2.5-VL-Instruct model, a 7B parameter Qwen2-VL-Instruct model, and the GPT-40 model. The tasks are categorized as Image Generation (IG), Image Editing (IE), and Image Composition (IC), indicating the type of image generation process involved.  A '-' indicates that a specific metric is not applicable to that task.
> <details>
> <summary>read the caption</summary>
> Table 3: Spearman correlation scores across 7 conditional image generation tasks with different LMMs as backbone. The abbreviations “IG”, “IE” and “IC” stand for “Image Generation”, “Image Editing” and “Image Composition” respectively. “-” means not applicable.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.1.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1.1">Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.2.1.1.1">Text-guided IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.3.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.3.1.1.1">Mask-guided IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.4.1.1.1">Text-guided IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.5.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.5.1.1.1">Control-guided IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.6.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.6.1.1.1">Subject-driven IG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.7.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.7.1.1.1">Subject-driven IE</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_tt" id="S4.T5.1.1.1.1.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.8.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.8.1.1.1">Multi-concept IC</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S4.T5.1.1.1.1.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.1.1.9.1">
<span class="ltx_p" id="S4.T5.1.1.1.1.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.9.1.1.1">Avg.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.1.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.1.1.1" style="width:68.3pt;">Previous SOTA</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.2.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.2.1.1">0.3081</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.3.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.3.1.1">0.3167</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.2.2.4.1.1">0.4649</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.5.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.5.1.1">0.5246</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.6.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.6.1.1">0.7105</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.7.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.7.1.1">0.4694</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S4.T5.1.1.2.2.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.8.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.8.1.1">0.5616</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S4.T5.1.1.2.2.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.2.2.9.1">
<span class="ltx_p" id="S4.T5.1.1.2.2.9.1.1">0.4458</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3.3">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T5.1.1.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T5.1.1.3.3.1.1">Qwen2.5-VL-7B-Instruct</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.1.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.1.1.4.4.1.1.1.1">VIEScore</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.2.1.1">0.3457</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.3.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.3.1.1">0.0158</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.4.4.4.1.1">0.0086</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.5.1.1">0.2395</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.6.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.6.1.1">0.1837</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.7.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.7.1.1">0.0967</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T5.1.1.4.4.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.8.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.8.1.1">0.4388</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.4.4.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.4.4.9.1">
<span class="ltx_p" id="S4.T5.1.1.4.4.9.1.1">0.1876</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.1.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.1.1.5.5.1.1.1.1">CIGEval</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.2.1.1">0.1890</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.3.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.3.1.1">0.1418</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.5.5.4.1.1">0.4586</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.5.1.1">0.3130</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.6.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.6.1.1">0.4485</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.7.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.7.1.1">0.5216</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T5.1.1.5.5.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.8.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.8.1.1">0.4496</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.5.5.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.5.5.9.1">
<span class="ltx_p" id="S4.T5.1.1.5.5.9.1.1">0.3455</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6.6" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.1.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.6.1.1.1.1">  + Tuning</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.2.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.2.1.1">0.4609</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.3.1.1">0.2796</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.4.1" style="background-color:#EFEFEF;">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.6.6.4.1.1">0.5916</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.5.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.5.1.1">0.5876</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.6.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.6.1.1">0.4659</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.7.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.7.1.1">0.5458</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T5.1.1.6.6.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.8.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.8.1.1">0.5778</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.6.6.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.6.6.9.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.6.6.9.1.1">0.4631</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7.7">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T5.1.1.7.7.1"><span class="ltx_text ltx_font_italic" id="S4.T5.1.1.7.7.1.1">Qwen2-VL-7B-Instruct</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.1.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.1.1.8.8.1.1.1.1">VIEScore</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.2.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.2.1.1">0.3699</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.3.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.3.1.1">-0.1398</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.8.8.4.1.1">0.1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.5.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.5.1.1">0.3420</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.6.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.6.1.1">0.1553</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.7.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.7.1.1">0.0682</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T5.1.1.8.8.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.8.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.8.1.1">0.5129</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.8.8.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.8.8.9.1">
<span class="ltx_p" id="S4.T5.1.1.8.8.9.1.1">0.1989</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9.9">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_r" id="S4.T5.1.1.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.1.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.1.1.9.9.1.1.1.1">CIGEval</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.2.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.2.1.1">0.3054</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.3.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.3.1.1">0.1974</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.4.1">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.9.9.4.1.1">0.1438</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.5.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.5.1.1">0.2615</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.6.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.6.1.1">0.5096</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.7.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.7.1.1">0.1226</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r" id="S4.T5.1.1.9.9.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.8.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.8.1.1">0.5035</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S4.T5.1.1.9.9.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.9.9.9.1">
<span class="ltx_p" id="S4.T5.1.1.9.9.9.1.1">0.2840</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.10.10" style="background-color:#EFEFEF;">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.1.1.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.1.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.10.1.1.1.1">  + Tuning</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.2" style="width:48.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.2.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.2.1.1">0.4099</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.3" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.3.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.3.1.1">0.5272</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.4" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.4.1" style="background-color:#EFEFEF;">
<span class="ltx_p ltx_align_center" id="S4.T5.1.1.10.10.4.1.1">0.3846</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.5" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.5.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.5.1.1">0.6096</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.6" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.6.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.6.1.1">0.6445</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.7" style="width:45.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.7.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.7.1.1">0.5975</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r" id="S4.T5.1.1.10.10.8" style="width:51.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.8.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.8.1.1">0.6691</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S4.T5.1.1.10.10.9" style="width:25.6pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T5.1.1.10.10.9.1" style="background-color:#EFEFEF;">
<span class="ltx_p" id="S4.T5.1.1.10.10.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.10.9.1.1.1">0.4997</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of individual tools within the CIGEVAL framework on the overall evaluation performance. Using GPT-40 as the large multimodal model (LMM), the study systematically removes each tool (Grounding, Difference, Scene Graph) to assess its contribution.  The results quantify the effect of each tool's absence on the average evaluation score, demonstrating the importance of each component in achieving high accuracy and robustness.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study regarding tools in CIGEval (GPT-4o) with different configurations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07046/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07046/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}