---
title: "SIFT: Grounding LLM Reasoning in Contexts via Stickers"
summary: "SIFT: Grounds LLM reasoning with 'Stickers' to highlight context and improve accuracy without extra training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14922 {{< /keyword >}}
{{< keyword icon="writer" >}} Zihao Zeng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14922" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14922" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14922/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**LLMs** often misinterpret the context, leading to factual errors. This is a significant problem, as even advanced models can struggle with contextual awareness. This paper identifies the issue of misinterpretation and hallucination of key information by the LLMs, a vulnerability termed as factual drift. The issue may lead to incorrect logical steps and reasoning errors.



To address this, the paper introduces the novel **Stick to the Facts(SIFT)**. SIFT is a post-training approach that enhances LLM reasoning by grounding it in the context. SIFT leverages the model to generate a Sticker that emphasizes key information. SIFT can improve the performance of cutting-edge LLMs and establish a new state-of-the-art. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can misinterpret context, leading to errors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SIFT uses 'Stickers' to ground LLM reasoning in the context without further training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SIFT improves performance across various models and benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is vital as it addresses **a key limitation in LLMs: their vulnerability to misinterpreting the context**. By introducing SIFT, the study provides a training-free method, and the insights will likely promote the creation of more robust and reliable LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14922/x1.png)

> 🔼 This figure showcases the effectiveness of the Stick to the Facts (SIFT) method when applied to the DeepSeek-R1 large language model.  The bar chart presents the pass@1 accuracy (meaning the model correctly answered the question on the first try) across three different reasoning benchmarks: AIME2024, AIME2025, and MATH-500. For context, the performance of  o1-mini and o3-mini models on the AIME benchmarks (as reported in a separate study by Ye et al., 2025) is also shown for comparison.  The results clearly demonstrate that SIFT significantly boosts the accuracy of DeepSeek-R1 on all three benchmarks, highlighting its ability to enhance the reasoning capabilities of large language models.
> <details>
> <summary>read the caption</summary>
> Figure 1: Applying SIFT to DeepSeek-R1 demonstrates highly competitive reasoning performance on AIME2024, AIME2025, and MATH-500 (pass@1 accuracy). The results for o1-mini and o3-mini on AIME are referenced from Ye et al. (2025).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1">Consistency</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.2.1">Stage 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.3.1">Stage 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.4" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.4.1">Stage 3</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T1.1.2.2.1">Dimension</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.3.1.1">Greedy</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.1.2">77.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.1.3">78.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.1.4">79.23</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.4.2.1">(i) Sticker</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.2.2">78.85</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.2.3">79.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.2.4">80.29</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.5.3.1">(ii) Prediction</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.3.2">85.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.3.3">86.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.3.4">86.28</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.6.4.1">(iii) SIFT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.6.4.2">—</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.6.4.3">—</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.6.4.4">88.25</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various strategies for integrating Self-Consistency with the Stick to the Facts (SIFT) method across different stages of the process.  The different strategies involve applying consistency checks to either the Sticker alone, the predictions from the query and Sticker, or both, during the SIFT reasoning steps.  The results demonstrate that combining SIFT with Self-Consistency consistently leads to significant accuracy improvements, with the best result achieved when Self-Consistency is applied across all components of SIFT.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison of different consistency integration strategies for SIFT across multiple stages. The results show that integrating SIFT with Self-Consistency Wang et al. (2023a) leads to significant performance improvements, with SIFT-Consistency achieving the highest accuracy boost.
> </details>





### In-depth insights


#### LLM Factual Drift
**LLM Factual Drift** highlights a critical vulnerability where large language models systematically misinterpret, overlook, or hallucinate key information within the query context. This often emerges from misaligned comprehension, where the LLM reasoning falters not from flawed logic but from an inaccurate understanding of the input context. Such drift can manifest by neglecting constraints, misinterpreting semantic relationships, or even hallucinating conditions during the reasoning process, leading to erroneous conclusions. The paper argues that despite advancements in reasoning capabilities, these models may not necessarily be reasoning about the correct problem, thus leading to the incorrect answer, and the **Sift** framework is designed to address this issue.

#### SIFT: Grounding LLMs
**SIFT: Grounding LLMs** suggests a methodology to enhance LLMs' reliability by anchoring their reasoning in factual context. This likely addresses issues where LLMs **misinterpret or hallucinate** data, leading to flawed conclusions even with sound logic. The grounding aims to make the LLM reason about the **correct** problem. 'SIFT' could involve techniques to verify input data, clarify ambiguities, or use external knowledge sources to validate information. This method ensures **LLMs understand the question precisely**, minimizing factual drift. The approach probably improves performance by **reducing errors stemming from misunderstandings**, allowing the models to focus on accurate reasoning based on verified information. SIFT will result in **more trustworthy outputs**, especially in scenarios where data accuracy is paramount.

#### Sticker Refinement
**Sticker refinement** appears to be a critical process within the methodology, focusing on iteratively improving the quality and alignment of the generated "Stickers." This is likely achieved through both **forward and inverse optimization techniques**. Forward optimization aims to better align the Sticker with the original query, ensuring it accurately captures the key information and constraints. Inverse generation, on the other hand, refines the Sticker based on the model's prediction, thus adhering to the model's internal reasoning preferences. **The goal is to create a Sticker that is both factually accurate and easily understood by the LLM**, leading to more reliable reasoning outcomes.

#### Self-Verification
**Self-verification** in LLMs is a fascinating emergent behavior, where the model revisits its own reasoning process to ensure accuracy. Unlike the deterministic nature of traditional algorithms, LLM's self-verification introduces a degree of stochasticity. It acts as a safeguard but isn't systematically guaranteed, implying vulnerabilities may persist. Models paraphrase to implicitly perform error-checking. In essence, self-verification is a stochastic check rather than a systematic protocol. Advanced reasoning models exhibit self-verification by revisiting queries, focusing on key information, and paraphrasing, leading to deeper contextual understanding and self-correction. It mitigates factual drift by revisiting the original problem. The model can state "Let's read the sentence again" or "Wait, the problem states".

#### Iterative SIFT
The section on iterative SIFT explores the potential for **continual optimization** of the Sticker component within the SIFT framework. The experiments, using Llama3.2-3B-Instruct on GSM8K, reveal a test-time scaling effect where increased tokens per sample generally correlate with improved performance. **Rapid saturation** is observed for Stage 2, suggesting diminishing returns on forward optimization alone. Stage 3, incorporating inverse generation, offers an additional performance boost. However, the initial optimization round yields the most significant gains, potentially because GSM8K problems have relatively simple Stickers. The study suggests that **more complex scenarios** might benefit from additional optimization repeats to achieve optimal Sticker extraction. Furthermore, exploring a dedicated training regime for Sticker optimization could further enhance iterative results, as the current approach is training-free. This points towards a future direction for improving the efficiency and effectiveness of the SIFT approach.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14922/x2.png)

> 🔼 The figure shows an example of a query used in the SIFT model and the corresponding Sticker generated by the model. The query is a word problem: 'Josh decides to try flipping a house. He buys a house for $80,000 and then puts in $50,000 in repairs. This increased the value of the house by 150%. How much profit did he make?'  The Sticker summarizes the key information from the query into a structured format, including conditions and the question, such as: '1. Josh buys a house for $80,000. 2. He spends $50,000 on repairs. 3. The value of the house increases by 150%. Question: What is the total profit Josh made from flipping the house?'
> <details>
> <summary>read the caption</summary>
> Figure 2: An example of a query and its Sticker.
> </details>



![](https://arxiv.org/html/2502.14922/x3.png)

> 🔼 This figure illustrates two scenarios where factual drift, the misinterpretation of key information in the context, occurs during the SIFT process.  In (i), the model generates an incorrect 'Sticker' by neglecting key constraints from the query, demonstrating that factual drift can occur even during the summarization stage.  In (ii), the model correctly generates the Sticker but misinterprets its information during prediction generation, highlighting that the problem is not solely limited to the initial summarization.
> <details>
> <summary>read the caption</summary>
> Figure 3: Factual drift occurs during (i) Sticker generation and (ii) prediction generation from Sticker.
> </details>



![](https://arxiv.org/html/2502.14922/x4.png)

> 🔼 This figure shows an example of DeepSeek-R1's self-verification process during reasoning.  The model demonstrates its ability to mitigate factual drift by revisiting the original query, identifying key details, and rephrasing critical elements for a more accurate understanding before proceeding with its reasoning steps. This highlights the model's capacity for introspection and self-correction, improving the overall reliability of its reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Self-verification occurs during DeepSeek-R1’s reasoning, where the model revisiting the query, focusing on key information, and paraphrasing it.
> </details>



![](https://arxiv.org/html/2502.14922/x5.png)

> 🔼 This figure illustrates the four core components of the Stick to the Facts (SIFT) framework.  It details the process of generating a 'Sticker' which summarizes key facts from the input query. This sticker is then used in a consensus prediction step to compare two predictions made by the language model: one using only the sticker and the other using both the sticker and the original query.  If discrepancies arise, the sticker is refined through forward optimization to better align with the query and through inverse generation to ensure alignment with the model's inherent reasoning. This iterative refinement aims to improve the faithfulness of the language model's reasoning by grounding it in the most important details of the problem context.
> <details>
> <summary>read the caption</summary>
> Figure 5: Four core operations in SIFT: (i) Sticker Generation (SG), (ii) Consensus Prediction (CP), (iii) Forward Optimization (FO), (iv) Inverse Generation (IG).
> </details>



![](https://arxiv.org/html/2502.14922/x6.png)

> 🔼 Figure 6 presents a comprehensive comparison of the proposed SIFT method and the traditional zero-shot Chain-of-Thought (CoT) approach across a range of LLMs and benchmark datasets.  SIFT is broken down into three stages to illustrate its iterative improvement process.  Stage 1 uses Sticker Generation (SG) and Consensus Prediction (CP).  Stages 2 and 3 refine the Sticker through forward optimization (+FO) and inverse generation (+IG), respectively.  The figure uses bidirectional arrows to visually emphasize the significant performance gains achieved by the complete SIFT method (Stage 3) over the baseline zero-shot CoT method.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Comparison of SIFT and traditional Zero-shot CoT across multiple models and datasets. We divide SIFT into three stages: Stage 1 only uses SG & CP, while Stage 2 and Stage 3 optimize the Sticker through forward (+FO) and inverse (+IG) direction, respectively. The bidirectional arrows in the figure highlight the performance gap between Zero-shot CoT and the complete SIFT (i.e., Stage 3). We see that in nearly all scenarios, SIFT leads to a significant performance improvement.
> </details>



![](https://arxiv.org/html/2502.14922/x7.png)

> 🔼 Figure 7 shows the performance gains achieved by iteratively optimizing the Sticker in the SIFT framework.  The x-axis represents the average number of tokens used per sample, while the y-axis shows the accuracy.  Three stages are depicted: Stage 1 (SG & CP), Stage 2 (+FO), and Stage 3 (+IG).  As the average number of tokens increases (reflecting more iterative refinement), the accuracy consistently improves. The largest improvements in accuracy are seen in the initial iterations of Stage 2 (introducing forward optimization) and Stage 3 (adding inverse generation).  This indicates that the initial refinements of the Sticker are most impactful on the overall reasoning accuracy, with diminishing returns on subsequent iterations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Iterative optimization results for SIFT. The performance improves as the number of tokens per sample increases across different stages. Significant gains are observed in the first repeats of Stage 2 and Stage 3.
> </details>



![](https://arxiv.org/html/2502.14922/x8.png)

> 🔼 Figure 8 presents Venn diagrams that visually represent the agreement between predictions made using two different approaches: one using only the generated 'Sticker,' and the other using both the 'Sticker' and the original 'Query.' The percentages shown indicate the accuracy of instances where both methods produced identical predictions.  Analyzing the diagrams reveals a substantial improvement in prediction alignment.  From Stage 1 to Stage 2 (incorporating Forward Optimization), accuracy increases by 6.14%, and from Stage 2 to Stage 3 (adding Inverse Generation), the accuracy improves another 4.85%. This demonstrates that the combination of Forward Optimization and Inverse Generation significantly enhances the consistency of predictions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Venn diagrams illustrating the accuracy of predictions obtained from the “Only Sticker” and “Query & Sticker” representations at each stage. The percentages represent the accuracy where both methods correctly predict the same outcomes. From Stage 1 to Stage 2, the accuracy increases by 6.14%, and from Stage 2 to Stage 3, it increases by 4.85%. The results show the significant impact of Forward Optimization (FO) and Inverse Generation (IG) in improving prediction alignment from the two representations.
> </details>



![](https://arxiv.org/html/2502.14922/x9.png)

> 🔼 Figure 9 illustrates a comparison of SIFT and Self-Consistency (SC) methods in terms of their accuracy and efficiency.  The x-axis represents the average number of tokens per sample, while the y-axis shows the accuracy achieved. Solid lines depict the number of output tokens used by each method (blue for SC, red for SIFT), and dashed lines represent the total tokens consumed (including prompts and formatting).  Crucially, the caption highlights that SIFT's total token count fluctuates because of additional formatting requirements and example constraints in the prompts.  Despite this fluctuation, the results demonstrate that SIFT achieves comparable accuracy to SC while using considerably fewer output tokens, showcasing its superior efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison of SIFT and standard Self-Consistency (SC) in terms of accuracy versus average tokens per sample. The solid lines represent the output tokens used by SC (blue) and SIFT (red), while the dashed lines indicate the total tokens consumed. The “*” symbol in the legend denotes that the total tokens for SIFT fluctuate due to the additional formatting and example constraints used during inference. SIFT achieves comparable accuracy to SC while using significantly fewer output tokens, demonstrating its efficiency.
> </details>



![](https://arxiv.org/html/2502.14922/x10.png)

> 🔼 This figure compares the performance of SIFT-Consistency and Self-Consistency methods on the GSM8K dataset using Llama3.2-3B-Instruct model.  The x-axis represents the number of sampled responses per query, while the y-axis shows the accuracy.  The results demonstrate that SIFT-Consistency consistently achieves higher accuracy than Self-Consistency across different sampling numbers.
> <details>
> <summary>read the caption</summary>
> Figure 10: Comparison of SIFT-Consistency and Self-Consistency across different numbers of sampled responses per query. SIFT-Consistency consistently outperforms Self-Consistency.
> </details>



![](https://arxiv.org/html/2502.14922/x11.png)

> 🔼 This figure shows how the performance of the SIFT method changes as the average number of tokens used during inference increases, specifically when applied to the DeepSeek-R1 language model.  The x-axis represents the average number of tokens, and the y-axis shows the accuracy achieved on two benchmark datasets: AIME2024 and MATH-500.  Multiple lines represent different stages of the SIFT process, revealing performance improvement as more tokens are used.
> <details>
> <summary>read the caption</summary>
> Figure 11: SIFT performance on DeepSeek-R1 with increasing average token count.
> </details>



![](https://arxiv.org/html/2502.14922/x12.png)

> 🔼 This figure shows the prompt template used in the SIFT framework for generating a sticker from a prediction. The process takes the prediction as input and reconstructs the abstract which led to that prediction. The abstract must include conditions and a question, which are then used to generate the sticker. The prompt is formatted to elicit a response that contains the essential facts and constraints of the problem, which is crucial to SIFT's ability to ground LLM reasoning in contexts and mitigate factual drift.
> <details>
> <summary>read the caption</summary>
> Figure 12: Prompt format for generating a Sticker inversely from the prediction.
> </details>



![](https://arxiv.org/html/2502.14922/x13.png)

> 🔼 This figure shows the prompt templates used in the SIFT method for generating predictions.  Three different prediction generation scenarios are presented: using only the query, only the sticker, and a combination of both the query and sticker. Each template instructs the large language model (LLM) to reason step-by-step and provide the final answer within a box.
> <details>
> <summary>read the caption</summary>
> Figure 13: Prompt format for generating predictions.
> </details>



![](https://arxiv.org/html/2502.14922/x14.png)

> 🔼 This figure shows the prompt template used in the SIFT method for generating a 'Sticker' from a given query.  The prompt instructs the language model to extract key information from the query and organize it into a structured format. This format includes a numbered list of conditions (extracted facts) and a concise statement of the question. The instructions emphasize that each condition should be atomic and indivisible, and that any part of the reasoning process should not be included.  The goal is to extract the core factual information, clearly separating it from any inferential or reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt format for generating a Sticker from the query.
> </details>



![](https://arxiv.org/html/2502.14922/x15.png)

> 🔼 This figure shows the prompt template used in the forward optimization step of the SIFT algorithm.  The prompt aims to refine the 'Sticker' (a summary of key information from the query) by comparing it to the original query and correcting any inaccuracies or omissions. The goal is to ensure the Sticker accurately represents the essential facts and question before proceeding with the prediction. The prompt provides detailed instructions, including formats for presenting conditions, and sample inputs and outputs to guide the model's generation of the optimized sticker.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt format for forward optimization of the Sticker.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1">Stage 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1">Stage 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1">Stage 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Stage 3</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T2.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">from Stage 1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Llama</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">77.56</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.62</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.23</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">74.07</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">92.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">92.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">92.87</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">90.90</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different large language models, Llama3.2-3B-Instruct and Qwen2.5-7B-Instruct, on the GSM8K benchmark.  It shows the accuracy achieved at three different stages of the SIFT (Stick to the Facts) process: Stage 1 (only Sticker Generation and Consensus Prediction), Stage 2 (adding Forward Optimization), and Stage 3 (including Inverse Generation).  The key finding is that skipping Stage 2 and going directly from Stage 1 to Stage 3 leads to a decrease in accuracy, highlighting the importance of the intermediate optimization step in the SIFT process.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of Llama3.2-3B-Instruct and Qwen2.5-7B-Instruct on GSM8K, with and without Stage 2. The results show a performance drop when skipping directly from Stage 1 to Stage 3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.4.1.1">Strategy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.4.1.2">Accuracy</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.1"><math alttext="P_{Q,S}\verb| if |P_{Q,S}\verb|=|P_{S}\verb| else |P_{Q}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.4"><semantics id="S4.T3.1.1.1.m1.4a"><mrow id="S4.T3.1.1.1.m1.4.5" xref="S4.T3.1.1.1.m1.4.5.cmml"><msub id="S4.T3.1.1.1.m1.4.5.2" xref="S4.T3.1.1.1.m1.4.5.2.cmml"><mi id="S4.T3.1.1.1.m1.4.5.2.2" xref="S4.T3.1.1.1.m1.4.5.2.2.cmml">P</mi><mrow id="S4.T3.1.1.1.m1.2.2.2.4" xref="S4.T3.1.1.1.m1.2.2.2.3.cmml"><mi id="S4.T3.1.1.1.m1.1.1.1.1" xref="S4.T3.1.1.1.m1.1.1.1.1.cmml">Q</mi><mo id="S4.T3.1.1.1.m1.2.2.2.4.1" xref="S4.T3.1.1.1.m1.2.2.2.3.cmml">,</mo><mi id="S4.T3.1.1.1.m1.2.2.2.2" xref="S4.T3.1.1.1.m1.2.2.2.2.cmml">S</mi></mrow></msub><mo id="S4.T3.1.1.1.m1.4.5.1" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.1.1.1.m1.4.5.3" mathvariant="monospace" xref="S4.T3.1.1.1.m1.4.5.3.cmml"> if </mi><mo id="S4.T3.1.1.1.m1.4.5.1a" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><msub id="S4.T3.1.1.1.m1.4.5.4" xref="S4.T3.1.1.1.m1.4.5.4.cmml"><mi id="S4.T3.1.1.1.m1.4.5.4.2" xref="S4.T3.1.1.1.m1.4.5.4.2.cmml">P</mi><mrow id="S4.T3.1.1.1.m1.4.4.2.4" xref="S4.T3.1.1.1.m1.4.4.2.3.cmml"><mi id="S4.T3.1.1.1.m1.3.3.1.1" xref="S4.T3.1.1.1.m1.3.3.1.1.cmml">Q</mi><mo id="S4.T3.1.1.1.m1.4.4.2.4.1" xref="S4.T3.1.1.1.m1.4.4.2.3.cmml">,</mo><mi id="S4.T3.1.1.1.m1.4.4.2.2" xref="S4.T3.1.1.1.m1.4.4.2.2.cmml">S</mi></mrow></msub><mo id="S4.T3.1.1.1.m1.4.5.1b" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.1.1.1.m1.4.5.5" mathvariant="monospace" xref="S4.T3.1.1.1.m1.4.5.5.cmml">=</mi><mo id="S4.T3.1.1.1.m1.4.5.1c" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><msub id="S4.T3.1.1.1.m1.4.5.6" xref="S4.T3.1.1.1.m1.4.5.6.cmml"><mi id="S4.T3.1.1.1.m1.4.5.6.2" xref="S4.T3.1.1.1.m1.4.5.6.2.cmml">P</mi><mi id="S4.T3.1.1.1.m1.4.5.6.3" xref="S4.T3.1.1.1.m1.4.5.6.3.cmml">S</mi></msub><mo id="S4.T3.1.1.1.m1.4.5.1d" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.1.1.1.m1.4.5.7" mathvariant="monospace" xref="S4.T3.1.1.1.m1.4.5.7.cmml"> else </mi><mo id="S4.T3.1.1.1.m1.4.5.1e" xref="S4.T3.1.1.1.m1.4.5.1.cmml">⁢</mo><msub id="S4.T3.1.1.1.m1.4.5.8" xref="S4.T3.1.1.1.m1.4.5.8.cmml"><mi id="S4.T3.1.1.1.m1.4.5.8.2" xref="S4.T3.1.1.1.m1.4.5.8.2.cmml">P</mi><mi id="S4.T3.1.1.1.m1.4.5.8.3" xref="S4.T3.1.1.1.m1.4.5.8.3.cmml">Q</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.4b"><apply id="S4.T3.1.1.1.m1.4.5.cmml" xref="S4.T3.1.1.1.m1.4.5"><times id="S4.T3.1.1.1.m1.4.5.1.cmml" xref="S4.T3.1.1.1.m1.4.5.1"></times><apply id="S4.T3.1.1.1.m1.4.5.2.cmml" xref="S4.T3.1.1.1.m1.4.5.2"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.4.5.2.1.cmml" xref="S4.T3.1.1.1.m1.4.5.2">subscript</csymbol><ci id="S4.T3.1.1.1.m1.4.5.2.2.cmml" xref="S4.T3.1.1.1.m1.4.5.2.2">𝑃</ci><list id="S4.T3.1.1.1.m1.2.2.2.3.cmml" xref="S4.T3.1.1.1.m1.2.2.2.4"><ci id="S4.T3.1.1.1.m1.1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1.1">𝑄</ci><ci id="S4.T3.1.1.1.m1.2.2.2.2.cmml" xref="S4.T3.1.1.1.m1.2.2.2.2">𝑆</ci></list></apply><ci id="S4.T3.1.1.1.m1.4.5.3.cmml" xref="S4.T3.1.1.1.m1.4.5.3">monospace- if </ci><apply id="S4.T3.1.1.1.m1.4.5.4.cmml" xref="S4.T3.1.1.1.m1.4.5.4"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.4.5.4.1.cmml" xref="S4.T3.1.1.1.m1.4.5.4">subscript</csymbol><ci id="S4.T3.1.1.1.m1.4.5.4.2.cmml" xref="S4.T3.1.1.1.m1.4.5.4.2">𝑃</ci><list id="S4.T3.1.1.1.m1.4.4.2.3.cmml" xref="S4.T3.1.1.1.m1.4.4.2.4"><ci id="S4.T3.1.1.1.m1.3.3.1.1.cmml" xref="S4.T3.1.1.1.m1.3.3.1.1">𝑄</ci><ci id="S4.T3.1.1.1.m1.4.4.2.2.cmml" xref="S4.T3.1.1.1.m1.4.4.2.2">𝑆</ci></list></apply><ci id="S4.T3.1.1.1.m1.4.5.5.cmml" xref="S4.T3.1.1.1.m1.4.5.5">monospace-=</ci><apply id="S4.T3.1.1.1.m1.4.5.6.cmml" xref="S4.T3.1.1.1.m1.4.5.6"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.4.5.6.1.cmml" xref="S4.T3.1.1.1.m1.4.5.6">subscript</csymbol><ci id="S4.T3.1.1.1.m1.4.5.6.2.cmml" xref="S4.T3.1.1.1.m1.4.5.6.2">𝑃</ci><ci id="S4.T3.1.1.1.m1.4.5.6.3.cmml" xref="S4.T3.1.1.1.m1.4.5.6.3">𝑆</ci></apply><ci id="S4.T3.1.1.1.m1.4.5.7.cmml" xref="S4.T3.1.1.1.m1.4.5.7">monospace- else </ci><apply id="S4.T3.1.1.1.m1.4.5.8.cmml" xref="S4.T3.1.1.1.m1.4.5.8"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.4.5.8.1.cmml" xref="S4.T3.1.1.1.m1.4.5.8">subscript</csymbol><ci id="S4.T3.1.1.1.m1.4.5.8.2.cmml" xref="S4.T3.1.1.1.m1.4.5.8.2">𝑃</ci><ci id="S4.T3.1.1.1.m1.4.5.8.3.cmml" xref="S4.T3.1.1.1.m1.4.5.8.3">𝑄</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.4c">P_{Q,S}\verb| if |P_{Q,S}\verb|=|P_{S}\verb| else |P_{Q}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.4d">italic_P start_POSTSUBSCRIPT italic_Q , italic_S end_POSTSUBSCRIPT typewriter_if italic_P start_POSTSUBSCRIPT italic_Q , italic_S end_POSTSUBSCRIPT typewriter_= italic_P start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT typewriter_else italic_P start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2">77.56</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.2.2.1"><math alttext="P_{S}\verb| if |P_{S}\verb|=|P_{Q}\verb| else |P_{Q,S}" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.2"><semantics id="S4.T3.2.2.1.m1.2a"><mrow id="S4.T3.2.2.1.m1.2.3" xref="S4.T3.2.2.1.m1.2.3.cmml"><msub id="S4.T3.2.2.1.m1.2.3.2" xref="S4.T3.2.2.1.m1.2.3.2.cmml"><mi id="S4.T3.2.2.1.m1.2.3.2.2" xref="S4.T3.2.2.1.m1.2.3.2.2.cmml">P</mi><mi id="S4.T3.2.2.1.m1.2.3.2.3" xref="S4.T3.2.2.1.m1.2.3.2.3.cmml">S</mi></msub><mo id="S4.T3.2.2.1.m1.2.3.1" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.2.2.1.m1.2.3.3" mathvariant="monospace" xref="S4.T3.2.2.1.m1.2.3.3.cmml"> if </mi><mo id="S4.T3.2.2.1.m1.2.3.1a" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.2.2.1.m1.2.3.4" xref="S4.T3.2.2.1.m1.2.3.4.cmml"><mi id="S4.T3.2.2.1.m1.2.3.4.2" xref="S4.T3.2.2.1.m1.2.3.4.2.cmml">P</mi><mi id="S4.T3.2.2.1.m1.2.3.4.3" xref="S4.T3.2.2.1.m1.2.3.4.3.cmml">S</mi></msub><mo id="S4.T3.2.2.1.m1.2.3.1b" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.2.2.1.m1.2.3.5" mathvariant="monospace" xref="S4.T3.2.2.1.m1.2.3.5.cmml">=</mi><mo id="S4.T3.2.2.1.m1.2.3.1c" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.2.2.1.m1.2.3.6" xref="S4.T3.2.2.1.m1.2.3.6.cmml"><mi id="S4.T3.2.2.1.m1.2.3.6.2" xref="S4.T3.2.2.1.m1.2.3.6.2.cmml">P</mi><mi id="S4.T3.2.2.1.m1.2.3.6.3" xref="S4.T3.2.2.1.m1.2.3.6.3.cmml">Q</mi></msub><mo id="S4.T3.2.2.1.m1.2.3.1d" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.2.2.1.m1.2.3.7" mathvariant="monospace" xref="S4.T3.2.2.1.m1.2.3.7.cmml"> else </mi><mo id="S4.T3.2.2.1.m1.2.3.1e" xref="S4.T3.2.2.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.2.2.1.m1.2.3.8" xref="S4.T3.2.2.1.m1.2.3.8.cmml"><mi id="S4.T3.2.2.1.m1.2.3.8.2" xref="S4.T3.2.2.1.m1.2.3.8.2.cmml">P</mi><mrow id="S4.T3.2.2.1.m1.2.2.2.4" xref="S4.T3.2.2.1.m1.2.2.2.3.cmml"><mi id="S4.T3.2.2.1.m1.1.1.1.1" xref="S4.T3.2.2.1.m1.1.1.1.1.cmml">Q</mi><mo id="S4.T3.2.2.1.m1.2.2.2.4.1" xref="S4.T3.2.2.1.m1.2.2.2.3.cmml">,</mo><mi id="S4.T3.2.2.1.m1.2.2.2.2" xref="S4.T3.2.2.1.m1.2.2.2.2.cmml">S</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.2b"><apply id="S4.T3.2.2.1.m1.2.3.cmml" xref="S4.T3.2.2.1.m1.2.3"><times id="S4.T3.2.2.1.m1.2.3.1.cmml" xref="S4.T3.2.2.1.m1.2.3.1"></times><apply id="S4.T3.2.2.1.m1.2.3.2.cmml" xref="S4.T3.2.2.1.m1.2.3.2"><csymbol cd="ambiguous" id="S4.T3.2.2.1.m1.2.3.2.1.cmml" xref="S4.T3.2.2.1.m1.2.3.2">subscript</csymbol><ci id="S4.T3.2.2.1.m1.2.3.2.2.cmml" xref="S4.T3.2.2.1.m1.2.3.2.2">𝑃</ci><ci id="S4.T3.2.2.1.m1.2.3.2.3.cmml" xref="S4.T3.2.2.1.m1.2.3.2.3">𝑆</ci></apply><ci id="S4.T3.2.2.1.m1.2.3.3.cmml" xref="S4.T3.2.2.1.m1.2.3.3">monospace- if </ci><apply id="S4.T3.2.2.1.m1.2.3.4.cmml" xref="S4.T3.2.2.1.m1.2.3.4"><csymbol cd="ambiguous" id="S4.T3.2.2.1.m1.2.3.4.1.cmml" xref="S4.T3.2.2.1.m1.2.3.4">subscript</csymbol><ci id="S4.T3.2.2.1.m1.2.3.4.2.cmml" xref="S4.T3.2.2.1.m1.2.3.4.2">𝑃</ci><ci id="S4.T3.2.2.1.m1.2.3.4.3.cmml" xref="S4.T3.2.2.1.m1.2.3.4.3">𝑆</ci></apply><ci id="S4.T3.2.2.1.m1.2.3.5.cmml" xref="S4.T3.2.2.1.m1.2.3.5">monospace-=</ci><apply id="S4.T3.2.2.1.m1.2.3.6.cmml" xref="S4.T3.2.2.1.m1.2.3.6"><csymbol cd="ambiguous" id="S4.T3.2.2.1.m1.2.3.6.1.cmml" xref="S4.T3.2.2.1.m1.2.3.6">subscript</csymbol><ci id="S4.T3.2.2.1.m1.2.3.6.2.cmml" xref="S4.T3.2.2.1.m1.2.3.6.2">𝑃</ci><ci id="S4.T3.2.2.1.m1.2.3.6.3.cmml" xref="S4.T3.2.2.1.m1.2.3.6.3">𝑄</ci></apply><ci id="S4.T3.2.2.1.m1.2.3.7.cmml" xref="S4.T3.2.2.1.m1.2.3.7">monospace- else </ci><apply id="S4.T3.2.2.1.m1.2.3.8.cmml" xref="S4.T3.2.2.1.m1.2.3.8"><csymbol cd="ambiguous" id="S4.T3.2.2.1.m1.2.3.8.1.cmml" xref="S4.T3.2.2.1.m1.2.3.8">subscript</csymbol><ci id="S4.T3.2.2.1.m1.2.3.8.2.cmml" xref="S4.T3.2.2.1.m1.2.3.8.2">𝑃</ci><list id="S4.T3.2.2.1.m1.2.2.2.3.cmml" xref="S4.T3.2.2.1.m1.2.2.2.4"><ci id="S4.T3.2.2.1.m1.1.1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1.1.1">𝑄</ci><ci id="S4.T3.2.2.1.m1.2.2.2.2.cmml" xref="S4.T3.2.2.1.m1.2.2.2.2">𝑆</ci></list></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.2c">P_{S}\verb| if |P_{S}\verb|=|P_{Q}\verb| else |P_{Q,S}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.2d">italic_P start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT typewriter_if italic_P start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT typewriter_= italic_P start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT typewriter_else italic_P start_POSTSUBSCRIPT italic_Q , italic_S end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2">77.02</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.3.1"><math alttext="P_{Q}\verb| if |P_{Q}\verb|=|P_{Q,S}\verb| else |P_{S}" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.2"><semantics id="S4.T3.3.3.1.m1.2a"><mrow id="S4.T3.3.3.1.m1.2.3" xref="S4.T3.3.3.1.m1.2.3.cmml"><msub id="S4.T3.3.3.1.m1.2.3.2" xref="S4.T3.3.3.1.m1.2.3.2.cmml"><mi id="S4.T3.3.3.1.m1.2.3.2.2" xref="S4.T3.3.3.1.m1.2.3.2.2.cmml">P</mi><mi id="S4.T3.3.3.1.m1.2.3.2.3" xref="S4.T3.3.3.1.m1.2.3.2.3.cmml">Q</mi></msub><mo id="S4.T3.3.3.1.m1.2.3.1" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.3.3.1.m1.2.3.3" mathvariant="monospace" xref="S4.T3.3.3.1.m1.2.3.3.cmml"> if </mi><mo id="S4.T3.3.3.1.m1.2.3.1a" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.3.3.1.m1.2.3.4" xref="S4.T3.3.3.1.m1.2.3.4.cmml"><mi id="S4.T3.3.3.1.m1.2.3.4.2" xref="S4.T3.3.3.1.m1.2.3.4.2.cmml">P</mi><mi id="S4.T3.3.3.1.m1.2.3.4.3" xref="S4.T3.3.3.1.m1.2.3.4.3.cmml">Q</mi></msub><mo id="S4.T3.3.3.1.m1.2.3.1b" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.3.3.1.m1.2.3.5" mathvariant="monospace" xref="S4.T3.3.3.1.m1.2.3.5.cmml">=</mi><mo id="S4.T3.3.3.1.m1.2.3.1c" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.3.3.1.m1.2.3.6" xref="S4.T3.3.3.1.m1.2.3.6.cmml"><mi id="S4.T3.3.3.1.m1.2.3.6.2" xref="S4.T3.3.3.1.m1.2.3.6.2.cmml">P</mi><mrow id="S4.T3.3.3.1.m1.2.2.2.4" xref="S4.T3.3.3.1.m1.2.2.2.3.cmml"><mi id="S4.T3.3.3.1.m1.1.1.1.1" xref="S4.T3.3.3.1.m1.1.1.1.1.cmml">Q</mi><mo id="S4.T3.3.3.1.m1.2.2.2.4.1" xref="S4.T3.3.3.1.m1.2.2.2.3.cmml">,</mo><mi id="S4.T3.3.3.1.m1.2.2.2.2" xref="S4.T3.3.3.1.m1.2.2.2.2.cmml">S</mi></mrow></msub><mo id="S4.T3.3.3.1.m1.2.3.1d" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><mi class="ltx_mathvariant_monospace" id="S4.T3.3.3.1.m1.2.3.7" mathvariant="monospace" xref="S4.T3.3.3.1.m1.2.3.7.cmml"> else </mi><mo id="S4.T3.3.3.1.m1.2.3.1e" xref="S4.T3.3.3.1.m1.2.3.1.cmml">⁢</mo><msub id="S4.T3.3.3.1.m1.2.3.8" xref="S4.T3.3.3.1.m1.2.3.8.cmml"><mi id="S4.T3.3.3.1.m1.2.3.8.2" xref="S4.T3.3.3.1.m1.2.3.8.2.cmml">P</mi><mi id="S4.T3.3.3.1.m1.2.3.8.3" xref="S4.T3.3.3.1.m1.2.3.8.3.cmml">S</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.2b"><apply id="S4.T3.3.3.1.m1.2.3.cmml" xref="S4.T3.3.3.1.m1.2.3"><times id="S4.T3.3.3.1.m1.2.3.1.cmml" xref="S4.T3.3.3.1.m1.2.3.1"></times><apply id="S4.T3.3.3.1.m1.2.3.2.cmml" xref="S4.T3.3.3.1.m1.2.3.2"><csymbol cd="ambiguous" id="S4.T3.3.3.1.m1.2.3.2.1.cmml" xref="S4.T3.3.3.1.m1.2.3.2">subscript</csymbol><ci id="S4.T3.3.3.1.m1.2.3.2.2.cmml" xref="S4.T3.3.3.1.m1.2.3.2.2">𝑃</ci><ci id="S4.T3.3.3.1.m1.2.3.2.3.cmml" xref="S4.T3.3.3.1.m1.2.3.2.3">𝑄</ci></apply><ci id="S4.T3.3.3.1.m1.2.3.3.cmml" xref="S4.T3.3.3.1.m1.2.3.3">monospace- if </ci><apply id="S4.T3.3.3.1.m1.2.3.4.cmml" xref="S4.T3.3.3.1.m1.2.3.4"><csymbol cd="ambiguous" id="S4.T3.3.3.1.m1.2.3.4.1.cmml" xref="S4.T3.3.3.1.m1.2.3.4">subscript</csymbol><ci id="S4.T3.3.3.1.m1.2.3.4.2.cmml" xref="S4.T3.3.3.1.m1.2.3.4.2">𝑃</ci><ci id="S4.T3.3.3.1.m1.2.3.4.3.cmml" xref="S4.T3.3.3.1.m1.2.3.4.3">𝑄</ci></apply><ci id="S4.T3.3.3.1.m1.2.3.5.cmml" xref="S4.T3.3.3.1.m1.2.3.5">monospace-=</ci><apply id="S4.T3.3.3.1.m1.2.3.6.cmml" xref="S4.T3.3.3.1.m1.2.3.6"><csymbol cd="ambiguous" id="S4.T3.3.3.1.m1.2.3.6.1.cmml" xref="S4.T3.3.3.1.m1.2.3.6">subscript</csymbol><ci id="S4.T3.3.3.1.m1.2.3.6.2.cmml" xref="S4.T3.3.3.1.m1.2.3.6.2">𝑃</ci><list id="S4.T3.3.3.1.m1.2.2.2.3.cmml" xref="S4.T3.3.3.1.m1.2.2.2.4"><ci id="S4.T3.3.3.1.m1.1.1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1.1.1">𝑄</ci><ci id="S4.T3.3.3.1.m1.2.2.2.2.cmml" xref="S4.T3.3.3.1.m1.2.2.2.2">𝑆</ci></list></apply><ci id="S4.T3.3.3.1.m1.2.3.7.cmml" xref="S4.T3.3.3.1.m1.2.3.7">monospace- else </ci><apply id="S4.T3.3.3.1.m1.2.3.8.cmml" xref="S4.T3.3.3.1.m1.2.3.8"><csymbol cd="ambiguous" id="S4.T3.3.3.1.m1.2.3.8.1.cmml" xref="S4.T3.3.3.1.m1.2.3.8">subscript</csymbol><ci id="S4.T3.3.3.1.m1.2.3.8.2.cmml" xref="S4.T3.3.3.1.m1.2.3.8.2">𝑃</ci><ci id="S4.T3.3.3.1.m1.2.3.8.3.cmml" xref="S4.T3.3.3.1.m1.2.3.8.3">𝑆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.2c">P_{Q}\verb| if |P_{Q}\verb|=|P_{Q,S}\verb| else |P_{S}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.2d">italic_P start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT typewriter_if italic_P start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT typewriter_= italic_P start_POSTSUBSCRIPT italic_Q , italic_S end_POSTSUBSCRIPT typewriter_else italic_P start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.2">76.04</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 compares different strategies for making predictions in the Consensus Prediction (CP) step of the SIFT algorithm.  It shows the accuracy achieved when using predictions from the query alone (PQ), the Sticker alone (PS), and the query combined with the Sticker (PQ,S). The table highlights that the prediction strategy used in SIFT (first row) provides the highest accuracy, demonstrating its superiority.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison of various CP strategies. Here, PQsubscript𝑃𝑄P_{Q}italic_P start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT, PSsubscript𝑃𝑆P_{S}italic_P start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT, and PQ,Ssubscript𝑃𝑄𝑆P_{Q,S}italic_P start_POSTSUBSCRIPT italic_Q , italic_S end_POSTSUBSCRIPT represent the predictions generated from query, Sticker, and query augmented with Sticker, respectively. The first row of the table represents the strategy used in SIFT, which is shown to be the optimal approach.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14922/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14922/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}