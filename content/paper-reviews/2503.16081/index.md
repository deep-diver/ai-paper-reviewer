---
title: "OThink-MR1: Stimulating multimodal generalized reasoning capabilities via dynamic reinforcement learning"
summary: "OThink-MR1 enhances MLLM reasoning via dynamic reinforcement learning, achieving remarkable cross-task generalization!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 OPPO Research Institute",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16081 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhiyuan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16081" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16081" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16081/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Multimodal Large Language Models (MLLMs)** process diverse data, but supervised fine-tuning (SFT) lacks generalized reasoning. Reinforcement learning (RL) shows promise but faces challenges: unexplored multimodal tasks and training constraints like constant Kullback-Leibler divergence. These issues can lead to suboptimal solutions. The ability to handle different tasks across varied data distributions is critical for real-world deployment. 



The study proposes an advanced MLLM equipped with understanding and reasoning abilities across multimodal tasks. The model uses Group Relative Policy Optimization with a dynamic Kullback-Leibler strategy (GRPO-D) to enhance RL performance. GRPO-D improves performance and cross-task generalization. Results show that models trained with GRPO-D can transfer to other tasks, reducing task-specific data needs. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OThink-MR1 introduces GRPO-D, a dynamic reinforcement learning framework, outperforming SFT in same-task validation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The research demonstrates significant cross-task generalization for MLLMs using dynamic reinforcement learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments validate GRPO-D's effectiveness in visual counting, geometry reasoning, and cross-task scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **OThink-MR1, which enhances MLLM's reasoning**. It addresses the limitations of SFT and GRPO, opening new avenues for improving cross-task generalization. This research aligns with the trend of developing more versatile and capable multimodal models.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/performancewtdata.png)

> 🔼 This figure shows the performance comparison between supervised fine-tuning (SFT) and Group Relative Policy Optimization (GRPO) on a geometry reasoning task.  The x-axis represents the number of training steps, while the y-axis shows the accuracy achieved on a test set.  The curves illustrate how the accuracy of both methods changes as training progresses.  This allows for a direct visual comparison of the learning speed and final accuracy of each training method, highlighting the relative effectiveness of SFT and GRPO in improving the model's performance on this specific geometry task.
> <details>
> <summary>read the caption</summary>
> Figure 1. Test accuracy metric curves of SFT and GRPO on geometry reasoning task.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.6.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.6.1.1.1.1">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.6.1.1.2">Accuracy</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.2.2.1">VC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.2.2">GR</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.6.3.3.1">Qwen2-VL-2B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.6.3.3.2">42.50%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.3.3.3">15.52%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.4.4.1">+ GRPO</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.4.4.2">64.50%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.4.4.3">30.24%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.5.5.1">+ SFT</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.5.5.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.5.5.2.1">68.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.5.5.3.1">32.49%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6" style="background-color:#FFCCCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.6.6.1"><span class="ltx_text" id="S4.T1.6.6.6.1.1" style="background-color:#FFCCCC;">+ GRPO-D</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.2.1" style="background-color:#FFCCCC;">76.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.3.1" style="background-color:#FFCCCC;">34.35%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.6.7.7.1">Qwen2-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.6.7.7.2">76.00%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.7.7.3">33.16%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.8.8.1">+ GRPO</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.8.8.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.8.8.2.1">76.50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8.3">42.04%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.9.9.1">+ SFT</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.9.9.2">74.50%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.9.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.6.9.9.3.1">43.50%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.10" style="background-color:#FFCCCC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.6.10.10.1"><span class="ltx_text" id="S4.T1.6.10.10.1.1" style="background-color:#FFCCCC;">+ GRPO-D</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.10.10.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.10.2.1" style="background-color:#FFCCCC;">78.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.10.10.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.10.10.3.1" style="background-color:#FFCCCC;">45.49%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of different model variations' performance on two distinct tasks: visual counting (VC) and geometry reasoning (GR).  It showcases the accuracy achieved by the base model (Qwen2-VL-2B/7B-Instruct) and its performance after undergoing fine-tuning using supervised fine-tuning (SFT), Group Relative Policy Optimization (GRPO), and the proposed Group Relative Policy Optimization with dynamic Kullback-Leibler strategy (GRPO-D).  The table highlights the superior performance of GRPO-D across both tasks, indicating its effectiveness in enhancing the model's reasoning capabilities. The best performing method for each model is bolded for easy identification.
> <details>
> <summary>read the caption</summary>
> Table 1. Overall performance results for same-task validation, including the visual counting (VC) task and the geometry reasoning (GR) task. The best-performing method is bolded, and the strongest baseline is underlined.
> </details>





### In-depth insights


#### Dynamic RL++
While 'Dynamic RL++' isn't explicitly present, the paper's GRPO-D method embodies this concept. The "Dynamic" refers to the adaptive KL divergence, crucial for balancing exploration and exploitation in RL. The "++" suggests improvements over standard RL, specifically addressing limitations in multimodal tasks. **Traditional RL struggles with complex data and generalization**, so GRPO-D dynamically adjusts the exploration-exploitation trade-off, allowing for more effective learning. **This dynamic adjustment is key to OThink-MR1's superior performance**, as it helps the model escape suboptimal solutions. The paper highlights how a fixed KL divergence can hinder learning, either by restricting exploration or causing instability. By dynamically weighting the KL term, GRPO-D ensures robust learning and efficient long-term rewards. **This is particularly important for cross-task generalization**, where the model needs to adapt to new data distributions.

#### GRPO-D Insight
**GRPO-D (Group Relative Policy Optimization with Dynamic Kullback-Leibler divergence strategy) offers a crucial insight into enhancing multimodal learning.** Traditional reinforcement learning approaches, like standard GRPO, can falter due to insufficient exploration or over-exploration during training. GRPO-D addresses this by dynamically adjusting the KL divergence, which balances exploration (trying new strategies) and exploitation (refining existing ones). **This dynamic approach allows for better adaptation to the complexities of multimodal tasks, preventing premature convergence to suboptimal solutions.** It is inspired by the e-greedy strategy from Q-learning, GRPO-D ensures robust learning by favoring exploration early and exploitation later in the training process. The method enhances model performance by fine-tuning MLLMs; it surpasses the effectiveness of the conventional SFT in similar task settings. **GRPO-D also demonstrates significant cross-task generalization.**

#### Cross-Task Gen.
Given the context of multimodal learning, "Cross-Task Gen" likely refers to **cross-task generalization**, a critical ability for models to perform well on tasks different from those they were trained on. In the context of MLLMs, this involves transferring knowledge gained from one modality or task to another, such as applying image understanding skills learned from image captioning to visual question answering.  Effective cross-task gen is crucial because training data is often limited and **real-world applications demand adaptability**. This goes beyond simple memorization of training data and requires the model to extract abstract, reusable features and reasoning skills. Techniques to improve cross-task generalization might include **meta-learning, domain adaptation, or regularization methods** that encourage the model to learn more robust and generalizable representations. Evaluation of cross-task gen requires careful selection of tasks to ensure they are related but not identical, allowing for a meaningful assessment of the model's ability to transfer knowledge.

#### Beyond Memorize
The phrase "Beyond Memorize" suggests a critical examination of the limitations of relying solely on memorization in machine learning models, particularly in the context of multimodal learning. It implies a need to move past models that simply store and regurgitate training data, and instead, focus on building models that can truly **understand, reason, and generalize**. The emphasis is likely on creating models capable of handling novel situations, unseen data distributions, and complex reasoning tasks. This could involve exploring techniques that promote **abstract representation learning, causal inference, or compositional generalization**. The core idea is to enable models to apply learned knowledge in new and adaptive ways, rather than being constrained by the specifics of the training data. Moreover, it highlights the importance of developing **robust evaluation metrics** that go beyond measuring memorization capacity and instead, assess a model's true reasoning and generalization capabilities.

#### OThink-MR1
Assuming "OThink-MR1" represents the core innovation of the paper, it likely refers to a novel framework or model architecture designed to enhance the multimodal reasoning capabilities of large language models (MLLMs). Given the paper's focus, OThink-MR1 probably tackles limitations in existing supervised fine-tuning (SFT) approaches, which often fail to foster strong generalization. The name "OThink" suggests a focus on improving the model's cognitive processes, perhaps emphasizing more deliberate or structured reasoning. The "MR1" suffix hints at a first-generation model or a specific version within a series of developments, potentially indicating ongoing research and refinement. The paper introduces Group Relative Policy Optimization with a dynamic Kullback-Leibler strategy (GRPO-D) to improve reinforcement learning (RL) performance. Considering the context, OThink-MR1 likely **integrates this GRPO-D method**, aiming to achieve a better balance between exploration and exploitation during RL training. This dynamic adjustment of the KL divergence is probably a key characteristic of OThink-MR1, **allowing it to surpass traditional SFT methods in both same-task performance and cross-task generalization**. The framework might incorporate **specific mechanisms for verifiable reward assignment** in multimodal tasks, ensuring the RL signal accurately reflects the desired reasoning process. Given the emphasis on cross-task generalization, OThink-MR1 likely includes **architectural components or training strategies that promote transfer learning**, enabling the model to adapt quickly to new multimodal tasks with minimal retraining. Furthermore, the design probably considers **memory efficiency and computational scalability**, enabling deployment in resource-constrained environments. Based on the paper’s experimental results, OThink-MR1 contributes to substantial improvements.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16081/x1.png)

> 🔼 This figure displays two example tasks to illustrate the capabilities of multimodal large language models.  The first example showcases multimodal content understanding, where the model must interpret both an image and a question to provide a numerical answer (how many items are present in the image?). The second example demonstrates multimodal reasoning, requiring the model to process an image depicting a geometry problem along with a text-based question to arrive at a numerical solution (finding the measure of an angle). These examples highlight the model's ability to integrate visual and textual information to perform complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2. Examples of multimodal content understanding and multimodal reasoning tasks.
> </details>



![](https://arxiv.org/html/2503.16081/x2.png)

> 🔼 This figure provides a qualitative comparison of the performance of the Group Relative Policy Optimization with Dynamic KL divergence (GRPO-D) and Supervised Fine-tuning (SFT) methods within the OThink-MR1 model. It showcases examples of both same-task and cross-task validation scenarios.  The same-task validation demonstrates how both GRPO-D and SFT approach solving geometry reasoning problems, but GRPO-D exhibits more accurate reasoning.  The cross-task validation depicts how the models perform when trained on one task (e.g., geometry reasoning) and evaluated on a different multimodal task (e.g., visual counting).  This demonstrates the superior cross-task generalization ability of GRPO-D, as it shows more accurate and logical answers compared to SFT.
> <details>
> <summary>read the caption</summary>
> Figure 3. Qualitative illustration of GRPO-D vs SFT in OThink-MR1.
> </details>



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/impact_format.png)

> 🔼 This figure shows how varying the weight of the format reward in the GRPO (Group Relative Policy Optimization) model affects both the main accuracy and format accuracy.  The x-axis represents different weights assigned to the format reward, ranging from 0 to 1. The y-axis shows the corresponding accuracy percentages. The lines represent the main accuracy and format accuracy for each weight. The results demonstrate that including a format reward generally improves accuracy, but an excessively high weight can negatively impact performance.  An optimal balance is needed.
> <details>
> <summary>read the caption</summary>
> Figure 4. Impact of the weight of format reward.
> </details>



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/format_reward3.png)

> 🔼 The figure shows the training curve for the format reward.  It illustrates how the format reward changes with respect to the number of training steps. The x-axis represents the training steps, and the y-axis represents the format reward value. The curve's trajectory shows how well the model learns to generate outputs in the correct format during training.
> <details>
> <summary>read the caption</summary>
> (a) format reward w.r.t training steps.
> </details>



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/accuracy_reward.png)

> 🔼 This figure shows the training curve for the accuracy reward during the training process.  The x-axis represents the number of training steps, while the y-axis shows the value of the accuracy reward. The curve illustrates how the accuracy reward changes as the training progresses, indicating the improvement in the model's performance on the task over time.
> <details>
> <summary>read the caption</summary>
> (b) accuracy reward w.r.t training steps.
> </details>



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/impact_KL.png)

> 🔼 The figure shows two line graphs illustrating the training progress of a multimodal large language model (MLLM). The top graph displays the format reward over training steps, showing rapid initial improvement before plateauing. The bottom graph shows the accuracy reward, which increases gradually and steadily throughout training.  These graphs demonstrate the difference in the speed of improvement between achieving correct formatting and generating accurate answers during model training. The curves highlight that ensuring correctly formatted responses is much easier than achieving accurate reasoning in the geometry reasoning task.
> <details>
> <summary>read the caption</summary>
> Figure 5. Training curves for format reward and accuracy reward.
> </details>



![](https://arxiv.org/html/2503.16081/extracted/6317869/figures/cross-task2.png)

> 🔼 This figure shows how different constant weights of the KL divergence term in the GRPO algorithm affect the model's performance in the geometry reasoning task.  As the KL divergence weight increases, performance initially improves due to better regularization, but then decreases as excessive regularization leads to underfitting and reduced performance. The x-axis represents the weight of the KL divergence, and the y-axis shows the resulting accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 6. Impact of the weight of KL divergence
> </details>



![](https://arxiv.org/html/2503.16081/x3.png)

> 🔼 This figure displays the results of cross-task validation experiments.  Two tasks were used: visual counting (a simpler task involving identifying objects) and geometry reasoning (a more complex task requiring logical analysis). Models were trained on one task and then evaluated on the other, demonstrating the ability of the models to generalize to unseen tasks.  The bars show the accuracy achieved by different models (Qwen2-VL-2B-Instruct with various post-training methods: Supervised Fine-Tuning (SFT), Group Relative Policy Optimization (GRPO), and the Dynamic KL version of GRPO (GRPO-D)) on each cross-task scenario.  The results highlight the superior generalization ability of GRPO-D compared to SFT and GRPO in transferring knowledge between different types of multimodal reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7. Cross-task validation.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16081/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16081/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}