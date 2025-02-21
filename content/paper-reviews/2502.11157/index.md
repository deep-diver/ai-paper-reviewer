---
title: "Dyve: Thinking Fast and Slow for Dynamic Process Verification"
summary: "Dyve: A novel dynamic process verifier boosts LLM reasoning accuracy by cleverly combining fast, immediate checks with deeper, slower analyses for complex steps, achieving significant performance gain..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Chinese University of Hong Kong",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11157 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianyuan Zhong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11157" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11157" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11157/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current process verification methods for large language models (LLMs) often struggle with complex reasoning tasks and noisy data. Existing systems either make simplistic binary decisions or are computationally expensive, leading to unreliable evaluations and hindering the development of more robust AI systems.  This research highlights a critical need for more sophisticated and efficient verification techniques. 



The paper introduces Dyve, a novel dynamic process verifier that employs a dual-system approach mimicking human cognitive processes: 'fast' (immediate token-level confirmation) and 'slow' (comprehensive analysis) thinking.  Dyve leverages Monte Carlo estimation and a novel step-wise consensus-filtered supervision to improve accuracy. Experiments show that **Dyve significantly outperforms other methods** on various benchmarks, particularly excelling on more complex reasoning tasks, and demonstrating the effectiveness of its dual-system approach in achieving high accuracy with reasonable computational efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dyve, a new dynamic process verifier, enhances reasoning error detection in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Dyve's adaptive approach, inspired by Kahneman's Systems Theory, combines 'fast thinking' (immediate checks) and 'slow thinking' (deeper analysis). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experimental results show Dyve significantly outperforms existing process-based verifiers and achieves high accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **Dyve**, a novel dynamic process verifier that significantly improves the accuracy of reasoning error detection in large language models.  Its adaptive approach, combining fast and slow thinking, addresses the limitations of existing methods that rely on simplistic binary classifications or are computationally expensive.  This work opens up **new avenues for research** in process verification and reliable LLM evaluation, impacting various AI applications that rely on reasoning accuracy.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11157/x1.png)

> 🔼 Figure 1 illustrates the limitations of existing approaches to process verification in LLMs and introduces Dyve as a superior alternative.  It compares five methods:  1. **LLM Self-Reflection:** Shows the unreliability of LLMs relying solely on their internal reflection mechanisms for identifying errors. 2. **Binary Verification:** Highlights the lack of depth in simple yes/no verification systems, which fail to capture the nuances of complex reasoning processes. 3. **Chain-of-Thought (CoT) Verification:** Demonstrates that while deeper analysis offered by CoT methods improves accuracy, it comes at a higher computational cost. 4. **GenRM with CoT:**  Illustrates that generative models (GenRMs) using CoT may combine generation and verification but lack the step-wise assessment crucial for precise error identification. 5. **Dyve:** Introduces Dyve, the proposed model, which dynamically combines the speed of System 1 (fast, intuitive verification) and the thoroughness of System 2 (deeper analysis) verification to achieve optimal performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: (1) LLM self-reflection is unreliable (2) Binary verification lacks depth, (3) Chain-of-Thought (CoT) verification is deeper but more expensive, (4) GenRM with CoT combines generation and verification without step-wise assessment, (5) Dyve, our proposed framework that dynamically combines fast System 1 and deep System 2 verification.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.24.24">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.24.24.25.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.24.24.25.1.1">Model</th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S3.T1.24.24.25.1.2"></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.24.24.25.1.3">GSM8K</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.24.24.25.1.4">MATH</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.24.24.25.1.5">OlympiadBench</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.24.24.25.1.6">OmniMATH</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.4.4.4.5">Qwen2.5-Math-7B-PRM</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.4.4.4.6">System1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1">39.4<sup class="ltx_sup" id="S3.T1.1.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2">52.2<sup class="ltx_sup" id="S3.T1.2.2.2.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3">39.4<sup class="ltx_sup" id="S3.T1.3.3.3.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4">33.1<sup class="ltx_sup" id="S3.T1.4.4.4.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.26.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.26.2.1">Math-Shepherd-PRM-7B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.26.2.2">System1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.26.2.3">47.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.26.2.4">29.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.26.2.5">24.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.26.2.6">23.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.27.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.27.3.1">RLHFlow-PRM-Mistral-8B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.27.3.2">System1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.27.3.3">50.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.27.3.4">33.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.27.3.5">13.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.27.3.6">15.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.28.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.28.4.1">RLHFlow-PRM-Deepseek-8B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.28.4.2">System1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.28.4.3">38.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.28.4.4">33.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.28.4.5">16.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.28.4.6">16.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.29.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.29.5.1">Skywork-PRM-1.5B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.29.5.2">System1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.29.5.3">59.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.29.5.4">48.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.29.5.5">19.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.29.5.6">19.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.8.8.5">Skywork-PRM-7B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.8.8.6">System1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.1">64.1<sup class="ltx_sup" id="S3.T1.5.5.5.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.2">43.2<sup class="ltx_sup" id="S3.T1.6.6.6.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.3">16.2<sup class="ltx_sup" id="S3.T1.7.7.7.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4">17.9<sup class="ltx_sup" id="S3.T1.8.8.8.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.12.12.12.5">Llama-3.1-8B-Instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.12.12.12.6">LLM-as-Judge</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.9.9.1">27.5<sup class="ltx_sup" id="S3.T1.9.9.9.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.2">26.7<sup class="ltx_sup" id="S3.T1.10.10.10.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.11.3">18.5<sup class="ltx_sup" id="S3.T1.11.11.11.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.12.4">19.2<sup class="ltx_sup" id="S3.T1.12.12.12.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.16.16.16.5">GPT-4o</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.16.16.16.6">LLM-as-Judge</th>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.1">61.9<sup class="ltx_sup" id="S3.T1.13.13.13.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.2">53.9<sup class="ltx_sup" id="S3.T1.14.14.14.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.3">48.3<sup class="ltx_sup" id="S3.T1.15.15.15.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.4">44.6<sup class="ltx_sup" id="S3.T1.16.16.16.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.20.20.20.5">QwQ-32B-Preview</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.20.20.20.6">LLM-as-Judge</th>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.17.1">62.3<sup class="ltx_sup" id="S3.T1.17.17.17.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.18.2">52.7<sup class="ltx_sup" id="S3.T1.18.18.18.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.19.19.3">46.2<sup class="ltx_sup" id="S3.T1.19.19.19.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.4">43.9<sup class="ltx_sup" id="S3.T1.20.20.20.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.24.5">DeepSeek-R1-Distill-Qwen-14B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.24.24.24.6">LLM-as-Judge</th>
<td class="ltx_td ltx_align_center" id="S3.T1.21.21.21.1">67.3<sup class="ltx_sup" id="S3.T1.21.21.21.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.2">38.8<sup class="ltx_sup" id="S3.T1.22.22.22.2.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.23.23.23.3">29.9<sup class="ltx_sup" id="S3.T1.23.23.23.3.1">∗</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.4">32.1<sup class="ltx_sup" id="S3.T1.24.24.24.4.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.30.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.24.24.30.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.30.6.1.1">Dyve 14B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.24.24.30.6.2">System1 + System2</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.24.24.30.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.30.6.3.1">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.24.24.30.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.30.6.4.1">58.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.24.24.30.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.30.6.5.1">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T1.24.24.30.6.6"><span class="ltx_text ltx_font_bold" id="S3.T1.24.24.30.6.6.1">47.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of different models on the ProcessBench benchmark, which evaluates the ability of models to detect errors in multi-step mathematical reasoning.  The benchmark uses four datasets: GSM8K, MATH, OlympiadBench, and OmniMATH, each with increasing difficulty. The table reports F1 scores for each model, calculated from the harmonic mean of precision and recall on erroneous and correct samples. Dyve 14B, which uses a combined fast (System 1) and slow (System 2) reasoning approach, achieves superior performance across all datasets, especially demonstrating strong generalization to the most challenging Olympiad-level mathematics problems. Note that some models marked with an asterisk (*) were evaluated using a custom implementation due to a lack of official evaluation scripts for those models, ensuring fair comparison with the other models.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on ProcessBench. F1 scores, computed from accuracies on erroneous and correct samples, are reported for four benchmarks: GSM8K, MATH, OlympiadBench, and OmniMATH. Dyve 14B leverages a dual reasoning approach (fast System1 and slow System2) to achieve superior performance, with scores of 68.5, 58.3, 49.0, and 47.2, respectively, and it shows enhanced generalization on Olympiad-level mathematics. Models marked with a ∗ are evaluated using our custom implementation to align with our experimental settings in the absence of an official evaluation script.
> </details>





### In-depth insights


#### Dyve's Dual System
Dyve's core innovation lies in its dual-system approach, mirroring Kahneman's Systems 1 and 2 thinking.  **System 1** provides rapid, intuitive token-level verification for straightforward steps, enhancing efficiency.  **System 2**, activated for complex steps, engages in a more thorough, deliberative analysis. This adaptive strategy is crucial because simplistic binary yes/no verification methods fail to capture the nuances of complex reasoning processes.  The integration of Monte Carlo estimation, LLM-as-a-judge, and specialized reasoning models generates high-quality training data, overcoming limitations of noisy datasets.  **Dyve's dynamic shift between these two systems optimizes both speed and accuracy**, representing a significant advancement in dynamic process verification.  The system's effectiveness stems from its ability to avoid both the oversimplification of System 1 and the inefficiency of a solely System 2 approach.

#### Adaptive Verification
Adaptive verification in dynamic process verification systems is crucial for efficient and accurate error detection.  **The core idea is to tailor the verification process to the complexity of each step in a reasoning trace.**  Instead of applying a uniform verification strategy, an adaptive system would use a lightweight, fast approach for straightforward steps and a more thorough, computationally expensive method for complex or ambiguous steps. This approach mirrors human cognitive processes, where we use intuition for simple tasks and deliberate reasoning for challenging ones. **This system is especially valuable for large language models (LLMs), which are prone to both simple mistakes and subtle, systemic reasoning errors.**  The adaptive nature of the verification enhances efficiency by avoiding the unnecessary cost of in-depth analysis for simple steps, allowing for faster overall processing of longer reasoning traces. A key challenge in implementing this lies in reliably identifying steps that require different levels of scrutiny. This requires a robust method for classifying step complexity, perhaps using a combination of heuristics and machine learning techniques trained on labeled data to distinguish straightforward and complex reasoning steps. The success of adaptive verification hinges on striking a balance between accuracy and efficiency.  **An ideal system would dynamically adjust its verification strategy based on real-time assessment of step complexity, leading to more accurate error detection with optimal resource utilization.**

#### LLM-as-a-Judge
The concept of "LLM-as-a-Judge" presents a novel approach to enhancing the accuracy of process verification in large language models (LLMs).  It leverages the capabilities of a powerful LLM to evaluate the quality and correctness of the process, offering a more sophisticated level of analysis than traditional binary classification methods. **Instead of simply accepting or rejecting a single step, the LLM acts as an arbiter**, meticulously examining the reasoning process for potential flaws, inconsistencies, or leaps in logic. This approach is particularly beneficial for handling complex problems or incomplete reasoning traces where simpler methods might fail. By incorporating an LLM's ability to reason and understand context, the judgment becomes more nuanced, potentially leading to more accurate identification of errors.  **This system helps address the challenge of noisy or unreliable labels in training data**; by filtering out questionable outputs, it allows the training process to focus on high-quality examples. While this technique enhances verification precision, its computational cost needs careful consideration.  The reliance on a second, potentially expensive LLM introduces an overhead that must be balanced against the gains in accuracy.  Further research should explore methods for optimizing this efficiency, such as using smaller, more specialized LLMs for the judging task, or focusing on identifying specific error types to streamline the evaluation process.  **The effectiveness of LLM-as-a-Judge strongly depends on the quality of the underlying LLM**; a poorly trained or biased LLM might produce inaccurate judgments.  Therefore, selection and training of the judging LLM are critical components to be addressed in future work.

#### ProcessBench Results
The ProcessBench results section would be crucial in evaluating the effectiveness of Dyve.  It would likely present **F1 scores**, a balanced measure of precision and recall, across various subsets of ProcessBench, such as GSM8k, MATH, OlympiadBench, and OmniMATH, reflecting different difficulty levels and problem types.  **High F1 scores** across all subsets would strongly indicate Dyve's robustness and generalizability.  A comparison against other state-of-the-art process verifiers (PRMs) would be essential, demonstrating Dyve's **superior performance**. The analysis should delve into whether Dyve excels more in specific subsets, potentially revealing strengths and weaknesses.  Furthermore, **inference speed comparisons** are critical; while accuracy is paramount, Dyve's efficiency (latency per sample) must be competitive for practical applications.  Finally, an in-depth exploration of error analysis—**identifying the types of errors where Dyve excels or falters**—would offer key insights into its capabilities and limitations, paving the way for future improvements.

#### Future Enhancements
Future enhancements for Dyve should prioritize **improving the robustness of the step-wise consensus filtering** process by exploring more sophisticated LLM-as-a-judge models and potentially incorporating human-in-the-loop validation for ambiguous cases.  **Expanding the scope of supported reasoning tasks** beyond mathematical problems is crucial to demonstrate broader applicability. This might involve developing specialized modules for different reasoning domains or adopting a more flexible, domain-agnostic architecture.  Further research should investigate the **integration of Dyve with other AI systems**, such as planning or knowledge representation modules, enabling more comprehensive AI verification pipelines.  Finally,  **developing more efficient inference strategies** is needed to address the computational overhead, perhaps through model compression or optimized inference techniques, to make Dyve suitable for real-world applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11157/extracted/6207679/images/inference_speed_comparison.png)

> 🔼 This figure presents a bar chart comparing the inference speed of three different models on the ProcessBench dataset: System-1, Dyve, and DeepSeek-R1-14B.  The y-axis represents the time per sample in seconds, and the x-axis shows the four subsets of ProcessBench (GSM8K, MATH, Olympiad, Omni).  The chart visually demonstrates the relative efficiency of each model across different problem complexities, allowing for a comparison of their computational performance.  It shows that System-1 is the fastest, Dyve is moderately fast, balancing speed and performance, and DeepSeek-R1-14B is the slowest.
> <details>
> <summary>read the caption</summary>
> Figure 2: Inference speed comparison on ProcesBench, time per sample in seconds, for System-1, Dyve, and DeepSeek-R1-14B.
> </details>



![](https://arxiv.org/html/2502.11157/extracted/6207679/images/side_by_side_base_and_ablation14B.png)

> 🔼 Figure 3 presents a detailed analysis of how model selection and the step-wise consensus filtering technique impact the performance of a process verification model across four benchmark datasets: GSM8K, MATH, OlympiadBench, and OmniMATH.  The bar charts compare the accuracy of different models (a 7B parameter Llama model and a 14B parameter DeepSeek model) with and without consensus filtering and step-wise flagging. The results clearly demonstrate that employing consensus filtering and step-wise flagging significantly improves accuracy, particularly with the larger, 14B parameter model. This showcases the effectiveness of these techniques in enhancing the model's ability to accurately identify process errors.
> <details>
> <summary>read the caption</summary>
> Figure 3: Impact of model choice and step-wise consensus filtering on performance across GSM8K, MATH, OlympiadBench, and OmniMATH. The figure illustrates improvements achieved through consensus filtering and step-wise flagging, highlighting the superior performance of the 14B reasoning model over the 7B Llama.
> </details>



![](https://arxiv.org/html/2502.11157/extracted/6207679/images/accuracy_vs_exponent.png)

> 🔼 This figure compares the performance of three different methods for mathematical problem solving when integrated with two different proposer LLMs. The methods compared are: Dyve (which combines fast and slow thinking), Dyve System 1 (fast thinking only), and Majority Vote (a simpler method).  The two proposer LLMs used are DeepSeek-R1-Distill-Qwen-14B (solid line) and Qwen2.5-MATH-7B-Instruct (dotted line). The x-axis represents the generation budget (number of attempts to generate a solution), and the y-axis shows the accuracy achieved.  The figure demonstrates how Dyve's adaptive approach improves accuracy compared to the other methods, especially with larger generation budgets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of Dyve, Dyve System1 and Majority Vote with different generation budget when integrating with Proposer LLMs (DeepSeek-R1-Distill-Qwen-14B as solid line, Qwen2.5-MATH-7B-Instruct as dotted line).
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11157/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11157/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}