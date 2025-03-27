---
title: "ADS-Edit: A Multimodal Knowledge Editing Dataset for Autonomous Driving Systems"
summary: "ADS-Edit: Empowering autonomous driving with multimodal knowledge editing!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Autonomous Vehicles", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20756 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenxi Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20756" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20756" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20756/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advancements in Large Multimodal Models (LMMs) hold promise for Autonomous Driving Systems (ADS). However, direct application faces obstacles: **traffic knowledge misunderstanding, complex road conditions, and diverse vehicle states**. Knowledge Editing offers a solution, enabling targeted model behavior modifications without full retraining. This paper tackles these challenges to improve LMMs for ADS. 



To address these shortcomings, the authors introduce **ADS-Edit, a dataset designed for ADS knowledge editing**. Encompassing real-world scenarios and diverse data types, it facilitates comprehensive evaluation. Experiments with knowledge editing baselines are done under single & lifelong editing scenarios. This work contributes to editing applications in autonomous driving.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces ADS-Edit, a new multimodal dataset for autonomous driving knowledge editing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Identifies key challenges in applying LMMs to autonomous driving: traffic knowledge, road conditions, and vehicle states. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates the effectiveness of knowledge editing techniques in improving LMM performance in driving scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces ADS-Edit, a **new multimodal knowledge editing dataset** for autonomous driving. It provides a structured platform for researchers to **enhance LMMs'** understanding and reasoning abilities. By addressing challenges, it paves the way for safer and more reliable autonomous systems and stimulate innovation in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/first.png)

> 🔼 This figure illustrates the challenges of directly applying Large Multimodal Models (LMMs) to Autonomous Driving Systems (ADS).  Three major issues are highlighted: 1) LMMs may misunderstand traffic rules and signage, leading to incorrect actions. 2) Real-world driving conditions are highly variable and complex, exceeding the scope of typical training data; therefore LMMs may not perform well in all situations. 3) Vehicles exhibit diverse states of motion, making accurate prediction difficult. The figure proposes Knowledge Editing as a solution to address these challenges by allowing for targeted, efficient, continuous, and precise updates to the model's knowledge base without needing a complete re-training.
> <details>
> <summary>read the caption</summary>
> Figure 1: Direct application of LMMs in Autonomous Driving Systems faces several challenges, including the misunderstanding of traffic knowledge, the complex and varied road conditions, and the diverse states of vehicle. Knowledge Editing that enables efficient, continuous, and precise updates to knowledge can effectively address these challenges.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T1.1.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Video</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Multi-view</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Single</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">All</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2.1">Train</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2.2">1,926</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2.3">960</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2.4">1,093</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2.5">3,979</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.1.3.1">Test</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.1.3.2">481</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.1.3.3">239</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.1.3.4">358</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.1.3.5">1,078</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the data included in the ADS-Edit dataset.  It breaks down the dataset by data type (video, multi-view images, and single images), showing the number of samples available for training and testing in each category.  This allows readers to understand the scale and composition of the dataset used in the evaluation of knowledge editing methods for autonomous driving systems.
> <details>
> <summary>read the caption</summary>
> Table 1:  Statistical information of ADS-Edit data types and dataset splits for training and testing.
> </details>





### In-depth insights


#### ADS Domain Edit
**ADS Domain Edit** likely refers to the process of modifying a model's knowledge specifically within the autonomous driving systems (ADS) domain. This could involve correcting misinformation, adding new information about traffic regulations, vehicle dynamics, or handling complex road conditions. The goal is to improve the model's performance by directly editing its parameters or contextual understanding, without full retraining. This is valuable because full retraining is computationally expensive. Successful ADS domain editing facilitates rapid and precise updates to the model's behavior, addressing key challenges like **traffic rule misunderstanding**, **complex environmental awareness**, and the ability to **adapt to diverse vehicle states.**

#### LMMs in Driving
Large Multimodal Models (**LMMs**) are increasingly explored within autonomous driving, aiming to enhance perception, decision-making, and overall system robustness. Integrating **LMMs** offers potential advancements in handling complex, real-world driving scenarios by leveraging vast data for improved environment understanding. However, realizing this potential requires addressing key challenges like **domain adaptation, real-time processing, and ensuring reliability and safety**. Furthermore, existing models lack nuanced understanding and integration within autonomous systems which highlights the importance of new benchmarks and datasets specifically designed to evaluate and improve **LMMs** for autonomous driving. This paves the way for knowledge editing to modify the model's behavior without complete retraining, reducing catastrophic forgetting and extensive resource costs. 

#### Bench Tri-Axis
The "Bench Tri-Axis" design principle for evaluating LMMs in ADS offers a structured approach. It helps to **comprehensively assess model capabilities** by categorizing evaluation requirements into distinct scenario types. It considers both the input data types (video, images) and the level of reasoning needed (perception, understanding, decision-making), thus addressing the challenges faced by LMMs such as **traffic rule knowledge and diverse vehicle states**. Such approach also ensures a well-rounded evaluation.

#### Locality Struggle
**Locality struggle** in knowledge editing refers to the challenge of modifying a model's behavior regarding specific facts or concepts without inadvertently affecting its performance on unrelated knowledge. Ideally, an edit should be highly targeted, altering only the parameters necessary to represent the new information while preserving the model's existing competence across diverse domains. A significant issue arises when editing one aspect of knowledge negatively impacts another, potentially due to the distributed nature of information storage in neural networks. **Effective knowledge editing requires a delicate balance between precision and preservation**, ensuring that targeted modifications do not degrade the model's overall functionality or introduce unintended side effects. Several methods are used to maintain locality, including **modular architectures** that confine edits to specific components, **sparsity-inducing techniques** to limit the scope of parameter changes, and **regularization strategies** that penalize deviations from the original model behavior.  Evaluating locality requires comprehensive benchmarks that assess the model's performance on a wide range of tasks, particularly those unrelated to the edited knowledge. Moreover, **techniques that enhance interpretability** can help to identify and mitigate potential locality issues by revealing how edits propagate through the network.

#### OOM Edit Decline
**Out-of-Memory (OOM) errors leading to edit decline** signifies a critical challenge. When a knowledge editing method hits an OOM, it abruptly halts further updates, crippling its capacity for continual learning. It reveals that methods struggle to manage memory effectively. Specifically, longer multimodal inputs exacerbate memory issues, as codebooks are not good at distinct representation. This reveals a limitation when models must adapt to a constant stream of new information in complex, real-world scenarios, such as ADS. Thus, OOM acts as a bottleneck, preventing the system from refining its knowledge and adapting to the environment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/category_static.png)

> 🔼 This figure shows a breakdown of the different scenario types included in the ADS-Edit dataset.  The three main scenario types are: Perception (evaluating basic visual perception), Understanding (assessing comprehension of autonomous driving knowledge), and Decision Making (testing the ability to make informed driving decisions).  The numbers represent the quantity of data samples belonging to each scenario type.
> <details>
> <summary>read the caption</summary>
> Figure 2: The statistics of scenario types for ADS-Edit.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/process.png)

> 🔼 This figure illustrates the process of constructing the ADS-Edit dataset, which is a multimodal knowledge editing dataset specifically designed for autonomous driving systems.  It begins by selecting three autonomous driving datasets as raw data sources: LingoQA, DriveLM, and CODA-LM.  These datasets contain various types of visual data including videos, multi-view images, and single images, along with associated questions and answers. The raw data undergoes preprocessing steps, primarily condensing answers using the Deepseek-v3 model to improve editing performance and simplify evaluation. The processed data is then split into three subsets for reliability, generality, and locality evaluation.  Each subset has additional steps to create targeted data that focuses on a particular evaluation aspect, such as rephrasing questions for generality testing.  Finally, quality control is implemented through manual verification to ensure data accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overview of ADS-Edit construction pipeline.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/seq_qwen2.jpg)

> 🔼 This figure displays the results of lifelong knowledge editing experiments using the Qwen2-VL language model.  Four different knowledge editing methods (Prompt, AdaLora, GRACE, and WISE) were tested. The y-axis shows the performance metrics (Reliability, Generality, and Locality), and the x-axis represents the number of editing iterations. The figure shows how these metrics evolve as the model receives more and more edits, highlighting the effect of repeated knowledge updates.  The 'x' symbol indicates that the Prompt method caused an out-of-memory error at 750 and 1000 iterations. This suggests that some methods are more computationally expensive than others for this type of task and model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Lifelong Editing results of Qwen2-VL. × indicates that Prompt triggers an Out-of-Memory (OOM) error at 750 and 1000 editing iterations.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/category_2.jpg)

> 🔼 This figure displays the average generality scores achieved by different knowledge editing methods across three autonomous driving scenarios: perception, understanding, and decision-making.  Generality measures how well a model generalizes its learned knowledge to new, similar situations after knowledge editing. The graph helps assess the effectiveness and robustness of each knowledge editing technique across various complexities of driving tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5:  The average generality metric of single editing across different scenarios.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/filetype_2.jpg)

> 🔼 This figure shows the average generality scores achieved by different knowledge editing methods across three data types: video, multi-view images, and single images. Generality refers to how well a model generalizes its learned knowledge to new, unseen examples.  The results illustrate the relative effectiveness of knowledge editing techniques on different data modalities in the context of autonomous driving.
> <details>
> <summary>read the caption</summary>
> Figure 6:  The average generality metric of single editing across different data types.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/case_ppt.png)

> 🔼 This figure provides a qualitative analysis of the WISE (Wang et al., 2024b) knowledge editing method applied to the LLaVA-OneVision model. It showcases three example scenarios highlighting successful knowledge editing in autonomous driving. The top row illustrates the editing of autonomous driving knowledge, where the model successfully incorporates the user's instruction to adjust driving based on visibility conditions. The second and third rows show how WISE edits facts (material of umbrella) and context-dependent knowledge (location of keyboard shortcut), successfully preserving the pre-existing knowledge in these separate domains. However, it also highlights how WISE struggles to maintain local knowledge while updating other, related knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 7: Cases analysis of editing LLaVA-OneVision with WISE.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/seq_llava.jpg)

> 🔼 Figure 8 presents the results of lifelong knowledge editing on the LLaVA-OneVision model.  Lifelong editing involves sequentially updating the model's knowledge multiple times and evaluating its performance after each update. The figure displays the model's performance on various metrics (Reliability, Generality, and Locality) across different numbers of editing iterations (1, 250, 500, 750, and 1000). The 'Prompt' method, a simple approach to knowledge editing, encountered Out-of-Memory (OOM) errors at 750 and 1000 iterations, indicating its limitation in handling numerous edits.  The other methods (AdaLora, GRACE, and WISE) show varying degrees of success in maintaining good performance across the metrics, highlighting their robustness to sequential updates.
> <details>
> <summary>read the caption</summary>
> Figure 8: Lifelong Editing results of LLaVA-OneVision. × indicates that Prompt triggers an Out-of-Memory (OOM) error at 750 and 1000 editing iterations.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/video_case.png)

> 🔼 This figure shows an example from the ADS-Edit benchmark dataset, specifically illustrating a video data case.  It displays multiple modalities of data including a video clip, an original question about obstacle recognition,  a rephrased version of the question, the ground truth answer, and even examples of unrelated questions and answers used to assess locality. The inclusion of these elements highlights the multimodal and multifaceted nature of the ADS-Edit dataset designed for knowledge editing tasks in autonomous driving.
> <details>
> <summary>read the caption</summary>
> Figure 9: A video data case of ADS-Edit benchmark.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/multi_case.png)

> 🔼 This figure shows an example from the ADS-Edit benchmark dataset, specifically showcasing a multi-view image scenario.  It includes the original question, a rephrased version, the ground truth answer, and the answers generated by the model. The image data consists of multiple views of the same scene, to test the model's ability to handle such data.  It also includes examples of unrelated knowledge queries and answers to evaluate the model's locality, meaning its ability to update knowledge without affecting unrelated information.
> <details>
> <summary>read the caption</summary>
> Figure 10: A multi-views image data case of ADS-Edit benchmark.
> </details>



![](https://arxiv.org/html/2503.20756/extracted/6213327/figures/single_case.png)

> 🔼 This figure shows a sample from the ADS-Edit benchmark dataset, specifically demonstrating a single image data point.  The example includes the data type, image type, source dataset, original question, rephrased question, answer, image, rephrased image, original ground truth, rephrased ground truth, and locality data (unrelated question and answer). This illustrates the structure and components of the multimodal knowledge editing dataset used for evaluating various model capabilities in autonomous driving scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 11: A single image data case of ADS-Edit benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.5.5">
<tr class="ltx_tr" id="S3.T2.5.5.5">
<td class="ltx_td ltx_border_tt" id="S3.T2.5.5.5.6"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.5.5.5.7">Method</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.1.1.1.1">Reliability   <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.2.2.2.2">T-Generality   <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.3.3.3.3">M-Generality   <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.4.4.4.4">T-Locality   <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.5.5.5.5">M-Locality   <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.6">
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T2.5.5.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.6.2.1">LLaVA-Onevision</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.6.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.7">
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.7.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.2">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.3">94.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.4" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.7.4.1" style="background-color:#CCCCCC;">90.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.5">95.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.6">84.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.7.7">68.13</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.8">
<td class="ltx_td" id="S3.T2.5.5.8.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.2">AdaLora</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.3">78.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.4">72.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.5">75.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.6">85.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.8.7">81.12</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.9">
<td class="ltx_td" id="S3.T2.5.5.9.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.2">GRACE</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.3" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.9.3.1" style="background-color:#CCCCCC;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.4">28.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.5">28.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.6" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.9.6.1" style="background-color:#CCCCCC;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.9.7" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.9.7.1" style="background-color:#CCCCCC;">100.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.10">
<td class="ltx_td" id="S3.T2.5.5.10.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.2">WISE</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.3">99.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.4">86.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.5" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.10.5.1" style="background-color:#CCCCCC;">95.78</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.6">94.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.10.7">99.98</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.11">
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.11.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T2.5.5.11.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.11.2.1">Qwen2-VL</span></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.11.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.12">
<td class="ltx_td ltx_border_t" id="S3.T2.5.5.12.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.2">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.3">90.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.4">84.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.5">90.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.6">89.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.12.7">72.44</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.13">
<td class="ltx_td" id="S3.T2.5.5.13.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.2">AdaLora</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.3">79.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.4">75.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.5">78.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.6">82.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.13.7">69.37</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.14">
<td class="ltx_td" id="S3.T2.5.5.14.1"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.2">GRACE</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.3" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.14.3.1" style="background-color:#CCCCCC;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.4">27.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.5">29.93</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.6" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.14.6.1" style="background-color:#CCCCCC;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.14.7" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.14.7.1" style="background-color:#CCCCCC;">100.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.15">
<td class="ltx_td ltx_border_bb" id="S3.T2.5.5.15.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.2">WISE</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.3">94.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.4" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.15.4.1" style="background-color:#CCCCCC;">85.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.5" style="background-color:#CCCCCC;"><span class="ltx_text" id="S3.T2.5.5.15.5.1" style="background-color:#CCCCCC;">91.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.6">94.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.15.7">99.85</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of single knowledge editing experiments on the ADS-Edit dataset.  The performance of four different knowledge editing methods (Prompt, AdaLora, GRACE, and WISE) is evaluated across two Large Multimodal Models (LLaVA-OneVision and Qwen2-VL).  The results are broken down into five key metrics: Reliability (the accuracy of successfully editing the model's behavior), Textual Generality (how well the edits generalize to similar textual queries), Multimodal Generality (how well the edits generalize to similar visual inputs), Textual Locality (how well the edits preserve the model's behavior on unrelated textual knowledge), and Multimodal Locality (how well the edits preserve the model's behavior on unrelated visual knowledge).  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Single edit results on the ADS-Edit. Reliability denotes the accuracy of successful editing. T-Generality, M-Generality represents textual and multimodal generality. T-Locality, M-Locality refer to the textual and multimodal stability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T3.1.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Low Video Frame rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">Max Video Frame rate</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2.1">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2.2">90.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.3.1">92.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.3.1">AdaLora</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.3.2">70.04</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.3.1">74.30</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.4.1">GRACE</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.2.1">34.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.4.3">28.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.1.5.1">WISE</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.2.1">99.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.1.5.3">91.37</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average generality scores achieved by four different knowledge editing methods (Prompt, AdaLora, GRACE, and WISE) across various video frame rates in the context of autonomous driving.  The results show how well each method generalizes its knowledge to unseen data with varying degrees of temporal information (number of frames). Lower frame rates represent less temporal information and potentially reduce the effectiveness of some editing methods.
> <details>
> <summary>read the caption</summary>
> Table 3:  The average generality results from different video frames.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20756/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20756/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}