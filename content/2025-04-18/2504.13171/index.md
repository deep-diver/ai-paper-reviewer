---
title: "Sleep-time Compute: Beyond Inference Scaling at Test-time"
summary: "Sleep-time compute: Reduce LLM cost and latency by pre-computing offline before queries!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 UC Berkeley",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13171 {{< /keyword >}}
{{< keyword icon="writer" >}} Kevin Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13171" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13171" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13171/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current LLMs rely on test-time compute, causing high latency and cost. Applying test-time compute assumes that problems are stateless, which incurs additional latency and cost. This is redundant when dealing with stateful applications that often reuse context. In reality, many LLM apps are stateful, working with persisted, reused context, such as question-answering, coding agents, and conversational assistants. 



This paper introduces "sleep-time compute," a method where models "think" offline about contexts before queries. By predicting user queries and pre-computing useful quantities, test-time compute needs are reduced. Experiments on Stateful GSM-Symbolic and AIME show sleep-time compute can reduce test-time compute by ~5x while boosting accuracy up to 18%. For multiple queries related to the same context, this method decreases the cost per query by 2.5x and is most effective when user queries are predictable.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sleep-time compute significantly reduces test-time compute requirements, achieving up to 5x reduction in computation while maintaining accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Scaling sleep-time compute can further improve accuracy, with gains of up to 18% on stateful reasoning tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Amortizing sleep-time compute across multiple related queries can substantially decrease the average cost per query, making LLMs more efficient for stateful applications. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it introduces **a novel approach to reduce the computational cost and latency** in LLMs, **making them more efficient for real-world applications**. By introducing 'sleep-time compute', the research **opens new avenues for optimizing LLM performance** and addresses critical limitations in test-time compute.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13171/x1.png)

> 🔼 Figure 1 illustrates the concept of sleep-time compute using the Multi-Query GSM-Symbolic-P1 dataset.  The figure shows two scenarios: a standard test-time compute setting, where the model receives the query and context simultaneously at test time; and a sleep-time compute setting, where the model processes the context offline during 'sleep time' to perform pre-computations and create a more informative context.  These pre-computations can include identifying patterns, predicting answers, and generating additional information that might be helpful for answering future queries related to the same context. The sleep-time compute approach significantly reduces the computational cost and latency at test time by reusing the pre-computed information from sleep time for subsequent queries on the same context.  In the example, sleep-time compute identifies useful information and precomputes relevant quantities within the learned context. This reduces the computational work required at test time when answering questions related to the same context, effectively saving computation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of applying sleep-time compute on Multi-Query GSM-Symbolic-P1. Sleep-time compute processes the original raw context, adding additional computations that can potentially be useful for future queries. Moreover, contexts can be shared across related queries enabling savings in total cost per query.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.F20.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.F20.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.F20.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.1.1.1.1">
<span class="ltx_p" id="A3.F20.1.1.1.1.1.1" style="width:422.8pt;"><span class="ltx_text ltx_font_bold" id="A3.F20.1.1.1.1.1.1.1">Context</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.F20.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.F20.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.2.2.1.1">
<span class="ltx_p" id="A3.F20.1.2.2.1.1.1" style="width:422.8pt;">When Sofia watches her brother, she gets out a variety of toys for him. The bag of building blocks has 33 blocks in it. The bin of stuffed animals has 5 stuffed animals inside. The number of action figures in the action figure pack is twice the number of blocks and stuffed animals combined. The crayon box has 12 different colors of crayon, and the sticker book has 9 pages, each with 13 stickers. The tower of stacking rings has 28 multicolored rings on it. Sofia recently bought a tube of bouncy balls, bringing her total number of items for her brother up to 320.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.F20.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.F20.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.3.3.1.1">
<span class="ltx_p" id="A3.F20.1.3.3.1.1.1" style="width:422.8pt;"><span class="ltx_text ltx_font_bold" id="A3.F20.1.3.3.1.1.1.1">Original Question</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.F20.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.F20.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.4.4.1.1">
<span class="ltx_p" id="A3.F20.1.4.4.1.1.1" style="width:422.8pt;">How many bouncy balls came in the tube?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.F20.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.F20.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.5.5.1.1">
<span class="ltx_p" id="A3.F20.1.5.5.1.1.1" style="width:422.8pt;"><span class="ltx_text ltx_font_bold" id="A3.F20.1.5.5.1.1.1.1">Generated Questions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.F20.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.F20.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.F20.1.6.6.1.1">
<span class="ltx_p" id="A3.F20.1.6.6.1.1.1" style="width:422.8pt;">
<span class="ltx_itemize" id="A3.I1">
<span class="ltx_item" id="A3.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i1.p1">
<span class="ltx_p" id="A3.I1.i1.p1.1">How many action figures does the pack contain?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i2.p1">
<span class="ltx_p" id="A3.I1.i2.p1.1">What is the total number of stickers in the sticker book?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i3.p1">
<span class="ltx_p" id="A3.I1.i3.p1.1">How many total items did Sofia have before adding the tube of bouncy balls?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i4" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i4.p1">
<span class="ltx_p" id="A3.I1.i4.p1.1">If Sofia had received a tube with 10 extra bouncy balls, what would be the new total number of items?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i5" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i5.p1">
<span class="ltx_p" id="A3.I1.i5.p1.1">What is the sum of the building blocks and stuffed animals?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i6" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i6.p1">
<span class="ltx_p" id="A3.I1.i6.p1.1">How many stacking rings are on the tower?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i7" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i7.p1">
<span class="ltx_p" id="A3.I1.i7.p1.1">What is the combined total of building blocks, action figures, and stacking rings?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i8" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i8.p1">
<span class="ltx_p" id="A3.I1.i8.p1.1">If Sofia gave away 3 stuffed animals, how many stuffed animals would remain in the bin?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i9" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="A3.I1.i9.p1">
<span class="ltx_p" id="A3.I1.i9.p1.1">What is the sum of the building blocks, stuffed animals, and crayons?</span>
</span></span>
<span class="ltx_item" id="A3.I1.i10" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para ltx_noindent" id="A3.I1.i10.p1">
<span class="ltx_p" id="A3.I1.i10.p1.1">If Sofia divided the 49 bouncy balls equally into 7 baskets, how many balls would each basket contain?</span>
</span></span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 The table presents a statistical overview of the Multi-Query GSM-Symbolic dataset.  The original GSM-Symbolic dataset was processed by taking each entry, splitting it into its context and question components.  From these context-question pairs, additional questions were synthetically generated. The table then shows the total number of questions and contexts in the newly constructed Multi-Query GSM-Symbolic dataset, broken down into the original number of questions from the GSM-Symbolic dataset and the number of synthetically generated questions.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset Statistics of Multi-Query GSM-Symbolic. We sample one instance from each template from the GSM-Symbolic dataset and separate it into context and question. We then synthetically generate additional questions from the context and question.
> </details>





### In-depth insights


#### Sleep-time LLMs
**Sleep-time LLMs** presents a paradigm shift beyond standard test-time compute scaling. Instead of solely focusing on increasing computation during inference, it explores pre-emptive processing of available contexts. The concept centers around leveraging idle LLM resources to anticipate user queries and pre-compute useful information. This approach aims to reduce latency and computational cost at test-time. By sharing sleep-time computations across multiple related queries, the overall efficiency improves significantly. Effective sleep-time compute depends on query predictability from context; implying strategic allocation based on contextual cues can optimize resource utilization. This novel technique shows potential in realistic applications by reducing reliance on solely scaling test-time compute to solve intricate problems.

#### Test-time Pareto
The **test-time Pareto frontier** represents the optimal trade-off between the amount of computational resources (e.g., tokens, inference time) spent during the testing phase of a machine learning model and the resulting accuracy. Improving the Pareto frontier signifies a model can achieve higher accuracy with the same computational budget, or conversely, maintain the same accuracy with reduced computation. The paper introduces **sleep-time compute** as a method to shift the test-time Pareto frontier. By performing offline computations on available context before receiving a query, the model can answer the query more efficiently during test time. This is because the model has already pre-processed the context and made useful inferences, reducing the need for redundant calculations. As a result, **the use of sleep-time allows for significant gains in accuracy, especially with smaller test-time resource allocations**. This highlights that the trade-offs can be advantageous.

#### Multi-Query Savings
The idea of 'Multi-Query Savings' is very insightful, especially in the context of large language models (LLMs). **Amortizing the cost** of pre-computing or caching information across multiple related queries can significantly reduce the overall computational burden and latency, making LLMs more practical for real-world applications. **Efficiency** is key: rather than re-computing the same information for each query, the model can leverage the pre-computed knowledge to answer subsequent queries more quickly and at a lower cost. This approach is valuable where contexts remain relevant over multiple queries, such as in customer service chatbots or document Q&A systems. The effectiveness of multi-query savings depends on the **nature of the context** and the **similarity of queries**.

#### Query Predictability
**Query predictability** is a crucial aspect of optimizing AI systems, especially when using techniques like sleep-time compute. If user queries can be accurately predicted, the system can proactively prepare responses or pre-compute necessary information, leading to reduced latency and computational costs at query time. High predictability enables more efficient allocation of resources during the 'sleep-time,' focusing on computations that are most likely to be relevant. However, the effectiveness of such strategies diminishes as query predictability decreases. In scenarios with unpredictable queries, resources spent on pre-computation may be wasted on irrelevant tasks. Therefore, a balanced approach is needed, considering the trade-off between pre-emptive computation and on-demand processing, with the optimal balance depending on the specific application and the nature of user interactions.

#### Agentic SWE Study
In an agentic SWE study, the paper introduces SWE-Features, a benchmark focusing on tasks requiring **multi-file edits** and **new feature implementation**. Unlike existing benchmarks, it uses PRs modifying at least three files.  The agent explores the repository at sleep-time, summarizing its understanding, contrasting with a baseline lacking this pre-exploration.  Results show that at **lower test-time budgets, sleep-time compute improves performance**, while standard test-time scaling excels at higher budgets. A hypothesis posits that standard test-time compute, due to prompt relevance, edits fewer files earlier.  Conversely, agents with sleep-time compute, having explored more, edit more files, possibly reducing precision.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13171/x2.png)

> 🔼 The figure illustrates the transformation of a problem instance from the original GSM-Symbolic dataset into the new Stateful GSM-Symbolic dataset.  The original GSM-Symbolic dataset presents a single query-answer pair where a question and the context to answer the question are interwoven.  The Stateful GSM-Symbolic dataset, however, decouples the context and the query.  The left panel shows the original GSM-Symbolic format with the context and question combined in a single text.  The right panel shows how this is separated in Stateful GSM-Symbolic, making the context and query distinct, allowing for sleep-time compute to be applied more effectively.  This separation enables the model to pre-process the context (c) at sleep time before receiving the query (q) at test time, improving efficiency and reducing compute cost.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example of separating an instance from GSM-Symbolic into context, and question, creating an instance in Stateful GSM-Symbolic.
> </details>



![](https://arxiv.org/html/2504.13171/x3.png)

> 🔼 This figure shows the Pareto frontier for the tradeoff between test-time compute and accuracy on the Stateful GSM-Symbolic dataset.  The x-axis represents the average number of test-time tokens used per question, while the y-axis represents the accuracy achieved.  Separate lines are shown for models using standard test-time compute only and models augmented with sleep-time compute. The shaded region highlights where incorporating sleep-time compute results in a Pareto improvement—achieving either higher accuracy with the same compute, or the same accuracy with less compute. This illustrates that sleep-time compute can improve the efficiency of test-time computation without sacrificing model performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: The test-time compute vs. accuracy tradeoff for on Stateful GSM-Symbolic. Shaded area indicates where sleep-time compute improves the pareto test-time accuracy trade-off.
> </details>



![](https://arxiv.org/html/2504.13171/x4.png)

> 🔼 This figure displays the Pareto frontier for test-time compute versus accuracy on the Stateful AIME dataset for several reasoning models.  The x-axis represents the average number of test-time tokens used per question, and the y-axis represents the accuracy achieved.  Separate lines show the performance of each model under a standard test-time compute approach and with the addition of sleep-time compute. The shaded regions highlight the Pareto improvements achieved by incorporating sleep-time compute, demonstrating that similar accuracy levels can be reached with significantly less test-time computation. This illustrates the efficiency gains of sleep-time compute in reducing the computational cost of achieving high accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4: The test-time compute vs. accuracy tradeoff on Stateful AIME for various reasoning models. Applying sleep-time compute allows models to reach similar levels of performance with much less compute at test-time. The shaded area indicates the pareto improvement from sleep-time compute.
> </details>



![](https://arxiv.org/html/2504.13171/x5.png)

> 🔼 Figure 5 presents a comparison of two methods for enhancing Large Language Model (LLM) performance on the Stateful GSM-Symbolic dataset: test-time scaling with sleep-time compute and parallel test-time scaling with pass@k. The graph illustrates the trade-off between test-time compute (measured as average tokens used per query) and accuracy. The results reveal that sleep-time compute consistently outperforms pass@k across various compute budgets, achieving higher accuracy with the same or less compute. This suggests that sleep-time compute is a more efficient strategy for improving LLM performance on this type of task.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparing test-time scaling with sleep-time compute against parallel test-time scaling with pass@k on Stateful GSM-Symbolic. We see that sleep-time compute generally pareto dominates pass@k.
> </details>



![](https://arxiv.org/html/2504.13171/x6.png)

> 🔼 This figure compares two methods for scaling test-time computation in large language models (LLMs): sleep-time compute and parallel test-time scaling using pass@k.  Both approaches aim to improve accuracy on challenging reasoning tasks. The x-axis represents the amount of test-time compute used (measured in tokens), and the y-axis represents the accuracy achieved. The graph shows that sleep-time compute consistently outperforms parallel pass@k scaling. For a given level of accuracy, sleep-time compute requires significantly less test-time compute than pass@k, indicating its superior efficiency. This dominance is visualized as a Pareto improvement, where sleep-time compute achieves a higher accuracy for the same amount of compute, or requires less compute to achieve the same accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparing test-time scaling with sleep-time compute against parallel test-time scaling with pass@k on Stateful AIME. We see that sleep-time compute generally pareto dominates pass@k.
> </details>



![](https://arxiv.org/html/2504.13171/x7.png)

> 🔼 This figure displays the results of an experiment evaluating the impact of scaling up sleep-time compute on the Pareto frontier of test-time compute versus accuracy.  The experiment uses the Stateful GSM-Symbolic dataset, a modified version of GSM-Symbolic designed for stateful reasoning problems. The x-axis represents the average number of test-time tokens per question, and the y-axis represents the accuracy achieved. Multiple lines are shown, each representing a different level of sleep-time compute scaling (achieved by generating multiple versions of the precomputed context 'c' in parallel during the sleep-time phase). The figure demonstrates that increasing the scale of sleep-time compute leads to a Pareto improvement, meaning that higher accuracy can be achieved with the same or less test-time compute.  The improvement is so substantial that the new Pareto frontier extends beyond what was achievable with test-time compute alone.
> <details>
> <summary>read the caption</summary>
> Figure 7: Scaling up sleep-time compute for different test-time compute budgets on Stateful GSM-Symbolic, by generating up multiple c′superscript𝑐′c^{\prime}italic_c start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT in parallel. Applying more sleep-time compute shifts the pareto beyond the standard test-time-compute vs. accuracy curve.
> </details>



![](https://arxiv.org/html/2504.13171/x8.png)

> 🔼 This figure shows how increasing the amount of computation performed during the 'sleep time' phase (before receiving the actual query) affects the performance of a model on the Stateful AIME dataset.  The x-axis represents the amount of computation at test time, while the y-axis represents the accuracy of the model.  Different lines show the model's performance with varying levels of 'sleep-time' computation, achieved by adjusting the level of reasoning effort in the sleep-time prompt. The shaded area highlights the Pareto improvement, showing that using more 'sleep-time' computation leads to significant gains in test-time efficiency, allowing the model to achieve the same accuracy level with much less computation at test time.  This improves the Pareto frontier of test-time compute versus accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 8: Increasing the amount of sleep-time compute for different test-time compute budgets on Stateful AIME by varying the reasoning effort when applying the sleep-time compute prompt. Applying more sleep-time compute further moves the test-time-compute vs. accuracy pareto curve.
> </details>



![](https://arxiv.org/html/2504.13171/x9.png)

> 🔼 This figure analyzes the cost-effectiveness of using sleep-time compute in scenarios with multiple related queries about the same context.  The x-axis represents the average total inference cost per query, and the y-axis shows the accuracy achieved.  Different lines show results for different numbers of questions asked per context (1, 2, 5, and 10).  The figure demonstrates that when only a few queries are asked per context, using sleep-time compute is less beneficial in terms of overall cost.  As the number of queries per context increases, the benefits of sleep-time compute become more significant; it shifts the cost-accuracy Pareto curve outward, improving the overall cost-effectiveness. This indicates that amortizing sleep-time compute across related questions significantly reduces the average cost per query while maintaining or even improving accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 9: Amortizing sleep-time compute, using the Multi-Query GSM-Symbolic dataset. When there are fewer questions per context, we see that it is less favorable to use sleep-time compute, in terms of total cost. However, as the questions per context are increased, we see that applying sleep-time compute can improve the cost-accuracy pareto.
> </details>



![](https://arxiv.org/html/2504.13171/x10.png)

> 🔼 This figure analyzes the impact of query predictability on the effectiveness of sleep-time compute.  It divides GSM-Symbolic questions (P1 and P2 datasets) into five groups based on how easily they can be predicted from the given context.  The x-axis represents these predictability bins (higher values mean higher predictability). The y-axis shows the accuracy difference between sleep-time compute and standard test-time compute, both using the minimal test-time compute budget.  The results demonstrate that as the questions become more predictable (moving to higher predictability bins), the performance advantage of sleep-time compute increases, as shown by the widening gap between the two methods.
> <details>
> <summary>read the caption</summary>
> Figure 10: GSM-Symbolic questions binned by how predictable they are from the context. We compare the performance of sleep-time compute and standard test-time compute in the lowest test-time compute budget setting on both P1 and P2. The gap between sleep-time compute and standard test-time inference widens as the question becomes more predictable from the context.
> </details>



![](https://arxiv.org/html/2504.13171/x11.png)

> 🔼 This figure shows the results of applying sleep-time compute to the SWE-Features dataset. The x-axis represents the average number of test-time tokens per question, and the y-axis represents the F1 score. The blue line shows the performance of the model with sleep-time compute, and the grey line shows the performance of the model with standard test-time compute only. As shown, when the test-time budget is low, sleep-time compute outperforms the standard test-time compute in terms of F1 score.  However, as the test-time budget increases, the performance of the standard test-time compute surpasses that of sleep-time compute.
> <details>
> <summary>read the caption</summary>
> Figure 11: Applying sleep-time compute to SWE-Features. We see that at lower test-time budgets, sleep-time compute has higher F1 score than standard test-time scaling. However, at higher budgets, standard test-time scaling is better.
> </details>



![](https://arxiv.org/html/2504.13171/x12.png)

> 🔼 This figure displays the prompt used for level 0 verbosity in the Letta model.  The prompt instructs the model to answer questions accurately and concisely, basing its response on its persona. To communicate with the user, the model should use the `send_message` function. The prompt directs the model to check the `rethink_memory` block for relevant information before answering.  It emphasizes using existing information and avoiding unnecessary computation, recommending a direct, single-sentence response containing only the numerical answer.
> <details>
> <summary>read the caption</summary>
> Figure 12: Prompt for level 0 verbosity
> </details>



![](https://arxiv.org/html/2504.13171/x13.png)

> 🔼 This figure shows the prompt used for level 1 verbosity in the Letta model.  The prompt instructs the model to answer questions concisely and accurately, using only the necessary tokens.  It directs the model to check its internal 'rethink_memory_block' for relevant information before generating a response, avoiding redundant computation.  The final answer should include a short explanation followed by the numerical result.
> <details>
> <summary>read the caption</summary>
> Figure 13: Prompt for level 1 verbosity
> </details>



![](https://arxiv.org/html/2504.13171/x14.png)

> 🔼 This figure shows the prompt used for level 2 verbosity in the Letta reasoning system.  The prompt instructs the model to answer questions accurately and concisely, using only the necessary number of tokens.  It emphasizes the use of the 'rethink_memory_block' for information retrieval, avoiding redundant computations. The model should respond directly with the numerical answer at the end of the message without providing further reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt for level 2 verbosity
> </details>



![](https://arxiv.org/html/2504.13171/x15.png)

> 🔼 This figure shows the prompt used for level 3 verbosity in the Letta system.  The prompt instructs the model to answer questions accurately and concisely, using only the necessary tokens and relying on information already present in the `rethink_memory_block`. It emphasizes avoiding redundant computation and only using internal monologue when strictly necessary. The final answer should be a single numerical value.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt for level 3 verbosity
> </details>



![](https://arxiv.org/html/2504.13171/x16.png)

> 🔼 This figure displays the prompt used for level 4 verbosity in the Letta reasoning system.  Level 4 verbosity prompts the model to reason through problems step-by-step and explain its reasoning process clearly. The model should use the 'rethink_memory_block' to access information and avoid redundant computations.  The model should clearly explain each step of its reasoning, including any recomputations of numbers found in the 'rethink_memory_block'. The final numerical answer should be presented at the end of the response.  This approach prioritizes thoroughness and explanation, aiming to improve the transparency and understandability of the model's decision-making process.
> <details>
> <summary>read the caption</summary>
> Figure 16: Prompt for level 4 verbosity
> </details>



![](https://arxiv.org/html/2504.13171/x17.png)

> 🔼 This figure shows the prompt used for sleep-time compute in the experiments. The prompt instructs the model to act as Letta-Offline-Memory, a digital companion that reorganizes and consolidates memories at each step using the `rethink_memory` function. The core memory unit contains initial system instructions and context, including persona and user details. Read-only blocks store persona information and user details, allowing for consistent responses. Read-write blocks allow for dynamic memory updates using `rethink_memory`. The prompt emphasizes integrating new information, prioritizing new data, and considering potential consequences of updates. It instructs the model to draw logical conclusions and potential hypotheses using internal monologue when uncertain. The final output should replace outdated facts in the new memory block.
> <details>
> <summary>read the caption</summary>
> Figure 17: Prompt for sleep-time compute
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13171/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13171/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}