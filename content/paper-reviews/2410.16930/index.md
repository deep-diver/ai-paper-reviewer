---
title: "Math Neurosurgery: Isolating Language Models' Math Reasoning Abilities Using Only Forward Passes"
summary: "Math Neurosurgery precisely isolates LLMs' math skills using only forward passes, boosting their math performance significantly without affecting other abilities."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", "🤗 24-10-23"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

This research introduces 'Math Neurosurgery' (MathNeuro), a novel method to isolate and manipulate parameters in LLMs that govern mathematical reasoning. Unlike prior methods, MathNeuro utilizes only forward passes. It leverages weights and activations to assess parameter importance, but cleverly filters out parameters crucial for general language tasks.  The results were striking: pruning MathNeuro-identified parameters effectively eliminated the model's math skills without impacting other abilities. Conversely, scaling these parameters up by a small factor resulted in a 4-17% performance boost on math tasks across various LLMs. The research also underscores that this method is highly data-efficient, showing impressive results even with single data samples.  Finally, the study suggests math reasoning isn't concentrated in specific layers but distributed across a model's parameters.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16930" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

{{< button href="https://huggingface.co/papers/2410.16930" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AI and NLP as it introduces a novel method for isolating mathematical reasoning abilities within large language models (LLMs), paving the way for targeted improvements in LLM performance and a deeper understanding of their internal workings. It challenges existing methods, highlights the potential for effective interventions, and opens new avenues for research in LLM interpretability and enhancement of specialized skills.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Math Neurosurgery (MathNeuro) successfully isolates math-specific parameters in LLMs using only forward passes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Pruning MathNeuro-identified parameters removes LLMs' math abilities while preserving other skills; scaling these parameters boosts math performance by 4-17%. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Math reasoning is distributed across LLM parameters, highlighting MathNeuro's effectiveness even with limited data. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png)

> 🔼 The figure illustrates the MathNeuro process, showing how it identifies math-specific parameters by comparing top parameters for math and non-math inputs and removing those common to both.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MathNeuro. First, we sum weights times activations separately over N samples for math and non-math inputs, finding the top-K parameters for each input type. Next, we find math-specific parameters by removing parameters that are important for non-math inputs.
> </details>





![](charts/charts_5_0.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods (including the authors' method, MathNeuro) on a language model's performance across math and non-math tasks, indicating MathNeuro's superior ability to isolate math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>





### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_5_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by four different methods on a Llama 3.2 1B IT model's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_7_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on the math and non-math performance of a Llama 3.2 1B IT language model, indicating MathNeuro's effectiveness in isolating math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_7_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified as important for math reasoning on both math and non-math task performance for Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_7_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters, identified by different methods, on math and non-math performance for Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_7_3.png "🔼 Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the percentage of consistently identified math-specific parameters across different proportions of top parameters calculated and varying numbers of samples used for comparison, using GSM8K and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_7_4.png "🔼 Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the percentage of consistently identified math-specific parameters across different random subsets of data, varying the number of samples and proportion of top parameters considered.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_8_0.png "🔼 Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the consistency of math-specific parameters identified by MathNeuro across different random subsets of data, showing a high degree of overlap even with a single sample.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_8_1.png "🔼 Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the percentage of consistently identified math-specific parameters by MathNeuro across different random subsets of data, varying sample sizes, and proportions of top parameters calculated, showing its consistency in identifying parameters related to math reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_8_2.png "🔼 Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the distribution of math-specific parameters across different layers of the Llama 3.2 1B IT model when using GSM8K and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_8_3.png "🔼 Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.")

> 🔼 The chart displays the distribution of math-specific parameters across different layers of a Llama 3.2 1B IT language model, showing a relatively even distribution rather than concentration in specific layers.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](charts/charts_12_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning identified parameters on Llama 3.2 1B IT's performance for math and non-math tasks, showing the trade-off between maintaining non-math accuracy and reducing math accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_12_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified by different methods on math and non-math performance for Llama 3.2 1B IT.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_12_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters identified by different methods (MathNeuro, Wanda, LAPE, Random) on the GSM8K, RACE, and MMLU performance of Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_12_3.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified by different methods on math and non-math performance for the Llama 3.2 1B IT language model, showing the trade-off between preserving non-math abilities and eliminating math reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_13_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified by four different methods (including MathNeuro) on math and non-math performance for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_13_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified as important for math on both math and non-math tasks, showing the tradeoff between preserving non-math accuracy and reducing math accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_13_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters, identified by different methods, on the model's performance in math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_13_3.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters identified by different methods on math and non-math performance for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_14_0.png "🔼 Figure 16: Impact of parameter proportion on GSM8K performance for pruning parameters identified by each method for Llama 3.2 1B IT.")

> 🔼 The chart displays the effect of pruning different proportions of parameters identified by various methods (including MathNeuro) on the GSM8K accuracy for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 16: Impact of parameter proportion on GSM8K performance for pruning parameters identified by each method for Llama 3.2 1B IT.
> </details>


![](charts/charts_14_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified as important for math on both math and non-math performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_14_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks, showing that MathNeuro effectively isolates math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_15_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified as important for math on math and non-math performance for Llama 3.2 1B IT, showing that MathNeuro effectively isolates math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_15_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 Figure 2 shows the effects of pruning parameters identified as important for math reasoning on both math and non-math task performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_15_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified as important for mathematical reasoning on the math performance (GSM8K) and non-math performance (RACE, MMLU) of the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_15_3.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by four different methods (including MathNeuro) on Llama 3.2 1B IT's performance across math and non-math tasks, showing MathNeuro's effectiveness in isolating math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_15_4.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_16_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by different methods (including MathNeuro) on math and non-math performance for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_16_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters identified by different methods on GSM8K, MMLU, and RACE accuracy for Llama 3.2 1B IT, showing that MathNeuro effectively isolates math-specific parameters without significantly affecting non-math performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_16_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 Figure 2 shows the effect of pruning parameters identified by different methods (MathNeuro, Wanda, LAPE, and Random) on Llama 3.2 1B IT's performance across math (GSM8K) and non-math (MMLU and RACE) tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_16_3.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by different methods on the model's performance in math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_17_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified by four different methods on the model's performance in math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_17_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by different methods on math and non-math performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_17_2.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as  Dnon-math.")

> 🔼 The chart displays the effect of pruning parameters identified as important for math on the model's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as  Dnon-math.
> </details>


![](charts/charts_17_3.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the impact of pruning parameters identified by different methods on math and non-math performance for the Llama 3.2 1B IT language model, showing that MathNeuro effectively isolates math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_18_0.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified as important for math reasoning on the model's performance on math and non-math tasks for Llama 3.2 1B IT, showing the tradeoff between reduced math accuracy and preserved non-math accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_18_1.png "🔼 Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified as important for math on both math and non-math task performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_18_2.png "🔼 Figure 4: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT for calculating the top 10% of parameters based on one sample. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.")

> 🔼 The chart displays the effects of pruning parameters identified by four different methods (including MathNeuro) on Llama 3.2 1B IT's performance on math and non-math tasks, using a single sample for parameter importance calculation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT for calculating the top 10% of parameters based on one sample. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](charts/charts_19_0.png "🔼 Figure 29: Impact of MathNeuro scale factor on GSM8K performance for Llama 3.2 1B.")

> 🔼 The chart displays the effect of different scaling factors applied to math-specific parameters identified by MathNeuro on the GSM8K CoT accuracy for Llama 3.2 1B model.
> <details>
> <summary>read the caption</summary>
> Figure 29: Impact of MathNeuro scale factor on GSM8K performance for Llama 3.2 1B.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}