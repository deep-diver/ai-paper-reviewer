---
title: "LLMs Can Easily Learn to Reason from Demonstrations Structure, not content, is what matters!"
summary: "LLMs can be effectively taught complex reasoning via efficient fine-tuning on demonstration data focusing on *structure*, not content, of the reasoning process."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 UC Berkeley",]
showSummary: true
date: 2025-02-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.07374 {{< /keyword >}}
{{< keyword icon="writer" >}} Dacheng Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.07374" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.07374" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.07374/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large language models (LLMs) struggle with complex reasoning tasks. Existing methods for improving their reasoning capabilities are either proprietary or computationally expensive.  This creates a need for more efficient and easily replicable techniques. 



This paper introduces a data-efficient and parameter-efficient approach to train LLMs for complex reasoning.  The researchers found that by fine-tuning a model on a relatively small number of demonstrations, they could significantly improve its reasoning abilities. **Crucially, they discovered that the *structure* of the reasoning steps in the demonstrations is far more important than the correctness of the individual steps or the specific content.** This insight has significant implications for the design and training of future LLMs focused on reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can learn complex reasoning through efficient fine-tuning with minimal data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The structure of reasoning demonstrations matters more than the content. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Parameter-efficient methods like LoRA can achieve comparable performance to full fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) and reasoning.  It **demonstrates a surprisingly data-efficient and parameter-efficient method** for teaching LLMs to reason using chain-of-thought prompting. The findings challenge existing assumptions and open new avenues for research on LLM reasoning capabilities and training techniques. This work is highly relevant to current trends in efficient LLM training and improving reasoning abilities.

------
#### Visual Insights



![](https://arxiv.org/html/2502.07374/x1.png)

> 🔼 This figure shows the comparison of three different models' responses to the same question.  The first is the base model, which does not utilize Long Chain of Thought (Long CoT) reasoning. The second model uses Long CoT reasoning trained via supervised fine-tuning (SFT), and the third model uses Long CoT reasoning fine-tuned with low-rank adaptation (LoRA).  The different response styles and quality highlight the impact of Long CoT training on the model's reasoning ability. 
> <details>
> <summary>read the caption</summary>
> (a) Responses of the base model, with Long CoT SFT, and with Long CoT LoRA.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.2.1">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.3.1">AIME24</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.4.1">AMC23</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.5.1">Olympiad.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.1.1.6.1">LCB.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.1.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2.5-32B-Inst.</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">84.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">48.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">QwQ</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">90.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">58.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.3.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">o1-preview</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">44.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">87.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">59.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.5.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T1.5.1.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.5.5.1.1" style="background-color:#E6E6E6;">7k QwQ Samples</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">SFT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">87.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">77.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">57.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">57.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">LoRA (r=64)</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">86.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.7.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">77.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">57.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.7.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">56.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.8.8" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T1.5.1.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.1.8.8.1.1" style="background-color:#E6E6E6;">17k QwQ Samples</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">SFT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">87.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.9.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">57.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.5.1.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">LoRA (r=64)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">86.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.1.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">56.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of fine-tuning the Qwen2.5-32B-Instruct model using both full parameter fine-tuning (SFT) and low-rank adaptation (LoRA) on the task of generating Long Chain-of-Thought (Long CoT) reasoning.  The model was trained with 7k and 17k samples from the QwQ dataset.  The results are shown across five different reasoning benchmarks: Math-500, AIME 2024, AMC 23, OlympiadBench, and LiveCodeBench.  The table highlights the parameter efficiency of learning Long CoT reasoning, demonstrating competitive performance with the proprietary 01-preview model using significantly fewer parameters and a smaller dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Model accuracy with SFT and LoRA (rank=64). Fine-tuning performed on Qwen2.5-32B-Instruct with QwQ samples. “Olympiad.” is short for “OlympiadBench”, “LCB.” is short for “LiveCodeBench”. We find that the learning process of Long CoT can be parameter efficient.
> </details>





### In-depth insights


#### LLM Reasoning Distillation
LLM Reasoning Distillation explores the efficient transfer of reasoning capabilities from a large language model (LLM) to another, often a smaller or more resource-constrained model.  This process leverages the knowledge embedded within a powerful, pre-trained LLM, acting as a teacher, to improve the reasoning skills of a student LLM. **Data efficiency** is a core principle; rather than training from scratch, the student LLM is fine-tuned using a relatively small, curated dataset of reasoning examples generated by the teacher.  **Parameter efficiency** is another key aspect, often utilizing techniques like LoRA (Low-Rank Adaptation) to minimize the number of updated parameters in the student model, reducing computational costs.  Furthermore, the research emphasizes the significance of the **structural elements** of the reasoning process over the precise content of individual steps.  The structure, reflecting the logical flow, reflection, and revision, proves critical for successful knowledge transfer. This distillation approach thus highlights a path towards more affordable and accessible LLM-based reasoning systems.

#### Long CoT Structure
The research emphasizes the crucial role of **Long Chain of Thought (Long CoT) structure** in effective reasoning, surpassing the significance of individual step content.  Experiments involving content perturbations (incorrect answers, altered digits, keyword removal) resulted in minimal performance drops, highlighting the model's robustness to factual errors.  Conversely, **structural modifications (shuffling, deleting, inserting steps)** significantly impaired accuracy, demonstrating that logical flow and coherence are paramount for successful reasoning. This underscores that LLMs don't just need correct information, but rather a well-organized, structured reasoning process to excel. The findings suggest that future LLM training should prioritize the development of robust, logically consistent reasoning structures over merely accumulating factual knowledge.  **Data efficiency is also highlighted**, showing that a small number of well-structured Long CoT samples are sufficient to train effective reasoning models, advocating for a shift towards structured data curation in LLM development.

#### Data-Efficient Tuning
Data-efficient tuning in large language models (LLMs) focuses on achieving significant performance improvements with minimal training data. This is crucial for reducing computational costs and time associated with training, making LLMs more accessible and sustainable.  **Effective techniques often involve leveraging existing models or carefully curated datasets**.  The core idea is to transfer knowledge from a larger, well-trained model (the teacher) to a smaller, less-trained model (the student) using a relatively small number of high-quality examples.  **This approach contrasts with traditional methods that require vast amounts of data for optimal performance.**  By meticulously selecting and utilizing representative training data, data-efficient tuning significantly lowers the resource demands of LLM training while retaining or even surpassing the performance of models trained with much larger datasets.  **The key is not simply reducing the quantity of data but also improving its quality and relevance**, ensuring the small dataset accurately reflects the nuances of the target task.

#### Structural Sensitivity
The concept of 'Structural Sensitivity' in the context of large language models (LLMs) and their reasoning capabilities highlights the crucial role of the **logical organization** of the reasoning process, rather than the specific content of individual steps.  The research emphasizes that while minor alterations to the content (e.g., incorrect numbers or missing keywords) have minimal impact on performance, **disruptions to the structural integrity** of the reasoning chain, such as shuffling or deleting steps, significantly impair the model's ability to generate correct and coherent responses.  This finding underscores the importance of designing training data that **prioritizes structural consistency** and logical flow.  The effectiveness of LLM reasoning is not solely dependent on factual knowledge but heavily influenced by the **architecture and sequencing** of the reasoning steps.  **Data efficiency** can be substantially improved by focusing on structural correctness, thus making the training process for sophisticated reasoning tasks more efficient and less resource-intensive.  Future research in this area should concentrate on developing strategies to create and optimize the structure of training data for improved LLM reasoning performance.

#### Future Directions
Future research could explore **scaling Long CoT learning to even larger language models**, investigating potential limitations and exploring techniques to maintain efficiency.  **Understanding the interplay between model architecture and Long CoT effectiveness** is crucial, potentially revealing architectural modifications to enhance learning. The impact of different training data generation methods on the quality and efficiency of Long CoT learning also deserves further scrutiny.  A deeper exploration of **the relationship between prompt engineering and the elicitation of effective Long CoT reasoning** is needed, as is further investigation into **robustness against adversarial attacks or noisy data**. Finally, exploring applications of Long CoT reasoning in more diverse domains such as scientific discovery, complex problem-solving in robotics, and creative content generation would demonstrate the true potential of this learning paradigm.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.07374/x2.png)

> 🔼 The bar chart compares the performance of different LLMs (Large Language Models) on five reasoning benchmarks: Math-500, AIME 2024, AMC 2023, OlympiadBench, and LiveCodeBench.  It shows the accuracy achieved by different models, including Qwen2.5-32B-Instruct with and without fine-tuning using Long Chain of Thought (Long CoT) samples, and also includes the performance of the OpenAI o1-preview model as a reference point.  This visual representation allows for easy comparison of the different models across various reasoning tasks, highlighting the impact of Long CoT fine-tuning on model performance.
> <details>
> <summary>read the caption</summary>
> (b) Performance of different models on five difference reasoning benchmarks.
> </details>



![](https://arxiv.org/html/2502.07374/x3.png)

> 🔼 This figure demonstrates the data and parameter efficiency of fine-tuning a large language model (LLM) to perform Long Chain-of-Thought (Long CoT) reasoning.  The top panel shows example Long CoT reasoning outputs, highlighting the use of keywords like 'However' and 'Alternatively' which indicate reflection and backtracking. The bottom panel displays a significant performance improvement across five popular math and coding benchmarks after fine-tuning with only 17,000 Long CoT samples using either Low-Rank Adaptation (LoRA) or full parameter-tuning. The base model used for fine-tuning was Qwen2.5-32B-Instruct.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning to reason is data- and parameter-efficient. When fine-tuned on a small amount (17k) of Long CoT samples distilled and reject-sampled from DeepSeek-R1 with either LoRA or full-parameter tuning, the model easily learns to perform reflection and backtracking by using keywords such as “However” and “Alternatively” (Top). Consequently, the fine-tuned models improve significantly across five popular math and coding benchmarks (Bottom). For fine-tuning, the base model is Qwen2.5-32B-Instruct.
> </details>



![](https://arxiv.org/html/2502.07374/x4.png)

> 🔼 This figure shows the impact of different training data sizes on the accuracy of a Qwen-32B-Instruct language model fine-tuned using the DeepSeek R1 model as a teacher.  The x-axis represents the number of training samples from the DeepSeek R1 model, and the y-axis shows the average accuracy across five reasoning benchmarks. The figure demonstrates that even a relatively small amount of training data (e.g., 16,000 samples) leads to a significant improvement in the student model's performance, achieving a 15.2% increase in average accuracy. The plot also includes the performance of the DeepSeek R1 model for comparison.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model accuracy with different data sizes, and comparison to DeepSeek R1. The teacher model is DeepSeek R1, and the student model is Qwen-32B-Instruct trained with full parameter fine-tuning. While the student model continues to benefits from more SFT data from DeepSeek R1, a small amount of data, e.g., 16k is sufficient to significantly boost the average performance by 15.2%.
> </details>



![](https://arxiv.org/html/2502.07374/x5.png)

> 🔼 This figure demonstrates the impact of modifying the structure of reasoning steps in a Long Chain of Thought (Long CoT) on model performance.  Three types of structural modifications were applied: deleting steps, inserting steps, and shuffling steps.  The results show that altering the structure significantly reduces model accuracy, far more than changing the content within individual steps. This highlights the importance of maintaining logical flow and coherence in the reasoning process for effective performance.  The figure visually represents the impact of these structural changes on the model's ability to reason correctly.
> <details>
> <summary>read the caption</summary>
> Figure 3: Reasoning step modifications. To evaluate perturbations to global structure across reasoning steps, we perform three modifications: deletion, insertion, and shuffling. These modifications break logical consistency across steps and degrade model accuracy far more than changes to local content within reasoning steps.
> </details>



![](https://arxiv.org/html/2502.07374/x6.png)

> 🔼 This figure demonstrates the effectiveness of Long Chain of Thought (Long CoT) fine-tuning across various language models.  It compares the accuracy of several models (of different sizes and architectures) before and after fine-tuning using 17,000 samples from the R1-Preview dataset. The results show that fine-tuning with Long CoT data significantly improves the reasoning capabilities of most models, indicating the generalizability and benefits of this training approach.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Generalization to other models. Accuracy for models of different sizes and architectures without SFT (green) and with SFT (blue). Most models show significant improvements when fine-tuned with 17k samples from R1-Preview, showing that the Long CoT fine-tuning is beneficial across models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.6.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.2.1" style="font-size:80%;">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.3.1" style="font-size:80%;">AIME24</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.4.1" style="font-size:80%;">AMC23</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.5.1" style="font-size:80%;">Olympiad.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.1.1.6.1" style="font-size:80%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.6.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.2.2.1.1" style="font-size:80%;background-color:#E6E6E6;">Baselines</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.1.1" style="font-size:80%;">Original</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.2.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.3.1" style="font-size:80%;">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.4.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.5.1" style="font-size:80%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.3.3.6.1" style="font-size:80%;">56.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.1.1" style="font-size:80%;">Correct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.2.1" style="font-size:80%;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.3.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.5.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.4.4.6.1" style="font-size:80%;">66.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.5.5" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.6.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.5.5.1.1" style="font-size:80%;background-color:#E6E6E6;">Content Modifications</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.6.6.1.1" style="font-size:80%;">Wrong Answers</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.6.6.2.1" style="font-size:80%;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.6.6.3.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.6.6.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.6.6.5.1" style="font-size:80%;">56.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.6.6.6.1" style="font-size:80%;">63.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.7.7.1.1" style="font-size:80%;">Corrupted Digits</span></th>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.1.1" style="font-size:80%;">100%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.2.1" style="font-size:80%;">5.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.3.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.4.1" style="font-size:80%;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.5.1" style="font-size:80%;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.8.8.6.1" style="font-size:80%;">2.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.1.1" style="font-size:80%;">70%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.2.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.3.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.5.1" style="font-size:80%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.9.9.6.1" style="font-size:80%;">62.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.10.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.1.1" style="font-size:80%;">50%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.2.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.3.1" style="font-size:80%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.5.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.10.10.6.1" style="font-size:80%;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.1.1" style="font-size:80%;">20%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.2.1" style="font-size:80%;">88.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.3.1" style="font-size:80%;">30.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.11.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.4.1" style="font-size:80%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.5.1" style="font-size:80%;">57.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.11.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.11.11.6.1" style="font-size:80%;">64.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.12.12.1.1" style="font-size:80%;">Removed keywords</span></th>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.1.1" style="font-size:80%;">100%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.2.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.3.1" style="font-size:80%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.5.1" style="font-size:80%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.13.13.6.1" style="font-size:80%;">63.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.1.1" style="font-size:80%;">50%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.2.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.3.1" style="font-size:80%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.4.1" style="font-size:80%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.5.1" style="font-size:80%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.14.14.6.1" style="font-size:80%;">65.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.1.1" style="font-size:80%;">20%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.2.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.3.1" style="font-size:80%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.4.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.5.1" style="font-size:80%;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.15.15.6.1" style="font-size:80%;">62.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.16.16" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T2.6.1.16.16.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.16.16.1.1" style="font-size:80%;background-color:#E6E6E6;">Structure Modifications</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.17.17.1.1" style="font-size:80%;">Shuffled Steps</span></th>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.17.17.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.17.17.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.17.17.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.17.17.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.17.17.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.18.18.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.1.1" style="font-size:80%;">100%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.2.1" style="font-size:80%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.3.1" style="font-size:80%;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.4.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.5.1" style="font-size:80%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.18.18.6.1" style="font-size:80%;">56.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.19.19.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.1.1" style="font-size:80%;">67%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.19.19.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.2.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.19.19.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.3.1" style="font-size:80%;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.19.19.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.4.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.19.19.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.5.1" style="font-size:80%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.19.19.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.19.19.6.1" style="font-size:80%;">57.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.20.20.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.1.1" style="font-size:80%;">33%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.20.20.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.2.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.20.20.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.3.1" style="font-size:80%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.20.20.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.4.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.20.20.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.5.1" style="font-size:80%;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.20.20.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.20.20.6.1" style="font-size:80%;">62.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.21.21.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.21.21.1.1" style="font-size:80%;">Deleted Steps</span></th>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.21.21.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.21.21.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.21.21.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.21.21.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.21.21.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.22.22.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.1.1" style="font-size:80%;">100%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.22.22.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.2.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.22.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.3.1" style="font-size:80%;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.22.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.4.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.22.22.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.5.1" style="font-size:80%;">45.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.22.22.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.22.22.6.1" style="font-size:80%;">49.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.23.23.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.1.1" style="font-size:80%;">67%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.23.23.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.2.1" style="font-size:80%;">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.23.23.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.3.1" style="font-size:80%;">26.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.23.23.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.4.1" style="font-size:80%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.23.23.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.5.1" style="font-size:80%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.23.23.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.23.23.6.1" style="font-size:80%;">53.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.24.24.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.1.1" style="font-size:80%;">33%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.24.24.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.2.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.24.24.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.3.1" style="font-size:80%;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.24.24.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.4.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.24.24.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.5.1" style="font-size:80%;">57.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.24.24.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.24.24.6.1" style="font-size:80%;">62.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.1.25.25.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.1.25.25.1.1" style="font-size:80%;">Inserted Steps</span></th>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.25.25.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.25.25.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.25.25.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.25.25.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.1.25.25.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.26.26.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.1.1" style="font-size:80%;">100%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.26.26.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.2.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.26.26.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.3.1" style="font-size:80%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.26.26.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.4.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.26.26.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.5.1" style="font-size:80%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.26.26.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.26.26.6.1" style="font-size:80%;">44.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.6.1.27.27.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.1.1" style="font-size:80%;">67%</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.27.27.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.2.1" style="font-size:80%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.27.27.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.3.1" style="font-size:80%;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.27.27.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.4.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.27.27.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.5.1" style="font-size:80%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.27.27.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.27.27.6.1" style="font-size:80%;">52.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.6.1.28.28.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.1.1" style="font-size:80%;">33%</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.28.28.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.2.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.28.28.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.3.1" style="font-size:80%;">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.28.28.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.4.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.28.28.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.5.1" style="font-size:80%;">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.28.28.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.6.1.28.28.6.1" style="font-size:80%;">63.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of different types of perturbations on the performance of a large language model (LLM) during reasoning tasks.  The LLM was fine-tuned on datasets containing various perturbations to the reasoning traces used for training. These perturbations fall into two categories: modifications to the content of individual reasoning steps (wrong answers, corrupted digits, and removed keywords) and modifications to the overall structure of the reasoning steps (deleted, inserted, or shuffled steps). The table shows the accuracy of the model on various mathematical reasoning benchmarks after training with each type of perturbation.  The findings demonstrate that structural perturbations have a significantly more negative effect on the model's accuracy compared to content perturbations.
> <details>
> <summary>read the caption</summary>
> Table 2: Effect of trace perturbations on reasoning performance Section 4. All models are trained with base Qwen2.5-32B-Instruct. “Olympiad.” is short for “OlympiadBench”. In particular, we study (1) traces with modified reasoning step contents: wrong answers, corrupted digits, and removed reasoning keywords, and (2) traces with modified structure: deleted, inserted, or shuffled steps. We find that structural perturbations are far more detrimental to model accuracy than content perturbations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.5.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.2.1" style="font-size:80%;">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.3.1" style="font-size:80%;">ARC-C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.4.1" style="font-size:80%;">IEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.1.5.1" style="font-size:80%;">MGSM</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.5.1.2.2.1"><span class="ltx_text" id="S5.T3.5.1.2.2.1.1" style="font-size:80%;">Qwen2.5-32B-Inst.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.2.2"><span class="ltx_text" id="S5.T3.5.1.2.2.2.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.2.3"><span class="ltx_text" id="S5.T3.5.1.2.2.3.1" style="font-size:80%;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.2.4"><span class="ltx_text" id="S5.T3.5.1.2.2.4.1" style="font-size:80%;">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.2.2.5"><span class="ltx_text" id="S5.T3.5.1.2.2.5.1" style="font-size:80%;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.3.3.1"><span class="ltx_text" id="S5.T3.5.1.3.3.1.1" style="font-size:80%;">QwQ</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.3.2"><span class="ltx_text" id="S5.T3.5.1.3.3.2.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.3.3"><span class="ltx_text" id="S5.T3.5.1.3.3.3.1" style="font-size:80%;">49.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.3.4"><span class="ltx_text" id="S5.T3.5.1.3.3.4.1" style="font-size:80%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.3.3.5"><span class="ltx_text" id="S5.T3.5.1.3.3.5.1" style="font-size:80%;">19.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.4.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.5.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.4.4.1.1" style="font-size:80%;background-color:#E6E6E6;">17k R1 Samples</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.5.5.1"><span class="ltx_text" id="S5.T3.5.1.5.5.1.1" style="font-size:80%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.5.2"><span class="ltx_text" id="S5.T3.5.1.5.5.2.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.5.3"><span class="ltx_text" id="S5.T3.5.1.5.5.3.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.5.4"><span class="ltx_text" id="S5.T3.5.1.5.5.4.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.5.5"><span class="ltx_text" id="S5.T3.5.1.5.5.5.1" style="font-size:80%;">33.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.6.6.1"><span class="ltx_text" id="S5.T3.5.1.6.6.1.1" style="font-size:80%;">LoRA (r=256)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.6.2"><span class="ltx_text" id="S5.T3.5.1.6.6.2.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.6.3"><span class="ltx_text" id="S5.T3.5.1.6.6.3.1" style="font-size:80%;">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.6.4"><span class="ltx_text" id="S5.T3.5.1.6.6.4.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.6.5"><span class="ltx_text" id="S5.T3.5.1.6.6.5.1" style="font-size:80%;">38.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.5.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.7.7.1.1" style="font-size:80%;background-color:#E6E6E6;">17k QwQ Samples</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.8.8.1"><span class="ltx_text" id="S5.T3.5.1.8.8.1.1" style="font-size:80%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.8.8.2"><span class="ltx_text" id="S5.T3.5.1.8.8.2.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.8.8.3"><span class="ltx_text" id="S5.T3.5.1.8.8.3.1" style="font-size:80%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.8.8.4"><span class="ltx_text" id="S5.T3.5.1.8.8.4.1" style="font-size:80%;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.8.8.5"><span class="ltx_text" id="S5.T3.5.1.8.8.5.1" style="font-size:80%;">33.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.9.9.1"><span class="ltx_text" id="S5.T3.5.1.9.9.1.1" style="font-size:80%;">LoRA (r=64)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.9.9.2"><span class="ltx_text" id="S5.T3.5.1.9.9.2.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.9.9.3"><span class="ltx_text" id="S5.T3.5.1.9.9.3.1" style="font-size:80%;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.9.9.4"><span class="ltx_text" id="S5.T3.5.1.9.9.4.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.9.9.5"><span class="ltx_text" id="S5.T3.5.1.9.9.5.1" style="font-size:80%;">30.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.10.10" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.5.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.10.10.1.1" style="font-size:80%;background-color:#E6E6E6;">7k QwQ Samples</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.1.11.11.1"><span class="ltx_text" id="S5.T3.5.1.11.11.1.1" style="font-size:80%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.11.11.2"><span class="ltx_text" id="S5.T3.5.1.11.11.2.1" style="font-size:80%;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.11.11.3"><span class="ltx_text" id="S5.T3.5.1.11.11.3.1" style="font-size:80%;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.11.11.4"><span class="ltx_text" id="S5.T3.5.1.11.11.4.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.11.11.5"><span class="ltx_text" id="S5.T3.5.1.11.11.5.1" style="font-size:80%;">30.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.5.1.12.12.1"><span class="ltx_text" id="S5.T3.5.1.12.12.1.1" style="font-size:80%;">LoRA (r=64)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.12.12.2"><span class="ltx_text" id="S5.T3.5.1.12.12.2.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.12.12.3"><span class="ltx_text" id="S5.T3.5.1.12.12.3.1" style="font-size:80%;">47.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.12.12.4"><span class="ltx_text" id="S5.T3.5.1.12.12.4.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.5.1.12.12.5"><span class="ltx_text" id="S5.T3.5.1.12.12.5.1" style="font-size:80%;">31.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen-2.5-32B-Instruct model on various non-reasoning tasks before and after fine-tuning using data from the QwQ-32B-Preview model.  It compares the model's performance on benchmarks like MMLU (multi-task language understanding), ARC-C (science exam questions), IEval (instruction following), and MGSM (multilingual grade-school math problems).  The purpose is to demonstrate that the fine-tuning process that improves reasoning capabilities does not significantly hurt performance on general language understanding and other tasks, indicating that the model retains its base capabilities after the fine-tuning process.  The results show that the fine-tuned model generally maintains similar performance to the QwQ-32B-Preview on these tasks, demonstrating the success of the knowledge distillation method.
> <details>
> <summary>read the caption</summary>
> Table 3: Distilled Model Performance on Non-Reasoning Tasks. The teacher model is QwQ-32B-Preview, and the student model is Qwen2.5-32B-Instruct. Compared to QwQ, distilled models retain most of the base model’s capabilities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.1.1.2.1" style="font-size:90%;">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.1.1.3.1" style="font-size:90%;">Short CoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.1.1.4.1" style="font-size:90%;">Long CoT</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T4.6.1.2.2.1"><span class="ltx_text ltx_font_italic" id="S5.T4.6.1.2.2.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. output tokens</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.3.3.1"><span class="ltx_text" id="S5.T4.6.1.3.3.1.1" style="font-size:90%;">MATH500</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.3.3.2"><span class="ltx_text" id="S5.T4.6.1.3.3.2.1" style="font-size:90%;">684</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.3.3.3"><span class="ltx_text" id="S5.T4.6.1.3.3.3.1" style="font-size:90%;">515</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.3.3.4"><span class="ltx_text" id="S5.T4.6.1.3.3.4.1" style="font-size:90%;">3972</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.4.4.1"><span class="ltx_text" id="S5.T4.6.1.4.4.1.1" style="font-size:90%;">AMC23</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.2"><span class="ltx_text" id="S5.T4.6.1.4.4.2.1" style="font-size:90%;">728</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.3"><span class="ltx_text" id="S5.T4.6.1.4.4.3.1" style="font-size:90%;">605</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.4"><span class="ltx_text" id="S5.T4.6.1.4.4.4.1" style="font-size:90%;">5037</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.5.5.1"><span class="ltx_text" id="S5.T4.6.1.5.5.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.2"><span class="ltx_text" id="S5.T4.6.1.5.5.2.1" style="font-size:90%;">1275</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.3"><span class="ltx_text" id="S5.T4.6.1.5.5.3.1" style="font-size:90%;">948</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.4"><span class="ltx_text" id="S5.T4.6.1.5.5.4.1" style="font-size:90%;">8616</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.6.6.1"><span class="ltx_text" id="S5.T4.6.1.6.6.1.1" style="font-size:90%;">AIME24</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.2"><span class="ltx_text" id="S5.T4.6.1.6.6.2.1" style="font-size:90%;">825</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.3"><span class="ltx_text" id="S5.T4.6.1.6.6.3.1" style="font-size:90%;">687</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.4"><span class="ltx_text" id="S5.T4.6.1.6.6.4.1" style="font-size:90%;">15902</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S5.T4.6.1.7.7.1"><span class="ltx_text ltx_font_italic" id="S5.T4.6.1.7.7.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. keywords per response</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.8.8.1"><span class="ltx_text" id="S5.T4.6.1.8.8.1.1" style="font-size:90%;">MATH500</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.8.8.2"><span class="ltx_text" id="S5.T4.6.1.8.8.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.8.8.3"><span class="ltx_text" id="S5.T4.6.1.8.8.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.8.8.4"><span class="ltx_text" id="S5.T4.6.1.8.8.4.1" style="font-size:90%;">41.75</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.9.9.1"><span class="ltx_text" id="S5.T4.6.1.9.9.1.1" style="font-size:90%;">AMC23</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.2"><span class="ltx_text" id="S5.T4.6.1.9.9.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.3"><span class="ltx_text" id="S5.T4.6.1.9.9.3.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.4"><span class="ltx_text" id="S5.T4.6.1.9.9.4.1" style="font-size:90%;">39.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.10.10.1"><span class="ltx_text" id="S5.T4.6.1.10.10.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.10.10.2"><span class="ltx_text" id="S5.T4.6.1.10.10.2.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.10.10.3"><span class="ltx_text" id="S5.T4.6.1.10.10.3.1" style="font-size:90%;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.10.10.4"><span class="ltx_text" id="S5.T4.6.1.10.10.4.1" style="font-size:90%;">97.20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.11.11.1"><span class="ltx_text" id="S5.T4.6.1.11.11.1.1" style="font-size:90%;">AIME24</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.11.11.2"><span class="ltx_text" id="S5.T4.6.1.11.11.2.1" style="font-size:90%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.11.11.3"><span class="ltx_text" id="S5.T4.6.1.11.11.3.1" style="font-size:90%;">0.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.11.11.4"><span class="ltx_text" id="S5.T4.6.1.11.11.4.1" style="font-size:90%;">260.90</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.12.12" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="4" id="S5.T4.6.1.12.12.1"><span class="ltx_text ltx_font_italic" id="S5.T4.6.1.12.12.1.1" style="font-size:90%;background-color:#E6E6E6;">Performance</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.13.13.1"><span class="ltx_text" id="S5.T4.6.1.13.13.1.1" style="font-size:90%;">MATH500</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.13.13.2"><span class="ltx_text" id="S5.T4.6.1.13.13.2.1" style="font-size:90%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.13.13.3"><span class="ltx_text" id="S5.T4.6.1.13.13.3.1" style="font-size:90%;">70.4 (-14.4)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.13.13.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.1.13.13.4.1" style="font-size:90%;">89.2</span><span class="ltx_text" id="S5.T4.6.1.13.13.4.2" style="font-size:90%;"> (+4.4)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.14.14.1"><span class="ltx_text" id="S5.T4.6.1.14.14.1.1" style="font-size:90%;">AMC23</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.14.14.2"><span class="ltx_text" id="S5.T4.6.1.14.14.2.1" style="font-size:90%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.14.14.3"><span class="ltx_text" id="S5.T4.6.1.14.14.3.1" style="font-size:90%;">55.0 (-12.5)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.14.14.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.1.14.14.4.1" style="font-size:90%;">77.5</span><span class="ltx_text" id="S5.T4.6.1.14.14.4.2" style="font-size:90%;"> (+10.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.15.15.1"><span class="ltx_text" id="S5.T4.6.1.15.15.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.15.15.2"><span class="ltx_text" id="S5.T4.6.1.15.15.2.1" style="font-size:90%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.15.15.3"><span class="ltx_text" id="S5.T4.6.1.15.15.3.1" style="font-size:90%;">36.4 (-11.2)</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.15.15.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.1.15.15.4.1" style="font-size:90%;">58.5</span><span class="ltx_text" id="S5.T4.6.1.15.15.4.2" style="font-size:90%;"> (+10.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.6.1.16.16.1"><span class="ltx_text" id="S5.T4.6.1.16.16.1.1" style="font-size:90%;">AIME24</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.1.16.16.2"><span class="ltx_text" id="S5.T4.6.1.16.16.2.1" style="font-size:90%;">16.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.1.16.16.3"><span class="ltx_text" id="S5.T4.6.1.16.16.3.1" style="font-size:90%;">13.3 (-3.4)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.1.16.16.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.6.1.16.16.4.1" style="font-size:90%;">40.0</span><span class="ltx_text" id="S5.T4.6.1.16.16.4.2" style="font-size:90%;"> (+23.3)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the number of output tokens and reasoning keywords used, as well as the model's performance, when trained using short chain-of-thought (CoT) versus long chain-of-thought (CoT) reasoning. The base model used is Qwen2.5-32B-Instruct.  The benchmarks are ordered from easiest to hardest, and the results show that the Long CoT model generates longer responses and uses more reasoning keywords as the difficulty of the problems increases. This suggests that the Long CoT training method enables the model to develop more sophisticated reasoning strategies.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of number of output tokens reasoning keywords, and the performance between training with Short or Long CoT. The original model is Qwen2.5-32B-Instruct. Benchmarks are ordered from easy to hard, where the model trained with Long CoT learns to produce longer CoTs and uses more keywords for harder problems.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T5.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T5.4.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T5.4.1.1.2.1" style="font-size:90%;">0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T5.4.1.1.3.1" style="font-size:90%;">33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T5.4.1.1.4.1" style="font-size:90%;">67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T5.4.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T5.4.1.1.5.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T5.4.2.2.1"><span class="ltx_text ltx_font_italic" id="A4.T5.4.2.2.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. output tokens</span></th>
</tr>
<tr class="ltx_tr" id="A4.T5.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.3.3.1"><span class="ltx_text" id="A4.T5.4.3.3.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.3.3.2"><span class="ltx_text" id="A4.T5.4.3.3.2.1" style="font-size:90%;">3551</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.3.3.3"><span class="ltx_text" id="A4.T5.4.3.3.3.1" style="font-size:90%;">2979</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.3.3.4"><span class="ltx_text" id="A4.T5.4.3.3.4.1" style="font-size:90%;">2078</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.3.3.5"><span class="ltx_text" id="A4.T5.4.3.3.5.1" style="font-size:90%;">482</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.4.4.1"><span class="ltx_text" id="A4.T5.4.4.4.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.2"><span class="ltx_text" id="A4.T5.4.4.4.2.1" style="font-size:90%;">4838</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.3"><span class="ltx_text" id="A4.T5.4.4.4.3.1" style="font-size:90%;">6612</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.4"><span class="ltx_text" id="A4.T5.4.4.4.4.1" style="font-size:90%;">4623</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.4.4.5"><span class="ltx_text" id="A4.T5.4.4.4.5.1" style="font-size:90%;">609</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.5.5.1"><span class="ltx_text" id="A4.T5.4.5.5.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.5.5.2"><span class="ltx_text" id="A4.T5.4.5.5.2.1" style="font-size:90%;">7234</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.5.5.3"><span class="ltx_text" id="A4.T5.4.5.5.3.1" style="font-size:90%;">6802</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.5.5.4"><span class="ltx_text" id="A4.T5.4.5.5.4.1" style="font-size:90%;">4978</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.5.5.5"><span class="ltx_text" id="A4.T5.4.5.5.5.1" style="font-size:90%;">595</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.6.6.1"><span class="ltx_text" id="A4.T5.4.6.6.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.6.6.2"><span class="ltx_text" id="A4.T5.4.6.6.2.1" style="font-size:90%;">13088</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.6.6.3"><span class="ltx_text" id="A4.T5.4.6.6.3.1" style="font-size:90%;">11889</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.6.6.4"><span class="ltx_text" id="A4.T5.4.6.6.4.1" style="font-size:90%;">6798</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.6.6.5"><span class="ltx_text" id="A4.T5.4.6.6.5.1" style="font-size:90%;">620</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T5.4.7.7.1"><span class="ltx_text ltx_font_italic" id="A4.T5.4.7.7.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. keywords per response</span></th>
</tr>
<tr class="ltx_tr" id="A4.T5.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.8.8.1"><span class="ltx_text" id="A4.T5.4.8.8.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.8.8.2"><span class="ltx_text" id="A4.T5.4.8.8.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.8.8.3"><span class="ltx_text" id="A4.T5.4.8.8.3.1" style="font-size:90%;">28</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.8.8.4"><span class="ltx_text" id="A4.T5.4.8.8.4.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.8.8.5"><span class="ltx_text" id="A4.T5.4.8.8.5.1" style="font-size:90%;">0.017</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.9.9.1"><span class="ltx_text" id="A4.T5.4.9.9.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.9.9.2"><span class="ltx_text" id="A4.T5.4.9.9.2.1" style="font-size:90%;">39</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.9.9.3"><span class="ltx_text" id="A4.T5.4.9.9.3.1" style="font-size:90%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.9.9.4"><span class="ltx_text" id="A4.T5.4.9.9.4.1" style="font-size:90%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.9.9.5"><span class="ltx_text" id="A4.T5.4.9.9.5.1" style="font-size:90%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T5.4.10.10.1"><span class="ltx_text" id="A4.T5.4.10.10.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T5.4.10.10.2"><span class="ltx_text" id="A4.T5.4.10.10.2.1" style="font-size:90%;">77</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.10.10.3"><span class="ltx_text" id="A4.T5.4.10.10.3.1" style="font-size:90%;">70</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.10.10.4"><span class="ltx_text" id="A4.T5.4.10.10.4.1" style="font-size:90%;">56</span></td>
<td class="ltx_td ltx_align_center" id="A4.T5.4.10.10.5"><span class="ltx_text" id="A4.T5.4.10.10.5.1" style="font-size:90%;">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T5.4.11.11.1"><span class="ltx_text" id="A4.T5.4.11.11.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.4.11.11.2"><span class="ltx_text" id="A4.T5.4.11.11.2.1" style="font-size:90%;">143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.4.11.11.3"><span class="ltx_text" id="A4.T5.4.11.11.3.1" style="font-size:90%;">143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.4.11.11.4"><span class="ltx_text" id="A4.T5.4.11.11.4.1" style="font-size:90%;">90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.4.11.11.5"><span class="ltx_text" id="A4.T5.4.11.11.5.1" style="font-size:90%;">0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of keywords and output tokens used in model responses when training data with deleted reasoning steps is used.  The data is broken down by dataset (Math, AMC 2023, OlympiadBench, AIME 2024) and the percentage of deleted steps (0%, 33%, 67%, 100%). This allows for the analysis of how the removal of reasoning steps impacts the model's output length and use of reasoning keywords. 
> <details>
> <summary>read the caption</summary>
> Table 5: Average keyword counts and output tokens for deleted steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T6.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T6.4.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T6.4.1.1.2.1" style="font-size:90%;">0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T6.4.1.1.3.1" style="font-size:90%;">33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T6.4.1.1.4.1" style="font-size:90%;">67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T6.4.1.1.5.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T6.4.2.2.1"><span class="ltx_text ltx_font_italic" id="A4.T6.4.2.2.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. output tokens</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.3.3.1"><span class="ltx_text" id="A4.T6.4.3.3.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.3.3.2"><span class="ltx_text" id="A4.T6.4.3.3.2.1" style="font-size:90%;">3551</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.3.3.3"><span class="ltx_text" id="A4.T6.4.3.3.3.1" style="font-size:90%;">4189</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.3.3.4"><span class="ltx_text" id="A4.T6.4.3.3.4.1" style="font-size:90%;">3900</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.3.3.5"><span class="ltx_text" id="A4.T6.4.3.3.5.1" style="font-size:90%;">5383</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.4.4.1"><span class="ltx_text" id="A4.T6.4.4.4.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.4.4.2"><span class="ltx_text" id="A4.T6.4.4.4.2.1" style="font-size:90%;">4838</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.4.4.3"><span class="ltx_text" id="A4.T6.4.4.4.3.1" style="font-size:90%;">7089</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.4.4.4"><span class="ltx_text" id="A4.T6.4.4.4.4.1" style="font-size:90%;">5464</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.4.4.5"><span class="ltx_text" id="A4.T6.4.4.4.5.1" style="font-size:90%;">5137</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.5.5.1"><span class="ltx_text" id="A4.T6.4.5.5.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.5.5.2"><span class="ltx_text" id="A4.T6.4.5.5.2.1" style="font-size:90%;">7234</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.5.5.3"><span class="ltx_text" id="A4.T6.4.5.5.3.1" style="font-size:90%;">7558</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.5.5.4"><span class="ltx_text" id="A4.T6.4.5.5.4.1" style="font-size:90%;">6990</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.5.5.5"><span class="ltx_text" id="A4.T6.4.5.5.5.1" style="font-size:90%;">5407</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.6.6.1"><span class="ltx_text" id="A4.T6.4.6.6.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.6.6.2"><span class="ltx_text" id="A4.T6.4.6.6.2.1" style="font-size:90%;">13088</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.6.6.3"><span class="ltx_text" id="A4.T6.4.6.6.3.1" style="font-size:90%;">12858</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.6.6.4"><span class="ltx_text" id="A4.T6.4.6.6.4.1" style="font-size:90%;">12864</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.6.6.5"><span class="ltx_text" id="A4.T6.4.6.6.5.1" style="font-size:90%;">5304</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T6.4.7.7.1"><span class="ltx_text ltx_font_italic" id="A4.T6.4.7.7.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. keywords per response</span></th>
</tr>
<tr class="ltx_tr" id="A4.T6.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.8.8.1"><span class="ltx_text" id="A4.T6.4.8.8.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.8.2"><span class="ltx_text" id="A4.T6.4.8.8.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.8.3"><span class="ltx_text" id="A4.T6.4.8.8.3.1" style="font-size:90%;">39</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.8.4"><span class="ltx_text" id="A4.T6.4.8.8.4.1" style="font-size:90%;">39</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.8.5"><span class="ltx_text" id="A4.T6.4.8.8.5.1" style="font-size:90%;">41</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.9.9.1"><span class="ltx_text" id="A4.T6.4.9.9.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.9.2"><span class="ltx_text" id="A4.T6.4.9.9.2.1" style="font-size:90%;">39</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.9.3"><span class="ltx_text" id="A4.T6.4.9.9.3.1" style="font-size:90%;">98</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.9.4"><span class="ltx_text" id="A4.T6.4.9.9.4.1" style="font-size:90%;">44</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.9.5"><span class="ltx_text" id="A4.T6.4.9.9.5.1" style="font-size:90%;">35</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.10.10.1"><span class="ltx_text" id="A4.T6.4.10.10.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.10.10.2"><span class="ltx_text" id="A4.T6.4.10.10.2.1" style="font-size:90%;">77</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.10.10.3"><span class="ltx_text" id="A4.T6.4.10.10.3.1" style="font-size:90%;">76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.10.10.4"><span class="ltx_text" id="A4.T6.4.10.10.4.1" style="font-size:90%;">80</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.10.10.5"><span class="ltx_text" id="A4.T6.4.10.10.5.1" style="font-size:90%;">38</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T6.4.11.11.1"><span class="ltx_text" id="A4.T6.4.11.11.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.11.11.2"><span class="ltx_text" id="A4.T6.4.11.11.2.1" style="font-size:90%;">143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.11.11.3"><span class="ltx_text" id="A4.T6.4.11.11.3.1" style="font-size:90%;">127</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.11.11.4"><span class="ltx_text" id="A4.T6.4.11.11.4.1" style="font-size:90%;">165</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.11.11.5"><span class="ltx_text" id="A4.T6.4.11.11.5.1" style="font-size:90%;">44</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of keywords and output tokens used in model responses when reasoning steps are inserted into the training data.  It shows the impact of inserting 33%, 67%, and 100% of randomly selected reasoning steps from other correct samples on various math and coding benchmarks (Math, AMC 2023, OlympiadBench, AIME 2024). The comparison is made against a baseline where no steps are inserted (0%). This helps to analyze how structural changes affect the model's reasoning performance and language use.
> <details>
> <summary>read the caption</summary>
> Table 6: Average keyword counts and output tokens for inserted steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T7.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T7.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.2.1" style="font-size:90%;">0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.4.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.3.1" style="font-size:90%;">33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.4.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.4.1" style="font-size:90%;">67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.4.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.5.1" style="font-size:90%;">100%</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.2.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T7.4.2.2.1"><span class="ltx_text ltx_font_italic" id="A4.T7.4.2.2.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. output tokens</span></th>
</tr>
<tr class="ltx_tr" id="A4.T7.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.3.3.1"><span class="ltx_text" id="A4.T7.4.3.3.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.3.3.2"><span class="ltx_text" id="A4.T7.4.3.3.2.1" style="font-size:90%;">3551</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.3.3.3"><span class="ltx_text" id="A4.T7.4.3.3.3.1" style="font-size:90%;">4284</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.3.3.4"><span class="ltx_text" id="A4.T7.4.3.3.4.1" style="font-size:90%;">5784</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.3.3.5"><span class="ltx_text" id="A4.T7.4.3.3.5.1" style="font-size:90%;">5613</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.4.4.1"><span class="ltx_text" id="A4.T7.4.4.4.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.4.2"><span class="ltx_text" id="A4.T7.4.4.4.2.1" style="font-size:90%;">4838</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.4.3"><span class="ltx_text" id="A4.T7.4.4.4.3.1" style="font-size:90%;">6802</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.4.4"><span class="ltx_text" id="A4.T7.4.4.4.4.1" style="font-size:90%;">10198</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.4.5"><span class="ltx_text" id="A4.T7.4.4.4.5.1" style="font-size:90%;">8661</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.5.5.1"><span class="ltx_text" id="A4.T7.4.5.5.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.5.5.2"><span class="ltx_text" id="A4.T7.4.5.5.2.1" style="font-size:90%;">7234</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.5.5.3"><span class="ltx_text" id="A4.T7.4.5.5.3.1" style="font-size:90%;">8942</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.5.5.4"><span class="ltx_text" id="A4.T7.4.5.5.4.1" style="font-size:90%;">12154</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.5.5.5"><span class="ltx_text" id="A4.T7.4.5.5.5.1" style="font-size:90%;">12167</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.6.6.1"><span class="ltx_text" id="A4.T7.4.6.6.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.6.6.2"><span class="ltx_text" id="A4.T7.4.6.6.2.1" style="font-size:90%;">13088</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.6.6.3"><span class="ltx_text" id="A4.T7.4.6.6.3.1" style="font-size:90%;">13451</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.6.6.4"><span class="ltx_text" id="A4.T7.4.6.6.4.1" style="font-size:90%;">16221</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.6.6.5"><span class="ltx_text" id="A4.T7.4.6.6.5.1" style="font-size:90%;">18054</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.7.7" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T7.4.7.7.1"><span class="ltx_text ltx_font_italic" id="A4.T7.4.7.7.1.1" style="font-size:90%;background-color:#E6E6E6;">Avg. keywords per response</span></th>
</tr>
<tr class="ltx_tr" id="A4.T7.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.8.8.1"><span class="ltx_text" id="A4.T7.4.8.8.1.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.8.8.2"><span class="ltx_text" id="A4.T7.4.8.8.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.8.8.3"><span class="ltx_text" id="A4.T7.4.8.8.3.1" style="font-size:90%;">45</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.8.8.4"><span class="ltx_text" id="A4.T7.4.8.8.4.1" style="font-size:90%;">61</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.8.8.5"><span class="ltx_text" id="A4.T7.4.8.8.5.1" style="font-size:90%;">70</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.9.9.1"><span class="ltx_text" id="A4.T7.4.9.9.1.1" style="font-size:90%;">AMC 2023</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.9.9.2"><span class="ltx_text" id="A4.T7.4.9.9.2.1" style="font-size:90%;">39</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.9.9.3"><span class="ltx_text" id="A4.T7.4.9.9.3.1" style="font-size:90%;">65</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.9.9.4"><span class="ltx_text" id="A4.T7.4.9.9.4.1" style="font-size:90%;">74</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.9.9.5"><span class="ltx_text" id="A4.T7.4.9.9.5.1" style="font-size:90%;">67</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.4.10.10.1"><span class="ltx_text" id="A4.T7.4.10.10.1.1" style="font-size:90%;">OlympiadBench</span></th>
<td class="ltx_td ltx_align_center" id="A4.T7.4.10.10.2"><span class="ltx_text" id="A4.T7.4.10.10.2.1" style="font-size:90%;">77</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.10.10.3"><span class="ltx_text" id="A4.T7.4.10.10.3.1" style="font-size:90%;">111</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.10.10.4"><span class="ltx_text" id="A4.T7.4.10.10.4.1" style="font-size:90%;">166</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.10.10.5"><span class="ltx_text" id="A4.T7.4.10.10.5.1" style="font-size:90%;">137</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T7.4.11.11.1"><span class="ltx_text" id="A4.T7.4.11.11.1.1" style="font-size:90%;">AIME 2024</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.4.11.11.2"><span class="ltx_text" id="A4.T7.4.11.11.2.1" style="font-size:90%;">143</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.4.11.11.3"><span class="ltx_text" id="A4.T7.4.11.11.3.1" style="font-size:90%;">161</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.4.11.11.4"><span class="ltx_text" id="A4.T7.4.11.11.4.1" style="font-size:90%;">201</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.4.11.11.5"><span class="ltx_text" id="A4.T7.4.11.11.5.1" style="font-size:90%;">210</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of reasoning keywords and the average number of output tokens generated by the model when the order of reasoning steps in the training data is randomly shuffled.  It shows how the model's performance changes as the percentage of shuffled steps increases (33%, 67%, and 100%), comparing these results against a baseline with no shuffled steps (0%). The data is broken down by dataset (Math, AMC 2023, OlympiadBench, and AIME 2024) to highlight variations in performance across different problem types.
> <details>
> <summary>read the caption</summary>
> Table 7: Average keyword counts and output tokens for shuffled steps.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.07374/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07374/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}