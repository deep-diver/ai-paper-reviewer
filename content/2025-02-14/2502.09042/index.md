---
title: "Typhoon T1: An Open Thai Reasoning Model"
summary: "Typhoon T1: Open Thai reasoning model improves complex task performance by generating long chains of thought, detailed methodology, and open-source resources are provided."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 SCB 10X R&D",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09042 {{< /keyword >}}
{{< keyword icon="writer" >}} Pittawat Taveekitworachai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09042" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09042" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09042/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reasoning models, a new type of generative AI, improve performance on complex tasks by generating a detailed chain of thought before producing an answer.  However, such models, especially those capable of generating reasoning traces in low-resource languages, are limited.  This scarcity of resources hinders research in this field. 

This research paper introduces Typhoon T1, an open-source Thai reasoning model that aims to address these issues.  It details a cost-effective methodology using supervised fine-tuning and open datasets, eliminating the need for resource-intensive reinforcement learning. The study includes insights into data generation and training, as well as the release of the dataset and model weights.  The researchers demonstrate the impact of several factors on performance (thinking format, training data size and mixture, and the inclusion of safety-related data) and found that "structured thinking" along with a well-balanced dataset leads to the best results.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Typhoon T1, an open-source Thai reasoning model, was developed using a cost-effective supervised fine-tuning approach. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Structured thinking, a new format for generating reasoning traces, outperformed unstructured and semi-structured approaches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model's performance was significantly impacted by the balance of data quantity and inclusion of safety-related datasets. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **Typhoon T1**, the first open-source Thai reasoning model. This addresses the scarcity of such resources in low-resource languages, fostering further research and development.  The open-source nature promotes collaboration and accelerates progress in multilingual reasoning models, aligning with current trends towards greater transparency and accessibility in AI research.  The detailed methodology and analysis contribute valuable insights for researchers working with both high and low resource languages.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/overview.png)

> 🔼 This figure illustrates the data processing pipeline for creating a Thai reasoning model.  The top panel shows the transformation and refinement stages used to convert existing datasets into the 'long-thinking' format required for training.  The bottom-left panel details the training process for the Typhoon T model, which uses the structured long-thinking format.  The bottom-right panel shows how the bilingual Typhoon T1 model is trained using the structured data generated and both English and Thai languages.
> <details>
> <summary>read the caption</summary>
> Figure 1: Top: The transformation-and-refinement pipeline used for long-thinking data generation described in Sections 2.2.1 and 2.2.2. Bottom-Left: The structured long-thinking (the best thinking format) training pipeline for Typhoon T, as described in Section 3.1. Bottom-Right: The bilingual English-Thai Typhoon T1 model training pipeline detailed in Section 3.4.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S1.T1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T1.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.2.1">Datasets</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T1.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.3.1">Data Recipe</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T1.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.4.1">Training Recipe</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S1.T1.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S1.T1.5.1.1.5.1">Model Weights</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.5.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.5.2.1.1">OpenAI’s o-series</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.2.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.2.1.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.2.1.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.2.1.5">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.3.2">
<td class="ltx_td ltx_align_left" id="S1.T1.5.3.2.1">Google’s Gemini 2.0 Flash Thinking</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.3.2.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.3.2.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.3.2.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.3.2.5">✗</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.4.3">
<td class="ltx_td ltx_align_left" id="S1.T1.5.4.3.1">Qwen’s QwQ</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.4.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.4.3.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.4.3.4">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.4.3.5">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.4">
<td class="ltx_td ltx_align_left" id="S1.T1.5.5.4.1">DeepSeek R1</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.4.3">✗</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.4.4">P</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.4.5">✓</td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.6.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S1.T1.5.6.5.1"><span class="ltx_text ltx_font_bold" id="S1.T1.5.6.5.1.1">Typhoon T1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.5.6.5.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.5.6.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.5.6.5.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S1.T1.5.6.5.5">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the openness of several popular reasoning models.  Openness is assessed across four key aspects: the availability of the datasets used to train the models, the transparency of the data processing steps, the details of the training methodology employed, and the accessibility of the trained model weights.  The table uses checkmarks to indicate full disclosure, 'P' to indicate partial disclosure, and 'X' to indicate a lack of disclosure for each aspect.  The comparison highlights Typhoon T1 as the only model offering complete openness across all four categories, including a detailed description of its data preparation steps.
> <details>
> <summary>read the caption</summary>
> Table 1: A comparison of openness among popular reasoning models, focusing on dataset availability, data processing transparency, training methodology, and model accessibility. P denotes partial details. Typhoon T1 is the only model providing full openness across all categories, including its data recipe.
> </details>





### In-depth insights


#### Open Thai Reasoning
The concept of "Open Thai Reasoning" presents a compelling vision for advancing natural language processing (NLP) research and applications in the Thai language.  **Openness** is crucial, fostering collaboration and reproducibility by making models, datasets, and methodologies publicly accessible.  This contrasts with proprietary models, limiting progress due to restricted access.  Focusing on **reasoning** goes beyond simple text generation; it targets complex tasks demanding logical steps and inference. This is particularly important in low-resource languages like Thai, where data scarcity poses significant challenges.  The integration of **Thai** as the target language directly addresses the need for NLP tools tailored to specific linguistic contexts.  Thai's unique grammatical structure and nuances require specialized models.  Developing an open Thai reasoning model is therefore a significant step toward bridging the gap in NLP capabilities for the Thai-speaking population, promoting technological advancements, and benefiting the wider research community.

#### SFT vs. RL Approach
The choice between supervised fine-tuning (SFT) and reinforcement learning (RL) for training reasoning models presents a critical design decision. **SFT offers a more straightforward and cost-effective approach**, leveraging readily available labeled datasets for training.  This contrasts with RL, which necessitates the design and implementation of a reward system to guide the model's learning process. While **RL can potentially achieve higher performance**, particularly when aiming for nuanced reasoning behaviors, it often requires significant computational resources and expertise, posing considerable challenges, especially in low-resource settings. The inherent instability of RL algorithms also adds complexity.  Therefore, the selection hinges on a trade-off between resource constraints, available expertise, and desired performance levels.  **For researchers with limited resources or specialized expertise, SFT provides a more practical starting point,** allowing for easier replication and fostering wider collaboration. The selection of SFT or RL ultimately depends on the specific goals and resource availability of the research endeavor.

#### Structured Thinking
The concept of "Structured Thinking" presented in the research paper offers a novel approach to enhance the reasoning capabilities of large language models (LLMs).  By **introducing a hierarchical structure** using XML tags, the authors aim to guide the LLM's thought process in a more organized and deliberate manner. This structured format, unlike unstructured or semi-structured approaches, encourages a step-by-step reasoning process, akin to human problem-solving.  **Key features** include explicit separation of planning, thought steps, scratchpad notes (for intermediate calculations or observations), and summaries for each step. This approach facilitates clear separation of thoughts, promotes self-correction through intermediate summaries, and improves traceability. The effectiveness of structured thinking is empirically validated through experiments, demonstrating **superior performance** compared to unstructured and semi-structured counterparts, particularly in mathematical and coding tasks. The overall impact suggests that imposing a structured format on LLM reasoning significantly improves both the accuracy and efficiency of the model's responses.

#### Data Quantity & Quality
The optimal balance between data quantity and quality is crucial for effective model training.  **Insufficient data**, regardless of quality, leads to underfitting and poor generalization. Conversely, **excessive data** may introduce noise or redundant information, hindering model performance.  High-quality data, characterized by accuracy, completeness, and relevance, is paramount, even with limited quantity.  **Careful data curation**, including cleaning and preprocessing, is essential to enhance quality. A well-defined data strategy that considers both quantity and quality, potentially through techniques like data augmentation or careful sampling, is vital for achieving optimal model performance and generalization.

#### Multilingual Reasoning
Multilingual reasoning presents exciting challenges and opportunities in AI.  **Developing models capable of reasoning across multiple languages requires addressing significant linguistic and cultural differences.**  A key consideration is the availability of high-quality, diverse datasets for training, as many languages lack the extensive resources found for English.  **The choice of architecture and training methodology also greatly impacts performance.**  Approaches might involve multilingual fine-tuning of existing models or training specialized multilingual reasoning models from scratch.  **Evaluation is particularly crucial, as benchmarks need to account for variations in linguistic complexity and cultural nuances across languages.** Research efforts should focus on developing robust evaluation metrics and standardized benchmarks that capture the true multilingual reasoning capabilities of models.  Ultimately, successful multilingual reasoning models will be a significant step toward achieving truly inclusive and globally accessible AI systems.  **The open-sourcing of models and datasets, as demonstrated in the example of Typhoon T1, is essential to foster collaborative development and accelerate progress in this challenging field.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/thinking_format.png)

> 🔼 This figure illustrates three different formats for representing the reasoning process of a large language model (LLM).  Panel (a) shows unstructured thinking, where the LLM's reasoning and final answer are presented as a single, continuous text stream without any explicit separation or structure.  Panel (b) demonstrates semi-structured thinking, which adds simple XML tags such as <thoughts> and <response> to delineate the reasoning steps from the final answer. Panel (c) shows structured thinking, a more advanced format that utilizes additional XML tags within the <thoughts> section to further organize and structure the LLM's reasoning process, helping to clarify the intermediate steps and sub-goals involved in arriving at the final answer. This structured format is designed to improve the clarity and organization of the LLM's thinking.
> <details>
> <summary>read the caption</summary>
> Figure 2: Differences between three thinking formats: (a) Unstructured thinking, where no XML structural tags are included; (b) Semi-structured thinking, which is similar to unstructured thinking but adds <thoughts> and <response> tags to separate thoughts and responses; (c) Structured thinking, which introduces additional XML tags for structural purposes in the thoughts section.
> </details>



![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/training_percentage.png)

> 🔼 This figure presents the results of an experiment assessing the impact of training data size on the performance of a reasoning model.  Multiple datasets were used, and varying percentages of the training data (5%, 10%, 25%, 50%, 75%, and 100%) were used to train separate models. The results show that for most datasets, using more than 75% of the training data did not significantly improve performance, and in some cases even led to performance degradation. The exception is the GSM8K dataset, which demonstrated a consistent performance improvement as more training data was used.
> <details>
> <summary>read the caption</summary>
> Figure 3: Increasing the proportion of the training set beyond 75% results in performance degradation for some datasets, while GSM8K generally shows a trend of performance improvement with the proportion.
> </details>



![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/final_comparison.png)

> 🔼 Figure 4 presents a comparative analysis of the performance of three different models: Typhoon T1-EN, Typhoon T1, and the baseline Typhoon 2 3B Instruct model, across six distinct evaluation benchmarks.  It visually represents the relative performance of each model on each benchmark, enabling easy comparison of their strengths and weaknesses.  The benchmarks likely represent a variety of tasks to assess the models' reasoning capabilities comprehensively.
> <details>
> <summary>read the caption</summary>
> Figure 4: Final performance comparison of Typhoon T1-EN and Typhoon T1 against the baseline Typhoon T1 3B Instruct model across six evaluation benchmarks.
> </details>



![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/domain_distribution.png)

> 🔼 This pie chart visualizes the distribution of the training data across five different domains used in the experiments described in the paper.  Each slice of the pie represents a domain, and its size corresponds to the proportion of data samples from that domain within the overall training dataset.  The domains are: Mathematics, Instruction Following, Coding, Safety, and Finance.
> <details>
> <summary>read the caption</summary>
> Figure 5: This figures show domain distribution of the training set for the experiments.
> </details>



![](https://arxiv.org/html/2502.09042/extracted/6200630/figures/t1_reasoning.png)

> 🔼 This figure presents a side-by-side comparison of the reasoning traces generated by two models: Typhoon T1 and Typhoon T1-EN.  Typhoon T1, trained with Thai-translated data, produces a reasoning trace in Thai, showcasing its ability to generate reasoning steps in a low-resource language. In contrast, Typhoon T1-EN, trained without Thai data, provides a reasoning trace in English.  The comparison highlights the impact of training data on the model's ability to perform reasoning and generate traces in different languages. Both models answer the same question, allowing for a direct comparison of their respective reasoning processes and language usage.
> <details>
> <summary>read the caption</summary>
> Figure 6: This figure shows Typhoon T1’s Thai thinking trace and Typhoon T1-EN’s English thinking trace.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.11.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.3.1">HumanEval+</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.4.1">IFEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.6.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.11.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.11.1.1.7.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.11.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.11.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.11.2.1.1.1">Typhoon 2</span></th>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.2.1.7"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.11.3.2.1">   Zero-Shot</th>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.2">57.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.3">63.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.11.3.2.4.1">69.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.5">25.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.11.3.2.6.1">26.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.3.2.7">32.69</td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.11.4.3.1">   Zero-Shot CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.2">53.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.3">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.4">68.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.4.3.5.1">25.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.6">23.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.4.3.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.11.4.3.7.1">33.27</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.11.5.4.1">   SFT</th>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.2">20.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.3">46.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.4">17.74</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.5">16.74</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.6">13.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.5.4.7">15.65</td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.11.6.5.1"><span class="ltx_text ltx_font_bold" id="S3.T2.11.6.5.1.1">Typhoon T</span></th>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.11.6.5.7"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.11.7.6.1">   Unstructured</th>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.7.6.2.1">59.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.7.6.3.1">67.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.4">34.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.5">24.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.6">20.44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.7.6.7">21.36</td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.11.8.7.1">   Semi-structured</th>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.2">57.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.3"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.11.8.7.3.1">72.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.4">55.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.5"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.11.8.7.5.1">27.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.6">19.46</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.8.7.7">21.92</td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.11.9.8.1">   Structured</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.2"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T2.11.9.8.2.1">62.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.9.8.3.1">69.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.4">53.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.11.9.8.5.1">27.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.6">23.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.11.9.8.7">22.84</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different language models across six benchmarks: GSM8K, HumanEval+, IFEval, GPQA, MMLU Pro, and ThaiExam.  The models compared include the baseline Typhoon 2 3B Instruct (Typhoon 2), variants trained with different thinking methods (zero-shot, zero-shot CoT, and supervised fine-tuning, SFT), and the Typhoon T model trained on long-thinking datasets.  Higher scores indicate better performance. Bold values highlight the best score for each benchmark. Underlined scores show improvements compared to the Typhoon 2 3B Instruct baseline.  The results demonstrate that all reasoning models perform better than SFT on the original dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of models on each benchmark (higher is better). Bold indicates the best score in each column. Underlined scores denote improvements over the baseline, Typhoon 2 3B Instruct. We apply this convention across all results tables. Typhoon 2 refers to Typhoon 2 3B Instruct, and Typhoon T refers to its variant trained on a long-thinking dataset. SFT refers to supervised fine-tuning on the original datasets. All reasoning models show improvement over SFT on the original dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.3.1">HumanEval+</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.4.1">IFEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.6.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.3.1.1.7.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.3.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.2.1.1.1">Typhoon T1-EN</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.2.1.2.1">62.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.3.2.1.3.1">70.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.4">49.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.3.2.1.5.1">30.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.3.2.1.6.1">27.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.2.1.7">21.71</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.3.2.1">   + 1.5k, CSFT</th>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.2">41.39</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.3">65.79</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.4">33.83</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.5">23.66</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.6">4.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.2.7">21.20</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.4.3.1">   + 1.5k</th>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.2">60.12</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.3">67.90</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.4"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T3.3.4.3.4.1">51.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.5">29.91</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.6">19.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.4.3.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T3.3.4.3.7.1">23.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.5.4.1">   + 1k</th>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.2">61.94</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.3">66.77</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.3.5.4.4.1">50.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.5">24.55</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.6">23.48</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.5.4.7">21.57</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.3.6.5.1">   + 0.5k</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.2">60.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.3">68.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.3.6.5.4.1">49.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.5">25.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.6">23.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.3.6.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.3.6.5.7.1">22.62</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different model variants on various benchmark datasets.  The models were trained with varying amounts of additional data, including a baseline model (Typhoon T1-EN) and variants trained with an additional 1.5k samples and with continual supervised fine-tuning (CSFT). The results show the impact of the additional training data on the model's performance across several reasoning tasks, revealing that adding 1.5k samples improved scores on instruction following (IFEval) and the Thai language exam (ThaiExam). Continual SFT, however, led to a significant reduction in overall performance. 
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of model variants on various benchmarks, evaluating the impact of additional training data. CSFT refers to continual SFT. Adding 1.5k samples improves IFEval and ThaiExam scores, while CSFT significantly reduces overall performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.3.1">HumanEval+</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.4.1">IFEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.6.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.5.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T4.5.1.1.7.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.5.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.5.2.1.1.1">Typhoon T1</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.2">60.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.3">67.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.5.2.1.4.1">51.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.5.2.1.5.1">29.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.6"><span class="ltx_text ltx_font_bold" id="S3.T4.5.2.1.6.1">19.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.2.1.7">23.56</td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.5.3.2.1">+ EN</th>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.2">46.17</td>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.3">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.4">48.98</td>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.5">26.56</td>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.6">16.55</td>
<td class="ltx_td ltx_align_center" id="S3.T4.5.3.2.7"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T4.5.3.2.7.1">25.31</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.5.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.5.4.3.1">+ TH</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.2">48.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.4">44.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.5">25.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.6">16.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.5.4.3.7">24.66</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment where the multilingual reasoning model Typhoon T1 was constrained to reason in either English or Thai, and its performance was compared against when it was allowed to choose its own reasoning language. The results show that constraining the model to a specific language (either English or Thai) leads to a decrease in overall accuracy across various benchmarks. Although English-forced reasoning performed slightly better than Thai-forced reasoning, allowing the model to select its own language resulted in the highest accuracy, demonstrating the importance of flexibility in multilingual reasoning.
> <details>
> <summary>read the caption</summary>
> Table 4: EN denotes forced reasoning in English, and TH denotes forced reasoning in Thai. Constraining Typhoon T1 to reason in a specific language degrades overall accuracy. English reasoning is slightly more effective than Thai reasoning across most benchmarks. However, allowing the model to choose its own thinking language yields the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Domain/Dataset</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">#Records</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.2.2.1.1">Mathematics</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T5.1.2.2.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.2.2.2.1">21,941</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.3.3.1">   MATH <cite class="ltx_cite ltx_citemacro_citep">(Hendrycks et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib19" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.3.3.2">7,500</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.4.4.1">   Tulu 3 SFT Personas Math Grade <cite class="ltx_cite ltx_citemacro_citep">(Lambert et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib30" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.4.4.2">7,497</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.5.5.1">   PRM800K Phase 2 <cite class="ltx_cite ltx_citemacro_citep">(Lightman et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib32" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.5.5.2">5,809</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.6.6.1">   PRM800K Phase 1 <cite class="ltx_cite ltx_citemacro_citep">(Lightman et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib32" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.6.6.2">808</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.7.7.1">   O1 Journey <cite class="ltx_cite ltx_citemacro_citep">(Qin et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib43" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.7.7.2">327</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.8.8.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.8.8.1.1">Instruction Following</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T5.1.8.8.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.8.8.2.1">13,188</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.9.9.1">   No Robots <cite class="ltx_cite ltx_citemacro_citep">(Rajani et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib45" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.9.9.2">9,500</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.10.10.1">   UltraFeedback <cite class="ltx_cite ltx_citemacro_citep">(Cui et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib10" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.10.10.2">3,688</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.11.11.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.11.11.1.1">Coding</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T5.1.11.11.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.11.11.2.1">10,814</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.12.12.1">   Evol codealpaca v1 <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib36" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.12.12.2">5,564</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.13.13.1">   Tulu 3 SFT Personas Code <cite class="ltx_cite ltx_citemacro_citep">(Lambert et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib30" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.13.13.2">5,250</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.14.14.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.14.14.1.1">Safety</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T5.1.14.14.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.14.14.2.1">5,300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.15.15.1">   HelpSteer <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib54" title="">2023c</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.15.15.2">5,300</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.16.16.1"><span class="ltx_text ltx_font_italic" id="A1.T5.1.16.16.1.1">Finance</span></th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T5.1.16.16.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.16.16.2.1">4,434</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.17.17.1">   Wealth Alpaca <cite class="ltx_cite ltx_citemacro_citep">(Bharti, <a class="ltx_ref" href="https://arxiv.org/html/2502.09042v1#bib.bib4" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_right" id="A1.T5.1.17.17.2">4,434</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T5.1.18.18.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.18.18.1.1">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A1.T5.1.18.18.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.18.18.2.1">55,677</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the composition of the training dataset used to develop the Typhoon T1 reasoning model.  It breaks down the number of records from each dataset used across five different domains: mathematics, instruction following, coding, safety, and finance.  The table provides context on the diversity of tasks and data sources used for model training, highlighting the quantity of data drawn from each source dataset within each domain.
> <details>
> <summary>read the caption</summary>
> Table 5: Data mixture of the training set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.4.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.5.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.2.1.1.1">Typhoon 2</span></th>
<td class="ltx_td ltx_border_t" id="A1.T6.1.2.1.2"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.2.1.3"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.2.1.4"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.2.1.5"></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.3.2.1">   Zero-shot</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.2">104.61</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.3">384.78</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.4">130.41</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.2.5">21.90</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.4.3.1">   Zero-shot CoT</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.2">741.97</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.3">1238.54</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.4">1697.96</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3.5">149.19</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.5.4.1">   SFT</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.2">72.22</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.3">479.55</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.4">91.25</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.4.5">587.95</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.6.5.1.1">Typhoon T</span></th>
<td class="ltx_td ltx_border_t" id="A1.T6.1.6.5.2"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.6.5.3"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.6.5.4"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.1.6.5.5"></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.7.6.1">   Unstructured</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.2">169.03</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.3">478.53</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.4">491.33</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6.5">829.21</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T6.1.8.7.1">   Semi-structured</th>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.2">170.20</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.3">795.38</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.4">487.39</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.7.5">900.90</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T6.1.9.8.1">   Structured</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.2">102.96</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.3">466.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.4">293.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.9.8.5">995.04</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of tokens generated by different language models across various benchmark datasets.  The models include Typhoon 2 (with zero-shot and zero-shot chain-of-thought prompting) and Typhoon T (with unstructured, semi-structured, and structured thinking formats).  The benchmarks show the average token count for each model configuration, providing insights into the length and complexity of the generated responses.
> <details>
> <summary>read the caption</summary>
> Table 6: Average number of output tokens generated by each model on the benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Dataset Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">HumanEval+</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">IFEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.6.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.7.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.1.2.1.1">100%</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.2">62.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.3">69.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.2.1.4.1">53.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.5">27.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.6">23.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.2.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.2.1.7.1">22.84</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.3.2.1">75%</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.2"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T7.1.3.2.2.1">62.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.3"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T7.1.3.2.3.1">70.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.4">49.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.5"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T7.1.3.2.5.1">30.80</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.3.2.6.1">27.39</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.3.2.7">21.71</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.4.3.1">50%</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.2">61.87</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.3">64.59</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.4">48.80</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.4.3.5.1">29.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.4.3.6.1">27.63</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.4.3.7">20.36</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.5.4.1">25%</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.2"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T7.1.5.4.2.1">62.09</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.3">66.93</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.4">50.46</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.5.4.5.1">29.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.6"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T7.1.5.4.6.1">30.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.5.4.7">20.54</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.1.6.5.1">10%</th>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.2">60.20</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.3">65.51</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.4">50.65</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.6.5.5.1">29.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.6.5.6.1">29.03</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.6.5.7">21.07</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.1.7.6.1">5%</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.2">60.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.3">64.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.4">47.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.7.6.5.1">30.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T7.1.7.6.6.1">29.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.7.6.7">19.91</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of reasoning models trained on different sizes of the training dataset, ranging from 5% to 100%.  The results are evaluated across six benchmarks: GSM8K, HumanEval+, IFEval, GPQA, MMLU Pro, and ThaiExam.  The table shows that smaller datasets sometimes achieve better performance than the full dataset, especially on the GPQA and MMLU Pro benchmarks. This suggests that there is a potential optimal dataset size for training these models, and that overtraining on very large datasets might not necessarily result in improved performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance at different dataset sizes. Smaller dataset sizes can sometimes outperform the 100% baseline, particularly in GPQA and MMLU Pro.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.3.1">HumanEval+</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.4.1">IFEval</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.6.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.3.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T8.3.1.1.7.1">ThaiExam</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.3.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.2.1.1.1">Typhoon T1-EN</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.3.2.1.2.1">62.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.3.2.1.3.1">70.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.4">49.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.5"><span class="ltx_text ltx_font_bold" id="A1.T8.3.2.1.5.1">30.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.6">27.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.2.1.7">21.71</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.3.2.1">   - IF</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.2">59.59</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.3">69.57</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.4">46.58</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.5">29.02</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.6">26.34</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2.7"><span class="ltx_text ltx_font_bold" id="A1.T8.3.3.2.7.1">22.64</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.4.3.1">   - Math</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.2">59.51</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.3">69.47</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.4"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T8.3.4.3.4.1">53.60</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.5"><span class="ltx_text ltx_font_italic" id="A1.T8.3.4.3.5.1" style="color:#FF0000;">25.45</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.3.4.3.6.1">28.52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.4.3.7">20.88</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.5.4.1">   - Code</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.2">56.94</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.3"><span class="ltx_text ltx_font_italic" id="A1.T8.3.5.4.3.1" style="color:#FF0000;">64.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.4">41.96</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.5">27.68</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.3.5.4.6.1">27.65</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.5.4.7">19.57</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.6.5.1">   - Safety</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.2"><span class="ltx_text ltx_font_italic" id="A1.T8.3.6.5.2.1" style="color:#FF0000;">56.71</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.3">64.35</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.4"><span class="ltx_text ltx_font_italic" id="A1.T8.3.6.5.4.1" style="color:#FF0000;">41.59</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.5">30.13</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.6"><span class="ltx_text ltx_font_bold" id="A1.T8.3.6.5.6.1">29.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.6.5.7"><span class="ltx_text ltx_font_italic" id="A1.T8.3.6.5.7.1" style="color:#FF0000;">17.19</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.3.7.6.1">   - Finance</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.2">61.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.3">67.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T8.3.7.6.4.1">50.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.5">27.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.6"><span class="ltx_text ltx_font_italic" id="A1.T8.3.7.6.6.1" style="color:#FF0000;">20.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.3.7.6.7">18.68</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a leave-one-out experiment designed to analyze the impact of removing specific domains from the training dataset on the model's performance across various benchmarks.  Each row represents a model trained without a particular domain (indicated by '-'). The columns show the performance metrics (GSM8K, HumanEval+, IFEval, GPQA, MMLU Pro, ThaiExam) for each model variant. Red values highlight the largest performance drop observed after excluding a specific domain.  The results demonstrate that the removal of certain domains, like mathematical reasoning, significantly affects some benchmarks (IFEval) while surprisingly increasing performance on others (MMLU Pro after removing the safety domain).
> <details>
> <summary>read the caption</summary>
> Table 8: Leave-one-out experiment results, assessing the impact of removing specific domains from training. red values highlight the largest performance drop in each column. The “-” symbol denotes the removal of the corresponding domain from training. Excluding mathematical reasoning strongly improves IFEval performance, while safety removal boosts MMLU Pro.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09042/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09042/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}