---
title: "Logic-RL: Unleashing LLM Reasoning with Rule-Based Reinforcement Learning"
summary: "Logic-RL unlocks LLM reasoning via rule-based reinforcement learning, generalizing to math problems after training on logic puzzles."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Microsoft Research Asia",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14768 {{< /keyword >}}
{{< keyword icon="writer" >}} Tian Xie et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14768" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14768" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14768/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Inspired by DeepSeek-R1, this paper explores rule-based reinforcement learning (RL) to improve reasoning in LLMs using synthetic logic puzzles due to their controllable nature and answer verification. To address challenges with naive training, the authors make key technical contributions. This includes a system prompt to emphasize thinking, a format reward function to penalize shortcuts and a training recipe to achieve convergence. By doing so, the model can develop the ability to reflect, verify and summarize.



This paper introduces **Logic-RL**, a framework using the REINFORCE++ algorithm and designs from DeepSeek-R1. After training a 7B model on 5K logic problems, it demonstrated generalization to math benchmarks like AIME and AMC. During training, the model allocated more steps to reason, expanding from hundreds to thousands of tokens. Key findings include: language mixing hinders reasoning, increased 'thinking' tokens help, and RL generalizes better than SFT.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Rule-based RL can unlock advanced reasoning skills in LLMs, even with limited training data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A stringent format reward function and system prompt are crucial for stable RL training and preventing reward hacking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RL-trained models can generalize to out-of-distribution tasks, suggesting the development of abstract problem-solving schemata. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Logic-RL, which **develops advanced reasoning skills such as reflection and verification** that generalizes to math benchmarks. This work suggests rule-based RL can unlock emergent abilities in LLMs, offering new directions for reasoning research and task adaptation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14768/x1.png)

> 🔼 This figure displays the validation accuracy and average response length of a language model during reinforcement learning (RL) training.  The x-axis represents the training step, showing progress over time. The y-axis on the left shows validation accuracy, indicating how well the model performs on unseen data. The y-axis on the right shows the mean response length, demonstrating the model's increasing use of 'thinking' steps.  The plot shows a clear correlation: as the model's performance improves, it allocates more resources to deliberation. The plot also includes the performance on two external, unseen benchmarks (AIME and AMC) that demonstrate the model's generalization ability after training.
> <details>
> <summary>read the caption</summary>
> Figure 1: Validation accuracy and mean response length during RL training, illustrating how the model autonomously learns to allocate more thinking compute for improved performance. Remarkably, the model also demonstrates impressive generalization on completely unseen datasets (AIME, AMC).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">Algorithm</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1">Train Batch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1">Rollout N</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.4.1">KL Coef</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.5.1">Max Response Len</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.2.1">REINFORCE++</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.2.2">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.2.3">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.2.4">0.001</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.2.5">4096</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the hyperparameters used during the training process of the Logic-RL model.  It shows the algorithm used (REINFORCE++), the batch size for training, the number of rollouts per update, the coefficient for the KL divergence penalty, and the maximum response length allowed during training. These parameters are crucial for controlling the training process and achieving optimal performance.  Understanding these values helps in interpreting the results of the Logic-RL model and potentially reproducing or adapting the training process for similar tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Important Training Parameters
> </details>





### In-depth insights


#### Logic-RL Intro
The paper introduces Logic-RL, a novel framework leveraging rule-based reinforcement learning for enhancing reasoning capabilities in LLMs. Inspired by DeepSeek-R1's success, it explores RL's potential using **synthetic logic puzzles** as training data due to their controllable complexity and straightforward answer verification. A key contribution lies in a system prompt emphasizing the thinking process, alongside a strict reward function that penalizes shortcuts, leading to stable convergence. The paper highlights the development of advanced reasoning skills like **reflection, verification, and summarization** in a 7B model, trained on a small logic corpus, demonstrating generalization to challenging math benchmarks like AIME and AMC, suggesting the emergence of abstract problem-solving schemata rather than mere domain-specific pattern matching. This cross-domain transfer is remarkable given the limited training data.

#### K&K Data Design
**The paper leverages the Knights and Knaves (K&K) puzzles** due to their structured nature, enabling controlled experiments on reasoning dynamics. The procedural generation ensures consistency and infinite variability, serving as unseen data for generalization testing. **Difficulty is precisely adjustable**, allowing for curriculum learning design by varying characters and logical operations. **The puzzles have unambiguous ground truth**, facilitating accurate evaluation and minimizing reward hacking. These features make K&K ideal for studying reasoning dynamics in isolation, distinguishing genuine reasoning from superficial memorization. Its well-defined nature allows for precise study. This is essential when you need an accurate result. 

#### Aha: Gradual Rise
The concept of an "Aha!" moment, often associated with sudden insights, takes on a different character in the context of LLM reasoning. Instead of a singular, dramatic breakthrough, the rise to complex reasoning capabilities seems to be gradual. **There is no instantaneous leap in performance; rather, skills such as self-reflection, exploration, and verification emerge incrementally.** The model refines its approach over time, exhibiting a steady increase in sophistication. This gradualism suggests that the underlying mechanisms involve progressive adjustments to the model's parameters. **The "Aha!" is not a flash of brilliance, but the result of sustained learning.** This makes RL, a more appropriate framework for inducing such capabilities. RL relies on incremental feedback and iterative adjustments, leading to gradual refinement. It aligns with the observed phenomenon of skills development, where reasoning abilities accumulate through trial and error. **The journey is marked by incremental improvements, not sudden transformations.**

#### RL>SFT Ability
**Reinforcement Learning (RL) often fosters greater generalization compared to Supervised Fine-Tuning (SFT)**. While SFT excels at mimicking training data patterns, RL encourages exploration and independent problem-solving. This leads to models that don't just memorize but develop enhanced reasoning capabilities. **RL models adapts to unseen data** more effectively as RL optimizes for rewards, not exact replication. **SFT can overfit to the training format**, RL cultivates robust skills that transfer across diverse scenarios. **SFT is more likely to struggle with modified input** because RL encourages active learning, it can adapt in real-time. **RL-trained models have greater problem-solving flexibility** by building true reasoning capabilities.

#### Scale Logic-RL
**Scaling Logic-RL** is a promising avenue for enhancing LLM reasoning.  Moving beyond small logic datasets is crucial. Future research should prioritize **real-world mathematical and coding scenarios**. This involves exploring diverse, complex datasets. Addressing limitations like long response lengths and high computational cost is essential. **Chain-of-thought shortening methods** and **more stable RL training techniques** can help. Also, the use of **code-switching as a tool**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/rq1.png)

> 🔼 This figure compares the performance of three reinforcement learning algorithms: GRPO, REINFORCE++, and PPO.  The comparison is made across three key metrics: training speed (time taken to reach a certain number of training steps), accuracy (how well the model performs on a validation set), and reward gain (the amount of reward accumulated during training). The results are averaged using a sliding window of 50 steps to smooth out any noise and highlight the overall trends.  The graph visually represents how each algorithm performs over a set of training steps.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of GRPO (Blue), REINFORCE++ (Red), and PPO (Green) performance (averaged by sliding window = 50) in terms of training speed, accuracy, and reward gain.
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/rq7.png)

> 🔼 This figure examines the effects of complex reasoning behaviors and language mixing on the model's performance.  The analysis focuses on the impact of specific tokens, such as 'verify' and 're-evaluate,' which are associated with higher scores when present in the model's responses. Conversely, the inclusion of tokens from languages other than English leads to lower scores, highlighting the model's sensitivity to language consistency and its preference for explicit verification during the reasoning process. The bar chart visually represents the average answer scores with and without these key tokens and language mixing, providing a clear comparison of their influence on the model's reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Impact of complex reasoning behaviours and language mixing on reasoning performance. We analyzed the model’s answer rewards for responses containing the tokens shown in the figure. Responses with 'verify' and 're-evaluate' scored significantly higher than those without these words. Conversely, responses containing certain tokens from other languages generally received lower scores.
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/verify.png)

> 🔼 The figure shows the frequency of the word 'verify' appearing in the model's responses during the first 1800 training steps. The frequency increases gradually over time, indicating that the model increasingly uses the word 'verify' as it learns to perform more complex reasoning, which involves self-verification. This is consistent with the model's development of emergent reasoning behaviors like reflection and verification discussed in the paper.
> <details>
> <summary>read the caption</summary>
> (a) Verify
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/re-evaluate.png)

> 🔼 The figure shows the impact of specific tokens on reasoning performance.  The word 're-evaluate' is highlighted because its presence in the model's reasoning process leads to significantly higher average answer scores compared to when it is absent. This suggests that the act of reconsidering and refining one's reasoning process is a key factor in improved performance. The graph visually demonstrates this effect by comparing average answer scores with and without the token 're-evaluate'.
> <details>
> <summary>read the caption</summary>
> (b) Re-evaluate
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/check.png)

> 🔼 The figure shows the frequency of the word 'check' appearing in the model's responses during training. The frequency increases gradually over time, suggesting that the model's self-verification behavior develops steadily, not suddenly.
> <details>
> <summary>read the caption</summary>
> (c) Check
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/yet.png)

> 🔼 This figure displays the frequency of the word 'yet' appearing in the model's responses during the first 1800 training steps of the reinforcement learning process.  The steady, gradual increase in frequency suggests there was no sudden 'aha moment' or breakthrough in the model's reasoning abilities. Instead, the development of more complex reasoning behaviors, including reflection and self-verification, appears to have been incremental and continuous.
> <details>
> <summary>read the caption</summary>
> (d) Yet
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/lets.png)

> 🔼 The figure displays the frequency of specific words during the first 1800 steps of the RL training process. It visualizes how the frequency of words related to reflection ('verify', 're-evaluate', 'check'), cautiousness ('yet'), conversational phrases ('let's'), and even a Chinese word, changed over time.  The relatively gradual and consistent increase in frequency of these words, rather than a sudden spike, suggests a lack of a distinct 'aha moment' in the model's learning process.
> <details>
> <summary>read the caption</summary>
> (e) Let’s
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/word_frequency_charts/chinese_yes.png)

> 🔼 The figure shows the frequency of Chinese words appearing in the English responses generated by the model during the RL training process.  This unexpected appearance of Chinese words within responses primarily written in English suggests the model might be utilizing or accessing internal representations or mechanisms that involve Chinese vocabulary, even when the task and training data primarily use English.
> <details>
> <summary>read the caption</summary>
> (f) Chinese word
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/limem_rl32.png)

> 🔼 This figure displays the frequency of specific words over the initial 1800 training steps.  It visually demonstrates the gradual increase in the use of reflective words ('check', 'verify'), conversational phrases ('Let’s'), and cautious terms ('yet').  Interestingly, the appearance of Chinese words in English responses is also tracked. The steady, non-abrupt increase in word frequency suggests a continuous learning process rather than a sudden 'aha moment' of understanding.
> <details>
> <summary>read the caption</summary>
> Figure 4: Tracking the frequency of words in the first 1,800 training steps. 1. Reflective words like 'check' and 'verify' slowly increased (a)-(c). 2. Conversational phrases (e.g., 'Let’s') and cautious terms (e.g., 'yet') became more frequent (d)-(e), 3. Chinese words began appearing in English responses (f). The frequency of all these words developed steadily without sudden jumps, suggesting that there may not be a distinct 'aha moment.'
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/limem_rft32.png)

> 🔼 This figure displays the model's accuracy on the American Invitational Mathematics Examination (AIME) from 2021-2024 and the American Mathematics Competitions (AMC) from 2022-2023, demonstrating its generalization capabilities to out-of-distribution datasets.  The x-axis represents the training step, showing the model's performance improvement over time. The y-axis shows the accuracy on each dataset.  The figure showcases the model's ability to generalize its learned reasoning skills beyond the specific training data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training Step vs. Accuracy on AIME (2021-2024) and AMC (2022-2023) Datasets.
> </details>



![](https://arxiv.org/html/2502.14768/x4.png)

> 🔼 Figure 6 presents a comparison of the generalization capabilities of Reinforcement Learning (RL) and Reject Sampling Fine-Tuning (RFT).  The x-axis represents the Local Inconsistency-based Memorization Score (LiMem), which measures how sensitive the model is to changes in problem structure.  A high LiMem indicates memorization of training data, whereas a low LiMem signifies robust generalization.  The y-axis depicts test accuracy on unseen data.  The results demonstrate that RL achieves significantly higher accuracy on perturbed test instances (i.e., those with changes to wording or order) compared to RFT, indicating that RL learns true reasoning skills rather than memorizing superficial patterns. In contrast, RFT prioritizes superficial pattern matching, resulting in higher memorization, and diminished accuracy on unseen data.
> <details>
> <summary>read the caption</summary>
> (a) RL
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/rq3.png)

> 🔼 Figure 6b presents the results of a Reject Sampling Fine-Tuning (RFT) experiment. It displays the relationship between the model's memorization level (LiMem) and its accuracy on unseen test data. The x-axis represents LiMem, measuring the extent to which the model has memorized the training data. The y-axis shows the accuracy on test data, indicating the model's ability to generalize to unseen examples. The figure showcases that as the model memorizes more training data (increasing LiMem), its ability to generalize to new data decreases (lower accuracy). This contrasts sharply with the results shown in Figure 6a, which illustrate the generalization capability of reinforcement learning, where the model's ability to generalize to new data increases along with its memorization of training data.
> <details>
> <summary>read the caption</summary>
> (b) RFT
> </details>



![](https://arxiv.org/html/2502.14768/extracted/6220745/figure/base_instruct/base_length.png)

> 🔼 This figure compares the generalization capabilities of Reinforcement Learning (RL) and Reject sampling Fine-Tuning (RFT).  The x-axis represents the memorization score (LiMem(f;Tr)), measuring how much a model relies on memorizing the training data rather than learning underlying reasoning principles. The y-axis shows the test accuracy. RFT initially shows higher test accuracy but quickly increases its memorization score, demonstrating superficial learning focused on memorizing answer formats.  In contrast, RL achieves higher test accuracy with minimal or even negative increases in the memorization score, indicating a genuine understanding of reasoning principles and superior generalization ability.
> <details>
> <summary>read the caption</summary>
> Figure 6: RFT memorizes while RL generalizes. RFT (Reject sampling Fine-Tuning) slightly improves test accuracy at the expense of rapidly increasing L⁢i⁢M⁢e⁢m⁢(f;T⁢r)𝐿𝑖𝑀𝑒𝑚𝑓𝑇𝑟LiMem(f;Tr)italic_L italic_i italic_M italic_e italic_m ( italic_f ; italic_T italic_r ), indicating it mainly learns superficial answer format than geniue reasoning. In contrast, RL achieves higher test accuracy with minimal or even negative increase in L⁢i⁢M⁢e⁢m⁢(f;T⁢r)𝐿𝑖𝑀𝑒𝑚𝑓𝑇𝑟LiMem(f;Tr)italic_L italic_i italic_M italic_e italic_m ( italic_f ; italic_T italic_r ). Within the same L⁢i⁢M⁢e⁢m𝐿𝑖𝑀𝑒𝑚LiMemitalic_L italic_i italic_M italic_e italic_m interval, RL outperform RFT in test acc greatly, suggesting better generalization ability.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.8.8">
<tr class="ltx_tr" id="S3.T2.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.8.8.9.1" rowspan="2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T2.8.8.9.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.2.1">Difficulty by Number of People</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.8.8.9.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.8.8.9.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.1" style="padding-top:1.5pt;padding-bottom:1.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.10.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.8.8.10.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.11.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.11.1.1">o3-mini-high</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.11.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.83</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.8.8.11.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.94</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.12">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.12.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.12.1.1">o1-2024-12-17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.20</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.12.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.42</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.13">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.13.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.13.1.1">Deepseek-R1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.83</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.13.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.81</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.14.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.14.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.8.8.14.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.37</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.15">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.15.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.15.1.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.42</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.01</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.15.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.25</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.16">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.16.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.16.1.1">NuminaMath-7B-CoT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.13</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.16.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.08</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.17">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.17.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.17.1.1">Deepseek-Math-7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.35</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.17.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.10</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.18">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.18.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.18.1.1">Qwen2.5-Base-7B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.8.8.18.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.14</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.19.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.19.1.1">Qwen2.5-7B-Instruct-1M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.2" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.3" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.4" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.5" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.6" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.7" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.19.8" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.01</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.8.8.19.9" style="padding-top:1.5pt;padding-bottom:1.5pt;">0.19</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8" style="background-color:#C8EBFF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.8.8.8.9" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.8.8.8.9.1" style="background-color:#C8EBFF;">+ <span class="ltx_text ltx_font_bold" id="S3.T2.8.8.8.9.1.1">Logic-RL</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.1.1" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.1.1.1.1.1" style="background-color:#C8EBFF;">0.99<sup class="ltx_sup" id="S3.T2.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.1.1.1.1.1" style="color:#006400;">↑0.50</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.2.2.2" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.2.2.2.2.1" style="background-color:#C8EBFF;">0.99<sup class="ltx_sup" id="S3.T2.2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.2.2.2.2.1.1.1" style="color:#006400;">↑0.59</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.3.3.3.3" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.3.3.3.3.1" style="background-color:#C8EBFF;">0.94<sup class="ltx_sup" id="S3.T2.3.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.3.3.3.3.1.1.1" style="color:#006400;">↑0.69</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.4.4.4.4" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.4.4.4.4.1" style="background-color:#C8EBFF;">0.92<sup class="ltx_sup" id="S3.T2.4.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.4.4.4.4.1.1.1" style="color:#006400;">↑0.81</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.5.5.5" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.5.5.5.5.1" style="background-color:#C8EBFF;">0.91<sup class="ltx_sup" id="S3.T2.5.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.5.5.5.5.1.1.1" style="color:#006400;">↑0.85</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.6" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.6.6.6.6.1" style="background-color:#C8EBFF;">0.80<sup class="ltx_sup" id="S3.T2.6.6.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.6.6.6.6.1.1.1" style="color:#006400;">↑0.78</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.7.7" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.7.7.7.7.1" style="background-color:#C8EBFF;">0.67<sup class="ltx_sup" id="S3.T2.7.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.7.7.7.7.1.1.1" style="color:#006400;">↑0.48</span></sup></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.8.8.8.8" style="padding-top:1.5pt;padding-bottom:1.5pt;"><span class="ltx_text" id="S3.T2.8.8.8.8.1" style="background-color:#C8EBFF;">0.89<sup class="ltx_sup" id="S3.T2.8.8.8.8.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.8.8.8.8.1.1.1" style="color:#006400;">↑0.70</span></sup></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various large language models (LLMs) on a dataset of Knights and Knaves (K&K) logic puzzles.  The models are tested across different difficulty levels of the puzzles, which are determined by the number of characters involved.  The table shows the average accuracy of each model across all difficulties, allowing for a direct comparison of their reasoning abilities.  The models compared include both those specifically designed for reasoning tasks and general-purpose LLMs.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of different models including reasoning models and general models on K&K logic puzzle across various difficulty.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S8.T3.1">
<tr class="ltx_tr" id="S8.T3.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S8.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.1.1.1">
<span class="ltx_p" id="S8.T3.1.1.1.1.1" style="width:398.3pt;">Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.2.1.1">
<span class="ltx_p" id="S8.T3.1.2.1.1.1" style="width:398.3pt;">A very special island is inhabited only by knights and knaves. Knights always tell the truth, and knaves always lie. Five residents (William, Chloe, Lily, Jack, and Logan) made the following statements: (1) William said: "William is a knight and Chloe is a knight." (2) Chloe said: "Lily is a knight." (3) Lily said: "William is a knave and Jack is a knight." (4) Jack said: "William is a knave." (5) Logan said: "Lily is a knave if and only if William is a knave." So
who is a knight and who is a knave?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.T3.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.3.1.1">
<span class="ltx_p" id="S8.T3.1.3.1.1.1" style="width:398.3pt;">Response: &lt;think&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.4.1.1">
<span class="ltx_p" id="S8.T3.1.4.1.1.1" style="width:398.3pt;">To solve this, let’s start analyzing the statements one by one, beginning with William’s statement since it’s a good starting point due to its self-referential nature.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.5.1.1">
<span class="ltx_p" id="S8.T3.1.5.1.1.1" style="width:398.3pt;">William’s statement: "William is a knight and Chloe is a knight."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.6.1.1">
<span class="ltx_p" id="S8.T3.1.6.1.1.1" style="width:398.3pt;">- If William is telling the truth (i.e., he is a knight), then both parts of his statement must be true. However, if William is a knight, the statement "William is a knight" is true, <span class="ltx_text" id="S8.T3.1.6.1.1.1.1" style="color:#FF0000;">but the statement "Chloe is a knight" cannot determine the truth about Chloe at this point since we haven’t analyzed Chloe’s statement yet.<span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.1.6.1.1.1.1.1" style="color:#0000FF;"> (Hesitate)</span><span class="ltx_text" id="S8.T3.1.6.1.1.1.1.2" style="color:#0000FF;">
</span></span> Therefore, William cannot be a knight because it would lead to a contradiction.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.7.1.1">
<span class="ltx_p" id="S8.T3.1.7.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.8.1.1">
<span class="ltx_p" id="S8.T3.1.8.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="S8.T3.1.8.1.1.1.1" style="color:#FF0000;">Let’s test both possibilities.<span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.1.8.1.1.1.1.1" style="color:#0000FF;"> (Explore)</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.9.1.1">
<span class="ltx_p" id="S8.T3.1.9.1.1.1" style="width:398.3pt;">Testing Chloe as a knight: If Chloe is a knight, then her statement "Lily is a knight" is true, so Lily is a knight.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.10.1.1">
<span class="ltx_p" id="S8.T3.1.10.1.1.1" style="width:398.3pt;">Analyzing Lily’s statement: "William is a knave and Jack is a knight."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.11.1.1">
<span class="ltx_p" id="S8.T3.1.11.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.12.1.1">
<span class="ltx_p" id="S8.T3.1.12.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="S8.T3.1.12.1.1.1.1" style="color:#FF0000;">Now, we have determined:<span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.1.12.1.1.1.1.1" style="color:#0000FF;"> (Summerize)</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.13.1.1">
<span class="ltx_p" id="S8.T3.1.13.1.1.1" style="width:398.3pt;">- William is a knave.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.14.1.1">
<span class="ltx_p" id="S8.T3.1.14.1.1.1" style="width:398.3pt;">- Chloe is a knight.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.15.1.1">
<span class="ltx_p" id="S8.T3.1.15.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.16.1.1">
<span class="ltx_p" id="S8.T3.1.16.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="S8.T3.1.16.1.1.1.1" style="color:#FF0000;">Let’s verify all statements:</span> <span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.1.16.1.1.1.2" style="color:#0000FF;"> (Verify)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.17.1.1">
<span class="ltx_p" id="S8.T3.1.17.1.1.1" style="width:398.3pt;">- "William is a knight and Chloe is a knight" (False, since William is a knave).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T3.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.18.1.1">
<span class="ltx_p" id="S8.T3.1.18.1.1.1" style="width:398.3pt;">- "Lily is a knight" (True).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T3.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S8.T3.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T3.1.19.1.1">
<span class="ltx_p" id="S8.T3.1.19.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases an example of a large language model's reasoning process after undergoing reinforcement learning.  The model demonstrates several key emergent reasoning behaviors not present in its original training data.  These include: hesitation and self-verification (expressed through phrases such as 'I am not entirely sure; let's re-check this step'), multi-path exploration and backtracking (where the model tries multiple solution approaches and revisits earlier steps), summarization of its reasoning process (condensing the reasoning into key points), and explicit verification of steps. The example problem is a logic puzzle involving knights and knaves, requiring the model to use deductive reasoning to determine the identity of each character based on their statements. The model's response shows a thought process that resembles human problem-solving strategies, involving trial and error, exploration of different possibilities, and self-correction. This highlights the model's ability to develop sophisticated reasoning skills during reinforcement learning without explicit instruction.
> <details>
> <summary>read the caption</summary>
> Table 3: An example of a large language model trained through reinforcement learning naturally exhibiting reasoning behaviors such as hesitation, exploration, summarization, and verification, even though these behaviors were not present in the training data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S8.T4.1">
<tr class="ltx_tr" id="S8.T4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S8.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.1.1.1">
<span class="ltx_p" id="S8.T4.1.1.1.1.1" style="width:398.3pt;">Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.2.1.1">
<span class="ltx_p" id="S8.T4.1.2.1.1.1" style="width:398.3pt;">A very special island is inhabited only by knights and knaves. Knights always tell the truth, and knaves always lie. Three residents (Jack, Samuel, Lily) made the following statements: (1) Jack said, "If Samuel is a knight, then Lily is a knave." (2) Samuel said, "If Jack is a knight, then Lily is a knave." (3) Lily said, "Jack is a knight." So who is a knight and who is a knave?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.T4.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.3.1.1">
<span class="ltx_p" id="S8.T4.1.3.1.1.1" style="width:398.3pt;">Response: &lt;think&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.4.1.1">
<span class="ltx_p" id="S8.T4.1.4.1.1.1" style="width:398.3pt;">Let’s analyze the statements step by step.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.5.1.1">
<span class="ltx_p" id="S8.T4.1.5.1.1.1" style="width:398.3pt;">1. Jack’s statement is: "If Samuel is a knight then Lily is a knave."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.6.1.1">
<span class="ltx_p" id="S8.T4.1.6.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.7.1.1">
<span class="ltx_p" id="S8.T4.1.7.1.1.1" style="width:398.3pt;">Now that we know Samuel is a knave, let’s analyze Samuel’s statement again:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.8.1.1">
<span class="ltx_p" id="S8.T4.1.8.1.1.1" style="width:398.3pt;">- Samuel’s statement: "If Jack is a knight then Lily is a knave."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T4.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.9.1.1">
<span class="ltx_p" id="S8.T4.1.9.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="S8.T4.1.9.1.1.1.1" style="color:#FF0000;">- An implication "If P then Q" is false only when P is true and Q is false.<span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T4.1.9.1.1.1.1.1" style="color:#0000FF;"> (Formula Application)</span></span> Here, "If Jack is a knight then Lily is a knave" is false when Jack is a knight and Lily is not a knave. This is consistent with our previous conclusion that Jack is a knight and Lily is a knight.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S8.T4.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T4.1.10.1.1">
<span class="ltx_p" id="S8.T4.1.10.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an example of how the model uses logical formulas to solve a Knights and Knaves puzzle. It demonstrates the model's ability to apply formal logical reasoning, such as the implication formula ('If P, then Q'), in solving the puzzle. This is particularly notable because these formal logical reasoning skills are not explicitly taught or demonstrated in the training data.  The example shows the model's step-by-step reasoning process, where it analyzes the statements given by the characters in the puzzle and reaches a conclusion based on its understanding of the logic involved. This illustrates the emergence of advanced reasoning capabilities in the model that are not present in its initial training.
> <details>
> <summary>read the caption</summary>
> Table 4: An example of using logical formulas to solve a Knights and Knaves puzzle.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S8.T5.1">
<tr class="ltx_tr" id="S8.T5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S8.T5.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.1.1.1">
<span class="ltx_p" id="S8.T5.1.1.1.1.1" style="width:398.3pt;">Question:A very special island is inhabited only by knights and knaves. Knights always tell the truth, and knaves
always lie. Six residents (Benjamin, Michael, Evelyn, Sophia, James, and Jacob) made the following statements: (1) Benjamin said, "If Sophia is a knight, then Evelyn is also a knight." (2) Michael said, "Benjamin is a knave, or James is a knight." (3) Evelyn said, "Sophia is a knight, or James is a knave." (4) Sophia said, "If Michael is a knave, then James is a knight." (5) James said, "Sophia is a knight, or Evelyn is a knight." (6) Jacob said, "Benjamin is a knave, and Sophia is a knight." So who is a knight and who is a knave?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S8.T5.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.2.1.1">
<span class="ltx_p" id="S8.T5.1.2.1.1.1" style="width:398.3pt;">Response: &lt;think&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.3.1.1">
<span class="ltx_p" id="S8.T5.1.3.1.1.1" style="width:398.3pt;">Let’s analyze each statement step-by-step based on whether the speaker is a knight or a knave.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.4.1.1">
<span class="ltx_p" id="S8.T5.1.4.1.1.1" style="width:398.3pt;">1. Benjamin: "If Sophia is a knight then Evelyn is a knight"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.5.1.1">
<span class="ltx_p" id="S8.T5.1.5.1.1.1" style="width:398.3pt;">- If Benjamin is a knight, then the statement must be true. Thus, if Sophia is a knight, Evelyn has to be a knight.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.6.1.1">
<span class="ltx_p" id="S8.T5.1.6.1.1.1" style="width:398.3pt;">2. Michael: "Benjamin is a knave or James is a knight"</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.7.1.1">
<span class="ltx_p" id="S8.T5.1.7.1.1.1" style="width:398.3pt;">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S8.T5.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.8.1.1">
<span class="ltx_p" id="S8.T5.1.8.1.1.1" style="width:398.3pt;">From Jacob’s statement, if Jacob is a knight then Sophia must be a knight and Benjamin must be a knave.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S8.T5.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T5.1.9.1.1">
<span class="ltx_p" id="S8.T5.1.9.1.1.1" style="width:398.3pt;"><span class="ltx_ERROR undefined" id="S8.T5.1.9.1.1.1.1">{CJK*}</span>UTF8gbsn
<span class="ltx_text" id="S8.T5.1.9.1.1.1.2" style="color:#FF0000;">以卡文的方式推理: </span></span>
<span class="ltx_p" id="S8.T5.1.9.1.1.2"><span class="ltx_text" id="S8.T5.1.9.1.1.2.1" style="color:#FF0000;">- 假设 Jacob 是骑士，那么 Jacob 的声明 "Benjamin 是背叛者且 Sophia 是骑士" 就是真的。这意味着 Benjamin 是背叛者而 Sophia 是骑士。</span></span>
<span class="ltx_p" id="S8.T5.1.9.1.1.3"><span class="ltx_text" id="S8.T5.1.9.1.1.3.1" style="color:#FF0000;">- 既然 Sophia 是骑士，根据 Benjamin 的声明 "如果 Sophia 是骑士那么 Evelyn 也是骑士"，Evelyn 也是骑士。</span></span>
<span class="ltx_p" id="S8.T5.1.9.1.1.4">…</span>
<span class="ltx_p" id="S8.T5.1.9.1.1.5"><span class="ltx_text" id="S8.T5.1.9.1.1.5.1" style="color:#FF0000;">综上所述，Sophia, Evelyn, 和 Jacob 是骑士，而 Benjamin, Michael, 和 James 是背叛者。 <span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T5.1.9.1.1.5.1.1" style="color:#0000FF;"> (Language Switching)</span></span></span>
<span class="ltx_p" id="S8.T5.1.9.1.1.6">…</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases an example of the model's reasoning process where it uses a mix of English and Chinese to solve a Knights and Knaves puzzle, highlighting the model's ability to incorporate different linguistic structures during its problem-solving steps.
> <details>
> <summary>read the caption</summary>
> Table 5: An example of our model used language switching to solve a Knights and Knaves puzzle.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14768/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14768/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}