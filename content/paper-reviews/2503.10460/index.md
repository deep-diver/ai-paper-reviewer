---
title: "Light-R1: Curriculum SFT, DPO and RL for Long COT from Scratch and Beyond"
summary: "Light-R1: Trains long COT models from scratch using curriculum SFT, DPO, and RL, achieving SOTA performance and strong generalization with limited resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Qiyuan Tech",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10460 {{< /keyword >}}
{{< keyword icon="writer" >}} Liang Wen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10460" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10460" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10460/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the challenge of training long Chain-of-Thought(COT) models, which is crucial for advanced reasoning tasks. Existing large models require significant computational resources, limiting accessibility. Researchers are exploring smaller, efficient models, but creating them requires careful data selection and training. The current methods often fall short in achieving robust performance, particularly in tasks like math problem-solving.



To solve this, the paper introduces **Light-R1**, a series of models trained using a curriculum-based approach. This involves multiple stages of Supervised Fine-Tuning (SFT), followed by Direct Preference Optimization (DPO) and Reinforcement Learning (RL). The researchers show that this method allows them to train high-performing models from scratch, using smaller base models and less computational power. They also highlight the importance of a carefully curated dataset, demonstrating that a small, high-quality dataset can significantly improve the performance of various models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Curriculum learning with staged SFT and DPO can effectively train long-COT models from scratch. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A carefully curated dataset of high-quality math problems can significantly improve the performance of reasoning models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reinforcement learning can further enhance the reasoning capabilities of already fine-tuned long-COT models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
The study offers a practical recipe for training COT models and highlights the importance of SFT data. This work opens doors for more cost-effective and accessible research in reasoning models, enabling researchers with limited resources to push the boundaries of AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10460/extracted/6275403/figures/Light-R1-wenliang.png)

> 🔼 This figure illustrates the training pipeline used to develop the Light-R1-32B model.  It shows the data processing steps, including data collection from various sources, decontamination to remove duplicates and inconsistencies, and difficulty filtering to select the most challenging problems for training. The model training phase is also depicted, highlighting the curriculum learning strategy with two stages of supervised fine-tuning (SFT) followed by direct preference optimization (DPO). This curriculum approach gradually increases the difficulty of the training data to improve model reasoning capabilities. The figure visually summarizes the complete workflow from raw data to the final Light-R1-32B model.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of training pipeline of Light-R1-32B.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S0.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S0.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.2.1">AIME24</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.3.1">AIME25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.4.1">GPQA Diamond</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S0.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S0.T1.1.1.1.5.1">Training Recipe</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S0.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.1.2.1.1">Light-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.2.1.2">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.2.1.3">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S0.T1.1.2.1.4">61.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S0.T1.1.2.1.5">SFT stage1&amp;2 + DPO</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S0.T1.1.3.2.1">Light-R1-7B-DS</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.3.2.2">59.1</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.3.2.3">44.3</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.3.2.4">49.4</td>
<td class="ltx_td ltx_align_left" id="S0.T1.1.3.2.5">SFT stage2</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S0.T1.1.4.3.1">Light-R1-14B-DS</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.3.2">74.0</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.3.3">60.2</td>
<td class="ltx_td ltx_align_center" id="S0.T1.1.4.3.4">61.7</td>
<td class="ltx_td ltx_align_left" id="S0.T1.1.4.3.5">SFT stage2 + GRPO</td>
</tr>
<tr class="ltx_tr" id="S0.T1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T1.1.5.4.1">Light-R1-32B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.5.4.2">78.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.5.4.3">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S0.T1.1.5.4.4">68.0</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S0.T1.1.5.4.5">SFT stage2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents an overview of the Light-R1 series of large language models.  It shows the model name, performance metrics (AIME24, AIME25, GPQA, Diamond), and the training recipe used for each model.  The 'AIME' scores are metrics for mathematical reasoning ability, while GPQA and Diamond measure performance on different reasoning tasks. The training recipes include stages of Supervised Fine-Tuning (SFT) and Direct Preference Optimization (DPO), with some models also undergoing Reinforcement Learning (RL) with GRPO. The '-DS' suffix indicates models that were fine-tuned from DeepSeek-R1-Distill, while those without the suffix originated from Qwen-Instruct.
> <details>
> <summary>read the caption</summary>
> Table 1: Light-R1 models. “-DS” = from DeepSeek-R1-Distill, otherwise from Qwen-Instruct.
> </details>





### In-depth insights


#### Long COT from RL
**Reinforcement Learning (RL) for long Chain-of-Thought (CoT)** presents a significant avenue for enhancing reasoning capabilities in language models. The core idea revolves around training models to generate more accurate and complete CoTs, leading to improved performance in complex tasks. **The challenge lies in the complexity of RL**, as it requires carefully designed reward functions to guide the model toward desired behaviors. **A balance needs to be found between exploration and exploitation**, ensuring that the model discovers novel reasoning paths while maintaining consistency and reliability. **Additionally, the computational cost of RL can be substantial**, necessitating efficient training algorithms and infrastructure. Despite these hurdles, the potential benefits of RL for long CoT are immense, paving the way for more robust and intelligent language models.

#### Curriculum Design
**Curriculum design** is critical for training long-context models, particularly from scratch.  A **multi-stage approach** with increasing difficulty helps the model gradually acquire complex reasoning skills. The process starts with a **general dataset** that introduces fundamental concepts and then transitions to more **challenging problems** requiring sophisticated reasoning. This gradual exposure prevents the model from being overwhelmed and ensures effective learning. Data selection is also important which involves strategies for identifying and prioritizing valuable training examples.

#### SFT+DPO Scaling
**Scaling SFT (Supervised Fine-Tuning) and DPO (Direct Preference Optimization) presents a compelling paradigm for enhancing language model capabilities.** The effectiveness of SFT hinges on the quality and diversity of the training data, while DPO leverages human preferences to align models with desired behaviors. **Scaling both aspects requires careful consideration**: For SFT, this involves expanding the dataset with high-quality examples that cover a wide range of tasks and reasoning abilities. **DPO scaling involves gathering more preference data**, potentially through active learning strategies that prioritize examples where the model is uncertain. Successfully scaling SFT+DPO needs balancing between model capacity, data quality, and computational costs, paving the way for significant advancements in language model performance and alignment.

#### R1 Reproducibility
The paper emphasizes the importance of **reproducible results** in the context of training large language models for long-chain-of-thought reasoning. It details the establishment of **stable and trustworthy evaluation protocols** mirroring those used by DeepSeek-AI to ensure the reliability of their findings. This commitment to reproducibility is evident in the release of evaluation code and logs, enabling others to independently verify the reported performance. The ability to reproduce results from other prominent models like DeepSeek-R1 and Qwen further strengthens the credibility of the research and provides a solid foundation for future work. The paper notes difficulties in matching the performance of models such as DeepSeek-R1 with smaller models trained on less data, highlighting the challenges in achieving comparable results even with open-source efforts. The study meticulously addresses data contamination issues, which is a crucial aspect of reproducibility, by rigorously cleaning training datasets to avoid biases and inaccurate performance evaluations. They thoroughly decontaminate datasets to ensure a fair comparison with benchmark datasets, which is a key factor of reproducibility. **Reproducibility is central** to validating their curriculum SFT, DPO, and RL approach for long COT model training.

#### High Data Quality
**High data quality is paramount for training effective AI models, especially in tasks requiring reasoning and problem-solving.** The quality of data directly impacts a model's ability to learn, generalize, and perform well on unseen examples. Data quality encompasses various aspects, including accuracy, completeness, consistency, and relevance. **Accurate data ensures the model learns from correct information**, preventing the propagation of errors and biases. **Complete data provides the model with all the necessary information to understand the context and make informed decisions.** Consistent data ensures that the model can rely on the information it receives, without being confused by conflicting or contradictory inputs. Finally, relevant data ensures that the model focuses on the most important information for the task at hand. **Maintaining high data quality requires careful data collection, cleaning, and validation processes.** This may involve manual inspection, automated checks, and the use of data augmentation techniques to address data gaps and inconsistencies. **Investing in high data quality is essential for building reliable and trustworthy AI systems.**


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T2.1.1.1.2.1">AIME24 pass@1, paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S1.T2.1.1.1.3.1">AIME24 pass@1, ours</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.2.1.1">DeepSeek-R1-distill-Qwen-32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.2.1.2">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.1.2.1.3">72.3</td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.3.2">
<td class="ltx_td ltx_align_center" id="S1.T2.1.3.2.1">DeepSeek-R1-distill-Qwen-14B</td>
<td class="ltx_td ltx_align_center" id="S1.T2.1.3.2.2">69.7</td>
<td class="ltx_td ltx_align_center" id="S1.T2.1.3.2.3">69.3</td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.4.3">
<td class="ltx_td ltx_align_center" id="S1.T2.1.4.3.1">DeepSeek-R1-distill-Qwen-7B</td>
<td class="ltx_td ltx_align_center" id="S1.T2.1.4.3.2">55.5</td>
<td class="ltx_td ltx_align_center" id="S1.T2.1.4.3.3">54.0</td>
</tr>
<tr class="ltx_tr" id="S1.T2.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T2.1.5.4.1">QWQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T2.1.5.4.2">79.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T2.1.5.4.3">78.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the reproduction of evaluation results reported in two previous research papers: DeepSeek-AI [2025] and Qwen [2025].  It compares the performance of various models, specifically DeepSeek-R1 models distilled with Qwen and the QWQ-32B model, across two metrics: AIME24 pass@1 and AIME25 pass@1.  The 'pass@1' metric signifies the percentage of questions where the model provided a correct answer as its first response. The table serves to validate the reproducibility of the evaluation process used in the current study by replicating previously published results, confirming the trustworthiness of the evaluation methods employed.
> <details>
> <summary>read the caption</summary>
> Table 2: Reproduction of DeepSeek-AI [2025] and Qwen [2025] evaluation results
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.2.1">AIME24+25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.3.1">MATH-500</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.4.1">GPQA Diamond</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.1.1">OpenThoughts-114k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.1.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.1.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.1.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.2.1">Open-R1-Math-220k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.2.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.2.3">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.2.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.4.3.1">DeepScaleR-Preview-Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.4.3.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.4.3.3">196</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.4.3.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.5.4.1">LIMO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.5.4.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.5.4.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.5.4.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.5.1">Bespoke-Stratos-17k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.5.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.5.3">125</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.5.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.7.6.1">Open-Reasoner-Zero</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.7.6.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.7.6.3">325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.7.6.4">0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.8.7.1">simplescaling/data_ablation_full59K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.8.7.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.8.7.3">244</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.8.7.4">1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.9.8.1">simplescaling/s1K-1.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.9.8.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.9.8.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.9.8.4">1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.10.9">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.10.9.1">ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.10.9.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.10.9.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.1.10.9.4">0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the number of overlapping prompts (questions) found in several open-source datasets used for large language model training when compared to established benchmark datasets.  The goal is to assess the degree of data contamination or overlap between these datasets, highlighting potential issues of redundancy or bias in training data.  Datasets listed include several HuggingFace datasets and a custom dataset created by the authors.  Benchmarks being compared against include AIME24+25, MATH-500, GPQA, and Diamond.
> <details>
> <summary>read the caption</summary>
> Table 3: Number of matched prompts in open-source datasets against benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1">Stage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.2.1">AIME24</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.3.1">AIME25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.4.1">GPQA Diamond</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T4.1.2.1.1">Qwen2.5-32B-Instruct (base model)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.2.1.2">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.2.1.3">13.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.2.1.4">48.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.3.2.1">Light-R1-32B-SFT-stage1</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.3.2.2">69.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.3.2.3">57.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.3.2.4">64.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.4.3.1">Light-R1-32B-SFT-stage2</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.4.3.2">73.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.4.3.3">64.3</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.4.3.4">60.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T4.1.5.4.1">Light-R1-32B-DPO</th>
<td class="ltx_td ltx_align_center" id="S3.T4.1.5.4.2">75.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.5.4.3">63.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.1.5.4.4">61.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T4.1.6.5.1">Light-R1-32B (merged model)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.6.5.2.1">76.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.6.5.3.1">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.1.6.5.4">61.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the performance improvement at each stage of the curriculum learning process for the Light-R1-32B model.  It illustrates the gains achieved after each stage: SFT stage 1, DPO, and SFT stage 2, showing the improvement in AIME24 and AIME25 scores, as well as GPQA and Diamond benchmark scores. The base model's scores are also included for comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Stage-wise performance improvement
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T5.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.2.1">AIME24</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.3.1">AIME25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T5.1.1.1.4.1">GPQA Diamond</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.1.2.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T5.1.2.1.1">DeepSeek-R1-Distill-Qwen-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.2.1.2">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.2.1.3">39.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.2.1.4">49.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.3.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T5.1.3.2.1">Light-R1-7B-DS</th>
<td class="ltx_td ltx_align_center" id="S3.T5.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.3.2.2.1">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.3.2.3.1">44.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.3.2.4">49.4</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.4.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T5.1.4.3.1">DeepSeek-R1-Distill-Qwen-14B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.4.3.2">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.4.3.3">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.4.3.4">59.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.5.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T5.1.5.4.1">Light-R1-14B-DS-SFT</th>
<td class="ltx_td ltx_align_center" id="S3.T5.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.5.4.2.1">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.5.4.3.1">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T5.1.5.4.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.6.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T5.1.6.5.1">DeepSeek-R1-Distill-Qwen-32B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.6.5.2">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.6.5.3">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.1.6.5.4">62.1</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.7.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S3.T5.1.7.6.1">Light-R1-32B-DS</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S3.T5.1.7.6.2.1">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S3.T5.1.7.6.3.1">65.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S3.T5.1.7.6.4.1">68.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance improvements achieved by fine-tuning various DeepSeek-R1-Distill-Qwen models using a new 3k dataset focused on high-difficulty mathematical problems.  It compares the performance of the original DeepSeek-R1-Distill-Qwen models with the performance after fine-tuning on the 3k dataset across different model sizes (7B, 14B, and 32B parameters) and evaluation metrics (AIME24, AIME25, GPQA, and Diamond). This showcases the effectiveness of the 3k dataset in enhancing the reasoning capabilities of these models.
> <details>
> <summary>read the caption</summary>
> Table 5: Improvement with 3k data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.2.1">AIME24</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.3.1">AIME25</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.4.1">GPQA Diamond</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.1.2.1.1">DeepSeek-R1-Distill-Qwen-14B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.2">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.3">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.2.1.4">59.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T6.1.3.2.1">Light-R1-14B-DS-SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.2">72.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.3">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.3.2.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T6.1.4.3.1">Light-R1-14B-DS-SFT-GPRO epoch1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.2">72.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.3">57.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.3.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T6.1.5.4.1">Light-R1-14B-DS-SFT-GPRO epoch2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.2">73.4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.3">60.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.4.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.1.6.5.1">Light-R1-14B-DS(-SFT-GPRO epoch3)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.6.5.2.1">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.6.5.3.1">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.6.5.4.1">61.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance improvement achieved by applying reinforcement learning (specifically, GRPO) to the Light-R1-14B-DS model.  It compares the AIME24 and AIME25 scores (metrics for mathematical problem-solving) and GPQA Diamond scores (a measure of general reasoning ability) before and after each epoch of reinforcement learning.  This demonstrates the effectiveness of RL in enhancing the model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 6: RL performance improvement of Light-R1-14B-DS.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10460/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10460/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}