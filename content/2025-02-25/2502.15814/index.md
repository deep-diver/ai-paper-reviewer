---
title: "Slamming: Training a Speech Language Model on One GPU in a Day"
summary: "Slam: Train SLMs on one GPU in a day!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Speech Synthesis", "🏢 Hebrew University of Jerusalem",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15814 {{< /keyword >}}
{{< keyword icon="writer" >}} Gallil Maimon et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15814" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15814" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15814/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Speech Language Models (SLMs) require extensive resources to train, hindering research and development for many. Training SLMs demands large-scale datasets, resulting in **high computational costs**, restricting research to well-funded labs. Existing scaling laws present a pessimistic view of the computational resources needed to train high-quality SLMs.



This paper introduces a **recipe for training high-quality SLMs on a single GPU** in 24 hours. The recipe, called **Slam**, uses empirical analysis of model initialization, synthetic training data, preference optimization to maximize performance. Empirical results show that the recipe scales well with more compute, performing on par with leading SLMs at a fraction of the cost. In SLM scaling laws, Slam gives an optimistic view of SLM feasibility.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} High-quality SLMs can be trained efficiently on limited compute resources. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Careful optimization of model architecture, initialization, and training data is crucial for efficient SLM training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Preference optimization with synthetic data significantly enhances SLM performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial for SLM research** by offering a practical recipe to train high-quality models on limited resources. It **challenges pessimistic views** on SLM feasibility, encouraging further exploration and refinement of scaling laws. The open-sourced code, models, and training recipes **democratize access**, opening new avenues for innovation in speech and audio processing.

------
#### Visual Insights



![](https://arxiv.org/html/2502.15814/extracted/6217510/media/teaser.png)

> 🔼 This figure compares the Topic-StoryCloze performance of various Speech Language Models (SLMs) against the amount of computational resources (measured in FLOPs) used for training.  The size of each circle in the plot corresponds to the size of the respective SLM, providing a visual representation of the model's scale. The plot shows that even with increased compute, performance gains level off and there are significant differences between SLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparing Topic-StoryCloze performance of different SLMs as a function of training compute. Model size is indicated by the size of the circle.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.4.4.5.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.4.4.5.1.2">Data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T1.4.4.5.1.3">Metric</th>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.4.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4.6">Div.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.4.4.4.7">Syn.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1">sBLIMP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.2">sSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.3.3.3.3">tSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4.4">GenPPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.6.1.1">OPT125M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.6.1.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6.1.4">55.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.1.5.1">55.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.1.6.1">75.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.6.1.7.1">96.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.7.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.7.2.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.7.2.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.2.4">55.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.2.5">55.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.2.6">74.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.7.2.7">116.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.8.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.8.3.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.3.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.8.3.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.8.3.4.1">55.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.3.5">54.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.3.6">70.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.8.3.7">160.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.9.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.9.4.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.4.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.9.4.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.4.4">55.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.4.5">54.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.4.6">70.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.9.4.7">172.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.4.10.5.1">Qwen-0.5B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.10.5.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.4.10.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.10.5.4">56.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.10.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.10.5.5.1">55.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.10.5.6"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.10.5.6.1">78.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.10.5.7"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.10.5.7.1">88.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.11.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.11.6.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.11.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.6.4">56.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.6.5">55.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.6.6">77.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.11.6.7">101.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.12.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.4.12.7.1"></th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.7.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.12.7.3">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.7.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.12.7.4.1">56.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.7.5">53.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.7.6">71.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.12.7.7">145.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.13.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.4.4.13.8.1"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.13.8.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.4.4.13.8.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.13.8.4">56.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.13.8.5">53.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.13.8.6">70.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.13.8.7">161.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment investigating the impact of data diversity and synthetic data on the performance of Speech Language Models (SLMs).  It compares the performance of SLMs trained using only the Libri-light and LibriSpeech datasets (representing limited diversity) versus models trained with additional diverse datasets.  The impact of including synthetic data, specifically sTinyStories, is also examined. Performance is evaluated across several metrics, showing how different data compositions affect the model's ability to perform various speech tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Analysing impact of training data diversity and synthetic data on SLM performance. The default Slam recipe does not use diverse data (only Libri-light and LibriSpeech), but uses the synthetic sTinyStories data.
> </details>





### In-depth insights


#### SLM Efficiency
The research focuses on improving the efficiency of Speech Language Models (SLMs), addressing the significant computational demands that hinder broader research and development. The paper introduces "Slam," a recipe for training high-quality SLMs on a single GPU within 24 hours, a notable achievement compared to existing methods requiring extensive resources. **The core idea revolves around optimizing various aspects of the training pipeline**, including model initialization, architecture, synthetic data usage, and preference optimization. Empirical analysis demonstrates that Slam can achieve performance on par with leading SLMs but at a fraction of the computational cost. **This advancement could democratize SLM research**, making it accessible to researchers with limited resources. The paper's insights challenge pessimistic views on SLM scalability, offering an optimistic outlook on the feasibility of training high-quality SLMs with limited computational resources. **The study contributes to the broader field of efficient model training** and may inspire further innovations in SLM architectures and training methodologies.

#### SLAM Recipe
Diving into the concept of a 'SLAM Recipe' for training speech language models (SLMs), it's essentially a detailed, optimized guide. This 'recipe' focuses on **efficiently training high-quality SLMs within resource constraints**, like using a single GPU in a day. Key aspects would include model initialization strategies, architecture choices, data selection methods (**synthetic data generation**), and tailored training objectives (e.g., preference optimization). The goal is maximizing SLM performance while minimizing computational demands. This involves tweaking hyperparameters, exploring optimizers and learning rate schedules, and balancing speech-text data. The recipe would provide concrete steps and hyperparameter settings for researchers to **reproduce and adapt the SLM training process**, making SLM research more accessible and scalable.

#### DPO benefits
**Direct Preference Optimization (DPO)** emerges as a pivotal technique for refining Speech Language Models (SLMs), offering substantial benefits even with limited compute resources. The research indicates that integrating DPO, particularly with synthetically generated data, notably enhances SLM performance.  **A critical finding** is that allocating a small portion of the training budget, as little as 30 minutes, to DPO yields significant improvements compared to models trained solely with next-token prediction. However, **excessive DPO training can be detrimental**, potentially degrading model performance if it overshadows the initial pre-training phase. This delicate balance suggests that DPO acts as a powerful fine-tuning mechanism, aligning the model's output more closely with desired preferences. This is done without needing human feedback. Furthermore, employing a repetition penalty during DPO training helps mitigate the risk of the model generating repetitive or nonsensical outputs, a common issue associated with preference optimization methods. The results suggest that DPO improves both modeling and generation performance on the tasks considered.

#### Text-to-speech
**Text-to-speech (TTS) plays a crucial role in enhancing SLM performance**, particularly when synthetic data is used for pre-training or preference optimization. The research highlights the effectiveness of **generating synthetic speech using TTS models**, enabling better semantic understanding and improved generative capabilities. Different TTS models, such as single-speaker models for computational efficiency, are leveraged to synthesize datasets like TinyStories. DPO has been greatly improved through the data generation by TTS that results in more natural prosody and better language models in the acoustic part. The text-to-speech model is capable of transforming the existing text corpus to the target spoken tokens effectively. Thus it can be an important factor in improving the performance of the acoustic model.

#### Model Tuning
While the provided research paper does not explicitly contain a heading titled 'Model Tuning,' the document extensively explores methods for optimizing Speech Language Models (SLMs). This optimization, in effect, constitutes model tuning. The study investigates various facets of SLM architecture and training, effectively 'tuning' the model through different initializations (**TWIST**, pretrained text LMs), architecture (model size using **Qwen2.5**), hyperparameters. The optimization process involves also tuning the datasets to get the most semantic information using **synthetic data generation** to create more diversity in the SLM training data. The paper also uses **DPO,** in-place of DPO


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15814/extracted/6217510/media/twist_vs_gslm.png)

> 🔼 Figure 2 illustrates the impact of TWIST initialization on the performance of various speech language models (SLMs) with similar parameter counts.  It compares the validation perplexity (PPL), a measure of how well a model predicts unseen data, for models trained both with and without TWIST initialization. The x-axis represents the estimated FLOPs (floating-point operations), reflecting the computational cost of training, while the y-axis shows the validation PPL.  The figure helps to demonstrate whether initializing SLMs with pre-trained text Language Models (like TWIST) improves performance, especially in a computationally constrained setting.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparing PPL of different models of similar parameter count, with and without TWIST initialisation.
> </details>



![](https://arxiv.org/html/2502.15814/extracted/6217510/media/twist_models.png)

> 🔼 This figure compares the validation perplexity (PPL) scores of various speech language models (SLMs) of different sizes and architectures when initialized using the TWIST method.  It demonstrates the impact of model size and architecture on the PPL, showcasing the performance differences between models with and without TWIST initialization under a fixed computational budget. The x-axis represents the estimated FLOPs (floating-point operations), which correlates with the model's computational cost. The y-axis shows the validation perplexity. The graph illustrates that TWIST initialization provides benefits in terms of reduced perplexity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparing PPL of different models under TWIST initialisation.
> </details>



![](https://arxiv.org/html/2502.15814/extracted/6217510/media/optim_analysis.png)

> 🔼 This figure compares the validation perplexity (PPL) achieved by the best-performing speech language model (SLM) when trained using different optimization algorithms (AdamW, AdaLomo, AdEMAMix) and learning rate schedules (cosine decay, inverse square root).  The goal is to determine the combination that yields the lowest validation perplexity, indicating optimal model performance within the resource constraints of a single GPU.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparing validation PPL of our best model with different optimisers and schedulers.
> </details>



![](https://arxiv.org/html/2502.15814/extracted/6217510/media/dpo_slider.png)

> 🔼 This figure analyzes the optimal allocation of a 24-hour compute budget between pre-training and Direct Preference Optimization (DPO) for training a speech language model.  It shows how different durations dedicated to DPO affect the model's performance, measured by various metrics.  The results help determine the most efficient balance between pre-training and DPO to maximize model performance within the time constraint.
> <details>
> <summary>read the caption</summary>
> Figure 5: Analysing the optimal part of the 24 hour compute budget that should be used for DPO, with the rest used for pre-training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.25.25">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.5.5.5.6"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.7">Compute (GPU days)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.8">Parameters</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">sBLIMP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2.2">sStoryCloze <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3.3">tStoryCloze <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.4.4.4.4">GenPPL <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.5.5.5">Auto-BLEU <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.26.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.25.25.26.1.1">TWIST-350M <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.2">40*V100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.3">305M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.4">56.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.7">137.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.26.1.8">3.46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.27.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.25.25.27.2.1">TWIST-1.3B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.2">160*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.3">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.4">57.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.5">52.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.6">70.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.7">131.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.27.2.8">3.20</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.28.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.25.25.28.3.1">TWIST-7B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.2">?</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.3">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.4">59.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.5">55.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.6">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.7">93.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.28.3.8">3.06</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.29.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.25.25.29.4.1">TWIST-13B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.2">?</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.3">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.4">59.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.5">55.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.6">76.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.29.4.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.30.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.25.25.30.5.1">Scaled Optimal <cite class="ltx_cite ltx_citemacro_cite">Cuervo and Marxer (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib9" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.2">?</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.3">823M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.25.25.30.5.4.1">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.25.25.30.5.5.1">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.25.25.30.5.6.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.30.5.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.31.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.25.25.31.6.1">Predicted Optimal <cite class="ltx_cite ltx_citemacro_cite">Cuervo and Marxer (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib9" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.2">1*A5000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.3">78M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.4">56.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.5">54.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.6">70.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.31.6.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.10.10.10.6">TWIST-350M (Original recipe)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.7">1*A5000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.8">305M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6.1">51.52 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.1.m1.1.1" xref="S4.T2.6.6.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><csymbol cd="latexml" id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">±</annotation></semantics></math> .19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.2">53.65 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.7.7.7.2.m1.1"><semantics id="S4.T2.7.7.7.2.m1.1a"><mo id="S4.T2.7.7.7.2.m1.1.1" xref="S4.T2.7.7.7.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.2.m1.1b"><csymbol cd="latexml" id="S4.T2.7.7.7.2.m1.1.1.cmml" xref="S4.T2.7.7.7.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.2.m1.1d">±</annotation></semantics></math> .57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.3">68.80 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.8.8.8.3.m1.1"><semantics id="S4.T2.8.8.8.3.m1.1a"><mo id="S4.T2.8.8.8.3.m1.1.1" xref="S4.T2.8.8.8.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.3.m1.1b"><csymbol cd="latexml" id="S4.T2.8.8.8.3.m1.1.1.cmml" xref="S4.T2.8.8.8.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.3.m1.1d">±</annotation></semantics></math> .47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.9.4">259.2 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.9.9.9.4.m1.1"><semantics id="S4.T2.9.9.9.4.m1.1a"><mo id="S4.T2.9.9.9.4.m1.1.1" xref="S4.T2.9.9.9.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.4.m1.1b"><csymbol cd="latexml" id="S4.T2.9.9.9.4.m1.1.1.cmml" xref="S4.T2.9.9.9.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.4.m1.1d">±</annotation></semantics></math> 6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.10.10.10.5">3.26 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.10.10.10.5.m1.1"><semantics id="S4.T2.10.10.10.5.m1.1a"><mo id="S4.T2.10.10.10.5.m1.1.1" xref="S4.T2.10.10.10.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.5.m1.1b"><csymbol cd="latexml" id="S4.T2.10.10.10.5.m1.1.1.cmml" xref="S4.T2.10.10.10.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.5.m1.1d">±</annotation></semantics></math> .46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.15.15.15.6">TWIST-350M + sTinyStories</th>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.7">1*A5000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.8">305M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.1">51.21 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.11.11.11.1.m1.1"><semantics id="S4.T2.11.11.11.1.m1.1a"><mo id="S4.T2.11.11.11.1.m1.1.1" xref="S4.T2.11.11.11.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.1.m1.1b"><csymbol cd="latexml" id="S4.T2.11.11.11.1.m1.1.1.cmml" xref="S4.T2.11.11.11.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.1.m1.1d">±</annotation></semantics></math> .26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.2">54.17 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.12.12.12.2.m1.1"><semantics id="S4.T2.12.12.12.2.m1.1a"><mo id="S4.T2.12.12.12.2.m1.1.1" xref="S4.T2.12.12.12.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.2.m1.1b"><csymbol cd="latexml" id="S4.T2.12.12.12.2.m1.1.1.cmml" xref="S4.T2.12.12.12.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.2.m1.1d">±</annotation></semantics></math> .54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.3">72.40 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.13.13.13.3.m1.1"><semantics id="S4.T2.13.13.13.3.m1.1a"><mo id="S4.T2.13.13.13.3.m1.1.1" xref="S4.T2.13.13.13.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.3.m1.1b"><csymbol cd="latexml" id="S4.T2.13.13.13.3.m1.1.1.cmml" xref="S4.T2.13.13.13.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.3.m1.1d">±</annotation></semantics></math> .18</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.4">159.0 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.14.14.14.4.m1.1"><semantics id="S4.T2.14.14.14.4.m1.1a"><mo id="S4.T2.14.14.14.4.m1.1.1" xref="S4.T2.14.14.14.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.4.m1.1b"><csymbol cd="latexml" id="S4.T2.14.14.14.4.m1.1.1.cmml" xref="S4.T2.14.14.14.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.4.m1.1d">±</annotation></semantics></math> 6.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.5">4.18 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.15.15.15.5.m1.1"><semantics id="S4.T2.15.15.15.5.m1.1a"><mo id="S4.T2.15.15.15.5.m1.1.1" xref="S4.T2.15.15.15.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.5.m1.1b"><csymbol cd="latexml" id="S4.T2.15.15.15.5.m1.1.1.cmml" xref="S4.T2.15.15.15.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.5.m1.1d">±</annotation></semantics></math> .24</td>
</tr>
<tr class="ltx_tr" id="S4.T2.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.20.20.20.6">
<em class="ltx_emph ltx_font_italic" id="S4.T2.20.20.20.6.1">Slam</em> (-DPO) (ours)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.7">1*A5000</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.8">358M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.16.16.16.1.1">56.45</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.16.16.16.1.m1.1"><semantics id="S4.T2.16.16.16.1.m1.1a"><mo id="S4.T2.16.16.16.1.m1.1.1" xref="S4.T2.16.16.16.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.1.m1.1b"><csymbol cd="latexml" id="S4.T2.16.16.16.1.m1.1.1.cmml" xref="S4.T2.16.16.16.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.1.m1.1d">±</annotation></semantics></math> .17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.17.17.17.2.1">55.59</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.17.17.17.2.m1.1"><semantics id="S4.T2.17.17.17.2.m1.1a"><mo id="S4.T2.17.17.17.2.m1.1.1" xref="S4.T2.17.17.17.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.2.m1.1b"><csymbol cd="latexml" id="S4.T2.17.17.17.2.m1.1.1.cmml" xref="S4.T2.17.17.17.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.2.m1.1d">±</annotation></semantics></math> .30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.18.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.18.18.18.3.1">78.01</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.18.18.18.3.m1.1"><semantics id="S4.T2.18.18.18.3.m1.1a"><mo id="S4.T2.18.18.18.3.m1.1.1" xref="S4.T2.18.18.18.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.3.m1.1b"><csymbol cd="latexml" id="S4.T2.18.18.18.3.m1.1.1.cmml" xref="S4.T2.18.18.18.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.3.m1.1d">±</annotation></semantics></math> .27</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.19.19.19.4.1">88.3</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.19.19.19.4.m1.1"><semantics id="S4.T2.19.19.19.4.m1.1a"><mo id="S4.T2.19.19.19.4.m1.1.1" xref="S4.T2.19.19.19.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.4.m1.1b"><csymbol cd="latexml" id="S4.T2.19.19.19.4.m1.1.1.cmml" xref="S4.T2.19.19.19.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.4.m1.1d">±</annotation></semantics></math> 1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.5">3.47 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.20.20.20.5.m1.1"><semantics id="S4.T2.20.20.20.5.m1.1a"><mo id="S4.T2.20.20.20.5.m1.1.1" xref="S4.T2.20.20.20.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.5.m1.1b"><csymbol cd="latexml" id="S4.T2.20.20.20.5.m1.1.1.cmml" xref="S4.T2.20.20.20.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.5.m1.1d">±</annotation></semantics></math> .17</td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.25.25.25.6">
<em class="ltx_emph ltx_font_italic" id="S4.T2.25.25.25.6.1">Slam</em> (ours)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.25.25.25.7">1*A5000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.25.25.25.8">358M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.21.21.21.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.21.21.21.1.1">58.86</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.21.21.21.1.m1.1"><semantics id="S4.T2.21.21.21.1.m1.1a"><mo id="S4.T2.21.21.21.1.m1.1.1" xref="S4.T2.21.21.21.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.1.m1.1b"><csymbol cd="latexml" id="S4.T2.21.21.21.1.m1.1.1.cmml" xref="S4.T2.21.21.21.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.1.m1.1d">±</annotation></semantics></math> .20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.22.22.22.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.22.22.22.2.1">58.04</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.22.22.22.2.m1.1"><semantics id="S4.T2.22.22.22.2.m1.1a"><mo id="S4.T2.22.22.22.2.m1.1.1" xref="S4.T2.22.22.22.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.2.m1.1b"><csymbol cd="latexml" id="S4.T2.22.22.22.2.m1.1.1.cmml" xref="S4.T2.22.22.22.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.2.m1.1d">±</annotation></semantics></math> .51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.23.23.23.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.23.23.23.3.1">82.04</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.23.23.23.3.m1.1"><semantics id="S4.T2.23.23.23.3.m1.1a"><mo id="S4.T2.23.23.23.3.m1.1.1" xref="S4.T2.23.23.23.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.3.m1.1b"><csymbol cd="latexml" id="S4.T2.23.23.23.3.m1.1.1.cmml" xref="S4.T2.23.23.23.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.3.m1.1d">±</annotation></semantics></math> .21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.24.24.24.4">
<span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.4.1">62.8</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.24.24.24.4.m1.1"><semantics id="S4.T2.24.24.24.4.m1.1a"><mo id="S4.T2.24.24.24.4.m1.1.1" xref="S4.T2.24.24.24.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.4.m1.1b"><csymbol cd="latexml" id="S4.T2.24.24.24.4.m1.1.1.cmml" xref="S4.T2.24.24.24.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.4.m1.1d">±</annotation></semantics></math> 4.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.25.25.25.5">3.88 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T2.25.25.25.5.m1.1"><semantics id="S4.T2.25.25.25.5.m1.1a"><mo id="S4.T2.25.25.25.5.m1.1.1" xref="S4.T2.25.25.25.5.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.5.m1.1b"><csymbol cd="latexml" id="S4.T2.25.25.25.5.m1.1.1.cmml" xref="S4.T2.25.25.25.5.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.5.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.5.m1.1d">±</annotation></semantics></math> .11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed SLM training recipe, 'Slamming,' against several leading SLMs.  It shows key performance metrics (SBLIMP, StoryCloze, TopicStoryCloze, and GenPPL) achieved by these models.  A key aspect of the comparison is the compute resources utilized—Slamming demonstrates competitive performance with significantly less compute.  The table also includes the performance of a TWIST-350M model trained using the original recipe but with the Slamming code and compute budget.  The '±' values show the variance across three separate training runs.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparing slamming to leading SLMs, and predicted optimal performance for the compute. We also consider TWIST-350350350350M using our code and compute budget, but with the original training recipe. ±plus-or-minus\pm± indicates distance to min/max of 3333 seeds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.37.37">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.5.5.5.6"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.7">GPUs</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.8">Params</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.9">Num tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">sBLIMP <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2">sStoryCloze <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3">tStoryCloze <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4">GenPPL <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><ci id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.5.5">Auto-BLEU <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.5.m1.1a"><mo id="S4.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.m1.1b"><ci id="S4.T3.5.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.38.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T3.37.37.38.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.38.1.1.1">Speech only pre-training</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.7.7.7.3">GSLM <cite class="ltx_cite ltx_citemacro_cite">Lakhotia et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib34" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.4">8*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.5">100M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.6">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.7">54.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.8">53.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.9">66.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.1.m1.1a"><mi id="S4.T3.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T3.6.6.6.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><emptyset id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.7.7.7.2.m1.1"><semantics id="S4.T3.7.7.7.2.m1.1a"><mi id="S4.T3.7.7.7.2.m1.1.1" mathvariant="normal" xref="S4.T3.7.7.7.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.2.m1.1b"><emptyset id="S4.T3.7.7.7.2.m1.1.1.cmml" xref="S4.T3.7.7.7.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.10.10.10.4">SyllableLM <cite class="ltx_cite ltx_citemacro_cite">Baade et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib3" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.5">4*A40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.6">300M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.7">16B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.8">63.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.8.8.8.1.m1.1"><semantics id="S4.T3.8.8.8.1.m1.1a"><mi id="S4.T3.8.8.8.1.m1.1.1" mathvariant="normal" xref="S4.T3.8.8.8.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.1.m1.1b"><emptyset id="S4.T3.8.8.8.1.m1.1.1.cmml" xref="S4.T3.8.8.8.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.9">75.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.9.9.9.2.m1.1"><semantics id="S4.T3.9.9.9.2.m1.1a"><mi id="S4.T3.9.9.9.2.m1.1.1" mathvariant="normal" xref="S4.T3.9.9.9.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.2.m1.1b"><emptyset id="S4.T3.9.9.9.2.m1.1.1.cmml" xref="S4.T3.9.9.9.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.10.10.10.3.m1.1"><semantics id="S4.T3.10.10.10.3.m1.1a"><mi id="S4.T3.10.10.10.3.m1.1.1" mathvariant="normal" xref="S4.T3.10.10.10.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.3.m1.1b"><emptyset id="S4.T3.10.10.10.3.m1.1.1.cmml" xref="S4.T3.10.10.10.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.12.12.3">TWIST-350M <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.4">8*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.5">305M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.6">10.8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.7">56.20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.11.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.11.11.11.1.m1.1"><semantics id="S4.T3.11.11.11.1.m1.1a"><mi id="S4.T3.11.11.11.1.m1.1.1" mathvariant="normal" xref="S4.T3.11.11.11.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.1.m1.1b"><emptyset id="S4.T3.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.12.12.12.2.m1.1"><semantics id="S4.T3.12.12.12.2.m1.1a"><mi id="S4.T3.12.12.12.2.m1.1.1" mathvariant="normal" xref="S4.T3.12.12.12.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.2.m1.1b"><emptyset id="S4.T3.12.12.12.2.m1.1.1.cmml" xref="S4.T3.12.12.12.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.8">137.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.9">3.46</td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.39.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.37.37.39.2.1">TWIST-1.3B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.2">32*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.3">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.4">10.8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.5">57.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.6">52.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.7">70.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.8">131.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.39.2.9">3.20</td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.40.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.37.37.40.3.1">TWIST-7B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.2">32*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.3">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.4">36B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.5">59.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.6">55.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.7">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.8">93.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.40.3.9">3.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.14.14.14.3">TWIST-13B <cite class="ltx_cite ltx_citemacro_cite">Hassid et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.4">32*V100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.5">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.6">36B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.7">59.20</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.8">55.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.9">76.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.13.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.1.m1.1a"><mi id="S4.T3.13.13.13.1.m1.1.1" mathvariant="normal" xref="S4.T3.13.13.13.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.m1.1b"><emptyset id="S4.T3.13.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.13.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.m1.1"><semantics id="S4.T3.14.14.14.2.m1.1a"><mi id="S4.T3.14.14.14.2.m1.1.1" mathvariant="normal" xref="S4.T3.14.14.14.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.m1.1b"><emptyset id="S4.T3.14.14.14.2.m1.1.1.cmml" xref="S4.T3.14.14.14.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.17.17.17.4">Scaled Optimal <cite class="ltx_cite ltx_citemacro_cite">Cuervo and Marxer (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib9" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.15.15.15.1.m1.1"><semantics id="S4.T3.15.15.15.1.m1.1a"><mi id="S4.T3.15.15.15.1.m1.1.1" mathvariant="normal" xref="S4.T3.15.15.15.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.1.m1.1b"><emptyset id="S4.T3.15.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.5">823M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.6">82B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.7"><span class="ltx_text ltx_font_bold" id="S4.T3.17.17.17.7.1">61.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.8">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.9">78.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.16.16.16.2.m1.1"><semantics id="S4.T3.16.16.16.2.m1.1a"><mi id="S4.T3.16.16.16.2.m1.1.1" mathvariant="normal" xref="S4.T3.16.16.16.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.2.m1.1b"><emptyset id="S4.T3.16.16.16.2.m1.1.1.cmml" xref="S4.T3.16.16.16.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.17.17.17.3.m1.1"><semantics id="S4.T3.17.17.17.3.m1.1a"><mi id="S4.T3.17.17.17.3.m1.1.1" mathvariant="normal" xref="S4.T3.17.17.17.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.3.m1.1b"><emptyset id="S4.T3.17.17.17.3.m1.1.1.cmml" xref="S4.T3.17.17.17.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.19.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.19.19.19.3">Moshi <cite class="ltx_cite ltx_citemacro_cite">Défossez et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib12" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.4">?*H100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.5">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.6">?</td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.7">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.8"><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.19.8.1">58.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.9"><span class="ltx_text ltx_font_bold" id="S4.T3.19.19.19.9.1">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.18.18.18.1.m1.1"><semantics id="S4.T3.18.18.18.1.m1.1a"><mi id="S4.T3.18.18.18.1.m1.1.1" mathvariant="normal" xref="S4.T3.18.18.18.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.1.m1.1b"><emptyset id="S4.T3.18.18.18.1.m1.1.1.cmml" xref="S4.T3.18.18.18.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.19.19.19.2.m1.1"><semantics id="S4.T3.19.19.19.2.m1.1a"><mi id="S4.T3.19.19.19.2.m1.1.1" mathvariant="normal" xref="S4.T3.19.19.19.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.19.2.m1.1b"><emptyset id="S4.T3.19.19.19.2.m1.1.1.cmml" xref="S4.T3.19.19.19.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.19.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.19.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.21.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.21.21.21.3">SpiritLM <cite class="ltx_cite ltx_citemacro_cite">Nguyen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib53" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.4">64*A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.5">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.6">100B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.7">58.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.8">54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.9">72.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.20.20.20.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.20.20.20.1.m1.1"><semantics id="S4.T3.20.20.20.1.m1.1a"><mi id="S4.T3.20.20.20.1.m1.1.1" mathvariant="normal" xref="S4.T3.20.20.20.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.20.1.m1.1b"><emptyset id="S4.T3.20.20.20.1.m1.1.1.cmml" xref="S4.T3.20.20.20.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.20.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.20.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.21.21.21.2.m1.1"><semantics id="S4.T3.21.21.21.2.m1.1a"><mi id="S4.T3.21.21.21.2.m1.1.1" mathvariant="normal" xref="S4.T3.21.21.21.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.21.2.m1.1b"><emptyset id="S4.T3.21.21.21.2.m1.1.1.cmml" xref="S4.T3.21.21.21.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.21.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.21.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.41.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="9" id="S4.T3.37.37.41.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.41.4.1.1">Joint speech-text pre-training / preference optimisation</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.26.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.26.26.26.6"><cite class="ltx_cite ltx_citemacro_citet">Zeng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib84" title="">2024</a>)</cite></th>
<td class="ltx_td ltx_align_center" id="S4.T3.22.22.22.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.22.22.22.1.m1.1"><semantics id="S4.T3.22.22.22.1.m1.1a"><mi id="S4.T3.22.22.22.1.m1.1.1" mathvariant="normal" xref="S4.T3.22.22.22.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.22.22.22.1.m1.1b"><emptyset id="S4.T3.22.22.22.1.m1.1.1.cmml" xref="S4.T3.22.22.22.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.22.22.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.22.22.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.26.26.7">9B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.23.23.23.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.23.23.23.2.m1.1"><semantics id="S4.T3.23.23.23.2.m1.1a"><mo id="S4.T3.23.23.23.2.m1.1.1" xref="S4.T3.23.23.23.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.23.23.23.2.m1.1b"><csymbol cd="latexml" id="S4.T3.23.23.23.2.m1.1.1.cmml" xref="S4.T3.23.23.23.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.23.23.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.23.23.2.m1.1d">∼</annotation></semantics></math>1T</td>
<td class="ltx_td ltx_align_center" id="S4.T3.24.24.24.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.24.24.24.3.m1.1"><semantics id="S4.T3.24.24.24.3.m1.1a"><mi id="S4.T3.24.24.24.3.m1.1.1" mathvariant="normal" xref="S4.T3.24.24.24.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.24.24.24.3.m1.1b"><emptyset id="S4.T3.24.24.24.3.m1.1.1.cmml" xref="S4.T3.24.24.24.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.24.24.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.24.24.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.26.26.8"><span class="ltx_text ltx_font_bold" id="S4.T3.26.26.26.8.1">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.26.26.9">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.25.25.25.4"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.25.25.25.4.m1.1"><semantics id="S4.T3.25.25.25.4.m1.1a"><mi id="S4.T3.25.25.25.4.m1.1.1" mathvariant="normal" xref="S4.T3.25.25.25.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.25.25.25.4.m1.1b"><emptyset id="S4.T3.25.25.25.4.m1.1.1.cmml" xref="S4.T3.25.25.25.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.25.25.25.4.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.25.25.25.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.26.26.5"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.26.26.26.5.m1.1"><semantics id="S4.T3.26.26.26.5.m1.1a"><mi id="S4.T3.26.26.26.5.m1.1.1" mathvariant="normal" xref="S4.T3.26.26.26.5.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.26.26.26.5.m1.1b"><emptyset id="S4.T3.26.26.26.5.m1.1.1.cmml" xref="S4.T3.26.26.26.5.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.26.26.26.5.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.26.26.26.5.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.29.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.29.29.29.4">Moshi <cite class="ltx_cite ltx_citemacro_cite">Défossez et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib12" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.5">?*H100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.6">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.27.27.27.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.27.27.27.1.m1.1"><semantics id="S4.T3.27.27.27.1.m1.1a"><mo id="S4.T3.27.27.27.1.m1.1.1" xref="S4.T3.27.27.27.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.27.27.27.1.m1.1b"><csymbol cd="latexml" id="S4.T3.27.27.27.1.m1.1.1.cmml" xref="S4.T3.27.27.27.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.27.27.27.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.27.27.27.1.m1.1d">∼</annotation></semantics></math>720B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.7">58.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.8">60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.9">83.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.28.28.28.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.28.28.28.2.m1.1"><semantics id="S4.T3.28.28.28.2.m1.1a"><mi id="S4.T3.28.28.28.2.m1.1.1" mathvariant="normal" xref="S4.T3.28.28.28.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.28.28.28.2.m1.1b"><emptyset id="S4.T3.28.28.28.2.m1.1.1.cmml" xref="S4.T3.28.28.28.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.28.28.28.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.28.28.28.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.29.29.29.3.m1.1"><semantics id="S4.T3.29.29.29.3.m1.1a"><mi id="S4.T3.29.29.29.3.m1.1.1" mathvariant="normal" xref="S4.T3.29.29.29.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.29.29.29.3.m1.1b"><emptyset id="S4.T3.29.29.29.3.m1.1.1.cmml" xref="S4.T3.29.29.29.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.29.29.29.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.29.29.29.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.31.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.31.31.31.3">SpiritLM <cite class="ltx_cite ltx_citemacro_cite">Nguyen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib53" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.4">64*A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.5">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.6">100B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.7">58.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.8">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.9">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.30.30.30.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.30.30.30.1.m1.1"><semantics id="S4.T3.30.30.30.1.m1.1a"><mi id="S4.T3.30.30.30.1.m1.1.1" mathvariant="normal" xref="S4.T3.30.30.30.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.30.30.30.1.m1.1b"><emptyset id="S4.T3.30.30.30.1.m1.1.1.cmml" xref="S4.T3.30.30.30.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.30.30.30.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.30.30.30.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.31.31.31.2.m1.1"><semantics id="S4.T3.31.31.31.2.m1.1a"><mi id="S4.T3.31.31.31.2.m1.1.1" mathvariant="normal" xref="S4.T3.31.31.31.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.31.31.31.2.m1.1b"><emptyset id="S4.T3.31.31.31.2.m1.1.1.cmml" xref="S4.T3.31.31.31.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.31.31.31.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.31.31.31.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.34.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.34.34.34.4">AlignSLM-1.3B <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib39" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.5">64*A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.6">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.32.32.32.1">10.8B + <math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.32.32.32.1.m1.1"><semantics id="S4.T3.32.32.32.1.m1.1a"><mo id="S4.T3.32.32.32.1.m1.1.1" xref="S4.T3.32.32.32.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.32.32.32.1.m1.1b"><csymbol cd="latexml" id="S4.T3.32.32.32.1.m1.1.1.cmml" xref="S4.T3.32.32.32.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.32.32.32.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.32.32.32.1.m1.1d">∼</annotation></semantics></math>158B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.7">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.8">55.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.9">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.33.33.33.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.33.33.33.2.m1.1"><semantics id="S4.T3.33.33.33.2.m1.1a"><mi id="S4.T3.33.33.33.2.m1.1.1" mathvariant="normal" xref="S4.T3.33.33.33.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.33.33.33.2.m1.1b"><emptyset id="S4.T3.33.33.33.2.m1.1.1.cmml" xref="S4.T3.33.33.33.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.33.33.33.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.33.33.33.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.34.34.34.3.m1.1"><semantics id="S4.T3.34.34.34.3.m1.1a"><mi id="S4.T3.34.34.34.3.m1.1.1" mathvariant="normal" xref="S4.T3.34.34.34.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.34.34.34.3.m1.1b"><emptyset id="S4.T3.34.34.34.3.m1.1.1.cmml" xref="S4.T3.34.34.34.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.34.34.34.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.34.34.34.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.37.37.37.4">AlignSLM-7B <cite class="ltx_cite ltx_citemacro_cite">Lin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib39" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.5">64*A100</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.6">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.35.35.35.1">36B + <math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.35.35.35.1.m1.1"><semantics id="S4.T3.35.35.35.1.m1.1a"><mo id="S4.T3.35.35.35.1.m1.1.1" xref="S4.T3.35.35.35.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.35.35.35.1.m1.1b"><csymbol cd="latexml" id="S4.T3.35.35.35.1.m1.1.1.cmml" xref="S4.T3.35.35.35.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.35.35.35.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.35.35.35.1.m1.1d">∼</annotation></semantics></math>158B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.7"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.37.7.1">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.8">61.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.9"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.37.9.1">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.36.36.36.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.36.36.36.2.m1.1"><semantics id="S4.T3.36.36.36.2.m1.1a"><mi id="S4.T3.36.36.36.2.m1.1.1" mathvariant="normal" xref="S4.T3.36.36.36.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.36.36.36.2.m1.1b"><emptyset id="S4.T3.36.36.36.2.m1.1.1.cmml" xref="S4.T3.36.36.36.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.36.36.36.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.36.36.36.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S4.T3.37.37.37.3.m1.1"><semantics id="S4.T3.37.37.37.3.m1.1a"><mi id="S4.T3.37.37.37.3.m1.1.1" mathvariant="normal" xref="S4.T3.37.37.37.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T3.37.37.37.3.m1.1b"><emptyset id="S4.T3.37.37.37.3.m1.1.1.cmml" xref="S4.T3.37.37.37.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.37.37.37.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S4.T3.37.37.37.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.42.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.37.37.42.5.1">
<em class="ltx_emph ltx_font_italic" id="S4.T3.37.37.42.5.1.1">Slam</em> (-DPO)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.2">2*A100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.3">358M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.4">16.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.5">58.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.6">58.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.7">80.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.8">67.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.37.37.42.5.9">3.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.43.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.37.37.43.6.1"><em class="ltx_emph ltx_font_italic" id="S4.T3.37.37.43.6.1.1">Slam</em></th>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.2">1*A5000</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.3">358M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.4">1.4B + 5M</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.5">58.86</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.6">58.04</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.7">82.04</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.8">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.43.6.9">3.88</td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.44.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.37.37.44.7.1">
<em class="ltx_emph ltx_font_italic" id="S4.T3.37.37.44.7.1.1">Slam</em> (scaled)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.2">2*A100</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.3">358M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.4">16.7B + 9M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.44.7.5.1">61.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.6"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.44.7.6.1">61.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.7"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.44.7.7.1">84.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.8"><span class="ltx_text ltx_font_bold" id="S4.T3.37.37.44.7.8.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.44.7.9">3.75</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table analyzes how the performance of the Slam model changes when more computational resources are used during training.  It compares Slam's results (trained on a single A5000 GPU for 24 hours, then scaled to two A100 GPUs for 48 hours) against existing state-of-the-art speech language models (SLMs). Key performance metrics such as sBLIMP, StoryCloze, and perplexity are presented.  The number of tokens used during training is estimated, reflecting both the pre-training phase and the optional Direct Preference Optimization (DPO) phase (indicated with a '+').  The goal is to show how Slam scales efficiently compared to models that require significantly greater computational resources.
> <details>
> <summary>read the caption</summary>
> Table 3: Analysing the effect of scaling up compute for Slam. Number tokens refers to total, not necessarily unique, tokens used for training (estimated from the provided information). We separately mark DPO tokens with a +.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.10.10.11.1.1">Parameter</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.10.10.11.1.2">Value</td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.10.10.12.2.1">Text Base Model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.12.2.2">Qwen2.5-0.5B</td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.10.10.13.3.1">TWIST initialisation</th>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.13.3.2">True</td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.10.10.14.4.1">Data</th>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.14.4.2">Librilight + Librispeech + sTinyStories</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.2.2.2.3">Train Time</th>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.2">
<math alttext="23.5" class="ltx_Math" display="inline" id="A1.T4.1.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.1.m1.1a"><mn id="A1.T4.1.1.1.1.m1.1.1" xref="A1.T4.1.1.1.1.m1.1.1.cmml">23.5</mn><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.1.m1.1b"><cn id="A1.T4.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T4.1.1.1.1.m1.1.1">23.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.1.m1.1c">23.5</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.1.m1.1d">23.5</annotation></semantics></math> hours <math alttext="\simeq 17625" class="ltx_Math" display="inline" id="A1.T4.2.2.2.2.m2.1"><semantics id="A1.T4.2.2.2.2.m2.1a"><mrow id="A1.T4.2.2.2.2.m2.1.1" xref="A1.T4.2.2.2.2.m2.1.1.cmml"><mi id="A1.T4.2.2.2.2.m2.1.1.2" xref="A1.T4.2.2.2.2.m2.1.1.2.cmml"></mi><mo id="A1.T4.2.2.2.2.m2.1.1.1" xref="A1.T4.2.2.2.2.m2.1.1.1.cmml">≃</mo><mn id="A1.T4.2.2.2.2.m2.1.1.3" xref="A1.T4.2.2.2.2.m2.1.1.3.cmml">17625</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.2.m2.1b"><apply id="A1.T4.2.2.2.2.m2.1.1.cmml" xref="A1.T4.2.2.2.2.m2.1.1"><csymbol cd="latexml" id="A1.T4.2.2.2.2.m2.1.1.1.cmml" xref="A1.T4.2.2.2.2.m2.1.1.1">similar-to-or-equals</csymbol><csymbol cd="latexml" id="A1.T4.2.2.2.2.m2.1.1.2.cmml" xref="A1.T4.2.2.2.2.m2.1.1.2">absent</csymbol><cn id="A1.T4.2.2.2.2.m2.1.1.3.cmml" type="integer" xref="A1.T4.2.2.2.2.m2.1.1.3">17625</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.2.m2.1c">\simeq 17625</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.2.m2.1d">≃ 17625</annotation></semantics></math> steps</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.3.3.3.2">RoPE theta</th>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3.1"><math alttext="10000" class="ltx_Math" display="inline" id="A1.T4.3.3.3.1.m1.1"><semantics id="A1.T4.3.3.3.1.m1.1a"><mn id="A1.T4.3.3.3.1.m1.1.1" xref="A1.T4.3.3.3.1.m1.1.1.cmml">10000</mn><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.1.m1.1b"><cn id="A1.T4.3.3.3.1.m1.1.1.cmml" type="integer" xref="A1.T4.3.3.3.1.m1.1.1">10000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.1.m1.1c">10000</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.1.m1.1d">10000</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.4.4.4.2">Context length</th>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.4.1"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T4.4.4.4.1.m1.1"><semantics id="A1.T4.4.4.4.1.m1.1a"><mn id="A1.T4.4.4.4.1.m1.1.1" xref="A1.T4.4.4.4.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.4.1.m1.1b"><cn id="A1.T4.4.4.4.1.m1.1.1.cmml" type="integer" xref="A1.T4.4.4.4.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.4.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.4.1.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.5.5.5.2">Per device Batch Size</th>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.1"><math alttext="8" class="ltx_Math" display="inline" id="A1.T4.5.5.5.1.m1.1"><semantics id="A1.T4.5.5.5.1.m1.1a"><mn id="A1.T4.5.5.5.1.m1.1.1" xref="A1.T4.5.5.5.1.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.5.1.m1.1b"><cn id="A1.T4.5.5.5.1.m1.1.1.cmml" type="integer" xref="A1.T4.5.5.5.1.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.5.1.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.5.1.m1.1d">8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.6.6.6.2">Gradient Accumulation</th>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.6.1"><math alttext="16" class="ltx_Math" display="inline" id="A1.T4.6.6.6.1.m1.1"><semantics id="A1.T4.6.6.6.1.m1.1a"><mn id="A1.T4.6.6.6.1.m1.1.1" xref="A1.T4.6.6.6.1.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.6.1.m1.1b"><cn id="A1.T4.6.6.6.1.m1.1.1.cmml" type="integer" xref="A1.T4.6.6.6.1.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.6.1.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.6.1.m1.1d">16</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.7.7.7.2">Base Learning Rate</th>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.7.1"><math alttext="1e-3" class="ltx_Math" display="inline" id="A1.T4.7.7.7.1.m1.1"><semantics id="A1.T4.7.7.7.1.m1.1a"><mrow id="A1.T4.7.7.7.1.m1.1.1" xref="A1.T4.7.7.7.1.m1.1.1.cmml"><mrow id="A1.T4.7.7.7.1.m1.1.1.2" xref="A1.T4.7.7.7.1.m1.1.1.2.cmml"><mn id="A1.T4.7.7.7.1.m1.1.1.2.2" xref="A1.T4.7.7.7.1.m1.1.1.2.2.cmml">1</mn><mo id="A1.T4.7.7.7.1.m1.1.1.2.1" xref="A1.T4.7.7.7.1.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T4.7.7.7.1.m1.1.1.2.3" xref="A1.T4.7.7.7.1.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T4.7.7.7.1.m1.1.1.1" xref="A1.T4.7.7.7.1.m1.1.1.1.cmml">−</mo><mn id="A1.T4.7.7.7.1.m1.1.1.3" xref="A1.T4.7.7.7.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.7.1.m1.1b"><apply id="A1.T4.7.7.7.1.m1.1.1.cmml" xref="A1.T4.7.7.7.1.m1.1.1"><minus id="A1.T4.7.7.7.1.m1.1.1.1.cmml" xref="A1.T4.7.7.7.1.m1.1.1.1"></minus><apply id="A1.T4.7.7.7.1.m1.1.1.2.cmml" xref="A1.T4.7.7.7.1.m1.1.1.2"><times id="A1.T4.7.7.7.1.m1.1.1.2.1.cmml" xref="A1.T4.7.7.7.1.m1.1.1.2.1"></times><cn id="A1.T4.7.7.7.1.m1.1.1.2.2.cmml" type="integer" xref="A1.T4.7.7.7.1.m1.1.1.2.2">1</cn><ci id="A1.T4.7.7.7.1.m1.1.1.2.3.cmml" xref="A1.T4.7.7.7.1.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T4.7.7.7.1.m1.1.1.3.cmml" type="integer" xref="A1.T4.7.7.7.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.7.1.m1.1c">1e-3</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.7.1.m1.1d">1 italic_e - 3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.8.8.8.2">Warmup Ratio</th>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.8.1"><math alttext="1\%" class="ltx_Math" display="inline" id="A1.T4.8.8.8.1.m1.1"><semantics id="A1.T4.8.8.8.1.m1.1a"><mrow id="A1.T4.8.8.8.1.m1.1.1" xref="A1.T4.8.8.8.1.m1.1.1.cmml"><mn id="A1.T4.8.8.8.1.m1.1.1.2" xref="A1.T4.8.8.8.1.m1.1.1.2.cmml">1</mn><mo id="A1.T4.8.8.8.1.m1.1.1.1" xref="A1.T4.8.8.8.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.8.1.m1.1b"><apply id="A1.T4.8.8.8.1.m1.1.1.cmml" xref="A1.T4.8.8.8.1.m1.1.1"><csymbol cd="latexml" id="A1.T4.8.8.8.1.m1.1.1.1.cmml" xref="A1.T4.8.8.8.1.m1.1.1.1">percent</csymbol><cn id="A1.T4.8.8.8.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.8.8.8.1.m1.1.1.2">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.8.1.m1.1c">1\%</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.8.1.m1.1d">1 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.10.10.15.5.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.15.5.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T4.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.9.9.9.2">Learning Rate Scheduler</th>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.9.1">cosine with min <math alttext="5e-5" class="ltx_Math" display="inline" id="A1.T4.9.9.9.1.m1.1"><semantics id="A1.T4.9.9.9.1.m1.1a"><mrow id="A1.T4.9.9.9.1.m1.1.1" xref="A1.T4.9.9.9.1.m1.1.1.cmml"><mrow id="A1.T4.9.9.9.1.m1.1.1.2" xref="A1.T4.9.9.9.1.m1.1.1.2.cmml"><mn id="A1.T4.9.9.9.1.m1.1.1.2.2" xref="A1.T4.9.9.9.1.m1.1.1.2.2.cmml">5</mn><mo id="A1.T4.9.9.9.1.m1.1.1.2.1" xref="A1.T4.9.9.9.1.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T4.9.9.9.1.m1.1.1.2.3" xref="A1.T4.9.9.9.1.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T4.9.9.9.1.m1.1.1.1" xref="A1.T4.9.9.9.1.m1.1.1.1.cmml">−</mo><mn id="A1.T4.9.9.9.1.m1.1.1.3" xref="A1.T4.9.9.9.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.9.1.m1.1b"><apply id="A1.T4.9.9.9.1.m1.1.1.cmml" xref="A1.T4.9.9.9.1.m1.1.1"><minus id="A1.T4.9.9.9.1.m1.1.1.1.cmml" xref="A1.T4.9.9.9.1.m1.1.1.1"></minus><apply id="A1.T4.9.9.9.1.m1.1.1.2.cmml" xref="A1.T4.9.9.9.1.m1.1.1.2"><times id="A1.T4.9.9.9.1.m1.1.1.2.1.cmml" xref="A1.T4.9.9.9.1.m1.1.1.2.1"></times><cn id="A1.T4.9.9.9.1.m1.1.1.2.2.cmml" type="integer" xref="A1.T4.9.9.9.1.m1.1.1.2.2">5</cn><ci id="A1.T4.9.9.9.1.m1.1.1.2.3.cmml" xref="A1.T4.9.9.9.1.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T4.9.9.9.1.m1.1.1.3.cmml" type="integer" xref="A1.T4.9.9.9.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.9.1.m1.1c">5e-5</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.9.1.m1.1d">5 italic_e - 5</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.10.10.10.2">Max Grad Norm</th>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.10.1"><math alttext="0.5" class="ltx_Math" display="inline" id="A1.T4.10.10.10.1.m1.1"><semantics id="A1.T4.10.10.10.1.m1.1a"><mn id="A1.T4.10.10.10.1.m1.1.1" xref="A1.T4.10.10.10.1.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.10.1.m1.1b"><cn id="A1.T4.10.10.10.1.m1.1.1.cmml" type="float" xref="A1.T4.10.10.10.1.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.10.1.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.10.1.m1.1d">0.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.16.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T4.10.10.16.6.1">Dtype</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.10.10.16.6.2">bfloat16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for pre-training the speech language model in the Slam recipe, excluding the Direct Preference Optimization (DPO) phase.  It lists settings such as the base model used, data sources, training time, various regularization parameters, optimization algorithm, learning rate schedule, and data type.  These specifications are crucial for replicating the experiment's results.
> <details>
> <summary>read the caption</summary>
> Table 4: Slam (-DPO) Pre Training Recipe
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.10.10.11.1.1">Parameter</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.10.10.11.1.2">Value</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.12.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.10.10.12.2.1">Initial Model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.10.10.12.2.2">
<em class="ltx_emph ltx_font_italic" id="A1.T5.10.10.12.2.2.1">Slam</em> (-DPO)</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.13.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.10.10.13.3.1">Data</th>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.13.3.2">SpokenSwag with auto-bleu smaller than 0.3</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.2.2.2.3">Train Time</th>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.2">
<math alttext="0.5" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mn id="A1.T5.1.1.1.1.m1.1.1" xref="A1.T5.1.1.1.1.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><cn id="A1.T5.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T5.1.1.1.1.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">0.5</annotation></semantics></math> hour <math alttext="\simeq 813" class="ltx_Math" display="inline" id="A1.T5.2.2.2.2.m2.1"><semantics id="A1.T5.2.2.2.2.m2.1a"><mrow id="A1.T5.2.2.2.2.m2.1.1" xref="A1.T5.2.2.2.2.m2.1.1.cmml"><mi id="A1.T5.2.2.2.2.m2.1.1.2" xref="A1.T5.2.2.2.2.m2.1.1.2.cmml"></mi><mo id="A1.T5.2.2.2.2.m2.1.1.1" xref="A1.T5.2.2.2.2.m2.1.1.1.cmml">≃</mo><mn id="A1.T5.2.2.2.2.m2.1.1.3" xref="A1.T5.2.2.2.2.m2.1.1.3.cmml">813</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.2.m2.1b"><apply id="A1.T5.2.2.2.2.m2.1.1.cmml" xref="A1.T5.2.2.2.2.m2.1.1"><csymbol cd="latexml" id="A1.T5.2.2.2.2.m2.1.1.1.cmml" xref="A1.T5.2.2.2.2.m2.1.1.1">similar-to-or-equals</csymbol><csymbol cd="latexml" id="A1.T5.2.2.2.2.m2.1.1.2.cmml" xref="A1.T5.2.2.2.2.m2.1.1.2">absent</csymbol><cn id="A1.T5.2.2.2.2.m2.1.1.3.cmml" type="integer" xref="A1.T5.2.2.2.2.m2.1.1.3">813</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.2.m2.1c">\simeq 813</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.2.m2.1d">≃ 813</annotation></semantics></math> steps</td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.3.3.3.2">RoPE theta</th>
<td class="ltx_td ltx_align_center" id="A1.T5.3.3.3.1"><math alttext="10000" class="ltx_Math" display="inline" id="A1.T5.3.3.3.1.m1.1"><semantics id="A1.T5.3.3.3.1.m1.1a"><mn id="A1.T5.3.3.3.1.m1.1.1" xref="A1.T5.3.3.3.1.m1.1.1.cmml">10000</mn><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.1.m1.1b"><cn id="A1.T5.3.3.3.1.m1.1.1.cmml" type="integer" xref="A1.T5.3.3.3.1.m1.1.1">10000</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.1.m1.1c">10000</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.1.m1.1d">10000</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.4.4.4.2">Context length</th>
<td class="ltx_td ltx_align_center" id="A1.T5.4.4.4.1"><math alttext="1024" class="ltx_Math" display="inline" id="A1.T5.4.4.4.1.m1.1"><semantics id="A1.T5.4.4.4.1.m1.1a"><mn id="A1.T5.4.4.4.1.m1.1.1" xref="A1.T5.4.4.4.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.1.m1.1b"><cn id="A1.T5.4.4.4.1.m1.1.1.cmml" type="integer" xref="A1.T5.4.4.4.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.1.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.5.5.5.2">Per device Batch Size</th>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.1"><math alttext="4" class="ltx_Math" display="inline" id="A1.T5.5.5.5.1.m1.1"><semantics id="A1.T5.5.5.5.1.m1.1a"><mn id="A1.T5.5.5.5.1.m1.1.1" xref="A1.T5.5.5.5.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.1.m1.1b"><cn id="A1.T5.5.5.5.1.m1.1.1.cmml" type="integer" xref="A1.T5.5.5.5.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.1.m1.1d">4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.6.6.6.2">Gradient Accumulation</th>
<td class="ltx_td ltx_align_center" id="A1.T5.6.6.6.1"><math alttext="16" class="ltx_Math" display="inline" id="A1.T5.6.6.6.1.m1.1"><semantics id="A1.T5.6.6.6.1.m1.1a"><mn id="A1.T5.6.6.6.1.m1.1.1" xref="A1.T5.6.6.6.1.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.1.m1.1b"><cn id="A1.T5.6.6.6.1.m1.1.1.cmml" type="integer" xref="A1.T5.6.6.6.1.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.1.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.1.m1.1d">16</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.7.7.7.2">Base Learning Rate</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.7.7.1"><math alttext="5e-5" class="ltx_Math" display="inline" id="A1.T5.7.7.7.1.m1.1"><semantics id="A1.T5.7.7.7.1.m1.1a"><mrow id="A1.T5.7.7.7.1.m1.1.1" xref="A1.T5.7.7.7.1.m1.1.1.cmml"><mrow id="A1.T5.7.7.7.1.m1.1.1.2" xref="A1.T5.7.7.7.1.m1.1.1.2.cmml"><mn id="A1.T5.7.7.7.1.m1.1.1.2.2" xref="A1.T5.7.7.7.1.m1.1.1.2.2.cmml">5</mn><mo id="A1.T5.7.7.7.1.m1.1.1.2.1" xref="A1.T5.7.7.7.1.m1.1.1.2.1.cmml">⁢</mo><mi id="A1.T5.7.7.7.1.m1.1.1.2.3" xref="A1.T5.7.7.7.1.m1.1.1.2.3.cmml">e</mi></mrow><mo id="A1.T5.7.7.7.1.m1.1.1.1" xref="A1.T5.7.7.7.1.m1.1.1.1.cmml">−</mo><mn id="A1.T5.7.7.7.1.m1.1.1.3" xref="A1.T5.7.7.7.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.1.m1.1b"><apply id="A1.T5.7.7.7.1.m1.1.1.cmml" xref="A1.T5.7.7.7.1.m1.1.1"><minus id="A1.T5.7.7.7.1.m1.1.1.1.cmml" xref="A1.T5.7.7.7.1.m1.1.1.1"></minus><apply id="A1.T5.7.7.7.1.m1.1.1.2.cmml" xref="A1.T5.7.7.7.1.m1.1.1.2"><times id="A1.T5.7.7.7.1.m1.1.1.2.1.cmml" xref="A1.T5.7.7.7.1.m1.1.1.2.1"></times><cn id="A1.T5.7.7.7.1.m1.1.1.2.2.cmml" type="integer" xref="A1.T5.7.7.7.1.m1.1.1.2.2">5</cn><ci id="A1.T5.7.7.7.1.m1.1.1.2.3.cmml" xref="A1.T5.7.7.7.1.m1.1.1.2.3">𝑒</ci></apply><cn id="A1.T5.7.7.7.1.m1.1.1.3.cmml" type="integer" xref="A1.T5.7.7.7.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.1.m1.1c">5e-5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.1.m1.1d">5 italic_e - 5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.14.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.10.10.14.4.1">Optimizer</th>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.14.4.2">AdamW</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.15.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.10.10.15.5.1">Learning Rate Scheduler</th>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.15.5.2">inverse sqrt</td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.8.8.8.2">Max Grad Norm</th>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.8.1"><math alttext="0.5" class="ltx_Math" display="inline" id="A1.T5.8.8.8.1.m1.1"><semantics id="A1.T5.8.8.8.1.m1.1a"><mn id="A1.T5.8.8.8.1.m1.1.1" xref="A1.T5.8.8.8.1.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.1.m1.1b"><cn id="A1.T5.8.8.8.1.m1.1.1.cmml" type="float" xref="A1.T5.8.8.8.1.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.1.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.1.m1.1d">0.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.16.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.10.10.16.6.1">Dtype</th>
<td class="ltx_td ltx_align_center" id="A1.T5.10.10.16.6.2">bfloat16</td>
</tr>
<tr class="ltx_tr" id="A1.T5.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T5.9.9.9.1">DPO <math alttext="\beta" class="ltx_Math" display="inline" id="A1.T5.9.9.9.1.m1.1"><semantics id="A1.T5.9.9.9.1.m1.1a"><mi id="A1.T5.9.9.9.1.m1.1.1" xref="A1.T5.9.9.9.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A1.T5.9.9.9.1.m1.1b"><ci id="A1.T5.9.9.9.1.m1.1.1.cmml" xref="A1.T5.9.9.9.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.9.9.9.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A1.T5.9.9.9.1.m1.1d">italic_β</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.10.10.10.2"><math alttext="0.1" class="ltx_Math" display="inline" id="A1.T5.10.10.10.2.m1.1"><semantics id="A1.T5.10.10.10.2.m1.1a"><mn id="A1.T5.10.10.10.2.m1.1.1" xref="A1.T5.10.10.10.2.m1.1.1.cmml">0.1</mn><annotation-xml encoding="MathML-Content" id="A1.T5.10.10.10.2.m1.1b"><cn id="A1.T5.10.10.10.2.m1.1.1.cmml" type="float" xref="A1.T5.10.10.10.2.m1.1.1">0.1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.10.10.10.2.m1.1c">0.1</annotation><annotation encoding="application/x-llamapun" id="A1.T5.10.10.10.2.m1.1d">0.1</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the Direct Preference Optimization (DPO) phase of the Slam training recipe.  It includes settings for the initial model, dataset used for DPO training, training time allocated for DPO, ROPE theta (a hyperparameter controlling the trade-off between granularity and ability to handle long contexts in the Rotary Position Embedding), context length, per-device batch size, gradient accumulation, base learning rate, optimizer used, learning rate scheduler, maximum gradient norm, and data type.  Understanding this table is crucial for replicating the Slam DPO training process and analyzing the impact of DPO on final model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Slam DPO Training Recipe
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T6.1.1.1.1.1">Model Name</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.2">Number of Params</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T6.1.1.2.1.1">MobileLLM-125M <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib41" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1.2">106,492,608</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.3.2.1">MobileLLM-350M <cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib41" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.3.2.2">315,117,120</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.4.3.1">OPT-125M <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib85" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.3.2">87,015,936</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.5.4.1">OPT-350M <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib85" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.4.2">305,714,176</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.6.5.1">QWEN2.5-0.5B <cite class="ltx_cite ltx_citemacro_cite">Yang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib80" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.5.2">358,347,904</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.7.6.1">SmolLM2-135M <cite class="ltx_cite ltx_citemacro_cite">Allal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib1" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.6.2">106,492,608</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.8.7.1">SmolLM2-360M <cite class="ltx_cite ltx_citemacro_cite">Allal et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib1" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.7.2">315,117,120</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T6.1.1.9.8.1">Pythia-160M <cite class="ltx_cite ltx_citemacro_cite">Biderman et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib5" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.9.8.2">85,827,072</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T6.1.1.10.9.1">Pythia-410M <cite class="ltx_cite ltx_citemacro_cite">Biderman et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib5" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.10.9.2">303,339,520</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists various large language models (LLMs) and their corresponding parameter counts.  The original LLMs were adapted to use a vocabulary of only 500 speech units.  This table is crucial because it demonstrates the model sizes used after adapting them for speech processing, which is key to understanding the experimental setup and results in the paper.
> <details>
> <summary>read the caption</summary>
> Table 6: Model names and parameter counts after changing vocabulary to speech only units (500).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T7.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.14.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T7.14.14.15.1.1">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.14.14.15.1.2">Number of Hours</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.14.14.15.1.3">Number of Tokens</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T7.2.2.2.3">Libri-Light <cite class="ltx_cite ltx_citemacro_cite">Kahn et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib29" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.1.1.1"><math alttext="50K" class="ltx_Math" display="inline" id="A3.T7.1.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.1.m1.1a"><mrow id="A3.T7.1.1.1.1.m1.1.1" xref="A3.T7.1.1.1.1.m1.1.1.cmml"><mn id="A3.T7.1.1.1.1.m1.1.1.2" xref="A3.T7.1.1.1.1.m1.1.1.2.cmml">50</mn><mo id="A3.T7.1.1.1.1.m1.1.1.1" xref="A3.T7.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.1.1.1.1.m1.1.1.3" xref="A3.T7.1.1.1.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.1.m1.1b"><apply id="A3.T7.1.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.1.m1.1.1"><times id="A3.T7.1.1.1.1.m1.1.1.1.cmml" xref="A3.T7.1.1.1.1.m1.1.1.1"></times><cn id="A3.T7.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A3.T7.1.1.1.1.m1.1.1.2">50</cn><ci id="A3.T7.1.1.1.1.m1.1.1.3.cmml" xref="A3.T7.1.1.1.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.1.m1.1c">50K</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.1.m1.1d">50 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.2.2.2.2"><math alttext="3.5B" class="ltx_Math" display="inline" id="A3.T7.2.2.2.2.m1.1"><semantics id="A3.T7.2.2.2.2.m1.1a"><mrow id="A3.T7.2.2.2.2.m1.1.1" xref="A3.T7.2.2.2.2.m1.1.1.cmml"><mn id="A3.T7.2.2.2.2.m1.1.1.2" xref="A3.T7.2.2.2.2.m1.1.1.2.cmml">3.5</mn><mo id="A3.T7.2.2.2.2.m1.1.1.1" xref="A3.T7.2.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.2.2.2.2.m1.1.1.3" xref="A3.T7.2.2.2.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.2.2.2.2.m1.1b"><apply id="A3.T7.2.2.2.2.m1.1.1.cmml" xref="A3.T7.2.2.2.2.m1.1.1"><times id="A3.T7.2.2.2.2.m1.1.1.1.cmml" xref="A3.T7.2.2.2.2.m1.1.1.1"></times><cn id="A3.T7.2.2.2.2.m1.1.1.2.cmml" type="float" xref="A3.T7.2.2.2.2.m1.1.1.2">3.5</cn><ci id="A3.T7.2.2.2.2.m1.1.1.3.cmml" xref="A3.T7.2.2.2.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.2.2.2.2.m1.1c">3.5B</annotation><annotation encoding="application/x-llamapun" id="A3.T7.2.2.2.2.m1.1d">3.5 italic_B</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.4.4.4.3">LibriSpeech <cite class="ltx_cite ltx_citemacro_cite">Panayotov et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib57" title="">2015</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T7.3.3.3.1"><math alttext="960" class="ltx_Math" display="inline" id="A3.T7.3.3.3.1.m1.1"><semantics id="A3.T7.3.3.3.1.m1.1a"><mn id="A3.T7.3.3.3.1.m1.1.1" xref="A3.T7.3.3.3.1.m1.1.1.cmml">960</mn><annotation-xml encoding="MathML-Content" id="A3.T7.3.3.3.1.m1.1b"><cn id="A3.T7.3.3.3.1.m1.1.1.cmml" type="integer" xref="A3.T7.3.3.3.1.m1.1.1">960</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.3.3.3.1.m1.1c">960</annotation><annotation encoding="application/x-llamapun" id="A3.T7.3.3.3.1.m1.1d">960</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T7.4.4.4.2"><math alttext="67M" class="ltx_Math" display="inline" id="A3.T7.4.4.4.2.m1.1"><semantics id="A3.T7.4.4.4.2.m1.1a"><mrow id="A3.T7.4.4.4.2.m1.1.1" xref="A3.T7.4.4.4.2.m1.1.1.cmml"><mn id="A3.T7.4.4.4.2.m1.1.1.2" xref="A3.T7.4.4.4.2.m1.1.1.2.cmml">67</mn><mo id="A3.T7.4.4.4.2.m1.1.1.1" xref="A3.T7.4.4.4.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.4.4.4.2.m1.1.1.3" xref="A3.T7.4.4.4.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.4.4.4.2.m1.1b"><apply id="A3.T7.4.4.4.2.m1.1.1.cmml" xref="A3.T7.4.4.4.2.m1.1.1"><times id="A3.T7.4.4.4.2.m1.1.1.1.cmml" xref="A3.T7.4.4.4.2.m1.1.1.1"></times><cn id="A3.T7.4.4.4.2.m1.1.1.2.cmml" type="integer" xref="A3.T7.4.4.4.2.m1.1.1.2">67</cn><ci id="A3.T7.4.4.4.2.m1.1.1.3.cmml" xref="A3.T7.4.4.4.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.4.4.4.2.m1.1c">67M</annotation><annotation encoding="application/x-llamapun" id="A3.T7.4.4.4.2.m1.1d">67 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.6.6.6.3">SWC <cite class="ltx_cite ltx_citemacro_cite">Baumann et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib4" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T7.5.5.5.1"><math alttext="750" class="ltx_Math" display="inline" id="A3.T7.5.5.5.1.m1.1"><semantics id="A3.T7.5.5.5.1.m1.1a"><mn id="A3.T7.5.5.5.1.m1.1.1" xref="A3.T7.5.5.5.1.m1.1.1.cmml">750</mn><annotation-xml encoding="MathML-Content" id="A3.T7.5.5.5.1.m1.1b"><cn id="A3.T7.5.5.5.1.m1.1.1.cmml" type="integer" xref="A3.T7.5.5.5.1.m1.1.1">750</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.5.5.5.1.m1.1c">750</annotation><annotation encoding="application/x-llamapun" id="A3.T7.5.5.5.1.m1.1d">750</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T7.6.6.6.2"><math alttext="19M" class="ltx_Math" display="inline" id="A3.T7.6.6.6.2.m1.1"><semantics id="A3.T7.6.6.6.2.m1.1a"><mrow id="A3.T7.6.6.6.2.m1.1.1" xref="A3.T7.6.6.6.2.m1.1.1.cmml"><mn id="A3.T7.6.6.6.2.m1.1.1.2" xref="A3.T7.6.6.6.2.m1.1.1.2.cmml">19</mn><mo id="A3.T7.6.6.6.2.m1.1.1.1" xref="A3.T7.6.6.6.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.6.6.6.2.m1.1.1.3" xref="A3.T7.6.6.6.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.6.6.6.2.m1.1b"><apply id="A3.T7.6.6.6.2.m1.1.1.cmml" xref="A3.T7.6.6.6.2.m1.1.1"><times id="A3.T7.6.6.6.2.m1.1.1.1.cmml" xref="A3.T7.6.6.6.2.m1.1.1.1"></times><cn id="A3.T7.6.6.6.2.m1.1.1.2.cmml" type="integer" xref="A3.T7.6.6.6.2.m1.1.1.2">19</cn><ci id="A3.T7.6.6.6.2.m1.1.1.3.cmml" xref="A3.T7.6.6.6.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.6.6.6.2.m1.1c">19M</annotation><annotation encoding="application/x-llamapun" id="A3.T7.6.6.6.2.m1.1d">19 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.8.8.8.3">Tedlium <cite class="ltx_cite ltx_citemacro_cite">Hernandez et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib23" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T7.7.7.7.1"><math alttext="1.6K" class="ltx_Math" display="inline" id="A3.T7.7.7.7.1.m1.1"><semantics id="A3.T7.7.7.7.1.m1.1a"><mrow id="A3.T7.7.7.7.1.m1.1.1" xref="A3.T7.7.7.7.1.m1.1.1.cmml"><mn id="A3.T7.7.7.7.1.m1.1.1.2" xref="A3.T7.7.7.7.1.m1.1.1.2.cmml">1.6</mn><mo id="A3.T7.7.7.7.1.m1.1.1.1" xref="A3.T7.7.7.7.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.7.7.7.1.m1.1.1.3" xref="A3.T7.7.7.7.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.7.7.7.1.m1.1b"><apply id="A3.T7.7.7.7.1.m1.1.1.cmml" xref="A3.T7.7.7.7.1.m1.1.1"><times id="A3.T7.7.7.7.1.m1.1.1.1.cmml" xref="A3.T7.7.7.7.1.m1.1.1.1"></times><cn id="A3.T7.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A3.T7.7.7.7.1.m1.1.1.2">1.6</cn><ci id="A3.T7.7.7.7.1.m1.1.1.3.cmml" xref="A3.T7.7.7.7.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.7.7.7.1.m1.1c">1.6K</annotation><annotation encoding="application/x-llamapun" id="A3.T7.7.7.7.1.m1.1d">1.6 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T7.8.8.8.2"><math alttext="110M" class="ltx_Math" display="inline" id="A3.T7.8.8.8.2.m1.1"><semantics id="A3.T7.8.8.8.2.m1.1a"><mrow id="A3.T7.8.8.8.2.m1.1.1" xref="A3.T7.8.8.8.2.m1.1.1.cmml"><mn id="A3.T7.8.8.8.2.m1.1.1.2" xref="A3.T7.8.8.8.2.m1.1.1.2.cmml">110</mn><mo id="A3.T7.8.8.8.2.m1.1.1.1" xref="A3.T7.8.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.8.8.8.2.m1.1.1.3" xref="A3.T7.8.8.8.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.8.8.8.2.m1.1b"><apply id="A3.T7.8.8.8.2.m1.1.1.cmml" xref="A3.T7.8.8.8.2.m1.1.1"><times id="A3.T7.8.8.8.2.m1.1.1.1.cmml" xref="A3.T7.8.8.8.2.m1.1.1.1"></times><cn id="A3.T7.8.8.8.2.m1.1.1.2.cmml" type="integer" xref="A3.T7.8.8.8.2.m1.1.1.2">110</cn><ci id="A3.T7.8.8.8.2.m1.1.1.3.cmml" xref="A3.T7.8.8.8.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.8.8.8.2.m1.1c">110M</annotation><annotation encoding="application/x-llamapun" id="A3.T7.8.8.8.2.m1.1d">110 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.10.10.10.3">PeopleSpeech <cite class="ltx_cite ltx_citemacro_cite">Galvez et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib18" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T7.9.9.9.1"><math alttext="7K" class="ltx_Math" display="inline" id="A3.T7.9.9.9.1.m1.1"><semantics id="A3.T7.9.9.9.1.m1.1a"><mrow id="A3.T7.9.9.9.1.m1.1.1" xref="A3.T7.9.9.9.1.m1.1.1.cmml"><mn id="A3.T7.9.9.9.1.m1.1.1.2" xref="A3.T7.9.9.9.1.m1.1.1.2.cmml">7</mn><mo id="A3.T7.9.9.9.1.m1.1.1.1" xref="A3.T7.9.9.9.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.9.9.9.1.m1.1.1.3" xref="A3.T7.9.9.9.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.9.9.9.1.m1.1b"><apply id="A3.T7.9.9.9.1.m1.1.1.cmml" xref="A3.T7.9.9.9.1.m1.1.1"><times id="A3.T7.9.9.9.1.m1.1.1.1.cmml" xref="A3.T7.9.9.9.1.m1.1.1.1"></times><cn id="A3.T7.9.9.9.1.m1.1.1.2.cmml" type="integer" xref="A3.T7.9.9.9.1.m1.1.1.2">7</cn><ci id="A3.T7.9.9.9.1.m1.1.1.3.cmml" xref="A3.T7.9.9.9.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.9.9.9.1.m1.1c">7K</annotation><annotation encoding="application/x-llamapun" id="A3.T7.9.9.9.1.m1.1d">7 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T7.10.10.10.2"><math alttext="480M" class="ltx_Math" display="inline" id="A3.T7.10.10.10.2.m1.1"><semantics id="A3.T7.10.10.10.2.m1.1a"><mrow id="A3.T7.10.10.10.2.m1.1.1" xref="A3.T7.10.10.10.2.m1.1.1.cmml"><mn id="A3.T7.10.10.10.2.m1.1.1.2" xref="A3.T7.10.10.10.2.m1.1.1.2.cmml">480</mn><mo id="A3.T7.10.10.10.2.m1.1.1.1" xref="A3.T7.10.10.10.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.10.10.10.2.m1.1.1.3" xref="A3.T7.10.10.10.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.10.10.10.2.m1.1b"><apply id="A3.T7.10.10.10.2.m1.1.1.cmml" xref="A3.T7.10.10.10.2.m1.1.1"><times id="A3.T7.10.10.10.2.m1.1.1.1.cmml" xref="A3.T7.10.10.10.2.m1.1.1.1"></times><cn id="A3.T7.10.10.10.2.m1.1.1.2.cmml" type="integer" xref="A3.T7.10.10.10.2.m1.1.1.2">480</cn><ci id="A3.T7.10.10.10.2.m1.1.1.3.cmml" xref="A3.T7.10.10.10.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.10.10.10.2.m1.1c">480M</annotation><annotation encoding="application/x-llamapun" id="A3.T7.10.10.10.2.m1.1d">480 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T7.12.12.12.3">VoxPopuli <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.15814v1#bib.bib74" title="">2021b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T7.11.11.11.1"><math alttext="24K" class="ltx_Math" display="inline" id="A3.T7.11.11.11.1.m1.1"><semantics id="A3.T7.11.11.11.1.m1.1a"><mrow id="A3.T7.11.11.11.1.m1.1.1" xref="A3.T7.11.11.11.1.m1.1.1.cmml"><mn id="A3.T7.11.11.11.1.m1.1.1.2" xref="A3.T7.11.11.11.1.m1.1.1.2.cmml">24</mn><mo id="A3.T7.11.11.11.1.m1.1.1.1" xref="A3.T7.11.11.11.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.11.11.11.1.m1.1.1.3" xref="A3.T7.11.11.11.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.11.11.11.1.m1.1b"><apply id="A3.T7.11.11.11.1.m1.1.1.cmml" xref="A3.T7.11.11.11.1.m1.1.1"><times id="A3.T7.11.11.11.1.m1.1.1.1.cmml" xref="A3.T7.11.11.11.1.m1.1.1.1"></times><cn id="A3.T7.11.11.11.1.m1.1.1.2.cmml" type="integer" xref="A3.T7.11.11.11.1.m1.1.1.2">24</cn><ci id="A3.T7.11.11.11.1.m1.1.1.3.cmml" xref="A3.T7.11.11.11.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.11.11.11.1.m1.1c">24K</annotation><annotation encoding="application/x-llamapun" id="A3.T7.11.11.11.1.m1.1d">24 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T7.12.12.12.2"><math alttext="1.64B" class="ltx_Math" display="inline" id="A3.T7.12.12.12.2.m1.1"><semantics id="A3.T7.12.12.12.2.m1.1a"><mrow id="A3.T7.12.12.12.2.m1.1.1" xref="A3.T7.12.12.12.2.m1.1.1.cmml"><mn id="A3.T7.12.12.12.2.m1.1.1.2" xref="A3.T7.12.12.12.2.m1.1.1.2.cmml">1.64</mn><mo id="A3.T7.12.12.12.2.m1.1.1.1" xref="A3.T7.12.12.12.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.12.12.12.2.m1.1.1.3" xref="A3.T7.12.12.12.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.12.12.12.2.m1.1b"><apply id="A3.T7.12.12.12.2.m1.1.1.cmml" xref="A3.T7.12.12.12.2.m1.1.1"><times id="A3.T7.12.12.12.2.m1.1.1.1.cmml" xref="A3.T7.12.12.12.2.m1.1.1.1"></times><cn id="A3.T7.12.12.12.2.m1.1.1.2.cmml" type="float" xref="A3.T7.12.12.12.2.m1.1.1.2">1.64</cn><ci id="A3.T7.12.12.12.2.m1.1.1.3.cmml" xref="A3.T7.12.12.12.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.12.12.12.2.m1.1c">1.64B</annotation><annotation encoding="application/x-llamapun" id="A3.T7.12.12.12.2.m1.1d">1.64 italic_B</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T7.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T7.14.14.14.3">sTinyStories</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.13.13.13.1"><math alttext="30K" class="ltx_Math" display="inline" id="A3.T7.13.13.13.1.m1.1"><semantics id="A3.T7.13.13.13.1.m1.1a"><mrow id="A3.T7.13.13.13.1.m1.1.1" xref="A3.T7.13.13.13.1.m1.1.1.cmml"><mn id="A3.T7.13.13.13.1.m1.1.1.2" xref="A3.T7.13.13.13.1.m1.1.1.2.cmml">30</mn><mo id="A3.T7.13.13.13.1.m1.1.1.1" xref="A3.T7.13.13.13.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.13.13.13.1.m1.1.1.3" xref="A3.T7.13.13.13.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.13.13.13.1.m1.1b"><apply id="A3.T7.13.13.13.1.m1.1.1.cmml" xref="A3.T7.13.13.13.1.m1.1.1"><times id="A3.T7.13.13.13.1.m1.1.1.1.cmml" xref="A3.T7.13.13.13.1.m1.1.1.1"></times><cn id="A3.T7.13.13.13.1.m1.1.1.2.cmml" type="integer" xref="A3.T7.13.13.13.1.m1.1.1.2">30</cn><ci id="A3.T7.13.13.13.1.m1.1.1.3.cmml" xref="A3.T7.13.13.13.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.13.13.13.1.m1.1c">30K</annotation><annotation encoding="application/x-llamapun" id="A3.T7.13.13.13.1.m1.1d">30 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.14.14.14.2"><math alttext="2.2B" class="ltx_Math" display="inline" id="A3.T7.14.14.14.2.m1.1"><semantics id="A3.T7.14.14.14.2.m1.1a"><mrow id="A3.T7.14.14.14.2.m1.1.1" xref="A3.T7.14.14.14.2.m1.1.1.cmml"><mn id="A3.T7.14.14.14.2.m1.1.1.2" xref="A3.T7.14.14.14.2.m1.1.1.2.cmml">2.2</mn><mo id="A3.T7.14.14.14.2.m1.1.1.1" xref="A3.T7.14.14.14.2.m1.1.1.1.cmml">⁢</mo><mi id="A3.T7.14.14.14.2.m1.1.1.3" xref="A3.T7.14.14.14.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T7.14.14.14.2.m1.1b"><apply id="A3.T7.14.14.14.2.m1.1.1.cmml" xref="A3.T7.14.14.14.2.m1.1.1"><times id="A3.T7.14.14.14.2.m1.1.1.1.cmml" xref="A3.T7.14.14.14.2.m1.1.1.1"></times><cn id="A3.T7.14.14.14.2.m1.1.1.2.cmml" type="float" xref="A3.T7.14.14.14.2.m1.1.1.2">2.2</cn><ci id="A3.T7.14.14.14.2.m1.1.1.3.cmml" xref="A3.T7.14.14.14.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.14.14.14.2.m1.1c">2.2B</annotation><annotation encoding="application/x-llamapun" id="A3.T7.14.14.14.2.m1.1d">2.2 italic_B</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a detailed breakdown of the training datasets used in the study. It lists the name of each dataset, the number of hours of audio data it contains, and the total number of tokens extracted from it for training. This allows for a comprehensive understanding of the scale and composition of the data used to train the various models described in the paper.  The datasets used are Libri-light, LibriSpeech, SWC, Tedlium, PeopleSpeech, VoxPopuli and sTinyStories.
> <details>
> <summary>read the caption</summary>
> Table 7: Dataset train set sizes that we use.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15814/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15814/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}