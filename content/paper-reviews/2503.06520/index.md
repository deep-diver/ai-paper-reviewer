---
title: "Seg-Zero: Reasoning-Chain Guided Segmentation via Cognitive Reinforcement"
summary: "Seg-Zero: Cognitive Reinforcement for Reasoning-Chain Guided Segmentation!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 CUHK",]
showSummary: true
date: 2025-03-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.06520 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuqi Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.06520" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.06520" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.06520/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional reasoning segmentation methods are limited by supervised fine-tuning, lacking generalization and explicit reasoning. **Seg-Zero addresses these limitations with a novel framework that uses cognitive reinforcement to achieve remarkable generalizability and chain-of-thought reasoning.** It introduces a decoupled architecture comprising reasoning and segmentation models, interpreting user intentions and generating positional prompts for precise mask generation. This approach overcomes the constraints of existing methods, providing a more adaptable solution.



**Seg-Zero employs pure reinforcement learning, specifically GRPO, to fine-tune the reasoning model without explicit reasoning data.** A sophisticated reward mechanism integrates format and accuracy rewards, guiding optimization. **The model achieves robust zero-shot generalization and exhibits emergent test-time reasoning capabilities.** Experiments demonstrate that Seg-Zero surpasses prior models, highlighting its ability to generalize while presenting an explicit reasoning process. This framework advances reasoning segmentation, offering a robust and adaptable approach for complex visual tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Seg-Zero, a new framework for reasoning segmentation, uses reinforcement learning to achieve strong generalization and explicit chain-of-thought reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework includes decoupled reasoning and segmentation models, enhancing performance on both in-domain and out-of-domain data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach surpasses existing models by a significant margin, demonstrating emergent test-time reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to reasoning segmentation, enhancing model generalization and reasoning through reinforcement learning. It offers valuable insights for fine-tuning models using RL and opens new avenues for exploring cognitive capabilities in visual understanding tasks, which can inspire future research in AI and computer vision by addressing the limitations of current supervised methods, offering a more robust and adaptable solution for complex segmentation tasks. This approach promises significant advancements in areas requiring detailed visual analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2503.06520/x2.png)

> 🔼 Seg-Zero, a novel reasoning segmentation model, generates a reasoning chain before producing the final segmentation mask.  Unlike traditional supervised fine-tuning (SFT) methods, Seg-Zero uses a pure reinforcement learning (RL) approach, learning the reasoning process from scratch. This RL-based method shows significant improvement in both in-domain and out-of-domain segmentation tasks compared to SFT, and the explicit reasoning chain further enhances its performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Seg-Zero generates a reasoning chain before producing the final segmentation mask. It utilizes a pure reinforcement learning (RL) strategy, learning the reasoning process from zero. In comparison to supervised fine-tuning (SFT), the RL-based model demonstrates superior performance on both in-domain and out-of-domain data, and the integration of reasoning chain further enhances its effectiveness.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">Type</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">CoT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">RefCOCOg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">ReasonSeg</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Baseline</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<td class="ltx_td ltx_border_t" id="S4.T1.2.1.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">47.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.3.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">SFT</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">×</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">44.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.4.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.4.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">RL</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">×</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.4" style="padding-left:5.0pt;padding-right:5.0pt;">73.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.4.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">51.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.1.5.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.1.5.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">RL</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.5.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.5.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.5.4.4.1">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.1.5.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.5.4.5.1">53.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different training methods on a semantic segmentation task.  The methods compared include supervised fine-tuning (SFT) and reinforcement learning (RL), with and without chain-of-thought (CoT) prompting.  The results are shown for both in-domain (RefCOCOg) and out-of-domain (ReasonSeg) datasets. The table highlights that the model trained with RL and CoT achieves the best performance across both datasets, demonstrating the effectiveness of this approach for improving generalization capabilities in reasoning segmentation.
> <details>
> <summary>read the caption</summary>
> Table 1: Segmentation task comparison. Model trained with RL + CoT thinking reward achieves best performance on in-domain and OOD data.
> </details>





### In-depth insights


#### RL for Reasoning
**Reinforcement Learning (RL) offers a promising avenue for enhancing reasoning capabilities in AI systems.** Unlike supervised methods that rely on explicit reasoning data, RL enables models to learn reasoning strategies through trial and error, guided by reward signals. This approach allows for the emergence of novel reasoning chains and adaptation to complex, unseen scenarios. RL-based reasoning can potentially overcome limitations of traditional methods, such as catastrophic forgetting and poor generalization. By carefully designing reward functions that incentivize accurate and coherent reasoning, RL can unlock more robust and flexible AI systems capable of tackling intricate tasks requiring logical inference and problem-solving. **Pure RL can enable a model to learn reasoning from zero, by training MLLM to generate reasoning process and producing positional prompts.**

#### Seg-Zero Design
While the provided document doesn't have a section explicitly titled "Seg-Zero Design," the overall architecture and methodology provide ample grounds for insightful analysis. The core idea revolves around a **decoupled architecture**, separating reasoning and segmentation. This is a departure from end-to-end fine-tuning, allowing for targeted optimization. Reinforcement learning (RL) is used to train the reasoning module without explicit reasoning data which forces emergent reasoning. The design cleverly uses a reward mechanism encompassing format and accuracy. The structured prompts are vital, guiding the LLM towards creating a chain-of-thought before segmentation, thus, improving overall performance. The choice of the segmentation model (SAM2) due to its efficient inference speed is also notable. **Ablation studies validate design choices**, such as bbox and point prompts, highlighting their complementary roles in precise localization. The success of strict format rewards for OOD generalization underscores the importance of structured outputs. The RL approach to training shows it's a feasible method and performs better.

#### Emergent Abilities
**Emergent abilities** in AI models, particularly large language models (LLMs), refer to capabilities that arise unexpectedly as the model's size and complexity increase. These abilities are not explicitly programmed or designed into the model but rather emerge as a result of the model's learning process and its capacity to generalize from the vast amounts of data it has been trained on. A key characteristic is their **unpredictability**; they often appear suddenly and are not easily extrapolated from the model's performance at smaller scales. Another aspect is their **context-dependence**, in which an ability is shown only in certain task configurations or with the right prompt engineering. Understanding these emergent abilities is crucial for several reasons. Practically, they can lead to the development of AI systems capable of performing tasks previously thought impossible. Theoretically, they offer insights into the nature of intelligence and learning, potentially guiding the design of more effective AI architectures and training methods.

#### Decoupled Models
In the realm of machine learning, the concept of decoupled models presents a paradigm shift from traditional monolithic architectures. This approach advocates for breaking down complex tasks into smaller, more manageable sub-problems, each addressed by a dedicated model. The primary advantage lies in enhanced modularity; **individual components can be developed, tested, and optimized independently**, fostering faster iteration cycles and improved maintainability. Furthermore, decoupled models often exhibit greater flexibility, allowing for dynamic reconfiguration and adaptation to evolving task requirements. **Resource allocation can be tailored to each component's needs**, potentially leading to more efficient utilization of computational resources. However, the design of effective decoupling strategies requires careful consideration of task dependencies and communication interfaces between models. **The coordination and integration of outputs from multiple models introduce new challenges**, demanding sophisticated fusion mechanisms to ensure coherent and consistent overall performance. Moreover, the increased complexity of managing multiple models can add overhead and necessitate robust monitoring and orchestration tools. Despite these challenges, the potential benefits of decoupled models—namely, increased modularity, flexibility, and resource efficiency—make them a compelling architectural choice for a wide range of applications.

#### Reward Functions
Reward functions are **critical** in reinforcement learning, shaping the model's learning trajectory. A good reward function should **align** with the task's objective. The design is often manual, requiring domain expertise and iteration to avoid unintended behaviors. Rewards can be **dense** (frequent feedback) or **sparse** (delayed feedback). They may incorporate multiple components (e.g., accuracy, format). A sophisticated reward function can promote desired attributes. For reasoning-based tasks, it could reward **CoT** or intermediate steps. A **strict** reward, compared to a soft reward, will greatly improve model performance gain on OOD data. It is more challenging to sample formats that precisely match the strict criteria. However, as the training step increases, the model with strict format reward will tend to output a longer response.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.06520/x3.png)

> 🔼 This figure illustrates the reinforcement learning process used to train the Seg-Zero model.  The model generates multiple segmentation mask proposals, each accompanied by a reasoning chain.  The reward function then assesses each proposal based on factors such as format correctness and accuracy (Intersection over Union or IoU). The model learns to generate higher-quality segmentation masks by optimizing for these reward signals.  The example shows three different proposals and their associated rewards.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of our RL training process. In this case, the model generates three samples by itself, calculates the rewards, and optimizes towards samples that achieve higher rewards.
> </details>



![](https://arxiv.org/html/2503.06520/x4.png)

> 🔼 Seg-Zero uses a two-stage approach for reasoning-based image segmentation.  First, a multi-modal large language model (MLLM) acts as a reasoning model. It receives an image and a user prompt or question, then generates a reasoning chain that helps focus on the relevant object within the image and produces segmentation prompts.  These prompts include bounding box coordinates and pixel-level point locations that pinpoint the target object's precise boundaries. Second, a segmentation model takes these prompts as input and outputs a pixel-wise mask representing the segmented object.  The architecture demonstrates how reasoning and segmentation tasks can be decoupled, leveraging the strengths of large language models and specialized segmentation models for effective reasoning segmentation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Seg-Zero includes a reasoning model and a segmentation model. The reasoning model is a MLLM that generates a reasoning chain and provides segmentation prompts. Subsequently the segmentation model produces pixel-wise mask.
> </details>



![](https://arxiv.org/html/2503.06520/x5.png)

> 🔼 This figure details the user prompt used within the Seg-Zero model.  The prompt instructs the model to locate a specific object ('{Question}') within an image, providing the bounding box coordinates and two points for precise localization. The model is further guided to explain its reasoning process in detail (using <think> and </think> tags), concluding with the precise object coordinates (using <answer> and </answer> tags).  The '{Question}' placeholder is replaced with the actual object description, denoted as  'T', during both training and inference phases.  This structured prompt ensures the model generates detailed reasoning steps and accurately outputs the object location.
> <details>
> <summary>read the caption</summary>
> Figure 4: User prompt for Seg-Zero. ‘{Question}’ is replaced with object description 𝐓𝐓\mathbf{T}bold_T in the training and inference.
> </details>



![](https://arxiv.org/html/2503.06520/x6.png)

> 🔼 The figure compares the performance of models trained using supervised fine-tuning (SFT) and reinforcement learning (RL) on visual question answering (VQA) tasks.  It shows that SFT leads to catastrophic forgetting, where the model loses its ability to perform well on general VQA tasks after fine-tuning on a specific task. In contrast, the RL approach maintains general VQA capabilities, indicating its superior robustness and generalization ability.  The chart likely displays the accuracy or other relevant metrics on different VQA datasets for both SFT and RL-trained models, illustrating the difference in performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual QA task comparison. SFT suffers catastrophic forgetting, while RL preserves general Visual QA ability.
> </details>



![](https://arxiv.org/html/2503.06520/x7.png)

> 🔼 Figure 6 showcases qualitative results from the ReasonSeg dataset.  It displays several examples of user queries and how the Seg-Zero model utilizes its reasoning chain to interpret complex instructions and accurately segment the target objects within images. The figure demonstrates the model's ability to reason through nuanced queries, handle multiple objects within a single query, and produce accurate segmentation masks despite ambiguity or complexity in the instructions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Results on ReasonSeg [17]. The reason chain helps analyze user instructions and segment the correct objects.
> </details>



![](https://arxiv.org/html/2503.06520/x8.png)

> 🔼 This figure displays the change in the average and minimum length of model responses during training.  It illustrates how the length of generated text varies as the model learns, and particularly how model size affects response length.  Larger models (with more parameters) show a trend towards generating longer responses, particularly after the initial training stages. This may reflect increased reasoning capabilities or the increased complexity of the larger model's internal representations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Changes in completion length during training. Larger scale model tends to generate longer response.
> </details>



![](https://arxiv.org/html/2503.06520/x9.png)

> 🔼 Figure 8 presents the mean reward values across batches during the training process of the Seg-Zero model.  The graph displays the trends of reward values over training iterations, illustrating the convergence of the different rewards used in reinforcement learning.  Specifically, it shows the trends for the 'Thinking Format Reward', 'Segmentation Format Reward', 'Bbox L1 Reward', and 'Points L1 Reward'. The changes in these reward values over time reflect how effectively the model learns to follow the format guidelines and achieve high accuracy in its segmentation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: Changes in rewards during training. We show the mean value across a batch.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">Bbox</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">Points</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">RefCOCOg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">ReasonSeg</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Baseline</th>
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.2.1.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">47.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.3.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">×</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">45.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.4.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">×</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.4" style="padding-left:5.0pt;padding-right:5.0pt;">72.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">53.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.1.5.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.5.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.5.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.5.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.4.4.1">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.1.5.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.4.5.1">53.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies on the design of prompts used in the Seg-Zero model.  Specifically, it investigates the impact of using only bounding boxes, only points, or both bounding boxes and points as input prompts for the segmentation task. The performance is evaluated on the RefCOCOg and ReasonSeg datasets, using gIoU as the metric. This helps determine the optimal prompt design for achieving best segmentation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation on the design of bbox and points prompt.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.2.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">Type</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">RefCOCOg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.2.1.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">ReasonSeg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">sum</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">Soft</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.1.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.2.1.4.1">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">124.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.2.1.3.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.2.1.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">Hard</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.2.3.1">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.2.1.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.3.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.3.2.5.1">127.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the accuracy reward type used in the Seg-Zero model training.  It shows how different accuracy reward designs affect the model's performance on both in-domain (RefCOCOg) and out-of-domain (ReasonSeg) datasets.  The results demonstrate the impact of various accuracy reward types on the final segmentation results.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on the accuracy reward type.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.1.1.1.2">Type</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.3">RefCOCOg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.2.1.1.1.4">ReasonSeg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.5">sum</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.1.2.1.1">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.1.2.1.2">Soft</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.1.3.1">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.2.1.4">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.1.5">127.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.1.3.2.1">Seg-Zero</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.2.1.3.2.2">Strict</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.3.2.3">73.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.2.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.3.2.4.1">56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.3.2.5.1">129.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the format reward type used in the Seg-Zero model training.  It compares the performance of the model when using a 'soft' format reward (allowing some flexibility in the output format) versus a 'strict' format reward (requiring a precise output format). The results show that the 'strict' format reward leads to better overall performance, suggesting that enforcing a structured reasoning process is beneficial for the model's accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on the format reward type. Strict format is better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.2.1.1.1.1" style="padding-left:12.0pt;padding-right:12.0pt;">Reasoning Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.2" style="padding-left:12.0pt;padding-right:12.0pt;">RefCOCOg</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.1.1.1.3" style="padding-left:12.0pt;padding-right:12.0pt;">ReasonSeg</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.2.1.2.1.1" style="padding-left:12.0pt;padding-right:12.0pt;">Qwen2-VL-2B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.1.2" style="padding-left:12.0pt;padding-right:12.0pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.1.3" style="padding-left:12.0pt;padding-right:12.0pt;">37.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.2.1.3.2.1" style="padding-left:12.0pt;padding-right:12.0pt;">Qwen2.5-VL-3B</th>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.2.2" style="padding-left:12.0pt;padding-right:12.0pt;">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.3.2.3" style="padding-left:12.0pt;padding-right:12.0pt;">56.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.2.1.4.3.1" style="padding-left:12.0pt;padding-right:12.0pt;">Qwen2.5-VL-7B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.4.3.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.4.3.2.1">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.1.4.3.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.4.3.3.1">57.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different reasoning model sizes on the performance of the Seg-Zero model.  The study compared three variants of the Qwen model (2B, 3B, and 7B parameters), evaluating their performance on the RefCOCOg and ReasonSeg datasets using the cIoU metric. The results demonstrate that using a larger-scale model consistently improves the overall performance, highlighting the importance of model scale in achieving better reasoning and segmentation capabilities.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on reasoning model choice. Larger scale model achieves better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.2.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T6.2.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T6.2.1.1.2">ReasonSeg</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T6.2.2.2.1">val</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T6.2.2.2.2">test</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.3.1">gIoU</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.3.3.2">cIoU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.3.3">gIoU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.3.4">cIoU</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.2.4.4.1">OVSeg</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.4.4.2">28.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.4.4.3">18.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.4.4.4">26.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.4.4.5">20.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.5.5.1">ReLA</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.5.5.2">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.5.5.3">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.5.5.4">21.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.5.5.5">22.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.6.6.1">Grounded-SAM</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.6.6.2">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.6.6.3">14.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.6.6.4">21.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.6.6.5">16.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.7.7.1">LISA-7B-LLaVA1.5</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.7.7.2">53.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.7.7.3">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.7.7.4">48.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.7.7.5">48.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.8.8.1">LISA-13B-LLaVA1.5</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.8.8.2">57.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.8.8.3">60.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.8.8.4">53.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.8.8.5">50.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.9.9.1">SAM4MLLM</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.9.9.2">46.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.9.9.3">48.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.9.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.9.9.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.10.10.1">Qwen2.5VL-3B+SAM2</th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.10.10.2">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.10.10.3">44.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.10.10.4">47.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.10.10.5">37.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T6.2.11.11.1" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.11.11.1.1" style="background-color:#EFEFEF;">Seg-Zero-3B (ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.2.11.11.2" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.11.11.2.1" style="background-color:#EFEFEF;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.11.11.3" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.11.11.3.1" style="background-color:#EFEFEF;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.11.11.4" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.11.11.4.1" style="background-color:#EFEFEF;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.11.11.5" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.11.11.5.1" style="background-color:#EFEFEF;">48.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T6.2.12.12.1" style="background-color:#EFEFEF;"><span class="ltx_text" id="S4.T6.2.12.12.1.1" style="background-color:#EFEFEF;">Seg-Zero-7B (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.12.12.2" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.12.12.2.1" style="background-color:#EFEFEF;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T6.2.12.12.3" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.12.12.3.1" style="background-color:#EFEFEF;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.12.12.4" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.12.12.4.1" style="background-color:#EFEFEF;">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.12.12.5" style="background-color:#EFEFEF;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.12.12.5.1" style="background-color:#EFEFEF;">52.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of zero-shot reasoning segmentation results across various methods.  The metrics used are gIoU and cIoU (for both validation and test sets).  Methods compared include OVSeg, RELA, Grounded-SAM, LISA-7B-LLaVA1.5, LISA-13B-LLaVA1.5, SAM4MLLM, Qwen2.5VL-3B+SAM2 and the two versions of the authors' model Seg-Zero (using 3B and 7B parameter models). The table shows that Seg-Zero achieves state-of-the-art performance in zero-shot reasoning segmentation.
> <details>
> <summary>read the caption</summary>
> Table 6: Zero-shot reasoning segmentation results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T7.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">refCOCO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">refCOCO+</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">refCOCOg</th>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">testA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">testA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">test</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.2.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">LAVT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">75.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">62.1</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.2.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">ReLA</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.4.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">66.0</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.2.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">LISA-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.5.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.5.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.5.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">68.5</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.2.6.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">PixelLM-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.6.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.6.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.6.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">70.5</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.2.7.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">PerceptionGPT-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.7.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">78.6</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.7.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.9</td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.7.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">71.7</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T7.2.8.6.1" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T7.2.8.6.1.1" style="background-color:#EFEFEF;">Seg-Zero-3B (ours)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.2.8.6.2" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T7.2.8.6.2.1" style="background-color:#EFEFEF;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.8.6.3" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T7.2.8.6.3.1" style="background-color:#EFEFEF;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.8.6.4" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T7.2.8.6.4.1" style="background-color:#EFEFEF;">71.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T7.2.9.7.1" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T7.2.9.7.1.1" style="background-color:#EFEFEF;">Seg-Zero-7B (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.2.9.7.2" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.9.7.2.1" style="background-color:#EFEFEF;">80.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.2.9.7.3" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.9.7.3.1" style="background-color:#EFEFEF;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.2.9.7.4" style="background-color:#EFEFEF;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.2.9.7.4.1" style="background-color:#EFEFEF;">72.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various referring expression segmentation models using the cIoU (complete Intersection over Union) metric.  The models compared include LAVT, RELA, LISA-7B, PixelLM-7B, PerceptionGPT-7B, and the Seg-Zero model (in both 3B and 7B variants). The comparison is done across three different datasets: refCOCO, refCOCO+, and refCOCOg, allowing for an evaluation of performance on various data splits and difficulty levels.
> <details>
> <summary>read the caption</summary>
> Table 7: Referring expression segmentation results. We compare the cIoU in this table.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.06520/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.06520/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}