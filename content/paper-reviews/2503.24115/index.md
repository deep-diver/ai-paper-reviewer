---
title: "TeleAntiFraud-28k: A Audio-Text Slow-Thinking Dataset for Telecom Fraud Detection"
summary: "TeleAntiFraud-28k: A new audio-text dataset designed for telecom fraud detection, tackles data scarcity with innovative synthesis techniques and slow-thinking annotations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Security", "🏢 China Mobile Internet Company Ltd.",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24115 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhiming Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24115" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24115" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24115/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The detection of telecom fraud faces challenges due to the lack of high-quality multimodal training data that integrates audio signals with reasoning-oriented textual analysis. Traditional methods rely on manual verification and rule-based matching, which have low accuracy and struggle to adapt to evolving strategies. Recent advancements in LLMs offer new solutions, but current methods exhibit a significant modality gap and performance variations. This shows the importance of having a comprehensive multimodal telecom fraud dataset. 



To address these issues, the authors present **TeleAntiFraud-28k**, the first open-source audio-text slow-thinking dataset for automated telecom fraud analysis. The dataset is constructed through privacy-preserved text-truth sample generation, semantic enhancement via LLM-based self-instruction sampling, and multi-agent adversarial synthesis. The authors construct **TeleAntiFraud-Bench**, a standardized evaluation benchmark, and contribute a production-optimized SFT model trained on hybrid real/synthetic data, open-sourcing the data processing framework for community-driven dataset expansion.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The TeleAntiFraud-28k dataset provides a valuable resource for training and evaluating multimodal AI models in telecom fraud detection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The data synthesis techniques, including ASR processing, LLM-based augmentation, and multi-agent adversarial frameworks, offer effective solutions for generating diverse and realistic fraud scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The slow-thinking annotation framework enhances model reasoning and interpretability, aligning with human expert analysis. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel multimodal dataset and benchmark for telecom fraud detection, addressing critical data scarcity and privacy challenges while opening new avenues for research in AI-driven fraud prevention and analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2503.24115/x1.png)

> 🔼 This figure illustrates the architecture of the TeleAntiFraud-30k system, designed to tackle the challenges in telecom fraud detection.  It highlights the three key strategies used to build the TeleAntiFraud-28k dataset: 1) Real-Data ASR Processing, which involves transcribing real audio data while preserving privacy, 2) LLM-Based Imitation and Augmentation which uses large language models to generate synthetic data that augments the real data,  and 3) Multi-agent Adversarial Synthesis, which simulates realistic and diverse fraud scenarios. The system also includes TeleAntiFraud-Bench, a standardized benchmark for evaluating model performance, and a fine-tuned, open-source model for supervised learning.
> <details>
> <summary>read the caption</summary>
> Figure 1. An overview of TeleAntiFraud-30k. Our system addresses the challenges of telecom fraud detection. We create the TeleAntiFraud-28k dataset through three strategies: Real-Data ASR Processing, LLM-Based Imitation adn Augmention, and multi-agent adversarial synthesis. We also construct TeleAntiFraud-Bench for model evaluation and contribute a supervised fine-tuning model with an open-sourced data processing framework.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Total</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Scam Calls</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">Normal Calls</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.2.1.1">Train</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.2">21,490</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3">9,950 (46.3%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.4">11,540 (53.7%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.3.2.1">Test</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.2">7,021</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.3">3,697 (52.66%)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.4">3,324 (47.34%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T1.1.4.3.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.3.2">28,511</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.3.3">13,647 (47.86%)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.4.3.4">14,864 (52.13%)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the distribution of scam and normal calls within the TeleAntiFraud-28k dataset. It breaks down the total number of calls (28,511) into training and testing sets, further categorized by whether each call is fraudulent or not.  The percentages provided illustrate the proportion of scam and normal calls in each set and the overall dataset, offering insight into the class imbalance present in the data.
> <details>
> <summary>read the caption</summary>
> Table 1. Distribution of Scam and Normal Calls in the Dataset
> </details>





### In-depth insights


#### AntiFraud Dataset
The paper introduces **TeleAntiFraud-28k**, a novel audio-text dataset for telecom fraud detection. A key aspect is its focus on **slow-thinking reasoning**, going beyond simple pattern recognition to simulate expert fraud analysis. The dataset addresses the critical lack of **high-quality multimodal data** that combines audio signals with textual context. The construction involves innovative techniques like privacy-preserved ASR transcription and LLM-based semantic augmentation. A multi-agent adversarial framework simulates diverse fraud scenarios, tackling the limited variety in existing datasets. The TeleAntiFraud-Bench evaluation framework provides a standardized way to assess model performance in scenario classification, fraud detection, and type classification. The dataset seeks to facilitate research into more robust and intelligent anti-fraud systems by offering a challenging resource that tackles issues such as **data privacy and scenario diversity**. The release of the data processing framework further aims to encourage community-driven dataset expansion, thereby helping to spur innovation in multimodal anti-fraud research.

#### Multi-Modal Models
**Multimodal models** are increasingly vital, leveraging diverse data such as audio, text, and images to enhance AI systems. Their capacity to integrate varied inputs allows for more robust and nuanced understanding compared to unimodal approaches. In fraud detection, multimodal models can combine speech patterns, text analysis, and visual cues to identify deceptive behaviors more effectively. Challenges include data synchronization, feature fusion, and the need for large, diverse datasets. Future advancements will likely focus on developing more efficient fusion techniques and addressing privacy concerns in handling sensitive data.

#### Data Generation
The data generation process is crucial for telecom fraud detection due to the lack of high-quality multimodal training data. This paper addresses this by constructing 'TeleAntiFraud-28k', utilizing three strategies. The first is **privacy-preserved text-truth sample generation** using ASR-transcribed call recordings with TTS regeneration, ensuring real-world consistency. The second involves **semantic enhancement via LLM-based self-instruction sampling** on authentic ASR outputs to expand scenario coverage. The third strategy employs **multi-agent adversarial synthesis** to simulate emerging fraud tactics. This comprehensive approach aims to create a dataset that is both diverse and realistic, addressing critical challenges in data privacy and scenario diversity for multimodal anti-fraud research.

#### Thinking Process
Analyzing the 'Thinking Process' in AI, especially concerning fraud detection, highlights the critical need for models to mimic human expert reasoning. It's about moving beyond simple pattern recognition to **structured analysis**, similar to how a professional would assess a situation. Key is the model's ability to **articulate its reasoning**, demonstrating a clear chain of thought from evidence to conclusion. This involves assessing emotional cues, request legitimacy, and information disclosure patterns. A successful 'Thinking Process' requires the AI to not only identify fraud but also **explain why**, increasing trust and explainability. By incorporating detailed annotations about each step of the reasoning process it helps in generating structured responses and improve the overall process.

#### Model Ablation
**Ablation studies** are vital for understanding a model's inner workings. By systematically removing components, such as specific layers, attention mechanisms, or input features, we can gauge each element's contribution to overall performance. In the context of **telecom fraud detection**, ablating audio features reveals the text's baseline effectiveness, while ablating slow-thinking components highlights their impact on reasoning. Such experiments not only identify redundancies but also expose crucial interactions between different modalities. This rigorous analysis guides future model development towards leaner, more effective architectures, enhancing fraud detection accuracy and efficiency by pinpointing the most influential aspects of the model, thereby making it interpretable and improving trust with business stakeholders. Furthermore, ablation of certain input features provides insight into which particular real-world interactions and indicators contribute more substantially to a model's predictive power, leading to better understanding of telecommunication fraud.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.24115/x2.png)

> 🔼 This figure illustrates the process of generating audio data for the TeleAntiFraud-28k dataset.  It begins with JSON data representing various conversation scenarios, which is then processed through an audio synthesis module to create realistic-sounding audio.  A large language model (LALM), denoted as 'deepseek', plays a role in this generation process, likely contributing to the realism or complexity of the synthesized audio. The result is the final generated audio data which is used for the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2. Data Flow of Audio Data Generation
> </details>



![](https://arxiv.org/html/2503.24115/x3.png)

> 🔼 This figure illustrates the architecture of a multi-agent adversarial framework used to generate diverse and realistic conversations for a telecom fraud detection dataset.  Three agents interact: a user, a fraudster (cheater), and a manager.  The user and cheater agents use large language models (LLMs) to generate their dialogue turns. The manager agent oversees the conversation to ensure it aligns with defined fraud scenarios and ensures a natural flow.  This framework enables the creation of realistic and diverse conversations simulating various fraud tactics, enriching the training data for fraud detection models.
> <details>
> <summary>read the caption</summary>
> Figure 3. Architecture Diagram of the Multi-Agent Adversarial Framework
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Scenario Type</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Training Set</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Test Set</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.2.1">Customer Service Inquiries</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.2.2">6,421</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.2.3">4,632</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.3.1">Appointment Services</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.3.2">1,714</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.3.3.3">867</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.4.1">Daily Shopping</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.4.4.2">924</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.4.4.3">340</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.5.1">Food Ordering Services</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.5.5.2">581</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.5.5.3">154</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.6.6.1">Delivery Services</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.6.6.2">494</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.6.6.3">448</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.7.7.1">Ride-hailing Services</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.7.7.2">353</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.7.7.3">489</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.8.8.1">Transportation Inquiries</th>
<td class="ltx_td ltx_align_right" id="S4.T2.1.8.8.2">223</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.8.8.3">91</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.9.9.1.1">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.2">10,710</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.3">7,021</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of different call scenarios in both the training and test sets of the TeleAntiFraud-28k dataset.  It breaks down the number of samples for each scenario type, providing insights into the dataset's composition and balance across various real-world communication contexts.  This is useful for understanding the representativeness of the dataset and its suitability for training and evaluating models.
> <details>
> <summary>read the caption</summary>
> Table 2. Distribution of scenario types in training and test sets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Fraud Type</span></th>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Training Set</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Test Set</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.2.1">Customer Service Fraud</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.2.2.2">2,022</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.2.2.3">725</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.3.3.1">Banking Fraud</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.3.3.2">1,626</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.3.3.3">2,408</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.4.4.1">Investment Fraud</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.4.4.2">785</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.4.4.3">216</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.5.5.1">Phishing Fraud</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.5.5.2">443</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.5.5.3">123</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.6.6.1">Lottery Fraud</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.6.6.2">418</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.6.6.3">99</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.7.7.1">Kidnapping Fraud</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.7.7.2">324</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.7.7.3">91</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.8.8.1">Identity Theft</th>
<td class="ltx_td ltx_align_right" id="S4.T3.1.8.8.2">105</td>
<td class="ltx_td ltx_align_right" id="S4.T3.1.8.8.3">35</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.9.9.1.1">Total</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.1.9.9.2">5,723</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.1.9.9.3">3,697</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of different fraud types within the training and test sets of the TeleAntiFraud-28k dataset.  It breaks down the number of instances of each fraud type in both the training portion (used to train machine learning models) and the testing portion (used to evaluate the performance of trained models) of the dataset. This allows researchers to understand the class distribution and potential class imbalance issues within the dataset.
> <details>
> <summary>read the caption</summary>
> Table 3. Distribution of fraud types in training and test sets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">LLM</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Scenario (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1">Fraud(%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.5.1">Fraud Type(%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.6.1">Avg F1 (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.7.1">Reason</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.8.1">Final</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.2.2.1" rowspan="6"><span class="ltx_text" id="S4.T4.1.2.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.2.2.1.1.1">
<span class="ltx_tr" id="S4.T4.1.2.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.2.2.1.1.1.1.1">SenseVoice (ASR) +</span></span>
<span class="ltx_tr" id="S4.T4.1.2.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.2.2.1.1.1.2.1">LLM</span></span>
</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.2.2.2">DeepSeek-V3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.3">88.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.4">14.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.5">66.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.6">56.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2.7">7.51</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.8">21.30</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.3.3.1">DeepSeek-R1</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.2">83.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.3">79.25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.4">85.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.5">82.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3.6">9.94</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.3.3.7">31.08</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.4.4.1">Doubao-1.5-Pro</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.2">71.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.3">36.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.4">82.25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.5">63.17</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4.6">6.31</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.7">23.74</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.5.5.1">InternLM2.5-20B-Chat</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.5.2">78.34</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.5.3">36.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.5.4">85.42</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.5.5">66.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.5.6">6.37</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.7">25.11</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.6.6.1">GLM-4-9B-Chat</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.2">75.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.3">46.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.4">82.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.5">68.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6.6">5.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.6.6.7">25.57</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.7.7.1">Qwen2.5-72B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.2">78.31</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.3">51.44</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.4">81.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.5">70.33</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.7.6">7.01</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.7">26.43</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.8.8.1" rowspan="5"><span class="ltx_text" id="S4.T4.1.8.8.1.1">Multimodal Models</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.8.8.2">GPT-4o*</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.8.3">80.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.8.4">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.8.5">86.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.8.6">72.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.8.8.7">6.79</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.8.8.8">27.12</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.9.9.1">Gemini-2.0-Flash</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.9.2">80.51</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.9.3">59.61</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.9.4">83.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.9.5">74.55</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.9.6">7.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.9.9.7">28.02</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.10.10.1">GLM-4-Voice*</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.10.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.10.3">26.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.10.4">38.33</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.10.5">32.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.10.10.6">1.89</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.7">12.23</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.11.11.1">Step-1o-audio*</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.11.2">76.35</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.11.3">40.65</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.11.4">79.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.11.5">65.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.11.6">5.26</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.7">24.63</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.12.12.1">Qwen2Audio</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.12.2">70.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.12.3">58.51</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.12.4">20.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.12.5">49.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.12.6">4.91</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.12.12.7">18.69</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.1">
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.13.13.1.1">
<tr class="ltx_tr" id="S4.T4.1.13.13.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.13.13.1.1.1.1">FT Anti-Fraud</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13.13.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.13.13.1.1.2.1">LALM</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.2">AntiFraud-Qwen2Audio</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.3">81.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.4">84.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.5">82.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.6">83.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.7">6.44</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.13.13.8">31.18</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of various models' performance across three key tasks in fraud detection: scenario classification, fraud detection, and fraud type identification.  For each model, the table shows the F1-score achieved in each task, along with the average F1-score across all three tasks.  Additionally, it provides scores reflecting the quality of the model's reasoning process, and the final score (a weighted average).  Model types are categorized as LLM (Large Language Model) based approaches, multimodal models, and a fine-tuned Anti-Fraud LALM (Large Audio Language Model). This allows for a comparison of different model architectures and strategies in the context of telecom fraud detection. 
> <details>
> <summary>read the caption</summary>
> Table 4. Comparison of Model Performance on Fraud Detection Tasks
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.13.13.1.1">
<tr class="ltx_tr" id="S4.T4.1.13.13.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.13.13.1.1.1.1">FT Anti-Fraud</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13.13.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.13.13.1.1.2.1">LALM</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance metrics for different variants of the Qwen2-Audio model on three tasks: scenario classification, fraud detection, and fraud type identification.  The variants include a baseline model, a model trained only on ASR text, a model without the 'Think' mechanism (which incorporates slow-thinking reasoning), and a model with the 'Think' mechanism.  The metrics shown for each variant and task include accuracy, precision, recall, and F1-score. This allows for a detailed analysis of how different training methods and model features impact the overall performance in identifying fraudulent activity.
> <details>
> <summary>read the caption</summary>
> Table 5. Performance Metrics Comparison of Different Qwen2-Audio Model Variants
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1">Model Type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1">Variant</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">Scenario Classification</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1">Fraud Detection</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1">Fraud Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1">Avg F1</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.1.1">Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.2.1">Pre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.3.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.4.1">F1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.5.1">Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.6.1">Pre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.7.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.8.1">F1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.9.1">Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.10.1">Pre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.11.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.12"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.12.1">F1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.1.3.1.1" rowspan="4"><span class="ltx_text" id="S4.T5.1.3.1.1.1">Qwen2-Audio</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.3.1.2">Base</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.3">67.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.4">78.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.5">67.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.6">70.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.7">61.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.8">68.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.9">51.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.10">58.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.11">32.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.12">78.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.13">32.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.14">20.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.15">49.73</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.4.2.1">ASR-text</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.2">71.01</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.3">79.76</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.4">71.01</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.5">71.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.6">71.27</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.7">76.39</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.8">66.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.9">71.27</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.10">76.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.11">80.39</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.12">76.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.13">77.93</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.4.2.14">73.58</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.5.3.1">NO Think</th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.2">72.08</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.3">80.38</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.4">72.08</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.5">72.08</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.6">68.31</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.7">74.04</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.8">65.17</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.9">69.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.10">78.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.11">85.06</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.12">78.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.13">80.39</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.5.3.14">73.93</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.6.4.1">Think</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.2">80.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.3">82.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.4">80.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.5">81.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.6">84.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.7">86.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.8">83.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.9">84.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.10">82.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.11">83.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.12">82.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.13">82.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.6.4.14">83.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive quality assessment of various models used in the paper, focusing on their performance in a telecommunications fraud detection task.  It evaluates three key aspects of the models' reasoning processes: logical rigor, practical value, and expressive quality.  Each model receives a score for each aspect, and a final total score is calculated to provide an overall ranking of their performance in terms of their ability to mimic the thoughtful, detailed reasoning process of a human expert. This is done to measure not just the accuracy of model answers, but the quality of their reasoning.
> <details>
> <summary>read the caption</summary>
> Table 6. Quality Evaluation of Different Models
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24115/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24115/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}