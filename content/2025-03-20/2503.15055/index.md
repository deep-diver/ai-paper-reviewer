---
title: "ELTEX: A Framework for Domain-Driven Synthetic Data Generation"
summary: "ELTEX: Domain-driven synthetic data generation framework improves LLM performance in cybersecurity with less resources."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Security", "🏢 Distributed Networks Institute (DNI)",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15055 {{< /keyword >}}
{{< keyword icon="writer" >}} Arina Razmyslovich et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15055" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15055" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15055/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown promise, but often struggle in specialized domains like cybersecurity due to limited domain-specific data. This creates a need for domain adaptation techniques, especially considering privacy and real-time monitoring requirements. Existing synthetic data generation methods often fall short in extracting and preserving critical domain knowledge, hindering their effectiveness. 



To tackle this, the authors propose a new framework that generates high-quality synthetic training data for specialized domains, called ELTEX. This framework systematically integrates explicit domain indicator extraction with dynamic prompting, thus preserving critical domain nuances during data generation. The authors demonstrate its effectiveness in the context of blockchain-related cyberattack detection, showing that it can enable smaller models to achieve performance competitive with much larger models. A new synthetic dataset is also released to help spur further research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Domain-driven synthetic data generation can effectively bridge the performance gap between resource-efficient models and larger architectures in specialized domains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Systematic integration of explicit domain indicator extraction with dynamic prompting preserves critical domain nuances throughout the generation process. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The ELTEX framework demonstrates strong performance in blockchain-related cyberattack detection, achieving results competitive with GPT-4 while requiring fewer computational resources. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical need for **high-quality training data in specialized cybersecurity domains.** By introducing a novel framework for synthetic data generation, it empowers researchers to **develop resource-efficient models that can compete with larger architectures.** This offers practical advantages for **real-time monitoring and privacy-preserving applications**, while paving the way for future work in adapting the framework to diverse domains.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15055/x1.png)

> 🔼 The ELTEX pipeline systematically integrates explicit domain indicator extraction with dynamic prompting to generate high-fidelity synthetic data.  It consists of five main components: (1) sample data collection and deduplication, (2) token extraction prompt construction, (3) synthetic data generation, (4) final deduplication, and (5) post-generation quality assurance (QA).  Each stage is designed to maintain the quality and diversity of the generated data while preserving critical domain nuances.
> <details>
> <summary>read the caption</summary>
> Figure 1: Efficient LLM Token Extraction Pipeline
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Dataset</span></th>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Cyberattack</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">General</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Real (Initial)</th>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">1,078</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">688</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">1,766</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.1.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">Real (Dedup)</th>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">951</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">652</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">1,603</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">Synthetic (Initial)*</th>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">9,510</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">6,520</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S3.T1.1.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">16,030</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.1.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">Synthetic (Dedup)</th>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">6,941</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">4,524</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S3.T1.1.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">11,465</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S3.T1.1.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">Synthetic (Final)</th>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_r" id="S3.T1.1.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">6,941</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_r" id="S3.T1.1.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">4,507</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_r" id="S3.T1.1.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">11,448</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative overview of the dataset transformations throughout the ELTEX pipeline.  It shows the number of samples at each stage: Initially, 1,766 real samples were collected and deduplicated, resulting in 1,603 remaining samples.  The LLM then generated 16,030 synthetic samples (initial count is an approximation due to the inherent randomness of LLMs). After deduplication, 11,465 synthetic samples remained.  Finally, a post-generation QA step further refined this, reducing the final synthetic dataset to 11,448 samples.
> <details>
> <summary>read the caption</summary>
> Table 1: Datasets statistics throughout the pipeline. *Initial synthetic count is approximate due to the stochastic nature of LLM generation.
> </details>





### In-depth insights


#### ELTEX: Nuanced Data
**ELTEX** framework's ability to generate **nuanced data** hinges on its design. It systematically integrates **explicit domain knowledge** with dynamic prompting. This process preserves critical domain nuances during generation, leading to high-fidelity, context-grounded synthetic data. By extracting and incorporating domain indicators, ELTEX ensures the generated data reflects subtle patterns and terminology specific to the domain. This approach allows the framework to capture the complexities that might be missed by LLMs relying solely on implicit knowledge transfer or post-generation validation.

#### Domain-Driven LLM
**Domain-Driven LLMs** represent a paradigm shift, moving beyond general-purpose models. They emphasize **specialized knowledge integration** for enhanced performance in niche areas. This involves **curated datasets**, **domain-specific architectures**, and **focused training**. By tailoring models to particular fields, we can overcome limitations of generic LLMs, achieving higher accuracy and efficiency. This approach requires careful consideration of **data scarcity**, **knowledge representation**, and **evaluation metrics** to ensure robustness and relevance. **ELTEX** in this research paper provides valuable insights on this approach.

#### Hybrid Data Boost
**Hybrid Data Boost** likely refers to enhancing model performance by combining real and synthetic data. This approach leverages the strengths of both: **real data** provides genuine patterns, while **synthetic data**, generated via methods such as LLMs, can augment datasets, addressing scarcity and bias. This strategy aims for **improved generalization**, filling gaps and balancing representations for robust performance. The method offers a way to bridge between actual and simulated data, boosting efficiency.

#### Synth Data Pipeline
**Synthetic data pipelines** offer a promising avenue for augmenting limited datasets, especially in specialized domains. The **key is balancing diversity and fidelity**, ensuring the generated data reflects real-world nuances. A well-designed pipeline incorporates domain expertise through **explicit indicator extraction and dynamic prompting**, preserving critical knowledge. The pipeline involves stages like **data collection, prompt construction, synthetic data generation, deduplication, and quality assurance.** Moreover, considerations like balancing diversity and utility remain crucial throughout the generation process. A meticulous balance between task-specific details and broad coverage becomes essential for downstream model generalization.

#### Small Model Gains
When we talk about **small model gains**, we are essentially referring to the improvements in performance or efficiency that can be achieved by using smaller, more compact machine learning models. This is particularly relevant in scenarios where computational resources are limited, such as in mobile devices or edge computing environments. Small models often require less memory, have faster inference times, and consume less power compared to their larger counterparts. The gains could arise from various optimization techniques. They could stem from **model compression**, **quantization**, or the use of more efficient architectures. While larger models might offer higher accuracy, the trade-offs in terms of resource utilization often make small models a more practical choice. They are easier to deploy and can still achieve near state-of-the-art.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15055/x2.png)

> 🔼 The figure shows a comparison of Self-BLEU scores for generated and original datasets.  Self-BLEU is a metric measuring the similarity of generated text to itself; higher scores suggest higher coherence and quality in the generated data.  The violin plot visualizes the distribution of Self-BLEU scores, allowing a comparison of the central tendency and the variability of the scores for both the generated (synthetic) and original (real) data. This helps to assess the quality of the synthetic data generated by the ELTEX framework.  The comparison is crucial to understanding if the synthetic data retains similar linguistic characteristics to the original data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of Self-BLEU Scores between Generated and Original Data.
> </details>



![](https://arxiv.org/html/2503.15055/x3.png)

> 🔼 The figure shows the retention rate of cyberattack-related messages generated using different temperature settings during synthetic data generation.  The x-axis represents the temperature values, ranging from 0.0 to 1.0, and the y-axis indicates the percentage of messages retained after the deduplication process.  Different lines represent the retention rates achieved with different similarity thresholds (0.8, 0.9, and 1.0). The graph helps in determining the optimal temperature setting that balances message diversity and data retention.
> <details>
> <summary>read the caption</summary>
> (a) Cyberattack Messages
> </details>



![](https://arxiv.org/html/2503.15055/x4.png)

> 🔼 The figure shows the retention percentage of general messages generated using different temperature settings during synthetic data generation.  The x-axis represents the temperature values, ranging from 0.0 to 1.0, while the y-axis displays the percentage of generated messages retained after the deduplication process.  Multiple lines represent different similarity thresholds (0.8, 0.9, and 1.0) used during deduplication, showcasing how the retention rate changes at various temperatures and thresholds.
> <details>
> <summary>read the caption</summary>
> (b) General Messages
> </details>



![](https://arxiv.org/html/2503.15055/x5.png)

> 🔼 This figure shows how the retention rate of synthetic data generated by a language model is affected by varying temperature settings (a measure of randomness) and similarity thresholds used for deduplication.  Each line represents a different threshold (0.8, 0.9, or 1.0), showing the percentage of generated messages retained after deduplication at each temperature setting.  Even with the strictest threshold (1.0), some exact duplicates were removed by a separate deduplication process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Retention percentage across different temperature settings and similarity thresholds (0.8, 0.9, 1.0). Note that even with threshold 1.0, exact duplicates are still removed by the deduplication service.
> </details>



![](https://arxiv.org/html/2503.15055/x6.png)

> 🔼 This figure shows the results of applying the UMAP dimensionality reduction technique to the DBSCAN clustering results of real cyberattack-related messages. Each point represents a message, colored and positioned based on its cluster assignment and embedding. The plot reveals the distribution and relationships among different clusters, allowing for insights into the semantic structure of the real data. This visual representation is helpful in understanding the diverse patterns and relationships within the messages. The non-uniform distribution of points and clusters suggests that real-world data often exhibits both distinct and overlapping events.
> <details>
> <summary>read the caption</summary>
> (a) Real Data
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.1.1" style="width:113.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1.1">Primary Attack Type</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.2.1">
<span class="ltx_p" id="S4.T2.1.1.1.2.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1.1.1">Training Set (Pre-May 2024)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.3.1">
<span class="ltx_p" id="S4.T2.1.1.1.3.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1.1.1">Test Set (May ’24–Jan ’25)</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.2.1.1.1">
<span class="ltx_p" id="S4.T2.1.2.1.1.1.1" style="width:113.8pt;">Social Engineering &amp; Phishing</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.2.1.2.1">
<span class="ltx_p" id="S4.T2.1.2.1.2.1.1" style="width:156.5pt;">Credential theft, wallet phishing</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.2.1.3.1">
<span class="ltx_p" id="S4.T2.1.2.1.3.1.1" style="width:156.5pt;">Email compromise, custodian impersonation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.3.2.1.1">
<span class="ltx_p" id="S4.T2.1.3.2.1.1.1" style="width:113.8pt;">Smart Contract Exploits</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.3.2.2.1">
<span class="ltx_p" id="S4.T2.1.3.2.2.1.1" style="width:156.5pt;">Token claim vulnerabilities, flash loans</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.3.2.3.1">
<span class="ltx_p" id="S4.T2.1.3.2.3.1.1" style="width:156.5pt;">Token sale exploits, parameter manipulation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.4.3.1.1">
<span class="ltx_p" id="S4.T2.1.4.3.1.1.1" style="width:113.8pt;">Exchange Security Breaches</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.4.3.2.1">
<span class="ltx_p" id="S4.T2.1.4.3.2.1.1" style="width:156.5pt;">Hot wallet compromises, key theft</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.4.3.3.1">
<span class="ltx_p" id="S4.T2.1.4.3.3.1.1" style="width:156.5pt;">System access exploits, API vulnerabilities</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.5.4.1.1">
<span class="ltx_p" id="S4.T2.1.5.4.1.1.1" style="width:113.8pt;">DeFi Protocol Attacks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.5.4.2.1">
<span class="ltx_p" id="S4.T2.1.5.4.2.1.1" style="width:156.5pt;">Liquidity pool manipulation, bridge exploits</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.5.4.3.1">
<span class="ltx_p" id="S4.T2.1.5.4.3.1.1" style="width:156.5pt;">Cross-chain vulnerabilities, protocol exploits</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of primary attack types used in training and testing the model for blockchain-related cyberattack detection.  It breaks down the number of messages in the training set (1603) and the test set (398)  that correspond to each of the four primary attack types: Social Engineering & Phishing, Smart Contract Exploits, Exchange Security Breaches, and DeFi Protocol Attacks. The training and testing sets are designed to be temporally distinct, with the training data covering events prior to May 2024 and test data focusing on later events.
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of primary attack types across training (1,603 messages) and test (398 messages) sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.1" rowspan="2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S5.T3.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">Performance Metrics</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">Error Rates</th>
</tr>
<tr class="ltx_tr" id="S5.T3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">Brier</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">Recall</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.1.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">ROC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;">False Pos.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.2.2.7" style="padding-left:5.0pt;padding-right:5.0pt;">False Neg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.3.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Gemma-2b-it</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.3.1.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.7" style="padding-left:5.0pt;padding-right:5.0pt;">0.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.3.1.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.25</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.4.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Gemma-2b-Real</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.31</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.4.2.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.4.2.7.1">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.2.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.32</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.5.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">Gemma-2b-Synth</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.5.3.4.1">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.5.3.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.7" style="padding-left:5.0pt;padding-right:5.0pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.3.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.5.3.8.1">0.11</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.6.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">Gemma-2b-Hybrid</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.6.4.2.1">0.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.6.4.3.1">0.14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.6.4.4.1">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.6.4.5.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.6.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.6.4.6.1">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.7" style="padding-left:5.0pt;padding-right:5.0pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.4.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.6.4.8.1">0.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.7.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">Granite-3.2-2b-Instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.74</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.39</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.7.5.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.7" style="padding-left:5.0pt;padding-right:5.0pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.20</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.8.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">Llama-Primus-Instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.29</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.8.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.1.8.6.7.1">0.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.27</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.9.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">Llama-Primus-Merged</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">0.23</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.59</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.5" style="padding-left:5.0pt;padding-right:5.0pt;">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.9.7.6" style="padding-left:5.0pt;padding-right:5.0pt;">0.76</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.7" style="padding-left:5.0pt;padding-right:5.0pt;">0.04</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.9.7.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.19</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.10.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.1.10.8.1" style="padding-left:5.0pt;padding-right:5.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.10.8.2.1">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.10.8.3.1">0.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.4" style="padding-left:5.0pt;padding-right:5.0pt;">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.10.8.5.1">0.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.1.10.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.10.8.6.1">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.10.8.7.1">0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.10.8.8" style="padding-left:5.0pt;padding-right:5.0pt;">0.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models on a social media cyberattack detection task.  The models are evaluated based on their ability to assign a score (between 0 and 1) to messages indicating the likelihood of a blockchain-related attack.  The metrics used to assess performance include accuracy, Brier score (a measure of calibration and accuracy of probabilistic predictions), recall, F1 score, and ROC AUC.  The table compares the performance of a base model (Gemma-2b), models fine-tuned on real data, synthetic data generated by ELTEX, and a hybrid approach (using both real and synthetic data). It also includes comparative results from other models, such as GPT-40, Granite-3.2-2b, and Llama models fine-tuned on the Primus dataset, allowing for a broader performance assessment.  The best scores are highlighted in bold, while the second-best scores are underlined.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance on social media cyberattack detection. Metrics reflect model ability to score messages (0-1) for blockchain attack relevance. Best scores in bold, second-best underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A4.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.1.1">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T4.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.2.1">Threshold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T4.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.3.1">Original</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T4.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.4.1">Reduced</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A4.T4.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Cyberattack</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">1,078</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">951</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A4.T4.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">Cyberattack</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">1,078</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">413</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A4.T4.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">General</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">688</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T4.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">652</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A4.T4.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">General</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="A4.T4.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="A4.T4.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">688</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="A4.T4.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">446</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of deduplication experiments performed on real-world social media messages related to cyberattacks and general blockchain topics.  It shows the number of messages initially collected ('Original') and the number remaining after deduplication using two different similarity thresholds (0.9 and 0.8).  The results are broken down by message type (Cyberattack and General).  Comparing the 'Original' and 'Reduced' counts for each threshold illustrates the impact of the deduplication process on dataset size and the potential trade-off between retaining a larger amount of data versus removing potentially redundant or similar entries.
> <details>
> <summary>read the caption</summary>
> Table 4: Reduction Statistics for Cyberattack and General Messages
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.1.1">
<span class="ltx_p" id="A4.T5.1.1.1.1.1.1" style="width:65.0pt;">Cluster</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.2.1">
<span class="ltx_p" id="A4.T5.1.1.1.2.1.1" style="width:325.2pt;">Top Keywords (frequency)</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.2.1.1.1">
<span class="ltx_p" id="A4.T5.1.2.1.1.1.1" style="width:65.0pt;">Euler Finance</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.2.1.2.1">
<span class="ltx_p" id="A4.T5.1.2.1.2.1.1" style="width:325.2pt;">finance (129), million (89), defi (60), protocol (59), exploit (55), attack (38), euler (37), exploited (35), curve (32)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.3.2.1.1">
<span class="ltx_p" id="A4.T5.1.3.2.1.1.1" style="width:65.0pt;">Poloniex/HTX</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.3.2.2.1">
<span class="ltx_p" id="A4.T5.1.3.2.2.1.1" style="width:325.2pt;">poloniex (63), exchange (58), htx (53), million (42), justin (32), sun (32), crypto (30), hack (30), hacker (24)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.4.3.1.1">
<span class="ltx_p" id="A4.T5.1.4.3.1.1.1" style="width:65.0pt;">Bridge Exploit</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T5.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.4.3.2.1">
<span class="ltx_p" id="A4.T5.1.4.3.2.1.1" style="width:325.2pt;">bridge (51), multichain (40), orbit (38), chain (31), million (29), hack (27), exploit (18), protocol (14), hacked (11)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T5.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.5.4.1.1">
<span class="ltx_p" id="A4.T5.1.5.4.1.1.1" style="width:65.0pt;">Atomic Wallet</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T5.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.5.4.2.1">
<span class="ltx_p" id="A4.T5.1.5.4.2.1.1" style="width:325.2pt;">wallet (73), atomic (68), users (21), hack (19), security (14), funds (11), crypto (10), million (9)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the results of clustering analysis performed on real-world cyberattack-related social media data.  The data was clustered using the DBSCAN algorithm, and the table highlights the top keywords associated with each of the resulting clusters. Each cluster represents a specific real-world cybersecurity event or incident, with the keywords reflecting the key themes, entities, and terminology associated with that event.  The frequency of each keyword within its cluster is indicated in parentheses. This table demonstrates how real-world cyberattack data exhibits a high degree of event-specificity.
> <details>
> <summary>read the caption</summary>
> Table 5: Representative Clusters in Real Data (Event-Specific Organization)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T6.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T6.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.1.1.1.1">
<span class="ltx_p" id="A4.T6.1.1.1.1.1.1" style="width:65.0pt;">Cluster</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T6.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.1.1.2.1">
<span class="ltx_p" id="A4.T6.1.1.1.2.1.1" style="width:325.2pt;">Top Keywords (frequency)</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T6.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.2.1.1.1">
<span class="ltx_p" id="A4.T6.1.2.1.1.1.1" style="width:65.0pt;">Network</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T6.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.2.1.2.1">
<span class="ltx_p" id="A4.T6.1.2.1.2.1.1" style="width:325.2pt;">transaction (366), attack (274), network (269), potential (260), mining (250), blockchain (216), unusual (202), alert (174)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T6.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.3.2.1.1">
<span class="ltx_p" id="A4.T6.1.3.2.1.1.1" style="width:65.0pt;">Wallet</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T6.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.3.2.2.1">
<span class="ltx_p" id="A4.T6.1.3.2.2.1.1" style="width:325.2pt;">dormant (245), wallet (96), addresses (81), activation (77), activity (73), suddenly (62), sudden (54), wallets (53)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T6.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.4.3.1.1">
<span class="ltx_p" id="A4.T6.1.4.3.1.1.1" style="width:65.0pt;">Market</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T6.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.4.3.2.1">
<span class="ltx_p" id="A4.T6.1.4.3.2.1.1" style="width:325.2pt;">price (368), manipulation (230), market (207), exchange (172), rapid (171), fluctuations (90), trading (85)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T6.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.5.4.1.1">
<span class="ltx_p" id="A4.T6.1.5.4.1.1.1" style="width:65.0pt;">Governance</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T6.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T6.1.5.4.2.1">
<span class="ltx_p" id="A4.T6.1.5.4.2.1.1" style="width:325.2pt;">governance (333), community (206), sentiment (86), irregularities (79), proposal (73), manipulation (63), voting (49)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the results of a clustering analysis performed on a synthetic dataset of social media messages related to cybersecurity threats in the blockchain domain.  The analysis grouped similar messages into clusters based on semantic similarity.  The table shows ten clusters identified by the analysis, and for each cluster, it lists the top keywords that characterize the messages within that cluster.  The keyword frequencies are given in parentheses. The organization of the clusters reflects broad categories of cyber threats in the blockchain space, rather than specific incidents, showing that the synthetic dataset focuses on generating diverse examples covering a range of threat types.
> <details>
> <summary>read the caption</summary>
> Table 6: Representative Clusters in Synthetic Data (Category-Based Organization)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15055/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15055/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}