---
title: "DeepSeek-R1: Incentivizing Reasoning Capability in LLMs via Reinforcement Learning"
summary: "DeepSeek-R1 significantly improves LLM reasoning by using reinforcement learning, achieving performance comparable to OpenAI's top models while addressing previous challenges of poor readability and l..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 DeepSeek-AI",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12948 {{< /keyword >}}
{{< keyword icon="writer" >}} DeepSeek-AI et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12948" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12948" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12948/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Prior research has heavily relied on supervised data to enhance LLMs' reasoning abilities.  However, this approach can be computationally expensive and limits the model's ability to self-evolve. This paper explores a novel approach using **pure reinforcement learning (RL)** to develop reasoning capabilities directly in the base model, focusing on self-evolution through the RL process.  This method encounters challenges such as poor readability and language mixing. 

To overcome these issues, the researchers introduce DeepSeek-R1, which incorporates multi-stage training and cold-start data before RL.  **DeepSeek-R1 achieves performance comparable to OpenAI's state-of-the-art models** on reasoning tasks, and the researchers open-source DeepSeek-R1-Zero, DeepSeek-R1, and six dense models to support the research community. This strategy showcases that reasoning patterns from larger models are crucial for improving reasoning capabilities in smaller models.  This is demonstrated by the success of distilling the reasoning patterns into smaller, efficient models that outperform existing open-source models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reinforcement learning can effectively enhance reasoning capabilities in LLMs without supervised fine-tuning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DeepSeek-R1 achieves state-of-the-art performance on various reasoning benchmarks, rivaling top commercial models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reasoning patterns from larger models can be successfully distilled into smaller, more efficient models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel approach to enhance reasoning capabilities in large language models (LLMs) using reinforcement learning.  It addresses the limitations of existing methods, offers open-source models for the research community, and opens up new avenues for research on improving reasoning in LLMs.  The results significantly advance the state-of-the-art in LLM reasoning, showing impressive performance comparable to top commercial models and setting new benchmarks.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12948/x1.png)

> 🔼 This figure presents a benchmark comparison of the DeepSeek-R1 model's performance against other models across six different reasoning tasks.  The tasks assessed are AIME 2024, Codeforces, GPQA Diamond, MATH-500, MMLU, and SWE-bench Verified.  Each bar represents the accuracy or percentile achieved by a specific model on each task. DeepSeek-R1 and its variants (DeepSeek-R1-32B) are compared against OpenAI models (OpenAI-01-1217, OpenAI-01-mini) and DeepSeek-V3. The figure showcases DeepSeek-R1's competitive performance, particularly on several tasks, highlighting its advanced reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Benchmark performance of DeepSeek-R1.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text" id="S2.T1.1.1.1.1.1" style="font-size:90%;">A conversation between User and Assistant. The user asks a question, and the Assistant solves it.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<td class="ltx_td ltx_align_left" id="S2.T1.1.2.2.1"><span class="ltx_text" id="S2.T1.1.2.2.1.1" style="font-size:90%;">The assistant first thinks about the reasoning process in the mind and then provides the user</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.3.1"><span class="ltx_text" id="S2.T1.1.3.3.1.1" style="font-size:90%;">with the answer.
The reasoning process and answer are enclosed within &lt;think&gt; &lt;/think&gt; and</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.4.1"><span class="ltx_text" id="S2.T1.1.4.4.1.1" style="font-size:90%;">&lt;answer&gt; &lt;/answer&gt; tags, respectively, i.e., &lt;think&gt; reasoning process here &lt;/think&gt;</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.5.5.1">
<span class="ltx_text" id="S2.T1.1.5.5.1.1" style="font-size:90%;">&lt;answer&gt; answer here &lt;/answer&gt;.
User: </span><span class="ltx_text" id="S2.T1.1.5.5.1.2" style="font-size:90%;color:#FF0000;">prompt</span><span class="ltx_text" id="S2.T1.1.5.5.1.3" style="font-size:90%;">. Assistant:</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the template used for training the DeepSeek-R1-Zero model.  The template structures the input for the model, which consists of a user prompt and the model's response. The model's response is formatted with `<think>` tags encapsulating the reasoning process and `<answer>` tags containing the final answer. This standardized format ensures consistent input for reinforcement learning, enabling the model to learn effective reasoning strategies.  During training, the placeholder 'prompt' is replaced with actual reasoning questions.
> <details>
> <summary>read the caption</summary>
> Table 1: Template for DeepSeek-R1-Zero. prompt will be replaced with the specific reasoning question during training.
> </details>





### In-depth insights


#### RL Reasoning
Reinforcement learning (RL) is revolutionizing reasoning capabilities in large language models (LLMs).  The core idea is to **incentivize reasoning behaviors** by rewarding the model for correct and comprehensive responses, driving it to develop sophisticated problem-solving strategies.  **Unlike supervised fine-tuning**, which relies on pre-existing labeled data, RL trains the model through interaction, encouraging self-discovery and the emergence of unexpected reasoning abilities.  This approach yields promising results in various tasks, including mathematics, code generation, and commonsense reasoning. However, pure RL faces challenges like poor readability and language mixing. To address this, hybrid approaches using small amounts of supervised data as a "cold start" are used, demonstrating that a combination of RL and supervised learning can significantly improve performance.  **Distilling these learned reasoning patterns into smaller models** is another promising avenue, reducing the computational cost of inference and making advanced reasoning accessible to a wider range of applications.  While RL offers powerful tools for enhanced reasoning, further work is needed to optimize efficiency, address biases, and fully unlock the potential of this methodology.  The emergence of "aha moments" during RL training showcases the power of self-directed learning and hints at future advancements in achieving artificial general intelligence.

#### DeepSeek-R1
DeepSeek-R1 represents a significant advancement in Large Language Model (LLM) reasoning capabilities.  **Unlike its predecessor, DeepSeek-R1-Zero, which relied solely on reinforcement learning (RL) without supervised fine-tuning, DeepSeek-R1 incorporates a multi-stage training process.** This includes a crucial cold-start phase using a small amount of curated data to improve the model's initial state and enhance the stability and readability of its reasoning process.  The introduction of this cold-start data addresses shortcomings observed in DeepSeek-R1-Zero, such as poor readability and language mixing.  Furthermore, **DeepSeek-R1 employs a refined RL approach focused on reasoning-intensive tasks, incorporating rejection sampling and supervised fine-tuning to further optimize performance.** The resulting model achieves performance comparable to OpenAI's leading models on various reasoning benchmarks, demonstrating the effectiveness of the hybrid approach.  Finally, the **open-sourcing of DeepSeek-R1 and several distilled smaller dense models (1.5B, 7B, 8B, 14B, 32B, 70B parameters) makes the advancements accessible to the research community,** fostering further innovation in the field.  This demonstrates a practical approach to bridging the gap between pure RL-trained models and those requiring substantial supervised data.

#### Distillation
The research paper section on "Distillation" explores a crucial technique for making large language models (LLMs) more efficient and accessible.  **The core idea is to transfer the knowledge and reasoning capabilities learned by a large, computationally expensive model (the teacher) to a smaller, more efficient model (the student).** This is achieved through a process of knowledge distillation, where the smaller model learns to mimic the behavior of the larger model. This process is particularly important for reasoning tasks, as large models often require significant computational resources. The paper demonstrates that this distillation technique can produce smaller models that perform surprisingly well on various reasoning benchmarks, even outperforming some existing open-source models.  **This highlights the potential for creating powerful, yet resource-friendly, reasoning LLMs.**  The researchers also show that directly applying reinforcement learning (RL) to smaller models is less effective than distilling from a larger, RL-trained model, which underscores the importance and efficacy of their distillation approach.  **This suggests that the intricate reasoning patterns discovered during the training of larger models are essential and are best leveraged through distillation.**  By releasing distilled models, the research encourages broader community involvement and accelerates the development of more efficient and accessible reasoning LLMs.

#### Benchmarking
Benchmarking in this research paper plays a crucial role in evaluating the effectiveness of the proposed DeepSeek-R1 model.  The selection of diverse and challenging benchmarks is commendable, covering various aspects like reasoning (AIIME 2024, MATH-500), coding (Codeforces, LiveCodeBench), and knowledge (MMLU, GPQA Diamond).  **The direct comparison to OpenAI's o1 models provides a strong baseline**, allowing for a clear assessment of DeepSeek-R1's performance. The inclusion of both closed-source (OpenAI models) and open-source models (QwQ-32B) in the benchmark facilitates a comprehensive evaluation. Moreover, **the detailed analysis of results**, presented in tables with metrics like pass@1 and cons@64, enhances the transparency of the evaluation.  However, a limitation is the heavy reliance on existing benchmarks without introducing completely novel tasks. It would also be valuable to include benchmarks specifically designed to measure the model's specific strengths, such as its ability to generate lengthy and complex chain-of-thought reasoning. **Future work could include creating new, nuanced benchmarks tailored to evaluate the unique characteristics of advanced reasoning models**, and the focus on the interpretability of the results to understand both success and failure cases more thoroughly.

#### Future Work
The paper's 'Future Work' section suggests several promising avenues for enhancing DeepSeek-R1. **Addressing language mixing** is crucial, as the current model sometimes blends languages unexpectedly, hindering readability and broader applicability.  Improving handling of queries in languages other than English and Chinese is a clear priority.  **Improving performance on software engineering tasks** is another key area, requiring further exploration of efficient RL techniques to overcome the computational limitations. **Refinement of the prompting engineering process** is vital, as the model's performance is sensitive to prompt design, and improving zero-shot prompting strategies could significantly broaden its usability.  Further investigation into the **'aha moment' phenomenon** observed during training could reveal valuable insights into the model's learning process and potentially lead to new training strategies.  Finally, scaling the model to even more complex reasoning tasks requiring extensive extended test-time computation is crucial for tackling more sophisticated problems, especially in areas such as function calling and multi-turn conversations. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12948/extracted/6147501/figures/plot_aime_with_maj.png)

> 🔼 This figure shows a graph illustrating the performance of the DeepSeek-R1-Zero model on the AIME 2024 benchmark throughout its reinforcement learning (RL) training.  The y-axis represents the model's accuracy (percentage correct), and the x-axis shows the number of training steps. The graph displays two lines: one for pass@1 accuracy (the percentage of times the top predicted answer was correct) and another for cons@64 (the consensus accuracy across 64 samples).  To avoid fluctuations in accuracy, 16 response samples were used for each question and the average accuracy is shown. The plot clearly demonstrates an improvement in accuracy over the course of the RL training, showcasing the model's learning process and its ability to improve its reasoning capabilities through RL without supervised fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 2: AIME accuracy of DeepSeek-R1-Zero during training. For each question, we sample 16 responses and calculate the overall average accuracy to ensure a stable evaluation.
> </details>



![](https://arxiv.org/html/2501.12948/extracted/6147501/figures/plot_length.png)

> 🔼 This figure shows how the average length of DeepSeek-R1-Zero's responses changed during its reinforcement learning (RL) training.  The x-axis represents the training step, and the y-axis represents the average number of tokens in the model's responses. As training progressed, the model's responses got progressively longer, indicating that it was taking more time to think through and solve increasingly complex reasoning problems. This increase in response length wasn't manually enforced but emerged naturally as a consequence of the RL process, showcasing the model's self-improvement through RL.
> <details>
> <summary>read the caption</summary>
> Figure 3: The average response length of DeepSeek-R1-Zero on the training set during the RL process. DeepSeek-R1-Zero naturally learns to solve reasoning tasks with more thinking time.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S2.T2.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.2.1">AIME 2024</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.3.1">MATH-500</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.4.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.5.1">LiveCode</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.6.1">CodeForces</span></th>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.2.1.1">Diamond</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.2.2.1">Bench</span></th>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.3.3.1">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S2.T2.1.1.3.3.2">cons@64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.3.3.3">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.3.3.4">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.3.3.5">pass@1</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column" id="S2.T2.1.1.3.3.6">rating</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.1.1.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.4.1.1.1">OpenAI-o1-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.2">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.3">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.4">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.5">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.6">53.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T2.1.1.4.1.7">1820</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.5.2">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.5.2.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.5.2.1.1">OpenAI-o1-0912</span></td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.2.2">74.4</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.2.3">83.3</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.2.4">94.8</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.2.5">77.3</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.1.5.2.6">63.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T2.1.1.5.2.7">1843</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.6.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.6.3.1.1">DeepSeek-R1-Zero</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.2">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.3">86.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.4">95.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.5">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.6">50.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.1.1.6.3.7">1444</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of DeepSeek-R1-Zero, a model trained using reinforcement learning without any supervised fine-tuning, against OpenAI's o1 models on various reasoning benchmarks.  It showcases DeepSeek-R1-Zero's ability to achieve comparable results to OpenAI's models on tasks such as AIME 2024, MATH-500, and GPQA Diamond, even without relying on any supervised data during training.  The comparison highlights DeepSeek-R1-Zero's performance across multiple reasoning-related benchmarks, providing insight into its strengths and weaknesses relative to established state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of DeepSeek-R1-Zero and OpenAI o1 models on reasoning-related benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T3.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T3.2.2.2">Question: If <math alttext="a&gt;1" class="ltx_Math" display="inline" id="S2.T3.1.1.1.m1.1"><semantics id="S2.T3.1.1.1.m1.1a"><mrow id="S2.T3.1.1.1.m1.1.1" xref="S2.T3.1.1.1.m1.1.1.cmml"><mi id="S2.T3.1.1.1.m1.1.1.2" xref="S2.T3.1.1.1.m1.1.1.2.cmml">a</mi><mo id="S2.T3.1.1.1.m1.1.1.1" xref="S2.T3.1.1.1.m1.1.1.1.cmml">&gt;</mo><mn id="S2.T3.1.1.1.m1.1.1.3" xref="S2.T3.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.1.1.1.m1.1b"><apply id="S2.T3.1.1.1.m1.1.1.cmml" xref="S2.T3.1.1.1.m1.1.1"><gt id="S2.T3.1.1.1.m1.1.1.1.cmml" xref="S2.T3.1.1.1.m1.1.1.1"></gt><ci id="S2.T3.1.1.1.m1.1.1.2.cmml" xref="S2.T3.1.1.1.m1.1.1.2">𝑎</ci><cn id="S2.T3.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T3.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.1.1.1.m1.1c">a&gt;1</annotation><annotation encoding="application/x-llamapun" id="S2.T3.1.1.1.m1.1d">italic_a &gt; 1</annotation></semantics></math>, then the sum of the real solutions of <math alttext="\sqrt{a-\sqrt{a+x}}=x" class="ltx_Math" display="inline" id="S2.T3.2.2.2.m2.1"><semantics id="S2.T3.2.2.2.m2.1a"><mrow id="S2.T3.2.2.2.m2.1.1" xref="S2.T3.2.2.2.m2.1.1.cmml"><msqrt id="S2.T3.2.2.2.m2.1.1.2" xref="S2.T3.2.2.2.m2.1.1.2.cmml"><mrow id="S2.T3.2.2.2.m2.1.1.2.2" xref="S2.T3.2.2.2.m2.1.1.2.2.cmml"><mi id="S2.T3.2.2.2.m2.1.1.2.2.2" xref="S2.T3.2.2.2.m2.1.1.2.2.2.cmml">a</mi><mo id="S2.T3.2.2.2.m2.1.1.2.2.1" xref="S2.T3.2.2.2.m2.1.1.2.2.1.cmml">−</mo><msqrt id="S2.T3.2.2.2.m2.1.1.2.2.3" xref="S2.T3.2.2.2.m2.1.1.2.2.3.cmml"><mrow id="S2.T3.2.2.2.m2.1.1.2.2.3.2" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.cmml"><mi id="S2.T3.2.2.2.m2.1.1.2.2.3.2.2" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.2.cmml">a</mi><mo id="S2.T3.2.2.2.m2.1.1.2.2.3.2.1" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.1.cmml">+</mo><mi id="S2.T3.2.2.2.m2.1.1.2.2.3.2.3" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.3.cmml">x</mi></mrow></msqrt></mrow></msqrt><mo id="S2.T3.2.2.2.m2.1.1.1" xref="S2.T3.2.2.2.m2.1.1.1.cmml">=</mo><mi id="S2.T3.2.2.2.m2.1.1.3" xref="S2.T3.2.2.2.m2.1.1.3.cmml">x</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.2.2.2.m2.1b"><apply id="S2.T3.2.2.2.m2.1.1.cmml" xref="S2.T3.2.2.2.m2.1.1"><eq id="S2.T3.2.2.2.m2.1.1.1.cmml" xref="S2.T3.2.2.2.m2.1.1.1"></eq><apply id="S2.T3.2.2.2.m2.1.1.2.cmml" xref="S2.T3.2.2.2.m2.1.1.2"><root id="S2.T3.2.2.2.m2.1.1.2a.cmml" xref="S2.T3.2.2.2.m2.1.1.2"></root><apply id="S2.T3.2.2.2.m2.1.1.2.2.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2"><minus id="S2.T3.2.2.2.m2.1.1.2.2.1.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.1"></minus><ci id="S2.T3.2.2.2.m2.1.1.2.2.2.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.2">𝑎</ci><apply id="S2.T3.2.2.2.m2.1.1.2.2.3.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3"><root id="S2.T3.2.2.2.m2.1.1.2.2.3a.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3"></root><apply id="S2.T3.2.2.2.m2.1.1.2.2.3.2.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2"><plus id="S2.T3.2.2.2.m2.1.1.2.2.3.2.1.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.1"></plus><ci id="S2.T3.2.2.2.m2.1.1.2.2.3.2.2.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.2">𝑎</ci><ci id="S2.T3.2.2.2.m2.1.1.2.2.3.2.3.cmml" xref="S2.T3.2.2.2.m2.1.1.2.2.3.2.3">𝑥</ci></apply></apply></apply></apply><ci id="S2.T3.2.2.2.m2.1.1.3.cmml" xref="S2.T3.2.2.2.m2.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.2.2.2.m2.1c">\sqrt{a-\sqrt{a+x}}=x</annotation><annotation encoding="application/x-llamapun" id="S2.T3.2.2.2.m2.1d">square-root start_ARG italic_a - square-root start_ARG italic_a + italic_x end_ARG end_ARG = italic_x</annotation></semantics></math> is equal to</td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.11.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T3.10.11.1.1">Response: &lt;think&gt;</td>
</tr>
<tr class="ltx_tr" id="S2.T3.4.4">
<td class="ltx_td ltx_align_left" id="S2.T3.4.4.2">To solve the equation <math alttext="\sqrt{a-\sqrt{a+x}}=x" class="ltx_Math" display="inline" id="S2.T3.3.3.1.m1.1"><semantics id="S2.T3.3.3.1.m1.1a"><mrow id="S2.T3.3.3.1.m1.1.1" xref="S2.T3.3.3.1.m1.1.1.cmml"><msqrt id="S2.T3.3.3.1.m1.1.1.2" xref="S2.T3.3.3.1.m1.1.1.2.cmml"><mrow id="S2.T3.3.3.1.m1.1.1.2.2" xref="S2.T3.3.3.1.m1.1.1.2.2.cmml"><mi id="S2.T3.3.3.1.m1.1.1.2.2.2" xref="S2.T3.3.3.1.m1.1.1.2.2.2.cmml">a</mi><mo id="S2.T3.3.3.1.m1.1.1.2.2.1" xref="S2.T3.3.3.1.m1.1.1.2.2.1.cmml">−</mo><msqrt id="S2.T3.3.3.1.m1.1.1.2.2.3" xref="S2.T3.3.3.1.m1.1.1.2.2.3.cmml"><mrow id="S2.T3.3.3.1.m1.1.1.2.2.3.2" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.cmml"><mi id="S2.T3.3.3.1.m1.1.1.2.2.3.2.2" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.2.cmml">a</mi><mo id="S2.T3.3.3.1.m1.1.1.2.2.3.2.1" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.1.cmml">+</mo><mi id="S2.T3.3.3.1.m1.1.1.2.2.3.2.3" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.3.cmml">x</mi></mrow></msqrt></mrow></msqrt><mo id="S2.T3.3.3.1.m1.1.1.1" xref="S2.T3.3.3.1.m1.1.1.1.cmml">=</mo><mi id="S2.T3.3.3.1.m1.1.1.3" xref="S2.T3.3.3.1.m1.1.1.3.cmml">x</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.3.3.1.m1.1b"><apply id="S2.T3.3.3.1.m1.1.1.cmml" xref="S2.T3.3.3.1.m1.1.1"><eq id="S2.T3.3.3.1.m1.1.1.1.cmml" xref="S2.T3.3.3.1.m1.1.1.1"></eq><apply id="S2.T3.3.3.1.m1.1.1.2.cmml" xref="S2.T3.3.3.1.m1.1.1.2"><root id="S2.T3.3.3.1.m1.1.1.2a.cmml" xref="S2.T3.3.3.1.m1.1.1.2"></root><apply id="S2.T3.3.3.1.m1.1.1.2.2.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2"><minus id="S2.T3.3.3.1.m1.1.1.2.2.1.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.1"></minus><ci id="S2.T3.3.3.1.m1.1.1.2.2.2.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.2">𝑎</ci><apply id="S2.T3.3.3.1.m1.1.1.2.2.3.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3"><root id="S2.T3.3.3.1.m1.1.1.2.2.3a.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3"></root><apply id="S2.T3.3.3.1.m1.1.1.2.2.3.2.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2"><plus id="S2.T3.3.3.1.m1.1.1.2.2.3.2.1.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.1"></plus><ci id="S2.T3.3.3.1.m1.1.1.2.2.3.2.2.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.2">𝑎</ci><ci id="S2.T3.3.3.1.m1.1.1.2.2.3.2.3.cmml" xref="S2.T3.3.3.1.m1.1.1.2.2.3.2.3">𝑥</ci></apply></apply></apply></apply><ci id="S2.T3.3.3.1.m1.1.1.3.cmml" xref="S2.T3.3.3.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.3.3.1.m1.1c">\sqrt{a-\sqrt{a+x}}=x</annotation><annotation encoding="application/x-llamapun" id="S2.T3.3.3.1.m1.1d">square-root start_ARG italic_a - square-root start_ARG italic_a + italic_x end_ARG end_ARG = italic_x</annotation></semantics></math>, let’s start by squaring both <math alttext="\cdots" class="ltx_Math" display="inline" id="S2.T3.4.4.2.m2.1"><semantics id="S2.T3.4.4.2.m2.1a"><mi id="S2.T3.4.4.2.m2.1.1" mathvariant="normal" xref="S2.T3.4.4.2.m2.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S2.T3.4.4.2.m2.1b"><ci id="S2.T3.4.4.2.m2.1.1.cmml" xref="S2.T3.4.4.2.m2.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.4.4.2.m2.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S2.T3.4.4.2.m2.1d">⋯</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T3.5.5">
<td class="ltx_td ltx_align_left" id="S2.T3.5.5.1"><math alttext="\left(\sqrt{a-\sqrt{a+x}}\right)^{2}=x^{2}\implies a-\sqrt{a+x}=x^{2}." class="ltx_Math" display="inline" id="S2.T3.5.5.1.m1.2"><semantics id="S2.T3.5.5.1.m1.2a"><mrow id="S2.T3.5.5.1.m1.2.2.1" xref="S2.T3.5.5.1.m1.2.2.1.1.cmml"><mrow id="S2.T3.5.5.1.m1.2.2.1.1" xref="S2.T3.5.5.1.m1.2.2.1.1.cmml"><msup id="S2.T3.5.5.1.m1.2.2.1.1.2" xref="S2.T3.5.5.1.m1.2.2.1.1.2.cmml"><mrow id="S2.T3.5.5.1.m1.2.2.1.1.2.2.2" xref="S2.T3.5.5.1.m1.1.1.cmml"><mo id="S2.T3.5.5.1.m1.2.2.1.1.2.2.2.1" xref="S2.T3.5.5.1.m1.1.1.cmml">(</mo><msqrt id="S2.T3.5.5.1.m1.1.1" xref="S2.T3.5.5.1.m1.1.1.cmml"><mrow id="S2.T3.5.5.1.m1.1.1.2" xref="S2.T3.5.5.1.m1.1.1.2.cmml"><mi id="S2.T3.5.5.1.m1.1.1.2.2" xref="S2.T3.5.5.1.m1.1.1.2.2.cmml">a</mi><mo id="S2.T3.5.5.1.m1.1.1.2.1" xref="S2.T3.5.5.1.m1.1.1.2.1.cmml">−</mo><msqrt id="S2.T3.5.5.1.m1.1.1.2.3" xref="S2.T3.5.5.1.m1.1.1.2.3.cmml"><mrow id="S2.T3.5.5.1.m1.1.1.2.3.2" xref="S2.T3.5.5.1.m1.1.1.2.3.2.cmml"><mi id="S2.T3.5.5.1.m1.1.1.2.3.2.2" xref="S2.T3.5.5.1.m1.1.1.2.3.2.2.cmml">a</mi><mo id="S2.T3.5.5.1.m1.1.1.2.3.2.1" xref="S2.T3.5.5.1.m1.1.1.2.3.2.1.cmml">+</mo><mi id="S2.T3.5.5.1.m1.1.1.2.3.2.3" xref="S2.T3.5.5.1.m1.1.1.2.3.2.3.cmml">x</mi></mrow></msqrt></mrow></msqrt><mo id="S2.T3.5.5.1.m1.2.2.1.1.2.2.2.2" xref="S2.T3.5.5.1.m1.1.1.cmml">)</mo></mrow><mn id="S2.T3.5.5.1.m1.2.2.1.1.2.3" xref="S2.T3.5.5.1.m1.2.2.1.1.2.3.cmml">2</mn></msup><mo id="S2.T3.5.5.1.m1.2.2.1.1.3" xref="S2.T3.5.5.1.m1.2.2.1.1.3.cmml">=</mo><msup id="S2.T3.5.5.1.m1.2.2.1.1.4" xref="S2.T3.5.5.1.m1.2.2.1.1.4.cmml"><mi id="S2.T3.5.5.1.m1.2.2.1.1.4.2" xref="S2.T3.5.5.1.m1.2.2.1.1.4.2.cmml">x</mi><mn id="S2.T3.5.5.1.m1.2.2.1.1.4.3" xref="S2.T3.5.5.1.m1.2.2.1.1.4.3.cmml">2</mn></msup><mo id="S2.T3.5.5.1.m1.2.2.1.1.5" stretchy="false" xref="S2.T3.5.5.1.m1.2.2.1.1.5.cmml">⟹</mo><mrow id="S2.T3.5.5.1.m1.2.2.1.1.6" xref="S2.T3.5.5.1.m1.2.2.1.1.6.cmml"><mi id="S2.T3.5.5.1.m1.2.2.1.1.6.2" xref="S2.T3.5.5.1.m1.2.2.1.1.6.2.cmml">a</mi><mo id="S2.T3.5.5.1.m1.2.2.1.1.6.1" xref="S2.T3.5.5.1.m1.2.2.1.1.6.1.cmml">−</mo><msqrt id="S2.T3.5.5.1.m1.2.2.1.1.6.3" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.cmml"><mrow id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.cmml"><mi id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.2" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.2.cmml">a</mi><mo id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.1" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.1.cmml">+</mo><mi id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.3" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.3.cmml">x</mi></mrow></msqrt></mrow><mo id="S2.T3.5.5.1.m1.2.2.1.1.7" xref="S2.T3.5.5.1.m1.2.2.1.1.7.cmml">=</mo><msup id="S2.T3.5.5.1.m1.2.2.1.1.8" xref="S2.T3.5.5.1.m1.2.2.1.1.8.cmml"><mi id="S2.T3.5.5.1.m1.2.2.1.1.8.2" xref="S2.T3.5.5.1.m1.2.2.1.1.8.2.cmml">x</mi><mn id="S2.T3.5.5.1.m1.2.2.1.1.8.3" xref="S2.T3.5.5.1.m1.2.2.1.1.8.3.cmml">2</mn></msup></mrow><mo id="S2.T3.5.5.1.m1.2.2.1.2" lspace="0em" xref="S2.T3.5.5.1.m1.2.2.1.1.cmml">.</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.5.5.1.m1.2b"><apply id="S2.T3.5.5.1.m1.2.2.1.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1"><and id="S2.T3.5.5.1.m1.2.2.1.1a.cmml" xref="S2.T3.5.5.1.m1.2.2.1"></and><apply id="S2.T3.5.5.1.m1.2.2.1.1b.cmml" xref="S2.T3.5.5.1.m1.2.2.1"><eq id="S2.T3.5.5.1.m1.2.2.1.1.3.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.3"></eq><apply id="S2.T3.5.5.1.m1.2.2.1.1.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.2"><csymbol cd="ambiguous" id="S2.T3.5.5.1.m1.2.2.1.1.2.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.2">superscript</csymbol><apply id="S2.T3.5.5.1.m1.1.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.2.2.2"><root id="S2.T3.5.5.1.m1.1.1a.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.2.2.2"></root><apply id="S2.T3.5.5.1.m1.1.1.2.cmml" xref="S2.T3.5.5.1.m1.1.1.2"><minus id="S2.T3.5.5.1.m1.1.1.2.1.cmml" xref="S2.T3.5.5.1.m1.1.1.2.1"></minus><ci id="S2.T3.5.5.1.m1.1.1.2.2.cmml" xref="S2.T3.5.5.1.m1.1.1.2.2">𝑎</ci><apply id="S2.T3.5.5.1.m1.1.1.2.3.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3"><root id="S2.T3.5.5.1.m1.1.1.2.3a.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3"></root><apply id="S2.T3.5.5.1.m1.1.1.2.3.2.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3.2"><plus id="S2.T3.5.5.1.m1.1.1.2.3.2.1.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3.2.1"></plus><ci id="S2.T3.5.5.1.m1.1.1.2.3.2.2.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3.2.2">𝑎</ci><ci id="S2.T3.5.5.1.m1.1.1.2.3.2.3.cmml" xref="S2.T3.5.5.1.m1.1.1.2.3.2.3">𝑥</ci></apply></apply></apply></apply><cn id="S2.T3.5.5.1.m1.2.2.1.1.2.3.cmml" type="integer" xref="S2.T3.5.5.1.m1.2.2.1.1.2.3">2</cn></apply><apply id="S2.T3.5.5.1.m1.2.2.1.1.4.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.4"><csymbol cd="ambiguous" id="S2.T3.5.5.1.m1.2.2.1.1.4.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.4">superscript</csymbol><ci id="S2.T3.5.5.1.m1.2.2.1.1.4.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.4.2">𝑥</ci><cn id="S2.T3.5.5.1.m1.2.2.1.1.4.3.cmml" type="integer" xref="S2.T3.5.5.1.m1.2.2.1.1.4.3">2</cn></apply></apply><apply id="S2.T3.5.5.1.m1.2.2.1.1c.cmml" xref="S2.T3.5.5.1.m1.2.2.1"><implies id="S2.T3.5.5.1.m1.2.2.1.1.5.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.5"></implies><share href="https://arxiv.org/html/2501.12948v1#S2.T3.5.5.1.m1.2.2.1.1.4.cmml" id="S2.T3.5.5.1.m1.2.2.1.1d.cmml" xref="S2.T3.5.5.1.m1.2.2.1"></share><apply id="S2.T3.5.5.1.m1.2.2.1.1.6.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6"><minus id="S2.T3.5.5.1.m1.2.2.1.1.6.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.1"></minus><ci id="S2.T3.5.5.1.m1.2.2.1.1.6.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.2">𝑎</ci><apply id="S2.T3.5.5.1.m1.2.2.1.1.6.3.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3"><root id="S2.T3.5.5.1.m1.2.2.1.1.6.3a.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3"></root><apply id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2"><plus id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.1"></plus><ci id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.2">𝑎</ci><ci id="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.3.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.6.3.2.3">𝑥</ci></apply></apply></apply></apply><apply id="S2.T3.5.5.1.m1.2.2.1.1e.cmml" xref="S2.T3.5.5.1.m1.2.2.1"><eq id="S2.T3.5.5.1.m1.2.2.1.1.7.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.7"></eq><share href="https://arxiv.org/html/2501.12948v1#S2.T3.5.5.1.m1.2.2.1.1.6.cmml" id="S2.T3.5.5.1.m1.2.2.1.1f.cmml" xref="S2.T3.5.5.1.m1.2.2.1"></share><apply id="S2.T3.5.5.1.m1.2.2.1.1.8.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.8"><csymbol cd="ambiguous" id="S2.T3.5.5.1.m1.2.2.1.1.8.1.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.8">superscript</csymbol><ci id="S2.T3.5.5.1.m1.2.2.1.1.8.2.cmml" xref="S2.T3.5.5.1.m1.2.2.1.1.8.2">𝑥</ci><cn id="S2.T3.5.5.1.m1.2.2.1.1.8.3.cmml" type="integer" xref="S2.T3.5.5.1.m1.2.2.1.1.8.3">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.5.5.1.m1.2c">\left(\sqrt{a-\sqrt{a+x}}\right)^{2}=x^{2}\implies a-\sqrt{a+x}=x^{2}.</annotation><annotation encoding="application/x-llamapun" id="S2.T3.5.5.1.m1.2d">( square-root start_ARG italic_a - square-root start_ARG italic_a + italic_x end_ARG end_ARG ) start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT = italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT ⟹ italic_a - square-root start_ARG italic_a + italic_x end_ARG = italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT .</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.12.2">
<td class="ltx_td ltx_align_left" id="S2.T3.10.12.2.1">Rearrange to isolate the inner square root term:</td>
</tr>
<tr class="ltx_tr" id="S2.T3.6.6">
<td class="ltx_td ltx_align_left" id="S2.T3.6.6.1"><math alttext="(a-x^{2})^{2}=a+x\implies a^{2}-2ax^{2}+(x^{2})^{2}=a+x\implies x^{4}-2ax^{2}-%
x+(a^{2}-a)=0" class="ltx_Math" display="inline" id="S2.T3.6.6.1.m1.3"><semantics id="S2.T3.6.6.1.m1.3a"><mrow id="S2.T3.6.6.1.m1.3.3" xref="S2.T3.6.6.1.m1.3.3.cmml"><msup id="S2.T3.6.6.1.m1.1.1.1" xref="S2.T3.6.6.1.m1.1.1.1.cmml"><mrow id="S2.T3.6.6.1.m1.1.1.1.1.1" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.cmml"><mo id="S2.T3.6.6.1.m1.1.1.1.1.1.2" stretchy="false" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="S2.T3.6.6.1.m1.1.1.1.1.1.1" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.cmml"><mi id="S2.T3.6.6.1.m1.1.1.1.1.1.1.2" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.2.cmml">a</mi><mo id="S2.T3.6.6.1.m1.1.1.1.1.1.1.1" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.1.cmml">−</mo><msup id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.cmml"><mi id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.2" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.2.cmml">x</mi><mn id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.3" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.3.cmml">2</mn></msup></mrow><mo id="S2.T3.6.6.1.m1.1.1.1.1.1.3" stretchy="false" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mn id="S2.T3.6.6.1.m1.1.1.1.3" xref="S2.T3.6.6.1.m1.1.1.1.3.cmml">2</mn></msup><mo id="S2.T3.6.6.1.m1.3.3.5" xref="S2.T3.6.6.1.m1.3.3.5.cmml">=</mo><mrow id="S2.T3.6.6.1.m1.3.3.6" xref="S2.T3.6.6.1.m1.3.3.6.cmml"><mi id="S2.T3.6.6.1.m1.3.3.6.2" xref="S2.T3.6.6.1.m1.3.3.6.2.cmml">a</mi><mo id="S2.T3.6.6.1.m1.3.3.6.1" xref="S2.T3.6.6.1.m1.3.3.6.1.cmml">+</mo><mi id="S2.T3.6.6.1.m1.3.3.6.3" xref="S2.T3.6.6.1.m1.3.3.6.3.cmml">x</mi></mrow><mo id="S2.T3.6.6.1.m1.3.3.7" stretchy="false" xref="S2.T3.6.6.1.m1.3.3.7.cmml">⟹</mo><mrow id="S2.T3.6.6.1.m1.2.2.2" xref="S2.T3.6.6.1.m1.2.2.2.cmml"><mrow id="S2.T3.6.6.1.m1.2.2.2.3" xref="S2.T3.6.6.1.m1.2.2.2.3.cmml"><msup id="S2.T3.6.6.1.m1.2.2.2.3.2" xref="S2.T3.6.6.1.m1.2.2.2.3.2.cmml"><mi id="S2.T3.6.6.1.m1.2.2.2.3.2.2" xref="S2.T3.6.6.1.m1.2.2.2.3.2.2.cmml">a</mi><mn id="S2.T3.6.6.1.m1.2.2.2.3.2.3" xref="S2.T3.6.6.1.m1.2.2.2.3.2.3.cmml">2</mn></msup><mo id="S2.T3.6.6.1.m1.2.2.2.3.1" xref="S2.T3.6.6.1.m1.2.2.2.3.1.cmml">−</mo><mrow id="S2.T3.6.6.1.m1.2.2.2.3.3" xref="S2.T3.6.6.1.m1.2.2.2.3.3.cmml"><mn id="S2.T3.6.6.1.m1.2.2.2.3.3.2" xref="S2.T3.6.6.1.m1.2.2.2.3.3.2.cmml">2</mn><mo id="S2.T3.6.6.1.m1.2.2.2.3.3.1" xref="S2.T3.6.6.1.m1.2.2.2.3.3.1.cmml">⁢</mo><mi id="S2.T3.6.6.1.m1.2.2.2.3.3.3" xref="S2.T3.6.6.1.m1.2.2.2.3.3.3.cmml">a</mi><mo id="S2.T3.6.6.1.m1.2.2.2.3.3.1a" xref="S2.T3.6.6.1.m1.2.2.2.3.3.1.cmml">⁢</mo><msup id="S2.T3.6.6.1.m1.2.2.2.3.3.4" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4.cmml"><mi id="S2.T3.6.6.1.m1.2.2.2.3.3.4.2" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4.2.cmml">x</mi><mn id="S2.T3.6.6.1.m1.2.2.2.3.3.4.3" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4.3.cmml">2</mn></msup></mrow></mrow><mo id="S2.T3.6.6.1.m1.2.2.2.2" xref="S2.T3.6.6.1.m1.2.2.2.2.cmml">+</mo><msup id="S2.T3.6.6.1.m1.2.2.2.1" xref="S2.T3.6.6.1.m1.2.2.2.1.cmml"><mrow id="S2.T3.6.6.1.m1.2.2.2.1.1.1" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.cmml"><mo id="S2.T3.6.6.1.m1.2.2.2.1.1.1.2" stretchy="false" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.cmml">(</mo><msup id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.cmml"><mi id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.2" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.2.cmml">x</mi><mn id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.3" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.3.cmml">2</mn></msup><mo id="S2.T3.6.6.1.m1.2.2.2.1.1.1.3" stretchy="false" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.cmml">)</mo></mrow><mn id="S2.T3.6.6.1.m1.2.2.2.1.3" xref="S2.T3.6.6.1.m1.2.2.2.1.3.cmml">2</mn></msup></mrow><mo id="S2.T3.6.6.1.m1.3.3.8" xref="S2.T3.6.6.1.m1.3.3.8.cmml">=</mo><mrow id="S2.T3.6.6.1.m1.3.3.9" xref="S2.T3.6.6.1.m1.3.3.9.cmml"><mi id="S2.T3.6.6.1.m1.3.3.9.2" xref="S2.T3.6.6.1.m1.3.3.9.2.cmml">a</mi><mo id="S2.T3.6.6.1.m1.3.3.9.1" xref="S2.T3.6.6.1.m1.3.3.9.1.cmml">+</mo><mi id="S2.T3.6.6.1.m1.3.3.9.3" xref="S2.T3.6.6.1.m1.3.3.9.3.cmml">x</mi></mrow><mo id="S2.T3.6.6.1.m1.3.3.10" stretchy="false" xref="S2.T3.6.6.1.m1.3.3.10.cmml">⟹</mo><mrow id="S2.T3.6.6.1.m1.3.3.3" xref="S2.T3.6.6.1.m1.3.3.3.cmml"><mrow id="S2.T3.6.6.1.m1.3.3.3.3" xref="S2.T3.6.6.1.m1.3.3.3.3.cmml"><msup id="S2.T3.6.6.1.m1.3.3.3.3.2" xref="S2.T3.6.6.1.m1.3.3.3.3.2.cmml"><mi id="S2.T3.6.6.1.m1.3.3.3.3.2.2" xref="S2.T3.6.6.1.m1.3.3.3.3.2.2.cmml">x</mi><mn id="S2.T3.6.6.1.m1.3.3.3.3.2.3" xref="S2.T3.6.6.1.m1.3.3.3.3.2.3.cmml">4</mn></msup><mo id="S2.T3.6.6.1.m1.3.3.3.3.1" xref="S2.T3.6.6.1.m1.3.3.3.3.1.cmml">−</mo><mrow id="S2.T3.6.6.1.m1.3.3.3.3.3" xref="S2.T3.6.6.1.m1.3.3.3.3.3.cmml"><mn id="S2.T3.6.6.1.m1.3.3.3.3.3.2" xref="S2.T3.6.6.1.m1.3.3.3.3.3.2.cmml">2</mn><mo id="S2.T3.6.6.1.m1.3.3.3.3.3.1" xref="S2.T3.6.6.1.m1.3.3.3.3.3.1.cmml">⁢</mo><mi id="S2.T3.6.6.1.m1.3.3.3.3.3.3" xref="S2.T3.6.6.1.m1.3.3.3.3.3.3.cmml">a</mi><mo id="S2.T3.6.6.1.m1.3.3.3.3.3.1a" xref="S2.T3.6.6.1.m1.3.3.3.3.3.1.cmml">⁢</mo><msup id="S2.T3.6.6.1.m1.3.3.3.3.3.4" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4.cmml"><mi id="S2.T3.6.6.1.m1.3.3.3.3.3.4.2" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4.2.cmml">x</mi><mn id="S2.T3.6.6.1.m1.3.3.3.3.3.4.3" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4.3.cmml">2</mn></msup></mrow><mo id="S2.T3.6.6.1.m1.3.3.3.3.1a" xref="S2.T3.6.6.1.m1.3.3.3.3.1.cmml">−</mo><mi id="S2.T3.6.6.1.m1.3.3.3.3.4" xref="S2.T3.6.6.1.m1.3.3.3.3.4.cmml">x</mi></mrow><mo id="S2.T3.6.6.1.m1.3.3.3.2" xref="S2.T3.6.6.1.m1.3.3.3.2.cmml">+</mo><mrow id="S2.T3.6.6.1.m1.3.3.3.1.1" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.cmml"><mo id="S2.T3.6.6.1.m1.3.3.3.1.1.2" stretchy="false" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.cmml">(</mo><mrow id="S2.T3.6.6.1.m1.3.3.3.1.1.1" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.cmml"><msup id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.cmml"><mi id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.2" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.2.cmml">a</mi><mn id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.3" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.3.cmml">2</mn></msup><mo id="S2.T3.6.6.1.m1.3.3.3.1.1.1.1" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.1.cmml">−</mo><mi id="S2.T3.6.6.1.m1.3.3.3.1.1.1.3" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.3.cmml">a</mi></mrow><mo id="S2.T3.6.6.1.m1.3.3.3.1.1.3" stretchy="false" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.cmml">)</mo></mrow></mrow><mo id="S2.T3.6.6.1.m1.3.3.11" xref="S2.T3.6.6.1.m1.3.3.11.cmml">=</mo><mn id="S2.T3.6.6.1.m1.3.3.12" xref="S2.T3.6.6.1.m1.3.3.12.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.6.6.1.m1.3b"><apply id="S2.T3.6.6.1.m1.3.3.cmml" xref="S2.T3.6.6.1.m1.3.3"><and id="S2.T3.6.6.1.m1.3.3a.cmml" xref="S2.T3.6.6.1.m1.3.3"></and><apply id="S2.T3.6.6.1.m1.3.3b.cmml" xref="S2.T3.6.6.1.m1.3.3"><eq id="S2.T3.6.6.1.m1.3.3.5.cmml" xref="S2.T3.6.6.1.m1.3.3.5"></eq><apply id="S2.T3.6.6.1.m1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.1.1.1"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.1.1.1.2.cmml" xref="S2.T3.6.6.1.m1.1.1.1">superscript</csymbol><apply id="S2.T3.6.6.1.m1.1.1.1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1"><minus id="S2.T3.6.6.1.m1.1.1.1.1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.1"></minus><ci id="S2.T3.6.6.1.m1.1.1.1.1.1.1.2.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.2">𝑎</ci><apply id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.1.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3">superscript</csymbol><ci id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.2.cmml" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.2">𝑥</ci><cn id="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.1.1.1.1.1.1.3.3">2</cn></apply></apply><cn id="S2.T3.6.6.1.m1.1.1.1.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.1.1.1.3">2</cn></apply><apply id="S2.T3.6.6.1.m1.3.3.6.cmml" xref="S2.T3.6.6.1.m1.3.3.6"><plus id="S2.T3.6.6.1.m1.3.3.6.1.cmml" xref="S2.T3.6.6.1.m1.3.3.6.1"></plus><ci id="S2.T3.6.6.1.m1.3.3.6.2.cmml" xref="S2.T3.6.6.1.m1.3.3.6.2">𝑎</ci><ci id="S2.T3.6.6.1.m1.3.3.6.3.cmml" xref="S2.T3.6.6.1.m1.3.3.6.3">𝑥</ci></apply></apply><apply id="S2.T3.6.6.1.m1.3.3c.cmml" xref="S2.T3.6.6.1.m1.3.3"><implies id="S2.T3.6.6.1.m1.3.3.7.cmml" xref="S2.T3.6.6.1.m1.3.3.7"></implies><share href="https://arxiv.org/html/2501.12948v1#S2.T3.6.6.1.m1.3.3.6.cmml" id="S2.T3.6.6.1.m1.3.3d.cmml" xref="S2.T3.6.6.1.m1.3.3"></share><apply id="S2.T3.6.6.1.m1.2.2.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2"><plus id="S2.T3.6.6.1.m1.2.2.2.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.2"></plus><apply id="S2.T3.6.6.1.m1.2.2.2.3.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3"><minus id="S2.T3.6.6.1.m1.2.2.2.3.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.1"></minus><apply id="S2.T3.6.6.1.m1.2.2.2.3.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.2"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.2.2.2.3.2.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.2">superscript</csymbol><ci id="S2.T3.6.6.1.m1.2.2.2.3.2.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.2.2">𝑎</ci><cn id="S2.T3.6.6.1.m1.2.2.2.3.2.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.2.2.2.3.2.3">2</cn></apply><apply id="S2.T3.6.6.1.m1.2.2.2.3.3.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3"><times id="S2.T3.6.6.1.m1.2.2.2.3.3.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3.1"></times><cn id="S2.T3.6.6.1.m1.2.2.2.3.3.2.cmml" type="integer" xref="S2.T3.6.6.1.m1.2.2.2.3.3.2">2</cn><ci id="S2.T3.6.6.1.m1.2.2.2.3.3.3.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3.3">𝑎</ci><apply id="S2.T3.6.6.1.m1.2.2.2.3.3.4.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.2.2.2.3.3.4.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4">superscript</csymbol><ci id="S2.T3.6.6.1.m1.2.2.2.3.3.4.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4.2">𝑥</ci><cn id="S2.T3.6.6.1.m1.2.2.2.3.3.4.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.2.2.2.3.3.4.3">2</cn></apply></apply></apply><apply id="S2.T3.6.6.1.m1.2.2.2.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.1"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.2.2.2.1.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.1">superscript</csymbol><apply id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1">superscript</csymbol><ci id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.2.cmml" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.2">𝑥</ci><cn id="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.2.2.2.1.1.1.1.3">2</cn></apply><cn id="S2.T3.6.6.1.m1.2.2.2.1.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.2.2.2.1.3">2</cn></apply></apply></apply><apply id="S2.T3.6.6.1.m1.3.3e.cmml" xref="S2.T3.6.6.1.m1.3.3"><eq id="S2.T3.6.6.1.m1.3.3.8.cmml" xref="S2.T3.6.6.1.m1.3.3.8"></eq><share href="https://arxiv.org/html/2501.12948v1#S2.T3.6.6.1.m1.2.2.2.cmml" id="S2.T3.6.6.1.m1.3.3f.cmml" xref="S2.T3.6.6.1.m1.3.3"></share><apply id="S2.T3.6.6.1.m1.3.3.9.cmml" xref="S2.T3.6.6.1.m1.3.3.9"><plus id="S2.T3.6.6.1.m1.3.3.9.1.cmml" xref="S2.T3.6.6.1.m1.3.3.9.1"></plus><ci id="S2.T3.6.6.1.m1.3.3.9.2.cmml" xref="S2.T3.6.6.1.m1.3.3.9.2">𝑎</ci><ci id="S2.T3.6.6.1.m1.3.3.9.3.cmml" xref="S2.T3.6.6.1.m1.3.3.9.3">𝑥</ci></apply></apply><apply id="S2.T3.6.6.1.m1.3.3g.cmml" xref="S2.T3.6.6.1.m1.3.3"><implies id="S2.T3.6.6.1.m1.3.3.10.cmml" xref="S2.T3.6.6.1.m1.3.3.10"></implies><share href="https://arxiv.org/html/2501.12948v1#S2.T3.6.6.1.m1.3.3.9.cmml" id="S2.T3.6.6.1.m1.3.3h.cmml" xref="S2.T3.6.6.1.m1.3.3"></share><apply id="S2.T3.6.6.1.m1.3.3.3.cmml" xref="S2.T3.6.6.1.m1.3.3.3"><plus id="S2.T3.6.6.1.m1.3.3.3.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.2"></plus><apply id="S2.T3.6.6.1.m1.3.3.3.3.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3"><minus id="S2.T3.6.6.1.m1.3.3.3.3.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.1"></minus><apply id="S2.T3.6.6.1.m1.3.3.3.3.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.2"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.3.3.3.3.2.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.2">superscript</csymbol><ci id="S2.T3.6.6.1.m1.3.3.3.3.2.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.2.2">𝑥</ci><cn id="S2.T3.6.6.1.m1.3.3.3.3.2.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.3.3.3.3.2.3">4</cn></apply><apply id="S2.T3.6.6.1.m1.3.3.3.3.3.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3"><times id="S2.T3.6.6.1.m1.3.3.3.3.3.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3.1"></times><cn id="S2.T3.6.6.1.m1.3.3.3.3.3.2.cmml" type="integer" xref="S2.T3.6.6.1.m1.3.3.3.3.3.2">2</cn><ci id="S2.T3.6.6.1.m1.3.3.3.3.3.3.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3.3">𝑎</ci><apply id="S2.T3.6.6.1.m1.3.3.3.3.3.4.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.3.3.3.3.3.4.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4">superscript</csymbol><ci id="S2.T3.6.6.1.m1.3.3.3.3.3.4.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4.2">𝑥</ci><cn id="S2.T3.6.6.1.m1.3.3.3.3.3.4.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.3.3.3.3.3.4.3">2</cn></apply></apply><ci id="S2.T3.6.6.1.m1.3.3.3.3.4.cmml" xref="S2.T3.6.6.1.m1.3.3.3.3.4">𝑥</ci></apply><apply id="S2.T3.6.6.1.m1.3.3.3.1.1.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1"><minus id="S2.T3.6.6.1.m1.3.3.3.1.1.1.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.1"></minus><apply id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2"><csymbol cd="ambiguous" id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.1.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2">superscript</csymbol><ci id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.2.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.2">𝑎</ci><cn id="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.3.cmml" type="integer" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.2.3">2</cn></apply><ci id="S2.T3.6.6.1.m1.3.3.3.1.1.1.3.cmml" xref="S2.T3.6.6.1.m1.3.3.3.1.1.1.3">𝑎</ci></apply></apply></apply><apply id="S2.T3.6.6.1.m1.3.3i.cmml" xref="S2.T3.6.6.1.m1.3.3"><eq id="S2.T3.6.6.1.m1.3.3.11.cmml" xref="S2.T3.6.6.1.m1.3.3.11"></eq><share href="https://arxiv.org/html/2501.12948v1#S2.T3.6.6.1.m1.3.3.3.cmml" id="S2.T3.6.6.1.m1.3.3j.cmml" xref="S2.T3.6.6.1.m1.3.3"></share><cn id="S2.T3.6.6.1.m1.3.3.12.cmml" type="integer" xref="S2.T3.6.6.1.m1.3.3.12">0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.6.6.1.m1.3c">(a-x^{2})^{2}=a+x\implies a^{2}-2ax^{2}+(x^{2})^{2}=a+x\implies x^{4}-2ax^{2}-%
x+(a^{2}-a)=0</annotation><annotation encoding="application/x-llamapun" id="S2.T3.6.6.1.m1.3d">( italic_a - italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT ) start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT = italic_a + italic_x ⟹ italic_a start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT - 2 italic_a italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT + ( italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT ) start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT = italic_a + italic_x ⟹ italic_x start_POSTSUPERSCRIPT 4 end_POSTSUPERSCRIPT - 2 italic_a italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT - italic_x + ( italic_a start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT - italic_a ) = 0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.13.3">
<td class="ltx_td ltx_align_left" id="S2.T3.10.13.3.1">…</td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.14.4">
<td class="ltx_td ltx_align_left" id="S2.T3.10.14.4.1">
<span class="ltx_text" id="S2.T3.10.14.4.1.1" style="color:#FF0000;">Wait, wait. Wait. That’s an aha moment I can flag here</span>.</td>
</tr>
<tr class="ltx_tr" id="S2.T3.7.7">
<td class="ltx_td ltx_align_left" id="S2.T3.7.7.1">Let’s reevaluate this step-by-step to identify if the correct sum can be <math alttext="\cdots" class="ltx_Math" display="inline" id="S2.T3.7.7.1.m1.1"><semantics id="S2.T3.7.7.1.m1.1a"><mi id="S2.T3.7.7.1.m1.1.1" mathvariant="normal" xref="S2.T3.7.7.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S2.T3.7.7.1.m1.1b"><ci id="S2.T3.7.7.1.m1.1.1.cmml" xref="S2.T3.7.7.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.7.7.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S2.T3.7.7.1.m1.1d">⋯</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.15.5">
<td class="ltx_td ltx_align_left" id="S2.T3.10.15.5.1">We started with the equation:</td>
</tr>
<tr class="ltx_tr" id="S2.T3.8.8">
<td class="ltx_td ltx_align_left" id="S2.T3.8.8.1"><math alttext="\sqrt{a-\sqrt{a+x}}=x" class="ltx_Math" display="inline" id="S2.T3.8.8.1.m1.1"><semantics id="S2.T3.8.8.1.m1.1a"><mrow id="S2.T3.8.8.1.m1.1.1" xref="S2.T3.8.8.1.m1.1.1.cmml"><msqrt id="S2.T3.8.8.1.m1.1.1.2" xref="S2.T3.8.8.1.m1.1.1.2.cmml"><mrow id="S2.T3.8.8.1.m1.1.1.2.2" xref="S2.T3.8.8.1.m1.1.1.2.2.cmml"><mi id="S2.T3.8.8.1.m1.1.1.2.2.2" xref="S2.T3.8.8.1.m1.1.1.2.2.2.cmml">a</mi><mo id="S2.T3.8.8.1.m1.1.1.2.2.1" xref="S2.T3.8.8.1.m1.1.1.2.2.1.cmml">−</mo><msqrt id="S2.T3.8.8.1.m1.1.1.2.2.3" xref="S2.T3.8.8.1.m1.1.1.2.2.3.cmml"><mrow id="S2.T3.8.8.1.m1.1.1.2.2.3.2" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.cmml"><mi id="S2.T3.8.8.1.m1.1.1.2.2.3.2.2" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.2.cmml">a</mi><mo id="S2.T3.8.8.1.m1.1.1.2.2.3.2.1" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.1.cmml">+</mo><mi id="S2.T3.8.8.1.m1.1.1.2.2.3.2.3" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.3.cmml">x</mi></mrow></msqrt></mrow></msqrt><mo id="S2.T3.8.8.1.m1.1.1.1" xref="S2.T3.8.8.1.m1.1.1.1.cmml">=</mo><mi id="S2.T3.8.8.1.m1.1.1.3" xref="S2.T3.8.8.1.m1.1.1.3.cmml">x</mi></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.8.8.1.m1.1b"><apply id="S2.T3.8.8.1.m1.1.1.cmml" xref="S2.T3.8.8.1.m1.1.1"><eq id="S2.T3.8.8.1.m1.1.1.1.cmml" xref="S2.T3.8.8.1.m1.1.1.1"></eq><apply id="S2.T3.8.8.1.m1.1.1.2.cmml" xref="S2.T3.8.8.1.m1.1.1.2"><root id="S2.T3.8.8.1.m1.1.1.2a.cmml" xref="S2.T3.8.8.1.m1.1.1.2"></root><apply id="S2.T3.8.8.1.m1.1.1.2.2.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2"><minus id="S2.T3.8.8.1.m1.1.1.2.2.1.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.1"></minus><ci id="S2.T3.8.8.1.m1.1.1.2.2.2.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.2">𝑎</ci><apply id="S2.T3.8.8.1.m1.1.1.2.2.3.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3"><root id="S2.T3.8.8.1.m1.1.1.2.2.3a.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3"></root><apply id="S2.T3.8.8.1.m1.1.1.2.2.3.2.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2"><plus id="S2.T3.8.8.1.m1.1.1.2.2.3.2.1.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.1"></plus><ci id="S2.T3.8.8.1.m1.1.1.2.2.3.2.2.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.2">𝑎</ci><ci id="S2.T3.8.8.1.m1.1.1.2.2.3.2.3.cmml" xref="S2.T3.8.8.1.m1.1.1.2.2.3.2.3">𝑥</ci></apply></apply></apply></apply><ci id="S2.T3.8.8.1.m1.1.1.3.cmml" xref="S2.T3.8.8.1.m1.1.1.3">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.8.8.1.m1.1c">\sqrt{a-\sqrt{a+x}}=x</annotation><annotation encoding="application/x-llamapun" id="S2.T3.8.8.1.m1.1d">square-root start_ARG italic_a - square-root start_ARG italic_a + italic_x end_ARG end_ARG = italic_x</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.16.6">
<td class="ltx_td ltx_align_left" id="S2.T3.10.16.6.1">First, let’s square both sides:</td>
</tr>
<tr class="ltx_tr" id="S2.T3.9.9">
<td class="ltx_td ltx_align_left" id="S2.T3.9.9.1"><math alttext="a-\sqrt{a+x}=x^{2}\implies\sqrt{a+x}=a-x^{2}" class="ltx_Math" display="inline" id="S2.T3.9.9.1.m1.1"><semantics id="S2.T3.9.9.1.m1.1a"><mrow id="S2.T3.9.9.1.m1.1.1" xref="S2.T3.9.9.1.m1.1.1.cmml"><mrow id="S2.T3.9.9.1.m1.1.1.2" xref="S2.T3.9.9.1.m1.1.1.2.cmml"><mi id="S2.T3.9.9.1.m1.1.1.2.2" xref="S2.T3.9.9.1.m1.1.1.2.2.cmml">a</mi><mo id="S2.T3.9.9.1.m1.1.1.2.1" xref="S2.T3.9.9.1.m1.1.1.2.1.cmml">−</mo><msqrt id="S2.T3.9.9.1.m1.1.1.2.3" xref="S2.T3.9.9.1.m1.1.1.2.3.cmml"><mrow id="S2.T3.9.9.1.m1.1.1.2.3.2" xref="S2.T3.9.9.1.m1.1.1.2.3.2.cmml"><mi id="S2.T3.9.9.1.m1.1.1.2.3.2.2" xref="S2.T3.9.9.1.m1.1.1.2.3.2.2.cmml">a</mi><mo id="S2.T3.9.9.1.m1.1.1.2.3.2.1" xref="S2.T3.9.9.1.m1.1.1.2.3.2.1.cmml">+</mo><mi id="S2.T3.9.9.1.m1.1.1.2.3.2.3" xref="S2.T3.9.9.1.m1.1.1.2.3.2.3.cmml">x</mi></mrow></msqrt></mrow><mo id="S2.T3.9.9.1.m1.1.1.3" xref="S2.T3.9.9.1.m1.1.1.3.cmml">=</mo><msup id="S2.T3.9.9.1.m1.1.1.4" xref="S2.T3.9.9.1.m1.1.1.4.cmml"><mi id="S2.T3.9.9.1.m1.1.1.4.2" xref="S2.T3.9.9.1.m1.1.1.4.2.cmml">x</mi><mn id="S2.T3.9.9.1.m1.1.1.4.3" xref="S2.T3.9.9.1.m1.1.1.4.3.cmml">2</mn></msup><mo id="S2.T3.9.9.1.m1.1.1.5" stretchy="false" xref="S2.T3.9.9.1.m1.1.1.5.cmml">⟹</mo><msqrt id="S2.T3.9.9.1.m1.1.1.6" xref="S2.T3.9.9.1.m1.1.1.6.cmml"><mrow id="S2.T3.9.9.1.m1.1.1.6.2" xref="S2.T3.9.9.1.m1.1.1.6.2.cmml"><mi id="S2.T3.9.9.1.m1.1.1.6.2.2" xref="S2.T3.9.9.1.m1.1.1.6.2.2.cmml">a</mi><mo id="S2.T3.9.9.1.m1.1.1.6.2.1" xref="S2.T3.9.9.1.m1.1.1.6.2.1.cmml">+</mo><mi id="S2.T3.9.9.1.m1.1.1.6.2.3" xref="S2.T3.9.9.1.m1.1.1.6.2.3.cmml">x</mi></mrow></msqrt><mo id="S2.T3.9.9.1.m1.1.1.7" xref="S2.T3.9.9.1.m1.1.1.7.cmml">=</mo><mrow id="S2.T3.9.9.1.m1.1.1.8" xref="S2.T3.9.9.1.m1.1.1.8.cmml"><mi id="S2.T3.9.9.1.m1.1.1.8.2" xref="S2.T3.9.9.1.m1.1.1.8.2.cmml">a</mi><mo id="S2.T3.9.9.1.m1.1.1.8.1" xref="S2.T3.9.9.1.m1.1.1.8.1.cmml">−</mo><msup id="S2.T3.9.9.1.m1.1.1.8.3" xref="S2.T3.9.9.1.m1.1.1.8.3.cmml"><mi id="S2.T3.9.9.1.m1.1.1.8.3.2" xref="S2.T3.9.9.1.m1.1.1.8.3.2.cmml">x</mi><mn id="S2.T3.9.9.1.m1.1.1.8.3.3" xref="S2.T3.9.9.1.m1.1.1.8.3.3.cmml">2</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S2.T3.9.9.1.m1.1b"><apply id="S2.T3.9.9.1.m1.1.1.cmml" xref="S2.T3.9.9.1.m1.1.1"><and id="S2.T3.9.9.1.m1.1.1a.cmml" xref="S2.T3.9.9.1.m1.1.1"></and><apply id="S2.T3.9.9.1.m1.1.1b.cmml" xref="S2.T3.9.9.1.m1.1.1"><eq id="S2.T3.9.9.1.m1.1.1.3.cmml" xref="S2.T3.9.9.1.m1.1.1.3"></eq><apply id="S2.T3.9.9.1.m1.1.1.2.cmml" xref="S2.T3.9.9.1.m1.1.1.2"><minus id="S2.T3.9.9.1.m1.1.1.2.1.cmml" xref="S2.T3.9.9.1.m1.1.1.2.1"></minus><ci id="S2.T3.9.9.1.m1.1.1.2.2.cmml" xref="S2.T3.9.9.1.m1.1.1.2.2">𝑎</ci><apply id="S2.T3.9.9.1.m1.1.1.2.3.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3"><root id="S2.T3.9.9.1.m1.1.1.2.3a.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3"></root><apply id="S2.T3.9.9.1.m1.1.1.2.3.2.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3.2"><plus id="S2.T3.9.9.1.m1.1.1.2.3.2.1.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3.2.1"></plus><ci id="S2.T3.9.9.1.m1.1.1.2.3.2.2.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3.2.2">𝑎</ci><ci id="S2.T3.9.9.1.m1.1.1.2.3.2.3.cmml" xref="S2.T3.9.9.1.m1.1.1.2.3.2.3">𝑥</ci></apply></apply></apply><apply id="S2.T3.9.9.1.m1.1.1.4.cmml" xref="S2.T3.9.9.1.m1.1.1.4"><csymbol cd="ambiguous" id="S2.T3.9.9.1.m1.1.1.4.1.cmml" xref="S2.T3.9.9.1.m1.1.1.4">superscript</csymbol><ci id="S2.T3.9.9.1.m1.1.1.4.2.cmml" xref="S2.T3.9.9.1.m1.1.1.4.2">𝑥</ci><cn id="S2.T3.9.9.1.m1.1.1.4.3.cmml" type="integer" xref="S2.T3.9.9.1.m1.1.1.4.3">2</cn></apply></apply><apply id="S2.T3.9.9.1.m1.1.1c.cmml" xref="S2.T3.9.9.1.m1.1.1"><implies id="S2.T3.9.9.1.m1.1.1.5.cmml" xref="S2.T3.9.9.1.m1.1.1.5"></implies><share href="https://arxiv.org/html/2501.12948v1#S2.T3.9.9.1.m1.1.1.4.cmml" id="S2.T3.9.9.1.m1.1.1d.cmml" xref="S2.T3.9.9.1.m1.1.1"></share><apply id="S2.T3.9.9.1.m1.1.1.6.cmml" xref="S2.T3.9.9.1.m1.1.1.6"><root id="S2.T3.9.9.1.m1.1.1.6a.cmml" xref="S2.T3.9.9.1.m1.1.1.6"></root><apply id="S2.T3.9.9.1.m1.1.1.6.2.cmml" xref="S2.T3.9.9.1.m1.1.1.6.2"><plus id="S2.T3.9.9.1.m1.1.1.6.2.1.cmml" xref="S2.T3.9.9.1.m1.1.1.6.2.1"></plus><ci id="S2.T3.9.9.1.m1.1.1.6.2.2.cmml" xref="S2.T3.9.9.1.m1.1.1.6.2.2">𝑎</ci><ci id="S2.T3.9.9.1.m1.1.1.6.2.3.cmml" xref="S2.T3.9.9.1.m1.1.1.6.2.3">𝑥</ci></apply></apply></apply><apply id="S2.T3.9.9.1.m1.1.1e.cmml" xref="S2.T3.9.9.1.m1.1.1"><eq id="S2.T3.9.9.1.m1.1.1.7.cmml" xref="S2.T3.9.9.1.m1.1.1.7"></eq><share href="https://arxiv.org/html/2501.12948v1#S2.T3.9.9.1.m1.1.1.6.cmml" id="S2.T3.9.9.1.m1.1.1f.cmml" xref="S2.T3.9.9.1.m1.1.1"></share><apply id="S2.T3.9.9.1.m1.1.1.8.cmml" xref="S2.T3.9.9.1.m1.1.1.8"><minus id="S2.T3.9.9.1.m1.1.1.8.1.cmml" xref="S2.T3.9.9.1.m1.1.1.8.1"></minus><ci id="S2.T3.9.9.1.m1.1.1.8.2.cmml" xref="S2.T3.9.9.1.m1.1.1.8.2">𝑎</ci><apply id="S2.T3.9.9.1.m1.1.1.8.3.cmml" xref="S2.T3.9.9.1.m1.1.1.8.3"><csymbol cd="ambiguous" id="S2.T3.9.9.1.m1.1.1.8.3.1.cmml" xref="S2.T3.9.9.1.m1.1.1.8.3">superscript</csymbol><ci id="S2.T3.9.9.1.m1.1.1.8.3.2.cmml" xref="S2.T3.9.9.1.m1.1.1.8.3.2">𝑥</ci><cn id="S2.T3.9.9.1.m1.1.1.8.3.3.cmml" type="integer" xref="S2.T3.9.9.1.m1.1.1.8.3.3">2</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.9.9.1.m1.1c">a-\sqrt{a+x}=x^{2}\implies\sqrt{a+x}=a-x^{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T3.9.9.1.m1.1d">italic_a - square-root start_ARG italic_a + italic_x end_ARG = italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT ⟹ square-root start_ARG italic_a + italic_x end_ARG = italic_a - italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.10">
<td class="ltx_td ltx_align_left" id="S2.T3.10.10.1">Next, I could square both sides again, treating the equation:
<math alttext="\cdots" class="ltx_Math" display="inline" id="S2.T3.10.10.1.m1.1"><semantics id="S2.T3.10.10.1.m1.1a"><mi id="S2.T3.10.10.1.m1.1.1" mathvariant="normal" xref="S2.T3.10.10.1.m1.1.1.cmml">⋯</mi><annotation-xml encoding="MathML-Content" id="S2.T3.10.10.1.m1.1b"><ci id="S2.T3.10.10.1.m1.1.1.cmml" xref="S2.T3.10.10.1.m1.1.1">⋯</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T3.10.10.1.m1.1c">\cdots</annotation><annotation encoding="application/x-llamapun" id="S2.T3.10.10.1.m1.1d">⋯</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S2.T3.10.17.7">
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T3.10.17.7.1">…</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases an example from the training of DeepSeek-R1-Zero where the model demonstrates a sudden improvement in its reasoning process, marked by a shift in tone to a more human-like, self-reflective style.  The model stops and reevaluates its approach, demonstrating advanced reasoning capabilities. This moment is considered significant not only for the model's development but also for the researchers observing it, highlighting the unexpected and powerful nature of reinforcement learning in driving autonomous advancements in model reasoning.
> <details>
> <summary>read the caption</summary>
> Table 3: An interesting “aha moment” of an intermediate version of DeepSeek-R1-Zero. The model learns to rethink using an anthropomorphic tone. This is also an aha moment for us, allowing us to witness the power and beauty of reinforcement learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S3.T4.1.1.1.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S3.T4.1.1.1.2" rowspan="2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.2.1" style="font-size:80%;">Benchmark <span class="ltx_text ltx_align_center" id="S3.T4.1.1.1.2.1.1" style="font-size:63%;">(Metric)</span></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.3.1" style="font-size:80%;">Claude-3.5-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.4.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.T4.1.1.1.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.5.1" style="font-size:80%;">DeepSeek</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.6.1" style="font-size:80%;">OpenAI</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.T4.1.1.1.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.7.1" style="font-size:80%;">OpenAI</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T4.1.1.1.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.8.1" style="font-size:80%;">DeepSeek</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T4.1.1.1.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T4.1.2.2.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.2.2.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.2.1" style="font-size:80%;">Sonnet-1022</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.2.2.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.3.1" style="font-size:80%;">0513</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.2.2.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.4.1" style="font-size:80%;">V3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.2.2.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.5.1" style="font-size:80%;">o1-mini</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.2.2.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.6.1" style="font-size:80%;">o1-1217</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.2.2.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.2.2.7.1" style="font-size:80%;">R1</span></td>
<td class="ltx_td" id="S3.T4.1.2.2.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T4.1.3.3.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.1.3.3.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.2.1" style="font-size:80%;">Architecture</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.3.3.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.3.3.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.3.3.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.5.1" style="font-size:80%;">MoE</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.3.3.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.3.3.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.3.3.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.3.3.8.1" style="font-size:80%;">MoE</span></td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.3.3.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T4.1.4.4.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.4.4.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.2.1" style="font-size:80%;"># Activated Params</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.4.4.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.4.4.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.4.4.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.5.1" style="font-size:80%;">37B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.4.4.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.4.4.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.4.4.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.4.4.8.1" style="font-size:80%;">37B</span></td>
<td class="ltx_td" id="S3.T4.1.4.4.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T4.1.5.5.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.5.5.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.2.1" style="font-size:80%;"># Total Params</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.5.5.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.5.5.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.5.5.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.5.1" style="font-size:80%;">671B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.5.5.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.5.5.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.5.5.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.5.5.8.1" style="font-size:80%;">671B</span></td>
<td class="ltx_td" id="S3.T4.1.5.5.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.6.6.1" rowspan="10" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.1.1" style="font-size:80%;">English</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.1.6.6.2" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.6.6.2.1" style="font-size:80%;">MMLU </span><span class="ltx_text" id="S3.T4.1.6.6.2.2" style="font-size:50%;">(Pass@1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.6.6.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.3.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.6.6.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.4.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.6.6.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.5.1" style="font-size:80%;">88.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.6.6.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.6.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.6.6.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.6.6.7.1" style="font-size:80%;">91.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.6.6.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.6.6.8.1" style="font-size:80%;">90.8</span></td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.6.6.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.7.7.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.7.7.1.1" style="font-size:80%;">MMLU-Redux </span><span class="ltx_text" id="S3.T4.1.7.7.1.2" style="font-size:50%;">(EM)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.7.7.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.7.7.2.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.7.7.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.7.7.3.1" style="font-size:80%;">88.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.7.7.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.7.7.4.1" style="font-size:80%;">89.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.7.7.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.7.7.5.1" style="font-size:80%;">86.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.7.7.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.7.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.7.7.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.7.7.7.1" style="font-size:80%;">92.9</span></td>
<td class="ltx_td" id="S3.T4.1.7.7.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.8.8.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.8.8.1.1" style="font-size:80%;">MMLU-Pro </span><span class="ltx_text" id="S3.T4.1.8.8.1.2" style="font-size:50%;">(EM)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.8.8.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.8.8.2.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.8.8.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.8.8.3.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.8.8.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.8.8.4.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.8.8.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.8.8.5.1" style="font-size:80%;">80.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.8.8.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.8.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.8.8.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.8.8.7.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td" id="S3.T4.1.8.8.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.9.9.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.9.9.1.1" style="font-size:80%;">DROP </span><span class="ltx_text" id="S3.T4.1.9.9.1.2" style="font-size:50%;">(3-shot F1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.9.9.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.9.9.2.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.9.9.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.9.9.3.1" style="font-size:80%;">83.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.9.9.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.9.9.4.1" style="font-size:80%;">91.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.9.9.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.9.9.5.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.9.9.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.9.9.6.1" style="font-size:80%;">90.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.9.9.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.9.9.7.1" style="font-size:80%;">92.2</span></td>
<td class="ltx_td" id="S3.T4.1.9.9.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.10.10.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.10.10.1.1" style="font-size:80%;">IF-Eval </span><span class="ltx_text" id="S3.T4.1.10.10.1.2" style="font-size:50%;">(Prompt Strict)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.10.10.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.10.10.2.1" style="font-size:80%;">86.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.10.10.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.10.10.3.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.10.10.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.10.10.4.1" style="font-size:80%;">86.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.10.10.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.10.10.5.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.10.10.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.10.10.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.10.10.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.10.10.7.1" style="font-size:80%;">83.3</span></td>
<td class="ltx_td" id="S3.T4.1.10.10.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.11.11.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.11.11.1.1" style="font-size:80%;">GPQA Diamond </span><span class="ltx_text" id="S3.T4.1.11.11.1.2" style="font-size:50%;">(Pass@1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.11.11.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.11.11.2.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.11.11.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.11.11.3.1" style="font-size:80%;">49.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.11.11.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.11.11.4.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.11.11.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.11.11.5.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.11.11.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.11.11.6.1" style="font-size:80%;">75.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.11.11.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.11.11.7.1" style="font-size:80%;">71.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T4.1.11.11.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.12.12.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.12.12.1.1" style="font-size:80%;">SimpleQA </span><span class="ltx_text" id="S3.T4.1.12.12.1.2" style="font-size:50%;">(Correct)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.12.12.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.12.12.2.1" style="font-size:80%;">28.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.12.12.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.12.12.3.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.12.12.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.12.12.4.1" style="font-size:80%;">24.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.12.12.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.12.12.5.1" style="font-size:80%;">7.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.12.12.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.12.12.6.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.12.12.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.12.12.7.1" style="font-size:80%;">30.1</span></td>
<td class="ltx_td" id="S3.T4.1.12.12.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.13.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.13.13.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.13.13.1.1" style="font-size:80%;">FRAMES </span><span class="ltx_text" id="S3.T4.1.13.13.1.2" style="font-size:50%;">(Acc.)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.13.13.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.13.13.2.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.13.13.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.13.13.3.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.13.13.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.13.13.4.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.13.13.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.13.13.5.1" style="font-size:80%;">76.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.13.13.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.13.13.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.13.13.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.13.13.7.1" style="font-size:80%;">82.5</span></td>
<td class="ltx_td" id="S3.T4.1.13.13.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.14.14.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.14.14.1.1" style="font-size:80%;">AlpacaEval2.0 </span><span class="ltx_text" id="S3.T4.1.14.14.1.2" style="font-size:50%;">(LC-winrate)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.14.14.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.14.14.2.1" style="font-size:80%;">52.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.14.14.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.14.14.3.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.14.14.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.14.14.4.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.14.14.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.14.14.5.1" style="font-size:80%;">57.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.14.14.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.14.14.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.14.14.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.14.14.7.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td" id="S3.T4.1.14.14.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.15.15.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.15.15.1.1" style="font-size:80%;">ArenaHard </span><span class="ltx_text" id="S3.T4.1.15.15.1.2" style="font-size:50%;">(GPT-4-1106)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.15.15.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.15.15.2.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.15.15.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.15.15.3.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.15.15.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.15.15.4.1" style="font-size:80%;">85.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.15.15.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.15.15.5.1" style="font-size:80%;">92.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.15.15.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.15.15.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.15.15.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.15.15.7.1" style="font-size:80%;">92.3</span></td>
<td class="ltx_td" id="S3.T4.1.15.15.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.16.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.16.16.1" rowspan="4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.1.1" style="font-size:80%;">Code</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.1.16.16.2" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.16.16.2.1" style="font-size:80%;">LiveCodeBench </span><span class="ltx_text" id="S3.T4.1.16.16.2.2" style="font-size:50%;">(Pass@1-COT)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.16.16.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.3.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.16.16.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.4.1" style="font-size:80%;">32.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.16.16.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.5.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.16.16.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.6.1" style="font-size:80%;">53.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.16.16.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.16.16.7.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.16.16.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.16.16.8.1" style="font-size:80%;">65.9</span></td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.16.16.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.17.17.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.17.17.1.1" style="font-size:80%;">Codeforces </span><span class="ltx_text" id="S3.T4.1.17.17.1.2" style="font-size:50%;">(Percentile)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.17.17.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.17.17.2.1" style="font-size:80%;">20.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.17.17.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.17.17.3.1" style="font-size:80%;">23.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.17.17.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.17.17.4.1" style="font-size:80%;">58.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.17.17.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.17.17.5.1" style="font-size:80%;">93.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.17.17.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.17.17.6.1" style="font-size:80%;">96.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.17.17.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.17.17.7.1" style="font-size:80%;">96.3</span></td>
<td class="ltx_td" id="S3.T4.1.17.17.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.18.18.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.18.18.1.1" style="font-size:80%;">Codeforces </span><span class="ltx_text" id="S3.T4.1.18.18.1.2" style="font-size:50%;">(Rating)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.18.18.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.18.18.2.1" style="font-size:80%;">717</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.18.18.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.18.18.3.1" style="font-size:80%;">759</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.18.18.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.18.18.4.1" style="font-size:80%;">1134</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.18.18.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.18.18.5.1" style="font-size:80%;">1820</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.18.18.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.18.18.6.1" style="font-size:80%;">2061</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.18.18.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.18.18.7.1" style="font-size:80%;">2029</span></td>
<td class="ltx_td" id="S3.T4.1.18.18.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.19.19.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.19.19.1.1" style="font-size:80%;">SWE Verified </span><span class="ltx_text" id="S3.T4.1.19.19.1.2" style="font-size:50%;">(Resolved)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.19.19.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.19.19.2.1" style="font-size:80%;">50.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.19.19.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.19.19.3.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.19.19.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.19.19.4.1" style="font-size:80%;">42.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.19.19.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.19.19.5.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.19.19.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.19.19.6.1" style="font-size:80%;">48.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.19.19.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.19.19.7.1" style="font-size:80%;">49.2</span></td>
<td class="ltx_td" id="S3.T4.1.19.19.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.20.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T4.1.20.20.1" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.20.20.2" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.20.20.2.1" style="font-size:80%;">Aider-Polyglot </span><span class="ltx_text" id="S3.T4.1.20.20.2.2" style="font-size:50%;">(Acc.)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.20.20.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.20.20.3.1" style="font-size:80%;">45.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.20.20.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.20.20.4.1" style="font-size:80%;">16.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.20.20.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.20.20.5.1" style="font-size:80%;">49.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.20.20.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.20.20.6.1" style="font-size:80%;">32.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.20.20.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.20.20.7.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.20.20.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.20.20.8.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td" id="S3.T4.1.20.20.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.21.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.21.21.1" rowspan="3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.1.1" style="font-size:80%;">Math</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.1.21.21.2" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.21.21.2.1" style="font-size:80%;">AIME 2024 </span><span class="ltx_text" id="S3.T4.1.21.21.2.2" style="font-size:50%;">(Pass@1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.21.21.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.3.1" style="font-size:80%;">16.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.21.21.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.4.1" style="font-size:80%;">9.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.21.21.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.5.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.21.21.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.6.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.21.21.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.21.21.7.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.21.21.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.21.21.8.1" style="font-size:80%;">79.8</span></td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.21.21.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.22.22.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.22.22.1.1" style="font-size:80%;">MATH-500 </span><span class="ltx_text" id="S3.T4.1.22.22.1.2" style="font-size:50%;">(Pass@1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.22.22.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.22.22.2.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.22.22.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.22.22.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.22.22.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.22.22.4.1" style="font-size:80%;">90.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.22.22.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.22.22.5.1" style="font-size:80%;">90.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.22.22.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.22.22.6.1" style="font-size:80%;">96.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.22.22.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.22.22.7.1" style="font-size:80%;">97.3</span></td>
<td class="ltx_td" id="S3.T4.1.22.22.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.23.23.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.23.23.1.1" style="font-size:80%;">CNMO 2024 </span><span class="ltx_text" id="S3.T4.1.23.23.1.2" style="font-size:50%;">(Pass@1)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.23.23.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.23.23.2.1" style="font-size:80%;">13.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.23.23.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.23.23.3.1" style="font-size:80%;">10.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.23.23.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.23.23.4.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.23.23.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.23.23.5.1" style="font-size:80%;">67.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.23.23.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.23.23.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.23.23.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.23.23.7.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td" id="S3.T4.1.23.23.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T4.1.24.24.1" rowspan="3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.1.1" style="font-size:80%;">Chinese</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.1.24.24.2" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.24.24.2.1" style="font-size:80%;">CLUEWSC </span><span class="ltx_text" id="S3.T4.1.24.24.2.2" style="font-size:50%;">(EM)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.24.24.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.3.1" style="font-size:80%;">85.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.24.24.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.4.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.24.24.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.5.1" style="font-size:80%;">90.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.24.24.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.6.1" style="font-size:80%;">89.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.1.24.24.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.24.24.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T4.1.24.24.8" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.24.24.8.1" style="font-size:80%;">92.8</span></td>
<td class="ltx_td ltx_border_t" id="S3.T4.1.24.24.9" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.25.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T4.1.25.25.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.25.25.1.1" style="font-size:80%;">C-Eval </span><span class="ltx_text" id="S3.T4.1.25.25.1.2" style="font-size:50%;">(EM)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.25.25.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.25.25.2.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.25.25.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.25.25.3.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.25.25.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.25.25.4.1" style="font-size:80%;">86.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.25.25.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.25.25.5.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T4.1.25.25.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.25.25.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T4.1.25.25.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.25.25.7.1" style="font-size:80%;">91.8</span></td>
<td class="ltx_td" id="S3.T4.1.25.25.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.26.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S3.T4.1.26.26.1" style="padding-left:1.9pt;padding-right:1.9pt;">
<span class="ltx_text" id="S3.T4.1.26.26.1.1" style="font-size:80%;">C-SimpleQA </span><span class="ltx_text" id="S3.T4.1.26.26.1.2" style="font-size:50%;">(Correct)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.1.26.26.2" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.26.26.2.1" style="font-size:80%;">55.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.1.26.26.3" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.26.26.3.1" style="font-size:80%;">58.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.1.26.26.4" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.26.26.4.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.1.26.26.5" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.26.26.5.1" style="font-size:80%;">40.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.1.26.26.6" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.26.26.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T4.1.26.26.7" style="padding-left:1.9pt;padding-right:1.9pt;"><span class="ltx_text" id="S3.T4.1.26.26.7.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_border_bb" id="S3.T4.1.26.26.8" style="padding-left:1.9pt;padding-right:1.9pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive comparison of DeepSeek-R1's performance against several other prominent large language models (LLMs) across a diverse range of benchmark tasks. These benchmarks encompass various domains, including reasoning, coding, knowledge, and general language understanding.  The table allows for a direct comparison of DeepSeek-R1's capabilities with existing models, highlighting its strengths and weaknesses in different areas. The metrics used in the comparison are tailored to the specific nature of each benchmark, providing a nuanced and detailed evaluation of the models' overall performance.
> <details>
> <summary>read the caption</summary>
> Table 4:  Comparison between DeepSeek-R1 and other representative models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T5.1.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T5.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.2.1">AIME 2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.3.1">MATH-500</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.4.1">GPQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T5.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.5.1">LiveCode</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T5.1.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.6.1">CodeForces</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.2.2">
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.2.2.1.1">Diamond</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.2.2.2.1">Bench</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.3.3.1">pass@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.3.3.2">cons@64</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.3.3.3">pass@1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.3.3.4">pass@1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.3.3.5">pass@1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.3.3.6">rating</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.4.4.1.1">GPT-4o-0513</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.2">9.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.3">13.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.4">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.5">49.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.6">32.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.1.1.4.4.7">759</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.5.5.1.1">Claude-3.5-Sonnet-1022</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.5.5.2">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.5.5.3">26.7</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.5.5.4">78.3</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.5.5.5">65.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.5.5.6">38.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.5.5.7">717</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.6.6.1.1">OpenAI-o1-mini</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.6.6.2">63.6</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.6.6.3">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.6.6.4">90.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.6.6.5">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.6.6.6">53.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.6.6.7"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.6.6.7.1">1820</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.7.7.1.1">QwQ-32B-Preview</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.7.7.2">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.7.7.3">60.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.7.7.4">90.6</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.7.7.5">54.5</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.7.7.6">41.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.7.7.7">1316</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.8.8.1.1">DeepSeek-R1-Distill-Qwen-1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.2">28.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.3">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.4">83.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.5">33.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.6">16.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T5.1.1.8.8.7">954</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.9.9.1.1">DeepSeek-R1-Distill-Qwen-7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.9.9.2">55.5</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.9.9.3">83.3</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.9.9.4">92.8</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.9.9.5">49.1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.9.9.6">37.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.9.9.7">1189</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.10.10.1.1">DeepSeek-R1-Distill-Qwen-14B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.10.10.2">69.7</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.10.10.3">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.10.10.4">93.9</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.10.10.5">59.1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.10.10.6">53.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.10.10.7">1481</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.11.11.1.1">DeepSeek-R1-Distill-Qwen-32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.11.11.2.1">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.11.11.3">83.3</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.11.11.4">94.3</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.11.11.5">62.1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.11.11.6">57.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.11.11.7">1691</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S3.T5.1.1.12.12.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.12.12.1.1">DeepSeek-R1-Distill-Llama-8B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.12.12.2">50.4</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.12.12.3">80.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.12.12.4">89.1</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.12.12.5">49.0</td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.12.12.6">39.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T5.1.1.12.12.7">1205</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T5.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.13.13.1.1">DeepSeek-R1-Distill-Llama-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.2">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.13.13.3.1">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.13.13.4.1">94.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.5"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.13.13.5.1">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.6"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.13.13.6.1">57.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T5.1.1.13.13.7">1633</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several models, including DeepSeek-R1's distilled versions (smaller models trained using knowledge from the larger DeepSeek-R1 model) and other comparable models, across multiple reasoning-related benchmarks.  The benchmarks assess performance on tasks such as solving math problems, coding challenges, and answering questions requiring reasoning. The results show the pass@1 accuracy (the percentage of times the model gave the correct answer on its first attempt) and other relevant metrics, allowing for a direct comparison of the reasoning capabilities of various models, highlighting the relative effectiveness of knowledge distillation in creating smaller, yet still powerful, reasoning models.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of DeepSeek-R1 distilled models and other comparable models on reasoning-related benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.2.1">AIME 2024</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.3.1">MATH-500</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.4.1">GPQA Diamond</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.5.1">LiveCodeBench</span></th>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.1.2.2.1">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.1.2.2.2">cons@64</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.1.1.2.2.3">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.1.1.2.2.4">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.1.1.2.2.5">pass@1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.3.1.1.1">QwQ-32B-Preview</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.3.1.2">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.3.1.3">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.3.1.4">90.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.3.1.5">54.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.3.1.6">41.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.4.2.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.2.1.1">DeepSeek-R1-Zero-Qwen-32B</span></th>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2.2">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2.3">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2.4">91.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2.5">55.0</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2.6">40.2</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.1.1.5.3.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.1.1">DeepSeek-R1-Distill-Qwen-32B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.2.1">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.3.1">83.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.4.1">94.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.1.5.3.5"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.5.1">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.5.3.6.1">57.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different model types on several reasoning-related benchmarks.  The first is a QwQ-32B-Preview model, which serves as a baseline. The second model is DeepSeek-R1-Zero-Qwen-32B, which was trained using large-scale reinforcement learning (RL) on a 32B parameter Qwen model. The third model, DeepSeek-R1-Distill-Qwen-32B, was created by distilling the knowledge from the larger DeepSeek-R1 model into a smaller 32B Qwen model. The benchmarks assess reasoning capabilities across a variety of tasks, and the results demonstrate that distillation, in this case, outperforms pure reinforcement learning, achieving significantly better results than the model trained exclusively through RL.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of distilled and RL Models on Reasoning-Related Benchmarks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12948/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12948/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}