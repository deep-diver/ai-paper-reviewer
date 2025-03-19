---
title: "Temporal Consistency for LLM Reasoning Process Error Identification"
summary: "A new test-time method, Temporal Consistency, is introduced to improve LLM reasoning by leveraging iterative self-reflection."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Princeton University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14495 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiacheng Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14495" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14495" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14495/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) often make mistakes in complex reasoning tasks. Existing methods like Process Reward Models(PRMs) requires large datasets and retraining. Also, training-free methods like majority voting or debate-based approaches have limitations such as failing in mathematical process error identification tasks. Therefore, a simple and effective training-free approach is needed to enhance process error identification capabilities.



To address the limitations, the paper introduces **Temporal Consistency,** a test-time method where LLMs iteratively refine judgments based on previous assessments. By leveraging consistency in self-reflection, it improves verification accuracy. Empirical evaluations on benchmarks like Mathcheck, ProcessBench, and PRM800K demonstrate consistent performance improvements over baselines. Results shows enabling 7B/8B distilled models outperform all 70B/72B models and GPT-40 on ProcessBench.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Temporal Consistency improves verification accuracy by leveraging consistency in a sequence of self-reflection actions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method consistently enhances performance over baselines on math process error identification benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} When applied to recent distilled models, this method enables smaller models to outperform larger models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel **test-time scaling method** that improves the reliability of LLMs. The approach has potential to be integrated into existing systems and contribute to a more robust and trustworthy utilization of LLMs, inspiring new methods in reasoning and verification process.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14495/x1.png)

> 🔼 This figure displays the performance improvements achieved by incorporating the Temporal Consistency method across various large language models (LLMs) on three distinct process error identification benchmarks: Mathcheck*, ProcessBench, and PRM800K.  Each bar represents a specific LLM, showcasing the increase in performance (F1 score) gained after integrating the Temporal Consistency method. The baselines shown are for comparison, to illustrate the improvements gained with the new method. Notably, even smaller, distilled LLMs, such as DeepSeek R1 distilled models, demonstrate enhanced performance that surpasses that of larger models and even GPT-40 on certain benchmarks when using the Temporal Consistency method. The improvements are quantified in percentage points for each benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance improvements for various models on process error identification benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.2">Model</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1">Mathcheck<sup class="ltx_sup" id="S3.T1.1.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.4">ProcessBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.5">PRM800K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.1.2.1.1">GPT-4o mini</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.3">78.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.4">52.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.5">34.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.2">80.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.3">54.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.4">37.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2">79.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3">54.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4">38.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.1"><span class="ltx_text" id="S3.T1.1.1.5.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.2.1" style="background-color:#E6F0FF;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.3.1" style="background-color:#E6F0FF;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.4.1" style="background-color:#E6F0FF;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.1.6.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.3">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.5">41.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.2">89.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.3">65.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.4">42.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.2">90.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.3">66.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.4">50.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.1"><span class="ltx_text" id="S3.T1.1.1.9.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.2.1" style="background-color:#E6F0FF;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.3.1" style="background-color:#E6F0FF;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.9.4.1" style="background-color:#E6F0FF;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.10.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.1.10.1.1">Llama 3.1 8B Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.10.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10.3">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10.4">6.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.10.5">2.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.2">5.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.3">5.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.4">6.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.12.2">6.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.12.3">5.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.12.4">2.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.1"><span class="ltx_text" id="S3.T1.1.1.13.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.2.1" style="background-color:#E6F0FF;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.3.1" style="background-color:#E6F0FF;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.13.4.1" style="background-color:#E6F0FF;">22.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T1.1.1.14.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.1.14.1.1">Mistral 7B Instruct v0.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.14.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.14.3">26.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.14.4">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.14.5">13.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.2">26.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.3">17.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.15.4">12.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.2">26.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.3">17.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.16.4">12.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T1.1.1.17.1"><span class="ltx_text" id="S3.T1.1.1.17.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.17.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.2.1" style="background-color:#E6F0FF;">37.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.17.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.3.1" style="background-color:#E6F0FF;">22.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.17.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.4.1" style="background-color:#E6F0FF;">13.3</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the F1 scores achieved by different LLMs on three mathematical reasoning benchmarks (Mathcheck*, ProcessBench, and PRM800K) using four different methods: greedy decoding, majority voting, multi-model debate, and the proposed temporal consistency method.  The results show the F1 score for each model and method combination. The highest F1 score for each model is highlighted in bold. The table demonstrates that the temporal consistency method consistently outperforms the baseline methods across all models and benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models. Numbers represent F1 score (%). The best performance for each model is highlighted in bold. Our method consistently outperforms baselines across all models and benchmarks.
> </details>





### In-depth insights


#### Temp. Consistency
**Temporal Consistency** seems to be a core concept, likely referring to maintaining consistency in reasoning or decision-making over time. This could involve iteratively refining judgments based on previous assessments, ensuring that conclusions drawn at different points align. This is particularly useful in tasks where perfect information is unavailable, and iterative refinement leads to higher accuracy. A system exhibiting strong temporal consistency would resist drastic changes in output unless warranted by significant new evidence, making it more robust and reliable. The use of temporal consistency could be seen as a way to improve the stability and predictability of LLMs in tasks such as error identification, where maintaining a consistent assessment of errors across multiple rounds of evaluation leads to better accuracy.

#### Iterative Verify
An "Iterative Verify" process in an LLM reasoning paper suggests a method where the model repeatedly checks and refines its own reasoning steps. This iterative process could involve the LLM re-evaluating intermediate conclusions or assumptions made during the problem-solving process. The **key benefit** is the potential to catch and correct errors that might have been missed in a single-pass approach, leading to more robust and accurate results. Furthermore, such a process **could improve the model's calibration**, giving it a better sense of when it is confident in its answer. This technique could be resource-intensive but may yield higher quality outputs where accuracy is essential. A core idea could be the use of different prompting strategies to trigger diverse perspectives, or sampling different solution paths, and checking consistency across iterations.

#### R1 Distill Boost
While "R1 Distill Boost" isn't directly present, the paper extensively discusses improvements using distilled versions of DeepSeek R1. This suggests a focus on enhancing smaller models to achieve performance comparable to, or even exceeding, larger models like GPT-40. Key is distilling knowledge from DeepSeek R1 into models like Qwen-7B and Llama-8B, highlighting **efficiency and accessibility**. The success hinges on techniques that effectively transfer reasoning capabilities, allowing resource-constrained environments to benefit from advanced AI. The distilled models, when coupled with the proposed Temporal Consistency method, demonstrate a **significant performance jump**, suggesting the distillation process, combined with iterative refinement, is highly effective in improving reasoning accuracy and error identification. This **boosts practicality and reduces computational demands**.

#### Test-time Scale
**Test-time scaling** is a crucial concept for enhancing language model performance. The core idea revolves around leveraging more computational resources during inference to improve accuracy and reliability. This contrasts with scaling up model parameters, which increases model size and training costs. **Iterative refinement** with feedback is used to guide output. More sophisticated techniques like search-based methods are being explored. Hybrid frameworks seamlessly integrate tree-based search with sequential approaches. Studies focus on optimizing the test-time scaling across various policy models. This allows models to incorporate feedback and refine results.

#### Limited Tasks
While the paper might demonstrate consistent improvements across various settings, it's crucial to acknowledge that its evaluations are confined to mathematical tasks. The method's efficacy in other reasoning domains remains uncertain. This specialization could limit the generalizability of the findings. **The observed improvements might not directly translate to tasks requiring different cognitive skills or knowledge domains**. Future research should explore the method's applicability across a broader spectrum of reasoning tasks to ascertain its versatility and robustness. The method's performance is strictly tied to the nature of the mathematical reasoning involved, **thus it should be tested in varied tasks**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14495/x2.png)

> 🔼 The figure illustrates the Temporal Consistency approach.  It starts with an initial verification phase where multiple LLMs independently assess a problem's solution.  Then, an iterative self-checking phase begins.  Each LLM reviews its own initial assessment, potentially correcting errors based on its previous judgment.  This process continues until a convergence criterion, defined in Section 2 of the paper, is met, resulting in a consistent final output.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our Temporal Consistency approach, where each LLM iteratively examines its own verification results until reaching a stable result (stopping criteria defined in Section 2). The self-checking mechanism allows LLMs to refine their judgments based on previous verifications, potentially correcting initial misidentification.
> </details>



![](https://arxiv.org/html/2503.14495/x3.png)

> 🔼 This figure illustrates the trade-off between cost and performance for various Large Language Models (LLMs) and methods on the ProcessBench benchmark. The x-axis represents the cost per problem in US dollars, calculated using the OpenRouter pricing model. The y-axis shows the F1 score, a metric that assesses the accuracy of the models in identifying process errors. The figure compares four different methods: Greedy Decoding, Majority Voting, Multi-Model Debate, and the proposed Temporal Consistency method. Each method's performance is evaluated across several different LLMs, showcasing how the cost and performance vary depending on the model and method used.
> <details>
> <summary>read the caption</summary>
> Figure 3: Cost v.s. Performance across different methods and models on ProcessBench. The x-axis (logarithmic scale) shows the cost per problem in dollars (based on OpenRouter pricing 333https://openrouter.ai), while the y-axis shows the F1 Score percentage.
> </details>



![](https://arxiv.org/html/2503.14495/x4.png)

> 🔼 Figure 4 illustrates the iterative process of the Temporal Consistency method.  The example shows a problem where the first error occurs in step 1. Initially, two out of three LLMs incorrectly identify the location of the first error. However, through the iterative self-checking phase, where LLMs review their own initial assessments, the model's internal consistency improves. Eventually, after multiple rounds of self-checking, all three LLMs converge on the correct identification of the error in step 1.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example of the self-checking process: The first error occurred in step 1. Initially, two LLMs incorrectly identified the first incorrect step, while one correctly located the first incorrect step. After self-checking, all LLMs achieve the correct identification.
> </details>



![](https://arxiv.org/html/2503.14495/x5.png)

> 🔼 Figure 5 illustrates a comparison of the performance of four different methods for identifying errors in the reasoning process of large language models (LLMs) across three benchmark datasets: Mathcheck*, ProcessBench, and PRM800K.  The methods compared include greedy decoding, majority voting, multi-model debate, and the authors' proposed Temporal Consistency approach.  Each bar represents the F1-score achieved by each method on each dataset.  The results clearly show that the Temporal Consistency method outperforms all other baseline methods across all three datasets, indicating its effectiveness in improving the accuracy of LLM reasoning process error identification.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance comparison across three datasets (Mathcheck∗, ProcessBench, and PRM800K). Our Temporal Consistency approach (green) consistently outperforms baseline methods, including greedy decoding (yellow), majority voting (orange), and multi-model debate (red).
> </details>



![](https://arxiv.org/html/2503.14495/x6.png)

> 🔼 This figure illustrates the impact of the consistency requirement parameter in the Temporal Consistency algorithm on the ProcessBench benchmark using the Deepseek-R1-Llama-8B model. The x-axis represents the value of the consistency requirement (q). The y-axis shows the F1 score, a metric that evaluates the accuracy of the model in identifying process errors. As the consistency requirement (q) increases, indicating stricter stability requirements, the F1 score improves, demonstrating that the algorithm's performance is enhanced by imposing stronger consistency constraints on the iterative self-checking process.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance comparison across different consistency requirements on ProcessBench for Deepseek-R1-Llama-8B. Higher consistency requirements, indicating stricter stability requirements, correlate with improved F1 scores.
> </details>



![](https://arxiv.org/html/2503.14495/x7.png)

> 🔼 This figure analyzes the cost-effectiveness of the Temporal Consistency method by varying the number of iterations (max rounds) and the consistency threshold (consistency requirement).  The x-axis represents the computational cost per problem (likely reflecting the number of LLM calls), and the y-axis shows the average F1 score achieved on the ProcessBench dataset using the Deepseek-R1-Llama-8B model. The results indicate that increasing computational budget, by allowing more iterations and stricter consistency requirements, leads to improved performance in identifying process errors.
> <details>
> <summary>read the caption</summary>
> Figure 7: Cost-performance analysis of our method with different parameter configurations (max rounds and consistency requirement) on ProcessBench for Deepseek-R1-Llama-8B. The horizontal axis shows the cost per problem, while the vertical axis shows the average F1 score. As the computational budget increases, we observe improved performance, demonstrating the effectiveness of additional test-time scaling computation resources.
> </details>



![](https://arxiv.org/html/2503.14495/x8.png)

> 🔼 Figure 8 illustrates the performance of different methods (Greedy Decoding, Majority Voting, Multi-Model Debate, and Temporal Consistency) on solving mathematical problems categorized by difficulty level (Easy and Hard).  Easy problems are sourced from GSM8K and MATH datasets, while Hard problems come from OlympiadBench and Omni-MATH datasets. The figure highlights that the Temporal Consistency method exhibits superior performance, especially on more challenging (Hard) problems, showcasing more consistent results compared to the baseline methods.
> <details>
> <summary>read the caption</summary>
> Figure 8: Performance comparison across problem difficulty levels. Problems are categorized as Easy (from GSM8K and MATH) or Hard (from OlympiadBench and Omni-MATH). Our method shows particular advantages on harder problems, maintaining more stable performance than baseline approaches.
> </details>



![](https://arxiv.org/html/2503.14495/x9.png)

> 🔼 Figure 9 shows the results of an ablation study conducted on the ProcessBench dataset to evaluate the individual and combined contributions of iterative generation and multi-agent components to the overall performance of the Temporal Consistency method.  The figure demonstrates that both iterative generation and the multi-agent approach significantly improve performance compared to a baseline greedy decoding method.  However, the combination of both methods yields the best performance, highlighting the synergistic effect of these two components in enhancing the accuracy of process error identification.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ablation study results for ProcessBench demonstrating the effectiveness of both iterative generation and multi-agent components, with their combination yielding the best performance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1.2">Model</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1">Mathcheck<sup class="ltx_sup" id="S3.T2.1.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.4">ProcessBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.5">PRM800K</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T2.1.1.2.1.1">Deepseek-R1-Qwen-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.3">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.4">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.5">46.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.2">89.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.3">64.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3.4">55.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.2">84.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3">61.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4">51.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.1"><span class="ltx_text" id="S3.T2.1.1.5.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.2.1" style="background-color:#E6F0FF;">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.3.1" style="background-color:#E6F0FF;">71.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.4.1" style="background-color:#E6F0FF;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T2.1.1.6.1" rowspan="4"><span class="ltx_text" id="S3.T2.1.1.6.1.1">Deepseek-R1-Llama-8B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.2">Greedy Decoding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.6.3">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.6.4">29.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.6.5">21.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.1">Majority Voting</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.2">35.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.3">48.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.4">41.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.8.1">Multi-Model Debate</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.2">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.3">57.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.4">46.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.9.1"><span class="ltx_text" id="S3.T2.1.1.9.1.1" style="background-color:#E6F0FF;">Temporal Consistency (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.9.2.1" style="background-color:#E6F0FF;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.9.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.9.3.1" style="background-color:#E6F0FF;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.9.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.9.4.1" style="background-color:#E6F0FF;">50.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of DeepSeek R1 distilled models (Deepseek-R1-Distill-Qwen-7B and Deepseek-R1-Llama-8B) on three mathematical reasoning benchmarks: Mathcheck*, ProcessBench, and PRM800K.  For each model and benchmark, the table shows the F1 score achieved using four different methods: Greedy Decoding, Majority Voting, Multi-Model Debate, and Temporal Consistency (the authors' proposed method). The F1 score is a measure of the model's accuracy in identifying process errors within the problem solutions.  The best-performing method for each model on each benchmark is highlighted in bold, illustrating the effectiveness of the Temporal Consistency method in improving the accuracy of distilled models.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of Deepseek R1 distilled models on three benchmarks. Numbers represent F1 score (%). The best performance for each model is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T3.5">
<tr class="ltx_tr" id="A3.T3.5.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.1.1.1">
<span class="ltx_p" id="A3.T3.5.1.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.1.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.1.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.1.1.1.1.2.1.1.1">Model</span></span>
<span class="ltx_tr" id="A3.T3.5.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.1.1.1.1.2.1.2.1">Method</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.1.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.1.2">Err</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.1.3">Cor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.1.4">F1</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.2.1.1">
<span class="ltx_p" id="A3.T3.5.2.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.2.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.2.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.2.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.2.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.2.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.2.1.1.1.2.1.1.1.1">GPT-4o mini</span></span></span>
<span class="ltx_tr" id="A3.T3.5.2.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.2.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.2.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.2">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.3">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.4">78.8</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.3.1.1">
<span class="ltx_p" id="A3.T3.5.3.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.3.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.3.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.3.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.3.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.3.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.3.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.2">76.2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.3">85.0</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.4">80.4</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.4.1.1">
<span class="ltx_p" id="A3.T3.5.4.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.4.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.4.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.4.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.4.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.4.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.4.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.2">79.5</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.3">80.3</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.4">79.9</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.5" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.5.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.5.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.5.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.5.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.5.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.5.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.5.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.5.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.2"><span class="ltx_text" id="A3.T3.5.5.2.1" style="background-color:#E6F0FF;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.3"><span class="ltx_text" id="A3.T3.5.5.3.1" style="background-color:#E6F0FF;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.5.4.1" style="background-color:#E6F0FF;">84.8</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.6.1.1">
<span class="ltx_p" id="A3.T3.5.6.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.6.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.6.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.6.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.6.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.6.1.1.1.2.1.1.1.1">GPT-4o</span></span></span>
<span class="ltx_tr" id="A3.T3.5.6.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.6.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.6.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.2">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.3">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.4">87.3</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.7.1.1">
<span class="ltx_p" id="A3.T3.5.7.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.7.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.7.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.7.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.7.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.7.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.7.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.2">85.1</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.3">93.3</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.4">89.0</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.8.1.1">
<span class="ltx_p" id="A3.T3.5.8.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.8.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.8.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.8.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.8.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.8.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.8.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.2">88.4</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.3">93.3</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.4">90.8</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.9" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.9.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.9.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.9.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.9.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.9.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.9.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.9.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.9.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.2"><span class="ltx_text" id="A3.T3.5.9.2.1" style="background-color:#E6F0FF;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.3"><span class="ltx_text" id="A3.T3.5.9.3.1" style="background-color:#E6F0FF;">94.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.9.4.1" style="background-color:#E6F0FF;">91.8</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.10.1.1">
<span class="ltx_p" id="A3.T3.5.10.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.10.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.10.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.10.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.10.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.10.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.10.1.1.1.2.1.1.1.1">Llama 3.1 8B Instruct</span></span></span>
<span class="ltx_tr" id="A3.T3.5.10.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.10.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.10.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.2">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.3">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.4">13.3</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.11.1.1">
<span class="ltx_p" id="A3.T3.5.11.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.11.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.11.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.11.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.11.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.11.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.11.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.2">64.7</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.3">3.1</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.4">5.9</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.12.1.1">
<span class="ltx_p" id="A3.T3.5.12.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.12.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.12.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.12.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.12.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.12.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.12.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.2">62.2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.3">3.6</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.4">6.8</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.13" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.13.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.13.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.13.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.13.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.13.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.13.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.13.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.13.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.2"><span class="ltx_text" id="A3.T3.5.13.2.1" style="background-color:#E6F0FF;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.3"><span class="ltx_text" id="A3.T3.5.13.3.1" style="background-color:#E6F0FF;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.13.4.1" style="background-color:#E6F0FF;">60.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.14.1.1">
<span class="ltx_p" id="A3.T3.5.14.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.14.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.14.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.14.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.14.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.14.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.14.1.1.1.2.1.1.1.1">Mistral 7B Instruct v0.3</span></span></span>
<span class="ltx_tr" id="A3.T3.5.14.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.14.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.14.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.2">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.3">28.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.4">26.4</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.15.1.1">
<span class="ltx_p" id="A3.T3.5.15.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.15.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.15.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.15.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.15.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.15.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.15.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.2">15.9</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.3">76.2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.4">26.3</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.16.1.1">
<span class="ltx_p" id="A3.T3.5.16.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.16.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.16.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.16.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.16.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.16.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.16.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.2">15.7</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.3">79.3</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.4">26.2</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.17" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.17.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.17.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.17.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.17.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.17.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.17.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.17.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.17.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.2"><span class="ltx_text" id="A3.T3.5.17.2.1" style="background-color:#E6F0FF;">34.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.3"><span class="ltx_text" id="A3.T3.5.17.3.1" style="background-color:#E6F0FF;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.17.4.1" style="background-color:#E6F0FF;">37.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.18.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.18.1.1">
<span class="ltx_p" id="A3.T3.5.18.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.18.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.18.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.18.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.18.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.18.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.18.1.1.1.2.1.1.1.1">Deepseek-R1-Llama-8B</span></span></span>
<span class="ltx_tr" id="A3.T3.5.18.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.18.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.18.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.2">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.3">24.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.4">35.9</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.19.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.19.1.1">
<span class="ltx_p" id="A3.T3.5.19.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.19.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.19.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.19.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.19.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.19.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.19.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.2">79.8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.3">22.8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.4">35.5</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.20.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.20.1.1">
<span class="ltx_p" id="A3.T3.5.20.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.20.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.20.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.20.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.20.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.20.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.20.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.2">75.0</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.3">45.6</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.4">56.7</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.21" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.21.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.21.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.21.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.21.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.21.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.21.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.21.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.21.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.21.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.2"><span class="ltx_text" id="A3.T3.5.21.2.1" style="background-color:#E6F0FF;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.3"><span class="ltx_text" id="A3.T3.5.21.3.1" style="background-color:#E6F0FF;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.21.4.1" style="background-color:#E6F0FF;">82.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T3.5.22.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.22.1.1">
<span class="ltx_p" id="A3.T3.5.22.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.22.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.22.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.22.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.22.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.22.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T3.5.22.1.1.1.2.1.1.1.1">Deepseek-R1-Qwen-7B</span></span></span>
<span class="ltx_tr" id="A3.T3.5.22.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.22.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.22.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.2">77.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.3">95.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.4">86.0</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.23.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.23.1.1">
<span class="ltx_p" id="A3.T3.5.23.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.23.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.23.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.23.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.23.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.23.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.23.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.2">81.6</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.3">99.0</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.4">89.3</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T3.5.24.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.24.1.1">
<span class="ltx_p" id="A3.T3.5.24.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.24.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.24.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.24.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.24.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.24.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.24.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.2">77.3</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.3">93.8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.4">84.8</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.25" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A3.T3.5.25.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T3.5.25.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T3.5.25.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T3.5.25.1.1.1.1"></span><span class="ltx_text" id="A3.T3.5.25.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T3.5.25.1.1.1.2.1">
<span class="ltx_tr" id="A3.T3.5.25.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T3.5.25.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T3.5.25.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T3.5.25.2"><span class="ltx_text" id="A3.T3.5.25.2.1" style="background-color:#E6F0FF;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T3.5.25.3"><span class="ltx_text" id="A3.T3.5.25.3.1" style="background-color:#E6F0FF;">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T3.5.25.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.25.4.1" style="background-color:#E6F0FF;">89.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various LLMs on the MathCheck* benchmark, specifically focusing on process error identification. It compares four different LLMs (GPT-40 mini, GPT-40, Llama 3.1 8B Instruct, and Mistral 7B Instruct v0.3) along with two distilled models (Deepseek-R1-Llama-8B and Deepseek-R1-Qwen-7B).  For each model, it shows the results of four methods: greedy decoding, majority voting, multi-model debate, and the proposed temporal consistency method. The metrics used for evaluation are error rate, correct rate, and F1 score. The table highlights the consistent superior performance of the temporal consistency method across all models and metrics.
> <details>
> <summary>read the caption</summary>
> Table 3: Results for MathCheck∗
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T4.1">
<tr class="ltx_tr" id="A3.T4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.1.1">
<span class="ltx_p" id="A3.T4.1.1.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.1.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.1.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.1.1.1.1.2.1.1.1">Model</span></span>
<span class="ltx_tr" id="A3.T4.1.1.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.1.1.1.1.2.1.2.1">Method</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.1.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.2">Err</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.3">Cor</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.4">F1</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.2.1.1">
<span class="ltx_p" id="A3.T4.1.2.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.2.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.2.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.2.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.2.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.2.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.2.1.1.1.2.1.1.1.1">GPT-4o mini</span></span></span>
<span class="ltx_tr" id="A3.T4.1.2.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.2.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.2.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.2.2">27.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.2.3">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.2.4">34.0</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.3.1.1">
<span class="ltx_p" id="A3.T4.1.3.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.3.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.3.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.3.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.3.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.3.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.3.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.3.2">31.3</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.3.3">47.9</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.3.4">37.9</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.4.1.1">
<span class="ltx_p" id="A3.T4.1.4.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.4.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.4.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.4.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.4.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.4.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.4.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.4.2">34.4</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.4.3">42.5</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.4.4">38.0</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.5" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.5.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.5.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.5.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.5.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.5.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.5.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.5.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.5.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.5.2"><span class="ltx_text" id="A3.T4.1.5.2.1" style="background-color:#E6F0FF;">34.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.5.3"><span class="ltx_text" id="A3.T4.1.5.3.1" style="background-color:#E6F0FF;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.5.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.5.4.1" style="background-color:#E6F0FF;">39.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.6.1.1">
<span class="ltx_p" id="A3.T4.1.6.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.6.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.6.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.6.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.6.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.6.1.1.1.2.1.1.1.1">GPT-4o</span></span></span>
<span class="ltx_tr" id="A3.T4.1.6.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.6.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.6.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.6.2">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.6.3">65.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.6.4">41.6</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.7.1.1">
<span class="ltx_p" id="A3.T4.1.7.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.7.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.7.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.7.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.7.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.7.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.7.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.7.2">30.4</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.7.3">71.2</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.7.4">42.6</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.8.1.1">
<span class="ltx_p" id="A3.T4.1.8.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.8.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.8.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.8.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.8.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.8.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.8.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.8.2">41.9</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.8.3">64.4</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.8.4">50.7</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.9" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.9.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.9.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.9.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.9.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.9.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.9.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.9.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.9.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.9.2"><span class="ltx_text" id="A3.T4.1.9.2.1" style="background-color:#E6F0FF;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.9.3"><span class="ltx_text" id="A3.T4.1.9.3.1" style="background-color:#E6F0FF;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.9.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.9.4.1" style="background-color:#E6F0FF;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.10.1.1">
<span class="ltx_p" id="A3.T4.1.10.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.10.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.10.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.10.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.10.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.10.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.10.1.1.1.2.1.1.1.1">Llama 3.1 8B Instruct</span></span></span>
<span class="ltx_tr" id="A3.T4.1.10.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.10.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.10.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.10.2">10.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.10.3">1.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.10.4">2.4</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.11.1.1">
<span class="ltx_p" id="A3.T4.1.11.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.11.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.11.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.11.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.11.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.11.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.11.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.11.2">18.9</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.11.3">4.1</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.11.4">6.8</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.12.1.1">
<span class="ltx_p" id="A3.T4.1.12.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.12.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.12.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.12.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.12.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.12.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.12.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.12.2">23.3</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.12.3">1.4</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.12.4">2.6</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.13" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.13.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.13.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.13.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.13.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.13.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.13.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.13.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.13.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.13.2"><span class="ltx_text" id="A3.T4.1.13.2.1" style="background-color:#E6F0FF;">15.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.13.3"><span class="ltx_text" id="A3.T4.1.13.3.1" style="background-color:#E6F0FF;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.13.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.13.4.1" style="background-color:#E6F0FF;">22.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.14.1.1">
<span class="ltx_p" id="A3.T4.1.14.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.14.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.14.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.14.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.14.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.14.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.14.1.1.1.2.1.1.1.1">Mistral 7B Instruct v0.3</span></span></span>
<span class="ltx_tr" id="A3.T4.1.14.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.14.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.14.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.14.2">11.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.14.3">15.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.14.4">13.0</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.15.1.1">
<span class="ltx_p" id="A3.T4.1.15.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.15.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.15.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.15.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.15.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.15.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.15.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.15.2">6.6</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.15.3">71.2</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.15.4">12.1</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.16.1.1">
<span class="ltx_p" id="A3.T4.1.16.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.16.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.16.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.16.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.16.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.16.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.16.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.16.2">6.6</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.16.3">71.2</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.16.4">12.1</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.17" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.17.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.17.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.17.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.17.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.17.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.17.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.17.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.17.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.17.2"><span class="ltx_text" id="A3.T4.1.17.2.1" style="background-color:#E6F0FF;">10.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.17.3"><span class="ltx_text" id="A3.T4.1.17.3.1" style="background-color:#E6F0FF;">17.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.17.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.17.4.1" style="background-color:#E6F0FF;">13.3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.18.1.1">
<span class="ltx_p" id="A3.T4.1.18.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.18.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.18.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.18.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.18.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.18.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.18.1.1.1.2.1.1.1.1">Deepseek-R1-Llama-8B</span></span></span>
<span class="ltx_tr" id="A3.T4.1.18.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.18.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.18.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.18.2">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.18.3">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.18.4">21.2</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.19.1.1">
<span class="ltx_p" id="A3.T4.1.19.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.19.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.19.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.19.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.19.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.19.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.19.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.19.2">41.0</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.19.3">42.5</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.19.4">41.7</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.20.1.1">
<span class="ltx_p" id="A3.T4.1.20.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.20.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.20.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.20.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.20.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.20.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.20.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.20.2">42.3</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.20.3">52.1</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.20.4">46.7</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.21" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.21.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.21.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.21.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.21.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.21.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.21.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.21.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.21.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.21.2"><span class="ltx_text" id="A3.T4.1.21.2.1" style="background-color:#E6F0FF;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.21.3"><span class="ltx_text" id="A3.T4.1.21.3.1" style="background-color:#E6F0FF;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.21.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.21.4.1" style="background-color:#E6F0FF;">50.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.22">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.22.1.1">
<span class="ltx_p" id="A3.T4.1.22.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.22.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.22.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.22.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.22.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.22.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T4.1.22.1.1.1.2.1.1.1.1">Deepseek-R1-Qwen-7B</span></span></span>
<span class="ltx_tr" id="A3.T4.1.22.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.22.1.1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.22.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.22.2">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.22.3">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.22.4">46.2</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.23.1.1">
<span class="ltx_p" id="A3.T4.1.23.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.23.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.23.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.23.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.23.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.23.1.1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.23.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.23.2">41.9</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.23.3">80.8</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.23.4">55.1</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T4.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.24.1.1">
<span class="ltx_p" id="A3.T4.1.24.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.24.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.24.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.24.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.24.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.24.1.1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.24.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.24.2">38.8</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.24.3">75.3</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.24.4">51.2</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.25" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A3.T4.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.25.1.1" style="background-color:#E6F0FF;">
<span class="ltx_p" id="A3.T4.1.25.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A3.T4.1.25.1.1.1.1"></span><span class="ltx_text" id="A3.T4.1.25.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T4.1.25.1.1.1.2.1">
<span class="ltx_tr" id="A3.T4.1.25.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T4.1.25.1.1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T4.1.25.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T4.1.25.2"><span class="ltx_text" id="A3.T4.1.25.2.1" style="background-color:#E6F0FF;">44.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T4.1.25.3"><span class="ltx_text" id="A3.T4.1.25.3.1" style="background-color:#E6F0FF;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T4.1.25.4"><span class="ltx_text ltx_font_bold" id="A3.T4.1.25.4.1" style="background-color:#E6F0FF;">57.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different methods (Greedy Decoding, Majority Voting, Multi-Model Debate, and Temporal Consistency) on the PRM800K benchmark.  It shows the error rate, correct rate, and F1 score for each method across various LLM models (GPT-40 mini, GPT-40, Llama 3.1 8B Instruct, Mistral 7B Instruct v0.3, Deepseek-R1-Llama-8B, and Deepseek-R1-Qwen-7B).  The results highlight the effectiveness of the Temporal Consistency method in improving the accuracy of process error identification.
> <details>
> <summary>read the caption</summary>
> Table 4: Results for PRM800K
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.25">
<tr class="ltx_tr" id="A3.T5.25.26">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="A3.T5.25.26.1">ProcessBench</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.1.1.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.1.1.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.1.1.1.1.p1">
<span class="ltx_p" id="A3.T5.1.1.1.1.p1.1"><span class="ltx_text" id="A3.T5.1.1.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.1.1.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.1.1.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.1.1.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.1.1.1.1.p1.1.2.1.1.1">Model</span></span>
<span class="ltx_tr" id="A3.T5.1.1.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.1.1.1.1.p1.1.2.1.2.1">Method</span></span>
</span></span><span class="ltx_text" id="A3.T5.1.1.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T5.1.1.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T5.1.1.3">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T5.1.1.4">OlympiadBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A3.T5.1.1.5">Omni-MATH</td>
</tr>
<tr class="ltx_tr" id="A3.T5.25.27">
<td class="ltx_td" id="A3.T5.25.27.1"></td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.2">Err</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.3">Cor</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.4">F1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.25.27.5">Err</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.6">Cor</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.7">F1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.25.27.8">Err</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.9">Cor</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.10">F1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.25.27.11">Err</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.12">Cor</td>
<td class="ltx_td ltx_align_center" id="A3.T5.25.27.13">F1</td>
</tr>
<tr class="ltx_tr" id="A3.T5.2.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.2.2.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.2.2.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.2.2.1.1.p1">
<span class="ltx_p" id="A3.T5.2.2.1.1.p1.1"><span class="ltx_text" id="A3.T5.2.2.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.2.2.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.2.2.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.2.2.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.2.2.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.2.2.1.1.p1.1.2.1.1.1.1">GPT-4o mini</span></span></span>
<span class="ltx_tr" id="A3.T5.2.2.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.2.2.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.2.2.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.2">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.3">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.4">65.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.2.2.5">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.6">69.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.7">56.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.2.2.8">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.9">55.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.10">45.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.2.2.11">35.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.12">58.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.2.2.13">44.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.3.3">
<td class="ltx_td ltx_align_justify" id="A3.T5.3.3.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.3.3.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.3.3.1.1.p1">
<span class="ltx_p" id="A3.T5.3.3.1.1.p1.1"><span class="ltx_text" id="A3.T5.3.3.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.3.3.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.3.3.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.3.3.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.3.3.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.3.3.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.2">56.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.3">85.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.4">67.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.3.3.5">47.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.6">71.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.7">57.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.3.3.8">38.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.9">60.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.10">47.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.3.3.11">36.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.12">58.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.13">44.5</td>
</tr>
<tr class="ltx_tr" id="A3.T5.4.4">
<td class="ltx_td ltx_align_justify" id="A3.T5.4.4.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.4.4.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.4.4.1.1.p1">
<span class="ltx_p" id="A3.T5.4.4.1.1.p1.1"><span class="ltx_text" id="A3.T5.4.4.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.4.4.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.4.4.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.4.4.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.4.4.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.4.4.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.2">63.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.3">80.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4">71.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.4.4.5">52.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.6">64.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.7">58.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.4.4.8">42.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.9">49.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.10">45.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.4.4.11">40.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.12">47.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.13">43.7</td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.5" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify" id="A3.T5.5.5.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.5.5.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.5.5.1.1.p1">
<span class="ltx_p" id="A3.T5.5.5.1.1.p1.1"><span class="ltx_text" id="A3.T5.5.5.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.5.5.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.5.5.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.5.5.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.5.5.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.5.5.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.2"><span class="ltx_text" id="A3.T5.5.5.2.1" style="background-color:#E6F0FF;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.3"><span class="ltx_text" id="A3.T5.5.5.3.1" style="background-color:#E6F0FF;">85.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.4"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.4.1" style="background-color:#E6F0FF;">72.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.5.5.5"><span class="ltx_text" id="A3.T5.5.5.5.1" style="background-color:#E6F0FF;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.6"><span class="ltx_text" id="A3.T5.5.5.6.1" style="background-color:#E6F0FF;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.7"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.7.1" style="background-color:#E6F0FF;">60.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.5.5.8"><span class="ltx_text" id="A3.T5.5.5.8.1" style="background-color:#E6F0FF;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.9"><span class="ltx_text" id="A3.T5.5.5.9.1" style="background-color:#E6F0FF;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.10"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.10.1" style="background-color:#E6F0FF;">50.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.5.5.11"><span class="ltx_text" id="A3.T5.5.5.11.1" style="background-color:#E6F0FF;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.12"><span class="ltx_text" id="A3.T5.5.5.12.1" style="background-color:#E6F0FF;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.13"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.13.1" style="background-color:#E6F0FF;">49.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.6.6.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.6.6.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.6.6.1.1.p1">
<span class="ltx_p" id="A3.T5.6.6.1.1.p1.1"><span class="ltx_text" id="A3.T5.6.6.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.6.6.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.6.6.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.6.6.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.6.6.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.6.6.1.1.p1.1.2.1.1.1.1">GPT-4o</span></span></span>
<span class="ltx_tr" id="A3.T5.6.6.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.6.6.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.6.6.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.2">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.3">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.4">78.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.6.6.5">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.6">77.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.7">63.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.6.6.8">44.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.9">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.10">53.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.6.6.11">46.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.12">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.6.6.13">54.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.7">
<td class="ltx_td ltx_align_justify" id="A3.T5.7.7.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.7.7.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.7.7.1.1.p1">
<span class="ltx_p" id="A3.T5.7.7.1.1.p1.1"><span class="ltx_text" id="A3.T5.7.7.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.7.7.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.7.7.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.7.7.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.7.7.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.7.7.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.2">73.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.3">93.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.4">82.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.7.7.5">53.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.6">82.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.7">65.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.7.7.8">48.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.9">72.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.10">58.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.7.7.11">49.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.12">71.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.13">58.3</td>
</tr>
<tr class="ltx_tr" id="A3.T5.8.8">
<td class="ltx_td ltx_align_justify" id="A3.T5.8.8.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.8.8.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.8.8.1.1.p1">
<span class="ltx_p" id="A3.T5.8.8.1.1.p1.1"><span class="ltx_text" id="A3.T5.8.8.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.8.8.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.8.8.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.8.8.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.8.8.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.8.8.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.2">77.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.3">93.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.4"><span class="ltx_text ltx_font_bold" id="A3.T5.8.8.4.1">84.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.8.8.5">61.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.6">77.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.7">68.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.8.8.8">53.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.9">59.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.10">56.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.8.8.11">56.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.12">58.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.8.8.13">57.5</td>
</tr>
<tr class="ltx_tr" id="A3.T5.9.9" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify" id="A3.T5.9.9.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.9.9.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.9.9.1.1.p1">
<span class="ltx_p" id="A3.T5.9.9.1.1.p1.1"><span class="ltx_text" id="A3.T5.9.9.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.9.9.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.9.9.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.9.9.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.9.9.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.9.9.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.2"><span class="ltx_text" id="A3.T5.9.9.2.1" style="background-color:#E6F0FF;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.3"><span class="ltx_text" id="A3.T5.9.9.3.1" style="background-color:#E6F0FF;">94.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.4"><span class="ltx_text" id="A3.T5.9.9.4.1" style="background-color:#E6F0FF;">83.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.9.9.5"><span class="ltx_text" id="A3.T5.9.9.5.1" style="background-color:#E6F0FF;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.6"><span class="ltx_text" id="A3.T5.9.9.6.1" style="background-color:#E6F0FF;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.7"><span class="ltx_text ltx_font_bold" id="A3.T5.9.9.7.1" style="background-color:#E6F0FF;">70.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.9.9.8"><span class="ltx_text" id="A3.T5.9.9.8.1" style="background-color:#E6F0FF;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.9"><span class="ltx_text" id="A3.T5.9.9.9.1" style="background-color:#E6F0FF;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.10"><span class="ltx_text ltx_font_bold" id="A3.T5.9.9.10.1" style="background-color:#E6F0FF;">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.9.9.11"><span class="ltx_text" id="A3.T5.9.9.11.1" style="background-color:#E6F0FF;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.12"><span class="ltx_text" id="A3.T5.9.9.12.1" style="background-color:#E6F0FF;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.9.9.13"><span class="ltx_text ltx_font_bold" id="A3.T5.9.9.13.1" style="background-color:#E6F0FF;">62.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.10.10">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.10.10.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.10.10.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.10.10.1.1.p1">
<span class="ltx_p" id="A3.T5.10.10.1.1.p1.1"><span class="ltx_text" id="A3.T5.10.10.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.10.10.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.10.10.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.10.10.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.10.10.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.10.10.1.1.p1.1.2.1.1.1.1">Llama 3.1 8B Instruct</span></span></span>
<span class="ltx_tr" id="A3.T5.10.10.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.10.10.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.10.10.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.2">23.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.3">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.4">11.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.10.10.5">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.6">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.7">4.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.10.10.8">8.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.9">3.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.10">4.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.10.10.11">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.12">3.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.10.10.13">5.0</td>
</tr>
<tr class="ltx_tr" id="A3.T5.11.11">
<td class="ltx_td ltx_align_justify" id="A3.T5.11.11.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.11.11.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.11.11.1.1.p1">
<span class="ltx_p" id="A3.T5.11.11.1.1.p1.1"><span class="ltx_text" id="A3.T5.11.11.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.11.11.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.11.11.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.11.11.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.11.11.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.11.11.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.2">41.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.3">3.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.4">5.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.11.11.5">30.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.6">1.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.7">3.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.11.11.8">19.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.9">4.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.10">6.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.11.11.11">25.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.12">2.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.11.11.13">4.5</td>
</tr>
<tr class="ltx_tr" id="A3.T5.12.12">
<td class="ltx_td ltx_align_justify" id="A3.T5.12.12.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.12.12.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.12.12.1.1.p1">
<span class="ltx_p" id="A3.T5.12.12.1.1.p1.1"><span class="ltx_text" id="A3.T5.12.12.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.12.12.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.12.12.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.12.12.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.12.12.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.12.12.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.2">45.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.3">3.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.4">6.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.12.12.5">37.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.6">3.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.7">6.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.12.12.8">30.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.9">2.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.10">5.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.12.12.11">32.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.12">2.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.12.12.13">4.6</td>
</tr>
<tr class="ltx_tr" id="A3.T5.13.13" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify" id="A3.T5.13.13.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.13.13.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.13.13.1.1.p1">
<span class="ltx_p" id="A3.T5.13.13.1.1.p1.1"><span class="ltx_text" id="A3.T5.13.13.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.13.13.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.13.13.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.13.13.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.13.13.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.13.13.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.2"><span class="ltx_text" id="A3.T5.13.13.2.1" style="background-color:#E6F0FF;">34.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.3"><span class="ltx_text" id="A3.T5.13.13.3.1" style="background-color:#E6F0FF;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.4"><span class="ltx_text ltx_font_bold" id="A3.T5.13.13.4.1" style="background-color:#E6F0FF;">45.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.13.13.5"><span class="ltx_text" id="A3.T5.13.13.5.1" style="background-color:#E6F0FF;">28.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.6"><span class="ltx_text" id="A3.T5.13.13.6.1" style="background-color:#E6F0FF;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.7"><span class="ltx_text ltx_font_bold" id="A3.T5.13.13.7.1" style="background-color:#E6F0FF;">36.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.13.13.8"><span class="ltx_text" id="A3.T5.13.13.8.1" style="background-color:#E6F0FF;">23.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.9"><span class="ltx_text" id="A3.T5.13.13.9.1" style="background-color:#E6F0FF;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.10"><span class="ltx_text ltx_font_bold" id="A3.T5.13.13.10.1" style="background-color:#E6F0FF;">29.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.13.13.11"><span class="ltx_text" id="A3.T5.13.13.11.1" style="background-color:#E6F0FF;">24.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.12"><span class="ltx_text" id="A3.T5.13.13.12.1" style="background-color:#E6F0FF;">40.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.13.13.13"><span class="ltx_text ltx_font_bold" id="A3.T5.13.13.13.1" style="background-color:#E6F0FF;">30.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.14.14.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.14.14.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.14.14.1.1.p1">
<span class="ltx_p" id="A3.T5.14.14.1.1.p1.1"><span class="ltx_text" id="A3.T5.14.14.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.14.14.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.14.14.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.14.14.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.14.14.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.14.14.1.1.p1.1.2.1.1.1.1">Mistral 7B Instruct v0.3</span></span></span>
<span class="ltx_tr" id="A3.T5.14.14.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.14.14.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.14.14.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.2">27.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.3">28.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.4"><span class="ltx_text ltx_font_bold" id="A3.T5.14.14.4.1">27.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.14.14.5">23.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.6">20.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.7"><span class="ltx_text ltx_font_bold" id="A3.T5.14.14.7.1">22.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.14.14.8">14.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.9">14.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.10">14.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.14.14.11">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.12">16.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.13">16.3</td>
</tr>
<tr class="ltx_tr" id="A3.T5.15.15">
<td class="ltx_td ltx_align_justify" id="A3.T5.15.15.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.15.15.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.15.15.1.1.p1">
<span class="ltx_p" id="A3.T5.15.15.1.1.p1.1"><span class="ltx_text" id="A3.T5.15.15.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.15.15.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.15.15.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.15.15.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.15.15.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.15.15.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.2">12.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.3">76.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.4">21.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.15.15.5">11.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.6">69.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.7">20.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.15.15.8">7.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.9">65.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.10">13.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.15.15.11">8.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.12">67.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.15.15.13">15.0</td>
</tr>
<tr class="ltx_tr" id="A3.T5.16.16">
<td class="ltx_td ltx_align_justify" id="A3.T5.16.16.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.16.16.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.16.16.1.1.p1">
<span class="ltx_p" id="A3.T5.16.16.1.1.p1.1"><span class="ltx_text" id="A3.T5.16.16.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.16.16.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.16.16.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.16.16.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.16.16.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.16.16.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.2">12.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.3">79.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.4">21.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.16.16.5">12.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.6">70.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.7">20.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.16.16.8">7.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.9">67.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.10">13.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.16.16.11">8.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.12">66.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.16.16.13">15.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.17.17" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify" id="A3.T5.17.17.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.17.17.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.17.17.1.1.p1">
<span class="ltx_p" id="A3.T5.17.17.1.1.p1.1"><span class="ltx_text" id="A3.T5.17.17.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.17.17.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.17.17.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.17.17.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.17.17.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.17.17.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.2"><span class="ltx_text" id="A3.T5.17.17.2.1" style="background-color:#E6F0FF;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.3"><span class="ltx_text" id="A3.T5.17.17.3.1" style="background-color:#E6F0FF;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.4"><span class="ltx_text" id="A3.T5.17.17.4.1" style="background-color:#E6F0FF;">27.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.17.17.5"><span class="ltx_text" id="A3.T5.17.17.5.1" style="background-color:#E6F0FF;">19.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.6"><span class="ltx_text" id="A3.T5.17.17.6.1" style="background-color:#E6F0FF;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.7"><span class="ltx_text" id="A3.T5.17.17.7.1" style="background-color:#E6F0FF;">22.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.17.17.8"><span class="ltx_text" id="A3.T5.17.17.8.1" style="background-color:#E6F0FF;">18.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.9"><span class="ltx_text" id="A3.T5.17.17.9.1" style="background-color:#E6F0FF;">19.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.10"><span class="ltx_text ltx_font_bold" id="A3.T5.17.17.10.1" style="background-color:#E6F0FF;">18.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.17.17.11"><span class="ltx_text" id="A3.T5.17.17.11.1" style="background-color:#E6F0FF;">16.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.12"><span class="ltx_text" id="A3.T5.17.17.12.1" style="background-color:#E6F0FF;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.17.17.13"><span class="ltx_text ltx_font_bold" id="A3.T5.17.17.13.1" style="background-color:#E6F0FF;">21.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.18.18">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.18.18.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.18.18.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.18.18.1.1.p1">
<span class="ltx_p" id="A3.T5.18.18.1.1.p1.1"><span class="ltx_text" id="A3.T5.18.18.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.18.18.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.18.18.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.18.18.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.18.18.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.18.18.1.1.p1.1.2.1.1.1.1">Deepseek-R1-Llama-8B</span></span></span>
<span class="ltx_tr" id="A3.T5.18.18.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.18.18.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.18.18.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.2">44.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.3">24.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.4">31.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.18.18.5">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.6">24.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.7">31.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.18.18.8">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.9">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.10">29.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.18.18.11">31.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.12">20.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.18.18.13">24.9</td>
</tr>
<tr class="ltx_tr" id="A3.T5.19.19">
<td class="ltx_td ltx_align_justify" id="A3.T5.19.19.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.19.19.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.19.19.1.1.p1">
<span class="ltx_p" id="A3.T5.19.19.1.1.p1.1"><span class="ltx_text" id="A3.T5.19.19.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.19.19.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.19.19.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.19.19.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.19.19.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.19.19.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.2">49.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.3">22.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.4">31.2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.19.19.5">67.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.6">50.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.7">57.4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.19.19.8">57.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.9">58.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.10">58.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.19.19.11">51.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.12">46.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.19.19.13">49.0</td>
</tr>
<tr class="ltx_tr" id="A3.T5.20.20">
<td class="ltx_td ltx_align_justify" id="A3.T5.20.20.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.20.20.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.20.20.1.1.p1">
<span class="ltx_p" id="A3.T5.20.20.1.1.p1.1"><span class="ltx_text" id="A3.T5.20.20.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.20.20.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.20.20.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.20.20.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.20.20.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.20.20.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.2">51.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.3">45.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.4">48.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.20.20.5">64.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.6">63.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.7">64.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.20.20.8">56.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.9">71.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.10">62.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.20.20.11">49.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.12">61.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.20.20.13">54.9</td>
</tr>
<tr class="ltx_tr" id="A3.T5.21.21" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify" id="A3.T5.21.21.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.21.21.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.21.21.1.1.p1">
<span class="ltx_p" id="A3.T5.21.21.1.1.p1.1"><span class="ltx_text" id="A3.T5.21.21.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.21.21.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.21.21.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.21.21.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.21.21.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.21.21.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.2"><span class="ltx_text" id="A3.T5.21.21.2.1" style="background-color:#E6F0FF;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.3"><span class="ltx_text" id="A3.T5.21.21.3.1" style="background-color:#E6F0FF;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.4"><span class="ltx_text ltx_font_bold" id="A3.T5.21.21.4.1" style="background-color:#E6F0FF;">67.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.21.21.5"><span class="ltx_text" id="A3.T5.21.21.5.1" style="background-color:#E6F0FF;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.6"><span class="ltx_text" id="A3.T5.21.21.6.1" style="background-color:#E6F0FF;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.7"><span class="ltx_text ltx_font_bold" id="A3.T5.21.21.7.1" style="background-color:#E6F0FF;">72.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.21.21.8"><span class="ltx_text" id="A3.T5.21.21.8.1" style="background-color:#E6F0FF;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.9"><span class="ltx_text" id="A3.T5.21.21.9.1" style="background-color:#E6F0FF;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.10"><span class="ltx_text ltx_font_bold" id="A3.T5.21.21.10.1" style="background-color:#E6F0FF;">66.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.21.21.11"><span class="ltx_text" id="A3.T5.21.21.11.1" style="background-color:#E6F0FF;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.12"><span class="ltx_text" id="A3.T5.21.21.12.1" style="background-color:#E6F0FF;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.21.21.13"><span class="ltx_text ltx_font_bold" id="A3.T5.21.21.13.1" style="background-color:#E6F0FF;">62.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.22.22">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A3.T5.22.22.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.22.22.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.22.22.1.1.p1">
<span class="ltx_p" id="A3.T5.22.22.1.1.p1.1"><span class="ltx_text" id="A3.T5.22.22.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.22.22.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.22.22.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.22.22.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.22.22.1.1.p1.1.2.1.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.22.22.1.1.p1.1.2.1.1.1.1">Deepseek-R1-Qwen-7B</span></span></span>
<span class="ltx_tr" id="A3.T5.22.22.1.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.22.22.1.1.p1.1.2.1.2.1">Greedy Decoding</span></span>
</span></span><span class="ltx_text" id="A3.T5.22.22.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.2">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.3">95.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.4">67.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.22.22.5">50.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.6">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.7">61.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.22.22.8">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.9">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.10">48.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T5.22.22.11">29.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.12">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.22.22.13">40.9</td>
</tr>
<tr class="ltx_tr" id="A3.T5.23.23">
<td class="ltx_td ltx_align_justify" id="A3.T5.23.23.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.23.23.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.23.23.1.1.p1">
<span class="ltx_p" id="A3.T5.23.23.1.1.p1.1"><span class="ltx_text" id="A3.T5.23.23.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.23.23.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.23.23.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.23.23.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.23.23.1.1.p1.1.2.1.1.1">Majority Voting</span></span>
</span></span><span class="ltx_text" id="A3.T5.23.23.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.2">57.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.3">99.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.4">72.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.23.23.5">64.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.6">88.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.7">74.5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.23.23.8">48.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.9">81.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.10">60.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.23.23.11">39.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.12">75.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.23.23.13">51.4</td>
</tr>
<tr class="ltx_tr" id="A3.T5.24.24">
<td class="ltx_td ltx_align_justify" id="A3.T5.24.24.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.24.24.1.1">
<span class="ltx_para ltx_noindent" id="A3.T5.24.24.1.1.p1">
<span class="ltx_p" id="A3.T5.24.24.1.1.p1.1"><span class="ltx_text" id="A3.T5.24.24.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.24.24.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.24.24.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.24.24.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.24.24.1.1.p1.1.2.1.1.1">Multi-Model Debate</span></span>
</span></span><span class="ltx_text" id="A3.T5.24.24.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.2">58.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.3">93.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.4">71.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.24.24.5">59.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.6">84.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.7">70.1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.24.24.8">45.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.9">71.1</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.10">55.7</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T5.24.24.11">37.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.12">71.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.24.24.13">49.3</td>
</tr>
<tr class="ltx_tr" id="A3.T5.25.25" style="background-color:#E6F0FF;">
<td class="ltx_td ltx_align_justify ltx_border_b" id="A3.T5.25.25.1"><span class="ltx_inline-logical-block ltx_align_top" id="A3.T5.25.25.1.1" style="background-color:#E6F0FF;">
<span class="ltx_para ltx_noindent" id="A3.T5.25.25.1.1.p1">
<span class="ltx_p" id="A3.T5.25.25.1.1.p1.1"><span class="ltx_text" id="A3.T5.25.25.1.1.p1.1.1"></span><span class="ltx_text" id="A3.T5.25.25.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A3.T5.25.25.1.1.p1.1.2.1">
<span class="ltx_tr" id="A3.T5.25.25.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A3.T5.25.25.1.1.p1.1.2.1.1.1">Temporal Consistency (Ours)</span></span>
</span></span><span class="ltx_text" id="A3.T5.25.25.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.2"><span class="ltx_text" id="A3.T5.25.25.2.1" style="background-color:#E6F0FF;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.3"><span class="ltx_text" id="A3.T5.25.25.3.1" style="background-color:#E6F0FF;">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.4"><span class="ltx_text ltx_font_bold" id="A3.T5.25.25.4.1" style="background-color:#E6F0FF;">76.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="A3.T5.25.25.5"><span class="ltx_text" id="A3.T5.25.25.5.1" style="background-color:#E6F0FF;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.6"><span class="ltx_text" id="A3.T5.25.25.6.1" style="background-color:#E6F0FF;">94.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.7"><span class="ltx_text ltx_font_bold" id="A3.T5.25.25.7.1" style="background-color:#E6F0FF;">80.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="A3.T5.25.25.8"><span class="ltx_text" id="A3.T5.25.25.8.1" style="background-color:#E6F0FF;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.9"><span class="ltx_text" id="A3.T5.25.25.9.1" style="background-color:#E6F0FF;">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.10"><span class="ltx_text ltx_font_bold" id="A3.T5.25.25.10.1" style="background-color:#E6F0FF;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="A3.T5.25.25.11"><span class="ltx_text" id="A3.T5.25.25.11.1" style="background-color:#E6F0FF;">46.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.12"><span class="ltx_text" id="A3.T5.25.25.12.1" style="background-color:#E6F0FF;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.T5.25.25.13"><span class="ltx_text ltx_font_bold" id="A3.T5.25.25.13.1" style="background-color:#E6F0FF;">60.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive breakdown of the performance achieved by various LLMs on the ProcessBench benchmark. It shows the results for different models (GPT-40 mini, GPT-40, Llama 3.1 8B Instruct, Mistral 7B Instruct v0.3, Deepseek-R1-Llama-8B, and Deepseek-R1-Qwen-7B) across four subsets of the benchmark: GSM8K, MATH, OlympiadBench, and Omni-MATH. For each model and subset, the table reports the error rate, correct rate, and F1 score obtained using different methods: Greedy Decoding, Majority Voting, Multi-Model Debate, and Temporal Consistency (the proposed method). This detailed analysis allows for a comprehensive comparison of the different methods and models across various aspects of mathematical reasoning.
> <details>
> <summary>read the caption</summary>
> Table 5: Results for ProcessBench
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14495/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14495/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}