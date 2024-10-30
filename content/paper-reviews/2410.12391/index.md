---
title: "Tracking Universal Features Through Fine-Tuning and Model Merging"
summary: "Researchers tracked feature evolution in small language models through fine-tuning and model merging, discovering surprising feature instability and uncovering interpretable persistent features like v..."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12391 {{< /keyword >}}

### TL;DR


{{< lead >}}

This study investigates how features in language models change when fine-tuned on new data or when multiple models are merged. Using small, one-layer transformer models and sparse autoencoders, researchers tracked feature evolution in two transfer learning settings: fine-tuning the model on new text domains (Lua programming and TinyStories) and merging the fine-tuned models. They found that very few features persisted between the models, and those that did tend to be related to basic text properties like punctuation. The results suggest that language models learn features which are not necessarily stable or domain-independent, challenging previous assumptions about feature universality and persistence. The study provides several case studies of individual features, showing how some features emerge and disappear while others persist in meaningful ways. It also highlights how the method using sparse autoencoders can be employed for studying language model features and offers avenues for further research into deeper models and a wider range of transfer learning scenarios.  The findings contribute to our understanding of what's actually being learned and represented in language models, and can inform future model development and transfer learning strategies.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12391" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12391" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it offers a novel approach to understanding how features evolve in language models during transfer learning.  Its use of small-scale models and sparse autoencoders makes the research reproducible and accessible.  The findings challenge assumptions about feature persistence and highlight the need for further exploration of feature dynamics in more complex models and various transfer learning scenarios.  The interpretability methods are also valuable to the field.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Language model features are surprisingly unstable across different fine-tuning and model merging scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Persistent features often represent fundamental properties of text like punctuation and formatting, rather than task-specific knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Sparse autoencoders and interpretability methods are effective tools for analyzing feature evolution in language models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12391/figures_2_0.png)

> 🔼 This figure shows the experimental design, starting from a base model trained on BabyLM and Python, then fine-tuned on Lua and TinyStories, and finally merged using SLERP, with sparse autoencoders trained for each model.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the experimental design. We start with a base model trained on BabyLM and Python code (1), which is fine-tuned (FT) on two new domains: the Lua programming language (2), and TinyStories (3). The fine-tuned models are merged into a single LuaStories model using spherical linear interpolation (SLERP) interpolation (4). For each of these models, we train a sparse auto-encoder on the MLP activations using the same data distribution as the original model.
> </details>





![](https://ai-paper-reviewer.com/2410.12391/charts_3_0.png)

> 🔼 The chart visualizes the evolution of features (emerging, disappearing, and persisting) in a language model across different fine-tuning and model merging stages.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the features persisting through fine-tuning and model merging, showing volumes and trajectories of extracted features that emerge, persist and disappear. This overview omits the features that don't persist, and so the visual flows are scaled proportional to the persisting features. We note the share of features that persist from each model.
> </details>





### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.12391/figures_4_0.png)

> 🔼 Figure 3 visualizes the feature activation patterns of the variable assignment feature across four language models, highlighting the correlation between the models' features.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualisation of the feature activation patterns of the universally extracted variable assignment features found in each model. Each token is highlighted according to the feature's activation level, where darker background colour denotes higher level of activation. Additionally, we note the observed activation pattern correlations between each feature.
> </details>



![](https://ai-paper-reviewer.com/2410.12391/figures_4_1.png)

> 🔼 Figure 4 shows examples of observed activation patterns of the BabyPython Python exception feature and its closest match in the Lua model, highlighting insufficient correlation between them.
> <details>
> <summary>read the caption</summary>
> Figure 4: Examples of observed activation patterns of the BabyPython Python exception feature, and the closest matching feature in the Lua model, qualitatively showing insufficient correlation between the two.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12391/charts_6_0.png)

> 🔼 The chart displays the accuracy of a merged language model at various interpolation stages between two fine-tuned models (Lua and TinyStories), comparing it to the base model's accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 5: Observed accuracy trends of a merged model consisting of weights spherically linear interpolated between the Lua model and the TinyStories model, as measured on the validation datasets of the Lua and TinyStories, respectively, at each interpolation step (slerp t-value). The dashed baselines show the accuracy of the shared base model underlying the Lua and TinyStories model, on the same validation datasets.
> </details>


![](https://ai-paper-reviewer.com/2410.12391/charts_7_0.png)

> 🔼 The chart displays the distribution of Pearson correlation coefficients between automatically generated explanations and true feature activation patterns for Lua features and persisting Lua features in the LuaStories model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Histograms showing the distribution of observed correlations between automatically generated explanations and the true feature activation patterns of features in the Lua and LuaStories model.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12391/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12391/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}