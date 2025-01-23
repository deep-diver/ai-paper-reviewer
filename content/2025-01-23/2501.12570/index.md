---
title: "O1-Pruner: Length-Harmonizing Fine-Tuning for O1-Like Reasoning Pruning"
summary: "O1-Pruner efficiently prunes long-thought reasoning in LLMs by harmonizing reasoning length and accuracy via fine-tuning, significantly reducing inference time without sacrificing performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shenzhen Campus of Sun Yat-sen University",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12570 {{< /keyword >}}
{{< keyword icon="writer" >}} Haotian Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12570" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12570" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12570/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Long-thought reasoning in large language models (LLMs) has shown promising results in problem-solving, but it significantly increases inference time and resource consumption. This is mainly due to length disharmony, where models generate longer reasoning paths than necessary, even when shorter paths can yield accurate solutions. This inefficiency necessitates methods that can improve both accuracy and efficiency. 



O1-Pruner tackles this issue by employing a reinforcement learning-based fine-tuning approach. It estimates the LLM's baseline performance and encourages the model to generate shorter reasoning processes while maintaining accuracy constraints.  The method significantly reduces inference overhead and achieves higher accuracy across several mathematical reasoning benchmarks. This shows **O1-Pruner's potential to improve the efficiency of long-thought LLMs** while addressing the length disharmony issue.  **The results demonstrate O1-Pruner's efficacy in balancing length and accuracy**, offering a promising solution for optimizing long-thought reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Long-thought LLMs often exhibit reasoning redundancies, leading to inefficient use of resources. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} O1-Pruner, a novel fine-tuning method, effectively reduces inference time and improves accuracy in long-thought LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate O1-Pruner's effectiveness across different models and datasets. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical challenge in large language models (LLMs): **the high computational cost of long-thought reasoning**. By proposing the O1-Pruner method, it offers a novel solution to enhance both the efficiency and accuracy of LLMs, opening up new avenues for research into more efficient and effective LLMs. This is particularly relevant given the increasing computational demands and cost constraints associated with LLMs. 

------
#### Visual Insights



![](https://arxiv.org/html/2501.12570/extracted/6145807/rethink_figures/marco/p1.png)

> 🔼 This figure visualizes the relationship between the length of reasoning processes and the accuracy of the model's predictions on a per-problem basis.  For each problem, the model generates multiple solutions of varying lengths. The plot shows that the relationship between length and accuracy is inconsistent across problems.  In some cases, the highest accuracy is achieved with short reasoning sequences, while in others, longer sequences are necessary. Importantly, many problems display high accuracy even with short solutions, highlighting the redundancy present in longer reasoning processes.
> <details>
> <summary>read the caption</summary>
> Figure 1: Accuracy-Length Relationship at Instance level. The relationship between length and accuracy varies significantly across problems, with peak accuracy occurring at short, medium, or long intervals. Notably, high accuracy often persists in shorter intervals.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S2.T1.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.4.5.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S2.T1.1.1.1.1.1">Interval 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.2.2.2.2"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S2.T1.2.2.2.2.1">Interval 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.3.3.3.3"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S2.T1.3.3.3.3.1">Interval 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.4.4.4.4"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S2.T1.4.4.4.4.1">Interval 4</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.4.4.5.1.1">Marco</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.5.1.2">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.5.1.3">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.5.1.4">78.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.5.1.5">75.3</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_b" id="S2.T1.4.4.6.2.1">QwQ</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S2.T1.4.4.6.2.2">44.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S2.T1.4.4.6.2.3">49.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S2.T1.4.4.6.2.4">45.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S2.T1.4.4.6.2.5">45.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the relationship between the length of generated solutions and their accuracy for two different large language models (Marco and QwQ).  The models were given 64 math problems, and for each problem, 512 solutions were generated and grouped into four intervals based on their length (from shortest to longest). The average accuracy within each length interval is presented.  The results reveal that, in general, shorter solutions tend to have higher accuracy, suggesting that longer responses are often unnecessarily verbose or contain redundant reasoning steps.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy-Length Relationship at Distribution Level. A larger interval number indicates a longer solution length. For both models, the average accuracy is higher when the solution length is short.
> </details>





### In-depth insights


#### O1 Reasoning Limits
The hypothetical heading, 'O1 Reasoning Limits,' invites exploration into the inherent constraints within OpenAI's O1 model and similar long-thought reasoning LLMs.  While these models demonstrate enhanced reasoning capabilities exceeding those of conventional LLMs, **their performance is bounded by limitations in resource allocation and inference efficiency.**  The primary constraint is the **length disharmony** observed, where models often generate excessively lengthy reasoning chains even when concise solutions are feasible. This leads to **substantial computational overhead**, negating the potential benefits of improved accuracy.  Further investigation is needed to understand the root causes of these redundancies, such as the model's inability to accurately assess problem difficulty and adapt the complexity of its reasoning accordingly.  **Overcoming this length disharmony is crucial for realizing the full potential of long-thought reasoning**,  requiring the development of novel techniques to optimize inference efficiency while maintaining accuracy.  The efficiency of these models is also dependent on factors such as the size and quality of the training data, highlighting the importance of both model architecture and data curation in determining their ultimate performance limits.

#### RL Fine-Tuning
Reinforcement learning (RL) fine-tuning offers a powerful approach to optimize large language models (LLMs) for specific tasks. In the context of long-thought reasoning, where LLMs generate lengthy solution paths, RL can be leveraged to encourage the generation of shorter, more efficient reasoning sequences while maintaining accuracy.  **A key advantage of RL is its ability to directly optimize for the desired outcome (e.g., shorter length), rather than relying on indirect methods.** This is achieved by defining a reward function that penalizes longer solutions and rewards accurate, concise ones.  The RL agent learns to balance the trade-off between brevity and accuracy, learning which steps are essential and which are redundant. **This approach contrasts with supervised fine-tuning (SFT), which relies on providing many examples of ideal solutions, which can be time-consuming to generate and potentially incomplete.** RL's ability to learn from trial and error makes it particularly suitable for complex reasoning tasks, where optimal solutions are not easily discernible. The challenge lies in designing appropriate reward functions that effectively capture the desired behavior and avoiding reward hacking, which can lead to suboptimal performance.  Successfully applying RL necessitates careful consideration of the reward shaping, exploration strategies and handling of sparse rewards, but its potential to improve both efficiency and accuracy of LLMs makes it a promising area of research.

#### Length Disharmony
The concept of "Length Disharmony" highlights a crucial inefficiency in long-thought reasoning LLMs.  These models, while exhibiting enhanced reasoning capabilities, often generate responses of varying lengths, even when shorter, equally accurate answers exist. This **inefficiency stems from the model's inability to effectively allocate token budgets**, leading to redundant computations and increased inference times.  **Shorter responses are not always inferior;**  the paper demonstrates that high accuracy can often be achieved with significantly shorter reasoning paths. This observation underscores the need for optimization strategies that encourage concise yet accurate reasoning. **Length-Harmonizing Fine-Tuning (O1-Pruner)** directly addresses this issue by incentivizing the model to generate shorter solutions while maintaining accuracy, thereby optimizing both efficiency and performance.  The existence of length disharmony reveals a fundamental limitation in current long-thought reasoning models and presents a significant opportunity for future research focused on resource-efficient and more human-like reasoning processes.

#### O1-Pruner Method
The O1-Pruner method tackles the inefficiency of long-thought reasoning LLMs like OpenAI's O1 by directly addressing the length disharmony problem.  **It recognizes that these models often generate excessively long reasoning paths, even when shorter ones would suffice**.  O1-Pruner employs a reinforcement learning approach, pre-sampling to estimate baseline performance and then fine-tuning the model to produce shorter, yet accurate, solutions.  **The core innovation lies in formulating a loss function that balances accuracy and length, rewarding shorter solutions while penalizing accuracy loss.** This method cleverly avoids overly simplistic solutions by considering problem difficulty and dynamically adapting reasoning length.  **By combining pre-sampling for baseline estimation with a carefully designed RL-style fine-tuning, O1-Pruner provides a novel and effective means for optimizing inference efficiency in long-thought reasoning LLMs, offering significant improvements in both speed and accuracy.**  Furthermore, its off-policy training strategy simplifies the training process, enhancing practicality and scalability.

#### Future Directions
Future research should focus on several key areas to advance length-harmonizing fine-tuning.  **Improving the reward function** is crucial;  exploring alternative reward formulations that better capture the trade-off between accuracy and length could significantly enhance performance.  **Developing more efficient training methods** is also vital, given the computational cost of current approaches. Off-policy methods or techniques leveraging pre-computed information should be investigated.  **Extending the approach to different reasoning paradigms** beyond mathematical problem solving would demonstrate broader applicability and robustness.  This could involve adapting the methodology to various tasks, including question answering or commonsense reasoning. Finally, **a deeper theoretical understanding** of why length disharmony exists in long-thought reasoning models is needed. This understanding could guide the development of more effective solutions to address inference overhead while maintaining accuracy.  Investigating the underlying cognitive mechanisms that might parallel this behavior could provide valuable insights.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12570/extracted/6145807/rethink_figures/marco/p4.png)

> 🔼 Figure 2 illustrates the Length-Harmonizing Fine-Tuning process using the O1-Pruner method.  The left panel shows the training phase, where multiple samples are drawn from a reference model for each problem.  A sample is then taken from the model being optimized, and a reward is calculated based on the comparison with the reference samples.  Reinforcement learning (RL) is used to fine-tune the model. The right panel displays the inference phase, highlighting the significant improvements in both inference speed and accuracy achieved by the O1-Pruner optimized model compared to the original. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Length-Harmonizing Fine-Tuning. During the training phase, for each problem, we sample multiple times from the reference model. Subsequently, we sample from the model to be optimized and compute the reward based on the reference samples, followed by a RL-style fine-tuning. During the inference phase, the model optimized through O1-Pruner demonstrates a significant improvement in inference speed, along with a noticeable enhancement in accuracy.
> </details>



![](https://arxiv.org/html/2501.12570/extracted/6145807/rethink_figures/marco/p5.png)

> 🔼 Figure 3 presents a comparison of inference time costs for different models and methods on the MATH dataset.  It shows that the O1-Pruner method significantly reduces inference time compared to baseline models and other optimization methods (Fast-Solving Prompt, SFT, and DPO).  Specifically, O1-Pruner achieves inference times of just over 1 minute for the smaller Marco-01-7B model and approximately 4 minutes for the larger QwQ-32B-Preview model. This demonstrates the effectiveness of O1-Pruner in accelerating inference, particularly for large long-thought language models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of inference time-cost on MATH among different models and methods. O1-Pruner achieves the shortest inference times (slightly over 1 minute for Marco-o1-7B and  4 minutes for QwQ-32B-Preview), demonstrating its effectiveness in accelerating long-thought model inference for both small and large long thought models.
> </details>



![](https://arxiv.org/html/2501.12570/extracted/6145807/rethink_figures/qwq/p0.png)

> 🔼 This figure displays the performance of models trained on subsets of the MATH dataset categorized by difficulty level.  The x-axis represents the difficulty level of the training data (e.g., easiest 0-40%, medium 30-70%, hardest 60-100%). The y-axis shows both the average solution length and the average accuracy achieved on the MATH test set by models trained on each difficulty level.  The results reveal that models trained on more challenging datasets generate longer solutions, but also achieve higher accuracy on the test set. Conversely, models trained on easier datasets produce shorter solutions without a corresponding increase in accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Performance on MATH Test-set When Trained on Problems of Different Difficulty Levels. Models trained on more challenging datasets tend to generate longer solutions, while learning to solve harder problems enhances model accuracy. In contrast, for less challenging datasets, shorter solutions are produced without a corresponding accuracy improvement.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T2.2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S5.T2.2.1.1.1.2">MATH</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S5.T2.2.1.1.1.3">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S5.T2.2.1.1.1.4">GaoKao</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="S5.T2.2.1.1.1.5"><span class="ltx_text ltx_font_italic" id="S5.T2.2.1.1.1.5.1">AVERAGE</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.1">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.2">Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.3">AES</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.4">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.5">Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.6">AES</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.7">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.8">Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.9">AES</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.10">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.11">Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T2.2.1.2.2.12">AES</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.2.1.3.1.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.2.1.3.1.1.1">Marco-o1-7B</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.2"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.3"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.4"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.5"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.6"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.7"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.8"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.9"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.10"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.11"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.12"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.2.1.3.1.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4.2">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.4.2.1"><span class="ltx_text ltx_font_italic" id="S5.T2.2.1.4.2.1.1">(full fine-tune)</span></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.2"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.3"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.4"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.5"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.6"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.7"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.8"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.9"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.10"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.11"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.12"></td>
<td class="ltx_td" id="S5.T2.2.1.4.2.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5.3">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.5.3.1">Baseline</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.5.3.2.1">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.3">1156</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.5">89.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.6">530</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.7">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.8">57.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.9">1112</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.10">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.5.3.11.1">73.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.12">932</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.3.13">0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6.4">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.6.4.1">Fast-solving Prompt</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.2">71.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.3">1113</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.4">0.15</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.5">81.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.6">447</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.6.4.7.1">0.41</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.6.4.8.1">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.9">1062</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.10">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.11">69.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.12">874</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4.13">0.20</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7.5">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.7.5.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.2">73.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.3">1076</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.4">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.7.5.5.1">89.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.6">497</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.7">0.09</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.8">56.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.9">1066</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.10">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.11">73.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.12">880</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5.13">0.08</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.8.6">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.8.6.1">DPO</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.2">71.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.3.1">761</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.4.1">0.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.5">88.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.6.1">410</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.7">0.25</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.8">56.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.9.1">780</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.10.1">0.32</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.11">72.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.12.1">650</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.8.6.13.1">0.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.9.7">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.9.7.1">O1-Pruner</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.2"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.2.1">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.3"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.3.1">657</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.4"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.4.1">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.5"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.5.1">91.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.6"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.6.1">343</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.7.1">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.8"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.8.1">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.9"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.9.1">664</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.10"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.10.1">0.64</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.11"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.11.1">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.12"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.12.1">554</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.9.7.13"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.9.7.13.1">0.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.10.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.1.10.8.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.2.1.10.8.1.1">QwQ-32B-Preview</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.10"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.11"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.12"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.2.1.10.8.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.11.9">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.11.9.1"><span class="ltx_text ltx_font_italic" id="S5.T2.2.1.11.9.1.1">(freeze fine-tune last 48 layers)</span></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.2"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.3"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.4"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.5"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.6"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.7"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.8"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.9"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.10"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.11"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.12"></td>
<td class="ltx_td" id="S5.T2.2.1.11.9.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.12.10">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.12.10.1">Baseline</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.2">90.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.3">2191</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.5">95.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.6">777</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.7">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.8">79.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.9">2183</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.10">0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.11">88.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.12">1717</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10.13">0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.13.11">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.13.11.1">Fast-solving Prompt</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.2">90.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.3.1">1763</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.4.1">0.21</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.5.1">95.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.6.1">561</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.7.1">0.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.8">78.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.9.1">1911</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.10.1">0.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.11">88.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.12.1">1411</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.13.11.13.1">0.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.14.12">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.14.12.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.2">90.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.3">2031</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.4">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.5">95.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.6">717</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.7">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.8">79.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.9">2112</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.10">0.05</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.11">88.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.12">1620</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.14.12.13">0.08</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.15.13">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.15.13.1">DPO</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.2"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.15.13.2.1">91.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.3">1999</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.4">0.12</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.5">95.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.6">704</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.7">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.15.13.8.1">79.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.9">2021</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.10">0.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.15.13.11.1">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.12">1575</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.15.13.13">0.11</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.16.14">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T2.2.1.16.14.1">O1-Pruner</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.2.1">91.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.3"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.3.1">1385</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.4"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.4.1">0.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.5"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.5.1">96.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.6"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.6.1">534</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.7.1">0.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.8"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.8.1">80.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.9"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.9.1">1446</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.10"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.10.1">0.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.11"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.11.1">89.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.12"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.12.1">1121</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.2.1.16.14.13"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S5.T2.2.1.16.14.13.1">0.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments comparing different methods for optimizing long-thought reasoning models on three mathematical reasoning datasets.  The methods evaluated are Baseline (no optimization), Fast-Solving Prompt, Supervised Fine-Tuning (SFT), Direct Preference Optimization (DPO), and the proposed 01-Pruner. For each method, the table shows the accuracy, average solution length, and Accuracy-Efficiency Score (AES) achieved on the MATH, GSM8K, and GaoKao datasets for two different models: Marco-01-7B and QwQ-32B-Preview. The results demonstrate that O1-Pruner achieves the best balance between accuracy and solution length, outperforming other methods in terms of efficiency and overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Main Experiment Results. We present the performance of two selected models optimized through different methods across three mathematical reasoning datasets. It can be observed that the models trained with O1-Pruner achieve the best trade off between accuracy and length in comparison with other approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.1.1.1.1"><math alttext="\mathbf{\lambda}" class="ltx_Math" display="inline" id="S6.T3.1.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.1.m1.1a"><mi id="S6.T3.1.1.1.1.m1.1.1" xref="S6.T3.1.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.1.m1.1b"><ci id="S6.T3.1.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.1.m1.1c">\mathbf{\lambda}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.1.m1.1d">italic_λ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.2.2.2.2"><math alttext="\textbf{Acc}_{avg}" class="ltx_Math" display="inline" id="S6.T3.2.2.2.2.m1.1"><semantics id="S6.T3.2.2.2.2.m1.1a"><msub id="S6.T3.2.2.2.2.m1.1.1" xref="S6.T3.2.2.2.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S6.T3.2.2.2.2.m1.1.1.2" xref="S6.T3.2.2.2.2.m1.1.1.2a.cmml">Acc</mtext><mrow id="S6.T3.2.2.2.2.m1.1.1.3" xref="S6.T3.2.2.2.2.m1.1.1.3.cmml"><mi id="S6.T3.2.2.2.2.m1.1.1.3.2" xref="S6.T3.2.2.2.2.m1.1.1.3.2.cmml">a</mi><mo id="S6.T3.2.2.2.2.m1.1.1.3.1" xref="S6.T3.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.2.2.2.2.m1.1.1.3.3" xref="S6.T3.2.2.2.2.m1.1.1.3.3.cmml">v</mi><mo id="S6.T3.2.2.2.2.m1.1.1.3.1a" xref="S6.T3.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.2.2.2.2.m1.1.1.3.4" xref="S6.T3.2.2.2.2.m1.1.1.3.4.cmml">g</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.2.m1.1b"><apply id="S6.T3.2.2.2.2.m1.1.1.cmml" xref="S6.T3.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.2.2.2.2.m1.1.1.1.cmml" xref="S6.T3.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S6.T3.2.2.2.2.m1.1.1.2a.cmml" xref="S6.T3.2.2.2.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S6.T3.2.2.2.2.m1.1.1.2.cmml" xref="S6.T3.2.2.2.2.m1.1.1.2">Acc</mtext></ci><apply id="S6.T3.2.2.2.2.m1.1.1.3.cmml" xref="S6.T3.2.2.2.2.m1.1.1.3"><times id="S6.T3.2.2.2.2.m1.1.1.3.1.cmml" xref="S6.T3.2.2.2.2.m1.1.1.3.1"></times><ci id="S6.T3.2.2.2.2.m1.1.1.3.2.cmml" xref="S6.T3.2.2.2.2.m1.1.1.3.2">𝑎</ci><ci id="S6.T3.2.2.2.2.m1.1.1.3.3.cmml" xref="S6.T3.2.2.2.2.m1.1.1.3.3">𝑣</ci><ci id="S6.T3.2.2.2.2.m1.1.1.3.4.cmml" xref="S6.T3.2.2.2.2.m1.1.1.3.4">𝑔</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.2.m1.1c">\textbf{Acc}_{avg}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.2.m1.1d">Acc start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.3.3.3.3"><math alttext="\textbf{Length}_{avg}" class="ltx_Math" display="inline" id="S6.T3.3.3.3.3.m1.1"><semantics id="S6.T3.3.3.3.3.m1.1a"><msub id="S6.T3.3.3.3.3.m1.1.1" xref="S6.T3.3.3.3.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S6.T3.3.3.3.3.m1.1.1.2" xref="S6.T3.3.3.3.3.m1.1.1.2a.cmml">Length</mtext><mrow id="S6.T3.3.3.3.3.m1.1.1.3" xref="S6.T3.3.3.3.3.m1.1.1.3.cmml"><mi id="S6.T3.3.3.3.3.m1.1.1.3.2" xref="S6.T3.3.3.3.3.m1.1.1.3.2.cmml">a</mi><mo id="S6.T3.3.3.3.3.m1.1.1.3.1" xref="S6.T3.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.3.3.3.3.m1.1.1.3.3" xref="S6.T3.3.3.3.3.m1.1.1.3.3.cmml">v</mi><mo id="S6.T3.3.3.3.3.m1.1.1.3.1a" xref="S6.T3.3.3.3.3.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.3.3.3.3.m1.1.1.3.4" xref="S6.T3.3.3.3.3.m1.1.1.3.4.cmml">g</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.3.3.m1.1b"><apply id="S6.T3.3.3.3.3.m1.1.1.cmml" xref="S6.T3.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.3.3.3.3.m1.1.1.1.cmml" xref="S6.T3.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S6.T3.3.3.3.3.m1.1.1.2a.cmml" xref="S6.T3.3.3.3.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S6.T3.3.3.3.3.m1.1.1.2.cmml" xref="S6.T3.3.3.3.3.m1.1.1.2">Length</mtext></ci><apply id="S6.T3.3.3.3.3.m1.1.1.3.cmml" xref="S6.T3.3.3.3.3.m1.1.1.3"><times id="S6.T3.3.3.3.3.m1.1.1.3.1.cmml" xref="S6.T3.3.3.3.3.m1.1.1.3.1"></times><ci id="S6.T3.3.3.3.3.m1.1.1.3.2.cmml" xref="S6.T3.3.3.3.3.m1.1.1.3.2">𝑎</ci><ci id="S6.T3.3.3.3.3.m1.1.1.3.3.cmml" xref="S6.T3.3.3.3.3.m1.1.1.3.3">𝑣</ci><ci id="S6.T3.3.3.3.3.m1.1.1.3.4.cmml" xref="S6.T3.3.3.3.3.m1.1.1.3.4">𝑔</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.3.3.m1.1c">\textbf{Length}_{avg}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.3.3.m1.1d">Length start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.4.4.4.4"><math alttext="\textbf{AES}_{avg}" class="ltx_Math" display="inline" id="S6.T3.4.4.4.4.m1.1"><semantics id="S6.T3.4.4.4.4.m1.1a"><msub id="S6.T3.4.4.4.4.m1.1.1" xref="S6.T3.4.4.4.4.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S6.T3.4.4.4.4.m1.1.1.2" xref="S6.T3.4.4.4.4.m1.1.1.2a.cmml">AES</mtext><mrow id="S6.T3.4.4.4.4.m1.1.1.3" xref="S6.T3.4.4.4.4.m1.1.1.3.cmml"><mi id="S6.T3.4.4.4.4.m1.1.1.3.2" xref="S6.T3.4.4.4.4.m1.1.1.3.2.cmml">a</mi><mo id="S6.T3.4.4.4.4.m1.1.1.3.1" xref="S6.T3.4.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.4.4.4.4.m1.1.1.3.3" xref="S6.T3.4.4.4.4.m1.1.1.3.3.cmml">v</mi><mo id="S6.T3.4.4.4.4.m1.1.1.3.1a" xref="S6.T3.4.4.4.4.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.4.4.4.4.m1.1.1.3.4" xref="S6.T3.4.4.4.4.m1.1.1.3.4.cmml">g</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.4.4.m1.1b"><apply id="S6.T3.4.4.4.4.m1.1.1.cmml" xref="S6.T3.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.4.4.4.4.m1.1.1.1.cmml" xref="S6.T3.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S6.T3.4.4.4.4.m1.1.1.2a.cmml" xref="S6.T3.4.4.4.4.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S6.T3.4.4.4.4.m1.1.1.2.cmml" xref="S6.T3.4.4.4.4.m1.1.1.2">AES</mtext></ci><apply id="S6.T3.4.4.4.4.m1.1.1.3.cmml" xref="S6.T3.4.4.4.4.m1.1.1.3"><times id="S6.T3.4.4.4.4.m1.1.1.3.1.cmml" xref="S6.T3.4.4.4.4.m1.1.1.3.1"></times><ci id="S6.T3.4.4.4.4.m1.1.1.3.2.cmml" xref="S6.T3.4.4.4.4.m1.1.1.3.2">𝑎</ci><ci id="S6.T3.4.4.4.4.m1.1.1.3.3.cmml" xref="S6.T3.4.4.4.4.m1.1.1.3.3">𝑣</ci><ci id="S6.T3.4.4.4.4.m1.1.1.3.4.cmml" xref="S6.T3.4.4.4.4.m1.1.1.3.4">𝑔</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.4.4.m1.1c">\textbf{AES}_{avg}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.4.4.m1.1d">AES start_POSTSUBSCRIPT italic_a italic_v italic_g end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.4.4.5.1.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T3.4.4.5.1.1.1">Marco-o1-7B</span></th>
<td class="ltx_td ltx_border_t" id="S6.T3.4.4.5.1.2"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.4.4.5.1.3"></td>
<td class="ltx_td ltx_border_t" id="S6.T3.4.4.5.1.4"></td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.4.4.6.2.1">0</th>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.6.2.2">74.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.6.2.3">527</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.6.2.4">0.49</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.4.4.7.3.1">1</th>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.7.3.2">76.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.7.3.3">532</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.7.3.4">0.54</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.4.4.8.4.1">2</th>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.8.4.2">76.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.8.4.3">554</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.8.4.4">0.55</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_b" id="S6.T3.4.4.9.5.1">5</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S6.T3.4.4.9.5.2">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S6.T3.4.4.9.5.3">656</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b" id="S6.T3.4.4.9.5.4">0.45</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of the penalty coefficient (λ) on the model's performance.  The table shows that as λ increases, both the model's accuracy and the average length of generated solutions also increase. However, λ = 2 represents the optimal balance, providing a good trade-off between accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation experiments on λ𝜆\lambdaitalic_λ. Overall, the model’s accuracy and solution length increase with the penalty coefficient λ𝜆\lambdaitalic_λ. λ𝜆\lambdaitalic_λ = 2 achieves an optimal balance between accuracy and efficiency.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12570/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12570/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}