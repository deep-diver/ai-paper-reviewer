---
title: "Rethinking RL Scaling for Vision Language Models: A Transparent, From-Scratch Framework and Comprehensive Evaluation Scheme"
summary: "A transparent RL framework (MAYE) for vision language models with a standardized evaluation scheme, promoting reproducibility and deeper insights."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Jiao Tong University (SJTU)",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02587 {{< /keyword >}}
{{< keyword icon="writer" >}} Yan Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02587" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02587" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02587/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reinforcement Learning shows promise in improving Vision Language Models. However, existing RL applications in VLMs often face issues with reproducibility due to heavily engineered frameworks and lack standardized evaluation protocols. This makes comparing results and understanding training dynamics difficult, creating a gap for researchers not deeply familiar with both RL and VLMs. 



To address these challenges, this paper introduces MAYE, a transparent framework for RL in VLMs with a minimal pipeline validated across models/datasets. It enables better comprehension and customization. A standardized evaluation scheme assesses training dynamics and reflective behaviors. Experiments reveal insights: response length is sensitive to seeds, reflection correlates with length, and RL generalizes better than SFT.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MAYE framework provides a transparent, from-scratch implementation of RL for VLMs, enhancing reproducibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study uncovers key empirical findings, including the sensitivity of response length to random seeds and the correlation between reflection and output length. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RL consistently outperforms supervised fine-tuning in generalization, even with high-quality data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **addresses the critical need for reproducibility** in vision-language RL research. By providing a transparent framework and evaluation scheme, it enables **more robust and comparable studies**. It facilitates **broader engagement** and potentially leading to faster progress in this rapidly evolving field.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02587/x1.png)

> 🔼 Figure 1 presents two example tasks to illustrate the difference between text-dominant and vision-dominant visual reasoning problems.  The text-dominant example shows a geometry problem where the majority of the necessary information is provided in the text, and the image serves as supplementary visual aid.  The vision-dominant example, in contrast, presents a visual mathematical problem where the solution primarily depends on extracting key information directly from the image, with the text providing minimal contextual support or instructions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Text-dominant tasks rely on text with visual support; vision-dominant tasks rely on visuals with textual support.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.5.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.1">Dataset Name</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.2">Training Set Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.3">Validation Set Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.4">Test Set Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.5">Task</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S2.T1.5.3.4.1.6">Data Source</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.4.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.3">mm_math5k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.4">5000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.5">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.3.1.1.1"> 100<sup class="ltx_sup" id="S2.T1.3.1.1.1.1"><math alttext="\dagger" class="ltx_Math" display="inline" id="S2.T1.3.1.1.1.1.m1.1"><semantics id="S2.T1.3.1.1.1.1.m1.1a"><mo id="S2.T1.3.1.1.1.1.m1.1.1" xref="S2.T1.3.1.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.1.1.1.1.m1.1b"><ci id="S2.T1.3.1.1.1.1.m1.1.1.cmml" xref="S2.T1.3.1.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.1.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.1.1.1.1.m1.1d">†</annotation></semantics></math></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.2.2.6">Text-dominant</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.4.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.4.2.2.2.1">
<span class="ltx_p" id="S2.T1.4.2.2.2.1.1" style="width:113.8pt;"><span class="ltx_text" id="S2.T1.4.2.2.2.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.T1.4.2.2.2.1.1.1.g1" src="extracted/6321957/figures/hf.png" width="17"/></span>THU-KEG/MM_Math</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.3.3.2">geometry3k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.3.3.3">2101</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.3.3.4">300</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.3.3.5">601</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.5.3.3.6">Vision-dominant</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S2.T1.5.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.5.3.3.1.1">
<span class="ltx_p" id="S2.T1.5.3.3.1.1.1" style="width:113.8pt;"><span class="ltx_text" id="S2.T1.5.3.3.1.1.1.1" style="position:relative; bottom:-0.2pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="17" id="S2.T1.5.3.3.1.1.1.1.g1" src="extracted/6321957/figures/hf.png" width="17"/></span>hiyouga/geometry3k</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents statistics for the datasets used in the paper's experiments on visual mathematical reasoning.  It shows the number of training, validation, and test samples for two datasets: mm_math5k (text-dominant) and geometry3k (vision-dominant).  The 'Data Source' column indicates the origin of each dataset.  The '+' symbol next to the test set size for geometry3k means that some of the test samples originate from the MathVerse benchmark. This information is crucial for understanding the scale and nature of the data used to train and evaluate the reinforcement learning (RL) models in the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset Statistics, † means that samples are from the MathVerse benchmark.
> </details>





### In-depth insights


#### RL for VLMs
RL for VLMs presents a compelling frontier, leveraging RL to refine VLM reasoning. **Challenges exist** in balancing exploration, exploitation, and credit assignment within complex VLMs. Addressing issues like reward sparsity and defining suitable action spaces are key. Furthermore, **robust evaluation** is crucial due to RL's inherent instability, necessitating standardized metrics. Overcoming these hurdles can unlock VLMs with improved reasoning and generalization abilities.

#### RL Framework
The paper introduces a transparent, from-scratch RL framework (MAYE) for Vision Language Models (VLMs), addressing limitations in existing RL applications that often rely on heavily engineered frameworks, hindering reproducibility and accessibility. MAYE offers a minimal yet functional four-step pipeline: **data flow, response collection, trajectory generation, and policy update**, validated across multiple models and datasets. This aims to provide a reproducible baseline and support broader engagement in RL-based VLM research. The framework is built using standard libraries like Transformers, FSDP2 for distributed training, and vLLM for inference, ensuring transparency and easy customization. The core of the models is based on Qwen2/2.5-VL-Instruct. The framework is carefully designed by freezing the ViT encoder and connector and solely train the LLM backend due to a balance of computational efficiency and training effectiveness.

#### Eval Dynamics
Analyzing evaluation dynamics in RL for VLMs involves tracking how performance evolves during training. Key metrics could include **accuracy curves, response length, and reflective behavior ratios**. Accuracy curves would show the model's learning progress, while response length might indicate its reasoning depth. Reflective behavior, captured through word counts or ratios, could reveal self-correction abilities. **Monitoring these metrics provides insight into the stability and generalization capabilities of the trained VLM**. A comprehensive evaluation scheme should consider sensitivity to random seeds and initialization, as well as compare against supervised fine-tuning.

#### Length & Reflex
**Response length** in RL-finetuned VLMs may indicate reasoning depth, with longer responses suggesting more elaborate thought processes. **Reflexive behaviors**, indicated by specific word choices, could correlate with response length, potentially showing a link between self-correction and detailed outputs.  Evaluating these metrics can offer valuable insight into the model's learning dynamics. Monitoring length and reflection, alongside accuracy, could lead to a more nuanced understanding of RL's impact on reasoning and generalization.

#### Beyond SFT?
The question of whether Reinforcement Learning (RL) offers advantages "beyond SFT?" (Supervised Fine-Tuning) is crucial. While SFT provides a strong baseline, RL introduces dynamic interaction and reward optimization. **RL can excel where labeled data is scarce**, by learning from trial and error. **RL can also tackle complex reasoning tasks** more effectively by receiving feedback on the quality of each step, not only on the final outcome. Furthermore, it promotes generalization and better exploration of possible solutions. However, **SFT's data efficiency and stability** still represent significant strengths. **The right choice depends on the task and available resources.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02587/x2.png)

> 🔼 The MAYE framework is a four-step process for reinforcement learning (RL) in vision-language models (VLMs).  Step 1 involves data preprocessing: text and vision data are processed and converted into model-compatible inputs. Step 2 focuses on response collection: the model generates responses to the input queries, which are then collected and processed. Step 3 describes trajectory generation: this involves computing log probabilities for both policy and reference models, generating rewards, and assembling them into a trajectory for further use in the RL training process.  Finally, Step 4 is for policy updates: based on the collected trajectories, the policy model's parameters are updated to improve performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Maye framework. The process is divided into four steps. Each step integrates various components, including text and vision data, policy models, and reward signals.
> </details>



![](https://arxiv.org/html/2504.02587/extracted/6321957/figures/eval_scheme.png)

> 🔼 This figure provides a visual overview of the evaluation metrics used in the paper to assess the performance of reinforcement learning (RL) in vision-language models (VLMs).  It's broken down into three categories: Training Set Metrics, Validation & Test Set Metrics, and Reflection Metrics.  The Training Set Metrics focus on tracking the training dynamics, including accuracy curves and response lengths.  Validation & Test Set Metrics measure the model's performance on unseen data using various settings (pass@8, pass@1 with different temperatures and top_p values). Finally, Reflection Metrics assess the reflective reasoning capabilities of the model, using metrics like reflection ratios and the frequency of specific reflective words in the model's responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of evaluation metrics.
> </details>



![](https://arxiv.org/html/2504.02587/x3.png)

> 🔼 This figure presents training set metrics for the Qwen2-VL-Instruct-7B model trained on the mm_math5k dataset.  It shows multiple metrics including training accuracy, reflection ratio, response length, and counts of specific reflection words ('verify' and 'recheck' in this case). The curves illustrate the training dynamics over epochs and generation steps. Shaded areas represent standard deviation across three independent runs.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x4.png)

> 🔼 This figure presents training set metrics for the Qwen2.5-VL-Instruct-7B model trained on the mm_math5k dataset.  It shows training accuracy, response length, and reflection ratios (reflection_ratio, correct_ratio_in_reflection_texts,  frequency of specific reflection words).  The plot illustrates how these metrics evolve during the training process and how they relate to each other.  Shaded regions indicate standard deviation across three runs. 
> <details>
> <summary>read the caption</summary>
> (b) Qwen2.5-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x5.png)

> 🔼 This figure (Figure 4c) presents training set metrics for the Qwen2-VL-Instruct-7B model, trained on the geometry3k dataset.  It shows training accuracy, reflection ratio, response length, and usage frequency of specific reflection words ('verify' and 're-evaluate'). The plot illustrates the dynamics of these metrics over training epochs (x-axis) and generation steps (x-axis), enabling analysis of the model's learning process and reflective behavior during RL training.
> <details>
> <summary>read the caption</summary>
> (c) Qwen2-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x6.png)

> 🔼 This figure (Figure 4d) presents the training set metrics for the Qwen2.5-VL-Instruct-7B model trained on the geometry3k dataset.  It shows training accuracy, response length, and the reflection ratios (reflection_ratio, correct_ratio_in_reflection_texts, and frequencies of specific reflection words) over the course of training. The shaded regions represent standard deviation across three independent runs.
> <details>
> <summary>read the caption</summary>
> (d) Qwen2.5-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x7.png)

> 🔼 Figure 4 presents a detailed analysis of training dynamics across four different experimental setups involving two distinct vision-language models (Qwen2-VL-Instruct-7B and Qwen2.5-VL-Instruct-7B) and two datasets (mm_math5k and geometry3k).  The figure displays multiple key metrics plotted against the training epoch. Red curves illustrate two core metrics: training accuracy and response length.  Training accuracy reflects the model's correctness on the training dataset over each epoch, while response length tracks the average length of the model's responses.  Blue curves represent key reflection ratios (detailed in Section 4 of the paper), which show the model's tendency towards reflective behavior. Green curves show the usage frequency of the two most frequent and dynamically changing reflection words in each experiment.  Shaded areas around the curves indicate the standard deviation calculated from three independent runs of each experiment, providing a measure of the variability in the results.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training set metrics across models and datasets. Red curves show training accuracy (per epoch) and response length (per generation step). Blue curves depict key reflection ratios from Sec. 4, and green curves illustrate the usage trends of the two most frequent and dynamic reflection words per experiment. Shaded regions represent standard deviation across three runs.
> </details>



![](https://arxiv.org/html/2504.02587/x8.png)

> 🔼 Training set metrics for the Qwen2-VL-Instruct-7B model on the mm_math5k dataset. The figure shows training accuracy, response length, and reflection ratios over training epochs and generation steps, providing insights into training dynamics and model behavior.  Specific reflection word trends are also highlighted.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x9.png)

> 🔼 Training set metrics for the Qwen2.5-VL-Instruct-7B model trained on the mm_math5k dataset.  The figure displays the training accuracy, response length, reflection ratio, and usage frequency of two highly dynamic reflection words ('verify' and 'recheck') across training epochs and generation steps. Shaded areas represent standard deviation across three runs. This visualization helps analyze the correlation between model performance, output length, and the occurrence of reflective behavior during the RL training process.
> <details>
> <summary>read the caption</summary>
> (b) Qwen2.5-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x10.png)

> 🔼 Training set metrics for the Qwen2.5-VL-Instruct-7B model on the geometry3k dataset. The figure shows training accuracy, response length, and reflection ratios (reflection ratio, reflection ratio in correct answers, correct ratio in reflection texts, reflection ratio in incorrect answers, correct ratio in no reflection texts) across training epochs or generation steps. The curves are shaded to represent standard deviation across three runs.  Green curves represent the frequency of the words “re-evaluate” and “verify”, selected based on frequency and variation. 
> <details>
> <summary>read the caption</summary>
> (c) Qwen2-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x11.png)

> 🔼 Training set metrics for the Qwen2.5-VL-Instruct-7B model on the geometry3k dataset.  The plot shows training accuracy, response length, and reflection ratios over training epochs.  Specifically, it displays the trends of training accuracy, response length, and several reflection ratio metrics (reflection ratio, correct ratio in reflection, ratio of reflection in correct answers, ratio of reflection in incorrect answers, and correct ratio in no reflection).  The shaded area represents the standard deviation across three independent runs.  It further details the usage trends of two specific reflection words (re-evaluate and verify), highlighting their role in the model's reflective reasoning process.
> <details>
> <summary>read the caption</summary>
> (d) Qwen2.5-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x12.png)

> 🔼 Figure 5 presents a detailed comparison of validation and test accuracies across multiple Vision-Language Models (VLMs) and datasets, trained using different methods.  The x-axis represents the training epochs, while the y-axis shows the accuracy.  Three lines are displayed for each model and dataset combination: a red line representing the performance after Reinforcement Learning (RL) training, a blue line showing Supervised Fine-Tuning (SFT) results, and a green line indicating the baseline performance of the untrained model (Vanilla).  Each line represents the average accuracy across three independent training runs, with shaded regions illustrating the standard deviation to show the variability in performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Validation and test accuracy curves across training epochs for different VLMs and datasets. Red lines denote RL, blue lines denote SFT (see Sec. 5.5), and green indicate untrained (Vanilla) performance. All curves are averaged over 3 runs, with shaded areas indicating standard deviation.
> </details>



![](https://arxiv.org/html/2504.02587/x13.png)

> 🔼 This figure displays training set metrics for the Qwen2-VL-Instruct-7B model trained on the mm_math5k dataset.  The plots illustrate the accuracy curve over epochs, the average response length across generation steps, and the reflection ratios (the proportion of responses containing certain reflective words) over generation steps. Shaded areas indicate standard deviation across three independent runs.  The figure provides key insights into the learning dynamics of the model, revealing relationships between accuracy, response length, and reflective behavior during the training process.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x14.png)

> 🔼 Training dynamics of the Qwen2.5-VL-Instruct-7B model on the mm_math5k dataset. The figure displays training accuracy, response length, and reflection ratios over training epochs and generation steps.  Shaded regions show standard deviation over three independent runs.  The dynamics of the two most frequent and dynamic reflection words, 'verify' and 'recheck,' are also plotted.
> <details>
> <summary>read the caption</summary>
> (b) Qwen2.5-VL-Instruct-7B@mm_math5k
> </details>



![](https://arxiv.org/html/2504.02587/x15.png)

> 🔼 Training set metrics for the Qwen2.5-VL-Instruct-7B model on the geometry3k dataset.  The figure shows training accuracy and response length over training epochs,  as well as key reflection ratios (reflection_ratio, correct_ratio_in_reflection_texts, etc.) and the frequency of specific reflection words (e.g., 're-evaluate', 'verify') during training. Shaded areas represent standard deviation across three independent runs.
> <details>
> <summary>read the caption</summary>
> (c) Qwen2-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x16.png)

> 🔼 This figure (Figure 4d in the paper) presents training set metrics for the Qwen2.5-VL-Instruct-7B model trained on the geometry3k dataset.  It displays four key metrics across training epochs: training accuracy, response length, reflection ratio, and the frequency of specific reflection words ('verify' and 're-evaluate'). The shaded areas represent standard deviation across three independent runs. This visualization allows for analysis of training dynamics and reveals correlations between response length, reflection, and accuracy.
> <details>
> <summary>read the caption</summary>
> (d) Qwen2.5-VL-Instruct-7B@geometry3k
> </details>



![](https://arxiv.org/html/2504.02587/x17.png)

> 🔼 This figure visualizes the dynamics of five reflection ratios throughout the RL training process across four different experimental settings.  Each setting combines a specific VLM model (Qwen2-VL-Instruct-7B or Qwen2.5-VL-Instruct-7B) with a particular dataset (mm_math5k or geometry3k). The ratios displayed—reflection ratio, reflection ratio in correct answers, reflection ratio in incorrect answers, correct ratio in reflection texts, and correct ratio in no reflection texts—quantify the prevalence and impact of reflective behaviors in the model's responses. The graphs show how these metrics evolve across generation steps, revealing the interplay between reflection and the accuracy of the model's reasoning ability.
> <details>
> <summary>read the caption</summary>
> Figure 6: Reflection Ratios
> </details>



![](https://arxiv.org/html/2504.02587/x18.png)

> 🔼 This figure displays training set metrics for the Qwen2-VL-Instruct-7B model trained on the mm_math5k dataset.  It presents four key metrics: training accuracy, reflection ratio, the count of two specific reflection words ('verify' and 'recheck'), and response length.  The plots show how these metrics change over the course of training epochs and generation steps, providing insights into the model's learning dynamics and behavior. Shaded regions represent standard deviations across three independent runs, illustrating the variability in training performance.
> <details>
> <summary>read the caption</summary>
> (a) Qwen2-VL-Instruct-7B@mm_math5k
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.5.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.1.1">Ratio Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.6.1.2.1">Formula</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1.2">reflection_ratio</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1"><math alttext="\frac{\mathcal{N}_{ref}}{\mathcal{N}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mfrac id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><msub id="S4.T2.1.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.1.1.1.1.m1.1.1.2.2" xref="S4.T2.1.1.1.1.m1.1.1.2.2.cmml">𝒩</mi><mrow id="S4.T2.1.1.1.1.m1.1.1.2.3" xref="S4.T2.1.1.1.1.m1.1.1.2.3.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.2.3.2" xref="S4.T2.1.1.1.1.m1.1.1.2.3.2.cmml">r</mi><mo id="S4.T2.1.1.1.1.m1.1.1.2.3.1" xref="S4.T2.1.1.1.1.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S4.T2.1.1.1.1.m1.1.1.2.3.3" xref="S4.T2.1.1.1.1.m1.1.1.2.3.3.cmml">e</mi><mo id="S4.T2.1.1.1.1.m1.1.1.2.3.1a" xref="S4.T2.1.1.1.1.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S4.T2.1.1.1.1.m1.1.1.2.3.4" xref="S4.T2.1.1.1.1.m1.1.1.2.3.4.cmml">f</mi></mrow></msub><mi class="ltx_font_mathcaligraphic" id="S4.T2.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.m1.1.1.3.cmml">𝒩</mi></mfrac><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><divide id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"></divide><apply id="S4.T2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.m1.1.1.2.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S4.T2.1.1.1.1.m1.1.1.2.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.2">𝒩</ci><apply id="S4.T2.1.1.1.1.m1.1.1.2.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.3"><times id="S4.T2.1.1.1.1.m1.1.1.2.3.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.3.1"></times><ci id="S4.T2.1.1.1.1.m1.1.1.2.3.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.3.2">𝑟</ci><ci id="S4.T2.1.1.1.1.m1.1.1.2.3.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.3.3">𝑒</ci><ci id="S4.T2.1.1.1.1.m1.1.1.2.3.4.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2.3.4">𝑓</ci></apply></apply><ci id="S4.T2.1.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3">𝒩</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\frac{\mathcal{N}_{ref}}{\mathcal{N}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">divide start_ARG caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f end_POSTSUBSCRIPT end_ARG start_ARG caligraphic_N end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.2.2.2.2">reflection_ratio_in_correct_answers</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.1"><math alttext="\frac{\mathcal{N}_{ref+}}{\mathcal{N}_{+}}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mfrac id="S4.T2.2.2.2.1.m1.1.1" xref="S4.T2.2.2.2.1.m1.1.1.cmml"><msub id="S4.T2.2.2.2.1.m1.1.1.2" xref="S4.T2.2.2.2.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.2.2.2.1.m1.1.1.2.2" xref="S4.T2.2.2.2.1.m1.1.1.2.2.cmml">𝒩</mi><mrow id="S4.T2.2.2.2.1.m1.1.1.2.3" xref="S4.T2.2.2.2.1.m1.1.1.2.3.cmml"><mrow id="S4.T2.2.2.2.1.m1.1.1.2.3.2" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.cmml"><mi id="S4.T2.2.2.2.1.m1.1.1.2.3.2.2" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.2.cmml">r</mi><mo id="S4.T2.2.2.2.1.m1.1.1.2.3.2.1" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.1.cmml">⁢</mo><mi id="S4.T2.2.2.2.1.m1.1.1.2.3.2.3" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.3.cmml">e</mi><mo id="S4.T2.2.2.2.1.m1.1.1.2.3.2.1a" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.1.cmml">⁢</mo><mi id="S4.T2.2.2.2.1.m1.1.1.2.3.2.4" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.4.cmml">f</mi></mrow><mo id="S4.T2.2.2.2.1.m1.1.1.2.3.3" xref="S4.T2.2.2.2.1.m1.1.1.2.3.3.cmml">+</mo></mrow></msub><msub id="S4.T2.2.2.2.1.m1.1.1.3" xref="S4.T2.2.2.2.1.m1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.2.2.2.1.m1.1.1.3.2" xref="S4.T2.2.2.2.1.m1.1.1.3.2.cmml">𝒩</mi><mo id="S4.T2.2.2.2.1.m1.1.1.3.3" xref="S4.T2.2.2.2.1.m1.1.1.3.3.cmml">+</mo></msub></mfrac><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><apply id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1"><divide id="S4.T2.2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1"></divide><apply id="S4.T2.2.2.2.1.m1.1.1.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.2.2.2.1.m1.1.1.2.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2">subscript</csymbol><ci id="S4.T2.2.2.2.1.m1.1.1.2.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.2">𝒩</ci><apply id="S4.T2.2.2.2.1.m1.1.1.2.3.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T2.2.2.2.1.m1.1.1.2.3.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3">limit-from</csymbol><apply id="S4.T2.2.2.2.1.m1.1.1.2.3.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2"><times id="S4.T2.2.2.2.1.m1.1.1.2.3.2.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.1"></times><ci id="S4.T2.2.2.2.1.m1.1.1.2.3.2.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.2">𝑟</ci><ci id="S4.T2.2.2.2.1.m1.1.1.2.3.2.3.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.3">𝑒</ci><ci id="S4.T2.2.2.2.1.m1.1.1.2.3.2.4.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.2.4">𝑓</ci></apply><plus id="S4.T2.2.2.2.1.m1.1.1.2.3.3.cmml" xref="S4.T2.2.2.2.1.m1.1.1.2.3.3"></plus></apply></apply><apply id="S4.T2.2.2.2.1.m1.1.1.3.cmml" xref="S4.T2.2.2.2.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.2.2.2.1.m1.1.1.3.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.2.2.2.1.m1.1.1.3.2.cmml" xref="S4.T2.2.2.2.1.m1.1.1.3.2">𝒩</ci><plus id="S4.T2.2.2.2.1.m1.1.1.3.3.cmml" xref="S4.T2.2.2.2.1.m1.1.1.3.3"></plus></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\frac{\mathcal{N}_{ref+}}{\mathcal{N}_{+}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">divide start_ARG caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f + end_POSTSUBSCRIPT end_ARG start_ARG caligraphic_N start_POSTSUBSCRIPT + end_POSTSUBSCRIPT end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.3.2">reflection_ratio_in_incorrect_answers</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.1"><math alttext="\frac{\mathcal{N}_{ref}-\mathcal{N}_{ref+}}{\mathcal{N}-\mathcal{N}_{+}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mfrac id="S4.T2.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.cmml"><mrow id="S4.T2.3.3.3.1.m1.1.1.2" xref="S4.T2.3.3.3.1.m1.1.1.2.cmml"><msub id="S4.T2.3.3.3.1.m1.1.1.2.2" xref="S4.T2.3.3.3.1.m1.1.1.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.2.2.2" xref="S4.T2.3.3.3.1.m1.1.1.2.2.2.cmml">𝒩</mi><mrow id="S4.T2.3.3.3.1.m1.1.1.2.2.3" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.cmml"><mi id="S4.T2.3.3.3.1.m1.1.1.2.2.3.2" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.2.cmml">r</mi><mo id="S4.T2.3.3.3.1.m1.1.1.2.2.3.1" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.1.cmml">⁢</mo><mi id="S4.T2.3.3.3.1.m1.1.1.2.2.3.3" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.3.cmml">e</mi><mo id="S4.T2.3.3.3.1.m1.1.1.2.2.3.1a" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.1.cmml">⁢</mo><mi id="S4.T2.3.3.3.1.m1.1.1.2.2.3.4" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.4.cmml">f</mi></mrow></msub><mo id="S4.T2.3.3.3.1.m1.1.1.2.1" xref="S4.T2.3.3.3.1.m1.1.1.2.1.cmml">−</mo><msub id="S4.T2.3.3.3.1.m1.1.1.2.3" xref="S4.T2.3.3.3.1.m1.1.1.2.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.2.3.2" xref="S4.T2.3.3.3.1.m1.1.1.2.3.2.cmml">𝒩</mi><mrow id="S4.T2.3.3.3.1.m1.1.1.2.3.3" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.cmml"><mrow id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.cmml"><mi id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.2" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.2.cmml">r</mi><mo id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.3" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.3.cmml">e</mi><mo id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1a" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.4" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.4.cmml">f</mi></mrow><mo id="S4.T2.3.3.3.1.m1.1.1.2.3.3.3" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.3.cmml">+</mo></mrow></msub></mrow><mrow id="S4.T2.3.3.3.1.m1.1.1.3" xref="S4.T2.3.3.3.1.m1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.3.2" xref="S4.T2.3.3.3.1.m1.1.1.3.2.cmml">𝒩</mi><mo id="S4.T2.3.3.3.1.m1.1.1.3.1" xref="S4.T2.3.3.3.1.m1.1.1.3.1.cmml">−</mo><msub id="S4.T2.3.3.3.1.m1.1.1.3.3" xref="S4.T2.3.3.3.1.m1.1.1.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.1.m1.1.1.3.3.2" xref="S4.T2.3.3.3.1.m1.1.1.3.3.2.cmml">𝒩</mi><mo id="S4.T2.3.3.3.1.m1.1.1.3.3.3" xref="S4.T2.3.3.3.1.m1.1.1.3.3.3.cmml">+</mo></msub></mrow></mfrac><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><apply id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1"><divide id="S4.T2.3.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1"></divide><apply id="S4.T2.3.3.3.1.m1.1.1.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2"><minus id="S4.T2.3.3.3.1.m1.1.1.2.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.1"></minus><apply id="S4.T2.3.3.3.1.m1.1.1.2.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2"><csymbol cd="ambiguous" id="S4.T2.3.3.3.1.m1.1.1.2.2.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2">subscript</csymbol><ci id="S4.T2.3.3.3.1.m1.1.1.2.2.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.2">𝒩</ci><apply id="S4.T2.3.3.3.1.m1.1.1.2.2.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3"><times id="S4.T2.3.3.3.1.m1.1.1.2.2.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.1"></times><ci id="S4.T2.3.3.3.1.m1.1.1.2.2.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.2">𝑟</ci><ci id="S4.T2.3.3.3.1.m1.1.1.2.2.3.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.3">𝑒</ci><ci id="S4.T2.3.3.3.1.m1.1.1.2.2.3.4.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.2.3.4">𝑓</ci></apply></apply><apply id="S4.T2.3.3.3.1.m1.1.1.2.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="S4.T2.3.3.3.1.m1.1.1.2.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3">subscript</csymbol><ci id="S4.T2.3.3.3.1.m1.1.1.2.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.2">𝒩</ci><apply id="S4.T2.3.3.3.1.m1.1.1.2.3.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3"><csymbol cd="latexml" id="S4.T2.3.3.3.1.m1.1.1.2.3.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3">limit-from</csymbol><apply id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2"><times id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.1"></times><ci id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.2">𝑟</ci><ci id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.3">𝑒</ci><ci id="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.4.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.2.4">𝑓</ci></apply><plus id="S4.T2.3.3.3.1.m1.1.1.2.3.3.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2.3.3.3"></plus></apply></apply></apply><apply id="S4.T2.3.3.3.1.m1.1.1.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3"><minus id="S4.T2.3.3.3.1.m1.1.1.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.1"></minus><ci id="S4.T2.3.3.3.1.m1.1.1.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.2">𝒩</ci><apply id="S4.T2.3.3.3.1.m1.1.1.3.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="S4.T2.3.3.3.1.m1.1.1.3.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.3">subscript</csymbol><ci id="S4.T2.3.3.3.1.m1.1.1.3.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.3.2">𝒩</ci><plus id="S4.T2.3.3.3.1.m1.1.1.3.3.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.3.3"></plus></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\frac{\mathcal{N}_{ref}-\mathcal{N}_{ref+}}{\mathcal{N}-\mathcal{N}_{+}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">divide start_ARG caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f end_POSTSUBSCRIPT - caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f + end_POSTSUBSCRIPT end_ARG start_ARG caligraphic_N - caligraphic_N start_POSTSUBSCRIPT + end_POSTSUBSCRIPT end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.4.2">correct_ratio_in_reflection_texts</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.1"><math alttext="\frac{\mathcal{N}_{ref+}}{\mathcal{N}_{ref}}" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mfrac id="S4.T2.4.4.4.1.m1.1.1" xref="S4.T2.4.4.4.1.m1.1.1.cmml"><msub id="S4.T2.4.4.4.1.m1.1.1.2" xref="S4.T2.4.4.4.1.m1.1.1.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.4.1.m1.1.1.2.2" xref="S4.T2.4.4.4.1.m1.1.1.2.2.cmml">𝒩</mi><mrow id="S4.T2.4.4.4.1.m1.1.1.2.3" xref="S4.T2.4.4.4.1.m1.1.1.2.3.cmml"><mrow id="S4.T2.4.4.4.1.m1.1.1.2.3.2" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.cmml"><mi id="S4.T2.4.4.4.1.m1.1.1.2.3.2.2" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.2.cmml">r</mi><mo id="S4.T2.4.4.4.1.m1.1.1.2.3.2.1" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.1.cmml">⁢</mo><mi id="S4.T2.4.4.4.1.m1.1.1.2.3.2.3" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.3.cmml">e</mi><mo id="S4.T2.4.4.4.1.m1.1.1.2.3.2.1a" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.1.cmml">⁢</mo><mi id="S4.T2.4.4.4.1.m1.1.1.2.3.2.4" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.4.cmml">f</mi></mrow><mo id="S4.T2.4.4.4.1.m1.1.1.2.3.3" xref="S4.T2.4.4.4.1.m1.1.1.2.3.3.cmml">+</mo></mrow></msub><msub id="S4.T2.4.4.4.1.m1.1.1.3" xref="S4.T2.4.4.4.1.m1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.4.1.m1.1.1.3.2" xref="S4.T2.4.4.4.1.m1.1.1.3.2.cmml">𝒩</mi><mrow id="S4.T2.4.4.4.1.m1.1.1.3.3" xref="S4.T2.4.4.4.1.m1.1.1.3.3.cmml"><mi id="S4.T2.4.4.4.1.m1.1.1.3.3.2" xref="S4.T2.4.4.4.1.m1.1.1.3.3.2.cmml">r</mi><mo id="S4.T2.4.4.4.1.m1.1.1.3.3.1" xref="S4.T2.4.4.4.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T2.4.4.4.1.m1.1.1.3.3.3" xref="S4.T2.4.4.4.1.m1.1.1.3.3.3.cmml">e</mi><mo id="S4.T2.4.4.4.1.m1.1.1.3.3.1a" xref="S4.T2.4.4.4.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T2.4.4.4.1.m1.1.1.3.3.4" xref="S4.T2.4.4.4.1.m1.1.1.3.3.4.cmml">f</mi></mrow></msub></mfrac><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><apply id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1"><divide id="S4.T2.4.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1"></divide><apply id="S4.T2.4.4.4.1.m1.1.1.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T2.4.4.4.1.m1.1.1.2.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2">subscript</csymbol><ci id="S4.T2.4.4.4.1.m1.1.1.2.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.2">𝒩</ci><apply id="S4.T2.4.4.4.1.m1.1.1.2.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3"><csymbol cd="latexml" id="S4.T2.4.4.4.1.m1.1.1.2.3.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3">limit-from</csymbol><apply id="S4.T2.4.4.4.1.m1.1.1.2.3.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2"><times id="S4.T2.4.4.4.1.m1.1.1.2.3.2.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.1"></times><ci id="S4.T2.4.4.4.1.m1.1.1.2.3.2.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.2">𝑟</ci><ci id="S4.T2.4.4.4.1.m1.1.1.2.3.2.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.3">𝑒</ci><ci id="S4.T2.4.4.4.1.m1.1.1.2.3.2.4.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.2.4">𝑓</ci></apply><plus id="S4.T2.4.4.4.1.m1.1.1.2.3.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.3.3"></plus></apply></apply><apply id="S4.T2.4.4.4.1.m1.1.1.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.4.4.4.1.m1.1.1.3.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.4.4.4.1.m1.1.1.3.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.2">𝒩</ci><apply id="S4.T2.4.4.4.1.m1.1.1.3.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.3"><times id="S4.T2.4.4.4.1.m1.1.1.3.3.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.3.1"></times><ci id="S4.T2.4.4.4.1.m1.1.1.3.3.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.3.2">𝑟</ci><ci id="S4.T2.4.4.4.1.m1.1.1.3.3.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.3.3">𝑒</ci><ci id="S4.T2.4.4.4.1.m1.1.1.3.3.4.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.3.4">𝑓</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\frac{\mathcal{N}_{ref+}}{\mathcal{N}_{ref}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">divide start_ARG caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f + end_POSTSUBSCRIPT end_ARG start_ARG caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f end_POSTSUBSCRIPT end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T2.5.5.5.2">correct_ratio_in_no_reflection_texts</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.5.1"><math alttext="\frac{\mathcal{N}_{+}-\mathcal{N}_{ref+}}{\mathcal{N}-\mathcal{N}_{ref}}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mfrac id="S4.T2.5.5.5.1.m1.1.1" xref="S4.T2.5.5.5.1.m1.1.1.cmml"><mrow id="S4.T2.5.5.5.1.m1.1.1.2" xref="S4.T2.5.5.5.1.m1.1.1.2.cmml"><msub id="S4.T2.5.5.5.1.m1.1.1.2.2" xref="S4.T2.5.5.5.1.m1.1.1.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.2.2.2" xref="S4.T2.5.5.5.1.m1.1.1.2.2.2.cmml">𝒩</mi><mo id="S4.T2.5.5.5.1.m1.1.1.2.2.3" xref="S4.T2.5.5.5.1.m1.1.1.2.2.3.cmml">+</mo></msub><mo id="S4.T2.5.5.5.1.m1.1.1.2.1" xref="S4.T2.5.5.5.1.m1.1.1.2.1.cmml">−</mo><msub id="S4.T2.5.5.5.1.m1.1.1.2.3" xref="S4.T2.5.5.5.1.m1.1.1.2.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.2.3.2" xref="S4.T2.5.5.5.1.m1.1.1.2.3.2.cmml">𝒩</mi><mrow id="S4.T2.5.5.5.1.m1.1.1.2.3.3" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.cmml"><mrow id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.cmml"><mi id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.2" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.2.cmml">r</mi><mo id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.3" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.3.cmml">e</mi><mo id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1a" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.4" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.4.cmml">f</mi></mrow><mo id="S4.T2.5.5.5.1.m1.1.1.2.3.3.3" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.3.cmml">+</mo></mrow></msub></mrow><mrow id="S4.T2.5.5.5.1.m1.1.1.3" xref="S4.T2.5.5.5.1.m1.1.1.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.3.2" xref="S4.T2.5.5.5.1.m1.1.1.3.2.cmml">𝒩</mi><mo id="S4.T2.5.5.5.1.m1.1.1.3.1" xref="S4.T2.5.5.5.1.m1.1.1.3.1.cmml">−</mo><msub id="S4.T2.5.5.5.1.m1.1.1.3.3" xref="S4.T2.5.5.5.1.m1.1.1.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.5.5.5.1.m1.1.1.3.3.2" xref="S4.T2.5.5.5.1.m1.1.1.3.3.2.cmml">𝒩</mi><mrow id="S4.T2.5.5.5.1.m1.1.1.3.3.3" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.cmml"><mi id="S4.T2.5.5.5.1.m1.1.1.3.3.3.2" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.2.cmml">r</mi><mo id="S4.T2.5.5.5.1.m1.1.1.3.3.3.1" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.1.cmml">⁢</mo><mi id="S4.T2.5.5.5.1.m1.1.1.3.3.3.3" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.3.cmml">e</mi><mo id="S4.T2.5.5.5.1.m1.1.1.3.3.3.1a" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.1.cmml">⁢</mo><mi id="S4.T2.5.5.5.1.m1.1.1.3.3.3.4" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.4.cmml">f</mi></mrow></msub></mrow></mfrac><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><apply id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1"><divide id="S4.T2.5.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1"></divide><apply id="S4.T2.5.5.5.1.m1.1.1.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2"><minus id="S4.T2.5.5.5.1.m1.1.1.2.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.1"></minus><apply id="S4.T2.5.5.5.1.m1.1.1.2.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.2"><csymbol cd="ambiguous" id="S4.T2.5.5.5.1.m1.1.1.2.2.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.2">subscript</csymbol><ci id="S4.T2.5.5.5.1.m1.1.1.2.2.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.2.2">𝒩</ci><plus id="S4.T2.5.5.5.1.m1.1.1.2.2.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.2.3"></plus></apply><apply id="S4.T2.5.5.5.1.m1.1.1.2.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="S4.T2.5.5.5.1.m1.1.1.2.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3">subscript</csymbol><ci id="S4.T2.5.5.5.1.m1.1.1.2.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.2">𝒩</ci><apply id="S4.T2.5.5.5.1.m1.1.1.2.3.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3"><csymbol cd="latexml" id="S4.T2.5.5.5.1.m1.1.1.2.3.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3">limit-from</csymbol><apply id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2"><times id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.1"></times><ci id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.2">𝑟</ci><ci id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.3">𝑒</ci><ci id="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.4.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.2.4">𝑓</ci></apply><plus id="S4.T2.5.5.5.1.m1.1.1.2.3.3.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2.3.3.3"></plus></apply></apply></apply><apply id="S4.T2.5.5.5.1.m1.1.1.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3"><minus id="S4.T2.5.5.5.1.m1.1.1.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.1"></minus><ci id="S4.T2.5.5.5.1.m1.1.1.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.2">𝒩</ci><apply id="S4.T2.5.5.5.1.m1.1.1.3.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="S4.T2.5.5.5.1.m1.1.1.3.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3">subscript</csymbol><ci id="S4.T2.5.5.5.1.m1.1.1.3.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.2">𝒩</ci><apply id="S4.T2.5.5.5.1.m1.1.1.3.3.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3"><times id="S4.T2.5.5.5.1.m1.1.1.3.3.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.1"></times><ci id="S4.T2.5.5.5.1.m1.1.1.3.3.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.2">𝑟</ci><ci id="S4.T2.5.5.5.1.m1.1.1.3.3.3.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.3">𝑒</ci><ci id="S4.T2.5.5.5.1.m1.1.1.3.3.3.4.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3.3.4">𝑓</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\frac{\mathcal{N}_{+}-\mathcal{N}_{ref+}}{\mathcal{N}-\mathcal{N}_{ref}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">divide start_ARG caligraphic_N start_POSTSUBSCRIPT + end_POSTSUBSCRIPT - caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f + end_POSTSUBSCRIPT end_ARG start_ARG caligraphic_N - caligraphic_N start_POSTSUBSCRIPT italic_r italic_e italic_f end_POSTSUBSCRIPT end_ARG</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table defines five metrics used to quantify the reflective behavior of language models in response generation.  Each metric is expressed as a ratio, calculated from the number of responses with reflection words, correct responses, and correct responses with reflection words, providing a nuanced evaluation of how reflection influences model accuracy and overall performance.  These metrics help analyze the relationship between reflection, response length, and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Definition of reflection ratios.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Term</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.1.1.2.1">
<span class="ltx_p" id="A1.T4.1.1.1.2.1.1" style="width:241.8pt;">Definition</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.2.1.1.1">batch_size</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.2.1.2.1">
<span class="ltx_p" id="A1.T4.1.2.1.2.1.1" style="width:241.8pt;">Number of queries per GPU for response collection.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.3.2.1.1">forward_batch_size</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.3.2.2.1">
<span class="ltx_p" id="A1.T4.1.3.2.2.1.1" style="width:241.8pt;">Number of query-responses processed in a single forward pass to obtain logits. Due to GPU memory constraints, only a subset of the sampled responses can be forwarded at a time.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.4.3.1.1">ppo_batch_size</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.4.3.2.1">
<span class="ltx_p" id="A1.T4.1.4.3.2.1.1" style="width:241.8pt;">Size of mini-batches into which the sampled query-responses of <span class="ltx_text ltx_font_italic" id="A1.T4.1.4.3.2.1.1.1">batch_size</span> are divided. It allows for a degree of off-policy updates, facilitated by PPO-clip loss.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.5.4.1.1">ppo_backward_batch_size</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.5.4.2.1">
<span class="ltx_p" id="A1.T4.1.5.4.2.1.1" style="width:241.8pt;">Number of query-responses processed per backward pass. This value is computed as ppo_batch_size // gradient_accumulation_steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.6.5.1.1">epochs</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.6.5.2.1">
<span class="ltx_p" id="A1.T4.1.6.5.2.1.1" style="width:241.8pt;">Number of iterations over RL queries, which is consistent with the concept of data epochs in SFT.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.7.6.1.1">ppo_epochs</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.7.6.2.1">
<span class="ltx_p" id="A1.T4.1.7.6.2.1.1" style="width:241.8pt;">The number of times a batch of query-response pairs is reused. A higher number of updates indicates a greater degree of off-policy learning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.8.7.1.1">generation_steps</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.8.7.2.1">
<span class="ltx_p" id="A1.T4.1.8.7.2.1.1" style="width:241.8pt;">Number of generating iterations, where each call to <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.8.7.2.1.1.1">llm.generate</span> increments the count by one.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T4.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.1.9.8.1.1">gradient_steps</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A1.T4.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.1.9.8.2.1">
<span class="ltx_p" id="A1.T4.1.9.8.2.1.1" style="width:241.8pt;">Number of gradient backward steps, incremented by one with each call to <span class="ltx_text ltx_font_typewriter" id="A1.T4.1.9.8.2.1.1.1">loss.backward</span>.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average and maximum accuracy achieved across three independent runs for various vision-language models (VLMs) on validation and test datasets.  The models were evaluated using three different generation configurations (pass@8, pass@1 with temperature 0.6, and pass@1 with temperature 0.01). The results compare the performance of Reinforcement Learning (RL)-trained models against both Supervised Fine-tuning (SFT)-trained models and untrained baseline ('Vanilla') models.  Cell shading highlights the relative improvement or degradation in accuracy compared to the baseline, with deeper red indicating substantial gains from RL training and green indicating performance worse than the baseline.
> <details>
> <summary>read the caption</summary>
> Table 3: Mean and maximum accuracy on validation & test sets averaged across 3 runs. RL consistently outperforms the untrained (Vanilla) baseline across all settings. Cell colors indicate relative improvement: deeper red denotes larger gains over Vanilla, while green indicates degradation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02587/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02587/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}