---
title: "SoTA with Less: MCTS-Guided Sample Selection for Data-Efficient Visual Reasoning Self-Improvement"
summary: "SOTA Visual Reasoning with Less Data via MCTS-Guided Sample Selection!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 University of Maryland, College Park",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07934 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiyao Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07934" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07934" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07934/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Enhancing the reasoning capabilities of Vision-Language Models (VLMs) often requires large-scale reinforcement fine-tuning (RFT), yet progress is limited due to the mismatch between text-focused pre-training and multimodal post-training. Existing methods often involve knowledge distillation via supervised fine-tuning, which is cumbersome and prevents VLMs from truly self-improving. The key issue is identifying appropriately challenging training data that aligns with the VLM's skill level. 



To address these issues, this paper introduces ThinkLite-VL, a data-efficient self-improving method that uses Monte Carlo Tree Search (MCTS) to select challenging training samples. By repurposing MCTS, the method quantifies sample difficulty based on the iterations required for the VLM to solve each problem. The framework filters and retains 11k samples, achieving state-of-the-art accuracy on MathVista and improving average performance by 7% with no additional knowledge distillation. **This demonstrates a data-efficient approach to enhancing visual reasoning.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MCTS can be repurposed for sample difficulty quantification to improve data efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} High-quality, challenging training data is crucial for VLM self-improvement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ThinkLite-VL achieves SoTA performance using only 11k training samples. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a data-efficient visual reasoning method, enabling VLM self-improvement with fewer samples. **It offers a novel MCTS-guided sample selection strategy**, outperforming existing 7B-level models and providing insights for future research in VLM training and reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.07934/extracted/6351589/figures/mainfigure_v2.png)

> 🔼 Figure 1 demonstrates the effectiveness of the proposed data-efficient self-improvement method for training visual reasoning VLMs.  The left panel shows a comparison of various VLMs' performance on the MathVista benchmark, highlighting that ThinkLite-VL-7B achieves state-of-the-art accuracy (75.1%) with significantly fewer parameters than competing models.  The right panel contrasts the amount of reasoning training data used by different 7B-level reasoning models.  ThinkLite-VL-7B stands out by achieving top performance using only 11,000 data points, a substantial reduction compared to other models, and without employing knowledge distillation techniques.
> <details>
> <summary>read the caption</summary>
> Figure 1: Recent “Reasoning VLMs” studies finetune “Base VLMs” with extra reasoning training data to improve visual reasoning. This paper presents a data-efficient self-improving method for better training reasoning VLMs. (Left) Comparison of VLMs with different parameter sizes on MathVista. Our model ThinkLite-VL-7B achieves the state-of-the-art (SoTA) accuracy of 75.1, surpassing Qwen2.5-VL-72B-Instruct, GPT-4o, O1, and other 7B-level reasoning VLMs. (Right) Comparison of the reasoning training data size used by 7B-level reasoning models. Our model achieves SoTA performance using only 11k data, and without any additional knowledge distillation.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F3.9.8.8">
<tr class="ltx_tr" id="S3.F3.9.8.8.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.F3.9.8.8.9.1" style="padding:0.9pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.9.8.8.9.1.1">Category</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.F3.9.8.8.9.2" style="padding:0.9pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.9.8.8.9.2.1">QA Category</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.F3.9.8.8.9.3" style="padding:0.9pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.9.8.8.9.3.1">Data source</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.F3.9.8.8.9.4" style="padding:0.9pt 1.0pt;"><span class="ltx_text ltx_font_bold" id="S3.F3.9.8.8.9.4.1">Data size</span></td>
</tr>
<tr class="ltx_tr" id="S3.F3.2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.2.1.1.1.2" rowspan="3" style="padding:0.9pt 1.0pt;"><span class="ltx_text" id="S3.F3.2.1.1.1.2.1">Math Reasoning</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.2.1.1.1.3" style="padding:0.9pt 1.0pt;">Open-ended</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.F3.2.1.1.1.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.2.1.1.1.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#C2F0C2" fill="#C2F0C2" fill-opacity="1" stroke="#C2F0C2" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.2.1.1.1.4" style="padding:0.9pt 1.0pt;">Geometry3K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.F3.2.1.1.1.5" style="padding:0.9pt 1.0pt;">3001</td>
</tr>
<tr class="ltx_tr" id="S3.F3.3.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.3.2.2.2.2" style="padding:0.9pt 1.0pt;">Multi-choice</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.F3.3.2.2.2.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.3.2.2.2.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#A1EAA2" fill="#A1EAA2" fill-opacity="1" stroke="#A1EAA2" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.3.2.2.2.3" style="padding:0.9pt 1.0pt;">GeoQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.F3.3.2.2.2.4" style="padding:0.9pt 1.0pt;">5010</td>
</tr>
<tr class="ltx_tr" id="S3.F3.4.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.4.3.3.3.2" style="padding:0.9pt 1.0pt;">Multi-choice</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.F3.4.3.3.3.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.4.3.3.3.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#E2F9E1" fill="#E2F9E1" fill-opacity="1" stroke="#E2F9E1" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.4.3.3.3.3" style="padding:0.9pt 1.0pt;">Geos</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.F3.4.3.3.3.4" style="padding:0.9pt 1.0pt;">66</td>
</tr>
<tr class="ltx_tr" id="S3.F3.5.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.5.4.4.4.2" rowspan="3" style="padding:0.9pt 1.0pt;"><span class="ltx_text" id="S3.F3.5.4.4.4.2.1">Natural Image Understanding</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.5.4.4.4.3" style="padding:0.9pt 1.0pt;">Open-ended</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.F3.5.4.4.4.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.5.4.4.4.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#FAD7AF" fill="#FAD7AF" fill-opacity="1" stroke="#FAD7AF" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.5.4.4.4.4" style="padding:0.9pt 1.0pt;">FigureQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.F3.5.4.4.4.5" style="padding:0.9pt 1.0pt;">10000</td>
</tr>
<tr class="ltx_tr" id="S3.F3.6.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.6.5.5.5.2" style="padding:0.9pt 1.0pt;">Multi-choice</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.F3.6.5.5.5.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.6.5.5.5.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#F8D99F" fill="#F8D99F" fill-opacity="1" stroke="#F8D99F" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.6.5.5.5.3" style="padding:0.9pt 1.0pt;">ScienceQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.F3.6.5.5.5.4" style="padding:0.9pt 1.0pt;">10332</td>
</tr>
<tr class="ltx_tr" id="S3.F3.7.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.7.6.6.6.2" style="padding:0.9pt 1.0pt;">Open-ended</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.F3.7.6.6.6.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.7.6.6.6.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#FCE3C0" fill="#FCE3C0" fill-opacity="1" stroke="#FCE3C0" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.F3.7.6.6.6.3" style="padding:0.9pt 1.0pt;">OK-VQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.F3.7.6.6.6.4" style="padding:0.9pt 1.0pt;">9009</td>
</tr>
<tr class="ltx_tr" id="S3.F3.8.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.F3.8.7.7.7.2" rowspan="2" style="padding:0.9pt 1.0pt;"><span class="ltx_text" id="S3.F3.8.7.7.7.2.1">Chart Understanding</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.8.7.7.7.3" style="padding:0.9pt 1.0pt;">Open-ended</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.F3.8.7.7.7.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.8.7.7.7.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#8FBCE6" fill="#8FBCE6" fill-opacity="1" stroke="#8FBCE6" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.F3.8.7.7.7.4" style="padding:0.9pt 1.0pt;">IconQA</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.F3.8.7.7.7.5" style="padding:0.9pt 1.0pt;">10000</td>
</tr>
<tr class="ltx_tr" id="S3.F3.9.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.F3.9.8.8.8.2" style="padding:0.9pt 1.0pt;">Open-ended</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.F3.9.8.8.8.1" style="padding:0.9pt 1.0pt;"><svg class="ltx_picture" height="10.38" id="S3.F3.9.8.8.8.1.pic1" overflow="visible" version="1.1" width="10.38"><g color="#B3D5F2" fill="#B3D5F2" fill-opacity="1" stroke="#B3D5F2" stroke-opacity="1" stroke-width="0.4pt" transform="translate(0,10.38) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 10.38 L 10.38 10.38 L 10.38 0 Z M 10.38 10.38" style="stroke:none"></path></g></svg></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.F3.9.8.8.8.3" style="padding:0.9pt 1.0pt;">TabMWP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.F3.9.8.8.8.4" style="padding:0.9pt 1.0pt;">22579</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the visual reasoning training data used for ThinkLite-VL and other similar models.  It highlights the unique aspects of ThinkLite-VL's training data, particularly its smaller size and lack of knowledge distillation.  The table shows that most other models use knowledge distillation from larger models or rely on closed-source data, while ThinkLite-VL uses a significantly smaller dataset without any knowledge distillation. The exception is MM-Eureka-Qwen-7B, which employs a larger K12 dataset and accuracy-based filtering. The 'data size' column indicates the amount of supplementary visual reasoning data used to improve base models' reasoning capabilities.  This supplementary data is used for either supervised fine-tuning (SFT) or reinforcement fine-tuning (RFT).
> <details>
> <summary>read the caption</summary>
> Table 3: Visual reasoning training data comparison between ThinkLite-VL and other VLM reasoning models. ALL these reasoning models have distilled knowledge from larger models or closed-source models except for MM-Eureka-Qwen-7B. MM-Eureka-Qwen-7B uses more K12 data (54k) than ours and performs accuracy-based data filtering before training. Here the data size refers to the amount of additional visual reasoning data used to boost the base model for reasoning via SFT or RL training.
> </details>





### In-depth insights


#### MCTS for VLM RFT
**MCTS (Monte Carlo Tree Search) can significantly enhance VLM Reinforcement Fine-Tuning (RFT) by addressing the challenge of identifying appropriately challenging training samples.** VLMs often struggle with visual reasoning tasks due to the mismatch between text-focused pre-training and the multimodal nature of VLM post-training, **necessitating effective data filtering strategies.** By repurposing MCTS, a classic inference-time search algorithm, the difficulty of training samples can be accurately quantified. **MCTS's explicit tree search enforces sufficient thinking compute in deciding question difficulty, providing a tight correlation between difficulty and the number of iterations needed to solve it.** The key insight is that the number of MCTS iterations required for a VLM to solve a problem serves as a reliable metric for assessing its difficulty. Samples requiring more iterations are considered more challenging and therefore more valuable for RFT, ultimately leading to improved visual reasoning capabilities.

#### Data Quality > Size
The paper emphasizes the importance of **data quality** over sheer size in the context of training Visual Language Models (VLMs) for reasoning tasks. While larger datasets are often assumed to yield better performance, the authors demonstrate that a carefully selected subset of high-quality, challenging examples can significantly outperform models trained on larger, less curated datasets. This suggests that the signal-to-noise ratio in the training data is crucial, and that **focusing on data quality** through methods like MCTS-based sample selection can be more effective than simply increasing the amount of training data. The study highlights that incorporating a **large number of 'easy' samples** improves rewards during training but fails to enhance reasoning ability and may **weaken the training signal** during RFT.

#### ThinkLite-VL: SOTA
**ThinkLite-VL achieves state-of-the-art (SOTA) performance in visual reasoning tasks with significantly less training data**. The key innovation lies in a novel MCTS-guided sample selection method that identifies and prioritizes challenging training examples. This approach contrasts with traditional methods that rely on large datasets or knowledge distillation. By focusing on the most difficult samples, ThinkLite-VL maximizes the learning potential of the base model. The results demonstrate substantial improvements in average performance across eight benchmarks compared to the base model, surpassing other 7B-level reasoning VLMs and even outperforming larger open-source models. **The success of ThinkLite-VL underscores the importance of data quality and strategic sample selection in achieving SOTA results in visual reasoning**.

#### No Need for SFT
The idea of foregoing supervised fine-tuning (SFT) in favor of direct reinforcement fine-tuning (RFT) is intriguing. **Traditional approaches often rely on SFT to align models with a desired output format or style before RFT**. Eliminating SFT **suggests a belief that RFT can directly shape the model's behavior** without needing an initial alignment phase. This implies a potentially more efficient training pipeline, as it removes a computationally expensive step. It also raises questions about **the stability and convergence properties of RFT** when applied directly to a potentially misaligned model. The success would hinge on **a carefully designed reward function** that guides the model towards both correctness and desired behaviors.

#### Difficulty Matters
The idea that difficulty matters in machine learning, particularly in the context of training models for complex tasks like visual reasoning, is a crucial insight. It is not sufficient to simply expose a model to vast amounts of data; the **quality and nature of that data are paramount**. Specifically, the data should be carefully selected to present the model with appropriately challenging examples. Data that is too easy may lead to underfitting, where the model learns superficial correlations but fails to grasp the underlying principles. Conversely, data that is overwhelmingly difficult can overwhelm the model, hindering its ability to learn effectively. An appropriately challenging dataset lies in the sweet spot, pushing the model to its limits while remaining within its capacity to learn. Methods for curating such datasets, such as MCTS-guided sample selection, represent a significant advancement in data-efficient learning. It helps ensure that training is focused on the most informative examples, thereby maximizing the model's ability to generalize and perform well on unseen data. Difficulty-aware training could significantly improve model performance, especially when data is limited.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07934/extracted/6351589/figures/mainfigure_datasize_v2.png)

> 🔼 Figure 2 presents a detailed performance comparison of various visual reasoning models across eight benchmark datasets.  It demonstrates the superior performance of the proposed ThinkLite-VL-7B model compared to other 7B-level reasoning models, notably surpassing the Qwen2.5-VL-7B-Instruct model.  The figure visually highlights the relative strengths of each model across multiple metrics, providing a clear and comprehensive overview of their visual reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance comparison on 8 visual benchmarks. Our model significantly outperforms Qwen2.5-VL-7b-Instruct and other 7b-level reasoning models.
> </details>



![](https://arxiv.org/html/2504.07934/extracted/6351589/figures/maincompare.png)

> 🔼 Figure 3 presents a breakdown of the 70,000 training samples used in the ThinkLite-VL model.  These samples are categorized into three main visual reasoning tasks: mathematical reasoning, natural image understanding, and chart understanding.  Each category further subdivides into question types (e.g., open-ended, multiple choice). The figure visually displays the number of samples in each subcategory, showing the dataset composition.  A key finding highlighted in the caption is the importance of converting all answer formats to open-ended responses. This standardization is crucial for accurately determining question difficulty and achieving optimal model performance during training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data statistic of ThinkLite-VL-70k training dataset. We find that converting all answers to open-ended format is critical in reliably assessing question difficulty and effective model training.
> </details>



![](https://arxiv.org/html/2504.07934/extracted/6351589/figures/piechart_11k_v2.png)

> 🔼 This figure shows the distribution of difficulty levels in the 11,000 training samples selected by the MCTS-based data filtration method.  The x-axis represents the number of MCTS iterations required to solve a problem. The y-axis shows the percentage of samples at each iteration count. The samples requiring more than 50 iterations, categorized as 'Unsolved,' represent the most challenging problems for the VLM, while lower iteration counts indicate relatively easier problems.  The distribution is skewed toward the 'Unsolved' category, indicating that this subset of the data contains the most difficult samples. This suggests that using a data filtering strategy based on MCTS, enabling the retention of challenging and unsolved samples for training, is beneficial for enhancing VLM reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Data difficulty distribution of our 11k training set after MCTS-based data filtration. Unsolved refers to data that VLM cannot solve after 50 MCTS iterations.
> </details>



![](https://arxiv.org/html/2504.07934/extracted/6351589/figures/R1-reward.png)

> 🔼 This figure displays the reward curves obtained during reinforcement fine-tuning (RFT) for several variations of the ThinkLite-VL model. Each curve represents a model trained on a different dataset: a randomly selected subset (ThinkLite-VL-Random11k), the full dataset (ThinkLite-VL-Fullset), a subset containing only samples requiring more than 5 iterations to solve using Monte Carlo Tree Search (MCTS) (ThinkLite-VL-Iter5Only), the combination of samples that are unsolved and those requiring more than 5 iterations (ThinkLite-VL-Iter5+Unsolved which is the ThinkLite-VL model itself), and a self-consistency filtered set. The Iter5+Unsolved 11k dataset, used for the main ThinkLite-VL model, shows the lowest initial reward, indicating the highest difficulty, but also demonstrates a steeper curve suggesting that the more challenging data leads to better final performance. This supports the claim that including difficult samples in the RFT process improves the model's reasoning ability more effectively.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of reward curves of models trained with different data during RFT. Iter5+Unsolved 11k dataset presents the most challenging learning setting for VLM, highlighting the difficulty of the samples selected by MCTS-based sample selection.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.4.1">
<tr class="ltx_tr" id="S3.T3.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.1">Reasoning Models</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.2">Knowledge Distillation (KD)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.4.1.1.3">RFT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.1.1.4">Data size</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.4.1.2.1">LLaVA-Cot-11B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07934v1#bib.bib80" title="">80</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.2.2">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.1.2.3"><span class="ltx_text" id="S3.T3.4.1.2.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.4">100k</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.3.1">Mulberry-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07934v1#bib.bib83" title="">83</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.3.2">GPT-4o, Qwen2-VL-72B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.3.3"><span class="ltx_text" id="S3.T3.4.1.3.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.4">260k</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.4.1">Vision-R1-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07934v1#bib.bib22" title="">22</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.4.2">Deepseek-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.4.3"><span class="ltx_text" id="S3.T3.4.1.4.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.4.4">200k + 10k</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.5.1">OpenVLThinker-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07934v1#bib.bib12" title="">12</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.5.2">DeepSeek-R1-Distill-Qwen-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.5.3"><span class="ltx_text" id="S3.T3.4.1.5.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.5.4">59.2k</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.1.6.1">MM-EUREKA-Qwen-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07934v1#bib.bib48" title="">48</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.6.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.1.6.3"><span class="ltx_text" id="S3.T3.4.1.6.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.6.4">54k</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.4.1.7.1">ThinkLite-VL-7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.4.1.7.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.4.1.7.3"><span class="ltx_text" id="S3.T3.4.1.7.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.4.1.7.4">11k</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various Vision-Language Models (VLMs) on eight widely-used visual reasoning benchmarks.  It highlights the performance of different models, categorized by their parameter size (7B, larger, or closed-source).  The results showcase the state-of-the-art (SOTA) accuracy achieved by the authors' model, ThinkLite-VL-7B, especially its superior performance on the MathVista benchmark (75.1%). The comparison includes both open-source and commercially available models.  Note that some models were not evaluated on all benchmarks due to data usage or lack of open-source availability.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of different VLMs on 8 widely used visual benchmarks. The grey sections indicate models with larger parameter sizes and closed-source models. Our model achieves SoTA performance at the 7B level on 6 benchmarks and reaches a SoTA performance of 75.1 on MathVista among all VLMs. On average, our model improves performance by 7% compared with Qwen2.5-VL-7B-Instruct. We do not evaluate Mulberry-7B on MathVision because Mulberry-7B uses MathVision as training dataset, and for Vision-R1-7B, their model is not open-sourced, so we only refer to the results reported in their paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.4.1">
<tr class="ltx_tr" id="S4.T5.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.1">Models</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.2">Data size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.3.1" style="width:6.9pt;height:46.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:46.7pt;transform:translate(-19.89pt,-19.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.3.1.1">MathVista</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.3.2" style="width:6.7pt;height:35.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.47pt,-14.47pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.3.2.1">testmini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.4.1" style="width:6.9pt;height:51.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:51.2pt;transform:translate(-22.11pt,-22.11pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.4.1.1">MathVision</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.4.2" style="width:6.7pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.4pt;transform:translate(-6.38pt,-6.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.4.2.1">mini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.5.1" style="width:6.9pt;height:47pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.0pt;transform:translate(-20.04pt,-20.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.5.1.1">MathVerse</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.5.2" style="width:6.7pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.4pt;transform:translate(-6.38pt,-6.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.5.2.1">mini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.6.1" style="width:6.8pt;height:35pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.0pt;transform:translate(-14.08pt,-14.08pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.6.1.1">MMMU</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.7">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.7.1" style="width:6.8pt;height:36.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.7.1.1">MMStar</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.8">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.8.1" style="width:6.9pt;height:45.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.1pt;transform:translate(-19.1pt,-19.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.8.1.1">MMBench</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.9">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.9.1" style="width:6.8pt;height:36.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-14.92pt,-14.92pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.9.1.1">MM-Vet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.1.1.10">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T5.4.1.1.10.1" style="width:6.8pt;height:23.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.8pt;transform:translate(-8.46pt,-8.46pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T5.4.1.1.10.1.1">AI2D</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.1.1.11">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.2.1"><span class="ltx_text" id="S4.T5.4.1.2.1.1" style="color:#B3B3B3;">Qwen2.5-VL-72B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.2.2"><span class="ltx_text" id="S4.T5.4.1.2.2.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.3"><span class="ltx_text" id="S4.T5.4.1.2.3.1" style="color:#B3B3B3;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.4"><span class="ltx_text" id="S4.T5.4.1.2.4.1" style="color:#B3B3B3;">39.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.5"><span class="ltx_text" id="S4.T5.4.1.2.5.1" style="color:#B3B3B3;">57.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.6"><span class="ltx_text" id="S4.T5.4.1.2.6.1" style="color:#B3B3B3;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.7"><span class="ltx_text" id="S4.T5.4.1.2.7.1" style="color:#B3B3B3;">70.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.8"><span class="ltx_text" id="S4.T5.4.1.2.8.1" style="color:#B3B3B3;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.9"><span class="ltx_text" id="S4.T5.4.1.2.9.1" style="color:#B3B3B3;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.4.1.2.10"><span class="ltx_text" id="S4.T5.4.1.2.10.1" style="color:#B3B3B3;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.2.11"><span class="ltx_text" id="S4.T5.4.1.2.11.1" style="color:#B3B3B3;">70.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.3.1"><span class="ltx_text" id="S4.T5.4.1.3.1.1" style="color:#B3B3B3;">InterVL2.5-78B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.3.2"><span class="ltx_text" id="S4.T5.4.1.3.2.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.3"><span class="ltx_text" id="S4.T5.4.1.3.3.1" style="color:#B3B3B3;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.4"><span class="ltx_text" id="S4.T5.4.1.3.4.1" style="color:#B3B3B3;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.5"><span class="ltx_text" id="S4.T5.4.1.3.5.1" style="color:#B3B3B3;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.6"><span class="ltx_text" id="S4.T5.4.1.3.6.1" style="color:#B3B3B3;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.7"><span class="ltx_text" id="S4.T5.4.1.3.7.1" style="color:#B3B3B3;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.8"><span class="ltx_text" id="S4.T5.4.1.3.8.1" style="color:#B3B3B3;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.9"><span class="ltx_text" id="S4.T5.4.1.3.9.1" style="color:#B3B3B3;">72.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.3.10"><span class="ltx_text" id="S4.T5.4.1.3.10.1" style="color:#B3B3B3;">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.3.11"><span class="ltx_text" id="S4.T5.4.1.3.11.1" style="color:#B3B3B3;">68.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.4.1"><span class="ltx_text" id="S4.T5.4.1.4.1.1" style="color:#B3B3B3;">GPT-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.4.2"><span class="ltx_text" id="S4.T5.4.1.4.2.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.3"><span class="ltx_text" id="S4.T5.4.1.4.3.1" style="color:#B3B3B3;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.4"><span class="ltx_text" id="S4.T5.4.1.4.4.1" style="color:#B3B3B3;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.5"><span class="ltx_text" id="S4.T5.4.1.4.5.1" style="color:#B3B3B3;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.6"><span class="ltx_text" id="S4.T5.4.1.4.6.1" style="color:#B3B3B3;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.7"><span class="ltx_text" id="S4.T5.4.1.4.7.1" style="color:#B3B3B3;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.8"><span class="ltx_text" id="S4.T5.4.1.4.8.1" style="color:#B3B3B3;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.9"><span class="ltx_text" id="S4.T5.4.1.4.9.1" style="color:#B3B3B3;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.4.10"><span class="ltx_text" id="S4.T5.4.1.4.10.1" style="color:#B3B3B3;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.4.11"><span class="ltx_text" id="S4.T5.4.1.4.11.1" style="color:#B3B3B3;">65.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.5.1"><span class="ltx_text" id="S4.T5.4.1.5.1.1" style="color:#B3B3B3;">O1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.5.2"><span class="ltx_text" id="S4.T5.4.1.5.2.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.3"><span class="ltx_text" id="S4.T5.4.1.5.3.1" style="color:#B3B3B3;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.4"><span class="ltx_text" id="S4.T5.4.1.5.4.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.5"><span class="ltx_text" id="S4.T5.4.1.5.5.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.6"><span class="ltx_text" id="S4.T5.4.1.5.6.1" style="color:#B3B3B3;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.7"><span class="ltx_text" id="S4.T5.4.1.5.7.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.8"><span class="ltx_text" id="S4.T5.4.1.5.8.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.9"><span class="ltx_text" id="S4.T5.4.1.5.9.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.5.10"><span class="ltx_text" id="S4.T5.4.1.5.10.1" style="color:#B3B3B3;">–</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.5.11"><span class="ltx_text" id="S4.T5.4.1.5.11.1" style="color:#B3B3B3;">–</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.6.1">LLaVA-Cot-11B</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.6.2">100k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.3">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.4">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.5">33.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.6">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.7">57.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.8">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.9">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.4.1.6.10">78.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.6.11">52.85</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.7.1">Mulberry-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.7.2">260k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.3">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.4">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.5">39.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.7.6.1">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.7">61.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.8">79.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.9">63.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.7.10">80.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.7.11">–</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.8.1">Vision-R1-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.8.2">210k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.3">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.4">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.8.5.1">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.6">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.7">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.8">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.9">–</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.8.10">–</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.8.11">–</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.9.1">OpenVLThinker-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.9.2">59.2k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.3">70.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.4">29.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.5">47.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.6">51.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.7">63.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.8">81.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.9">66.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.9.10">82.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.9.11">61.71</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.10.1">MM-EUREKA-Qwen-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.10.2">54k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.3">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.4">31.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.5">50.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.6">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.7">64.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.8">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.9">64.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.10.10">81.4</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.10.11">62.15</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.11.1">Qwen2.5-VL-7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.4.1.11.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.3">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.4">23.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.5">44.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.6">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.7">61.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.8">80.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.9">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.4.1.11.10">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.1.11.11">59.69</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.12.1">ThinkLite-VL-Random11k</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.1.12.2">11k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.3">71.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.4">26.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.5">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.6">51.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.7">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.8">81.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.9">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.1.12.10">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.1.12.11">60.89</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T5.4.1.13.1">ThinkLite-VL-7B</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T5.4.1.13.2">11k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.3"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.3.1">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.4.1">32.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.5">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.6">54.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.7"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.7.1">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.8"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.8.1">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.9"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.9.1">67.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.4.1.13.10"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.10.1">83.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.1.13.11"><span class="ltx_text ltx_font_bold" id="S4.T5.4.1.13.11.1">63.89</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 compares the performance of ThinkLite-VL against variations of itself trained with differently selected data subsets.  ThinkLite-VL uses MCTS (Monte Carlo Tree Search) to select the most challenging 11k samples from an initial 70k dataset. The comparison includes models trained on randomly selected samples, only unsolved samples,  samples requiring more than 5 MCTS iterations, and samples identified using a self-consistency method, as well as a model trained on the full 70k dataset. The results show that ThinkLite-VL, utilizing the MCTS-selected subset, significantly outperforms other models across eight benchmark tasks. This demonstrates the effectiveness and superiority of the proposed MCTS-based sample selection method for improving visual reasoning performance in VLMs.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with models trained on data sampled using different selection strategies, ThinkLite-VL achieves significantly better performance, highlighting the effectiveness and superiority of our proposed MCTS-based sample selection method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.4.1">
<tr class="ltx_tr" id="S4.T6.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.1">Models</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.2">Data size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.3.1" style="width:6.9pt;height:46.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:46.7pt;transform:translate(-19.89pt,-19.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.3.1.1">MathVista</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.3.2" style="width:6.7pt;height:35.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.6pt;transform:translate(-14.47pt,-14.47pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.3.2.1">testmini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.4.1" style="width:6.9pt;height:51.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:51.2pt;transform:translate(-22.11pt,-22.11pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.4.1.1">MathVision</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.4.2" style="width:6.7pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.4pt;transform:translate(-6.38pt,-6.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.4.2.1">mini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.5.1" style="width:6.9pt;height:47pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:47.0pt;transform:translate(-20.04pt,-20.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.5.1.1">MathVerse</p>
</span></div>
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.5.2" style="width:6.7pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.4pt;transform:translate(-6.38pt,-6.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.5.2.1">mini</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.6.1" style="width:6.8pt;height:35pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.0pt;transform:translate(-14.08pt,-14.08pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.6.1.1">MMMU</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.7">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.7.1" style="width:6.8pt;height:36.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-14.93pt,-14.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.7.1.1">MMStar</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.8">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.8.1" style="width:6.9pt;height:45.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.1pt;transform:translate(-19.1pt,-19.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.8.1.1">MMBench</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.9">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.9.1" style="width:6.8pt;height:36.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-14.92pt,-14.92pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.9.1.1">MM-Vet</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.4.1.1.10">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T6.4.1.1.10.1" style="width:6.8pt;height:23.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.8pt;transform:translate(-8.46pt,-8.46pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T6.4.1.1.10.1.1">AI2D</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.4.1.1.11">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.1.2.1">ThinkLite-VL-7B</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.1.2.2">11k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.3">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.4">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.5">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.6">54.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.7">65.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.8">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.9">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.1.2.10">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.2.11">63.89</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.1.3.1">ThinkLite-VL-Unsolved</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.1.3.2">5.6k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.3">73.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.4">26.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.5">49.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.6">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.7">62.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.8">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.9">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.4.1.3.10">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.1.3.11">62.04</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.4.1">ThinkLite-VL-Iter5Only</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.4.2">5.4k</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.3">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.4">27.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.5">50.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.6">52.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.7">64.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.8">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.9">66.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.1.4.10">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.4.11">62.38</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.5.1">ThinkLite-VL-Random11k</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.5.2">11k</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.3">71.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.4">26.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.5">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.6">51.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.7">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.8">81.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.9">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.1.5.10">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.5.11">60.89</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.6.1">ThinkLite-VL-SelfConsistency</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.1.6.2">23k</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.3">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.4">30.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.5">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.6">53.8</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.7">64.1</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.8">81.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.9">67.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.4.1.6.10">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.1.6.11">63.15</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.4.1.7.1">ThinkLite-VL-Fullset</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.4.1.7.2">70k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.3">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.4">29.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.5">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.6">53.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.7">63.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.8">81.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.9">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.4.1.7.10">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.4.1.7.11">63.13</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of training data difficulty on the performance of the ThinkLite-VL model.  Different subsets of the training data were created based on the number of iterations required by the model to solve a problem using Monte Carlo Tree Search (MCTS).  The subsets range from only unsolved problems (Unsolved) to those solved in 5 or more iterations (Iter5+Unsolved) up to the full dataset (Fullset). The average performance across eight visual reasoning benchmarks is reported for each subset to show how the difficulty of training examples influences the model's final performance. The Iter5+Unsolved subset, which combines both unsolved and moderately challenging problems, yielded the best overall performance.
> <details>
> <summary>read the caption</summary>
> Table 7: ThinkLite-VL performance under different training data difficulty settings. Iter5+Unsolved achieves the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.4.1">
<tr class="ltx_tr" id="S4.T7.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T7.4.1.1.1">Difficulty level</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T7.4.1.1.2">Data size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.4.1.1.3">Avg. score</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.4.1.2.1">Fullset</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T7.4.1.2.2">70k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.1.2.3">63.13</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.3.1">Iter1+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.3.2">18k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.3.3">63.29</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.4.1">Iter5+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.4.2">11k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.4.3">63.89</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.5.1">Iter10+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.5.2">8k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.5.3">62.65</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.6.1">Iter20+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.6.2">6.8k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.6.3">62.61</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.7.1">Iter30+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.7.2">6.1k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.7.3">62.39</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.1.8.1">Iter40+Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.4.1.8.2">5.8k</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.1.8.3">62.26</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T7.4.1.9.1">Unsolved</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T7.4.1.9.2">5.6k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.4.1.9.3">62.04</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of questions from the FigureQA dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  The difficulty is assessed based on the number of iterations required by the Vision-Language Model (VLM) to arrive at the correct answer using Monte Carlo Tree Search.  Each row shows a question and the corresponding ground truth answer.  The 'Iter0' examples represent relatively easy questions, while the 'Unsolved' examples are those that the VLM could not solve within a predefined number of MCTS iterations, indicating high difficulty.  The table illustrates how the MCTS-based approach effectively identifies and separates easy, medium, and hard samples for training.
> <details>
> <summary>read the caption</summary>
> Table 8: Example of samples with different difficulties decided by MCTS-based sample selection from FigureQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.3.3.3.3">
<tr class="ltx_tr" id="S5.3.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.3.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.4.1.1">Example 3: Different difficulty samples from FigureQA</span></td>
</tr>
<tr class="ltx_tr" id="S5.1.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.1.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.1.1.1.1.1.1.1">
<span class="ltx_p" id="S5.1.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.1.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.1.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/figureqa_iter0_image.png" width="170"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.3.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.3.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.5.2.1">
<span class="ltx_p" id="S5.3.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.5.2.1.1.1">Question:</span> Is Medium Blue less than Dark Orchid?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.6">
<td class="ltx_td" id="S5.3.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.3.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.6.2.1">
<span class="ltx_p" id="S5.3.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: Yes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.2.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.2.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.2.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.2.2.2.2.2.1.1">
<span class="ltx_p" id="S5.2.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.2.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.2.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/figureqa_iter5_image.png" width="147"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.3.3.3.3.7.1">Iter29</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.3.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.7.2.1">
<span class="ltx_p" id="S5.3.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.7.2.1.1.1">Question:</span> Does Dodger Blue intersect Dark Slate?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.8">
<td class="ltx_td" id="S5.3.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.3.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.8.2.1">
<span class="ltx_p" id="S5.3.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: Yes.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.3.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.3.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.3.1.1">
<span class="ltx_p" id="S5.3.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.3.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.3.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/figureqa_unsolved_image.png" width="143"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.3.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.3.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.9.2.1">
<span class="ltx_p" id="S5.3.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.9.2.1.1.1">Question:</span> Does Violet Red have the maximum area under the curve?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.3.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.3.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.3.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.3.3.3.3.10.2.1">
<span class="ltx_p" id="S5.3.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.3.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: No.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of questions from the ScienceQA dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  The difficulty is assessed by the number of iterations required by the visual language model (VLM) to answer the question correctly using Monte Carlo Tree Search (MCTS).  The table illustrates how MCTS differentiates between easy, medium, and hard questions, highlighting the method's ability to identify genuinely challenging samples for training.  Each row presents a question and its corresponding ground truth answer, demonstrating the range of difficulty levels encountered within the ScienceQA dataset. The 'Iter0' represents samples that the VLM can answer immediately, while 'Unsolved' indicates those that the VLM could not solve after 50 MCTS iterations.
> <details>
> <summary>read the caption</summary>
> Table 9: Example of samples with different difficulties decided by MCTS-based sample selection from ScienceQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.6.3.3.3">
<tr class="ltx_tr" id="S5.6.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.6.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.4.1.1">Example 4: Different difficulty samples from ScienceQA</span></td>
</tr>
<tr class="ltx_tr" id="S5.4.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.4.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.4.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.4.1.1.1.1.1.1">
<span class="ltx_p" id="S5.4.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.4.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.4.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/scienceqa_iter0_image.png" width="431"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.6.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.6.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.5.2.1">
<span class="ltx_p" id="S5.6.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.5.2.1.1.1">Question:</span> Think about the magnetic force between the magnets in each pair. Which of the following statements is true?
Choices:
(A) The magnitude of the magnetic force is greater in Pair 2.
(B) The magnitude of the magnetic force is greater in Pair 1.
(C) The magnitude of the magnetic force is the same in both pairs.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.6">
<td class="ltx_td" id="S5.6.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.6.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.6.2.1">
<span class="ltx_p" id="S5.6.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: A.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.5.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.5.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.5.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.5.2.2.2.2.1.1">
<span class="ltx_p" id="S5.5.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.5.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.5.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/scienceqa_iter5_image.png" width="160"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.6.3.3.3.7.1">Iter13</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.6.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.7.2.1">
<span class="ltx_p" id="S5.6.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.7.2.1.1.1">Question:</span> Which solution has a higher concentration of purple particles?
Choices:
(A) neither; their concentrations are the same
(B) Solution A
(C) Solution B</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.8">
<td class="ltx_td" id="S5.6.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.6.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.8.2.1">
<span class="ltx_p" id="S5.6.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: B.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.6.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.6.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.3.1.1">
<span class="ltx_p" id="S5.6.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.6.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="106" id="S5.6.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/scienceqa_unsolved_image.png" width="106"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.6.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.6.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.9.2.1">
<span class="ltx_p" id="S5.6.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.9.2.1.1.1">Question:</span> What is the direction of this push?
Choices:
(A) away from the hockey stick
(B) toward the hockey stick</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.6.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.6.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.6.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.6.3.3.3.10.2.1">
<span class="ltx_p" id="S5.6.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.6.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: A.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents examples of questions from the OK-VQA dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  The table showcases how the model's difficulty assessment varies based on the number of iterations required for the model to arrive at a correct solution using Monte Carlo Tree Search.  It demonstrates the method's capacity to distinguish between relatively easy, moderately challenging, and very difficult questions within a single dataset.
> <details>
> <summary>read the caption</summary>
> Table 10: Example of samples with different difficulties decided by MCTS-based sample selection from OK-VQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.9.3.3.3">
<tr class="ltx_tr" id="S5.9.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.9.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.4.1.1">Example 5: Different difficulty samples from OK-VQA</span></td>
</tr>
<tr class="ltx_tr" id="S5.7.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.7.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.7.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.7.1.1.1.1.1.1">
<span class="ltx_p" id="S5.7.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.7.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.7.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/okqa_iter0_image.png" width="160"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.9.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.9.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.5.2.1">
<span class="ltx_p" id="S5.9.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.5.2.1.1.1">Question:</span> What food group is pictured here?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.6">
<td class="ltx_td" id="S5.9.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.9.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.6.2.1">
<span class="ltx_p" id="S5.9.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: fruit.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.8.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.8.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.8.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.8.2.2.2.2.1.1">
<span class="ltx_p" id="S5.8.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.8.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.8.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/okqa_iter5_image.png" width="159"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.9.3.3.3.7.1">Iter20</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.9.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.7.2.1">
<span class="ltx_p" id="S5.9.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.7.2.1.1.1">Question:</span> What is the length of the surfboard the man in the black shorts at the back of the line of people is holding?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.8">
<td class="ltx_td" id="S5.9.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.9.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.8.2.1">
<span class="ltx_p" id="S5.9.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: 7 feet.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.9.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.9.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.3.1.1">
<span class="ltx_p" id="S5.9.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.9.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.9.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/okqa_unsolved_image.png" width="159"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.9.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.9.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.9.2.1">
<span class="ltx_p" id="S5.9.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.9.2.1.1.1">Question:</span> What is this guy’s profession?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.9.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.9.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.9.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.9.3.3.3.10.2.1">
<span class="ltx_p" id="S5.9.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.9.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: security.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of questions from the IconQA dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  The difficulty is assessed based on the number of iterations the MCTS algorithm requires to reach the correct answer using a vision-language model. Each row displays a sample question along with its associated difficulty level (e.g., Iter0, Iter10, Unsolved). Iter0 indicates that the question was easily solved by the model, Iter10 indicates medium difficulty, requiring more MCTS iterations to find the solution, and Unsolved means the model could not solve the problem within a set number of iterations. This table demonstrates the method's ability to effectively differentiate between easy and challenging questions, which is a critical aspect of the data filtering process used in training.
> <details>
> <summary>read the caption</summary>
> Table 11: Example of samples with different difficulties decided by MCTS-based sample selection from IconQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.12.3.3.3">
<tr class="ltx_tr" id="S5.12.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.12.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.4.1.1">Example 6: Different difficulty samples from IconQA</span></td>
</tr>
<tr class="ltx_tr" id="S5.10.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.10.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.10.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.10.1.1.1.1.1.1">
<span class="ltx_p" id="S5.10.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.10.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.10.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/iconqa_iter0_image.png" width="156"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.12.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.12.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.5.2.1">
<span class="ltx_p" id="S5.12.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.5.2.1.1.1">Question:</span> How many flowers are there?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.6">
<td class="ltx_td" id="S5.12.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.12.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.6.2.1">
<span class="ltx_p" id="S5.12.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: 56.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.11.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.11.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.11.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.11.2.2.2.2.1.1">
<span class="ltx_p" id="S5.11.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.11.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.11.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/iconqa_iter5_image.png" width="230"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.12.3.3.3.7.1">Iter10</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.12.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.7.2.1">
<span class="ltx_p" id="S5.12.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.7.2.1.1.1">Question:</span> How many dots are there?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.8">
<td class="ltx_td" id="S5.12.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.12.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.8.2.1">
<span class="ltx_p" id="S5.12.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: 40.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.12.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.12.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.3.1.1">
<span class="ltx_p" id="S5.12.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.12.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.12.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/iconqa_unsolved_image.png" width="514"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.12.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.12.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.9.2.1">
<span class="ltx_p" id="S5.12.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.9.2.1.1.1">Question:</span> How many stars are there?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.12.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.12.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.12.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.12.3.3.3.10.2.1">
<span class="ltx_p" id="S5.12.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.12.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: 19.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of questions from the TabMWP dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  Each row represents a question, with increasing difficulty levels shown in subsequent rows; from easy (solved quickly with few MCTS iterations), to medium (requiring more iterations), to hard (unsolved even after many MCTS iterations).  The goal is to illustrate the MCTS method's ability to distinguish between questions of varying complexities based on the number of steps required for the model to arrive at the solution.
> <details>
> <summary>read the caption</summary>
> Table 12: Example of samples with different difficulties decided by MCTS-based sample selection from TabMWP.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.15.3.3.3">
<tr class="ltx_tr" id="S5.15.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.15.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.4.1.1">Example 7: Different difficulty samples from TabMWP</span></td>
</tr>
<tr class="ltx_tr" id="S5.13.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.13.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.13.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.13.1.1.1.1.1.1">
<span class="ltx_p" id="S5.13.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.13.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.13.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/tab_iter0_image.png" width="190"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.15.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.15.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.5.2.1">
<span class="ltx_p" id="S5.15.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.5.2.1.1.1">Question:</span> Adriana wants to buy 3 pounds of silver confetti. How much will she spend?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.6">
<td class="ltx_td" id="S5.15.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.15.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.6.2.1">
<span class="ltx_p" id="S5.15.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: 36.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.14.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.14.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.14.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.14.2.2.2.2.1.1">
<span class="ltx_p" id="S5.14.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.14.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.14.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/tab_iter5_image.png" width="196"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.15.3.3.3.7.1">Iter22</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.15.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.7.2.1">
<span class="ltx_p" id="S5.15.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.7.2.1.1.1">Question:</span> A game show viewer monitors how often a wheel numbered 1 through 5 stops at each number. How many people are there in all?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.8">
<td class="ltx_td" id="S5.15.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.15.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.8.2.1">
<span class="ltx_p" id="S5.15.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: 29.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.15.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.15.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.3.1.1">
<span class="ltx_p" id="S5.15.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.15.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="106" id="S5.15.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/tab_unsolved_image.png" width="88"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.15.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.15.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.9.2.1">
<span class="ltx_p" id="S5.15.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.9.2.1.1.1">Question:</span> The employee at the department store counted the number of ties on each tie rack. How many racks have at least 30 ties but fewer than 70 ties?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.15.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.15.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.15.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.15.3.3.3.10.2.1">
<span class="ltx_p" id="S5.15.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.15.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: 15.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of questions from the GeoQA dataset, categorized by their difficulty level as determined by the MCTS-based sample selection method.  The method assesses difficulty based on the number of iterations a Vision-Language Model (VLM) requires to arrive at the correct answer using a Monte Carlo Tree Search (MCTS) approach.  The table illustrates how the MCTS method differentiates between easy, medium, and challenging questions, highlighting its ability to identify samples that genuinely challenge the model's reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Table 13: Example of samples with different difficulties decided by MCTS-based sample selection from GeoQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.18.3.3.3">
<tr class="ltx_tr" id="S5.18.3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S5.18.3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.4.1.1">Example 1: Different difficulty samples from Geometry3K</span></td>
</tr>
<tr class="ltx_tr" id="S5.16.1.1.1.1">
<td class="ltx_td ltx_border_t" id="S5.16.1.1.1.1.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.16.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.16.1.1.1.1.1.1">
<span class="ltx_p" id="S5.16.1.1.1.1.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.16.1.1.1.1.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.16.1.1.1.1.1.1.1.1.g1" src="extracted/6351589/figures/geometry3k_iter0_image.png" width="200"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.5">
<td class="ltx_td ltx_align_left" id="S5.18.3.3.3.5.1">Iter0</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.18.3.3.3.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.5.2.1">
<span class="ltx_p" id="S5.18.3.3.3.5.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.5.2.1.1.1">Question:</span> Find y so that the quadrilateral is a parallelogram.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.6">
<td class="ltx_td" id="S5.18.3.3.3.6.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.18.3.3.3.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.6.2.1">
<span class="ltx_p" id="S5.18.3.3.3.6.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.6.2.1.1.1">Ground Truth Answer</span>: 9.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.17.2.2.2.2">
<td class="ltx_td ltx_border_t" id="S5.17.2.2.2.2.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.17.2.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.17.2.2.2.2.1.1">
<span class="ltx_p" id="S5.17.2.2.2.2.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.17.2.2.2.2.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="106" id="S5.17.2.2.2.2.1.1.1.1.g1" src="extracted/6351589/figures/geometry3k_iter5_image.png" width="138"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.7">
<td class="ltx_td ltx_align_left" id="S5.18.3.3.3.7.1">Iter16</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.18.3.3.3.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.7.2.1">
<span class="ltx_p" id="S5.18.3.3.3.7.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.7.2.1.1.1">Question:</span> Use parallelogram M N P R to find y.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.8">
<td class="ltx_td" id="S5.18.3.3.3.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.18.3.3.3.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.8.2.1">
<span class="ltx_p" id="S5.18.3.3.3.8.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.8.2.1.1.1">Ground Truth Answer</span>: 6.45.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.3">
<td class="ltx_td ltx_border_t" id="S5.18.3.3.3.3.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.18.3.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.3.1.1">
<span class="ltx_p" id="S5.18.3.3.3.3.1.1.1" style="width:369.9pt;"><span class="ltx_text ltx_framed ltx_framed_rectangle" id="S5.18.3.3.3.3.1.1.1.1" style="border-color: #000000;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="106" id="S5.18.3.3.3.3.1.1.1.1.g1" src="extracted/6351589/figures/geometry3k_unsolved_image.png" width="129"/></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.9">
<td class="ltx_td ltx_align_left" id="S5.18.3.3.3.9.1">Unsolved</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.18.3.3.3.9.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.9.2.1">
<span class="ltx_p" id="S5.18.3.3.3.9.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.9.2.1.1.1">Question:</span> Find the area of the parallelogram. Round to the nearest tenth if necessary.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.18.3.3.3.10">
<td class="ltx_td ltx_border_bb" id="S5.18.3.3.3.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.18.3.3.3.10.2">
<span class="ltx_inline-block ltx_align_top" id="S5.18.3.3.3.10.2.1">
<span class="ltx_p" id="S5.18.3.3.3.10.2.1.1" style="width:369.9pt;"><span class="ltx_text ltx_font_bold" id="S5.18.3.3.3.10.2.1.1.1">Ground Truth Answer</span>: 315.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents example questions from the Geos dataset that were evaluated using the MCTS-based sample selection method.  The examples showcase questions of varying difficulty levels, as determined by the number of iterations required by the VLM to solve them using MCTS. This demonstrates the method's ability to differentiate between easy and challenging problems.
> <details>
> <summary>read the caption</summary>
> Table 14: Example of samples with different difficulties decided by MCTS-based sample selection from Geos.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07934/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07934/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}