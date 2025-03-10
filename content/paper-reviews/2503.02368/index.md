---
title: "Iterative Value Function Optimization for Guided Decoding"
summary: "IVO: Iterative Value Function Optimization for Guided Decoding"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02368 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenhua Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Reinforcement Learning from Human Feedback (RLHF)** aligns language models with human values, but is computationally intensive. **Guided decoding** offers a more cost-effective alternative, particularly with value-guided methods. Accuracy of the value function is crucial for these methods, as inaccuracies can lead to suboptimal decision-making and degraded performance. Existing methods struggle with estimating the optimal value function accurately, limiting their effectiveness. 



To tackle these challenges, the paper introduces **Iterative Value Function Optimization (IVO)**, a framework with two key components: **Monte Carlo Value Estimation** reduces variance by exploring diverse trajectories. **Iterative On-Policy Optimization** progressively improves value estimation by collecting trajectories from value-guided policies. Experiments show that IVO enhances the effectiveness of value-guided decoding, achieving alignment with reduced computational costs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Iterative Value Function Optimization (IVO) for more accurate value estimation and enhanced exploration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} IVO combines Monte Carlo Value Estimation and Iterative On-Policy Optimization to improve value estimation and exploration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates IVO's effectiveness in text summarization, dialogue, and instruction following, showing improvements over existing methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Value-guided decoding** offers a cost-effective way to control language models, but inaccuracies hinder its performance. This paper presents Iterative Value Function Optimization(IVO), a new way to address these inaccuracies, achieving alignment while reducing computational costs.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02368/x1.png)

> 🔼 This figure illustrates how different decoding strategies impact the distribution of model outputs.  The base policy, without any guidance, produces outputs with a broad range of rewards, represented by lighter colors.  Using an estimated value function, guided decoding shifts the distribution towards higher-reward areas (darker colors).  Ideally, an optimal value function would generate outputs with maximum rewards (darkest region), demonstrating the effectiveness of value-guided decoding.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of different decoding strategies in the output space. Given a query, the base policy generates outputs with suboptimal rewards (lighter regions). Guided decoding with an estimated value function shifts the distribution towards higher-reward regions, while the optimal value function would guide the policy to achieve maximum rewards (darkest regions).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.1.1" style="font-size:90%;">Decoding Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.1.1.2.1" style="font-size:90%;">GPT-4 Win-Rate (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.2.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.1.1"><span class="ltx_text" id="S5.T1.2.2.1.1.1" style="font-size:90%;">FUDGE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.1.2"><span class="ltx_text" id="S5.T1.2.2.1.2.1" style="font-size:90%;">64.85</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.3.2">
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.2.1"><span class="ltx_text" id="S5.T1.2.3.2.1.1" style="font-size:90%;">VAS</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.3.2.2"><span class="ltx_text" id="S5.T1.2.3.2.2.1" style="font-size:90%;">68.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.4.3">
<td class="ltx_td ltx_align_center" id="S5.T1.2.4.3.1"><span class="ltx_text" id="S5.T1.2.4.3.1.1" style="font-size:90%;">DPO</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.4.3.2"><span class="ltx_text" id="S5.T1.2.4.3.2.1" style="font-size:90%;">72.45</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.5.4">
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.4.1"><span class="ltx_text" id="S5.T1.2.5.4.1.1" style="font-size:90%;">IPO</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.5.4.2"><span class="ltx_text" id="S5.T1.2.5.4.2.1" style="font-size:90%;">66.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.6.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.2.6.5.1"><span class="ltx_text ltx_font_bold" id="S5.T1.2.6.5.1.1" style="font-size:90%;">IVO (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.2.6.5.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.6.5.2.1" style="font-size:90%;">77.52</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of different methods for generating responses in a multi-turn dialogue setting, specifically focusing on their alignment with human preferences.  The methods are evaluated against a baseline ('base policy') using GPT-4 as the judge to determine which method produces more desirable responses. The evaluation is done using the 'GPT-4 Win Rate' metric, reflecting the percentage of times a given method's response is preferred over the baseline by GPT-4. This helps assess the effectiveness of each method in improving response quality and alignment with desired characteristics compared to the baseline.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of different methods against base policy using GPT-4-as-the-judge on the Multi-turn Dialogue dataset.
> </details>





### In-depth insights


#### IVO: Guided Decode
While the provided document doesn't have a heading named 'IVO: Guided Decode,' the core idea revolves around using value functions to guide the decoding process in language models. The central problem with **value-guided decoding lies in the inaccuracy of value function estimation**. Traditional methods struggle to accurately estimate the optimal value function, leading to suboptimal decision-making. IVO addresses this by employing **Monte Carlo Value Estimation, reducing variance through diverse trajectory exploration**. Also, **Iterative On-Policy Optimization progressively improves value estimation by collecting trajectories from value-guided policies**. The framework aims at achieving more precise value function estimation. This optimization promises enhanced decoding performance in language models.

#### Monte Carlo Values
The Monte Carlo Value Estimation is a method to reduce variance by exploring diverse trajectories. It achieves this by generating multiple outputs from a given prompt using stochastic sampling with the base policy. These outputs are then evaluated using a reward model. The estimated value for a state is defined as the reward for the current trajectory. This process aims to improve the accuracy of value function estimation by broadening the exploration of potential trajectories, **mitigating the limitations of relying on a single trajectory** and enabling a more robust assessment of state values for guiding language model decoding. Through sampling, the **coverage of potential outcomes** is greatly improved.

#### Iterative RLHF
**Iterative Reinforcement Learning from Human Feedback (RLHF)** represents a dynamic approach to align language models with human preferences.  It addresses limitations of static RLHF by continuously refining both the reward model and policy through repeated interactions. This iterative process enhances the model's ability to generate responses that are not only aligned with initial human feedback but also progressively adapted to evolving preferences and nuanced contexts.  The core principle involves alternating between collecting preference data, training/updating the reward model, and optimizing the policy against the improved reward signal. This cycle enables the model to explore a wider range of behaviors and fine-tune its responses to better meet human expectations over time, leading to more robust and reliable alignment compared to single-pass RLHF methods.

#### Value Alignment
**Value alignment in language models is crucial for ensuring that AI systems behave ethically and responsibly.** It involves aligning the model's outputs with human values and societal norms. Techniques like Reinforcement Learning from Human Feedback (RLHF) are used to fine-tune models based on human preferences, but they can be computationally expensive and unstable. **Guided decoding offers a more efficient alternative by steering model outputs without retraining, but it heavily relies on accurate value function estimation.** Challenges arise from the difficulty of accessing the optimal value function, necessitating innovative approaches like Monte Carlo Value Estimation to reduce variance and Iterative On-Policy Optimization to progressively improve value estimation. Balancing reward maximization with KL divergence constraints is essential for preserving the model's original capabilities while promoting alignment. Addressing safety concerns and preventing harmful content generation is a key aspect of value alignment, often involving safety benchmarks and adversarial training. Furthermore, **the transferability of value functions across different model sizes and tasks is an important consideration for practical deployment.** Ensuring robustness against jailbreak attacks and maintaining coherence with intended values are ongoing research areas. Ultimately, **value alignment aims to create AI systems that are not only capable but also trustworthy and beneficial to society.**

#### Model Safety
**Model safety is paramount**, especially with the increasing capabilities of large language models (LLMs).  Ensuring that LLMs are aligned with human values and avoid generating harmful, biased, or factually incorrect content is crucial.  Techniques like reinforcement learning from human feedback (RLHF) are employed to steer models towards desired behaviors, but can be computationally expensive.  Value-guided decoding methods offer a cost-effective alternative by influencing model outputs without retraining. Iterative Value Function Optimization (IVO) seeks to improve the accuracy of value functions used in guided decoding, potentially enhancing model safety by reducing suboptimal decision-making.  Safety measures should address issues like toxicity, misinformation, and adversarial attacks, ensuring responsible and ethical use of language models in various applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02368/x2.png)

> 🔼 This figure shows the results of different methods on the summarization task, illustrating the trade-off between reward and KL divergence.  The x-axis represents the KL divergence between the guided policy and the base policy, while the y-axis represents the average reward.  Different colored lines represent different methods (IVO, FUDGE, VAS, ARGS, DPO, IPO). The figure demonstrates how each method performs under varying degrees of KL divergence, showing the balance between achieving high rewards and maintaining closeness to the original policy distribution.
> <details>
> <summary>read the caption</summary>
> (a) Summarization
> </details>



![](https://arxiv.org/html/2503.02368/x3.png)

> 🔼 The figure shows the reward versus KL divergence for different methods on a multi-turn dialogue task.  It compares the performance of several guided decoding methods (IVO, FUDGE, VAS, ARGS, DPO, IPO) against the base policy.  The x-axis represents the KL divergence (a measure of difference between the guided policy and the base policy), and the y-axis represents the reward achieved by each method. The plot illustrates how each method balances the trade-off between generating high-reward responses and maintaining similarity to the base policy. IVO consistently achieves higher rewards than other methods across various KL divergence levels.
> <details>
> <summary>read the caption</summary>
> (b) Multi-turn Dialogue
> </details>



![](https://arxiv.org/html/2503.02368/x4.png)

> 🔼 This figure displays the performance of different language model decoding methods across two tasks: summarization and multi-turn dialogue.  The x-axis represents the KL divergence (a measure of difference) between the policy guided by the value function and the base policy. A lower KL divergence indicates that the guided policy is closer to the base policy. The y-axis represents the average reward, reflecting the quality of the generated text. Each line represents a different decoding method, showing how its reward changes with varying degrees of divergence from the base policy.  The plots reveal how different methods balance reward and similarity to the base policy.
> <details>
> <summary>read the caption</summary>
> Figure 2: Reward vs. KL divergence for different methods on (a) summarization and (b) multi-turn dialogue.
> </details>



![](https://arxiv.org/html/2503.02368/x5.png)

> 🔼 The figure shows the comparison of different value functions using value-guided blockwise beam search on the summarization task.  The x-axis represents the different methods used, including ARGS, FUDGE, VAS, and IVO (the proposed method). The y-axis represents the average reward achieved by each method. The bars show that IVO achieves the highest average reward, demonstrating its superiority over the baseline methods in the summarization task.
> <details>
> <summary>read the caption</summary>
> (a) Summarization
> </details>



![](https://arxiv.org/html/2503.02368/x6.png)

> 🔼 The figure shows the comparison of different methods on the multi-turn dialogue task in terms of reward versus KL divergence.  The x-axis represents the KL divergence from the base policy, measuring how much the guided policy deviates from the original model's behavior. The y-axis represents the average reward achieved by each method, reflecting the quality of the generated responses based on human preference judgments.  Different methods are represented by different colored lines. The figure demonstrates how the reward varies as the deviation from the base policy increases, and which method maintains the best reward at different KL divergence levels.
> <details>
> <summary>read the caption</summary>
> (b) Multi-turn Dialogue
> </details>



![](https://arxiv.org/html/2503.02368/x7.png)

> 🔼 This figure shows the comparison of different value functions using the value-guided blockwise beam search method on the instruction-following task. It displays the average reward achieved by different models on this task: Base, ARGS, FUDGE, VAS, and IVO (with and without iterative on-policy optimization). The chart visually compares their performance, allowing for easy understanding of how IVO performs against other methods in aligning language models with instructions.
> <details>
> <summary>read the caption</summary>
> (c) Instruction Following
> </details>



![](https://arxiv.org/html/2503.02368/x8.png)

> 🔼 This figure compares the performance of different value function optimization methods on three tasks: text summarization, multi-turn dialogue, and instruction following.  Each bar represents the average reward achieved by a particular method, with taller bars signifying better performance.  The leftmost bar in each group represents the baseline using a base policy only.  The methods compared are ARGS, FUDGE, VAS, IVO (with iterative on-policy optimization), and IVO* (IVO without the iterative component).  The figure helps illustrate the effectiveness of the iterative approach used in IVO compared to other value function estimation techniques and how this affects downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of different value functions using value-guided blockwise beam search on summarization (left), multi-turn dialogue (middle) and instruction following (right). IVO∗ denotes IVO without iterative on-policy optimization.
> </details>



![](https://arxiv.org/html/2503.02368/x9.png)

> 🔼 This figure shows the ablation study on the number of sampled trajectories in multi-turn dialogue using blockwise beam search.  The x-axis represents the number of sampled trajectories and the y-axis represents the average reward.  The different colored lines represent different methods being compared. The purpose is to demonstrate the impact of increasing the number of trajectories on the model's performance.
> <details>
> <summary>read the caption</summary>
> (a) Number of ST
> </details>



![](https://arxiv.org/html/2503.02368/x10.png)

> 🔼 This figure shows the impact of the number of training iterations on the performance of the Iterative Value Function Optimization (IVO) method. The x-axis represents the number of training iterations, and the y-axis represents the average reward achieved by the model. The graph shows that as the number of training iterations increases, the average reward also increases, indicating that the iterative refinement of the value function improves the model's performance.
> <details>
> <summary>read the caption</summary>
> (b) Number of TI
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.2.1">Model Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.3.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.4.1">IVO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.1.1.1"><math alttext="\boldsymbol{\Delta}" class="ltx_Math" display="inline" id="S6.T2.1.1.1.m1.1"><semantics id="S6.T2.1.1.1.m1.1a"><mi id="S6.T2.1.1.1.m1.1.1" xref="S6.T2.1.1.1.m1.1.1.cmml">𝚫</mi><annotation-xml encoding="MathML-Content" id="S6.T2.1.1.1.m1.1b"><ci id="S6.T2.1.1.1.m1.1.1.cmml" xref="S6.T2.1.1.1.m1.1.1">𝚫</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.1.1.1.m1.1c">\boldsymbol{\Delta}</annotation><annotation encoding="application/x-llamapun" id="S6.T2.1.1.1.m1.1d">bold_Δ</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.1.2.1.1">1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.1.2">-7.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.1.3">3.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.2.1.4.1">11.49</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.1.3.2.1">3B</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.2.2">1.56</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.2.3">13.34</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.2.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.3.2.4.1">11.78</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T2.1.4.3.1">8B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.4.3.2">7.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.4.3.3">20.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.4.3.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.4.3.4.1">12.75</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different sized language models (1B, 3B, and 8B parameters) on an instruction-following task.  The comparison is between a baseline model (base policy) and a model enhanced with value-guided blockwise beam search.  Crucially, the value function used for the enhancement was trained on data from the 3B parameter model. The △ column shows the absolute performance improvement of the value-guided model compared to the base model.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between the base policy and value-guided blockwise beam search across different model sizes (1B, 3B, and 8B) on the instruction-following task. The value function is trained using data collected from the 3B base policy. The 𝚫𝚫\boldsymbol{\Delta}bold_Δ column represents the absolute performance improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.2.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T3.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.2.1.1.2.1" style="font-size:90%;">Safety Rate (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.2.2.1.1"><span class="ltx_text" id="S6.T3.2.2.1.1.1" style="font-size:90%;">Aligned-Llama-3</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.2.1.2"><span class="ltx_text" id="S6.T3.2.2.1.2.1" style="font-size:90%;">92.87</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.3.2.1"><span class="ltx_text" id="S6.T3.2.3.2.1.1" style="font-size:90%;">+ Aligned Value Function</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.2.3.2.2"><span class="ltx_text" id="S6.T3.2.3.2.2.1" style="font-size:90%;">96.14</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.4.3.1">
<span class="ltx_text" id="S6.T3.2.4.3.1.1" style="font-size:90%;">+ </span><span class="ltx_text ltx_font_bold" id="S6.T3.2.4.3.1.2" style="font-size:90%;">Unaligned Value Function</span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T3.2.4.3.2"><span class="ltx_text ltx_font_bold" id="S6.T3.2.4.3.2.1" style="font-size:90%;">97.48</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.2.5.4.1"><span class="ltx_text" id="S6.T3.2.5.4.1.1" style="font-size:90%;">Unaligned-Llama-3</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.2.5.4.2"><span class="ltx_text" id="S6.T3.2.5.4.2.1" style="font-size:90%;">65.27</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.6.5.1"><span class="ltx_text" id="S6.T3.2.6.5.1.1" style="font-size:90%;">+ Aligned Value Function</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.2.6.5.2"><span class="ltx_text" id="S6.T3.2.6.5.2.1" style="font-size:90%;">81.04</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.2.7.6.1">
<span class="ltx_text" id="S6.T3.2.7.6.1.1" style="font-size:90%;">+ </span><span class="ltx_text ltx_font_bold" id="S6.T3.2.7.6.1.2" style="font-size:90%;">Unaligned Value Function</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.2.7.6.2"><span class="ltx_text ltx_font_bold" id="S6.T3.2.7.6.2.1" style="font-size:90%;">86.17</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of safety rates for two versions of the Llama-3 language model: an aligned version and an unaligned version.  Each model version is evaluated in terms of its safety rate under three conditions: the model with its original value function, the model with an aligned value function (trained on responses from the aligned model), and the model with an unaligned value function (trained on responses from the unaligned model).  This allows for assessing the impact of different value functions on the safety performance of both aligned and unaligned models, providing insights into how value functions affect the overall safety of large language models.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of safety rates between aligned and unaligned Llama-3 models with different value functions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.6.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.6.7.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.6.7.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.6.7.1.2.1">Tokenwise</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.6.7.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.6.7.1.3.1">Blockwise (2)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.6.7.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.6.7.1.4.1">Blockwise (4)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.3.3.4">Summarization</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.1">2.7<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><mo id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><times id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.2">1.5<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.m1.1a"><mo id="A1.T4.2.2.2.m1.1.1" xref="A1.T4.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.m1.1b"><times id="A1.T4.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.3">1.0<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.3.3.3.m1.1"><semantics id="A1.T4.3.3.3.m1.1a"><mo id="A1.T4.3.3.3.m1.1.1" xref="A1.T4.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.m1.1b"><times id="A1.T4.3.3.3.m1.1.1.cmml" xref="A1.T4.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.6.6.4">Multi-turn Dialogue</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.4.4.1">4.4<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.4.4.1.m1.1"><semantics id="A1.T4.4.4.1.m1.1a"><mo id="A1.T4.4.4.1.m1.1.1" xref="A1.T4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.1.m1.1b"><times id="A1.T4.4.4.1.m1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.5.5.2">1.6<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.5.5.2.m1.1"><semantics id="A1.T4.5.5.2.m1.1a"><mo id="A1.T4.5.5.2.m1.1.1" xref="A1.T4.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.2.m1.1b"><times id="A1.T4.5.5.2.m1.1.1.cmml" xref="A1.T4.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.2.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.6.6.3">1.0<math alttext="\times" class="ltx_Math" display="inline" id="A1.T4.6.6.3.m1.1"><semantics id="A1.T4.6.6.3.m1.1a"><mo id="A1.T4.6.6.3.m1.1.1" xref="A1.T4.6.6.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.3.m1.1b"><times id="A1.T4.6.6.3.m1.1.1.cmml" xref="A1.T4.6.6.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.3.m1.1d">×</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the relative inference times for three different sampling strategies: Tokenwise Sampling, Blockwise Sampling (with block size 2), and Blockwise Sampling (with block size 4).  The inference times are normalized relative to the Blockwise Sampling strategy with a block size of 4 (meaning Blockwise (4) has a relative time of 1.0x).  The table shows how much faster or slower the other two methods are in comparison to the Blockwise (4) method, for both summarization and multi-turn dialogue tasks. This allows for a direct comparison of the computational efficiency of each sampling strategy.
> <details>
> <summary>read the caption</summary>
> Table 4: Relative inference time comparison of different sampling strategies. Times are normalized relative to Blockwise (4).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T5.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.4.1.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T5.4.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T5.4.1.1.2.1">Base Policy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T5.4.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T5.4.1.1.3.1">Reward Model</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T5.4.2.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.2.2.2">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.2.2.3">Dialogue</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.2.2.4">Summarization</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.2.2.5">Dialogue</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.4.3.3.1">Model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.3.3.2">Llama-3.2-3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.3.3.3">Llama-3-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.3.3.4">Llama-3.2-1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.3.3.5">Llama-3.2-1B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.4.4.4.1">Learning Rate</th>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.4.2">1e-5</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.4.3">5e-6</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.4.4">5e-5</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.4.5">1e-5</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.4.5.5.1">Batch Size</th>
<td class="ltx_td ltx_align_center" id="A2.T5.4.5.5.2">128</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.5.5.3">64</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.5.5.4">512</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.5.5.5">256</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.4.6.6.1">Max Sequence Length</th>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.6.2">1024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.6.3">512</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.6.4">1024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.6.5">512</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.4.7.7.1">Epochs</th>
<td class="ltx_td ltx_align_center" id="A2.T5.4.7.7.2">1</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.7.7.3">2</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.7.7.4">1</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.7.7.5">2</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.4.8.8.1">Warmup Ratio</th>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.8.2">0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.8.3">0.05</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.8.4">0.03</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.8.5">0.03</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.4.9.9.1">Weight Decay</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.4.9.9.2">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.4.9.9.3">0.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.4.9.9.4">0.001</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.4.9.9.5">0.001</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training phase for different language models and tasks.  It includes information on the specific model architecture (e.g., Llama-3.2-3B), learning rate, batch size, maximum sequence length, number of training epochs, warmup ratio, and weight decay. The information is broken down by model type (base policy and reward model) and specific task (summarization and multi-turn dialogue).
> <details>
> <summary>read the caption</summary>
> Table 5: Training hyperparameters for different models and tasks
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02368/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}