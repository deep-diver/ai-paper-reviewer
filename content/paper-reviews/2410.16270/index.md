---
title: "Reflection-Bench: probing AI intelligence with reflection"
summary: "Reflection-Bench, a new benchmark, reveals current LLMs lack true reflection abilities, highlighting a critical gap in achieving human-level AI."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-28"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

This research paper introduces Reflection-Bench, a new benchmark designed to evaluate the reflection capabilities of Large Language Models (LLMs). Reflection, the ability to adapt beliefs and behaviors based on new information, is considered a core component of intelligence.  The benchmark comprises seven tasks based on established cognitive science paradigms, covering perception, memory, belief updating, decision-making, prediction, counterfactual thinking, and meta-reflection.  The researchers evaluated thirteen prominent LLMs on Reflection-Bench and found that current LLMs are significantly lacking in reflection abilities, especially meta-reflection (reflecting on one's own reflection).  They discuss potential reasons for this limitation and suggest future research directions. The paper contributes a novel framework and benchmark for assessing AI intelligence, challenging the existing understanding of LLMs' true capabilities and guiding future research efforts toward developing AI systems with more human-like reflection abilities.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16270" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16270" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for AI researchers as it introduces a novel benchmark, Reflection-Bench, for evaluating the reflection capabilities of LLMs. This benchmark addresses the limitations of existing evaluations by focusing on reflection as a core principle of intelligence, providing a more nuanced understanding of LLMs' capabilities.  The findings challenge the prevailing narrative on LLM intelligence, opening up new avenues for research into more human-like AI systems.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LLMs significantly underperform humans in reflection tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Reflection-Bench offers a comprehensive evaluation framework for LLM reflection capabilities, encompassing perception, memory, belief updating, decision-making, prediction, counterfactual thinking, and meta-reflection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The universal absence of meta-reflection in LLMs indicates a major hurdle in developing truly intelligent AI systems. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure illustrates the cyclical process of reflection, showing how an intelligent agent integrates perception, memory, belief updating, decision-making, prediction, and counterfactual thinking to adapt to the environment.
> <details>
> <summary>read the caption</summary>
> Figure 1: Reflection, a fundamental process of intelligence, integrates various cognitive components. To achieve desired outcomes, an intelligent agent must predict the external world states and behavioral consequences based on prior beliefs. Post-action, discrepancies between prediction and observation are perceived, prompting an update of prior belief. This update involves recalling the previous decision process and engaging in counterfactual thinking about un-chosen alternatives.
> </details>





![](charts/charts_6_0.png)

> 🔼 The chart displays the MMN-like waveforms of thirteen LLMs in response to deviant stimuli in an oddball paradigm, showing variations in their ability to detect unexpected information.
> <details>
> <summary>read the caption</summary>
> Figure 3: MMN-like waveforms demonstrating the response of LLMs to deviant stimuli in an oddball paradigm. A deeper curve means a higher response.
> </details>





{{< table-caption >}}
<br><table id='8' style='font-size:16px'><tr><td>Task</td><td>Trials</td><td>Parameters</td></tr><tr><td>Oddball</td><td>50</td><td>NA</td></tr><tr><td>N-back</td><td>52</td><td>n=2</td></tr><tr><td>PRLT</td><td>40</td><td>p=0.9</td></tr><tr><td>WCST</td><td>108</td><td>x=108</td></tr><tr><td>WPT</td><td>100</td><td>p=0.9</td></tr><tr><td>DC-IGT</td><td>100</td><td>Ploss = 0.5, 0.1, 0.5, 0.1</td></tr><tr><td>MBT</td><td>60</td><td>n=3, p=1</td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 presents the performance of 13 large language models across seven tasks designed to evaluate reflection capabilities, revealing variations in their abilities.
> <details>
> <summary>read the caption</summary>
> Table 2: Performances of 13 models on Reflection-Bench.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_6_1.png "🔼 Figure 4: Probabilistic reversal learning task. The black dashed line represents the true reward possibility of the bandit's left arm over trials, and other solid lines represent the average ratio of the left arm chosen.")

> 🔼 The chart displays the learning curves of various LLMs in a probabilistic reversal learning task, showing how their choices of a specific option change over trials and adapt to a reversed reward probability.
> <details>
> <summary>read the caption</summary>
> Figure 4: Probabilistic reversal learning task. The black dashed line represents the true reward possibility of the bandit's left arm over trials, and other solid lines represent the average ratio of the left arm chosen.
> </details>


![](charts/charts_7_0.png "🔼 Figure 5: Wisconsin card sorting test. Accuracy by 6 rule groups over 108 trials.")

> 🔼 The chart visualizes the accuracy of 13 different LLMs across six rule groups within the Wisconsin Card Sorting Test, revealing performance variations among the models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Wisconsin card sorting test. Accuracy by 6 rule groups over 108 trials.
> </details>


![](charts/charts_7_1.png "🔼 Figure 6: Weather prediction task. True and models' estimated transition matrices of the highest (o1-preview) and lowest scoring models (Qwen-2.5-32B).")

> 🔼 The chart compares the true weather transition probabilities with those estimated by the top-performing and worst-performing LLMs in a weather prediction task, showcasing the difference in their ability to learn and predict probabilistic relationships.
> <details>
> <summary>read the caption</summary>
> Figure 6: Weather prediction task. True and models' estimated transition matrices of the highest (o1-preview) and lowest scoring models (Qwen-2.5-32B).
> </details>


![](charts/charts_8_0.png "🔼 Figure 7: Rewards of models in the meta-bandit task over 60 trials and 20 reversals.")

> 🔼 The chart visualizes the performance of 13 different LLMs on a meta-bandit task, showing their choices over 60 trials with 20 reward reversals.
> <details>
> <summary>read the caption</summary>
> Figure 7: Rewards of models in the meta-bandit task over 60 trials and 20 reversals.
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
{{< /gallery >}}