---
title: "WILDCHAT-50M: A Deep Dive Into the Role of Synthetic Data in Post-Training"
summary: "WILDCHAT-50M:  Largest public chat dataset refines LLM post-training, showing superior SFT performance with fewer samples."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 NYU",]
showSummary: true
date: 2025-01-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18511 {{< /keyword >}}
{{< keyword icon="writer" >}} Benjamin Feuer et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18511" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18511" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18511/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLM post-training, crucial for enhancing language models, currently lacks sufficient open-source data for comprehensive analysis.  This limits the ability to conduct large-scale comparative studies on the efficacy of various synthetic data generation methods and their impact on model performance. This paper introduces WILDCHAT-50M, a substantial dataset addressing this issue. 



To address the data scarcity problem, the authors created WILDCHAT-50M, the largest public chat dataset to date, containing conversations from diverse models.  They then built RE-WILD, an SFT (supervised fine-tuning) data mix, leveraging WILDCHAT-50M.  **RE-WILD outperforms state-of-the-art SFT mixtures**, demonstrating the dataset's value.  The paper provides extensive analysis of model efficiency and response similarity, offering valuable insights for researchers working with LLMs and post-training techniques.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WILDCHAT-50M is the largest public chat dataset, containing responses from 50+ models (0.5B-104B parameters). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RE-WILD, an SFT data mix created using WILDCHAT-50M, outperforms existing SFT mixtures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The choice of data-generating models significantly impacts downstream SFT model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in LLM post-training because it addresses the scarcity of large-scale, publicly available synthetic datasets for comparative analysis.  **WILDCHAT-50M**, the dataset introduced, enables rigorous studies of synthetic data quality, offering valuable insights into effective data curation strategies and significantly advancing the field's understanding of LLM post-training.  This opens new avenues for research on data efficiency, model scaling, and developing more robust and reliable SFT methods.

------
#### Visual Insights



![](https://arxiv.org/html/2501.18511/extracted/6167093/figures/spider_plot_v2.png)

> 🔼 This figure presents a comparative analysis of the performance of different supervised fine-tuning (SFT) models on various benchmarks.  The main finding is that RE-WILD, a novel data mix developed by the authors, outperforms existing strong baselines, particularly in generalist chat and instruction-following tasks. The chart visualizes these results across nine benchmarks, with MTBench scores scaled down for consistent representation.  The data used to create the chart and the scores for each model can be found in the paper's GitHub repository.
> <details>
> <summary>read the caption</summary>
> Figure 1: Re-Wild outperforms strong baselines, on average, across nine benchmarks.  In particular, it exhibits strong performance on generalist chat and instruction following benchmarks. MT Bench scores here are divided by 10, so that the scale is similar to our other evaluations. For the exact numeric scores for all models, please refer to our GitHub repository. Figure best viewed in color.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Source</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Num. Convs</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.2.1.1">WildChat-Q72</th>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.1.2.1.2">246,750</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.3.2.1">MMLU Auxiliary Train</th>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T1.1.3.2.2">99,800</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.4.3.1">Tulu 3 Persona Hub Algebra</th>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T1.1.4.3.2">20,000</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 The table details the composition of the RE-WILD dataset used for supervised fine-tuning (SFT).  RE-WILD is a blend of three datasets: WildChat-Q72, MMLU Auxiliary Train, and Tulu 3 Persona Hub Algebra.  It's designed to be smaller and simpler than the Tulu 3 SFT mix, yet still provide a diverse range of skills, such as mathematical reasoning, world knowledge, and instruction following abilities.  The sources of the data are cited. The table shows the number of conversations contributed by each dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Data blending in Re-Wild. Our data blend is simpler than Tulu 3, consisting of just three sources, and is around 40% the size of the Tulu 3 SFT blend. The datasets were chosen heuristically to emphasize complementary skillsets (math, world-knowledge, and chat/instruction following). MMLU Auxiliary Train data is from Hendrycks et al. (2021), Tulu 3 Persona Hub Algebra is from Lambert et al. (2024).
> </details>





### In-depth insights


#### Synthetic Data's Role
The research paper explores the crucial role of synthetic data in post-training large language models (LLMs).  **Synthetic data, generated by various models, acts as the primary training fuel**, allowing for large-scale comparative analyses that would be otherwise infeasible with real-world data. The study highlights the **importance of careful selection and curation of synthetic data**, showing that data quality (SDQ) significantly impacts downstream LLM performance.  Different data generating models (DGMs) produce data with varying qualities, and there's **no single dominant DGM**.  The paper introduces a novel data mix, showcasing the power of thoughtfully curated synthetic data to boost LLM performance, surpassing existing strong baselines.  **While model parameter count and response length aren't reliable predictors of data quality**, the study reveals that certain styling elements are inherited during supervised fine-tuning (SFT), suggesting that **the choice of DGM significantly influences the overall quality and effectiveness of post-training**.

#### WILDCHAT-50M Dataset
The WILDCHAT-50M dataset represents a substantial contribution to the field of large language model (LLM) post-training.  Its significance lies in its **scale and diversity**: encompassing chat transcripts generated by over 50 different open-weight LLMs, ranging from 0.5B to 104B parameters. This breadth allows for **rigorous comparative analysis** of various model architectures and their downstream effects on synthetic data quality.  The dataset's size (over 125 million chat transcripts) facilitates large-scale experiments, overcoming previous limitations in the availability of comparable publicly available data.  **WILDCHAT-50M's potential impact extends beyond simple benchmarking**: its use in creating the RE-WILD SFT mix, which outperforms existing methods with fewer samples, showcases its practical utility in advancing LLM post-training techniques.  The availability of such a resource democratizes access to large-scale synthetic data for the research community, thereby fostering progress in LLM alignment and instruction tuning.

#### SFT Data Mix
The concept of an 'SFT Data Mix' in the context of large language model (LLM) post-training involves **carefully curating a dataset** of diverse synthetic data to optimize the model's performance on downstream tasks.  This process recognizes that the quality of synthetic training data significantly impacts the effectiveness of supervised fine-tuning (SFT). A well-constructed SFT data mix aims to **balance various data sources** that may complement each other, covering different aspects of language proficiency like factual knowledge, reasoning skills, and adherence to instructions. **The composition of the mix** may be chosen heuristically, relying on insights about individual datasets' strengths and potential for addressing specific weaknesses in the target LLM, or via a more sophisticated human-in-the-loop process.  The selection of data sources is a critical factor, as models trained on this mix can exhibit varying degrees of success depending on the quality and characteristics of the underlying datasets, emphasizing the importance of strategic curation for optimal SFT results.  **The effectiveness of the SFT Data Mix** is ultimately evaluated by measuring the fine-tuned model's performance on various benchmarks.   Therefore, creating a high-performing SFT data mix is a crucial yet challenging aspect of improving LLMs via post-training.

#### Model Efficiency
Analyzing model efficiency in large language model (LLM) post-training is crucial for practical applications.  The computational cost of training and inference significantly impacts the scalability and accessibility of these techniques. **Throughput efficiency**, measured by tokens processed per second, reveals trade-offs between model size and speed.  Larger models, while potentially more powerful, often exhibit lower throughput.  **VRAM efficiency** is another critical aspect, as models exceeding available memory require techniques like gradient checkpointing, impacting runtime and performance. The authors highlight the importance of understanding these trade-offs to inform data curation strategies and to enable efficient scaling of LLM post-training, especially for researchers with limited computational resources.  **Data generation cost** is also a factor, as generating large datasets can be expensive, particularly when using a diverse range of models. Thus, balancing model size, throughput, VRAM efficiency, and data generation costs is essential for optimization.

#### Future Work
Future research directions stemming from this paper on synthetic data in LLM post-training could explore several avenues.  **Expanding the dataset** is crucial; WILDCHAT-50M's size is impressive, but incorporating even more models and data points would strengthen analyses.  A focus on **diverse data generation methods** beyond the current selection, including investigation into the impact of different prompt engineering techniques, would refine our understanding of SDQ.  **Investigating other post-training methods** beyond SFT, such as reinforcement learning techniques, would reveal if the observed trends in data quality hold across different training paradigms.  Furthermore, a deeper dive into the **relationship between DGM characteristics and downstream LLM performance** could unveil predictive factors for improved synthetic data selection.  Finally, research into **new evaluation metrics** for LLM outputs is vital, especially to better capture more nuanced aspects of quality than current benchmarks allow.  Addressing these points will allow for a more comprehensive understanding of how to effectively leverage synthetic data in improving LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.18511/x1.png)

> 🔼 This figure shows the impact of increasing the size of the training dataset on the performance of Supervised Fine-Tuning (SFT).  The x-axis represents the size of the training dataset, while the y-axis shows the average performance across various benchmarks (MixEval, AlpacaEval2-LC, MTBench/10, and OpenLLM LB2). Different colored bars represent different Data Generating Models (DGMs). The results indicate that larger datasets generally lead to improved SFT performance; however, the degree of improvement varies depending on the quality of the synthetic data generated by the DGM. For models like GPT-3.5, performance plateaus relatively quickly with increased data size, while other DGMs show consistent improvement with larger datasets.  This highlights that data quality and the model used for data generation significantly influence the effectiveness of data scaling in SFT.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data scaling improves SFT performance.  The effect is, however, somewhat dependent on SDQ – for DGMs such as GPT 3.5, the benefits taper off relatively quickly, but for the other three DGMs we consider, they continue to increase. Avg is the average performance over (MixEval, AlpacaEval2-LC, MTBench / 10, OpenLLM LB 2).
> </details>



![](https://arxiv.org/html/2501.18511/extracted/6167093/figures/key_words_common_llama.png)

> 🔼 Figure 3 is a word cloud showing the words that appeared most frequently in the human evaluator's feedback when comparing the performance of two fine-tuned language models (LLMs): L8B:L70 (Llama-3.1 8B Base fine-tuned on Llama-3.3-70B responses) and L8B:Q72 (Llama-3.1 8B Base fine-tuned on Qwen-2.5-72B responses). The word cloud visualizes the negative sentiment expressed in the evaluations of L8B:L70.  The prominent words, such as 'lacks,' 'convoluted,' and 'repetitive,' highlight the perceived shortcomings of L8B:L70 in comparison to L8B:Q72. The presence of 'clearer' indicates that the judges desired more clarity in L8B:L70's outputs. The word cloud provides a concise visual summary of the qualitative aspects of model performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Key words more common in L8B : L70 judgments.  The more negative tone of these judgments emphasizes words like clearer (as in, “could have been clearer”), lacks, convoluted and repetitive.
> </details>



![](https://arxiv.org/html/2501.18511/extracted/6167093/figures/key_words_common_qwen.png)

> 🔼 Figure 4 is a word cloud visualizing the words that frequently appeared in the LLM judge's feedback when comparing the performance of Llama-3.1-8B-Base fine-tuned on Qwen-2.5-72B responses against other models.  The word cloud shows that the judges' comments were generally more positive for this model. Words like 'appropriate,' 'necessary,' 'comprehensive,' and 'accurate' were prominently featured, indicating that the model's responses were perceived as well-suited to the task and of high quality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Key words more common in L8B : Q72 judgments.  These judgments tended to be more positive; emphasis was placed on words like appropriate, necessary, comprehensive and accurate.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">MTBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">AlpacaEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1">BBH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.6.1">MATH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.7.1">MUSR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.8.1">IFEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.9.1">MMLU Pro</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.10.1">MixEval</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.1">Q72</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.2.1">6.86</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.3.1">41.00</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.4">48.07</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.5">29.32</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.6.1">5.62</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.7">40.27</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.8">36.78</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.9">30.38</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.1.1.2.1.10">64.50</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.1">L8I</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.2">6.26</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.3">21.12</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.4">45.83</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.5">30.35</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.6">4.49</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.7">37.32</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.2.8.1">38.26</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.3.2.9"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.2.9.1">32.54</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.3.2.10">65.30</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.1">L70</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.2">6.23</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.3">24.91</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.4">46.57</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.5">29.97</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.6">4.08</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.7">39.44</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.8">33.83</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.4.3.9">30.85</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.4.3.10"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.4.3.10.1">64.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.1">Q7</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.2">6.03</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.3">17.26</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.4">48.72</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.5">29.90</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.6">2.93</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.5.4.7.1">42.11</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.8">29.39</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4.9">30.34</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.5.4.10">61.30</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.5">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.1">CRP</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.2">6.05</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.3">13.44</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.6.5.4.1">49.27</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.6.5.5.1">30.82</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.6">4.16</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.7">38.79</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.8">28.47</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.6.5.9">31.64</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.1.1.6.5.10">60.30</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.1">JMB</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.2">6.05</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.3">25.14</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.4">47.36</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.5">28.28</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.6">3.93</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.7">37.50</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.8">25.69</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.9">29.32</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.1.1.7.6.10">57.40</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of six different large language models (LLMs) used as data generators for supervised fine-tuning (SFT). Each LLM, ranging in size from 0.5 billion to 104 billion parameters, generated 250,000 chat transcripts. The performance of the fine-tuned models is then evaluated across various benchmarks, revealing that the choice of data-generating model has a significant and unpredictable impact on the final performance.  There is a considerable amount of variance in the results, with no single model consistently outperforming the others.
> <details>
> <summary>read the caption</summary>
> Table 2: The choice of data generating model has strong and unpredictable effects on downstream benchmark performance. We compare the performance of six different DGMs from four different model families, ranging in size from 0.5B to 104B parameters, each fine-tuned on 250k samples from a DGM. We find a large degree of variance in benchmark performance, with no one model dominating.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T3.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.2.1">Strong</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.3.1">Em</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.4.1">Ol</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.5.1">Ul</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.6.1">h1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.7.1">h2</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.8"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.8.1">h3</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.9"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.9.1">h4</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.10"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.10.1">p</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.3.3.4.1.11"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.11.1">len</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.3.3.5.2.1">Q72 : None</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.2">741</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.3">53</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.4">83</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.5">230</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.6">24</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.7">0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.8">135</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.9">26</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.10">1217</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.3.3.5.2.11">6492</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.3.6.3.1">L70 : None</th>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.2">406</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.3">38</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.4">76</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.5">116</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.6">30</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.7">38</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.8">22</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.9">4</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.6.3.10">1222</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.3.3.6.3.11">6411</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.3.7.4.1">L8B : L70</th>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.2">331</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.3">34</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.4">75</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.5">109</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.6">27</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.7">13</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.8">32</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.9">3</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.7.4.10">1210</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.3.3.7.4.11">6207</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.3.3.8.5.1">L8B : Q72</th>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.2">808</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.3">60</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.4">77</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.5">260</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.6">20</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.7">0</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.8">149</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.9">33</td>
<td class="ltx_td ltx_align_left" id="S3.T3.3.3.8.5.10">1237</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.3.3.8.5.11">6585</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.1.1.1">PF <math alttext="\|" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.m1.1.1.cmml">∥</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1">∥</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">\|</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">∥</annotation></semantics></math> L8B : L70, L70 : None</th>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.2">0.815</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.3">0.895</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.4">0.987</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.5">0.940</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.6">0.900</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.7">0.342</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.8">1.455</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.9">0.750</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.1.1.10">0.990</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.1.1.1.11">0.968</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.2.2.2.1">PF <math alttext="\|" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.1.m1.1a"><mo id="S3.T3.2.2.2.1.m1.1.1" xref="S3.T3.2.2.2.1.m1.1.1.cmml">∥</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><ci id="S3.T3.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1">∥</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">\|</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">∥</annotation></semantics></math> L8B : Q72, Q72 : None</th>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.2">1.090</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.3">1.132</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.4">0.928</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.5">1.130</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.6">0.833</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.7">1.000</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.8">1.104</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.9">1.269</td>
<td class="ltx_td ltx_align_left" id="S3.T3.2.2.2.10">1.016</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T3.2.2.2.11">1.014</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.3.3.3.1">PF <math alttext="\|" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><mo id="S3.T3.3.3.3.1.m1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.cmml">∥</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><ci id="S3.T3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1">∥</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">\|</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">∥</annotation></semantics></math> L8B : Q72, L8B : L70</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.2">2.441</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.3">1.765</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.4">1.027</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.5">2.385</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.6">0.741</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.7">0.000</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.8">4.656</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.9">11.000</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.10">1.022</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.3.3.3.11">1.061</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed analysis of stylistic element inheritance during supervised fine-tuning (SFT) of large language models (LLMs).  It compares the frequency of specific Markdown formatting elements (converted to HTML for clarity) in the outputs of both original data-generating models (DGMs) and their corresponding SFT models.  The table shows the absolute frequency counts of various HTML tags and inline properties in 80 turns from the MTBench dataset, as well as the proportional frequency of these elements between the DGM and its SFT counterpart.  The 'proportional frequency' metric helps assess how closely the SFT model's style matches that of the DGM it was trained on, enabling researchers to understand the extent of style transfer during SFT and its potential impact on downstream model performance. Note that the order of the models in computing the proportional frequency is arbitrary.
> <details>
> <summary>read the caption</summary>
> Table 3: SFT models strongly inherit formal stylistic elements from their DGMs. This table indicates how frequently certain Markdown stylistic elements appear in LLM responses (converted to HTML tags for greater clarity). The columns are names of HTML tags and inline properties, and the cells are frequency counts. PF stands for proportional frequency, the ratio of the first and second model listed (order here is presumed to be arbitrary).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.2.1">MTBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.3.1">PrefRt-L8L</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.4.1">PrefRt-L8Q</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.5.1">PrefRt-L70B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.6.1">PrefRt-Q72B</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T4.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.7.1">FlipCt</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.1">L8B : L70</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.2">6.38</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.3">N/A</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.4">22.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.5">8.75</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.6">15</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T4.1.1.2.1.7">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.1">L8B : Q72</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.2">6.72</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.3">40</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.4">N/A</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.5">16.25</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.3.2.6">13.75</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T4.1.1.3.2.7">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.1">L70 : None</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.2">7.64</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.3">52.5</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.4">38.75</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.5">N/A</td>
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.4.3.6">21.25</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T4.1.1.4.3.7">5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.1">Q72 : None</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.2">7.83</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.3">61.25</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.4">43.75</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.5">25</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.6">N/A</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T4.1.1.5.4.7">6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a comparative analysis on the performance of different Data Generating Models (DGMs) and their corresponding Supervised Fine-Tuning (SFT) models.  It evaluates how often LLMs prefer the responses generated by each DGM and SFT model, using various benchmarks.  The 'Preference Rate' columns show the percentage of times one model's response was preferred over another across different evaluation metrics (Benchmarks). The 'FlipCt' column represents the number of instances where the ranking between the DGM and SFT model is reversed in terms of preference. The analysis highlights the strong preference for Qwen responses among LLMs and the consistent preference pattern observed between DGMs and SFT models, demonstrating the impact of the original DGM's choice on the SFT model performance.
> <details>
> <summary>read the caption</summary>
> Table 4: LLM judge preferences for DGMs and SFTs.  For column name definitions, we refer the reader to the main text, section Sec. 3. Overall, we observe that Qwen responses are generally preferred by LLM judges, and that the rate at which they are preferred is similar from DGM to SFT. Last but not least, we note that reversals of judgment from SFT to DGM (FlipCt) are uncommon.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">avg_rouge1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1">std_rouge1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1">avg_rougeL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.5.1">std_rougeL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.6.1">avg_meteor</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.7.1">std_meteor</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.1">Mixtral-8x7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.2">0.37</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.3">0.11</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.4">0.19</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.5">0.06</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.6">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.1">Llama-3.1-Nemotron-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.2">0.37</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.3">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.4">0.23</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.5">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2.6">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.3.2.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.1">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.2">0.34</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.3">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.4">0.17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.5">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.3.6">0.17</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.4.3.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.1">Mistral-7B-wizardlm</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.2">0.34</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.3">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.4">0.22</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.5">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.4.6">0.16</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.5.4.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.1">Mistral-7B-sharegpt-vicuna</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.2">0.34</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.3">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.4">0.18</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.5">0.03</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.5.6">0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.6.5.7">0.04</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.1">Mistral-7B-Base-SFT-IPO</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.2">0.33</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.3">0.11</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.4">0.17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.5">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.6.6">0.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.7.6.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.1">internlm2_5-20b-chat</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.2">0.33</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.3">0.08</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.4">0.15</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.5">0.03</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.7.6">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.8.7.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.1">Llama-3.1-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.2">0.33</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.3">0.10</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.4">0.16</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.5">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.8.6">0.16</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.9.8.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.1">Llama-3.3-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.2">0.33</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.3">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.4">0.17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.5">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.9.6">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.10.9.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.1">Llama-2-7b-chat-hf</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.2">0.32</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.3">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.4">0.19</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.5">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.10.6">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.11.10.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.11">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.1">Mistral-7B-Base-SFT-CPO</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.2">0.32</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.3">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.4">0.17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.5">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.12.11.6">0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.12.11.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.1">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.2">0.32</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.3">0.08</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.4">0.15</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.5">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.12.6">0.17</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.13.12.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14.13">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.1">Llama-3-8B-ShareGPT-112K</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.2">0.31</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.3">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.4">0.18</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.5">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.14.13.6">0.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.14.13.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15.14">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.1">Qwen2.5-Coder-32B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.2">0.31</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.3">0.10</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.4">0.15</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.5">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.14.6">0.18</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.15.14.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16.15">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.1">Llama-3-8B-Magpie-Pro-SFT-200K</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.2">0.30</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.3">0.15</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.4">0.18</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.5">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.16.15.6">0.17</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.16.15.7">0.09</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.17.16">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.1">google_gemma-2-9b-it</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.2">0.30</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.3">0.10</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.4">0.16</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.5">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.17.16.6">0.14</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.17.16.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.18.17">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.1">AI21-Jamba-1.5-Mini</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.2">0.29</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.3">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.4">0.17</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.5">0.08</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.18.17.6">0.14</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.18.17.7">0.06</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.19.18">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.1">OpenHermes-2-Mistral-7B</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.2">0.28</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.3">0.09</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.4">0.16</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.5">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.19.18.6">0.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.19.18.7">0.07</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.20.19">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.1">Llama-3-Base-8B-SFT-ORPO</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.2">0.27</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.3">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.4">0.14</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.5">0.03</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.20.19.6">0.22</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.20.19.7">0.05</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.21.20">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.1">google_gemma-2-27b-it</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.2">0.27</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.3">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.4">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.5">0.02</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.21.20.6">0.15</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.21.20.7">0.03</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.22.21">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.1">OpenHermes-2.5-Mistral-7B</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.2">0.27</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.3">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.4">0.15</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.5">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.22.21.6">0.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.22.21.7">0.04</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.23.22">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.1">Mistral-7B-Base-SFT-SLiC-HF</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.2">0.26</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.3">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.4">0.14</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.5">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.23.22.6">0.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.23.22.7">0.07</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.24.23">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.1">Mistral-7B-Base-SFT-KTO</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.2">0.25</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.3">0.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.4">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.5">0.04</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.24.23.6">0.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.24.23.7">0.04</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.25.24">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.1">Ministral-8B-Instruct-2410</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.2">0.24</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.3">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.4">0.12</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.5">0.07</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.25.24.6">0.13</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.25.24.7">0.09</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.26.25">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.1">Llama-3-Base-8B-SFT-RDPO</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.2">0.23</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.3">0.06</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.4">0.13</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.5">0.03</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.26.25.6">0.19</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T5.1.1.26.25.7">0.03</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.27.26">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.1">Mistral-7B-Base-SFT-RRHF</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.2">0.19</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.3">0.06</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.4">0.08</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.5">0.02</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.6">0.16</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T5.1.1.27.26.7">0.04</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an intra-LLM response similarity analysis conducted on the WILDCHAT-50M dataset.  It shows how similar the responses generated by different large language models (LLMs) are to each other, using three common Natural Language Processing (NLP) metrics: ROUGE-1, ROUGE-L, and METEOR.  The metrics measure the overlap between the responses.  Higher scores indicate greater similarity. The table shows that the models exhibit a relatively high degree of response similarity.  The methodology used to calculate these scores is described in detail in Section 2.2 of the paper. This similarity across models is noteworthy, given the diversity of prompts and the range of models used in the study.  It suggests that LLMs, regardless of their size or training, tend to generate responses that are more similar to each other than one might expect based on human responses to the same prompts. This observation hints at the relatively limited diversity found in LLMs' responses. 
> <details>
> <summary>read the caption</summary>
> Table 5: Intra-LLM response similarity in Re-Wild. Here we report intra-llm response similarity scores. The method we use to obtain these scores is described in Sec. 2.2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.2.1">MTBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.3.1">AlpacaEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.4.1">BBH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.6.1">MATH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.7.1">MUSR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.8.1">IFEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.9.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.10.1">MixEval</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.11.1">Avg</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.1">L8B : L8I</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.2">6.26</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.3">21.12</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.4">0.46</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.5">0.30</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.6">0.04</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.7">0.37</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.8">0.38</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.9">0.33</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.10">0.65</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.11">0.36</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.1">L8B : Q7</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.2">6.03</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.3">17.26</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.4">0.49</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.5">0.30</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.6">0.03</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.7">0.42</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.8">0.29</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.9">0.30</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.10">0.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.3.2.11">0.35</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.1">L8B : L70</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.2">6.23</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.3">24.91</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.4">0.47</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.5">0.30</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.6">0.04</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.7">0.39</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.8">0.34</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.9">0.31</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.10">0.65</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.4.3.11">0.36</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.1">Q7B : L8I</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.2">6.51</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.3">15.87</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.4">0.51</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.5">0.29</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.6">0.17</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.7">0.43</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.8">0.35</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.9">0.39</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.10">0.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.5.4.11">0.39</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.1">Q7B : Q7</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.2">6.69</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.3">27.09</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.4">0.54</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.5">0.31</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.6">0.19</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.7">0.45</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.8">0.40</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.9">0.42</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.10">0.69</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.6.5.11">0.43</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.1">Q7B : Q72</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.2">7.25</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.3">36.68</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.4">0.54</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.5">0.32</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.6">0.21</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.7">0.43</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.8">0.34</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.9">0.43</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.10">0.65</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.7.6.11">0.42</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.1">Q7 : None</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.2">7.17</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.3">33.14</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.4">0.55</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.5">0.33</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.6">0.19</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.7">0.45</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.8">0.42</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.9">0.40</td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.10">0.73</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A2.T6.1.1.8.7.11">0.44</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.1">L8I : None</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.2">7.20</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.3">30.84</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.4">0.51</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.5">0.33</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.6">0.12</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.7">0.40</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.8">0.42</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.9">0.38</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.10">0.74</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.11">0.41</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comprehensive analysis of the impact of using similar data generating models (DGMs) during supervised fine-tuning (SFT) on the performance of large language models (LLMs).  It compares different combinations of base LLMs (Llama and Qwen) and fine-tuned models, each trained on datasets generated by various DGMs. The table shows that fine-tuning an LLM on data from a similar DGM leads to significantly better performance across various benchmarks compared to using data from dissimilar DGMs. This highlights the importance of DGM selection for effective SFT and indicates that models might learn more effectively when the training data reflects their own characteristics and style.
> <details>
> <summary>read the caption</summary>
> Table 6: Models learn more effectively from highly similar DGMs.  In this table, we report the complete, extended results from our experiments on the effect of diversifying both DGM and SFT-target. Both Llama and Qwen benefit from more similar upstream models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.2.1">MTBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.3.1">Alpaca Eval (LC)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.4.1">BBH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.5.1">GPQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.6.1">MATH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.7.1">MUSR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.8.1">IFEval</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.9.1">MMLU Pro</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.10.1">MixEval</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.11.1">Avg</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.1">L8B : Q7 (500k)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.2">6.33</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.3">19.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.4">0.48</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.5">0.28</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.6">0.04</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.7">0.40</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.8">0.33</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.9">0.30</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.10">0.64</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T7.1.1.2.1.11">0.35</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.1">L8B : L8I (500k)</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.2">6.52</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.3">21.03</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.4">0.46</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.5">0.32</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.6">0.05</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.7">0.39</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.8">0.42</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.9">0.32</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.3.2.10">0.66</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A4.T7.1.1.3.2.11">0.37</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.1">L8B : L8I + Q7 (500k)</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.2">6.43</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.3">18.57</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.4">0.47</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.5">0.28</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.6">0.05</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.7">0.41</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.8">0.34</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.9">0.32</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.4.3.10">0.64</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A4.T7.1.1.4.3.11">0.36</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.1">L8B : Q72 (500k)</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.2">6.51</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.3">41.67</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.4">0.48</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.5">0.29</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.6">0.05</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.7">0.39</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.8">0.39</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.9">0.30</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.5.4.10">0.66</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A4.T7.1.1.5.4.11">0.37</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.1">L8B : L70 (500k)</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.2">6.39</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.3">27.38</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.4">0.46</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.5">0.31</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.6">0.04</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.7">0.36</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.8">0.38</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.9">0.32</td>
<td class="ltx_td ltx_align_left" id="A4.T7.1.1.6.5.10">0.65</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A4.T7.1.1.6.5.11">0.36</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.1">L8B : Q72 + L70 (500k)</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.2">6.82</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.3">39.93</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.4">0.48</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.5">0.29</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.6">0.04</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.7">0.38</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.8">0.38</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.9">0.31</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.10">0.65</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T7.1.1.7.6.11">0.36</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments assessing the impact of blending different Data Generating Models (DGMs) on the performance of downstream models.  The experiments involved fine-tuning models on datasets created by mixing data from different DGMs in roughly equal proportions. The table shows the performance of these models on various benchmark tasks (MTBench, AlpacaEval, BBH, GPQA, MATH, MUSR, IFEval, MMLU, Pro, and MixEval). The 'Avg' column shows the average performance across all benchmarks. The results indicate that blending DGMs generally leads to performance that falls between the performance of the individual DGMs used in the mixture, rather than surpassing the performance of the best individual DGM. 
> <details>
> <summary>read the caption</summary>
> Table 7: Effects of blending DGMs. Where we blend models, we always draw a random sample of approximately equal size from each DGM, and denote the mixture as DGM A + DGM B. e.g., L8I + Q7. In this table, it can be seen that blends benchmark between their DGMs, not above them (as measured by Avg).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18511/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18511/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}