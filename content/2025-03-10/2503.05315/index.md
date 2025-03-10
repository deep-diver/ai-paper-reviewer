---
title: "LoRACode: LoRA Adapters for Code Embeddings"
summary: "LoRACode enhances code embeddings using LoRA, achieving SOTA in code retrieval with minimal computational cost."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Max Planck Institute for Software Systems",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05315 {{< /keyword >}}
{{< keyword icon="writer" >}} Saumya Chaturvedi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05315" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05315" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05315/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Code embeddings are essential for semantic code search, but current approaches face scalability and efficiency challenges. Open-source models have limitations, while high-performing proprietary systems are computationally expensive. To address this, this paper introduces a parameter-efficient fine-tuning method based on Low-Rank Adaptation (LoRA) that constructs task-specific adapters. 



Dubbed **LoRACode**, the approach reduces trainable parameters to less than 2% of the base model, enabling rapid fine-tuning on large code datasets. Experiments demonstrate significant improvements such as up to 9.1% in Mean Reciprocal Rank (MRR) for Code2Code search, and up to 86.69% for Text2Code search tasks. It also explores language-wise adaptation and highlights the sensitivity of code retrieval to syntactic and linguistic variations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LoRACode, utilizing LoRA, significantly improves code retrieval accuracy with minimal computational overhead. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Language-specific adapters outperform task-specific adapters in capturing the nuances of code for Text2Code retrieval. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The size and quality of training datasets significantly impact the effectiveness of LoRA adapters in code retrieval tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces LoRACode, a parameter-efficient method using **LoRA adapters** for code embeddings. It achieves state-of-the-art performance with significantly reduced computational costs. This opens new avenues for multilingual code search and adaptation and sets a baseline for future research in PEFT for code.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05315/x1.png)

> 🔼 The LoRACode architecture uses either code-code or text-code pairs as input.  These inputs are fed into a base model (CodeBERT, GraphCodeBERT, or UniXcoder).  LoRA (Low-Rank Adaptation) layers are added to the base model to enhance it. These layers produce pooled embeddings which are then optimized by a Contrastive Trainer to boost retrieval accuracy. The final evaluation metric used is Mean Reciprocal Rank (MRR), which assesses the quality of the ranked retrieval results.
> <details>
> <summary>read the caption</summary>
> Figure 1: LoRACode Architecture: The input consists of code-code or text-code pairs. The base models are enhanced with LoRA layers, that output pooled embeddings, optimized using the Contrastive Trainer to improve retrieval accuracy. Finally, Mean Reciprocal Rank (MRR) measures the quality of ranked retrieval results.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.fig1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.fig1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.fig1.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.fig1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.fig1.1.1.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.fig1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.fig1.1.2.1.1">Batch Size</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.fig1.1.2.1.2">16 per device</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig1.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.3.2.1">Epochs</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.3.2.2">1 (rapid evaluation)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig1.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.4.3.1">Learning Rate Scheduler</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.4.3.2">1000 warmup steps</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig1.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.5.4.1">Logging</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.5.4.2">Every 200 steps</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig1.1.6.5">
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.6.5.1">Save Strategy</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig1.1.6.5.2">End of each epoch</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.fig1.1.7.6.1">Evaluation Strategy</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.fig1.1.7.6.2">No intermediate eval</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the Mean Reciprocal Rank (MRR) scores for Text-to-Code search using various models.  It compares the performance of three base models (UniXcoder, GraphCodeBERT, and CodeBERT) with their LoRA-adapted versions (using ranks 32 and 64).  The results are broken down by programming language (Ruby, Go, PHP, Python, Java, Javascript) and show the improvement achieved by using LoRA adapters.  A 'LoRACode Combined' model, which combines the adapters from all three base models and is evaluated on UniXcoder, is also included for comparison.  This helps assess the effectiveness of the LoRA fine-tuning technique and its impact on cross-lingual code retrieval.
> <details>
> <summary>read the caption</summary>
> Table 3:  MRR results for Text2Code search of LoRA models UniXCoder, GraphCodeBERT, and CodeBERT fine-tuned with ranks 32 and 64, compared with base models, evaluated over XLCost dataset per language. LoRACode Combined denotes a single adapter of given rank fine-tuned over 3 base models: UniXcoder, GraphCodeBERT, and CodeBERT, but evaluated over UniXcoder.
> </details>





### In-depth insights


#### LoRA for Search
**LoRA (Low-Rank Adaptation) offers a promising avenue for enhancing search systems** by enabling parameter-efficient fine-tuning of large pre-trained models. It's particularly attractive where computational resources are limited or task-specific adaptation is needed. The core idea involves freezing the pre-trained model's weights and introducing a small set of trainable low-rank matrices to adapt the model to the search task. This approach could be used to **optimize code search systems** where capturing the nuances of syntax is important. LoRA can be used to **customize the embedding space** of code snippets or documents, improving the accuracy of retrieval. The adaptability of LoRA also makes it useful for scenarios that need a language model specifically built for the code search task, such as documentation searches.

#### Efficient Tuning
**Efficient tuning** is crucial for code embeddings, balancing performance and computational cost. The paper likely explores parameter-efficient techniques like LoRA, minimizing trainable parameters while maximizing retrieval accuracy. **Task-specific adapters** tailored to Code2Code or Text2Code search are vital, along with language-specific adaptations to capture syntax nuances. **Contrastive learning** and optimized pooling strategies enhance embeddings. Success depends on dataset size, data quality, and model architecture.

#### Task & Lang Adap
**Task adaptation** focuses on optimizing models for specific code-related tasks such as code-to-code search or text-to-code retrieval.  Different tasks require different architectural considerations or loss functions during training. **Language adaptation**, on the other hand, fine-tunes a model to better understand a specific programming language's syntax and semantics. Models for individual languages will have superior performance than a generalized, language-agnostic model. **Combining task and language adaptation** allows for a nuanced approach, where a model is optimized for both the type of task and the characteristics of the language being used.

#### Code2Code gains
**Code2Code gain** analysis reveals LoRA adapters consistently **outperform** models like GraphCodeBERT and CodeBERT, proving their **efficacy** in low-rank adaptation for code retrieval. MRR increases significantly across languages: 9.1% in C, 7.47% in C++, 6.54% in Java, 5.82% in C#, 4.43% in JavaScript, 3.40% in Python, and 3.8% in PHP. Using rank 32 substantially **boosts MRR** over UniXcoder. LoRA's low-rank decomposition improves retrieval accuracy for multilingual code search using 1.83%-1.85% trainable parameters with faster fine tuning.

#### Dataset Impact
**Dataset quality and size are crucial** for code retrieval. Smaller, high-quality datasets yield better results than larger, noisy ones. **Language-specific datasets improve performance** by capturing nuances. Multilingual datasets can dilute results due to syntactic diversity. It will be interesting to see how this holds when the model is scaled up further.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.fig2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.fig2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.fig2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.fig2.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.fig2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.fig2.1.1.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.fig2.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.fig2.1.2.1.1">Ranks</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.fig2.1.2.1.2">16, 32, 64</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig2.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T2.fig2.1.3.2.1">LoRA Alpha</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig2.1.3.2.2">32, 64, 128</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig2.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.fig2.1.4.3.1">Target Modules</td>
<td class="ltx_td ltx_align_left" id="S3.T2.fig2.1.4.3.2">Query and Value</td>
</tr>
<tr class="ltx_tr" id="S3.T2.fig2.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.fig2.1.5.4.1">Dropout</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.fig2.1.5.4.2">10%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the UniXCoder base model and the LoRACode model (with a combined adapter of rank 64) on the CosQA dataset.  The LoRACode model uses a parameter-efficient fine-tuning technique called Low-Rank Adaptation (LoRA) and incorporates adapters trained on the UniXcoder, GraphCodeBERT, and CodeBERT base models.  The table shows the improvement in Mean Reciprocal Rank (MRR) and Normalized Discounted Cumulative Gain (NDCG@10) achieved by LoRACode compared to the UniXCoder base model, indicating the effectiveness of the LoRA approach. The key metric is the percentage increase for both MRR and NDCG@10.
> <details>
> <summary>read the caption</summary>
> Table 4: Increase in Mean Reciprocal Rank and Normalized Discounted Cumulative Gain @ k=10 for LoRACode combined adapter (rank 64) trained on CosQA dataset (Huang et al., 2021), compared to the UniXCoder base model. LoRACode Combined denotes a single adapter fine-tuned over the 3 base models (UniXcoder, GraphCodeBERT, and CodeBERT), but evaluated on UniXcoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T3.1.1.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Ruby</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Go</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">PHP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Python</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">Java</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.7.1">Javascript</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.1">LoRACode - Combined (rank 64)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.2">42.83</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.3">48.34</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.4">20.88</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.5">28.60</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.6">33.08</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.2.2.7">30.55</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.3">
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.1">LoRACode - Combined (rank 32)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.2">43.96</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.3">48.98</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.4">21.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.5">29.85</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.6">34.15</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.3.3.7">31.38</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.1">UnixCoder</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.2">44.06</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.3">49.59</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.4">22.31</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.5">29.76</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.6">34.47</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.4.4.7">32.05</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.5">
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.1">GraphCodeBERT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.2">20.80</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.3">12.48</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.4">8.08</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.5">10.38</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.6">8.60</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.5.5.7">7.30</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.1">CodeBERT</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.2">0.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.3">0.15</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.4">0.03</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.5">0.06</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.6">0.04</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.6.6.7">0.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.1">Starencoder</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.2">4.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.3">1.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.4">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.5">2.14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.6">1.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.7.7.7">1.55</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the LoRACode model with language-specific adapters on six programming languages (Ruby, Go, PHP, Python, Java, Javascript).  It shows the improvements in Mean Reciprocal Rank (MRR) and Normalized Discounted Cumulative Gain (NDCG@10) achieved by using language-specific adapters compared to the baseline UniXCoder model.  The table also provides details on the number of code samples used for training in each language, the training time on 2xH100 GPUs, and the percentage increase in MRR.
> <details>
> <summary>read the caption</summary>
> Table 5: Language-Specific Adapter Performance: MRR and NDCG Improvements Across Programming Languages. Across 6 programming languages, the Mean Reciprocal Rank and Normalized Discounted Cumulative Gain @ k=10 show significant improvements for the UniXCoder model adapted with language-wise adapters, compared to the base model. For comparison, the table details the number of code samples in the training dataset for each from CodeSearchNet, as well as the training time over 2xH100 GPUs and the % increase in MRR. Training time is mentioned in minutes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.1">UniXCoder</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1">LoRACode - Combined (<math alttext="r" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_r</annotation></semantics></math>=64)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.2.1.1">MRR</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.2.1.2">31.36</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.3.1">36.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.3.2.1">NDCG@10</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.3.2.2">35.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.3.1">40.44</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Mean Reciprocal Rank (MRR) scores for Code-to-Code (Code2Code) search using different models.  It compares the performance of three base models (UniXcoder, GraphCodeBERT, and CodeBERT) with LoRA-adapted versions of these models using two different rank settings (32 and 64).  The 'LoRACode Combined' results represent a single adapter trained across all three base models and evaluated using UniXcoder as a baseline. The evaluation is performed per programming language using the XLCost dataset.
> <details>
> <summary>read the caption</summary>
> Table 6:  MRR results for Code2Code search of LoRA models UniXCoder, GraphCodeBERT, and CodeBERT fine-tuned with ranks 32 and 64, compared with base models, evaluated over the XLCost dataset per language. LoRACode Combined denotes a single adapter of given rank fine-tuned over the 3 base models (UniXcoder, GraphCodeBERT and CodeBERT), but evaluated on UniXcoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1">Languages</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1">MRR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">NDCG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1"># Samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1">Train Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1">% Increase</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1">
<td class="ltx_td" id="S4.T5.1.2.1.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.1.2.1">Base</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.1.3.1">LoRA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.1.4.1">Base</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.1.5.1">LoRA</span></td>
<td class="ltx_td" id="S4.T5.1.2.1.6"></td>
<td class="ltx_td" id="S4.T5.1.2.1.7"></td>
<td class="ltx_td" id="S4.T5.1.2.1.8"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.1">Ruby</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.2">44.06</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.2.3.1">45.78</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.4">47.95</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.2.5.1">49.77</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.6">1558</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.7">7:01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.3.2.8">3.90</th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3">
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.1">Go</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.2">49.59</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.3.3.1">82.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.4">53.66</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.3.5.1">85.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.6">10456</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.7">47:36</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.3.8">67.13</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.1">PHP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.2">35.22</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.3.1">52.46</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.4">24.73</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.5.1">56.54</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.6">15078</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.7">1:08:39</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.5.4.8">48.94</th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.5">
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.1">Python</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.2">29.76</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.6.5.3.1">55.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.4">32.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.6.5.5.1">59.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.6">15739</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.7">2:10:39</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.6.5.8">86.69</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.1">Java</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.2">34.47</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.7.6.3.1">53.47</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.4">37.94</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.7.6.5.1">57.45</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.6">10308</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.7">1:25:19</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T5.1.7.6.8">31.91</th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.1">Javascript</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.2">32.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.8.7.3.1">38.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.4">35.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.8.7.5.1">42.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.6">3627</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.7">16:41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.8.7.8">20.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the time taken to generate code embeddings using the base embedding models (UniXcoder, CodeBERT, GraphCodeBERT) versus those enhanced with LoRA adapters.  The measurements are reported in minutes and seconds (MM:SS), and are broken down by programming language (Ruby, Go, PHP, Java, C++, Javascript, Python). For the LoRA-adapted models, the results reflect the use of a combined adapter with a rank of 64, using UniXcoder as the base model. This comparison highlights the impact of the LoRA adapters on the efficiency of the embedding generation process for different languages.
> <details>
> <summary>read the caption</summary>
> Table 7: Time taken to generate embeddings (in MM:SS) for Code2Code search of the base embedding models vs embedding models altered with LoRA adapters. The latency is measured over each programming language’s dataset, for the combined adapter of LoRA rank 64, over UniXCoder as base model.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05315/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05315/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}