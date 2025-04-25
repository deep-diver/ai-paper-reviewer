---
title: "DRAGON: Distributional Rewards Optimize Diffusion Generative Models"
summary: "DRAGON: Distributional Rewards Optimize Diffusion Generative Models"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Music Generation", "🏢 UC Berkeley",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15217 {{< /keyword >}}
{{< keyword icon="writer" >}} Yatong Bai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15217" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15217" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15217/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models excel at content generation, but aligning them with human preferences remains challenging. Existing methods like RLHF or DPO require expensive human feedback and struggle with distributional objectives. They are also disconnected from generative model evaluation metrics. It makes it difficult to adapt these approaches to new objectives. 



This paper introduces **DRAGON**, a framework for fine-tuning generative models. **DRAGON** optimizes a spectrum of rewards. By constructing reward functions using encoders and reference examples, it can optimize instance-wise, instance-to-distribution and distribution-to-distribution rewards, improving human-perceived quality without extensive human annotations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DRAGON is a versatile framework for fine-tuning generative models, optimizing towards a desired outcome. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework introduces a novel method for constructing reward functions by selecting an embedding extractor and a set of examples to represent an exemplar distribution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DRAGON improves human-perceived music quality with sparse or no human preference annotations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a flexible reward optimization technique, adaptable to various media, that can help researchers fine-tune their models. The introduced DRAGON framework provides a novel approach to reward function design, optimizing media quality and bridging the gap between model-based and human-perceived metrics.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15217/x3.png)

> 🔼 DRAGON is a versatile on-policy reinforcement learning framework designed for fine-tuning media generation models.  It's depicted as a flowchart showing the process of generating on-policy samples, calculating rewards using various methods (instance-wise, instance-to-distribution, distribution-to-distribution), creating positive and negative demonstration sets, and using these sets to refine the model via a contrastive learning approach. The framework is shown to be adaptable to diverse reward functions, making it a powerful tool for optimizing generative models towards desired outcomes.
> <details>
> <summary>read the caption</summary>
> (a) Overall diagram of DRAGON, a versatile on-policy learning framework for media generation models that can optimize various types of reward functions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T2.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T2.4.1.1.1.1" style="font-size:90%;">Collection Phase</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T2.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T2.4.1.1.2.1" style="font-size:90%;">Prompt Source</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T2.4.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T2.4.1.1.3.1" style="font-size:90%;">Music Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T2.4.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T2.4.1.1.4.1" style="font-size:90%;">Occurrences</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T2.4.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T2.4.1.1.5.1" style="font-size:90%;">Mean Rating</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T2.4.2.2.1"><span class="ltx_text" id="A2.T2.4.2.2.1.1" style="font-size:90%;">Phase-1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T2.4.2.2.2"><span class="ltx_text" id="A2.T2.4.2.2.2.1" style="font-size:90%;">User prompts</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T2.4.2.2.3"><span class="ltx_text" id="A2.T2.4.2.2.3.1" style="font-size:90%;">Generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T2.4.2.2.4"><span class="ltx_text" id="A2.T2.4.2.2.4.1" style="font-size:90%;">634</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T2.4.2.2.5"><span class="ltx_text" id="A2.T2.4.2.2.5.1" style="font-size:90%;">2.992</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.3.3.1"><span class="ltx_text" id="A2.T2.4.3.3.1.1" style="font-size:90%;">Phase-2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.3.3.2"><span class="ltx_text" id="A2.T2.4.3.3.2.1" style="font-size:90%;">User prompts (reused)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.3.3.3"><span class="ltx_text" id="A2.T2.4.3.3.3.1" style="font-size:90%;">Generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.4.3.3.4"><span class="ltx_text" id="A2.T2.4.3.3.4.1" style="font-size:90%;">487</span></td>
<td class="ltx_td ltx_align_center" id="A2.T2.4.3.3.5"><span class="ltx_text" id="A2.T2.4.3.3.5.1" style="font-size:90%;">2.875</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.4.4.1"><span class="ltx_text" id="A2.T2.4.4.4.1.1" style="font-size:90%;">Phase-2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.4.4.2"><span class="ltx_text" id="A2.T2.4.4.4.2.1" style="font-size:90%;">Training dataset captions</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.4.4.3"><span class="ltx_text" id="A2.T2.4.4.4.3.1" style="font-size:90%;">Generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.4.4.4.4"><span class="ltx_text" id="A2.T2.4.4.4.4.1" style="font-size:90%;">361</span></td>
<td class="ltx_td ltx_align_center" id="A2.T2.4.4.4.5"><span class="ltx_text" id="A2.T2.4.4.4.5.1" style="font-size:90%;">3.277</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.5.5.1"><span class="ltx_text" id="A2.T2.4.5.5.1.1" style="font-size:90%;">Phase-2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.5.5.2"><span class="ltx_text" id="A2.T2.4.5.5.2.1" style="font-size:90%;">LLM-generated prompts</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.5.5.3"><span class="ltx_text" id="A2.T2.4.5.5.3.1" style="font-size:90%;">Generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.4.5.5.4"><span class="ltx_text" id="A2.T2.4.5.5.4.1" style="font-size:90%;">196</span></td>
<td class="ltx_td ltx_align_center" id="A2.T2.4.5.5.5"><span class="ltx_text" id="A2.T2.4.5.5.5.1" style="font-size:90%;">2.546</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.6.6.1" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T2.4.6.6.1.1" style="font-size:90%;">Phase-2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.6.6.2" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T2.4.6.6.2.1" style="font-size:90%;">Training dataset captions</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T2.4.6.6.3" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T2.4.6.6.3.1" style="font-size:90%;">Human-created</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T2.4.6.6.4" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T2.4.6.6.4.1" style="font-size:90%;">119</span></td>
<td class="ltx_td ltx_align_center" id="A2.T2.4.6.6.5" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T2.4.6.6.5.1" style="font-size:90%;">3.966</span></td>
</tr>
<tr class="ltx_tr" id="A2.T2.4.7.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" colspan="3" id="A2.T2.4.7.7.1"><span class="ltx_text" id="A2.T2.4.7.7.1.1" style="font-size:90%;">Total</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T2.4.7.7.2"><span class="ltx_text" id="A2.T2.4.7.7.2.1" style="font-size:90%;">1,676</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T2.4.7.7.3"><span class="ltx_text" id="A2.T2.4.7.7.3.1" style="font-size:90%;">2.919</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the win rates of the DRAGON model across various reward functions.  For each reward function used (e.g., aesthetics score, CLAP score, different variations of Fréchet Audio Distance (FAD)), the table shows the win rate of DRAGON against a baseline model.  The 'reward before/after' column quantifies the improvement in the reward metric after optimization by DRAGON.  The FAD metrics are further broken down by which encoder (VAE or CLAP) and reference dataset (ALIM or SDNV) were used.  Overall, this table provides a comprehensive evaluation of DRAGON's performance across a diverse range of reward objectives.
> <details>
> <summary>read the caption</summary>
> Table 1: DRAGON’s win rates across reward functions. The “reward win rate” and “reward before/after” columns evaluate the reward function to optimize, which is different for each model. Aesthetics score, CLAP score, and FAD are reported for all models. FAD evaluation considers the diffusion VAE encoder and the CLAP audio encoder, using audio embeddings from the ALIM and SDNV datasets as the reference statistics.
> </details>





### In-depth insights


#### Versatile Rewards
**Versatile rewards** in generative modeling unlock nuanced control, moving beyond simple metrics.  They allow optimization for various objectives: **instance-wise** (assessing individual samples), **instance-to-distribution** (comparing a sample to a target distribution), and **distribution-to-distribution** (comparing generated and target distributions).  This flexibility permits the use of diverse feedback signals, including human preferences, pre-trained models, or even metrics like diversity and coverage.  Crucially, versatile rewards enable steering generative models towards complex, human-aligned goals, paving the way for more creative and controllable AI systems. However, the design of effective and robust versatile reward functions is still challenging because selecting appropriate rewards based on various task needs is necessary.

#### DRAGON's method
**DRAGON** is a fine-tuning framework for generative models, optimizing for diverse rewards (instance, distribution-based). It leverages an embedding extractor and reference examples. The core idea involves online generation, scoring, creating positive/negative sets, and contrastive optimization. This versatility enables DRAGON to optimize various metrics, including those related to distributional properties that are hard to differentiate, enabling it to be used in cross modal contexts. It offers a flexible approach to reward function design, drastically reducing the need for human preference annotations by simply selecting an embedding extractor and a set of examples to represent an exemplar distribution. The ability to handle distribution-to-distribution rewards is valuable for optimizing generation quality metrics directly.

#### No preference data
The absence of preference data presents a significant challenge in training generative models, as it necessitates reliance on indirect methods for optimization. **Traditional reinforcement learning with human feedback (RLHF) is not feasible**, requiring alternative strategies. This situation encourages the development of innovative reward functions that do not depend on explicit human ratings, such as those derived from music aesthetics or the utilization of per-song or full-dataset Fréchet audio distance (FAD). **This highlights the importance of leveraging readily available data** like text descriptions to guide the learning process. The ability to train models without preference data is crucial for scalability and broad applicability, enabling models to generalize beyond specific human preferences.

#### Text-to-music Adv.
Text-to-music generation has witnessed remarkable progress with diffusion models, establishing new standards for content creation. These models, while excelling in generating high-quality audio, often face challenges in aligning their outputs with downstream objectives or human preferences. **DRAGON addresses these limitations by introducing a versatile framework for fine-tuning models towards desired outcomes**. It optimizes a wide array of rewards, instance-wise, instance-to-distribution, and distribution-to-distribution signals, improving human-perceived quality and enabling cross-modal supervision. **By leveraging cross-modal exemplar embeddings, DRAGON constructs novel reward functions using text embeddings to enhance music generation, even when lacking audio data.** This flexibility is crucial, enabling the optimization of non-differentiable reward functions and facilitating the generation of high-quality music.

#### Diversity control
In the context of generative models, "Diversity control" highlights a critical challenge: balancing the quality and variety of generated content. **Simple optimization often leads to mode collapse**, where the model produces a narrow range of outputs, sacrificing diversity. Effective diversity control strategies aim to encourage the generation of diverse examples while maintaining overall quality. Methods for diversity control include modifying the training objective to explicitly encourage diverse outputs, employing techniques like **Vendi score** (mentioned in the paper) that directly optimize for variety, or using architectural modifications to promote exploration of different modes. The ideal approach depends on the specific application and desired trade-off between quality and diversity. Diversity control is crucial for creating generative models that are both useful and engaging, as a lack of diversity can limit their real-world applicability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15217/x4.png)

> 🔼 This figure visualizes the performance improvement achieved by the DRAGON model across various reward metrics. Each point in the radar chart represents a specific reward function (e.g., aesthetics score, CLAP score, etc.), and its distance from the center indicates the win rate of the DRAGON model (optimized for that specific reward) compared to a baseline model.  A higher win rate corresponds to a larger distance from the center, indicating a greater improvement by DRAGON. The chart effectively summarizes the model's overall performance enhancement across a range of reward functions, highlighting its versatility.
> <details>
> <summary>read the caption</summary>
> (b) DRAGON significantly improves a full suite of rewards. Each vertex of the plot considers a reward metric and reports the win rate of the DRAGON model optimized for the metric.
> </details>



![](https://arxiv.org/html/2504.15217/x5.png)

> 🔼 This figure compares the performance of two different loss functions, Direct Preference Optimization (DPO) and Kahneman-Tversky Optimization (KTO), in fine-tuning diffusion models. It also explores the impact of using paired versus unpaired demonstrations. Paired demonstrations refer to having pre-defined pairs of preferred and less-preferred samples for comparison and training, while unpaired demonstrations utilize individual samples without explicit pairwise preferences. The figure showcases the win rates achieved by each method, offering insights into which combination of loss function and demonstration type performs best in the context of optimizing diffusion models.
> <details>
> <summary>read the caption</summary>
> Figure 2: DPO versus KTO loss function; paired versus unpaired demonstrations.
> </details>



![](https://arxiv.org/html/2504.15217/x6.png)

> 🔼 This figure analyzes the effect of varying the number of diffusion steps used during training and inference on the performance of the DRAGON model.  It shows that reducing the number of diffusion steps during training (while keeping the inference steps constant at 40) has a minimal impact on the final generation quality.  Furthermore, it demonstrates that using fewer diffusion steps during both training and inference can even lead to slightly better results, making the training process more efficient.
> <details>
> <summary>read the caption</summary>
> Figure 3: DRAGON with different demonstration diffusion steps and inference steps.
> </details>



![](https://arxiv.org/html/2504.15217/x7.png)

> 🔼 This figure displays the Vendi score, a measure of diversity in generated music, for models trained with different reward functions.  The height of each point represents the Vendi score achieved by a model optimized for a specific reward function. The size of the point corresponds to the model's aesthetics win rate, indicating its success in generating aesthetically pleasing music. Different reward functions were used for the experiment: instance-wise reward (Aesthetics score), instance-to-instance reward (CLAP score), instance-to-distribution reward (per-song FAD), and distribution-to-distribution reward (dataset FAD).  For per-song and dataset FAD, models were trained using different reference statistics, creating multiple data points for each.  The bar heights show the average Vendi score across all models using the same reward type.
> <details>
> <summary>read the caption</summary>
> Figure 4: Vendi score of models optimized for each reward type. Point height represents Vendi score and point size represents aesthetics win rate. Each per-song/dataset FAD point train with a different reference statistic. Bar height averages point height.
> </details>



![](https://arxiv.org/html/2504.15217/x9.png)

> 🔼 This ablation study investigates the impact of various settings on the aesthetics prediction model's performance.  The goal is to determine the optimal configuration that yields the highest correlation between the model's predicted aesthetic scores and actual human ratings. Different settings are explored, including changes to the way audio embeddings are calculated (averaging methods and normalization strategies), and the number of input audio chunks. The results are shown in terms of both overall Pearson Linear Correlation Coefficient (PLCC) and per-prompt Spearman Rank Correlation Coefficient (SRCC), providing a comprehensive assessment of the model's performance across different approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study on aesthetics model settings. Higher correlation with human ratings means better aesthetics model performance.
> </details>



![](https://arxiv.org/html/2504.15217/x10.png)

> 🔼 This figure displays the distribution of human-rated and model-predicted aesthetics scores from the Dynamo Music Aesthetics (DMA) dataset.  Global label normalization was applied to the scores before generating the histograms.  The histograms allow for a visual comparison of how well the model's predictions align with human perception of musical aesthetics.  The x-axis represents the aesthetics score (ranging from approximately -2 to +2), and the y-axis represents the count or frequency of scores within each score bin.
> <details>
> <summary>read the caption</summary>
> Figure 6: Histograms of human-rated and predicted aesthetics score over the DMA dataset after global label normalization.
> </details>



![](https://arxiv.org/html/2504.15217/x11.png)

> 🔼 This figure is a scatter plot showing the relationship between the aesthetics scores of generated music before and after applying the DRAGON model. Each point represents a single generated music piece. The x-axis displays the aesthetics score before applying DRAGON, and the y-axis shows the aesthetics score after applying DRAGON.  The plot visually demonstrates how DRAGON improves the quality of the generated music, as indicated by the shift in points towards higher aesthetics scores. The improvement is more pronounced for pieces initially receiving lower scores.
> <details>
> <summary>read the caption</summary>
> (a) Aesthetics score before vs after DRAGON.
> </details>



![](https://arxiv.org/html/2504.15217/x12.png)

> 🔼 This figure shows the improvement in aesthetics scores achieved by the DRAGON model compared to a baseline model.  The x-axis represents the aesthetics score of the baseline model, while the y-axis represents the difference in aesthetics scores between the DRAGON model and the baseline model. Each point represents a single generated example.  The plot visualizes how much DRAGON improves upon the baseline across a range of baseline scores. A positive y-value means DRAGON yielded better aesthetics than the baseline, while a negative y-value indicates that the baseline was better.
> <details>
> <summary>read the caption</summary>
> (b) Aesthetics improvement vs baseline score.
> </details>



![](https://arxiv.org/html/2504.15217/x13.png)

> 🔼 This figure shows the improvement in aesthetics scores achieved by DRAGON compared to the baseline model's scores.  The x-axis represents the aesthetics scores generated by DRAGON, while the y-axis represents the difference in aesthetics scores between DRAGON and the baseline model. Each point on the graph corresponds to a single generated music sample. The plot visually demonstrates how DRAGON's improvement in aesthetics score relates to its own generation quality.
> <details>
> <summary>read the caption</summary>
> (c) Aesthetics improvement vs DRAGON score.
> </details>



![](https://arxiv.org/html/2504.15217/x14.png)

> 🔼 This histogram visualizes the distribution of the aesthetics scores assigned by the human raters in the DMA dataset. It shows the frequency of each score (1-5) in the dataset. This allows for analyzing the overall distribution and the concentration of scores in certain ranges which informs the nature and difficulty of the dataset used in evaluating human-perceived music quality.
> <details>
> <summary>read the caption</summary>
> (d) Aesthetics score histogram.
> </details>



![](https://arxiv.org/html/2504.15217/x15.png)

> 🔼 This figure visualizes the results of optimizing the aesthetics score using the DRAGON model.  It shows that DRAGON primarily improves the quality of audio generations that were initially rated as low or medium quality by the aesthetics model, while the improvement for already high-quality generations is less pronounced.  This suggests that the DRAGON model is most effective in refining those generations that need the most improvement, rather than simply making already good quality generations slightly better.
> <details>
> <summary>read the caption</summary>
> Figure 7: When optimizing aesthetics score, DRAGON improves low to medium-quality examples the most.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T3.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T3.4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T3.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.2.1" style="font-size:90%;">Modality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T3.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.3.1" style="font-size:90%;">Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T3.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.4.1" style="font-size:90%;">Content Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T3.4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.5.1" style="font-size:90%;">Rating Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T3.4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T3.4.1.1.1.6.1" style="font-size:90%;">Rating Scale</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T3.4.1.2.1.1">
<span class="ltx_text" id="A2.T3.4.1.2.1.1.1" style="font-size:90%;">SAC </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.2.1.1.2.1" style="font-size:70%;">(</span>Pressman et al.<span class="ltx_text" id="A2.T3.4.1.2.1.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib53" title="">2022</a><span class="ltx_text" id="A2.T3.4.1.2.1.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T3.4.1.2.1.2"><span class="ltx_text" id="A2.T3.4.1.2.1.2.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T3.4.1.2.1.3"><span class="ltx_text" id="A2.T3.4.1.2.1.3.1" style="font-size:90%;">&gt;238,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T3.4.1.2.1.4"><span class="ltx_text" id="A2.T3.4.1.2.1.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T3.4.1.2.1.5"><span class="ltx_text" id="A2.T3.4.1.2.1.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.4.1.2.1.6"><span class="ltx_text" id="A2.T3.4.1.2.1.6.1" style="font-size:90%;">1-10 score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.3.2.1">
<span class="ltx_text" id="A2.T3.4.1.3.2.1.1" style="font-size:90%;">AVA </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.3.2.1.2.1" style="font-size:70%;">(</span>Murray et al.<span class="ltx_text" id="A2.T3.4.1.3.2.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib46" title="">2012</a><span class="ltx_text" id="A2.T3.4.1.3.2.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.3.2.2"><span class="ltx_text" id="A2.T3.4.1.3.2.2.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.3.2.3"><span class="ltx_text" id="A2.T3.4.1.3.2.3.1" style="font-size:90%;">&gt;250,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.3.2.4"><span class="ltx_text" id="A2.T3.4.1.3.2.4.1" style="font-size:90%;">Human-created</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.3.2.5"><span class="ltx_text" id="A2.T3.4.1.3.2.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.3.2.6"><span class="ltx_text" id="A2.T3.4.1.3.2.6.1" style="font-size:90%;">1-10 score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.4.3.1">
<span class="ltx_text" id="A2.T3.4.1.4.3.1.1" style="font-size:90%;">LAION-Aes V2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.4.3.1.2.1" style="font-size:70%;">(</span>Schuhmann<span class="ltx_text" id="A2.T3.4.1.4.3.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib57" title="">2022</a><span class="ltx_text" id="A2.T3.4.1.4.3.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.4.3.2"><span class="ltx_text" id="A2.T3.4.1.4.3.2.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.4.3.3"><span class="ltx_text" id="A2.T3.4.1.4.3.3.1" style="font-size:90%;">1.2 Billion</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.4.3.4"><span class="ltx_text" id="A2.T3.4.1.4.3.4.1" style="font-size:90%;">Human-created</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.4.3.5"><span class="ltx_text" id="A2.T3.4.1.4.3.5.1" style="font-size:90%;">Model-predicted</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.4.3.6"><span class="ltx_text" id="A2.T3.4.1.4.3.6.1" style="font-size:90%;">1-10 score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.5.4.1">
<span class="ltx_text" id="A2.T3.4.1.5.4.1.1" style="font-size:90%;">Pick-a-Pic </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.5.4.1.2.1" style="font-size:70%;">(</span>Kirstain et al.<span class="ltx_text" id="A2.T3.4.1.5.4.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib34" title="">2023</a><span class="ltx_text" id="A2.T3.4.1.5.4.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.5.4.2"><span class="ltx_text" id="A2.T3.4.1.5.4.2.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.5.4.3"><span class="ltx_text" id="A2.T3.4.1.5.4.3.1" style="font-size:90%;">&gt;1 Million</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.5.4.4"><span class="ltx_text" id="A2.T3.4.1.5.4.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.5.4.5"><span class="ltx_text" id="A2.T3.4.1.5.4.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.5.4.6"><span class="ltx_text" id="A2.T3.4.1.5.4.6.1" style="font-size:90%;">Paired binary</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.6.5.1">
<span class="ltx_text" id="A2.T3.4.1.6.5.1.1" style="font-size:90%;">RichHF-18K </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.6.5.1.2.1" style="font-size:70%;">(</span>Liang et al.<span class="ltx_text" id="A2.T3.4.1.6.5.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib38" title="">2024</a><span class="ltx_text" id="A2.T3.4.1.6.5.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.6.5.2"><span class="ltx_text" id="A2.T3.4.1.6.5.2.1" style="font-size:90%;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.6.5.3"><span class="ltx_text" id="A2.T3.4.1.6.5.3.1" style="font-size:90%;">18,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.6.5.4"><span class="ltx_text" id="A2.T3.4.1.6.5.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.6.5.5"><span class="ltx_text" id="A2.T3.4.1.6.5.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.6.5.6"><span class="ltx_text" id="A2.T3.4.1.6.5.6.1" style="font-size:90%;">1-5 multi-facet</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.7.6.1">
<span class="ltx_text" id="A2.T3.4.1.7.6.1.1" style="font-size:90%;">BATON </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.7.6.1.2.1" style="font-size:70%;">(</span>Liao et al.<span class="ltx_text" id="A2.T3.4.1.7.6.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib39" title="">2024</a><span class="ltx_text" id="A2.T3.4.1.7.6.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.7.6.2"><span class="ltx_text" id="A2.T3.4.1.7.6.2.1" style="font-size:70%;">In-the-wild Audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.7.6.3"><span class="ltx_text" id="A2.T3.4.1.7.6.3.1" style="font-size:90%;">2,763</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.7.6.4"><span class="ltx_text" id="A2.T3.4.1.7.6.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.7.6.5"><span class="ltx_text" id="A2.T3.4.1.7.6.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.7.6.6"><span class="ltx_text" id="A2.T3.4.1.7.6.6.1" style="font-size:90%;">Paired binary</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.8.7.1">
<span class="ltx_text" id="A2.T3.4.1.8.7.1.1" style="font-size:90%;">Audio-Alpaca </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.8.7.1.2.1" style="font-size:70%;">(</span>Majumder et al.<span class="ltx_text" id="A2.T3.4.1.8.7.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib44" title="">2024</a><span class="ltx_text" id="A2.T3.4.1.8.7.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.8.7.2"><span class="ltx_text" id="A2.T3.4.1.8.7.2.1" style="font-size:70%;">In-the-wild Audio</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.8.7.3"><span class="ltx_text" id="A2.T3.4.1.8.7.3.1" style="font-size:90%;">15,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.8.7.4"><span class="ltx_text" id="A2.T3.4.1.8.7.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.8.7.5"><span class="ltx_text" id="A2.T3.4.1.8.7.5.1" style="font-size:90%;">Model-predicted</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.8.7.6"><span class="ltx_text" id="A2.T3.4.1.8.7.6.1" style="font-size:90%;">Paired binary</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.4.1.9.8.1" style="padding-bottom:0.42677pt;">
<span class="ltx_text" id="A2.T3.4.1.9.8.1.1" style="font-size:90%;">MusicRL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="A2.T3.4.1.9.8.1.2.1" style="font-size:70%;">(</span>Cideron et al.<span class="ltx_text" id="A2.T3.4.1.9.8.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.15217v1#bib.bib9" title="">2024</a><span class="ltx_text" id="A2.T3.4.1.9.8.1.4.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.9.8.2" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T3.4.1.9.8.2.1" style="font-size:90%;">Music</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.9.8.3" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T3.4.1.9.8.3.1" style="font-size:90%;">285,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.9.8.4" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T3.4.1.9.8.4.1" style="font-size:90%;">AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T3.4.1.9.8.5" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T3.4.1.9.8.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center" id="A2.T3.4.1.9.8.6" style="padding-bottom:0.42677pt;"><span class="ltx_text" id="A2.T3.4.1.9.8.6.1" style="font-size:90%;">Paired binary</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.4.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A2.T3.4.1.10.9.1"><span class="ltx_text" id="A2.T3.4.1.10.9.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T3.4.1.10.9.2"><span class="ltx_text" id="A2.T3.4.1.10.9.2.1" style="font-size:90%;">Music</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T3.4.1.10.9.3"><span class="ltx_text" id="A2.T3.4.1.10.9.3.1" style="font-size:90%;">1,676</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T3.4.1.10.9.4"><span class="ltx_text" id="A2.T3.4.1.10.9.4.1" style="font-size:80%;">Mostly AI-generated</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A2.T3.4.1.10.9.5"><span class="ltx_text" id="A2.T3.4.1.10.9.5.1" style="font-size:90%;">Human-rated</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T3.4.1.10.9.6"><span class="ltx_text" id="A2.T3.4.1.10.9.6.1" style="font-size:90%;">1-5 score</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the win rates of various DRAGON models across different reward functions.  The win rate indicates how often a DRAGON model outperforms a baseline model when optimizing for a specific reward.  The table focuses on instance-wise rewards (where each generated item is assessed individually) and instance-to-distribution rewards (where the model generates a set of samples, and the reward is given to the whole set).  Multiple metrics are evaluated in addition to the reward functions being optimized, providing a comprehensive picture of the model's performance improvement.
> <details>
> <summary>read the caption</summary>
> (a) Win rates of DRAGON models that optimize instance-wise or instance-to-distribution reward functions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T4.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T4.3.3.4"><span class="ltx_text" id="A2.T4.3.3.4.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T4.3.3.5"><span class="ltx_text" id="A2.T4.3.3.5.1" style="font-size:90%;">Measured WR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T4.1.1.1">
<math alttext="95\%" class="ltx_Math" display="inline" id="A2.T4.1.1.1.m1.1"><semantics id="A2.T4.1.1.1.m1.1a"><mrow id="A2.T4.1.1.1.m1.1.1" xref="A2.T4.1.1.1.m1.1.1.cmml"><mn id="A2.T4.1.1.1.m1.1.1.2" mathsize="90%" xref="A2.T4.1.1.1.m1.1.1.2.cmml">95</mn><mo id="A2.T4.1.1.1.m1.1.1.1" mathsize="90%" xref="A2.T4.1.1.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.m1.1b"><apply id="A2.T4.1.1.1.m1.1.1.cmml" xref="A2.T4.1.1.1.m1.1.1"><csymbol cd="latexml" id="A2.T4.1.1.1.m1.1.1.1.cmml" xref="A2.T4.1.1.1.m1.1.1.1">percent</csymbol><cn id="A2.T4.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T4.1.1.1.m1.1.1.2">95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.m1.1c">95\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.m1.1d">95 %</annotation></semantics></math><span class="ltx_text" id="A2.T4.1.1.1.1" style="font-size:90%;"> Conf WR Lower Bound</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A2.T4.2.2.2">
<math alttext="p" class="ltx_Math" display="inline" id="A2.T4.2.2.2.m1.1"><semantics id="A2.T4.2.2.2.m1.1a"><mi id="A2.T4.2.2.2.m1.1.1" mathsize="90%" xref="A2.T4.2.2.2.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.2.m1.1b"><ci id="A2.T4.2.2.2.m1.1.1.cmml" xref="A2.T4.2.2.2.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.2.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.2.m1.1d">italic_p</annotation></semantics></math><span class="ltx_text" id="A2.T4.2.2.2.1" style="font-size:90%;">-Value</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.3.3"><math alttext="{\mathbb{P}}(\text{WR}&gt;50\%)" class="ltx_Math" display="inline" id="A2.T4.3.3.3.m1.1"><semantics id="A2.T4.3.3.3.m1.1a"><mrow id="A2.T4.3.3.3.m1.1.1" xref="A2.T4.3.3.3.m1.1.1.cmml"><mi id="A2.T4.3.3.3.m1.1.1.3" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.3.cmml">ℙ</mi><mo id="A2.T4.3.3.3.m1.1.1.2" xref="A2.T4.3.3.3.m1.1.1.2.cmml">⁢</mo><mrow id="A2.T4.3.3.3.m1.1.1.1.1" xref="A2.T4.3.3.3.m1.1.1.1.1.1.cmml"><mo id="A2.T4.3.3.3.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="A2.T4.3.3.3.m1.1.1.1.1.1" xref="A2.T4.3.3.3.m1.1.1.1.1.1.cmml"><mtext id="A2.T4.3.3.3.m1.1.1.1.1.1.2" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.2a.cmml">WR</mtext><mo id="A2.T4.3.3.3.m1.1.1.1.1.1.1" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.1.cmml">&gt;</mo><mrow id="A2.T4.3.3.3.m1.1.1.1.1.1.3" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3.cmml"><mn id="A2.T4.3.3.3.m1.1.1.1.1.1.3.2" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3.2.cmml">50</mn><mo id="A2.T4.3.3.3.m1.1.1.1.1.1.3.1" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3.1.cmml">%</mo></mrow></mrow><mo id="A2.T4.3.3.3.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.3.m1.1b"><apply id="A2.T4.3.3.3.m1.1.1.cmml" xref="A2.T4.3.3.3.m1.1.1"><times id="A2.T4.3.3.3.m1.1.1.2.cmml" xref="A2.T4.3.3.3.m1.1.1.2"></times><ci id="A2.T4.3.3.3.m1.1.1.3.cmml" xref="A2.T4.3.3.3.m1.1.1.3">ℙ</ci><apply id="A2.T4.3.3.3.m1.1.1.1.1.1.cmml" xref="A2.T4.3.3.3.m1.1.1.1.1"><gt id="A2.T4.3.3.3.m1.1.1.1.1.1.1.cmml" xref="A2.T4.3.3.3.m1.1.1.1.1.1.1"></gt><ci id="A2.T4.3.3.3.m1.1.1.1.1.1.2a.cmml" xref="A2.T4.3.3.3.m1.1.1.1.1.1.2"><mtext id="A2.T4.3.3.3.m1.1.1.1.1.1.2.cmml" mathsize="90%" xref="A2.T4.3.3.3.m1.1.1.1.1.1.2">WR</mtext></ci><apply id="A2.T4.3.3.3.m1.1.1.1.1.1.3.cmml" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3"><csymbol cd="latexml" id="A2.T4.3.3.3.m1.1.1.1.1.1.3.1.cmml" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3.1">percent</csymbol><cn id="A2.T4.3.3.3.m1.1.1.1.1.1.3.2.cmml" type="integer" xref="A2.T4.3.3.3.m1.1.1.1.1.1.3.2">50</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.3.m1.1c">{\mathbb{P}}(\text{WR}&gt;50\%)</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.3.m1.1d">blackboard_P ( WR &gt; 50 % )</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.7.7.5"><span class="ltx_text" id="A2.T4.7.7.5.1" style="font-size:90%;">DRAGON-Aesthetics</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.4.4.1"><math alttext="60.24\%" class="ltx_Math" display="inline" id="A2.T4.4.4.1.m1.1"><semantics id="A2.T4.4.4.1.m1.1a"><mrow id="A2.T4.4.4.1.m1.1.1" xref="A2.T4.4.4.1.m1.1.1.cmml"><mn id="A2.T4.4.4.1.m1.1.1.2" mathsize="90%" xref="A2.T4.4.4.1.m1.1.1.2.cmml">60.24</mn><mo id="A2.T4.4.4.1.m1.1.1.1" mathsize="90%" xref="A2.T4.4.4.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.4.4.1.m1.1b"><apply id="A2.T4.4.4.1.m1.1.1.cmml" xref="A2.T4.4.4.1.m1.1.1"><csymbol cd="latexml" id="A2.T4.4.4.1.m1.1.1.1.cmml" xref="A2.T4.4.4.1.m1.1.1.1">percent</csymbol><cn id="A2.T4.4.4.1.m1.1.1.2.cmml" type="float" xref="A2.T4.4.4.1.m1.1.1.2">60.24</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.4.1.m1.1c">60.24\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.4.1.m1.1d">60.24 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.5.5.2"><math alttext="56.15\%" class="ltx_Math" display="inline" id="A2.T4.5.5.2.m1.1"><semantics id="A2.T4.5.5.2.m1.1a"><mrow id="A2.T4.5.5.2.m1.1.1" xref="A2.T4.5.5.2.m1.1.1.cmml"><mn id="A2.T4.5.5.2.m1.1.1.2" mathsize="90%" xref="A2.T4.5.5.2.m1.1.1.2.cmml">56.15</mn><mo id="A2.T4.5.5.2.m1.1.1.1" mathsize="90%" xref="A2.T4.5.5.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.5.5.2.m1.1b"><apply id="A2.T4.5.5.2.m1.1.1.cmml" xref="A2.T4.5.5.2.m1.1.1"><csymbol cd="latexml" id="A2.T4.5.5.2.m1.1.1.1.cmml" xref="A2.T4.5.5.2.m1.1.1.1">percent</csymbol><cn id="A2.T4.5.5.2.m1.1.1.2.cmml" type="float" xref="A2.T4.5.5.2.m1.1.1.2">56.15</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.5.5.2.m1.1c">56.15\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.5.5.2.m1.1d">56.15 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.6.6.3"><math alttext="1.58\times 10^{-5}" class="ltx_Math" display="inline" id="A2.T4.6.6.3.m1.1"><semantics id="A2.T4.6.6.3.m1.1a"><mrow id="A2.T4.6.6.3.m1.1.1" xref="A2.T4.6.6.3.m1.1.1.cmml"><mn id="A2.T4.6.6.3.m1.1.1.2" mathsize="90%" xref="A2.T4.6.6.3.m1.1.1.2.cmml">1.58</mn><mo id="A2.T4.6.6.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="A2.T4.6.6.3.m1.1.1.1.cmml">×</mo><msup id="A2.T4.6.6.3.m1.1.1.3" xref="A2.T4.6.6.3.m1.1.1.3.cmml"><mn id="A2.T4.6.6.3.m1.1.1.3.2" mathsize="90%" xref="A2.T4.6.6.3.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T4.6.6.3.m1.1.1.3.3" xref="A2.T4.6.6.3.m1.1.1.3.3.cmml"><mo id="A2.T4.6.6.3.m1.1.1.3.3a" mathsize="90%" xref="A2.T4.6.6.3.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.6.6.3.m1.1.1.3.3.2" mathsize="90%" xref="A2.T4.6.6.3.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.6.6.3.m1.1b"><apply id="A2.T4.6.6.3.m1.1.1.cmml" xref="A2.T4.6.6.3.m1.1.1"><times id="A2.T4.6.6.3.m1.1.1.1.cmml" xref="A2.T4.6.6.3.m1.1.1.1"></times><cn id="A2.T4.6.6.3.m1.1.1.2.cmml" type="float" xref="A2.T4.6.6.3.m1.1.1.2">1.58</cn><apply id="A2.T4.6.6.3.m1.1.1.3.cmml" xref="A2.T4.6.6.3.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.6.6.3.m1.1.1.3.1.cmml" xref="A2.T4.6.6.3.m1.1.1.3">superscript</csymbol><cn id="A2.T4.6.6.3.m1.1.1.3.2.cmml" type="integer" xref="A2.T4.6.6.3.m1.1.1.3.2">10</cn><apply id="A2.T4.6.6.3.m1.1.1.3.3.cmml" xref="A2.T4.6.6.3.m1.1.1.3.3"><minus id="A2.T4.6.6.3.m1.1.1.3.3.1.cmml" xref="A2.T4.6.6.3.m1.1.1.3.3"></minus><cn id="A2.T4.6.6.3.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.6.6.3.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.6.6.3.m1.1c">1.58\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.6.6.3.m1.1d">1.58 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.7.7.4"><math alttext="99.9987\%" class="ltx_Math" display="inline" id="A2.T4.7.7.4.m1.1"><semantics id="A2.T4.7.7.4.m1.1a"><mrow id="A2.T4.7.7.4.m1.1.1" xref="A2.T4.7.7.4.m1.1.1.cmml"><mn id="A2.T4.7.7.4.m1.1.1.2" mathsize="90%" xref="A2.T4.7.7.4.m1.1.1.2.cmml">99.9987</mn><mo id="A2.T4.7.7.4.m1.1.1.1" mathsize="90%" xref="A2.T4.7.7.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.7.7.4.m1.1b"><apply id="A2.T4.7.7.4.m1.1.1.cmml" xref="A2.T4.7.7.4.m1.1.1"><csymbol cd="latexml" id="A2.T4.7.7.4.m1.1.1.1.cmml" xref="A2.T4.7.7.4.m1.1.1.1">percent</csymbol><cn id="A2.T4.7.7.4.m1.1.1.2.cmml" type="float" xref="A2.T4.7.7.4.m1.1.1.2">99.9987</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.7.7.4.m1.1c">99.9987\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.7.7.4.m1.1d">99.9987 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T4.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T4.11.11.5"><span class="ltx_text" id="A2.T4.11.11.5.1" style="font-size:90%;">DRAGON-VAE-PSFAD-ALIM</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.8.8.1"><math alttext="60.95\%" class="ltx_Math" display="inline" id="A2.T4.8.8.1.m1.1"><semantics id="A2.T4.8.8.1.m1.1a"><mrow id="A2.T4.8.8.1.m1.1.1" xref="A2.T4.8.8.1.m1.1.1.cmml"><mn id="A2.T4.8.8.1.m1.1.1.2" mathsize="90%" xref="A2.T4.8.8.1.m1.1.1.2.cmml">60.95</mn><mo id="A2.T4.8.8.1.m1.1.1.1" mathsize="90%" xref="A2.T4.8.8.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.8.8.1.m1.1b"><apply id="A2.T4.8.8.1.m1.1.1.cmml" xref="A2.T4.8.8.1.m1.1.1"><csymbol cd="latexml" id="A2.T4.8.8.1.m1.1.1.1.cmml" xref="A2.T4.8.8.1.m1.1.1.1">percent</csymbol><cn id="A2.T4.8.8.1.m1.1.1.2.cmml" type="float" xref="A2.T4.8.8.1.m1.1.1.2">60.95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.8.8.1.m1.1c">60.95\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.8.8.1.m1.1d">60.95 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.9.9.2"><math alttext="56.87\%" class="ltx_Math" display="inline" id="A2.T4.9.9.2.m1.1"><semantics id="A2.T4.9.9.2.m1.1a"><mrow id="A2.T4.9.9.2.m1.1.1" xref="A2.T4.9.9.2.m1.1.1.cmml"><mn id="A2.T4.9.9.2.m1.1.1.2" mathsize="90%" xref="A2.T4.9.9.2.m1.1.1.2.cmml">56.87</mn><mo id="A2.T4.9.9.2.m1.1.1.1" mathsize="90%" xref="A2.T4.9.9.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.9.9.2.m1.1b"><apply id="A2.T4.9.9.2.m1.1.1.cmml" xref="A2.T4.9.9.2.m1.1.1"><csymbol cd="latexml" id="A2.T4.9.9.2.m1.1.1.1.cmml" xref="A2.T4.9.9.2.m1.1.1.1">percent</csymbol><cn id="A2.T4.9.9.2.m1.1.1.2.cmml" type="float" xref="A2.T4.9.9.2.m1.1.1.2">56.87</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.9.9.2.m1.1c">56.87\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.9.9.2.m1.1d">56.87 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.10.10.3"><math alttext="4.15\times 10^{-6}" class="ltx_Math" display="inline" id="A2.T4.10.10.3.m1.1"><semantics id="A2.T4.10.10.3.m1.1a"><mrow id="A2.T4.10.10.3.m1.1.1" xref="A2.T4.10.10.3.m1.1.1.cmml"><mn id="A2.T4.10.10.3.m1.1.1.2" mathsize="90%" xref="A2.T4.10.10.3.m1.1.1.2.cmml">4.15</mn><mo id="A2.T4.10.10.3.m1.1.1.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="A2.T4.10.10.3.m1.1.1.1.cmml">×</mo><msup id="A2.T4.10.10.3.m1.1.1.3" xref="A2.T4.10.10.3.m1.1.1.3.cmml"><mn id="A2.T4.10.10.3.m1.1.1.3.2" mathsize="90%" xref="A2.T4.10.10.3.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T4.10.10.3.m1.1.1.3.3" xref="A2.T4.10.10.3.m1.1.1.3.3.cmml"><mo id="A2.T4.10.10.3.m1.1.1.3.3a" mathsize="90%" xref="A2.T4.10.10.3.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.10.10.3.m1.1.1.3.3.2" mathsize="90%" xref="A2.T4.10.10.3.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.10.10.3.m1.1b"><apply id="A2.T4.10.10.3.m1.1.1.cmml" xref="A2.T4.10.10.3.m1.1.1"><times id="A2.T4.10.10.3.m1.1.1.1.cmml" xref="A2.T4.10.10.3.m1.1.1.1"></times><cn id="A2.T4.10.10.3.m1.1.1.2.cmml" type="float" xref="A2.T4.10.10.3.m1.1.1.2">4.15</cn><apply id="A2.T4.10.10.3.m1.1.1.3.cmml" xref="A2.T4.10.10.3.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.10.10.3.m1.1.1.3.1.cmml" xref="A2.T4.10.10.3.m1.1.1.3">superscript</csymbol><cn id="A2.T4.10.10.3.m1.1.1.3.2.cmml" type="integer" xref="A2.T4.10.10.3.m1.1.1.3.2">10</cn><apply id="A2.T4.10.10.3.m1.1.1.3.3.cmml" xref="A2.T4.10.10.3.m1.1.1.3.3"><minus id="A2.T4.10.10.3.m1.1.1.3.3.1.cmml" xref="A2.T4.10.10.3.m1.1.1.3.3"></minus><cn id="A2.T4.10.10.3.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.10.10.3.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.10.10.3.m1.1c">4.15\times 10^{-6}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.10.10.3.m1.1d">4.15 × 10 start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.11.11.4"><math alttext="99.9997\%" class="ltx_Math" display="inline" id="A2.T4.11.11.4.m1.1"><semantics id="A2.T4.11.11.4.m1.1a"><mrow id="A2.T4.11.11.4.m1.1.1" xref="A2.T4.11.11.4.m1.1.1.cmml"><mn id="A2.T4.11.11.4.m1.1.1.2" mathsize="90%" xref="A2.T4.11.11.4.m1.1.1.2.cmml">99.9997</mn><mo id="A2.T4.11.11.4.m1.1.1.1" mathsize="90%" xref="A2.T4.11.11.4.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.11.11.4.m1.1b"><apply id="A2.T4.11.11.4.m1.1.1.cmml" xref="A2.T4.11.11.4.m1.1.1"><csymbol cd="latexml" id="A2.T4.11.11.4.m1.1.1.1.cmml" xref="A2.T4.11.11.4.m1.1.1.1">percent</csymbol><cn id="A2.T4.11.11.4.m1.1.1.2.cmml" type="float" xref="A2.T4.11.11.4.m1.1.1.2">99.9997</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.11.11.4.m1.1c">99.9997\%</annotation><annotation encoding="application/x-llamapun" id="A2.T4.11.11.4.m1.1d">99.9997 %</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the win rates of various DRAGON models when optimizing reward functions that evaluate distributions rather than individual instances.  The reward functions considered are distributional in nature, meaning they assess the overall quality or properties of a set of generated outputs, not individual outputs in isolation. The table shows the performance improvement achieved by DRAGON across several metrics (Aesthetics Score, CLAP Score, FAD, and Vendi Diversity),  for different types of reward functions and reference datasets, demonstrating DRAGON's effectiveness in optimizing for distributional properties of generated content.
> <details>
> <summary>read the caption</summary>
> (b) Win rates of DRAGON models that optimize reward functions like rdistsubscript𝑟distr_{\textrm{dist}}italic_r start_POSTSUBSCRIPT dist end_POSTSUBSCRIPT that evaluate distributions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A3.T5.6.7.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.6.7.1.1.1" style="font-size:90%;">Generation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T5.6.7.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.6.7.1.2.1" style="font-size:90%;">Per-Song</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.7.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.6.7.1.3.1" style="font-size:90%;">Dataset</span></th>
</tr>
<tr class="ltx_tr" id="A3.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r" id="A3.T5.2.2.3"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.3.1" style="font-size:90%;">Distribution</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A3.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1" style="font-size:90%;">FAD (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T5.1.1.1.1.m1.1"><semantics id="A3.T5.1.1.1.1.m1.1a"><mo id="A3.T5.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T5.1.1.1.1.m1.1b"><ci id="A3.T5.1.1.1.1.m1.1.1.cmml" xref="A3.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T5.2.2.2"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.1" style="font-size:90%;">FAD (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T5.2.2.2.1.m1.1"><semantics id="A3.T5.2.2.2.1.m1.1a"><mo id="A3.T5.2.2.2.1.m1.1.1" stretchy="false" xref="A3.T5.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T5.2.2.2.1.m1.1b"><ci id="A3.T5.2.2.2.1.m1.1.1.cmml" xref="A3.T5.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T5.2.2.2.1.m1.1d">↓</annotation></semantics></math>)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T5.3.3.1"><math alttext="{\mathcal{D}}_{\textrm{ref}}" class="ltx_Math" display="inline" id="A3.T5.3.3.1.m1.1"><semantics id="A3.T5.3.3.1.m1.1a"><msub id="A3.T5.3.3.1.m1.1.1" xref="A3.T5.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T5.3.3.1.m1.1.1.2" mathsize="90%" xref="A3.T5.3.3.1.m1.1.1.2.cmml">𝒟</mi><mtext id="A3.T5.3.3.1.m1.1.1.3" mathsize="90%" xref="A3.T5.3.3.1.m1.1.1.3a.cmml">ref</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.3.3.1.m1.1b"><apply id="A3.T5.3.3.1.m1.1.1.cmml" xref="A3.T5.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T5.3.3.1.m1.1.1.1.cmml" xref="A3.T5.3.3.1.m1.1.1">subscript</csymbol><ci id="A3.T5.3.3.1.m1.1.1.2.cmml" xref="A3.T5.3.3.1.m1.1.1.2">𝒟</ci><ci id="A3.T5.3.3.1.m1.1.1.3a.cmml" xref="A3.T5.3.3.1.m1.1.1.3"><mtext id="A3.T5.3.3.1.m1.1.1.3.cmml" mathsize="63%" xref="A3.T5.3.3.1.m1.1.1.3">ref</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.3.3.1.m1.1c">{\mathcal{D}}_{\textrm{ref}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.3.3.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T5.3.3.2"><span class="ltx_text" id="A3.T5.3.3.2.1" style="font-size:90%;">.947</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3"><span class="ltx_text" id="A3.T5.3.3.3.1" style="font-size:90%;">.106</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T5.4.4.1"><math alttext="{\mathcal{D}}_{\textrm{DRAGON-Aes}}" class="ltx_Math" display="inline" id="A3.T5.4.4.1.m1.1"><semantics id="A3.T5.4.4.1.m1.1a"><msub id="A3.T5.4.4.1.m1.1.1" xref="A3.T5.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T5.4.4.1.m1.1.1.2" mathsize="90%" xref="A3.T5.4.4.1.m1.1.1.2.cmml">𝒟</mi><mtext id="A3.T5.4.4.1.m1.1.1.3" mathsize="90%" xref="A3.T5.4.4.1.m1.1.1.3a.cmml">DRAGON-Aes</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.4.4.1.m1.1b"><apply id="A3.T5.4.4.1.m1.1.1.cmml" xref="A3.T5.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T5.4.4.1.m1.1.1.1.cmml" xref="A3.T5.4.4.1.m1.1.1">subscript</csymbol><ci id="A3.T5.4.4.1.m1.1.1.2.cmml" xref="A3.T5.4.4.1.m1.1.1.2">𝒟</ci><ci id="A3.T5.4.4.1.m1.1.1.3a.cmml" xref="A3.T5.4.4.1.m1.1.1.3"><mtext id="A3.T5.4.4.1.m1.1.1.3.cmml" mathsize="63%" xref="A3.T5.4.4.1.m1.1.1.3">DRAGON-Aes</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.4.4.1.m1.1c">{\mathcal{D}}_{\textrm{DRAGON-Aes}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.4.4.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT DRAGON-Aes end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T5.4.4.2"><span class="ltx_text" id="A3.T5.4.4.2.1" style="font-size:90%;">.920</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.3"><span class="ltx_text" id="A3.T5.4.4.3.1" style="font-size:90%;">.116</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A3.T5.5.5.1"><math alttext="{\mathcal{D}}_{+\textrm{persong}}" class="ltx_Math" display="inline" id="A3.T5.5.5.1.m1.1"><semantics id="A3.T5.5.5.1.m1.1a"><msub id="A3.T5.5.5.1.m1.1.1" xref="A3.T5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T5.5.5.1.m1.1.1.2" mathsize="90%" xref="A3.T5.5.5.1.m1.1.1.2.cmml">𝒟</mi><mrow id="A3.T5.5.5.1.m1.1.1.3" xref="A3.T5.5.5.1.m1.1.1.3.cmml"><mo id="A3.T5.5.5.1.m1.1.1.3a" mathsize="90%" xref="A3.T5.5.5.1.m1.1.1.3.cmml">+</mo><mtext id="A3.T5.5.5.1.m1.1.1.3.2" mathsize="90%" xref="A3.T5.5.5.1.m1.1.1.3.2a.cmml">persong</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T5.5.5.1.m1.1b"><apply id="A3.T5.5.5.1.m1.1.1.cmml" xref="A3.T5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T5.5.5.1.m1.1.1.1.cmml" xref="A3.T5.5.5.1.m1.1.1">subscript</csymbol><ci id="A3.T5.5.5.1.m1.1.1.2.cmml" xref="A3.T5.5.5.1.m1.1.1.2">𝒟</ci><apply id="A3.T5.5.5.1.m1.1.1.3.cmml" xref="A3.T5.5.5.1.m1.1.1.3"><plus id="A3.T5.5.5.1.m1.1.1.3.1.cmml" xref="A3.T5.5.5.1.m1.1.1.3"></plus><ci id="A3.T5.5.5.1.m1.1.1.3.2a.cmml" xref="A3.T5.5.5.1.m1.1.1.3.2"><mtext id="A3.T5.5.5.1.m1.1.1.3.2.cmml" mathsize="63%" xref="A3.T5.5.5.1.m1.1.1.3.2">persong</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.5.5.1.m1.1c">{\mathcal{D}}_{+\textrm{persong}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.5.5.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT + persong end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T5.5.5.2"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.2.1" style="font-size:90%;">.858</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.3"><span class="ltx_text" id="A3.T5.5.5.3.1" style="font-size:90%;">.092</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T5.6.6.1"><math alttext="{\mathcal{D}}_{+\textrm{dataset}}" class="ltx_Math" display="inline" id="A3.T5.6.6.1.m1.1"><semantics id="A3.T5.6.6.1.m1.1a"><msub id="A3.T5.6.6.1.m1.1.1" xref="A3.T5.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A3.T5.6.6.1.m1.1.1.2" mathsize="90%" xref="A3.T5.6.6.1.m1.1.1.2.cmml">𝒟</mi><mrow id="A3.T5.6.6.1.m1.1.1.3" xref="A3.T5.6.6.1.m1.1.1.3.cmml"><mo id="A3.T5.6.6.1.m1.1.1.3a" mathsize="90%" xref="A3.T5.6.6.1.m1.1.1.3.cmml">+</mo><mtext id="A3.T5.6.6.1.m1.1.1.3.2" mathsize="90%" xref="A3.T5.6.6.1.m1.1.1.3.2a.cmml">dataset</mtext></mrow></msub><annotation-xml encoding="MathML-Content" id="A3.T5.6.6.1.m1.1b"><apply id="A3.T5.6.6.1.m1.1.1.cmml" xref="A3.T5.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T5.6.6.1.m1.1.1.1.cmml" xref="A3.T5.6.6.1.m1.1.1">subscript</csymbol><ci id="A3.T5.6.6.1.m1.1.1.2.cmml" xref="A3.T5.6.6.1.m1.1.1.2">𝒟</ci><apply id="A3.T5.6.6.1.m1.1.1.3.cmml" xref="A3.T5.6.6.1.m1.1.1.3"><plus id="A3.T5.6.6.1.m1.1.1.3.1.cmml" xref="A3.T5.6.6.1.m1.1.1.3"></plus><ci id="A3.T5.6.6.1.m1.1.1.3.2a.cmml" xref="A3.T5.6.6.1.m1.1.1.3.2"><mtext id="A3.T5.6.6.1.m1.1.1.3.2.cmml" mathsize="63%" xref="A3.T5.6.6.1.m1.1.1.3.2">dataset</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.6.6.1.m1.1c">{\mathcal{D}}_{+\textrm{dataset}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.6.6.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT + dataset end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T5.6.6.2"><span class="ltx_text" id="A3.T5.6.6.2.1" style="font-size:90%;">.903</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.3"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.3.1" style="font-size:90%;">.074</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the Dynamo Music Aesthetics (DMA) dataset used in the paper. It breaks down the dataset's sources, including user prompts, reused prompts, and captions from the Adobe Licensed Instrumental Music (ALIM) dataset.  For each source, the number of occurrences and the average rating are provided. The average rating is calculated on a scale of 1 to 5, where 1 is the lowest and 5 is the highest, indicating the human-perceived quality of the music generated from each source type.
> <details>
> <summary>read the caption</summary>
> Table 2: The DMA dataset’s data sources, occurrences, and mean ratings of each source.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15217/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15217/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}