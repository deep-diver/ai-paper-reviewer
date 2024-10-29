---
title: "Retrospective Learning from Interactions"
summary: "RESPECT: a novel method improves language models by learning from implicit user feedback in multi-turn interactions, boosting task completion rates without external annotation."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-18"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This research introduces RESPECT, a method that allows large language models (LLMs) to learn from implicit feedback in their interactions with humans.  Instead of relying on explicit annotations, RESPECT leverages subtle cues in user responses like rephrasing requests or expressing frustration to understand whether the model is performing well.  The researchers tested RESPECT in a new multi-turn, grounded interaction scenario called MULTIREF, where humans guide the LLM through a challenging abstract reasoning task.  Over thousands of interactions, RESPECT gradually improved the LLM's task completion rate from 31% to 82%, demonstrating the potential for significant improvements in LLMs through implicit feedback learning.  This approach offers a more efficient and potentially cheaper way to train language models compared to traditional methods that require manual annotations.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13852" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13852" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel method for improving language models using implicit feedback from user interactions, eliminating the need for expensive human annotation.  It opens avenues for more efficient and scalable model training, aligning with current trends in AI research focusing on human-centered design and continual learning. The multi-turn grounded interaction scenario (MULTIREF) provides a valuable benchmark for future work in multimodal and conversational AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RESPECT learns from implicit user feedback signals (like rephrasing or frustration) in multi-turn interactions to improve language model performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The MULTIREF benchmark effectively tests models' ability to solve abstract reasoning problems through human instruction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RESPECT significantly improved task completion rates (from 31% to 82%) in the MULTIREF task without any external annotations. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions through retrospection and iterative retraining, resulting in improved task performance over time.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>





![](charts/charts_8_0.png)

> 🔼 The chart displays how task performance and efficiency improve across multiple rounds of training as a language model learns from past interactions with humans.
> <details>
> <summary>read the caption</summary>
> Figure 4: Task performance and efficiency improve as the policy learns from more past interactions. We present deployment results across three rounds for six concurrent systems, and three more rounds for the top system B-SUP, together with human-human references (HH) and a redeployment of the initial policy πθο (CONTROL). Left: interaction-level success rate (↑, higher is better). Center: interaction-level efficiency by # turns per interactions (↓). Right: micro-level performance by click accuracy (↑). Shades are 95% confidence intervals by bootstrapping with 10,000 resamples.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>[Previous turns omitted]</td><td></td></tr><tr><td>System: none is selected</td><td>(Previous turns)</td></tr><tr><td>Speaker: Man in a hat</td><td></td></tr><tr><td>Listener: Select A</td><td></td></tr><tr><td>System: A currently selected</td><td>(Augmented state)</td></tr><tr><td>Speaker: Wrong, undo what you selected</td><td>(Augmented utterance)</td></tr><tr><td>Listener: Deselect A *</td><td>. . (Augmented action)</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the hyperparameter settings used in the experiments for supervised learning, REINFORCE, and KTO optimization methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Hyperparameter settings.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_16_0.png)

> 🔼 The figure illustrates the RESPECT approach, showing how an LLM learns from implicit feedback in multi-turn interactions to improve its task completion rate over time without external annotation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ(α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_17_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_17_1.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ(α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_17_2.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions through retrospective reasoning and retraining, resulting in improved performance over time.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_18_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_22_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_23_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions by retrospectively analyzing its actions and retraining.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_24_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM learns from implicit feedback in multi-turn interactions through retrospective reasoning and retraining, leading to improved performance over time.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



![](figures/figures_25_0.png)

> 🔼 The figure illustrates the RESPECT framework, showing how an LLM iteratively interacts with users, retrospectively analyzes feedback from interactions, and retrains to improve task completion rate over multiple rounds.
> <details>
> <summary>read the caption</summary>
> Figure 1: Learning via RESPECT. We deploy an LLM policy πθ (α|x) in rounds p, to interact with users in multi-turn interactions. Following each round, the LLM reasons retrospectively about each of its actions (highlighted in blue) to decode feedback given the interaction context, including follow up utterances. After each round, the model is retrained using all data aggregated so far D<p. The LLM improves over time without any external annotations. The plot on the right shows the performance curve in our experiments – the LLM improves from 31% to 82% task completion rate over six rounds.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_8_1.png "🔼 Figure 5: Turn-level performance of B-SUP evaluated by post-hoc human annotations. Left: % turns where the policy's action a matches exactly the human listener's action a* (↑). Center: similarity between the policy's action and the human listener's action (↑). Even actions that receive negative feedback in deployment (NEG FB) are increasingly similar to human actions. Right: % turns that annotated to have received positive implicit feedback from human listeners (↑).")

> 🔼 The chart in Figure 5 shows that the model's actions become increasingly similar to human actions over time, even when receiving negative feedback, and that the proportion of turns receiving positive feedback increases.
> <details>
> <summary>read the caption</summary>
> Figure 5: Turn-level performance of B-SUP evaluated by post-hoc human annotations. Left: % turns where the policy's action a matches exactly the human listener's action a* (↑). Center: similarity between the policy's action and the human listener's action (↑). Even actions that receive negative feedback in deployment (NEG FB) are increasingly similar to human actions. Right: % turns that annotated to have received positive implicit feedback from human listeners (↑).
> </details>


![](charts/charts_9_0.png "🔼 Figure 6: Confusion matrices of the binary (top row) and ternary (bottom row) feedback decoders over rounds. The feedback decoder yields precise positive signals, even in early rounds.")

> 🔼 The chart displays the confusion matrices for binary and ternary feedback decoders across multiple rounds, showing the decoder's accuracy in identifying positive feedback signals.
> <details>
> <summary>read the caption</summary>
> Figure 6: Confusion matrices of the binary (top row) and ternary (bottom row) feedback decoders over rounds. The feedback decoder yields precise positive signals, even in early rounds.
> </details>


![](charts/charts_10_0.png "🔼 Figure 7: Language analysis of human instructions. All systems show a decrease in instruction complexity in the first three rounds, except for B-KTO, suggesting adaptation and improved efficiency on the speaker's side. Keyword-based analysis reveals that the number of reset/frustration signals drops, a reflection of the model learning and collaboration improving.")

> 🔼 The chart displays the changes in vocabulary size, utterance length, and the frequency of 'reset' and 'try again' signals in human instructions across different rounds of interaction for various system variants in the Multiref experiment.
> <details>
> <summary>read the caption</summary>
> Figure 7: Language analysis of human instructions. All systems show a decrease in instruction complexity in the first three rounds, except for B-KTO, suggesting adaptation and improved efficiency on the speaker's side. Keyword-based analysis reveals that the number of reset/frustration signals drops, a reflection of the model learning and collaboration improving.
> </details>


![](charts/charts_21_0.png "🔼 Figure 13: Cumulative number of human-bot interactions used to train the policy each round.")

> 🔼 The chart displays the cumulative number of human-bot interactions used to train the language model's policy across six different system variants over six rounds of training.
> <details>
> <summary>read the caption</summary>
> Figure 13: Cumulative number of human-bot interactions used to train the policy each round.
> </details>


![](charts/charts_21_1.png "🔼 Figure 14: Success rate of B-SUP with additional LoRA adapters in round 4 and 5.")

> 🔼 The chart displays a comparison of the success rates of two different LoRA adapter configurations (original and enhanced) across six rounds of training.
> <details>
> <summary>read the caption</summary>
> Figure 14: Success rate of B-SUP with additional LoRA adapters in round 4 and 5.
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
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}