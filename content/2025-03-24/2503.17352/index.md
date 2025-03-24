---
title: "OpenVLThinker: An Early Exploration to Complex Vision-Language Reasoning via Iterative Self-Improvement"
summary: "OpenVLThinker: Iteratively refining vision-language models for complex reasoning, bridging the gap to R1-style capabilities."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 University of California, Los Angeles",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17352 {{< /keyword >}}
{{< keyword icon="writer" >}} Yihe Deng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17352" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17352" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17352/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advancements in Large Language Models (LLMs) showcase sophisticated behaviors like self-verification using Reinforcement Learning (RL). This paper explores whether such reasoning capabilities can be integrated into Large Vision-Language Models (LVLMs) to enhance their multimodal reasoning on challenging tasks. The method uses supervised fine-tuning (SFT) on training data and RL to generalize.



The authors introduce **OpenVLThinker**, an LVLM, that iteratively leverages SFT and RL for self-improvement. They distill reasoning from text-based models by generating reasoning steps from high-quality image captions. Iterative RL training enhances reasoning skills. This approach improves performance on benchmarks like MathVista, demonstrating its potential for robust vision-language reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Iterative self-improvement using SFT and RL can significantly enhance complex reasoning in LVLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Distilling reasoning capabilities from text-based models to vision-language models is an effective strategy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The combination of SFT for initial structure and RL for refinement stabilizes and improves reasoning pathways. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces a novel iterative self-improvement framework that enhances reasoning in LVLMs. It offers new methods for improving multi-modal reasoning, paving the way for more advanced AI systems capable of tackling complex tasks. The approach of combining SFT and RL could inspire new research directions.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17352/x1.png)

> 🔼 This bar chart displays the accuracy of the OpenVLThinker-7B model on three multi-modal reasoning benchmarks: MathVista, MathVerse, and MathVision.  The accuracy is presented as a percentage, and separate bars are shown for OpenVLThinker-7B, Qwen2.5-VL-7B, and GPT-4 (reported).  The chart visually compares the performance of OpenVLThinker-7B against existing models on these challenging tasks, highlighting its relative strengths.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance (accuracy) of OpenVLThinker-7B on multi-modal reasoning benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1">GPT-4o (reported)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.1">OpenVLThinker-7B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.2">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.3">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.4.1">70.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.1">MathVerse</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2">50.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.3">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.3.4.1">47.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.1">MathVision (testmini)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.4.4.1">29.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.5.1">MathVision (full)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.2">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.3">24.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.5.4.1">25.3</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the accuracy scores achieved by different large language models (LLMs) on three complex visual reasoning benchmarks: MathVista, MathVerse, and MathVision.  The models compared are OpenVLThinker-7B (the model introduced in this paper), Qwen2.5-VL-7B (a baseline model), and GPT-4 (a state-of-the-art model used as a reference point).  The table shows that OpenVLThinker-7B significantly outperforms the Qwen2.5-VL-7B baseline and achieves performance comparable to or exceeding that of GPT-4 on all three benchmarks, demonstrating the effectiveness of the iterative self-improvement approach used to train OpenVLThinker-7B.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results across multi-modal reasoning benchmarks including MathVista, MathVerse and MathVision. We include the reported performance of GPT-4o as a reference. OpenVLThinker-7B consistently and effectively improves upon the performance of Qwen2.5-VL-7B, surpassing or matching the performance of GPT-4o.
> </details>





### In-depth insights


#### Iterative LVLMs
The concept of iterative LVLMs (Large Vision-Language Models) represents a promising avenue for enhancing the reasoning and problem-solving capabilities of these models. **Iterative refinement allows the model to progressively improve its understanding of complex visual and textual information**. In this approach, the LVLM generates an initial response, which is then analyzed and refined in subsequent iterations. This iterative process can involve techniques such as self-correction, where the model identifies and rectifies its own errors, or external feedback, where human experts or automated systems provide guidance. **One key benefit of iterative LVLMs is their ability to handle ambiguous or incomplete information**. By repeatedly analyzing and refining its response, the model can gradually resolve uncertainties and arrive at a more accurate and nuanced understanding. Iteration may involve both the visual and language aspects of the model, and these might require independent refinement. Additionally, **the computational cost of iterative processing needs to be carefully managed to ensure efficiency**. Careful design of the refinement process is also crucial to prevent the model from becoming stuck in local optima or overfitting to specific examples. Ultimately, **the goal is to create LVLMs that can effectively handle complex, real-world tasks that require a deep understanding of both visual and textual information**. Iterative methods offer a powerful means of achieving this goal, by enabling models to progressively refine their understanding and reasoning abilities.

#### SFT & RL synergy
The synergy between Supervised Fine-Tuning (SFT) and Reinforcement Learning (RL) presents a compelling paradigm for advancing vision-language models. **SFT provides a crucial structured foundation**, enabling models to learn reasoning patterns from curated datasets, effectively constraining the search space for RL. In essence, it acts as a warm-start mechanism, predisposing the model towards desirable behaviors. Consequently, RL refines and optimizes these foundational skills. It facilitates the exploration of nuanced reasoning strategies and enhances generalization through interaction with an environment, often defined by reward signals aligned with task objectives. The iterative application of SFT and RL forms a virtuous cycle, where RL-improved models generate higher-quality SFT datasets, thereby accelerating learning and stabilizing performance. **This synergy bypasses the reliance on explicit reward engineering**, as SFT primes the model, and the RL component is used to navigate the model towards robust reasoning. Therefore, **SFT & RL synergy improves model performance, boosts confidence, and reduces the need for format rewards**.

#### R1 Distillation
**R1 Distillation**, inspired by DeepSeek-R1's success, aims to imbue vision-language models (LVLMs) with advanced reasoning. The process typically involves using a powerful, text-based R1 model to generate reasoning chains for visually-grounded tasks. These chains, paired with corresponding images and questions, form a training dataset. LVLMs are then fine-tuned on this data to distill the R1 model's reasoning prowess into the visual domain. This is achieved using lightweight training data and Reinforcement Learning(RL) to improve generalization. **High-quality captions** of images sourced from diverse visual datasets are used, and **reasoning steps** are generated using pure-text R1 models. Iterative RL training further enhances reasoning skills, and each iteration's RL-improved model generating refined SFT datasets for the next round. The process consistently improves reasoning performance on challenging benchmarks. The code, model and data are open source.

#### CoT Limitations
Chain-of-Thought (CoT) prompting, while powerful, faces limitations. **Generating diverse and relevant reasoning paths is challenging**; models often get stuck in repetitive or irrelevant chains. Also, CoT's **reliance on large models and extensive training data makes it resource-intensive.** Transferring CoT capabilities to vision-language models poses difficulties due to added complexity, such as needing a lot of resources. The generated reasoning could have some information loss because of the translation into text. Lastly, CoT's potential for **"hallucinations" or making up facts within the reasoning process** requires careful verification mechanisms, and **maintaining reasoning consistency** is also a big task.

#### Reasoning gains
**Reasoning gains** in multimodal models are a crucial area of exploration, as they determine the model's ability to effectively integrate and process information from both visual and textual sources. Improved reasoning capabilities can lead to more accurate and nuanced understanding of complex scenarios, enabling the model to perform tasks such as visual question answering, image captioning, and commonsense reasoning with greater proficiency. Approaches to enhance reasoning gains include **distilling knowledge from powerful language models**, employing **iterative training methods like self-improvement via RL**, and **carefully curating datasets** that emphasize logical inference and contextual understanding. Analyzing the specific mechanisms by which these gains are achieved, such as improvements in attention mechanisms, knowledge representation, or inference algorithms, is essential for guiding future research and development in the field. Furthermore, evaluating the transferability of reasoning skills across different tasks and domains is critical for building robust and generalizable multimodal systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17352/x2.png)

> 🔼 This figure illustrates the iterative training process for OpenVLThinker-7B, a vision-language model.  The process starts with a base model and a text-based reasoning model (DeepSeek-R1).  An image is input, and a captioning model generates a caption.  The caption and the original question are then fed to the DeepSeek-R1 model, which produces reasoning steps and an answer. This data (image, question, reasoning, answer) constitutes the initial Supervised Fine-Tuning (SFT) dataset.  Iteratively, the model is fine-tuned using this SFT dataset and then further improved with reinforcement learning (GRPO).  The improved model from each iteration then generates refined SFT data for the next round. This iterative approach, combining SFT and GRPO, results in improved reasoning ability,  along with progressively more challenging questions to further enhance the model's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Demonstration of the training process toward OpenVLThinker-7B. We obtain the SFT data for iteration 1 via text-based R1 model that only receives the question and the generated image caption. Subsequently, we apply SFT and GRPO iteratively to leverage new reasoning data from the previous iteration and achieve self-improvement. We also evolve the data sources to progressively include more challenging questions over iterations.
> </details>



![](https://arxiv.org/html/2503.17352/x3.png)

> 🔼 This figure displays an example of OpenVLThinker's reasoning process. The model is presented with a question about an image (the image and question are shown in Figure 9).  The model demonstrates a chain of thought, showing its step-by-step reasoning. Notably, the model also exhibits self-reflection, verifying its work and correcting itself when necessary.  This example illustrates the model's ability to perform complex reasoning tasks and its capacity for self-correction and verification.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example reasoning trace of OpenVLThinker. It shows desirable reasoning behavior including self-reflection and self-verification, such as “I double-check my work”. Corresponding image and question are shown in Figure 9.
> </details>



![](https://arxiv.org/html/2503.17352/x4.png)

> 🔼 This figure displays the iterative performance improvement of the OpenVLThinker model on the MathVista benchmark.  The process involves alternating between supervised fine-tuning (SFT) and Group Relative Policy Optimization (GRPO) reinforcement learning.  Each SFT iteration (SFT-Iter(i)) fine-tunes the base Qwen2.5-VL-7B model using data generated by the previous GRPO iteration (GRPO-Iter(i-1)).  Each GRPO iteration trains the model from the previous SFT iteration. This iterative approach demonstrates consistent performance gains over multiple rounds.
> <details>
> <summary>read the caption</summary>
> Figure 4: Iterative performance improvement of our model on MathVista. We note that SFT-Iter(i) is always fine-tuned from the base model Qwen2.5-VL-7B, with its training data generated from GRPO-Iter(i-1). GRPO-Iter(i) is obtained by applying GRPO to train SFT-Iter(i).
> </details>



![](https://arxiv.org/html/2503.17352/x5.png)

> 🔼 The figure shows two line graphs, (a) and (b), illustrating the training progress of the model using GRPO at iteration 1.  Graph (a) displays the average response length over training steps, while graph (b) shows the test accuracy on a held-out validation set. Both graphs indicate the model's performance improvement during training, with the test accuracy rising alongside an increase in average response length.
> <details>
> <summary>read the caption</summary>
> (a) Average response length
> </details>



![](https://arxiv.org/html/2503.17352/x6.png)

> 🔼 This figure shows the test accuracy during the training process of the GRPO (Group Relative Policy Optimization) at iteration 1.  The x-axis represents the training step, and the y-axis shows the test accuracy on a held-out validation set. The graph illustrates the model's performance improvement over training steps.  The accuracy is observed on a held-out validation set from the same distribution as the training data.
> <details>
> <summary>read the caption</summary>
> (b) Test score
> </details>



![](https://arxiv.org/html/2503.17352/x7.png)

> 🔼 This figure displays the training progress of the model using Group Relative Policy Optimization (GRPO) during the first iteration.  The left subplot shows the average response length generated by the model over training steps. The right subplot shows the test accuracy on a held-out validation dataset, which has the same distribution as the training dataset. The figure demonstrates how the model's performance and response length evolve during the training process.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training progress with GRPO at iteration 1. We report the test accuracy on a held-out validation set from the same distribution as the training data.
> </details>



![](https://arxiv.org/html/2503.17352/x8.png)

> 🔼 The figure shows two subplots. Subplot (a) presents a line graph illustrating the average response length during the training process of the GRPO (Group Relative Policy Optimization) at iteration 1.  The x-axis represents the training step, while the y-axis indicates the average response length. The graph shows fluctuations in the average response length over the training steps. Subplot (b) displays a line graph depicting the test accuracy on a held-out validation set during the same GRPO training process at iteration 1. The x-axis represents the training step, and the y-axis shows the test accuracy. This subplot demonstrates the test accuracy's behavior over the course of training.  Together, the two subplots provide insight into the relationship between response length and model performance during GRPO training.
> <details>
> <summary>read the caption</summary>
> (a) Average response length
> </details>



![](https://arxiv.org/html/2503.17352/extracted/6298557/figures/image.jpg)

> 🔼 The figure shows the test accuracy during the training process of the model using GRPO at iteration 1. The x-axis represents the training step, and the y-axis represents the test accuracy on a held-out validation set. The accuracy gradually improves over the training steps, indicating that the GRPO optimization process is effective in improving the model's performance.  The graph demonstrates that as the average length of model responses increases during the GRPO optimization process, the test accuracy also increases.
> <details>
> <summary>read the caption</summary>
> (b) Test score
> </details>



![](https://arxiv.org/html/2503.17352/extracted/6298557/figures/example_question.jpg)

> 🔼 This figure displays the training progress of the model using Group Relative Policy Optimization (GRPO) at iteration 2.  The left subplot shows the average response length throughout the training process, indicating the length of the model's reasoning steps. The right subplot presents the test accuracy, measured on a held-out validation set that mirrors the distribution of the training data, allowing for a robust evaluation of the model's generalization capabilities. The trendlines illustrate the interplay between the length of the reasoning process and the overall model accuracy, revealing the effectiveness of the GRPO training strategy.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training progress with GRPO at iteration 2. We report the test accuracy on a held-out validation set from the same distribution as the training data.
> </details>



![](https://arxiv.org/html/2503.17352/x9.png)

> 🔼 This figure displays the performance (Pass@k accuracy) of different reasoning models on a visual question answering (VQA) task. The performance is evaluated based on captions generated by two different vision-language large language models (LLMs): LLaVA-v1.6-34B and GPT-40.  The x-axis represents the number of reasoning paths sampled (k), while the y-axis shows the accuracy. Different colored lines represent different reasoning models, comparing standard models against those incorporating R1-style reasoning. The results illustrate the impact of caption quality from different vision-language models on the effectiveness of various reasoning approaches in a VQA context.
> <details>
> <summary>read the caption</summary>
> Figure 7: Pass@k accuracy of different reasoning models based on captions generated with different vision-language LLMs.
> </details>



![](https://arxiv.org/html/2503.17352/x10.png)

> 🔼 Figure 8 shows the image used in a visual reasoning task presented in Section 4.2 of the paper. The image contains a simple line segment drawn on a ruler. The task for the model is to determine the length of the line, demonstrating the model's ability to understand simple measurements using visual information.
> <details>
> <summary>read the caption</summary>
> Figure 8: The image to the visual reasoning task that we showed in section 4.2
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.1">
<span class="ltx_p" id="S4.T2.1.1.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1.1">Data Sources</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1">Data Amount</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1">SFT-Iter1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.2.2.1">
<span class="ltx_p" id="S4.T2.1.2.2.1.1" style="width:284.5pt;">FigureQA, GEOS, Geometry3K, TabMWP, VizWiz, and AI2D</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.3">25k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.1">GRPO-Iter1</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.3.2.1">
<span class="ltx_p" id="S4.T2.1.3.2.1.1" style="width:284.5pt;">Geometry3K, GEOS, FigureQA, CLEVR, and SuperCLEVR</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.3">5k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.4.1">SFT-Iter2</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.4.2.1">
<span class="ltx_p" id="S4.T2.1.4.2.1.1" style="width:284.5pt;">FigureQA, GEOS, Geometry3K, TabMWP, VizWiz, AI2D, CLEVR, SuperCLEVR, IconQA, MapQA, and ScienceQA</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.4.3">5k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.5.1">GRPO-Iter2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.5.2.1">
<span class="ltx_p" id="S4.T2.1.5.2.1.1" style="width:284.5pt;">Geometry3K, GEOS, FigureQA, CLEVR, and SuperCLEVR</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.3">5k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.6.1">SFT-Iter3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.6.2.1">
<span class="ltx_p" id="S4.T2.1.6.2.1.1" style="width:284.5pt;">FigureQA, GEOS, Geometry3K, TabMWP, VizWiz, AI2D, CLEVR, SuperCLEVR, IconQA, MapQA, and ScienceQA</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.6.3">5k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.7.1">GRPO-Iter3</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T2.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.7.2.1">
<span class="ltx_p" id="S4.T2.1.7.2.1.1" style="width:284.5pt;">Geometry3K (larger proportion), GEOS, FigureQA, CLEVR, and SuperCLEVR (larger proportion)</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.7.3">5k</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the data used to train the OpenVLThinker model across three iterative rounds of supervised fine-tuning (SFT) and reinforcement learning (RL).  Each iteration builds upon the previous one, with the model's improved reasoning capabilities from the RL phase used to generate refined training data for the next SFT phase.  The table shows the datasets included in each iteration, illustrating a progressive increase in the difficulty of the reasoning tasks.  The amount of data used in each SFT and RL iteration is also specified.  This iterative process enables the model to learn more complex reasoning skills over time.
> <details>
> <summary>read the caption</summary>
> Table 2: Data sources and amounts for different iterations. We progressively evolve the data so that more challenging data are included in later iterations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.1">
<tr class="ltx_tr" id="S4.T3.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.1">Model Variant</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.2.1">Accuracy (%)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.3.1">Qwen2.5-VL-7B (baseline)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.3.2">68.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.4.1">Vanilla SFT data (unfiltered)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.2">48.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.1">Filtered by length (<math alttext="&lt;" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><lt id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">&lt;</annotation></semantics></math>500 words)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.2">55.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.5.1">Removed reflections (<span class="ltx_text ltx_font_bold" id="S4.T3.1.5.1.1">SFT-Iter1</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.5.2">62.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different data filtering strategies used during supervised fine-tuning (SFT) on the MathVista benchmark.  It shows how different preprocessing techniques applied to the training data impact the model's accuracy.  Specifically, it contrasts the results obtained using unfiltered data, data filtered by length (under 500 words), and data with reflections removed. This allows for an analysis of how data cleaning affects the model's ability to learn effective reasoning strategies.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance on the MathVista benchmark comparing different SFT data-filtering strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T4.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2">Qwen2.5-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3">R1-Onevision-7B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4">SFT-Iter1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.1.2.1">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.2.2">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.2.3">61.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.2.4">62.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of the accuracy achieved on the MathVista benchmark by different models.  The baseline is Qwen2.5-VL-7B, whose reported performance was replicated in this study.  The table also includes the performance of R1-Onevision, another model which was fine-tuned using supervised fine-tuning (SFT) with a substantially larger dataset (119k examples) compared to the current study.  The key finding is that both the current study's SFT-Iter1 model and R1-Onevision exhibit a performance decrease compared to the baseline, suggesting that simply applying SFT with a large dataset may not guarantee improved performance on this benchmark.
> <details>
> <summary>read the caption</summary>
> Table 4: Accuracy (%) on MathVista. While our evaluation recovered the reported performance of Qwen2.5-VL-7B, the performance of SFT-ed model R1-Onevision with 119k SFT data exhibited similar performance decline as our SFT-Iter1 under the same evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.1">
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1">Caption Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.2.1">pass@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.3.1">pass@2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.4.1">pass@4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.2.1">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.2.2.1">33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.2.3.1">37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.2.4">44</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.3.1">Refined</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.3.2">29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.3.3">35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.1.3.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.3.4.1">46</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a single-round caption refinement experiment on Visual Question Answering (VQA) tasks.  It shows the impact of refining captions on the model's ability to correctly answer questions, measuring accuracy at different thresholds (pass@1, pass@2, pass@4). The results indicate only a minor improvement in accuracy at the highest threshold (pass@4), while accuracy remains largely unchanged at lower thresholds. This suggests that a single round of caption refinement is insufficient to produce significant gains in VQA performance.
> <details>
> <summary>read the caption</summary>
> Table 5: VQA accuracy after a single round of caption refinement. While pass@4 increases slightly, pass@1 and pass@2 remain largely unchanged.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T6.1.1.1">max_new_tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.2">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.2.1">top_p</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.2.2">0.001</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.3.1">top_k</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.2">1</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T6.1.4.1">temperature</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.4.2">0.01</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T6.1.5.1">repetition_penalty</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.5.2">1.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the inference phase of the OpenVLThinker model.  It includes values for parameters such as `max_new_tokens`, controlling the maximum number of tokens generated; `top_p` and `top_k`, which govern token selection probabilities;  `temperature`, influencing randomness in generation; and `repetition_penalty`, preventing repetitive outputs.
> <details>
> <summary>read the caption</summary>
> Table 6: Inference hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.1">
<tr class="ltx_tr" id="A2.T7.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T7.1.1.1">Data type</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.1.1.2">bf16</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.2.1">Learning rate</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.2.2">5e-7</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.3.1">Global batch size</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.3.2">32</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.4.1">Scheduler</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.4.2">Cosine</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.5.1">Warmup ratio</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.5.2">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T7.1.6.1">Num train epochs</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.6.2">1</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T7.1.7.1">Image max pixels</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.7.2">262144</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 details the hyperparameters used during the supervised fine-tuning phase of the OpenVLThinker model training.  It lists the data type used (bf16), the learning rate, the global and rollout batch sizes, the scheduler type (Cosine), the warmup ratio, the number of training epochs, and the maximum number of image pixels.
> <details>
> <summary>read the caption</summary>
> Table 7: Supervised fine-tuning hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tr class="ltx_tr" id="A2.T8.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T8.1.1.1">Rollout batch size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.2">512</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.2.1">Global batch size</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.2.2">128</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.3.1">Max grad norm</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.3.2">1.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.4.1">Data type</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.4.2">bf16</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.5.1">Learning rate</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.5.2">1e-6</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.6.1">Weight decay</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.6.2">1e-2</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T8.1.7.1">Warmup ratio</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.7.2">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T8.1.8.1">Rollout temperature</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.8.2">1.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the hyperparameters used in the Group Relative Policy Optimization (GRPO) algorithm, a reinforcement learning method employed in the study.  These hyperparameters control various aspects of the GRPO training process, including the batch sizes for both rollout and gradient calculations, the maximum gradient norm to prevent exploding gradients, the learning rate and weight decay for optimization, and the rollout temperature that affects the randomness of action selection during the rollout phase.
> <details>
> <summary>read the caption</summary>
> Table 8: GRPO hyperparameters.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17352/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17352/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}