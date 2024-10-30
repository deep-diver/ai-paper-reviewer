---
title: "Math Neurosurgery: Isolating Language Models' Math Reasoning Abilities Using Only Forward Passes"
summary: "Math Neurosurgery precisely isolates math reasoning parameters within LLMs using only forward passes, boosting performance without affecting non-math skills."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", ]
showSummary: true
date: 2024-10-22
draft: false
---

{{< keyword >}} 2410.16930 {{< /keyword >}}

### TL;DR


{{< lead >}}

Researchers developed 'Math Neurosurgery'—a method to pinpoint the parts of a large language model (LLM) responsible for math skills.  This method only uses the model's forward pass (meaning it's computationally efficient).  They found that removing these specific parameters destroys the model's math abilities without harming its other functions.  Conversely, slightly increasing the strength of these parameters improved the model's math performance by up to 17%, showcasing the method's effectiveness and the potential for focused LLM improvement. The study also reveals that math skills aren't concentrated in specific parts of the model, but spread throughout.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16930" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16930" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly relevant to researchers working on large language models (LLMs), particularly those focused on improving mathematical reasoning capabilities in AI.  It introduces a novel, efficient method that has the potential to significantly advance our understanding of how math abilities are encoded within LLMs, opening new avenues for targeted improvements and further research into LLM architecture and knowledge representation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Math Neurosurgery (MathNeuro) successfully isolates parameters specifically responsible for mathematical reasoning in LLMs using only forward passes, enhancing data efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Pruning MathNeuro-identified parameters eliminates a model's math abilities without harming its general language capabilities; scaling them improves GSM8K performance by 4-17%. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Math reasoning parameters are evenly distributed across a model's layers, indicating that the ability isn't confined to specific areas. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.16930/figures_3_0.png)

> 🔼 The figure illustrates the MathNeuro process of identifying math-specific parameters by comparing top parameters for math and non-math inputs and removing those important for both.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of MathNeuro. First, we sum weights times activations separately over N samples for math and non-math inputs, finding the top-K parameters for each input type. Next, we find math-specific parameters by removing parameters that are important for non-math inputs.
> </details>





![](https://ai-paper-reviewer.com/2410.16930/charts_5_0.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on math and non-math performance for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>





### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.16930/charts_5_1.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on Llama 3.2 1B IT's performance across three tasks (GSM8K, MMLU, and RACE).
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_7_0.png)

> 🔼 The chart displays the effect of pruning parameters identified by four different methods (including MathNeuro) on the model's accuracy for math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_7_1.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on GSM8K, MMLU, and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_7_2.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods on math and non-math performance for Llama 3.2 1B IT model, showing MathNeuro's effectiveness in isolating math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_7_3.png)

> 🔼 The chart displays the percentage of consistently identified math-specific parameters across different random data subsets for various proportions of top parameters calculated and numbers of samples used in the comparison.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_7_4.png)

> 🔼 The chart displays the consistency of math-specific parameters identified by MathNeuro across different random subsets of data, showing high consistency even with a single sample.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_8_0.png)

> 🔼 The chart displays the percentage of consistently identified math-specific parameters by MathNeuro across different random subsets of data, varying sample sizes and proportions of top parameters calculated.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_8_1.png)

> 🔼 The chart displays the consistency of parameters identified as math-specific by MathNeuro across different random subsets of math and non-math data for Llama 3.2 1B IT model, comparing GSM8K and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 6: Consistency of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_8_2.png)

> 🔼 The chart displays the distribution of math-specific parameters across different layers of the Llama 3.2 1B IT model, comparing parameters identified using GSM8K and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_8_3.png)

> 🔼 The bar chart displays the distribution of math-specific parameters across different layers of Llama 3.2 1B IT language model, showing a relatively even distribution throughout the layers.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of math-specific parameters identified by MathNeuro for Llama 3.2 1B IT when identifying using GSM8K compared to RACE.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_12_0.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on Llama 3.2 1B IT's performance on GSM8K, MMLU, and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_12_1.png)

> 🔼 Figure 2 shows the effect of pruning parameters identified by four different methods on both math and non-math performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_12_2.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on Llama 3.2 1B IT's performance in math reasoning (GSM8K) and two non-math tasks (RACE and MMLU).
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_12_3.png)

> 🔼 The chart displays the effect of pruning parameters identified by different methods on math and non-math performance for Llama 3.2 1B IT, showing that MathNeuro effectively isolates math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_13_0.png)

> 🔼 The chart displays the effects of pruning parameters identified by four different methods (MathNeuro, LAPE, Wanda, and Random) on the model's performance across three tasks (GSM8K, MMLU, and RACE).
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_13_1.png)

> 🔼 The chart displays the effect of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_13_2.png)

> 🔼 The chart displays the effects of pruning parameters identified by four different methods (including MathNeuro) on Llama 3.2 1B IT's performance in math reasoning (GSM8K) and non-math tasks (MMLU and RACE).
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_13_3.png)

> 🔼 The chart displays the effects of pruning parameters identified by different methods on Llama 3.2 1B IT's performance across math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_14_0.png)

> 🔼 The chart displays the effect of pruning different proportions of parameters identified by various methods (including MathNeuro) on the GSM8K performance of Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 16: Impact of parameter proportion on GSM8K performance for pruning parameters identified by each method for Llama 3.2 1B IT.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_14_1.png)

> 🔼 The chart displays the effects of pruning parameters identified as important for math reasoning on both math and non-math task performance for the Llama 3.2 1B IT language model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_14_2.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods (including MathNeuro) on the model's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_15_0.png)

> 🔼 The chart displays the effects of pruning parameters identified as important for math on the model's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_15_1.png)

> 🔼 The chart displays the effects of pruning parameters identified by different methods on the Llama 3.2 1B IT model's performance in math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_15_2.png)

> 🔼 The chart displays the effect of pruning parameters identified by different methods on the math and non-math performance of Llama 3.2 1B IT, showing the trade-off between preserving non-math performance and reducing math accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_15_3.png)

> 🔼 The chart displays the effects of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks, showing MathNeuro's superior ability to isolate math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_15_4.png)

> 🔼 The chart displays the effect of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks, showing MathNeuro's effectiveness in isolating math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_16_0.png)

> 🔼 The chart displays the effects of pruning parameters identified as important for math reasoning on both math and non-math tasks, for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_16_1.png)

> 🔼 The chart displays the impact of pruning parameters identified by four different methods on the model's performance on math and non-math tasks, showing MathNeuro's superior ability to isolate math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_16_2.png)

> 🔼 Figure 2 shows the effect of pruning parameters identified as important for math on both math and non-math performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_16_3.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods on math and non-math performance for Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_17_0.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods (including MathNeuro) on Llama 3.2 1B IT's performance on math and non-math tasks, showing MathNeuro effectively isolates math parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_17_1.png)

> 🔼 The chart displays the effect of pruning parameters identified as important for math reasoning on a Llama 3.2 1B IT language model's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_17_2.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on GSM8K, MMLU, and RACE datasets.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_17_3.png)

> 🔼 The chart displays the impact of pruning parameters identified by different methods on math and non-math performance for Llama 3.2 1B IT, showing the trade-off between reducing math accuracy and preserving non-math accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_18_0.png)

> 🔼 The chart displays the effects of pruning parameters identified as important for math on both math and non-math task performance for the Llama 3.2 1B IT model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_18_1.png)

> 🔼 The chart displays the effects of pruning parameters identified by different methods on Llama 3.2 1B IT's performance on math and non-math tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT based on calculating the top 15% of parameters. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_18_2.png)

> 🔼 The chart displays the effects of pruning parameters (identified by four different methods) on Llama 3.2 1B IT's performance across math and non-math tasks using a single sample, highlighting the effectiveness of MathNeuro in isolating math-specific parameters.
> <details>
> <summary>read the caption</summary>
> Figure 4: Effect of pruning identified parameters on math and non-math performance for Llama 3.2 1B IT for calculating the top 10% of parameters based on one sample. Ideal methods should fall in the top left of the plot. MMLU and RACE denote that a point was calculated using MMLU or RACE, respectively, as Dnon-math.
> </details>


![](https://ai-paper-reviewer.com/2410.16930/charts_19_0.png)

> 🔼 The chart displays the impact of scaling the weights of math-specific parameters identified by MathNeuro on the GSM8K performance of Llama 3.2 1B model.
> <details>
> <summary>read the caption</summary>
> Figure 29: Impact of MathNeuro scale factor on GSM8K performance for Llama 3.2 1B.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.16930/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16930/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}