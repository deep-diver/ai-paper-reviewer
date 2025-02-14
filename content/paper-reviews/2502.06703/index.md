---
title: "Can 1B LLM Surpass 405B LLM? Rethinking Compute-Optimal Test-Time Scaling"
summary: "Smaller LLMs can outperform larger ones by strategically increasing computation during inference, defying conventional LLM scaling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06703 {{< /keyword >}}
{{< keyword icon="writer" >}} Runze Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06703" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06703" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06703/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current research on Large Language Models (LLMs) often focuses on scaling up model size to improve performance.  This paper investigates Test-Time Scaling (TTS), a method that enhances performance by adding computation during inference. However, existing TTS research lacks a systematic analysis of how different factors influence the optimal scaling strategy. This makes it difficult to apply TTS effectively in practice and limits our understanding of its potential.

This research addresses this gap by conducting comprehensive experiments on MATH-500 and AIME24 datasets. They explore the impact of various policy models, process reward models (PRMs), and problem difficulty levels on TTS. Their findings demonstrate that a compute-optimal TTS strategy, especially a reward-aware approach, significantly improves performance. Surprisingly, they find that **smaller LLMs, using their optimized TTS approach, can even outperform much larger models**.  This suggests a paradigm shift in how we think about LLM scaling.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Compute-optimal TTS strategies are highly dependent on policy models, PRMs, and problem difficulty. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Smaller LLMs can surpass larger LLMs on complex tasks using compute-optimal TTS. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reward-aware compute-optimal TTS significantly improves performance across different models and tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper challenges conventional wisdom in large language model (LLM) scaling by demonstrating that **compute-optimal test-time scaling (TTS) can enable smaller LLMs to surpass significantly larger models in performance**, opening new avenues for research and resource-efficient development of LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.06703/x1.png)

> 🔼 This figure compares the performance of smaller Language Models (LLMs) using compute-optimal Test-Time Scaling (TTS) against larger LLMs using Chain-of-Thought (CoT) reasoning on the MATH-500 and AIME24 datasets.  It demonstrates that smaller models, when utilizing a compute-optimal TTS strategy, can sometimes surpass significantly larger models in terms of accuracy. Specifically, the figure showcases several examples: Llama-3.2-3B-Instruct outperforming Llama-3.1-405B-Instruct and GPT-4; DeepSeek-R1-Distill-1.5B outperforming o1-preview and o1-mini; and DeepSeek-R1-Distill-7B surpassing both o1 and the larger DeepSeek-R1 model. Each comparison is presented using bar charts illustrating performance on MATH-500 and AIME24.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between the performance of smaller LLMs compute-optimal TTS and that of larger LLMs CoT on MATH-500 and AIME24. (a) & (d) Llama-3.2-3B-Instruct surpasses Llama-3.1-405B-Instruct and GPT-4o on MATH-500 and AIME24; (b) & (e) DeepSeek-R1-Distill-1.5B outperforms o1-preview on MATH-500 and AIME24, and surpasses o1-mini on MATH-500; (c) & (f) DeepSeek-R1-Distill-7B beats o1 on MATH-500 and AIME24, and exceeds DeepSeek-R1 on AIME24.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T1.1.1.1.1"></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Mistral-PRM-Data</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Deepseek-PRM-Data</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.2.1">Average Token per Response</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.2">236.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.3">333.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.3.1">Average Token per Step</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.2">46.6</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.3.3">58.4</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents statistics of the training data used for the RLHFlow family of Process Reward Models (PRMs).  Specifically, it shows the average number of tokens per response and the average number of tokens per step within the training data. This information is crucial in understanding the characteristics of these PRMs and how those characteristics might impact their performance and generalization abilities.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of training data of RLHFlow PRMs.
> </details>





### In-depth insights


#### Compute-Optimal TTS
Compute-optimal test-time scaling (TTS) aims to maximize the performance of large language models (LLMs) by dynamically allocating computation during inference.  **The optimal strategy is highly dependent on the interplay of several factors:** the specific policy model used (the LLM generating solutions), the process reward model (PRM, which evaluates solutions), and the problem's inherent difficulty.  A key insight is that **simply using more compute isn't always better;** an effective strategy must account for these interacting elements.  Furthermore, **the choice of PRM significantly impacts performance**, highlighting the need for reward-aware compute optimization.  The research demonstrates that even smaller LLMs can surprisingly outperform much larger models when a compute-optimal TTS strategy is employed, suggesting that **model size alone doesn't dictate performance**. The effectiveness of the strategy, however, is also influenced by the task's complexity, implying that the optimal scaling strategy might need further refinements for different types of reasoning challenges.

#### Reward-Aware TTS
The concept of "Reward-Aware TTS" builds upon traditional Test-Time Scaling (TTS) by incorporating a reward mechanism to make the process more efficient and effective.  Standard TTS methods often struggle with optimal compute allocation, especially across diverse policy models and problem difficulties.  **Reward-Aware TTS directly addresses this by integrating a reward function into the compute-optimal scaling strategy.** This reward function guides the allocation of computational resources, dynamically adjusting based on the problem's characteristics and the policy model used. This **dynamic adjustment allows for a more optimal strategy, enhancing performance by ensuring that the compute budget is allocated effectively across diverse problem types and model architectures**. The key advantage is its ability to handle out-of-distribution issues more robustly, compared to strategies relying solely on pre-trained process reward models. By accounting for the reward signal, the system makes more informed decisions, leading to improved accuracy and more efficient use of computational resources. **This framework improves upon the limitations of existing methods, highlighting its potential for broader applications in various reasoning tasks.**

#### Problem Difficulty
The concept of 'problem difficulty' in evaluating large language models (LLMs) is multifaceted and crucial for assessing their capabilities.  **Simple quantile-based methods, dividing problems into difficulty levels based on accuracy percentiles, prove inadequate.**  This is because different LLMs possess varying reasoning abilities; a problem deemed 'easy' by one LLM might be challenging for another. Therefore, a more robust approach is needed, such as employing **absolute thresholds based on objective metrics like Pass@1 accuracy**. This allows for a more nuanced evaluation, defining difficulty levels that are independent of the specific LLM being tested.  Furthermore, **problem difficulty interacts intricately with other factors**, including the choice of policy model, process reward model (PRM), and the TTS strategy employed.  Understanding these complex interactions is vital for developing compute-optimal strategies, as the optimal scaling method will likely depend significantly on the inherent difficulty of the problem being tackled.  Finally,  research needs to address how **different PRMs might exhibit biases towards specific problem complexities or response lengths**, which could skew the evaluation and limit the generalizability of the findings.

#### PRM Bias Analysis
A PRM bias analysis in a large language model (LLM) research paper would delve into the systematic biases present in process reward models (PRMs).  **PRMs are crucial for guiding test-time scaling (TTS) strategies**, which aim to improve LLM performance by allocating additional computation during inference.  The analysis would likely focus on how PRMs influence the selection of reasoning steps and the final answer.  A key aspect would be identifying and quantifying the biases introduced by PRMs, such as **biases towards specific response lengths, certain problem types, or particular solution methods**. This might involve analyzing the reward function used in the PRM, examining the training data, and comparing PRM outputs to those of human evaluators. The implications of PRM biases are significant; they could lead to biased, inaccurate, and less reliable LLM outputs, especially when handling complex reasoning tasks. Therefore, a thorough PRM bias analysis is critical for ensuring the fairness, accuracy, and trustworthiness of LLM applications driven by TTS.

#### Future of TTS
The future of Test-Time Scaling (TTS) hinges on addressing its current limitations and exploring new avenues for improvement.  **Reward model development** is crucial; current models suffer from over-criticism, error neglect, and localization bias, hindering optimal performance.  Future work should focus on creating more robust and interpretable reward models, potentially through improved training data and architectures.  **Expanding TTS beyond mathematical tasks** to encompass diverse domains like code and chemistry is vital to demonstrate its broader applicability.  Moreover, **research into more efficient compute-optimal strategies** is needed.  Current methods are computationally expensive, particularly for larger models, limiting practical applicability.  Finally, **combining TTS with other techniques** like chain-of-thought prompting or self-improvement methods could unlock even greater performance gains, particularly for complex reasoning tasks.  The ultimate goal is to seamlessly integrate TTS into LLMs, making it a standard inference procedure rather than a specialized technique.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.06703/x2.png)

> 🔼 This figure compares three external Test-Time Scaling (TTS) methods: Best-of-N, Beam Search, and Diverse Verifier Tree Search. Each method uses a policy model to generate responses and a process reward model (PRM) to score them. Best-of-N generates multiple responses and selects the best one. Beam search explores multiple possible solution paths, keeping the top N most promising ones at each step. Diverse Verifier Tree Search extends beam search by dividing the search process into subtrees, exploring each independently to enhance diversity and potentially handle complex problems more effectively.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different external TTS methods.
> </details>



![](https://arxiv.org/html/2502.06703/x3.png)

> 🔼 This figure shows the distribution of Pass@1 accuracy for the Qwen2.5-72B-Instruct model on the MATH-500 dataset.  The x-axis represents the Pass@1 accuracy, which is divided into five bins or ranges of accuracy. The y-axis represents the percentage of problems in each bin. The figure visually demonstrates the performance of the model across different difficulty levels within the MATH-500 dataset, showing how many problems are solved correctly at different accuracy levels.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of Pass@1 accuracy of Qwen2.5-72B-Instruct on MATH-500, divided into five bins.
> </details>



![](https://arxiv.org/html/2502.06703/x4.png)

> 🔼 This figure showcases the performance comparison of Llama-3.1-8B-Instruct and Qwen2.5-7B-Instruct models on the MATH-500 dataset using various process reward models (PRMs) and test-time scaling (TTS) strategies.  Different TTS methods, namely Majority Voting, Best-of-N, Beam Search, and Diverse Verifier Tree Search (DVTS), are applied to each model with different compute budgets. The x-axis likely represents the compute budget, while the y-axis shows the accuracy (Pass@k), illustrating the effect of PRMs and TTS strategies on the model's performance.  The purpose is to demonstrate how various PRMs and TTS techniques impact the performance of the models on the MATH-500 tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance of Llama-3.1-8B-Instruct and Qwen2.5-7B-Instruct on MATH-500 with different PRMs and TTS strategies.
> </details>



![](https://arxiv.org/html/2502.06703/x5.png)

> 🔼 This figure displays the performance comparison of Llama-3.1-8B-Instruct and Qwen2.5-7B-Instruct language models on the AIME24 dataset, using different process reward models (PRMs) and test-time scaling (TTS) strategies.  It visually represents how various combinations of models, PRMs, and TTS methods affect the accuracy (Pass@k) of the language models.  The graph likely shows the performance across different compute budgets, highlighting the impact of each PRM and TTS strategy on performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of Llama-3.1-8B-Instruct and Qwen2.5-7B-Instruct on AIME24 with different PRMs and TTS strategies.
> </details>



![](https://arxiv.org/html/2502.06703/x6.png)

> 🔼 Figure 6 illustrates the correlation between the performance of Test-Time Scaling (TTS) and the process supervision capabilities of various Process Reward Models (PRMs) on the MATH dataset.  The x-axis represents the process supervision ability score of each PRM, while the y-axis shows the corresponding TTS performance. Each data point is a PRM, with the circle's size proportional to the number of parameters in that PRM. The fitted curve visually represents the trend of this relationship. This demonstrates how better process supervision provided by a PRM generally correlates with better TTS results.
> <details>
> <summary>read the caption</summary>
> Figure 6: The relationship between TTS performance and process supervision abilities of different PRMs on MATH, where the size of each circle represents the number of parameters of the PRM and the curve represents the fitted function.
> </details>



![](https://arxiv.org/html/2502.06703/x7.png)

> 🔼 Figure 7 presents the results of applying Test-Time Scaling (TTS) strategies to various language models (LMs) of different sizes, ranging from 0.5B to 72B parameters, and evaluating their performance on the MATH-500 dataset.  The figure displays how different TTS approaches (Best-of-N, Beam Search, and Diverse Verifier Tree Search) impact the accuracy of these models. The results demonstrate the relationship between model size and the optimal TTS strategy for achieving high performance on mathematical reasoning tasks. It shows that optimal TTS methods change depending on the size of the language model.
> <details>
> <summary>read the caption</summary>
> Figure 7: TTS performance of policy models with parameters from 0.5B to 72B on MATH-500 with different scaling methods.
> </details>



![](https://arxiv.org/html/2502.06703/x8.png)

> 🔼 This figure displays the results of applying Test-Time Scaling (TTS) strategies to three different sized Llama language models (1B, 8B, and 72B parameters) on the MATH-500 dataset.  The performance is evaluated across three difficulty levels (easy, medium, hard), each defined by a range of Pass@1 accuracy scores. For each model and difficulty level, the figure shows the Pass@k accuracy achieved by four different TTS methods (Majority Voting, Best-of-N, Beam Search, Diverse Verifier Tree Search) with varying compute budgets (represented by the x-axis).  The plot visually demonstrates how the effectiveness of different TTS methods varies depending on the model size and problem difficulty. It helps to determine the best strategy based on these parameters.
> <details>
> <summary>read the caption</summary>
> Figure 8: TTS performance of three Llama policy models on MATH-500 with three difficulty levels.
> </details>



![](https://arxiv.org/html/2502.06703/x9.png)

> 🔼 Figure 9 presents the results of Test-Time Scaling (TTS) experiments conducted on the MATH-500 dataset using three different Llama language models.  The models vary in size, and the results are broken down by three difficulty levels of problems (easy, medium, hard).  The plot likely shows the accuracy (Pass@k - probably Pass@1) achieved by each model at different computational budgets using several TTS strategies (Majority voting, Best-of-N, Beam Search, Diverse Verifier Tree Search).  This allows for an analysis of how different TTS approaches perform under various computational costs and across problems of varying complexity, especially for smaller language models.
> <details>
> <summary>read the caption</summary>
> Figure 9: TTS performance of three Llama policy models on MATH-500 with different difficulty levels.
> </details>



![](https://arxiv.org/html/2502.06703/x10.png)

> 🔼 This figure displays the results of Test-Time Scaling (TTS) experiments conducted on the MATH-500 dataset.  It shows how the performance (Pass@k accuracy) of various Large Language Models (LLMs, the 'policy models') changes when using different Process Reward Models (PRMs) and scaling strategies (such as Best-of-N, Beam Search, and Diverse Verifier Tree Search). The x-axis represents the compute budget (number of steps/tokens), while the y-axis shows the accuracy. Different colors represent different policy models, and each group of bars represents a specific PRM. This visualization helps to understand the impact of different TTS hyperparameters on the performance of various LLMs when applied to a mathematical reasoning task.
> <details>
> <summary>read the caption</summary>
> Figure 10: TTS performance of different policy models on MATH-500 with different PRMs and scaling strategies.
> </details>



![](https://arxiv.org/html/2502.06703/x11.png)

> 🔼 Figure 11 presents a comprehensive analysis of Test-Time Scaling (TTS) performance across various Large Language Models (LLMs) on the challenging AIME24 mathematical reasoning dataset. The figure systematically evaluates different policy models (LLMs used for generating solutions), Process Reward Models (PRMs; models used for evaluating solutions), and scaling strategies (methods for allocating compute during inference).  The results reveal the intricate interplay between these components and highlight the dependence of optimal TTS performance on the specific combination of policy model, PRM, and scaling method employed.  This detailed breakdown offers valuable insights into the conditions under which TTS proves most effective for enhancing LLM reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 11: TTS performance of different policy models on AIME24 with different PRMs and scaling strategies.
> </details>



![](https://arxiv.org/html/2502.06703/x12.png)

> 🔼 This figure presents a toy example to illustrate the beam search process using two different process reward models (PRMs): RLHFlow-Mistral-PRM-8B and RLHFlow-Deepseek-PRM-8B.  The example shows how each PRM assigns scores to intermediate steps during the beam search for a mathematical problem, ultimately leading to different final answers.  This highlights the impact of PRM choice on the reasoning process and the resulting solution. The figure demonstrates the differences in the quality of intermediate steps scored by each PRM and how these differences affect the final outcome of the beam search.
> <details>
> <summary>read the caption</summary>
> Figure 12: Toy case of beam search with RLHFlow-Mistral-PRM-8B and RLHFlow-Deepseek-PRM-8B.
> </details>



![](https://arxiv.org/html/2502.06703/x13.png)

> 🔼 This figure showcases an example of 'Over-Criticism' in Test-Time Scaling (TTS).  The model, using the prime factorization method to simplify the square root of 242, produces mathematically correct steps. However, the Process Reward Model (PRM) assigns surprisingly low scores to these correct steps, even though the solution's logic and calculations are sound. This illustrates a scenario where the PRM is overly critical, penalizing correct reasoning, and potentially hindering the overall performance of the TTS strategy. The low scores assigned by the PRM despite the correct steps highlight a potential flaw in the PRM's evaluation criteria, incorrectly discounting accurate work.
> <details>
> <summary>read the caption</summary>
> Figure 13: TTS case of Over-Criticism.
> </details>



![](https://arxiv.org/html/2502.06703/x14.png)

> 🔼 This figure shows a test-time scaling (TTS) example where the model makes a mathematical error but receives a high score from the process reward model (PRM). The problem involves finding the length of a side of a right triangle given the sine of an angle and the length of another side. The model correctly uses the sine formula but makes an error when simplifying the resulting equation, which leads to an incorrect answer, yet the PRM assigns a high score, demonstrating that the PRM has difficulty correctly identifying mathematical errors.
> <details>
> <summary>read the caption</summary>
> Figure 14: TTS case of Error Neglect.
> </details>



![](https://arxiv.org/html/2502.06703/x15.png)

> 🔼 This figure shows a test-time scaling (TTS) example where the model makes a reasoning error but the process reward model (PRM) fails to assign a low score to it, resulting in an incorrect answer. The problem involves trigonometry, and although the model's solution has a mathematical error (incorrect trigonometric relationship), the PRM does not give a low score.  This highlights the issue of the PRM neglecting errors during the reasoning process, and demonstrates the need for more robust methods for evaluating the quality of intermediate steps in TTS.
> <details>
> <summary>read the caption</summary>
> Figure 15: TTS case of Error Neglect.
> </details>



![](https://arxiv.org/html/2502.06703/x16.png)

> 🔼 This figure showcases a case study within the Test-Time Scaling (TTS) method, highlighting an issue called 'Error Localization Bias'.  The example problem involves finding the intersection point of tangents to a circle. The model's reasoning process is visualized step-by-step, revealing that the reward model (PRM) assigns lower scores to intermediate steps that aren't where the actual mathematical errors occur.  This bias affects the overall accuracy of the TTS method, indicating a misalignment between where the PRM assigns low scores and the location of genuine mistakes in the reasoning. The figure demonstrates how these scoring discrepancies can lead to incorrect solutions even if other parts of the solution are mathematically sound.
> <details>
> <summary>read the caption</summary>
> Figure 16: TTS case of Error Localization Bias.
> </details>



![](https://arxiv.org/html/2502.06703/x17.png)

> 🔼 This figure shows a specific example where the scoring system used in Test-Time Scaling (TTS) exhibits bias, unfairly penalizing correct reasoning steps.  The example involves a word problem about redistributing coins across bags. The model correctly determines the solution and the steps to achieve it.  However, the scoring mechanism gives low scores to several intermediate steps even though those steps are mathematically sound and contribute to the correct final answer. This bias toward certain step lengths or solution formats leads to inaccurate scoring, making the TTS process less reliable and potentially affecting the overall outcome.
> <details>
> <summary>read the caption</summary>
> Figure 17: TTS case of Scoring Bias.
> </details>



![](https://arxiv.org/html/2502.06703/x18.png)

> 🔼 This figure shows a case where the scoring mechanism of the Test-Time Scaling (TTS) method exhibits bias.  The problem involves redistributing coins among bags, and the model's scoring reflects this bias. The model generates several steps with a higher score despite mathematical errors.   The final answer is correct but the scoring does not accurately reflect the correctness of intermediate reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 18: TTS case of Scoring Bias.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.1.1.1.1"></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Skywork-PRM-7B</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Qwen2.5-Math-PRM-7B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.2.1.1">Majority Vote</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.1.2.2">86.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.1.2.3">87.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.1.1">PRM-Min-Max</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.3.2">83.0</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.3.3">87.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.4.1.1">PRM-Min-Vote</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.4.2">86.6</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.4.3">87.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.5.1.1">PRM-Last-Max</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.5.2">84.4</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.5.3">87.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.6.1.1">PRM-Last-Vote</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.6.2">87.0</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.6.3">87.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.7.1.1">PRM-Avg-Max</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.7.2">85.8</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.7.3">87.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.8.1.1">PRM-Avg-Vote</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.8.2">86.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.1.1.8.3">87.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different voting methods used in Test-Time Scaling (TTS) on the MATH-500 dataset.  It shows the accuracy (Pass@k) achieved by different voting methods (Majority Vote, PRM-Min-Max, PRM-Min-Vote, PRM-Last-Max, PRM-Last-Vote, PRM-Avg-Max, PRM-Avg-Vote) when combined with two specific process reward models (PRMs): Skywork-PRM-7B and Qwen2.5-Math-PRM-7B.  The results highlight the influence of the chosen voting method on the overall performance of the TTS strategy. 
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of TTS with different voting methods on MATH-500.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tr class="ltx_tr" id="S5.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.1">Policy Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.2.1">MATH-500</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.3.1">AIME24</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T3.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T3.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.3.1.1">Proprietary LLMs (CoT)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.4.1">GPT-4o</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.4.2">74.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.4.3">9.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.4.4">42.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.5.1">o1-preview</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.5.2">85.5</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.5.3">44.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.5.4">65.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.6.1">o1-mini</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.6.2">90.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.6.3">63.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.6.4">76.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.7.1">o1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.2">94.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.3">79.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.4">87.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T3.1.1.8.1"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.8.1.1">Open-Source LLMs (CoT)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.9.1">Llama-3.1-70B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.2">65.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.3">16.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.4">41.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.10">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.10.1">Llama-3.1-405B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.2">71.4</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.3">23.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.4">47.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.11">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.11.1">QwQ-32B-Preview</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.11.2">90.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.11.3">50.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.11.4">70.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.12">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.12.1">DeepSeek-R1</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.12.2">97.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.12.3">79.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.12.4">88.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T3.1.1.13.1"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.13.1.1">Open-Source LLMs (TTS)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.14.1">Llama-3.2-1B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.14.2">66.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.14.3">16.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.14.4">41.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.1.1">Llama-3.2-1B-Inst. (<math alttext="N=512" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.m1.1.1.2" xref="S5.T3.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S5.T3.1.1.1.1.m1.1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.1.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.1.m1.1.1.3.cmml">512</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1"><eq id="S5.T3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1.1"></eq><ci id="S5.T3.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S5.T3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.1.1.1.1.m1.1.1.3">512</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">N=512</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">italic_N = 512</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.1.2">72.2</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.1.3">10.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.1.4">41.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.15">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.15.1">Llama-3.2-3B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.15.2">75.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.15.3">30.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.15.4">52.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.16">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.16.1">Qwen2.5-0.5B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.2">76.4</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.3">10.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.4">43.2</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.17">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.17.1">Qwen2.5-1.5B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.17.2">81.8</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.17.3">20.0</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.17.4">50.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.18">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.18.1">DeepSeek-R1-Distill-Qwen-1.5B</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.18.2">91.6</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.18.3">63.3</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.18.4">77.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.1.1.19.1">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.2">95.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.3">83.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.4">89.3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of smaller language models using a compute-optimal test-time scaling (TTS) strategy against larger, state-of-the-art language models that use chain-of-thought (CoT) reasoning.  The comparison is made on two challenging mathematical reasoning datasets: MATH-500 and AIME24.  The results demonstrate whether smaller models, enhanced by the TTS strategy, can achieve competitive or even superior performance compared to significantly larger models relying on CoT.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of small policy models (compute-optimal TTS) with frontier reasoning LLMs (CoT) on MATH-500 and AIME24.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.12.12">
<tr class="ltx_tr" id="S5.T4.12.12.13">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.12.12.13.1"><span class="ltx_text ltx_font_bold" id="S5.T4.12.12.13.1.1">Policy Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T4.12.12.13.2"><span class="ltx_text ltx_font_bold" id="S5.T4.12.12.13.2.1">Pre-training FLOPS</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T4.12.12.13.3"><span class="ltx_text ltx_font_bold" id="S5.T4.12.12.13.3.1">Inference FLOPS</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T4.12.12.13.4"><span class="ltx_text ltx_font_bold" id="S5.T4.12.12.13.4.1">Total FLOPS.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.3.3.3.4">Llama-3.2-3B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.1.1.1.1"><math alttext="1.62\times 10^{23}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml"><mn id="S5.T4.1.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.1.m1.1.1.2.cmml">1.62</mn><mo id="S5.T4.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S5.T4.1.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.1.m1.1.1.3.cmml"><mn id="S5.T4.1.1.1.1.m1.1.1.3.2" xref="S5.T4.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.1.1.1.1.m1.1.1.3.3" xref="S5.T4.1.1.1.1.m1.1.1.3.3.cmml">23</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"><times id="S5.T4.1.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1.1"></times><cn id="S5.T4.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S5.T4.1.1.1.1.m1.1.1.2">1.62</cn><apply id="S5.T4.1.1.1.1.m1.1.1.3.cmml" xref="S5.T4.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.1.1.1.1.m1.1.1.3.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S5.T4.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.1.1.1.1.m1.1.1.3.2">10</cn><cn id="S5.T4.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.1.1.1.1.m1.1.1.3.3">23</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">1.62\times 10^{23}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">1.62 × 10 start_POSTSUPERSCRIPT 23 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.2.2.2.2"><math alttext="3.07\times 10^{17}" class="ltx_Math" display="inline" id="S5.T4.2.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.2.m1.1a"><mrow id="S5.T4.2.2.2.2.m1.1.1" xref="S5.T4.2.2.2.2.m1.1.1.cmml"><mn id="S5.T4.2.2.2.2.m1.1.1.2" xref="S5.T4.2.2.2.2.m1.1.1.2.cmml">3.07</mn><mo id="S5.T4.2.2.2.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.2.2.2.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.2.2.2.2.m1.1.1.3" xref="S5.T4.2.2.2.2.m1.1.1.3.cmml"><mn id="S5.T4.2.2.2.2.m1.1.1.3.2" xref="S5.T4.2.2.2.2.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.2.2.2.2.m1.1.1.3.3" xref="S5.T4.2.2.2.2.m1.1.1.3.3.cmml">17</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.2.m1.1b"><apply id="S5.T4.2.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1"><times id="S5.T4.2.2.2.2.m1.1.1.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1.1"></times><cn id="S5.T4.2.2.2.2.m1.1.1.2.cmml" type="float" xref="S5.T4.2.2.2.2.m1.1.1.2">3.07</cn><apply id="S5.T4.2.2.2.2.m1.1.1.3.cmml" xref="S5.T4.2.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.2.2.2.2.m1.1.1.3.1.cmml" xref="S5.T4.2.2.2.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.2.2.2.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.2.2.2.2.m1.1.1.3.2">10</cn><cn id="S5.T4.2.2.2.2.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.2.2.2.2.m1.1.1.3.3">17</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.2.m1.1c">3.07\times 10^{17}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.2.m1.1d">3.07 × 10 start_POSTSUPERSCRIPT 17 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.3.3.3.3"><math alttext="1.62\times 10^{23}" class="ltx_Math" display="inline" id="S5.T4.3.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.3.m1.1a"><mrow id="S5.T4.3.3.3.3.m1.1.1" xref="S5.T4.3.3.3.3.m1.1.1.cmml"><mn id="S5.T4.3.3.3.3.m1.1.1.2" xref="S5.T4.3.3.3.3.m1.1.1.2.cmml">1.62</mn><mo id="S5.T4.3.3.3.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.3.3.3.3.m1.1.1.1.cmml">×</mo><msup id="S5.T4.3.3.3.3.m1.1.1.3" xref="S5.T4.3.3.3.3.m1.1.1.3.cmml"><mn id="S5.T4.3.3.3.3.m1.1.1.3.2" xref="S5.T4.3.3.3.3.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.3.3.3.3.m1.1.1.3.3" xref="S5.T4.3.3.3.3.m1.1.1.3.3.cmml">23</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.3.m1.1b"><apply id="S5.T4.3.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1"><times id="S5.T4.3.3.3.3.m1.1.1.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1.1"></times><cn id="S5.T4.3.3.3.3.m1.1.1.2.cmml" type="float" xref="S5.T4.3.3.3.3.m1.1.1.2">1.62</cn><apply id="S5.T4.3.3.3.3.m1.1.1.3.cmml" xref="S5.T4.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.3.3.3.3.m1.1.1.3.1.cmml" xref="S5.T4.3.3.3.3.m1.1.1.3">superscript</csymbol><cn id="S5.T4.3.3.3.3.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.3.3.3.3.m1.1.1.3.2">10</cn><cn id="S5.T4.3.3.3.3.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.3.3.3.3.m1.1.1.3.3">23</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.3.m1.1c">1.62\times 10^{23}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.3.m1.1d">1.62 × 10 start_POSTSUPERSCRIPT 23 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.T4.6.6.6.4">Llama-3.1-405B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T4.4.4.4.1"><math alttext="3.65\times 10^{25}" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mrow id="S5.T4.4.4.4.1.m1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.cmml"><mn id="S5.T4.4.4.4.1.m1.1.1.2" xref="S5.T4.4.4.4.1.m1.1.1.2.cmml">3.65</mn><mo id="S5.T4.4.4.4.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.4.4.4.1.m1.1.1.1.cmml">×</mo><msup id="S5.T4.4.4.4.1.m1.1.1.3" xref="S5.T4.4.4.4.1.m1.1.1.3.cmml"><mn id="S5.T4.4.4.4.1.m1.1.1.3.2" xref="S5.T4.4.4.4.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.4.4.4.1.m1.1.1.3.3" xref="S5.T4.4.4.4.1.m1.1.1.3.3.cmml">25</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><apply id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1"><times id="S5.T4.4.4.4.1.m1.1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1.1"></times><cn id="S5.T4.4.4.4.1.m1.1.1.2.cmml" type="float" xref="S5.T4.4.4.4.1.m1.1.1.2">3.65</cn><apply id="S5.T4.4.4.4.1.m1.1.1.3.cmml" xref="S5.T4.4.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.4.4.4.1.m1.1.1.3.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1.3">superscript</csymbol><cn id="S5.T4.4.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.4.4.4.1.m1.1.1.3.2">10</cn><cn id="S5.T4.4.4.4.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.4.4.4.1.m1.1.1.3.3">25</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">3.65\times 10^{25}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">3.65 × 10 start_POSTSUPERSCRIPT 25 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S5.T4.5.5.5.2"><math alttext="4.25\times 10^{17}" class="ltx_Math" display="inline" id="S5.T4.5.5.5.2.m1.1"><semantics id="S5.T4.5.5.5.2.m1.1a"><mrow id="S5.T4.5.5.5.2.m1.1.1" xref="S5.T4.5.5.5.2.m1.1.1.cmml"><mn id="S5.T4.5.5.5.2.m1.1.1.2" xref="S5.T4.5.5.5.2.m1.1.1.2.cmml">4.25</mn><mo id="S5.T4.5.5.5.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.5.5.5.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.5.5.5.2.m1.1.1.3" xref="S5.T4.5.5.5.2.m1.1.1.3.cmml"><mn id="S5.T4.5.5.5.2.m1.1.1.3.2" xref="S5.T4.5.5.5.2.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.5.5.5.2.m1.1.1.3.3" xref="S5.T4.5.5.5.2.m1.1.1.3.3.cmml">17</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.2.m1.1b"><apply id="S5.T4.5.5.5.2.m1.1.1.cmml" xref="S5.T4.5.5.5.2.m1.1.1"><times id="S5.T4.5.5.5.2.m1.1.1.1.cmml" xref="S5.T4.5.5.5.2.m1.1.1.1"></times><cn id="S5.T4.5.5.5.2.m1.1.1.2.cmml" type="float" xref="S5.T4.5.5.5.2.m1.1.1.2">4.25</cn><apply id="S5.T4.5.5.5.2.m1.1.1.3.cmml" xref="S5.T4.5.5.5.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.5.5.5.2.m1.1.1.3.1.cmml" xref="S5.T4.5.5.5.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.5.5.5.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.5.5.5.2.m1.1.1.3.2">10</cn><cn id="S5.T4.5.5.5.2.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.5.5.5.2.m1.1.1.3.3">17</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.2.m1.1c">4.25\times 10^{17}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.2.m1.1d">4.25 × 10 start_POSTSUPERSCRIPT 17 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S5.T4.6.6.6.3"><math alttext="3.65\times 10^{25}" class="ltx_Math" display="inline" id="S5.T4.6.6.6.3.m1.1"><semantics id="S5.T4.6.6.6.3.m1.1a"><mrow id="S5.T4.6.6.6.3.m1.1.1" xref="S5.T4.6.6.6.3.m1.1.1.cmml"><mn id="S5.T4.6.6.6.3.m1.1.1.2" xref="S5.T4.6.6.6.3.m1.1.1.2.cmml">3.65</mn><mo id="S5.T4.6.6.6.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.6.6.6.3.m1.1.1.1.cmml">×</mo><msup id="S5.T4.6.6.6.3.m1.1.1.3" xref="S5.T4.6.6.6.3.m1.1.1.3.cmml"><mn id="S5.T4.6.6.6.3.m1.1.1.3.2" xref="S5.T4.6.6.6.3.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.6.6.6.3.m1.1.1.3.3" xref="S5.T4.6.6.6.3.m1.1.1.3.3.cmml">25</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.3.m1.1b"><apply id="S5.T4.6.6.6.3.m1.1.1.cmml" xref="S5.T4.6.6.6.3.m1.1.1"><times id="S5.T4.6.6.6.3.m1.1.1.1.cmml" xref="S5.T4.6.6.6.3.m1.1.1.1"></times><cn id="S5.T4.6.6.6.3.m1.1.1.2.cmml" type="float" xref="S5.T4.6.6.6.3.m1.1.1.2">3.65</cn><apply id="S5.T4.6.6.6.3.m1.1.1.3.cmml" xref="S5.T4.6.6.6.3.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.6.6.6.3.m1.1.1.3.1.cmml" xref="S5.T4.6.6.6.3.m1.1.1.3">superscript</csymbol><cn id="S5.T4.6.6.6.3.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.6.6.6.3.m1.1.1.3.2">10</cn><cn id="S5.T4.6.6.6.3.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.6.6.6.3.m1.1.1.3.3">25</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.3.m1.1c">3.65\times 10^{25}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.3.m1.1d">3.65 × 10 start_POSTSUPERSCRIPT 25 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.9.9.9.4">DeepSeek-R1-Distill-7B</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.7.7.7.1"><math alttext="7.56\times 10^{23}" class="ltx_Math" display="inline" id="S5.T4.7.7.7.1.m1.1"><semantics id="S5.T4.7.7.7.1.m1.1a"><mrow id="S5.T4.7.7.7.1.m1.1.1" xref="S5.T4.7.7.7.1.m1.1.1.cmml"><mn id="S5.T4.7.7.7.1.m1.1.1.2" xref="S5.T4.7.7.7.1.m1.1.1.2.cmml">7.56</mn><mo id="S5.T4.7.7.7.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.7.7.7.1.m1.1.1.1.cmml">×</mo><msup id="S5.T4.7.7.7.1.m1.1.1.3" xref="S5.T4.7.7.7.1.m1.1.1.3.cmml"><mn id="S5.T4.7.7.7.1.m1.1.1.3.2" xref="S5.T4.7.7.7.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.7.7.7.1.m1.1.1.3.3" xref="S5.T4.7.7.7.1.m1.1.1.3.3.cmml">23</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.1.m1.1b"><apply id="S5.T4.7.7.7.1.m1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1"><times id="S5.T4.7.7.7.1.m1.1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1.1"></times><cn id="S5.T4.7.7.7.1.m1.1.1.2.cmml" type="float" xref="S5.T4.7.7.7.1.m1.1.1.2">7.56</cn><apply id="S5.T4.7.7.7.1.m1.1.1.3.cmml" xref="S5.T4.7.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.7.7.7.1.m1.1.1.3.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1.3">superscript</csymbol><cn id="S5.T4.7.7.7.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.7.7.7.1.m1.1.1.3.2">10</cn><cn id="S5.T4.7.7.7.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.7.7.7.1.m1.1.1.3.3">23</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.1.m1.1c">7.56\times 10^{23}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.1.m1.1d">7.56 × 10 start_POSTSUPERSCRIPT 23 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.8.8.8.2"><math alttext="8.15\times 10^{17}" class="ltx_Math" display="inline" id="S5.T4.8.8.8.2.m1.1"><semantics id="S5.T4.8.8.8.2.m1.1a"><mrow id="S5.T4.8.8.8.2.m1.1.1" xref="S5.T4.8.8.8.2.m1.1.1.cmml"><mn id="S5.T4.8.8.8.2.m1.1.1.2" xref="S5.T4.8.8.8.2.m1.1.1.2.cmml">8.15</mn><mo id="S5.T4.8.8.8.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.8.8.8.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.8.8.8.2.m1.1.1.3" xref="S5.T4.8.8.8.2.m1.1.1.3.cmml"><mn id="S5.T4.8.8.8.2.m1.1.1.3.2" xref="S5.T4.8.8.8.2.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.8.8.8.2.m1.1.1.3.3" xref="S5.T4.8.8.8.2.m1.1.1.3.3.cmml">17</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.8.2.m1.1b"><apply id="S5.T4.8.8.8.2.m1.1.1.cmml" xref="S5.T4.8.8.8.2.m1.1.1"><times id="S5.T4.8.8.8.2.m1.1.1.1.cmml" xref="S5.T4.8.8.8.2.m1.1.1.1"></times><cn id="S5.T4.8.8.8.2.m1.1.1.2.cmml" type="float" xref="S5.T4.8.8.8.2.m1.1.1.2">8.15</cn><apply id="S5.T4.8.8.8.2.m1.1.1.3.cmml" xref="S5.T4.8.8.8.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.8.8.8.2.m1.1.1.3.1.cmml" xref="S5.T4.8.8.8.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.8.8.8.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.8.8.8.2.m1.1.1.3.2">10</cn><cn id="S5.T4.8.8.8.2.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.8.8.8.2.m1.1.1.3.3">17</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.8.2.m1.1c">8.15\times 10^{17}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.8.2.m1.1d">8.15 × 10 start_POSTSUPERSCRIPT 17 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T4.9.9.9.3"><math alttext="7.56\times 10^{23}" class="ltx_Math" display="inline" id="S5.T4.9.9.9.3.m1.1"><semantics id="S5.T4.9.9.9.3.m1.1a"><mrow id="S5.T4.9.9.9.3.m1.1.1" xref="S5.T4.9.9.9.3.m1.1.1.cmml"><mn id="S5.T4.9.9.9.3.m1.1.1.2" xref="S5.T4.9.9.9.3.m1.1.1.2.cmml">7.56</mn><mo id="S5.T4.9.9.9.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.9.9.9.3.m1.1.1.1.cmml">×</mo><msup id="S5.T4.9.9.9.3.m1.1.1.3" xref="S5.T4.9.9.9.3.m1.1.1.3.cmml"><mn id="S5.T4.9.9.9.3.m1.1.1.3.2" xref="S5.T4.9.9.9.3.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.9.9.9.3.m1.1.1.3.3" xref="S5.T4.9.9.9.3.m1.1.1.3.3.cmml">23</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.9.3.m1.1b"><apply id="S5.T4.9.9.9.3.m1.1.1.cmml" xref="S5.T4.9.9.9.3.m1.1.1"><times id="S5.T4.9.9.9.3.m1.1.1.1.cmml" xref="S5.T4.9.9.9.3.m1.1.1.1"></times><cn id="S5.T4.9.9.9.3.m1.1.1.2.cmml" type="float" xref="S5.T4.9.9.9.3.m1.1.1.2">7.56</cn><apply id="S5.T4.9.9.9.3.m1.1.1.3.cmml" xref="S5.T4.9.9.9.3.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.9.9.9.3.m1.1.1.3.1.cmml" xref="S5.T4.9.9.9.3.m1.1.1.3">superscript</csymbol><cn id="S5.T4.9.9.9.3.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.9.9.9.3.m1.1.1.3.2">10</cn><cn id="S5.T4.9.9.9.3.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.9.9.9.3.m1.1.1.3.3">23</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.9.3.m1.1c">7.56\times 10^{23}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.9.3.m1.1d">7.56 × 10 start_POSTSUPERSCRIPT 23 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.12.12.12.4">DeepSeek-R1</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.10.10.10.1"><math alttext="5.96\times 10^{25}" class="ltx_Math" display="inline" id="S5.T4.10.10.10.1.m1.1"><semantics id="S5.T4.10.10.10.1.m1.1a"><mrow id="S5.T4.10.10.10.1.m1.1.1" xref="S5.T4.10.10.10.1.m1.1.1.cmml"><mn id="S5.T4.10.10.10.1.m1.1.1.2" xref="S5.T4.10.10.10.1.m1.1.1.2.cmml">5.96</mn><mo id="S5.T4.10.10.10.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.10.10.10.1.m1.1.1.1.cmml">×</mo><msup id="S5.T4.10.10.10.1.m1.1.1.3" xref="S5.T4.10.10.10.1.m1.1.1.3.cmml"><mn id="S5.T4.10.10.10.1.m1.1.1.3.2" xref="S5.T4.10.10.10.1.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.10.10.10.1.m1.1.1.3.3" xref="S5.T4.10.10.10.1.m1.1.1.3.3.cmml">25</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.10.10.10.1.m1.1b"><apply id="S5.T4.10.10.10.1.m1.1.1.cmml" xref="S5.T4.10.10.10.1.m1.1.1"><times id="S5.T4.10.10.10.1.m1.1.1.1.cmml" xref="S5.T4.10.10.10.1.m1.1.1.1"></times><cn id="S5.T4.10.10.10.1.m1.1.1.2.cmml" type="float" xref="S5.T4.10.10.10.1.m1.1.1.2">5.96</cn><apply id="S5.T4.10.10.10.1.m1.1.1.3.cmml" xref="S5.T4.10.10.10.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.10.10.10.1.m1.1.1.3.1.cmml" xref="S5.T4.10.10.10.1.m1.1.1.3">superscript</csymbol><cn id="S5.T4.10.10.10.1.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.10.10.10.1.m1.1.1.3.2">10</cn><cn id="S5.T4.10.10.10.1.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.10.10.10.1.m1.1.1.3.3">25</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.10.10.10.1.m1.1c">5.96\times 10^{25}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.10.10.10.1.m1.1d">5.96 × 10 start_POSTSUPERSCRIPT 25 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.11.11.11.2"><math alttext="4.03\times 10^{18}" class="ltx_Math" display="inline" id="S5.T4.11.11.11.2.m1.1"><semantics id="S5.T4.11.11.11.2.m1.1a"><mrow id="S5.T4.11.11.11.2.m1.1.1" xref="S5.T4.11.11.11.2.m1.1.1.cmml"><mn id="S5.T4.11.11.11.2.m1.1.1.2" xref="S5.T4.11.11.11.2.m1.1.1.2.cmml">4.03</mn><mo id="S5.T4.11.11.11.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.11.11.11.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.11.11.11.2.m1.1.1.3" xref="S5.T4.11.11.11.2.m1.1.1.3.cmml"><mn id="S5.T4.11.11.11.2.m1.1.1.3.2" xref="S5.T4.11.11.11.2.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.11.11.11.2.m1.1.1.3.3" xref="S5.T4.11.11.11.2.m1.1.1.3.3.cmml">18</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.11.11.11.2.m1.1b"><apply id="S5.T4.11.11.11.2.m1.1.1.cmml" xref="S5.T4.11.11.11.2.m1.1.1"><times id="S5.T4.11.11.11.2.m1.1.1.1.cmml" xref="S5.T4.11.11.11.2.m1.1.1.1"></times><cn id="S5.T4.11.11.11.2.m1.1.1.2.cmml" type="float" xref="S5.T4.11.11.11.2.m1.1.1.2">4.03</cn><apply id="S5.T4.11.11.11.2.m1.1.1.3.cmml" xref="S5.T4.11.11.11.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.11.11.11.2.m1.1.1.3.1.cmml" xref="S5.T4.11.11.11.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.11.11.11.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.11.11.11.2.m1.1.1.3.2">10</cn><cn id="S5.T4.11.11.11.2.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.11.11.11.2.m1.1.1.3.3">18</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.11.11.11.2.m1.1c">4.03\times 10^{18}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.11.11.11.2.m1.1d">4.03 × 10 start_POSTSUPERSCRIPT 18 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T4.12.12.12.3"><math alttext="5.96\times 10^{25}" class="ltx_Math" display="inline" id="S5.T4.12.12.12.3.m1.1"><semantics id="S5.T4.12.12.12.3.m1.1a"><mrow id="S5.T4.12.12.12.3.m1.1.1" xref="S5.T4.12.12.12.3.m1.1.1.cmml"><mn id="S5.T4.12.12.12.3.m1.1.1.2" xref="S5.T4.12.12.12.3.m1.1.1.2.cmml">5.96</mn><mo id="S5.T4.12.12.12.3.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.12.12.12.3.m1.1.1.1.cmml">×</mo><msup id="S5.T4.12.12.12.3.m1.1.1.3" xref="S5.T4.12.12.12.3.m1.1.1.3.cmml"><mn id="S5.T4.12.12.12.3.m1.1.1.3.2" xref="S5.T4.12.12.12.3.m1.1.1.3.2.cmml">10</mn><mn id="S5.T4.12.12.12.3.m1.1.1.3.3" xref="S5.T4.12.12.12.3.m1.1.1.3.3.cmml">25</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.12.12.12.3.m1.1b"><apply id="S5.T4.12.12.12.3.m1.1.1.cmml" xref="S5.T4.12.12.12.3.m1.1.1"><times id="S5.T4.12.12.12.3.m1.1.1.1.cmml" xref="S5.T4.12.12.12.3.m1.1.1.1"></times><cn id="S5.T4.12.12.12.3.m1.1.1.2.cmml" type="float" xref="S5.T4.12.12.12.3.m1.1.1.2">5.96</cn><apply id="S5.T4.12.12.12.3.m1.1.1.3.cmml" xref="S5.T4.12.12.12.3.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.12.12.12.3.m1.1.1.3.1.cmml" xref="S5.T4.12.12.12.3.m1.1.1.3">superscript</csymbol><cn id="S5.T4.12.12.12.3.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.12.12.12.3.m1.1.1.3.2">10</cn><cn id="S5.T4.12.12.12.3.m1.1.1.3.3.cmml" type="integer" xref="S5.T4.12.12.12.3.m1.1.1.3.3">25</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.12.12.12.3.m1.1c">5.96\times 10^{25}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.12.12.12.3.m1.1d">5.96 × 10 start_POSTSUPERSCRIPT 25 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the computational cost (FLOPS) of using compute-optimal Test-Time Scaling (TTS) with smaller language models versus the traditional Chain-of-Thought (CoT) method with larger language models.  It breaks down the FLOPS into pre-training and inference phases to show the overall computational efficiency gains of using compute-optimal TTS with smaller models. 
> <details>
> <summary>read the caption</summary>
> Table 4: FLOPS comparison between smaller policy models (compute-optimal TTS) and larger ones (CoT).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.10.10">
<tr class="ltx_tr" id="S5.T5.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T5.10.10.11.1"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.1.1">Policy Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T5.10.10.11.2"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.2.1">CoT</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T5.10.10.11.3"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.3.1">Major.</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T5.10.10.11.4"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.4.1">Compute-Optimal TTS</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T5.10.10.11.5"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.5.1">Performance Gain</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T5.10.10.11.6"><span class="ltx_text ltx_font_bold" id="S5.T5.10.10.11.6.1">Efficiency Gain</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.1.2">Llama-3.2-1B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.1.1.1.3">26.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.1.1.1.4">39.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.1.1.1.5">66.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.1.1.1.6">154.6%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.1.1.1.1">&gt;256.0<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><times id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="S5.T5.2.2.2.2">Llama-3.2-3B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.2.2.2.3">41.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.2.2.2.4">58.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.2.2.2.5">78.2</td>
<td class="ltx_td ltx_align_right" id="S5.T5.2.2.2.6">88.9%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.2.2.2.1">14.1<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.2.2.2.1.m1.1"><semantics id="S5.T5.2.2.2.1.m1.1a"><mo id="S5.T5.2.2.2.1.m1.1.1" xref="S5.T5.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.1.m1.1b"><times id="S5.T5.2.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.3">
<td class="ltx_td ltx_align_left" id="S5.T5.3.3.3.2">Llama-3.1-8B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.3.3.3.3">49.8</td>
<td class="ltx_td ltx_align_right" id="S5.T5.3.3.3.4">66.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.3.3.3.5">80.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.3.3.3.6">61.8%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.3.3.3.1">43.9<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mo id="S5.T5.3.3.3.1.m1.1.1" xref="S5.T5.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><times id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.4.4.4.2">Qwen2.5-0.5B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.4.4.4.3">31.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.4.4.4.4">47.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.4.4.4.5">76.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.4.4.4.6">141.8%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T5.4.4.4.1">&gt;64.0<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.4.4.4.1.m1.1"><semantics id="S5.T5.4.4.4.1.m1.1a"><mo id="S5.T5.4.4.4.1.m1.1.1" xref="S5.T5.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.1.m1.1b"><times id="S5.T5.4.4.4.1.m1.1.1.cmml" xref="S5.T5.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5">
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.5.2">Qwen2.5-1.5B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.5.5.5.3">54.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.5.5.5.4">68.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.5.5.5.5">85.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.5.5.5.6">57.4%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.5.5.5.1">&gt;256.0<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.5.5.5.1.m1.1"><semantics id="S5.T5.5.5.5.1.m1.1a"><mo id="S5.T5.5.5.5.1.m1.1.1" xref="S5.T5.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.1.m1.1b"><times id="S5.T5.5.5.5.1.m1.1.1.cmml" xref="S5.T5.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.T5.6.6.6.2">Qwen2.5-3B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.6.6.6.3">64.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.6.6.6.4">77.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.6.6.6.5">87.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.6.6.6.6">36.9%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.6.6.6.1">58.4<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.6.6.6.1.m1.1"><semantics id="S5.T5.6.6.6.1.m1.1a"><mo id="S5.T5.6.6.6.1.m1.1.1" xref="S5.T5.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.1.m1.1b"><times id="S5.T5.6.6.6.1.m1.1.1.cmml" xref="S5.T5.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.7.7.7">
<td class="ltx_td ltx_align_left" id="S5.T5.7.7.7.2">Qwen2.5-7B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.7.7.7.3">76.8</td>
<td class="ltx_td ltx_align_right" id="S5.T5.7.7.7.4">83.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.7.7.7.5">91.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.7.7.7.6">18.5%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.7.7.7.1">35.9<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.7.7.7.1.m1.1"><semantics id="S5.T5.7.7.7.1.m1.1a"><mo id="S5.T5.7.7.7.1.m1.1.1" xref="S5.T5.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.1.m1.1b"><times id="S5.T5.7.7.7.1.m1.1.1.cmml" xref="S5.T5.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.8">
<td class="ltx_td ltx_align_left" id="S5.T5.8.8.8.2">Qwen2.5-14B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.8.8.3">80.2</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.8.8.4">85.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.8.8.5">91.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.8.8.6">13.5%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.8.8.8.1">51.4<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.8.8.8.1.m1.1"><semantics id="S5.T5.8.8.8.1.m1.1a"><mo id="S5.T5.8.8.8.1.m1.1.1" xref="S5.T5.8.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.1.m1.1b"><times id="S5.T5.8.8.8.1.m1.1.1.cmml" xref="S5.T5.8.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.9.9.9">
<td class="ltx_td ltx_align_left" id="S5.T5.9.9.9.2">Qwen2.5-32B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.9.9.3">82.4</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.9.9.4">87.0</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.9.9.5">90.6</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.9.9.6">10.0%</td>
<td class="ltx_td ltx_align_right" id="S5.T5.9.9.9.1">0.8<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.9.9.9.1.m1.1"><semantics id="S5.T5.9.9.9.1.m1.1a"><mo id="S5.T5.9.9.9.1.m1.1.1" xref="S5.T5.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.9.9.9.1.m1.1b"><times id="S5.T5.9.9.9.1.m1.1.1.cmml" xref="S5.T5.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.10.10.10.2">Qwen2.5-72B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.10.10.3">83.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.10.10.4">87.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.10.10.5">91.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.10.10.6">9.5%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T5.10.10.10.1">12.9<math alttext="\times" class="ltx_Math" display="inline" id="S5.T5.10.10.10.1.m1.1"><semantics id="S5.T5.10.10.10.1.m1.1a"><mo id="S5.T5.10.10.10.1.m1.1.1" xref="S5.T5.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T5.10.10.10.1.m1.1b"><times id="S5.T5.10.10.10.1.m1.1.1.cmml" xref="S5.T5.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T5.10.10.10.1.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of three different reasoning strategies: compute-optimal Test-Time Scaling (TTS), Chain-of-Thought (CoT), and majority voting.  The comparison is performed across various language models (LLMs) of different sizes, all evaluated on the MATH-500 dataset.  The results show the accuracy of each method for each LLM, highlighting the performance gains achieved by compute-optimal TTS relative to the other two approaches.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of compute-optimal TTS, CoT, and majority voting with different policy models on MATH-500.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.1.1">
<tr class="ltx_tr" id="S5.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1">Policy Model</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.2.1">MATH-500</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.3.1">AIME24</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S5.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T6.1.1.2.1"><span class="ltx_text ltx_font_italic" id="S5.T6.1.1.2.1.1">Open-Source LLMs (CoT)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.3.1">Qwen2.5-7B-Inst.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.3.2">76.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.3.3">13.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.3.4">45.1</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.4.1">Qwen2.5-Math-7B-Inst.</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.4.2">79.8</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.4.3">13.3</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.4.4">46.6</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T6.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S5.T6.1.1.5.1.1">Long-CoT Methods (CoT)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.6.1">rStar-Math-7B</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.6.2">78.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.6.3">26.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.6.4">52.6</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.7.1">Eurus-2-7B-PRIME</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.7.2">79.2</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.7.3">26.7</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.7.4">53.0</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.8.1">Qwen2.5-7B-SimpleRL-Zero</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.8.2">77.2</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.8.3">33.3</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.8.4">55.3</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.9.1">Qwen2.5-7B-SimpleRL</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.9.2">82.4</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.9.3">26.7</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.9.4">54.6</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.10">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.10.1">Satori-Qwen-7B</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.10.2">83.6</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.10.3">23.3</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.10.4">53.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.11">
<td class="ltx_td ltx_align_left" id="S5.T6.1.1.11.1">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.11.2">92.4</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.11.3">63.3</td>
<td class="ltx_td ltx_align_right" id="S5.T6.1.1.11.4">77.9</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S5.T6.1.1.12.1"><span class="ltx_text ltx_font_italic" id="S5.T6.1.1.12.1.1">Open-Source LLMs (TTS)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.1.1.13.1">Qwen2.5-7B-Inst. w/ 7B PRM (Ours)</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.13.2">88.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.13.3">33.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T6.1.1.13.4">60.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.1.1.14.1">Qwen2.5-7B-Inst. w/ 72B PRM (Ours)</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.1.1.14.2">91.0</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.1.1.14.3">36.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T6.1.1.14.4">63.9</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparative analysis of the performance of compute-optimal Test-Time Scaling (TTS) against several long Chain-of-Thought (CoT) methods. The evaluation is conducted on two distinct mathematical reasoning datasets: MATH-500 and AIME24.  The table allows readers to assess the relative effectiveness of the compute-optimal TTS strategy in comparison to established long-CoT approaches in terms of accuracy on both datasets.  Results are provided for multiple models, facilitating a comparison of performance across different model architectures and scales.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of compute-optimal TTS with long-CoT methods on MATH-500 and AIME24.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06703/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06703/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}