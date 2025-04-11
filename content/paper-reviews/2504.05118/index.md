---
title: "VAPO: Efficient and Reliable Reinforcement Learning for Advanced Reasoning Tasks"
summary: "VAPO: Efficient RL for reasoning tasks, achieving state-of-the-art with stable training and enhanced performance in long-CoT scenarios."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05118 {{< /keyword >}}
{{< keyword icon="writer" >}} YuYue et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05118" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05118" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05118/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reinforcement learning(RL) plays a pivotal role in enhancing model performance for complex tasks, however, value-free methods have gained traction due to the difficulty in training reliable value models. Value-free methods do not involve learning a value model. Despite successes, value-based approaches have a higher ceiling if value model training challenges can be addressed, enabling precise credit assignment and enhanced training stability. Training a perfect value model in Long COT tasks faces challenges. First is non-trivial low-bias value model learning due to trajectory length and instability. Second is handling short and long responses simultaneously with distinct preferences. Last is the sparsity of the reward signal. 



To fully unleash value-based methods in reasoning tasks, this paper presents Value Augmented Proximal Policy Optimization (**VAPO**), a value-based RL training framework. **VAPO not only demonstrates remarkable superiority in terms of performance but also showcases enhanced training efficiency**. It introduces **Length-adaptive GAE, which adjusts the A parameter in GAE computation based on response lengths. Techniques from prior work such as Clip-Higher and Token-level Loss from DAPO, Value-Pretraining and Decoupled-GAE from VC-PPO, self-imitation learning from SIL, and Group-Sampling from GRPO were integrated.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VAPO is the first value-based RL framework to surpass value-free methods in long-CoT tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Length-adaptive GAE is proposed to address the distinct bias-variance trade-off requirements with highly variable lengths. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Techniques from prior works such as Clip-Higher from DAPO, Value-Pretraining from VC-PPO, self-imitation learning from SIL, and Group-Sampling from GRPO were integrated. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **VAPO, which outperforms previous methods** in long-CoT reasoning tasks. It offers researchers insights into addressing challenges like value model bias and reward sparsity, paving the way for more effective reinforcement learning in complex reasoning tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05118/extracted/6342259/fig/score.png)

> 🔼 This figure displays the performance of the VAPO model on the AIME 2024 benchmark dataset.  The VAPO model, based on the Qwen-2.5-32B language model, significantly outperforms the previous state-of-the-art (SOTA) method, DAPO.  The y-axis represents the accuracy achieved on the AIME 2024 dataset, while the x-axis shows the number of gradient update steps during training.  The graph clearly illustrates VAPO's superior performance and faster convergence, achieving high accuracy with far fewer training steps than DAPO.
> <details>
> <summary>read the caption</summary>
> Figure 1: AIME 2024 scores of VAPO on the Qwen2.5-32B base model, demonstrates significant superiority over the previous state-of-the-art (SOTA) method DAPO, achieving this with notably fewer training stepso. The x-axis denotes the gradient update steps.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1"><math alttext="\textbf{AIME24}_{\text{avg@32}}" class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><msub id="S5.T1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T1.1.1.1.m1.1.1.2" xref="S5.T1.1.1.1.m1.1.1.2a.cmml">AIME24</mtext><mtext id="S5.T1.1.1.1.m1.1.1.3" xref="S5.T1.1.1.1.m1.1.1.3a.cmml">avg@32</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T1.1.1.1.m1.1.1.2a.cmml" xref="S5.T1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.1.1.1.m1.1.1.2">AIME24</mtext></ci><ci id="S5.T1.1.1.1.m1.1.1.3a.cmml" xref="S5.T1.1.1.1.m1.1.1.3"><mtext id="S5.T1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S5.T1.1.1.1.m1.1.1.3">avg@32</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\textbf{AIME24}_{\text{avg@32}}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">AIME24 start_POSTSUBSCRIPT avg@32 end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.2.1.1">Vanilla PPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.2.1.2">5</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S5.T1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.3.2.1.1">DeepSeek-R1-Zero-Qwen-32B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.3.2.2">47</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S5.T1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.4.3.1.1">DAPO</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.4.3.2">50</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.5.4.1">VAPO w/o Value-Pretraining</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.5.4.2">11</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.5">
<td class="ltx_td ltx_align_left" id="S5.T1.1.6.5.1">VAPO w/o Decoupled-GAE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.6.5.2">33</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.6">
<td class="ltx_td ltx_align_left" id="S5.T1.1.7.6.1">VAPO w/o Length-adaptive GAE</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.7.6.2">45</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.8.7">
<td class="ltx_td ltx_align_left" id="S5.T1.1.8.7.1">VAPO w/o Clip-Higher</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.8.7.2">46</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.9.8">
<td class="ltx_td ltx_align_left" id="S5.T1.1.9.8.1">VAPO w/o Token-level Loss</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.9.8.2">53</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.10.9">
<td class="ltx_td ltx_align_left" id="S5.T1.1.10.9.1">VAPO w/o Positive Example LM Loss</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.10.9.2">54</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.11.10">
<td class="ltx_td ltx_align_left" id="S5.T1.1.11.10.1">VAPO w/o Group-Sampling</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.11.10.2">55</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.12.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.1.12.11.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.12.11.1.1">VAPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.1.12.11.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.12.11.2.1">60</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the ablation study results for the VAPO model. It shows the impact of removing each of the seven key components of VAPO on the model's performance, as measured by the average AIME24 score (@32). The results demonstrate the contribution of each component to the overall performance gain achieved by VAPO.
> <details>
> <summary>read the caption</summary>
> Table 1: Abalation results of VAPO
> </details>





### In-depth insights


#### VAPO: RL for Reasoning
**VAPO (Value-based Augmented Proximal Policy Optimization) is presented as a novel RL framework tailored for reasoning models**. It tackles challenges in long chain-of-thought (CoT) reasoning, particularly issues like value model bias, heterogeneous sequence lengths, and reward sparsity. **VAPO outperforms value-free methods** by enabling precise credit assignment and reducing variance. The method systematically addresses the technical issues in sequence dynamics, instability, and reward signals which allows enhanced performance.

#### Value Model Bias
**Value model bias** emerges as a critical challenge in reinforcement learning, particularly within long-chain reasoning tasks. Initializing the value model with a reward model introduces a mismatch, biasing value estimates. The reward model focuses on the terminal reward, leading to lower scores for earlier tokens, while the value model predicts cumulative rewards, creating an optimistic bias that accumulates over time. This bias can be exacerbated by standard techniques like GAE with high lambda values, where the discounting effect diminishes the influence of true rewards, causing the value function to rely heavily on biased bootstrapping. Addressing this bias is crucial for stable and effective training, as it undermines the value model's ability to provide reliable variance reduction, ultimately hindering performance in complex reasoning scenarios. Properly pre-training the value model is essential to alleviate the bias.

#### Adaptive Length GAE
The 'Adaptive Length GAE' idea seeks to refine advantage estimation in RL, particularly where sequence lengths vary. Standard GAE uses a fixed decay (lambda), which may be suboptimal for both short and long sequences. **Short sequences might suffer from high variance, while long ones accumulate bias due to bootstrapping**.  Adaptive Lambda dynamically adjusts the GAE parameter based on sequence length, potentially balancing the bias-variance trade-off more effectively. In shorter responses, there is a need to reduce variance and in longer responses, bias should be reduced. The aim is to ensure uniform distributions of TD errors across sequences of different lengths.  The idea of **length-adaptive parameters** is promising. A similar concept can be applied to other aspects of RL or sequence modeling where input or output length strongly influences model behavior.  The effectiveness hinges on choosing an appropriate adaptation function to map sequence length to lambda values. Therefore, **the optimal adaptation is problem-dependent**.  

#### Clip-Higher Insight
**Clip-Higher** is a method used to address the entropy collapse issue during PPO and GRPO training. The **Clip-Higher** is first proposed in DAPO [29]. **Clip-Higher** decouples the lower and higher clipping ranges as Elow and Ehigh. increasing the value of high to leave more room for the increase of low-probability tokens. We opt to keep Elow relatively small, because increasing it will suppress the probability of these tokens to 0, resulting in the collapse of the sampling space. By increasing the Ehigh value, the algorithm allows for greater exploration of the action space, mitigating the premature convergence to suboptimal policies. Conversely, maintaining a smaller Elow value prevents the complete suppression of low-probability actions, preserving a degree of diversity in the sampling process. This approach aims to strike a balance between exploration and exploitation, enabling the model to discover more effective strategies while avoiding the pitfalls of entropy collapse.

#### Stable Dynamics
**Stable dynamics** in reinforcement learning refers to the consistent and predictable behavior of the learning process. It implies that the model converges to a desirable policy without wild oscillations or collapses. **Stability** is crucial for reliable training, especially in complex tasks. Unstable dynamics can lead to poor performance and hinder the learning process. Achieving **stable dynamics** often requires careful tuning of hyperparameters, such as learning rates and clipping ranges. Techniques like **value clipping** and **trust region optimization** are employed to prevent large policy updates that can destabilize training. Additionally, **regularization methods** help to prevent overfitting and promote smoother learning curves. The **evaluation of stability** involves monitoring metrics like reward, entropy, and policy divergence during training. A stable learning process exhibits gradual improvement and minimal fluctuations in these metrics, indicating a robust and reliable training regime.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05118/extracted/6342259/fig/length.png)

> 🔼 This figure shows the mean response length over training steps for both VAPO and DAPO.  It illustrates how the average length of the model's generated responses changes as the model is trained using reinforcement learning.  The plot helps visualize the effects of the algorithms (VAPO and DAPO) on response length and allows for a comparison of their training dynamics in terms of response generation.
> <details>
> <summary>read the caption</summary>
> (a) Mean response length.
> </details>



![](https://arxiv.org/html/2504.05118/extracted/6342259/fig/reward.png)

> 🔼 This plot displays the reward score during the training process of the VAPO and DAPO models. The reward score is a crucial metric reflecting model performance on the reasoning task, where a higher score indicates better performance. The x-axis represents the training steps, showing the progression of training over time. The y-axis displays the reward score achieved by each model at each step. The plot visualizes how the reward score changes for both models across training steps, illustrating the learning progress and relative performance improvement of VAPO compared to DAPO.
> <details>
> <summary>read the caption</summary>
> (b) Reward score.
> </details>



![](https://arxiv.org/html/2504.05118/extracted/6342259/fig/entropy.png)

> 🔼 Figure 2(c) displays the generation entropy over training steps for both VAPO and DAPO. Generation entropy measures the uncertainty or randomness in the model's output. Lower entropy indicates less uncertainty and more focused generation, while higher entropy indicates more exploration.  The plot shows how the entropy changes during training, reflecting the balance between exploration and exploitation strategies employed by the models. The comparison between VAPO and DAPO's entropy curves provides insight into their training stability and convergence behaviors.
> <details>
> <summary>read the caption</summary>
> (c) Generation entropy.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05118/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05118/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}