---
title: "Learning from Failures in Multi-Attempt Reinforcement Learning"
summary: "Multi-attempt RL refines LLMs, significantly boosting accuracy on math tasks by enabling them to learn from failures through user feedback."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 University of Cambridge",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04808 {{< /keyword >}}
{{< keyword icon="writer" >}} Stephen Chung et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04808" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04808" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04808/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) have shown that even a simple question-answering task can improve reasoning. However, single-turn tasks may be inefficient due to sparse rewards, and they do not require the LLM to learn how to respond to user feedback. This paper addresses the limitations of single-turn tasks by introducing a **multi-attempt task framework.** The model is given multiple attempts to answer a question, with feedback provided after incorrect responses. This encourages the model to refine its attempts and improve search efficiency. 



The paper presents a simple yet effective multi-attempt task that enables LLMs to learn through reinforcement learning. A standard RL is applied to the multi-attempt task on a math problem dataset. The results show that LLMs trained on this achieves higher accuracy when evaluated with more attempts on a math benchmark. This demonstrates the potential of **multi-attempt tasks for improving LLM reasoning and self-correction abilities.** The paper also shows the multi-attempt LLM outperforms its single-turn counterpart.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-attempt RL significantly improves LLM accuracy by encouraging refinement of previous attempts based on feedback. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs trained on multi-attempt tasks exhibit enhanced self-refinement capabilities compared to those trained on standard single-turn tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The multi-attempt setting provides a richer learning signal, potentially leading to more sophisticated capabilities in LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a simple yet effective multi-attempt task for RL training of LLMs. It shows enhanced self-correction and reasoning with potential for complex code generation. The novel approach opens new avenues for more effective learning in LLMs, such as incorporating detailed feedback.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04808/x1.png)

> 🔼 This figure displays the evaluation accuracy of two large language models (LLMs) across five different math benchmarks (AIME 2024, MATH 500, AMC 2023, Minerva Math, and OlympiadBench).  The accuracy is shown as a function of the number of attempts allowed during evaluation. Both LLMs are based on the same foundation model (Qwen 2.5 Math 1.5B) but are trained differently: one using a multi-attempt reinforcement learning (RL) approach and the other using a standard single-turn RL approach (the baseline).  The graph allows for a direct comparison of how the models perform with an increasing number of attempts, highlighting the impact of the multi-attempt training strategy.
> <details>
> <summary>read the caption</summary>
> Figure 1: Evaluation accuracy as a function of the number of allowed attempts during evaluation, averaged across five benchmarks: AIME 2024, MATH 500, AMC 2023, Minerva Math, and OlympiadBench. Both LLMs are based on Qwen 2.5 Math 1.5B and fine-tuned via RL on a small math dataset in either multi-attempt tasks or single-turn tasks (baseline).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1">Avg.</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.1">AIME</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1">AMC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.1">Minerva</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.1">Olympiad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_left" id="S4.T1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.2.1">Accuracy</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.3.1">MATH500</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.4.1">2024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.5.1">2023</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.6.1">Math</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.7.1">Bench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Multi-Attempt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">45.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.7" style="padding-top:1pt;padding-bottom:1pt;">33.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">43.5</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">75.4</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.7" style="padding-top:1pt;padding-bottom:1pt;">37.5</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the average evaluation accuracy achieved by two different LLMs across five distinct benchmarks: AIME 2024, MATH 500, AMC 2023, Minerva Math, and OlympiadBench.  The two models are differentiated by their training methodology: one model was trained using a multi-attempt approach, while the other used a standard baseline method (single-turn).  The accuracy for each benchmark is shown for both models, allowing for a direct comparison of their performance based on different training strategies.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of evaluation accuracy across multiple benchmarks.
> </details>





### In-depth insights


#### Multi-Attempt RL
Multi-Attempt Reinforcement Learning (RL) is a paradigm shift in how we train Large Language Models (LLMs). Instead of the conventional single-turn approach, **models are given multiple attempts to solve a task**, receiving feedback after each incorrect try. This encourages exploration and refinement of solutions. The core idea is to leverage the feedback signal to guide the model towards better reasoning. The multi-attempt setting enhances the model's ability to correct mistakes, refine its approach, and ultimately, improve its problem-solving skills. **This approach fosters a more robust and adaptable model**, capable of handling complex and nuanced tasks. Additionally, the multi-attempt approach facilitates a richer exploration of the solution space. By allowing the model to experiment with different strategies and learn from its failures, it can discover more effective and efficient solutions than it would in a single-turn setting. **The method mimics a more natural learning process**, akin to how humans learn through trial and error.

#### Refinement via RL
**Reinforcement Learning (RL) can be employed for refinement in language models, particularly in multi-attempt scenarios**. This approach contrasts with traditional single-turn tasks, which often suffer from sparse rewards and lack the opportunity for iterative improvement based on feedback. By allowing the model to generate multiple responses, RL enables the model to **learn how to better respond to feedback**, potentially leading to emergent capabilities. Furthermore, **RL can be used to directly refine a previous unsuccessful attempts**, as evidenced by improved performance of LLMs trained on multi-attempt tasks. This type of training may lead to broader and more efficient exploration, ultimately enhancing reinforcement learning.

#### Emergent Abilities
**Emergent abilities** in large language models refer to capabilities that arise unexpectedly as models scale in size and complexity, often without explicit training for those specific skills. This can include advanced reasoning, problem-solving, and even aspects of self-correction, as observed in models like DeepSeek R1 Zero with its 'Aha Moment' phenomenon. These abilities are crucial because they highlight the potential for LLMs to surpass simple pattern-matching and develop more general intelligence. Multi-attempt RL appears as a promising way to enhance these behaviors. It allows models not only to give answers but also learn from their mistakes.

#### Task Augmentation
**Task augmentation** is a crucial element in reinforcement learning. **Modifying the original task** can significantly improve the learning process of LLMs. Strategies involve modifying the task to a **multi-attempt** setting, enabling models to refine responses based on feedback. This involves incorporating **auxiliary tasks**, such as rewarding the model for attempting the problem and penalizing if the answer is wrong.

#### Beyond Single-Turn
Moving beyond single-turn interactions in language models signifies a shift towards more complex, multi-faceted dialogues, mirroring real-world conversations. This necessitates models capable of maintaining context, understanding user intent across multiple turns, and adapting their responses accordingly. **Multi-turn interactions enhance user experience by allowing for clarification, negotiation, and iterative problem-solving.** Reinforcement learning in such settings becomes more intricate, as the reward function must account for the long-term consequences of each response. Models must learn to balance immediate rewards with the potential for future success, requiring a more sophisticated understanding of dialogue strategy. **Evaluation metrics also need to evolve, focusing on coherence, consistency, and the overall quality of the interaction rather than just single-turn accuracy.**  Exploration becomes even more critical, as the model must discover effective dialogue paths through trial and error.  Techniques such as hierarchical reinforcement learning or imitation learning from human conversations may prove valuable in guiding exploration and improving the efficiency of learning.  **The ability to handle multi-turn interactions is crucial for deploying language models in real-world applications such as customer service, education, and personal assistance.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04808/extracted/6250029/fig/illust.png)

> 🔼 This figure illustrates the core concept of the paper: a multi-attempt question answering task.  It contrasts this approach with the traditional single-turn question-answering task. The diagram shows how, in the multi-attempt scenario, the model receives feedback (whether its answer is correct or incorrect) after each attempt. If the answer is incorrect, the model is given another chance to refine its response. This process of iterative feedback and refinement is the key innovation of the paper, enabling the model to learn and improve reasoning capabilities through reinforcement learning. The single-turn task, in comparison, offers only one opportunity for the model to answer and receive feedback.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the multi-attempt question-answer task. We extend the single-turn question-answer task from DeepSeek R1 to a multi-attempt setting, enabling iterative refinement.
> </details>



![](https://arxiv.org/html/2503.04808/x2.png)

> 🔼 This figure displays a dialogue between a user and a large language model (LLM) fine-tuned for a multi-attempt question-answering task.  The task involves answering a math problem. The LLM is given two attempts (N=2). In the first attempt, it provides an incorrect answer.  The user provides feedback, indicating the answer is wrong.  In the second attempt, guided by this feedback, the LLM correctly solves the problem. The dialogue shows the LLM's thought process and highlights its ability to learn from its mistakes and refine its answer through multiple attempts.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example of a multi-attempt dialogue (N=2𝑁2N=2italic_N = 2) from a fine-tuned LLM, where the LLM makes a mistake on the first attempt but learns to correct it in the second attempt.
> </details>



![](https://arxiv.org/html/2503.04808/x3.png)

> 🔼 This figure shows the training reward over training steps for both the multi-attempt and baseline LLMs.  The y-axis represents the average reward received per training step. The x-axis represents the number of training steps completed.  The plot visualizes the learning progress of both models, demonstrating the difference in reward accumulation between the multi-attempt model (which receives feedback and can refine its response) and the baseline single-attempt model.  The multi-attempt LLM consistently achieves higher rewards, indicating more effective learning.
> <details>
> <summary>read the caption</summary>
> (a) Training Reward
> </details>



![](https://arxiv.org/html/2503.04808/x4.png)

> 🔼 This figure shows the average evaluation accuracy across five benchmarks (AIME 2024, MATH 500, AMC 2023, Minerva Math, and OlympiadBench) as a function of training steps.  It compares the performance of two LLMs: one trained on a multi-attempt task and a baseline LLM trained on a standard single-turn task. The plot helps visualize how the accuracy of each model improves (or doesn't improve) over the course of training. This is important for assessing the effectiveness of the multi-attempt training approach.
> <details>
> <summary>read the caption</summary>
> (b) Average Evaluation Accuracy
> </details>



![](https://arxiv.org/html/2503.04808/x5.png)

> 🔼 This figure displays the training and evaluation results for two LLMs: one trained with a multi-attempt reinforcement learning (RL) approach and a baseline model trained with a standard single-attempt RL approach.  Subfigure (a) shows the training reward over training steps, demonstrating that the multi-attempt LLM consistently receives higher rewards. Subfigure (b) presents the average evaluation accuracy across five different math benchmarks as a function of training steps, all evaluated using a single-attempt setting. This part highlights that even under the standard single-attempt evaluation protocol, the multi-attempt LLM achieves slightly better performance than the baseline model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training and evaluation performance of the LLMs. (a) Training reward as a function of training steps. (b) Average evaluation accuracy across five benchmarks as a function of training steps, evaluated under the standard single-attempt setting.
> </details>



![](https://arxiv.org/html/2503.04808/x6.png)

> 🔼 This figure shows the evaluation accuracy for the AIME 2024 benchmark as a function of the number of allowed attempts during evaluation.  The accuracy is compared between a model trained with a multi-attempt approach and a baseline model trained on a standard single-turn task.  The x-axis represents the number of attempts allowed, and the y-axis represents the accuracy. The graph shows that the multi-attempt model consistently outperforms the baseline model, demonstrating the effectiveness of the multi-attempt training.
> <details>
> <summary>read the caption</summary>
> (a) AIME 2024
> </details>



![](https://arxiv.org/html/2503.04808/x7.png)

> 🔼 The figure shows the evaluation accuracy of two different LLMs on the MATH500 benchmark as a function of the number of allowed attempts. One LLM was trained on a multi-attempt task, allowing it to refine responses based on feedback, and the other LLM was trained on a standard single-turn task. The graph compares their performance across different numbers of attempts during evaluation.
> <details>
> <summary>read the caption</summary>
> (b) MATH500
> </details>



![](https://arxiv.org/html/2503.04808/x8.png)

> 🔼 The figure shows the evaluation accuracy on the AMC 2023 benchmark as a function of the number of allowed attempts during evaluation.  It compares the performance of a model trained with a multi-attempt approach to a baseline model trained with a standard single-attempt approach. The x-axis represents the number of attempts, and the y-axis represents the accuracy.  The plot visually demonstrates the improvement in accuracy gained by allowing multiple attempts, especially for the multi-attempt trained model.
> <details>
> <summary>read the caption</summary>
> (c) AMC 2023
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04808/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04808/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}