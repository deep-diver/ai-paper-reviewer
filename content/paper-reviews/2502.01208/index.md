---
title: "Almost Surely Safe Alignment of Large Language Models at Inference-Time"
summary: "InferenceGuard ensures almost-sure safe LLM responses at inference time by framing safe generation as a constrained Markov Decision Process in the LLM's latent space, achieving high safety rates witho..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01208 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiaotong Ji et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01208" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01208" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01208/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are powerful but can generate unsafe or biased outputs.  Current alignment techniques, like RLHF, are expensive and prone to overfitting.  Inference-time methods offer a more efficient alternative, but often lack safety guarantees.

This paper introduces InferenceGuard, a novel inference-time alignment method.  **It achieves almost-sure safety by treating safe response generation as a constrained Markov Decision Process (cMDP) within the LLM's latent space.**  A safety state tracks safety constraints, enabling formal safety guarantees.  Experiments show InferenceGuard effectively balances safety and performance, exceeding existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} InferenceGuard proposes a novel inference-time alignment approach that guarantees safe LLM responses with a probability approaching one. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It formulates safe response generation as a constrained Markov Decision Process (cMDP) in the LLM's latent space and augments a safety state to track safety constraints. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Empirically, InferenceGuard effectively balances safety and task performance, outperforming existing inference-time alignment methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it addresses the critical challenge of ensuring safety in large language models (LLMs) at inference time.  **Existing methods often struggle to balance safety and performance, or lack strong theoretical guarantees.**  InferenceGuard offers a novel approach with provable safety guarantees, opening avenues for more robust and reliable LLM deployment in various applications.  This addresses a key concern in the field and has significant implications for future research and development in safe AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01208/x1.png)

> 🔼 This figure provides a visual summary of the key concepts and mathematical notations used in the paper, particularly in the sections describing the constrained Markov Decision Process (cMDP) and its augmented version. It shows the progression from the original constrained MDP objective to the augmented MDP objective and finally to the latent MDP objective, illustrating the main transformations and steps involved in the proposed method.  It highlights the relationships between different components of the approach such as the task cost, safety cost, state, augmented state, and latent state, helping the reader follow the approach's logic more easily.
> <details>
> <summary>read the caption</summary>
> Figure 1: To aid readability, this figure summarizes the key transitions and notations used throughout the paper.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T1.2.2.3"><span class="ltx_text ltx_font_bold" id="A4.T1.2.2.3.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A4.T1.1.1.1.1">Sample Width</span> <math alttext="(d)" class="ltx_Math" display="inline" id="A4.T1.1.1.1.m1.1"><semantics id="A4.T1.1.1.1.m1.1a"><mrow id="A4.T1.1.1.1.m1.1.2.2"><mo id="A4.T1.1.1.1.m1.1.2.2.1" stretchy="false">(</mo><mi id="A4.T1.1.1.1.m1.1.1" xref="A4.T1.1.1.1.m1.1.1.cmml">d</mi><mo id="A4.T1.1.1.1.m1.1.2.2.2" stretchy="false">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.1.1.1.m1.1b"><ci id="A4.T1.1.1.1.m1.1.1.cmml" xref="A4.T1.1.1.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.1.1.1.m1.1c">(d)</annotation><annotation encoding="application/x-llamapun" id="A4.T1.1.1.1.m1.1d">( italic_d )</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T1.2.2.2">
<span class="ltx_text ltx_font_bold" id="A4.T1.2.2.2.1">Num Samples</span> <math alttext="(N)" class="ltx_Math" display="inline" id="A4.T1.2.2.2.m1.1"><semantics id="A4.T1.2.2.2.m1.1a"><mrow id="A4.T1.2.2.2.m1.1.2.2"><mo id="A4.T1.2.2.2.m1.1.2.2.1" stretchy="false">(</mo><mi id="A4.T1.2.2.2.m1.1.1" xref="A4.T1.2.2.2.m1.1.1.cmml">N</mi><mo id="A4.T1.2.2.2.m1.1.2.2.2" stretchy="false">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.2.2.2.m1.1b"><ci id="A4.T1.2.2.2.m1.1.1.cmml" xref="A4.T1.2.2.2.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.2.2.2.m1.1c">(N)</annotation><annotation encoding="application/x-llamapun" id="A4.T1.2.2.2.m1.1d">( italic_N )</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A4.T1.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T1.2.2.4.1">Other Parameters</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T1.4.5.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T1.4.5.1.1"><span class="ltx_text ltx_font_bold" id="A4.T1.4.5.1.1.1">ARGS</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T1.4.5.1.2">1</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T1.4.5.1.3">20</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T1.4.5.1.4">N/A</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.6.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.6.2.1"><span class="ltx_text ltx_font_bold" id="A4.T1.4.6.2.1.1">RECONTROL</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.6.2.2">1</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.6.2.3">N/A</td>
<td class="ltx_td ltx_align_left" id="A4.T1.4.6.2.4">
<span class="ltx_text ltx_font_bold" id="A4.T1.4.6.2.4.1">n steps</span> = 30, <span class="ltx_text ltx_font_bold" id="A4.T1.4.6.2.4.2">step size</span> = 0.5</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.7.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.7.3.1"><span class="ltx_text ltx_font_bold" id="A4.T1.4.7.3.1.1">BoN</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.7.3.2">32</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.4.7.3.3">100, 200, 500</td>
<td class="ltx_td ltx_align_left" id="A4.T1.4.7.3.4">N/A</td>
</tr>
<tr class="ltx_tr" id="A4.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.3.3.2"><span class="ltx_text ltx_font_bold" id="A4.T1.3.3.2.1">Beam Search</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.3.3.3">32</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T1.3.3.4">128, 256</td>
<td class="ltx_td ltx_align_left" id="A4.T1.3.3.1">D=128, K=<math alttext="N/4" class="ltx_Math" display="inline" id="A4.T1.3.3.1.m1.1"><semantics id="A4.T1.3.3.1.m1.1a"><mrow id="A4.T1.3.3.1.m1.1.1" xref="A4.T1.3.3.1.m1.1.1.cmml"><mi id="A4.T1.3.3.1.m1.1.1.2" xref="A4.T1.3.3.1.m1.1.1.2.cmml">N</mi><mo id="A4.T1.3.3.1.m1.1.1.1" xref="A4.T1.3.3.1.m1.1.1.1.cmml">/</mo><mn id="A4.T1.3.3.1.m1.1.1.3" xref="A4.T1.3.3.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.3.3.1.m1.1b"><apply id="A4.T1.3.3.1.m1.1.1.cmml" xref="A4.T1.3.3.1.m1.1.1"><divide id="A4.T1.3.3.1.m1.1.1.1.cmml" xref="A4.T1.3.3.1.m1.1.1.1"></divide><ci id="A4.T1.3.3.1.m1.1.1.2.cmml" xref="A4.T1.3.3.1.m1.1.1.2">𝑁</ci><cn id="A4.T1.3.3.1.m1.1.1.3.cmml" type="integer" xref="A4.T1.3.3.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.3.3.1.m1.1c">N/4</annotation><annotation encoding="application/x-llamapun" id="A4.T1.3.3.1.m1.1d">italic_N / 4</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T1.4.4.2"><span class="ltx_text ltx_font_bold" id="A4.T1.4.4.2.1">InferenceGuard</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T1.4.4.3">32</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T1.4.4.4">128, 512</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T1.4.4.1">M=2, D=128, K=<math alttext="N/4" class="ltx_Math" display="inline" id="A4.T1.4.4.1.m1.1"><semantics id="A4.T1.4.4.1.m1.1a"><mrow id="A4.T1.4.4.1.m1.1.1" xref="A4.T1.4.4.1.m1.1.1.cmml"><mi id="A4.T1.4.4.1.m1.1.1.2" xref="A4.T1.4.4.1.m1.1.1.2.cmml">N</mi><mo id="A4.T1.4.4.1.m1.1.1.1" xref="A4.T1.4.4.1.m1.1.1.1.cmml">/</mo><mn id="A4.T1.4.4.1.m1.1.1.3" xref="A4.T1.4.4.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T1.4.4.1.m1.1b"><apply id="A4.T1.4.4.1.m1.1.1.cmml" xref="A4.T1.4.4.1.m1.1.1"><divide id="A4.T1.4.4.1.m1.1.1.1.cmml" xref="A4.T1.4.4.1.m1.1.1.1"></divide><ci id="A4.T1.4.4.1.m1.1.1.2.cmml" xref="A4.T1.4.4.1.m1.1.1.2">𝑁</ci><cn id="A4.T1.4.4.1.m1.1.1.3.cmml" type="integer" xref="A4.T1.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T1.4.4.1.m1.1c">N/4</annotation><annotation encoding="application/x-llamapun" id="A4.T1.4.4.1.m1.1d">italic_N / 4</annotation></semantics></math>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the hyperparameters used for the baseline methods (BoN, Beam Search, RECONTROL, ARGS) and the proposed InferenceGuard method.  For each method, it shows the sample width (d), the number of samples (N), and other relevant hyperparameters used during the experiments. The inclusion of 'other parameters' column allows for a more comprehensive understanding of the specific settings employed for each method, thus facilitating a more robust comparison of results.
> <details>
> <summary>read the caption</summary>
> Table 1: Hyperparameters for Baselines and InferenceGuard.
> </details>





### In-depth insights


#### Inference-Time Alignment
Inference-time alignment presents a compelling approach to enhance the safety and reliability of large language models (LLMs) without the need for extensive retraining. **This method modifies the model's output at the inference stage rather than altering the model's weights**, addressing the high cost and potential overfitting associated with traditional retraining methods such as RLHF.  The core idea revolves around **developing an alignment module that seamlessly integrates with the pre-trained LLM**, enabling flexible and quick adaptation to new safety constraints.  While promising, **inference-time alignment methods have not been extensively studied in the context of safety**, limiting our understanding of their reliability.  Furthermore, the effectiveness of such methods often hinges on specific techniques for selecting and scoring responses (like 'best-of-N'), and the balance between task performance and safety needs careful consideration. **A deeper exploration of rigorous theoretical safety guarantees for inference-time alignment is needed** to ensure the consistent generation of safe outputs.  Future work should address how to formally quantify the 'almost surely safe' notion and examine the robustness of such methods against adversarial attacks and malicious prompts.

#### cMDP Framework
The core of the proposed approach lies in framing safe response generation as a **constrained Markov Decision Process (cMDP)**.  This clever framing allows the authors to leverage the well-established theoretical framework of cMDPs to formally address the problem of balancing task performance with safety constraints.  The cMDP's state encompasses both the current conversational context and a safety constraint tracker, while actions represent potential token choices.  Costs are assigned to actions based on their impact on both the task and safety objectives.  The framework's strength is its rigorous mathematical foundation, providing **formal guarantees of almost sure safety** under specific conditions.  Solving this cMDP at inference time, without retraining, is a key challenge that the authors successfully tackle using a novel latent-space critic-based approach. This is crucial for the practicality of this approach because it avoids the significant computational burden of retraining a large language model.

#### Latent Space Training
Training a safety-conscious LLM critic directly within the latent space offers significant advantages.  **It bypasses the need for computationally expensive gradient updates in the model's vast token space**, thus enabling fast, inference-time alignment.  This approach also allows for a **more compact and efficient critic network**, reducing the memory footprint and latency during response generation. The latent space captures essential information for evaluating the model's behavior, rendering a smaller network sufficient. **Mapping the constraints from the token space to the latent space ensures that safety is maintained during the generation process**, enabling strong safety guarantees in the original space, while the critic model works efficiently.  Furthermore, this technique fosters **flexibility**, allowing for quick adaptation to new safety reward models without substantial retraining.

#### Safety Guarantees
The concept of safety guarantees in AI, particularly concerning large language models (LLMs), is crucial.  The paper investigates methods to ensure that LLMs produce safe outputs at inference time, **without retraining the model**, which is a major cost and overfitting concern for existing techniques like RLHF.  The core idea involves formulating safe response generation as a constrained Markov decision process (cMDP) within the LLM's latent space.  This approach provides a **formal framework for proving safety guarantees**, moving beyond the empirical observations seen in other inference-time alignment methods. The use of a safety state to track constraints during generation allows the development of algorithms that offer demonstrable safety properties, aiming for 'almost surely safe' outputs, a level of assurance far beyond previous approaches.  **A key innovation is the use of the latent space**, reducing computational cost and enabling more efficient deployment of safety mechanisms, and this technique is further enhanced with the implementation of efficient methods for solving the constrained MDP, leading to the development of InferenceGuard, a system offering practical, scalable test-time safety alignment.

#### Future Work
Future research directions stemming from this work on inference-time safety for LLMs could involve **extending the theoretical framework to encompass a broader range of safety constraints**, moving beyond the current focus on simple cost functions.  Investigating the impact of different latent space representations on the effectiveness of InferenceGuard is another key area.  **Further research should explore how to seamlessly integrate InferenceGuard with various existing LLM architectures**, assessing its adaptability and performance across diverse models.  A significant area for improvement lies in **enhancing the efficiency of the critic network training**, potentially through advanced optimization techniques or more efficient data sampling strategies.  Finally, **robustness testing against adversarial attacks and jailbreaks is crucial**, ensuring that the safeguard remains effective even in the presence of malicious inputs.  The long-term goal should be to move beyond empirical evaluations and develop formal methods for verifying the safety guarantees provided by the approach.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01208/x2.png)

> 🔼 Figure 2 presents a performance comparison of several test-time alignment methods on two LLMs, namely Alpaca-7B and Beaver-v3-7B, using the PKU-SafeRLHF dataset.  The figure displays the trade-off between safety (percentage of tasks completed within a defined safety budget), reward (average score from a reward model), and inference time (average time taken per task).  The methods compared include BoN, ARGS, RECONTROL, Beam Search, and the proposed InferenceGuard.  The figure is split into two columns, one for Reward vs. Safety and another for Inference Time vs. Safety.  These are further categorized to show Optimal Region, Risky Region, and Hazardous Region.  InferenceGuard is highlighted as achieving a balanced trade-off, achieving both high safety rates and satisfactory rewards within reasonable inference time, falling into the Optimal Region and Optimal Efficiency quadrants.
> <details>
> <summary>read the caption</summary>
> Figure 2: Trade-offs between safety, reward, and inference time for BoN, ARGS, RECONTROL, Beam Search, and InferenceGuard on the PKU-SafeRLHF test dataset, evaluated for Alpaca-7B (top) and Beaver-v3-7B (bottom). Reward is the average score evaluated by the reward model, safety rate is the percentage of tasks completed within budget d𝑑ditalic_d, and inference time is the average per-task duration. The left column (reward vs. safety) and right column (inference time vs. safety) categorize methods by performance. InferenceGuard achieves a balanced trade-off, positioning in the Optimal Region and Optimal Efficiency quadrants.
> </details>



![](https://arxiv.org/html/2502.01208/x3.png)

> 🔼 This figure displays violin plots illustrating the distribution of rewards and maximum cumulative costs for different models on the PKU-SafeRLHF benchmark.  The top panel shows results using Alpaca-7B as the base model, while the bottom panel uses Beaver-7B-v3. The left y-axis represents the reward distribution, indicating the model's helpfulness. The right y-axis shows the maximum cumulative cost, representing safety.  Each model's performance is represented by a violin plot, showing both the distribution of results and the median value.  InferenceGuard consistently achieves higher rewards and lower costs compared to other methods, signifying better performance in both helpfulness and safety.
> <details>
> <summary>read the caption</summary>
> Figure 3: Reward and cost distributions on PKU-SafeRLHF test tasks using Alpaca-7B (top) and Beaver-v3 (bottom) as base models. The left y-axis shows reward distribution. The right y-axis shows the maximum cumulative cost. InferenceGuard outperforms others, achieving higher rewards with lower costs across both models.
> </details>



![](https://arxiv.org/html/2502.01208/x4.png)

> 🔼 This figure shows the generated responses by different methods on the Alpaca-7B model for a prompt that asks how to cause economic panic and make money by launching a cyberattack on a major financial institution.  The responses are categorized into: Base Model/RECONTROL Lag., Beam Search Lag., BoN Lag., ARGS Lag., ARGS Cost, InferenceGuard, and InferenceGuard with Critic.  Each response demonstrates the different approaches to safety and alignment taken by each method, showcasing InferenceGuard's ability to generate safe and responsible answers that comply with legal and ethical standards. The figure highlights the differences in how different methods balance safety and task performance.
> <details>
> <summary>read the caption</summary>
> (a) Alpaca Example 1
> </details>



![](https://arxiv.org/html/2502.01208/x5.png)

> 🔼 This figure shows an example from the Alpaca model, where the user prompts the model on how to make someone feel bad about themselves. The different methods are compared: Base Model, RECONTROL (Lagrangian), Beam Search (Lagrangian), BoN (Lagrangian), ARGS (Lagrangian), ARGS (Cost), InferenceGuard, and InferenceGuard with Critic. The responses highlight the varying degrees of safety and helpfulness provided by each method, with InferenceGuard demonstrating a more balanced and safe approach compared to others.
> <details>
> <summary>read the caption</summary>
> (b) Alpaca Example 2
> </details>



![](https://arxiv.org/html/2502.01208/x6.png)

> 🔼 This figure showcases the responses generated by various methods, namely Base Model, RECONTROL (with and without Lagrangian multiplier), Beam Search (with and without Lagrangian multiplier), Best-of-N (with and without Lagrangian multiplier), ARGS (with and without Lagrangian multiplier and with cost model), and InferenceGuard (with and without critic) for two different prompts. Each prompt explores ethical and safety concerns related to causing economic panic through cyberattacks and making someone feel bad about themselves. The figure highlights the differences in response safety and helpfulness between these methods, demonstrating InferenceGuard's ability to maintain task performance while adhering to safety constraints.
> <details>
> <summary>read the caption</summary>
> Figure 4: Generated response by different methods on the Alpaca-7B
> </details>



![](https://arxiv.org/html/2502.01208/x7.png)

> 🔼 This figure shows an example from the Beaver-7B model, where the prompt asks about the legality of selling counterfeit goods. The responses from different methods highlight how InferenceGuard steers the model towards safer responses, while the other methods either provide inaccurate or unsafe advice or fail to offer comprehensive answers.
> <details>
> <summary>read the caption</summary>
> (a) Beaver Example 1
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T2.66.66">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T2.66.66.67.1">
<td class="ltx_td ltx_border_tt" id="A4.T2.66.66.67.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T2.66.66.67.1.2">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T2.66.66.67.1.3">Average Reward</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T2.66.66.67.1.4">Average Cost</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T2.66.66.67.1.5">Safety Rate</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T2.66.66.67.1.6">Inference Time (s)</td>
</tr>
<tr class="ltx_tr" id="A4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T2.1.1.1.2">Alpaca-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.1.1.3">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.1.1.1">6.15 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.1.1.1.1.m1.1"><semantics id="A4.T2.1.1.1.1.m1.1a"><mo id="A4.T2.1.1.1.1.m1.1.1" xref="A4.T2.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.1.1.1.1.m1.1b"><csymbol cd="latexml" id="A4.T2.1.1.1.1.m1.1.1.cmml" xref="A4.T2.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.1.1.1.1.m1.1d">±</annotation></semantics></math> 1.51)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.1.1.4">1.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.1.1.5">29.47%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.1.1.1.6">1.1</td>
</tr>
<tr class="ltx_tr" id="A4.T2.2.2.2">
<td class="ltx_td" id="A4.T2.2.2.2.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.2.2.2.3">RECONTROL</td>
<td class="ltx_td ltx_align_center" id="A4.T2.2.2.2.1">6.2 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.2.2.2.1.m1.1"><semantics id="A4.T2.2.2.2.1.m1.1a"><mo id="A4.T2.2.2.2.1.m1.1.1" xref="A4.T2.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.2.2.2.1.m1.1b"><csymbol cd="latexml" id="A4.T2.2.2.2.1.m1.1.1.cmml" xref="A4.T2.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.2.2.2.1.m1.1d">±</annotation></semantics></math> 1.56)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.2.2.2.4">1.33</td>
<td class="ltx_td ltx_align_center" id="A4.T2.2.2.2.5">29.5%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.2.2.2.6">1.7</td>
</tr>
<tr class="ltx_tr" id="A4.T2.3.3.3">
<td class="ltx_td" id="A4.T2.3.3.3.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.3.3.3.3">RECONTROL + Lagrangian multiplier</td>
<td class="ltx_td ltx_align_center" id="A4.T2.3.3.3.1">6.19 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.3.3.3.1.m1.1"><semantics id="A4.T2.3.3.3.1.m1.1a"><mo id="A4.T2.3.3.3.1.m1.1.1" xref="A4.T2.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.3.3.3.1.m1.1b"><csymbol cd="latexml" id="A4.T2.3.3.3.1.m1.1.1.cmml" xref="A4.T2.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.3.3.3.1.m1.1d">±</annotation></semantics></math> 1.50)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.3.3.3.4">1.33</td>
<td class="ltx_td ltx_align_center" id="A4.T2.3.3.3.5">29.7%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.3.3.3.6">2</td>
</tr>
<tr class="ltx_tr" id="A4.T2.6.6.6">
<td class="ltx_td" id="A4.T2.6.6.6.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.5.5.5.2">Best-of-N + Lagrangian multiplier <math alttext="N=100" class="ltx_Math" display="inline" id="A4.T2.4.4.4.1.m1.1"><semantics id="A4.T2.4.4.4.1.m1.1a"><mrow id="A4.T2.4.4.4.1.m1.1.1" xref="A4.T2.4.4.4.1.m1.1.1.cmml"><mi id="A4.T2.4.4.4.1.m1.1.1.2" xref="A4.T2.4.4.4.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.4.4.4.1.m1.1.1.1" xref="A4.T2.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.4.4.4.1.m1.1.1.3" xref="A4.T2.4.4.4.1.m1.1.1.3.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.4.4.4.1.m1.1b"><apply id="A4.T2.4.4.4.1.m1.1.1.cmml" xref="A4.T2.4.4.4.1.m1.1.1"><eq id="A4.T2.4.4.4.1.m1.1.1.1.cmml" xref="A4.T2.4.4.4.1.m1.1.1.1"></eq><ci id="A4.T2.4.4.4.1.m1.1.1.2.cmml" xref="A4.T2.4.4.4.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.4.4.4.1.m1.1.1.3">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.4.4.4.1.m1.1c">N=100</annotation><annotation encoding="application/x-llamapun" id="A4.T2.4.4.4.1.m1.1d">italic_N = 100</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.5.5.5.2.m2.1"><semantics id="A4.T2.5.5.5.2.m2.1a"><mrow id="A4.T2.5.5.5.2.m2.1.1" xref="A4.T2.5.5.5.2.m2.1.1.cmml"><mi id="A4.T2.5.5.5.2.m2.1.1.2" xref="A4.T2.5.5.5.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.5.5.5.2.m2.1.1.1" xref="A4.T2.5.5.5.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.5.5.5.2.m2.1.1.3" xref="A4.T2.5.5.5.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.5.5.5.2.m2.1b"><apply id="A4.T2.5.5.5.2.m2.1.1.cmml" xref="A4.T2.5.5.5.2.m2.1.1"><eq id="A4.T2.5.5.5.2.m2.1.1.1.cmml" xref="A4.T2.5.5.5.2.m2.1.1.1"></eq><ci id="A4.T2.5.5.5.2.m2.1.1.2.cmml" xref="A4.T2.5.5.5.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.5.5.5.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.5.5.5.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.5.5.5.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.5.5.5.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.6.6.6.3">5.35 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.6.6.6.3.m1.1"><semantics id="A4.T2.6.6.6.3.m1.1a"><mo id="A4.T2.6.6.6.3.m1.1.1" xref="A4.T2.6.6.6.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.6.6.6.3.m1.1b"><csymbol cd="latexml" id="A4.T2.6.6.6.3.m1.1.1.cmml" xref="A4.T2.6.6.6.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.6.6.6.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.6.6.6.3.m1.1d">±</annotation></semantics></math> 1.62)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.6.6.6.5">-0.46</td>
<td class="ltx_td ltx_align_center" id="A4.T2.6.6.6.6">48.22%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.6.6.6.7">29</td>
</tr>
<tr class="ltx_tr" id="A4.T2.9.9.9">
<td class="ltx_td" id="A4.T2.9.9.9.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.8.8.8.2">Best-of-N + Lagrangian multiplier <math alttext="N=200" class="ltx_Math" display="inline" id="A4.T2.7.7.7.1.m1.1"><semantics id="A4.T2.7.7.7.1.m1.1a"><mrow id="A4.T2.7.7.7.1.m1.1.1" xref="A4.T2.7.7.7.1.m1.1.1.cmml"><mi id="A4.T2.7.7.7.1.m1.1.1.2" xref="A4.T2.7.7.7.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.7.7.7.1.m1.1.1.1" xref="A4.T2.7.7.7.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.7.7.7.1.m1.1.1.3" xref="A4.T2.7.7.7.1.m1.1.1.3.cmml">200</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.7.7.7.1.m1.1b"><apply id="A4.T2.7.7.7.1.m1.1.1.cmml" xref="A4.T2.7.7.7.1.m1.1.1"><eq id="A4.T2.7.7.7.1.m1.1.1.1.cmml" xref="A4.T2.7.7.7.1.m1.1.1.1"></eq><ci id="A4.T2.7.7.7.1.m1.1.1.2.cmml" xref="A4.T2.7.7.7.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.7.7.7.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.7.7.7.1.m1.1.1.3">200</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.7.7.7.1.m1.1c">N=200</annotation><annotation encoding="application/x-llamapun" id="A4.T2.7.7.7.1.m1.1d">italic_N = 200</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.8.8.8.2.m2.1"><semantics id="A4.T2.8.8.8.2.m2.1a"><mrow id="A4.T2.8.8.8.2.m2.1.1" xref="A4.T2.8.8.8.2.m2.1.1.cmml"><mi id="A4.T2.8.8.8.2.m2.1.1.2" xref="A4.T2.8.8.8.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.8.8.8.2.m2.1.1.1" xref="A4.T2.8.8.8.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.8.8.8.2.m2.1.1.3" xref="A4.T2.8.8.8.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.8.8.8.2.m2.1b"><apply id="A4.T2.8.8.8.2.m2.1.1.cmml" xref="A4.T2.8.8.8.2.m2.1.1"><eq id="A4.T2.8.8.8.2.m2.1.1.1.cmml" xref="A4.T2.8.8.8.2.m2.1.1.1"></eq><ci id="A4.T2.8.8.8.2.m2.1.1.2.cmml" xref="A4.T2.8.8.8.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.8.8.8.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.8.8.8.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.8.8.8.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.8.8.8.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.9.9.9.3">5.25 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.9.9.9.3.m1.1"><semantics id="A4.T2.9.9.9.3.m1.1a"><mo id="A4.T2.9.9.9.3.m1.1.1" xref="A4.T2.9.9.9.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.9.9.9.3.m1.1b"><csymbol cd="latexml" id="A4.T2.9.9.9.3.m1.1.1.cmml" xref="A4.T2.9.9.9.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.9.9.9.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.9.9.9.3.m1.1d">±</annotation></semantics></math> 1.64)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.9.9.9.5">-0.72</td>
<td class="ltx_td ltx_align_center" id="A4.T2.9.9.9.6">54.2%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.9.9.9.7">58</td>
</tr>
<tr class="ltx_tr" id="A4.T2.12.12.12">
<td class="ltx_td" id="A4.T2.12.12.12.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.11.11.11.2">Best-of-N + Lagrangian multiplier <math alttext="N=500" class="ltx_Math" display="inline" id="A4.T2.10.10.10.1.m1.1"><semantics id="A4.T2.10.10.10.1.m1.1a"><mrow id="A4.T2.10.10.10.1.m1.1.1" xref="A4.T2.10.10.10.1.m1.1.1.cmml"><mi id="A4.T2.10.10.10.1.m1.1.1.2" xref="A4.T2.10.10.10.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.10.10.10.1.m1.1.1.1" xref="A4.T2.10.10.10.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.10.10.10.1.m1.1.1.3" xref="A4.T2.10.10.10.1.m1.1.1.3.cmml">500</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.10.10.10.1.m1.1b"><apply id="A4.T2.10.10.10.1.m1.1.1.cmml" xref="A4.T2.10.10.10.1.m1.1.1"><eq id="A4.T2.10.10.10.1.m1.1.1.1.cmml" xref="A4.T2.10.10.10.1.m1.1.1.1"></eq><ci id="A4.T2.10.10.10.1.m1.1.1.2.cmml" xref="A4.T2.10.10.10.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.10.10.10.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.10.10.10.1.m1.1.1.3">500</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.10.10.10.1.m1.1c">N=500</annotation><annotation encoding="application/x-llamapun" id="A4.T2.10.10.10.1.m1.1d">italic_N = 500</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.11.11.11.2.m2.1"><semantics id="A4.T2.11.11.11.2.m2.1a"><mrow id="A4.T2.11.11.11.2.m2.1.1" xref="A4.T2.11.11.11.2.m2.1.1.cmml"><mi id="A4.T2.11.11.11.2.m2.1.1.2" xref="A4.T2.11.11.11.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.11.11.11.2.m2.1.1.1" xref="A4.T2.11.11.11.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.11.11.11.2.m2.1.1.3" xref="A4.T2.11.11.11.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.11.11.11.2.m2.1b"><apply id="A4.T2.11.11.11.2.m2.1.1.cmml" xref="A4.T2.11.11.11.2.m2.1.1"><eq id="A4.T2.11.11.11.2.m2.1.1.1.cmml" xref="A4.T2.11.11.11.2.m2.1.1.1"></eq><ci id="A4.T2.11.11.11.2.m2.1.1.2.cmml" xref="A4.T2.11.11.11.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.11.11.11.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.11.11.11.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.11.11.11.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.11.11.11.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.12.12.12.3">6.04 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.12.12.12.3.m1.1"><semantics id="A4.T2.12.12.12.3.m1.1a"><mo id="A4.T2.12.12.12.3.m1.1.1" xref="A4.T2.12.12.12.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.12.12.12.3.m1.1b"><csymbol cd="latexml" id="A4.T2.12.12.12.3.m1.1.1.cmml" xref="A4.T2.12.12.12.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.12.12.12.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.12.12.12.3.m1.1d">±</annotation></semantics></math> 1.85)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.12.12.12.5">-1.27</td>
<td class="ltx_td ltx_align_center" id="A4.T2.12.12.12.6">52.17%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.12.12.12.7">145</td>
</tr>
<tr class="ltx_tr" id="A4.T2.15.15.15">
<td class="ltx_td" id="A4.T2.15.15.15.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.14.14.14.2">Best-of-N + Lagrangian multiplier <math alttext="N=500" class="ltx_Math" display="inline" id="A4.T2.13.13.13.1.m1.1"><semantics id="A4.T2.13.13.13.1.m1.1a"><mrow id="A4.T2.13.13.13.1.m1.1.1" xref="A4.T2.13.13.13.1.m1.1.1.cmml"><mi id="A4.T2.13.13.13.1.m1.1.1.2" xref="A4.T2.13.13.13.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.13.13.13.1.m1.1.1.1" xref="A4.T2.13.13.13.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.13.13.13.1.m1.1.1.3" xref="A4.T2.13.13.13.1.m1.1.1.3.cmml">500</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.13.13.13.1.m1.1b"><apply id="A4.T2.13.13.13.1.m1.1.1.cmml" xref="A4.T2.13.13.13.1.m1.1.1"><eq id="A4.T2.13.13.13.1.m1.1.1.1.cmml" xref="A4.T2.13.13.13.1.m1.1.1.1"></eq><ci id="A4.T2.13.13.13.1.m1.1.1.2.cmml" xref="A4.T2.13.13.13.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.13.13.13.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.13.13.13.1.m1.1.1.3">500</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.13.13.13.1.m1.1c">N=500</annotation><annotation encoding="application/x-llamapun" id="A4.T2.13.13.13.1.m1.1d">italic_N = 500</annotation></semantics></math>, <math alttext="\lambda=10" class="ltx_Math" display="inline" id="A4.T2.14.14.14.2.m2.1"><semantics id="A4.T2.14.14.14.2.m2.1a"><mrow id="A4.T2.14.14.14.2.m2.1.1" xref="A4.T2.14.14.14.2.m2.1.1.cmml"><mi id="A4.T2.14.14.14.2.m2.1.1.2" xref="A4.T2.14.14.14.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.14.14.14.2.m2.1.1.1" xref="A4.T2.14.14.14.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.14.14.14.2.m2.1.1.3" xref="A4.T2.14.14.14.2.m2.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.14.14.14.2.m2.1b"><apply id="A4.T2.14.14.14.2.m2.1.1.cmml" xref="A4.T2.14.14.14.2.m2.1.1"><eq id="A4.T2.14.14.14.2.m2.1.1.1.cmml" xref="A4.T2.14.14.14.2.m2.1.1.1"></eq><ci id="A4.T2.14.14.14.2.m2.1.1.2.cmml" xref="A4.T2.14.14.14.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.14.14.14.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.14.14.14.2.m2.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.14.14.14.2.m2.1c">\lambda=10</annotation><annotation encoding="application/x-llamapun" id="A4.T2.14.14.14.2.m2.1d">italic_λ = 10</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.15.15.15.3">5.51 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.15.15.15.3.m1.1"><semantics id="A4.T2.15.15.15.3.m1.1a"><mo id="A4.T2.15.15.15.3.m1.1.1" xref="A4.T2.15.15.15.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.15.15.15.3.m1.1b"><csymbol cd="latexml" id="A4.T2.15.15.15.3.m1.1.1.cmml" xref="A4.T2.15.15.15.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.15.15.15.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.15.15.15.3.m1.1d">±</annotation></semantics></math> 1.66)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.15.15.15.5">-1.44</td>
<td class="ltx_td ltx_align_center" id="A4.T2.15.15.15.6">54.01%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.15.15.15.7">145</td>
</tr>
<tr class="ltx_tr" id="A4.T2.17.17.17">
<td class="ltx_td" id="A4.T2.17.17.17.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.16.16.16.1">Best-of-N + Augmented safety <math alttext="N=200" class="ltx_Math" display="inline" id="A4.T2.16.16.16.1.m1.1"><semantics id="A4.T2.16.16.16.1.m1.1a"><mrow id="A4.T2.16.16.16.1.m1.1.1" xref="A4.T2.16.16.16.1.m1.1.1.cmml"><mi id="A4.T2.16.16.16.1.m1.1.1.2" xref="A4.T2.16.16.16.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.16.16.16.1.m1.1.1.1" xref="A4.T2.16.16.16.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.16.16.16.1.m1.1.1.3" xref="A4.T2.16.16.16.1.m1.1.1.3.cmml">200</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.16.16.16.1.m1.1b"><apply id="A4.T2.16.16.16.1.m1.1.1.cmml" xref="A4.T2.16.16.16.1.m1.1.1"><eq id="A4.T2.16.16.16.1.m1.1.1.1.cmml" xref="A4.T2.16.16.16.1.m1.1.1.1"></eq><ci id="A4.T2.16.16.16.1.m1.1.1.2.cmml" xref="A4.T2.16.16.16.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.16.16.16.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.16.16.16.1.m1.1.1.3">200</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.16.16.16.1.m1.1c">N=200</annotation><annotation encoding="application/x-llamapun" id="A4.T2.16.16.16.1.m1.1d">italic_N = 200</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.17.17.17.2">7.51 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.17.17.17.2.m1.1"><semantics id="A4.T2.17.17.17.2.m1.1a"><mo id="A4.T2.17.17.17.2.m1.1.1" xref="A4.T2.17.17.17.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.17.17.17.2.m1.1b"><csymbol cd="latexml" id="A4.T2.17.17.17.2.m1.1.1.cmml" xref="A4.T2.17.17.17.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.17.17.17.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.17.17.17.2.m1.1d">±</annotation></semantics></math> 1.89)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.17.17.17.4">0.67</td>
<td class="ltx_td ltx_align_center" id="A4.T2.17.17.17.5">60.07%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.17.17.17.6">58</td>
</tr>
<tr class="ltx_tr" id="A4.T2.19.19.19">
<td class="ltx_td" id="A4.T2.19.19.19.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.18.18.18.1">Best-of-N + Augmented safety <math alttext="N=500" class="ltx_Math" display="inline" id="A4.T2.18.18.18.1.m1.1"><semantics id="A4.T2.18.18.18.1.m1.1a"><mrow id="A4.T2.18.18.18.1.m1.1.1" xref="A4.T2.18.18.18.1.m1.1.1.cmml"><mi id="A4.T2.18.18.18.1.m1.1.1.2" xref="A4.T2.18.18.18.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.18.18.18.1.m1.1.1.1" xref="A4.T2.18.18.18.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.18.18.18.1.m1.1.1.3" xref="A4.T2.18.18.18.1.m1.1.1.3.cmml">500</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.18.18.18.1.m1.1b"><apply id="A4.T2.18.18.18.1.m1.1.1.cmml" xref="A4.T2.18.18.18.1.m1.1.1"><eq id="A4.T2.18.18.18.1.m1.1.1.1.cmml" xref="A4.T2.18.18.18.1.m1.1.1.1"></eq><ci id="A4.T2.18.18.18.1.m1.1.1.2.cmml" xref="A4.T2.18.18.18.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.18.18.18.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.18.18.18.1.m1.1.1.3">500</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.18.18.18.1.m1.1c">N=500</annotation><annotation encoding="application/x-llamapun" id="A4.T2.18.18.18.1.m1.1d">italic_N = 500</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.19.19.19.2">7.78 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.19.19.19.2.m1.1"><semantics id="A4.T2.19.19.19.2.m1.1a"><mo id="A4.T2.19.19.19.2.m1.1.1" xref="A4.T2.19.19.19.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.19.19.19.2.m1.1b"><csymbol cd="latexml" id="A4.T2.19.19.19.2.m1.1.1.cmml" xref="A4.T2.19.19.19.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.19.19.19.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.19.19.19.2.m1.1d">±</annotation></semantics></math> 2.09)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.19.19.19.4">0.42</td>
<td class="ltx_td ltx_align_center" id="A4.T2.19.19.19.5">65.74 %</td>
<td class="ltx_td ltx_align_center" id="A4.T2.19.19.19.6">145</td>
</tr>
<tr class="ltx_tr" id="A4.T2.22.22.22">
<td class="ltx_td" id="A4.T2.22.22.22.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.21.21.21.2">Beam search + Lagrangian multiplier <math alttext="N=128" class="ltx_Math" display="inline" id="A4.T2.20.20.20.1.m1.1"><semantics id="A4.T2.20.20.20.1.m1.1a"><mrow id="A4.T2.20.20.20.1.m1.1.1" xref="A4.T2.20.20.20.1.m1.1.1.cmml"><mi id="A4.T2.20.20.20.1.m1.1.1.2" xref="A4.T2.20.20.20.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.20.20.20.1.m1.1.1.1" xref="A4.T2.20.20.20.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.20.20.20.1.m1.1.1.3" xref="A4.T2.20.20.20.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.20.20.20.1.m1.1b"><apply id="A4.T2.20.20.20.1.m1.1.1.cmml" xref="A4.T2.20.20.20.1.m1.1.1"><eq id="A4.T2.20.20.20.1.m1.1.1.1.cmml" xref="A4.T2.20.20.20.1.m1.1.1.1"></eq><ci id="A4.T2.20.20.20.1.m1.1.1.2.cmml" xref="A4.T2.20.20.20.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.20.20.20.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.20.20.20.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.20.20.20.1.m1.1c">N=128</annotation><annotation encoding="application/x-llamapun" id="A4.T2.20.20.20.1.m1.1d">italic_N = 128</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.21.21.21.2.m2.1"><semantics id="A4.T2.21.21.21.2.m2.1a"><mrow id="A4.T2.21.21.21.2.m2.1.1" xref="A4.T2.21.21.21.2.m2.1.1.cmml"><mi id="A4.T2.21.21.21.2.m2.1.1.2" xref="A4.T2.21.21.21.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.21.21.21.2.m2.1.1.1" xref="A4.T2.21.21.21.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.21.21.21.2.m2.1.1.3" xref="A4.T2.21.21.21.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.21.21.21.2.m2.1b"><apply id="A4.T2.21.21.21.2.m2.1.1.cmml" xref="A4.T2.21.21.21.2.m2.1.1"><eq id="A4.T2.21.21.21.2.m2.1.1.1.cmml" xref="A4.T2.21.21.21.2.m2.1.1.1"></eq><ci id="A4.T2.21.21.21.2.m2.1.1.2.cmml" xref="A4.T2.21.21.21.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.21.21.21.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.21.21.21.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.21.21.21.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.21.21.21.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.22.22.22.3">6.58 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.22.22.22.3.m1.1"><semantics id="A4.T2.22.22.22.3.m1.1a"><mo id="A4.T2.22.22.22.3.m1.1.1" xref="A4.T2.22.22.22.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.22.22.22.3.m1.1b"><csymbol cd="latexml" id="A4.T2.22.22.22.3.m1.1.1.cmml" xref="A4.T2.22.22.22.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.22.22.22.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.22.22.22.3.m1.1d">±</annotation></semantics></math> 1.95)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.22.22.22.5">-1.02</td>
<td class="ltx_td ltx_align_center" id="A4.T2.22.22.22.6">50.19%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.22.22.22.7">32</td>
</tr>
<tr class="ltx_tr" id="A4.T2.25.25.25">
<td class="ltx_td" id="A4.T2.25.25.25.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.24.24.24.2">Beam search + Lagrangian multiplier <math alttext="N=256" class="ltx_Math" display="inline" id="A4.T2.23.23.23.1.m1.1"><semantics id="A4.T2.23.23.23.1.m1.1a"><mrow id="A4.T2.23.23.23.1.m1.1.1" xref="A4.T2.23.23.23.1.m1.1.1.cmml"><mi id="A4.T2.23.23.23.1.m1.1.1.2" xref="A4.T2.23.23.23.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.23.23.23.1.m1.1.1.1" xref="A4.T2.23.23.23.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.23.23.23.1.m1.1.1.3" xref="A4.T2.23.23.23.1.m1.1.1.3.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.23.23.23.1.m1.1b"><apply id="A4.T2.23.23.23.1.m1.1.1.cmml" xref="A4.T2.23.23.23.1.m1.1.1"><eq id="A4.T2.23.23.23.1.m1.1.1.1.cmml" xref="A4.T2.23.23.23.1.m1.1.1.1"></eq><ci id="A4.T2.23.23.23.1.m1.1.1.2.cmml" xref="A4.T2.23.23.23.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.23.23.23.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.23.23.23.1.m1.1.1.3">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.23.23.23.1.m1.1c">N=256</annotation><annotation encoding="application/x-llamapun" id="A4.T2.23.23.23.1.m1.1d">italic_N = 256</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.24.24.24.2.m2.1"><semantics id="A4.T2.24.24.24.2.m2.1a"><mrow id="A4.T2.24.24.24.2.m2.1.1" xref="A4.T2.24.24.24.2.m2.1.1.cmml"><mi id="A4.T2.24.24.24.2.m2.1.1.2" xref="A4.T2.24.24.24.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.24.24.24.2.m2.1.1.1" xref="A4.T2.24.24.24.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.24.24.24.2.m2.1.1.3" xref="A4.T2.24.24.24.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.24.24.24.2.m2.1b"><apply id="A4.T2.24.24.24.2.m2.1.1.cmml" xref="A4.T2.24.24.24.2.m2.1.1"><eq id="A4.T2.24.24.24.2.m2.1.1.1.cmml" xref="A4.T2.24.24.24.2.m2.1.1.1"></eq><ci id="A4.T2.24.24.24.2.m2.1.1.2.cmml" xref="A4.T2.24.24.24.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.24.24.24.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.24.24.24.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.24.24.24.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.24.24.24.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.25.25.25.3">6.69 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.25.25.25.3.m1.1"><semantics id="A4.T2.25.25.25.3.m1.1a"><mo id="A4.T2.25.25.25.3.m1.1.1" xref="A4.T2.25.25.25.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.25.25.25.3.m1.1b"><csymbol cd="latexml" id="A4.T2.25.25.25.3.m1.1.1.cmml" xref="A4.T2.25.25.25.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.25.25.25.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.25.25.25.3.m1.1d">±</annotation></semantics></math> 2.08)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.25.25.25.5">-1.28</td>
<td class="ltx_td ltx_align_center" id="A4.T2.25.25.25.6">52.43%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.25.25.25.7">60</td>
</tr>
<tr class="ltx_tr" id="A4.T2.27.27.27">
<td class="ltx_td" id="A4.T2.27.27.27.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.26.26.26.1">Beam search + Augmented safety <math alttext="N=128" class="ltx_Math" display="inline" id="A4.T2.26.26.26.1.m1.1"><semantics id="A4.T2.26.26.26.1.m1.1a"><mrow id="A4.T2.26.26.26.1.m1.1.1" xref="A4.T2.26.26.26.1.m1.1.1.cmml"><mi id="A4.T2.26.26.26.1.m1.1.1.2" xref="A4.T2.26.26.26.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.26.26.26.1.m1.1.1.1" xref="A4.T2.26.26.26.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.26.26.26.1.m1.1.1.3" xref="A4.T2.26.26.26.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.26.26.26.1.m1.1b"><apply id="A4.T2.26.26.26.1.m1.1.1.cmml" xref="A4.T2.26.26.26.1.m1.1.1"><eq id="A4.T2.26.26.26.1.m1.1.1.1.cmml" xref="A4.T2.26.26.26.1.m1.1.1.1"></eq><ci id="A4.T2.26.26.26.1.m1.1.1.2.cmml" xref="A4.T2.26.26.26.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.26.26.26.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.26.26.26.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.26.26.26.1.m1.1c">N=128</annotation><annotation encoding="application/x-llamapun" id="A4.T2.26.26.26.1.m1.1d">italic_N = 128</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.27.27.27.2">8.29 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.27.27.27.2.m1.1"><semantics id="A4.T2.27.27.27.2.m1.1a"><mo id="A4.T2.27.27.27.2.m1.1.1" xref="A4.T2.27.27.27.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.27.27.27.2.m1.1b"><csymbol cd="latexml" id="A4.T2.27.27.27.2.m1.1.1.cmml" xref="A4.T2.27.27.27.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.27.27.27.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.27.27.27.2.m1.1d">±</annotation></semantics></math> 2.02)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.27.27.27.4">0.64</td>
<td class="ltx_td ltx_align_center" id="A4.T2.27.27.27.5">58.89%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.27.27.27.6">39</td>
</tr>
<tr class="ltx_tr" id="A4.T2.29.29.29">
<td class="ltx_td" id="A4.T2.29.29.29.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.28.28.28.1">Beam search + Augmented safety <math alttext="N=256" class="ltx_Math" display="inline" id="A4.T2.28.28.28.1.m1.1"><semantics id="A4.T2.28.28.28.1.m1.1a"><mrow id="A4.T2.28.28.28.1.m1.1.1" xref="A4.T2.28.28.28.1.m1.1.1.cmml"><mi id="A4.T2.28.28.28.1.m1.1.1.2" xref="A4.T2.28.28.28.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.28.28.28.1.m1.1.1.1" xref="A4.T2.28.28.28.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.28.28.28.1.m1.1.1.3" xref="A4.T2.28.28.28.1.m1.1.1.3.cmml">256</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.28.28.28.1.m1.1b"><apply id="A4.T2.28.28.28.1.m1.1.1.cmml" xref="A4.T2.28.28.28.1.m1.1.1"><eq id="A4.T2.28.28.28.1.m1.1.1.1.cmml" xref="A4.T2.28.28.28.1.m1.1.1.1"></eq><ci id="A4.T2.28.28.28.1.m1.1.1.2.cmml" xref="A4.T2.28.28.28.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.28.28.28.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.28.28.28.1.m1.1.1.3">256</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.28.28.28.1.m1.1c">N=256</annotation><annotation encoding="application/x-llamapun" id="A4.T2.28.28.28.1.m1.1d">italic_N = 256</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.29.29.29.2">8.69 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.29.29.29.2.m1.1"><semantics id="A4.T2.29.29.29.2.m1.1a"><mo id="A4.T2.29.29.29.2.m1.1.1" xref="A4.T2.29.29.29.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.29.29.29.2.m1.1b"><csymbol cd="latexml" id="A4.T2.29.29.29.2.m1.1.1.cmml" xref="A4.T2.29.29.29.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.29.29.29.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.29.29.29.2.m1.1d">±</annotation></semantics></math> 2.15)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.29.29.29.4">0.55</td>
<td class="ltx_td ltx_align_center" id="A4.T2.29.29.29.5">61.79 %</td>
<td class="ltx_td ltx_align_center" id="A4.T2.29.29.29.6">82</td>
</tr>
<tr class="ltx_tr" id="A4.T2.31.31.31">
<td class="ltx_td" id="A4.T2.31.31.31.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.30.30.30.1">ARGS <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.30.30.30.1.m1.1"><semantics id="A4.T2.30.30.30.1.m1.1a"><mrow id="A4.T2.30.30.30.1.m1.1.1" xref="A4.T2.30.30.30.1.m1.1.1.cmml"><mi id="A4.T2.30.30.30.1.m1.1.1.2" xref="A4.T2.30.30.30.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.30.30.30.1.m1.1.1.1" xref="A4.T2.30.30.30.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.30.30.30.1.m1.1.1.3" xref="A4.T2.30.30.30.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.30.30.30.1.m1.1b"><apply id="A4.T2.30.30.30.1.m1.1.1.cmml" xref="A4.T2.30.30.30.1.m1.1.1"><eq id="A4.T2.30.30.30.1.m1.1.1.1.cmml" xref="A4.T2.30.30.30.1.m1.1.1.1"></eq><ci id="A4.T2.30.30.30.1.m1.1.1.2.cmml" xref="A4.T2.30.30.30.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.30.30.30.1.m1.1.1.3.cmml" type="float" xref="A4.T2.30.30.30.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.30.30.30.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.30.30.30.1.m1.1d">italic_ω = 2.5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.31.31.31.2">6.74 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.31.31.31.2.m1.1"><semantics id="A4.T2.31.31.31.2.m1.1a"><mo id="A4.T2.31.31.31.2.m1.1.1" xref="A4.T2.31.31.31.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.31.31.31.2.m1.1b"><csymbol cd="latexml" id="A4.T2.31.31.31.2.m1.1.1.cmml" xref="A4.T2.31.31.31.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.31.31.31.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.31.31.31.2.m1.1d">±</annotation></semantics></math> 1.70)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.31.31.31.4">1.47</td>
<td class="ltx_td ltx_align_center" id="A4.T2.31.31.31.5">28.19%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.31.31.31.6">82</td>
</tr>
<tr class="ltx_tr" id="A4.T2.33.33.33">
<td class="ltx_td" id="A4.T2.33.33.33.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.32.32.32.1">ARGS + Lagrangian multiplier <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.32.32.32.1.m1.1"><semantics id="A4.T2.32.32.32.1.m1.1a"><mrow id="A4.T2.32.32.32.1.m1.1.1" xref="A4.T2.32.32.32.1.m1.1.1.cmml"><mi id="A4.T2.32.32.32.1.m1.1.1.2" xref="A4.T2.32.32.32.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.32.32.32.1.m1.1.1.1" xref="A4.T2.32.32.32.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.32.32.32.1.m1.1.1.3" xref="A4.T2.32.32.32.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.32.32.32.1.m1.1b"><apply id="A4.T2.32.32.32.1.m1.1.1.cmml" xref="A4.T2.32.32.32.1.m1.1.1"><eq id="A4.T2.32.32.32.1.m1.1.1.1.cmml" xref="A4.T2.32.32.32.1.m1.1.1.1"></eq><ci id="A4.T2.32.32.32.1.m1.1.1.2.cmml" xref="A4.T2.32.32.32.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.32.32.32.1.m1.1.1.3.cmml" type="float" xref="A4.T2.32.32.32.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.32.32.32.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.32.32.32.1.m1.1d">italic_ω = 2.5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.33.33.33.2">3.21 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.33.33.33.2.m1.1"><semantics id="A4.T2.33.33.33.2.m1.1a"><mo id="A4.T2.33.33.33.2.m1.1.1" xref="A4.T2.33.33.33.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.33.33.33.2.m1.1b"><csymbol cd="latexml" id="A4.T2.33.33.33.2.m1.1.1.cmml" xref="A4.T2.33.33.33.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.33.33.33.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.33.33.33.2.m1.1d">±</annotation></semantics></math> 1.59)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.33.33.33.4">-0.85</td>
<td class="ltx_td ltx_align_center" id="A4.T2.33.33.33.5">75.8%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.33.33.33.6">111</td>
</tr>
<tr class="ltx_tr" id="A4.T2.35.35.35">
<td class="ltx_td" id="A4.T2.35.35.35.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.34.34.34.1">ARGS + Cost Model <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.34.34.34.1.m1.1"><semantics id="A4.T2.34.34.34.1.m1.1a"><mrow id="A4.T2.34.34.34.1.m1.1.1" xref="A4.T2.34.34.34.1.m1.1.1.cmml"><mi id="A4.T2.34.34.34.1.m1.1.1.2" xref="A4.T2.34.34.34.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.34.34.34.1.m1.1.1.1" xref="A4.T2.34.34.34.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.34.34.34.1.m1.1.1.3" xref="A4.T2.34.34.34.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.34.34.34.1.m1.1b"><apply id="A4.T2.34.34.34.1.m1.1.1.cmml" xref="A4.T2.34.34.34.1.m1.1.1"><eq id="A4.T2.34.34.34.1.m1.1.1.1.cmml" xref="A4.T2.34.34.34.1.m1.1.1.1"></eq><ci id="A4.T2.34.34.34.1.m1.1.1.2.cmml" xref="A4.T2.34.34.34.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.34.34.34.1.m1.1.1.3.cmml" type="float" xref="A4.T2.34.34.34.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.34.34.34.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.34.34.34.1.m1.1d">italic_ω = 2.5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.35.35.35.2">0.19 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.35.35.35.2.m1.1"><semantics id="A4.T2.35.35.35.2.m1.1a"><mo id="A4.T2.35.35.35.2.m1.1.1" xref="A4.T2.35.35.35.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.35.35.35.2.m1.1b"><csymbol cd="latexml" id="A4.T2.35.35.35.2.m1.1.1.cmml" xref="A4.T2.35.35.35.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.35.35.35.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.35.35.35.2.m1.1d">±</annotation></semantics></math> 1.65)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.35.35.35.4">-2.21</td>
<td class="ltx_td ltx_align_center" id="A4.T2.35.35.35.5">81.6%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.35.35.35.6">78</td>
</tr>
<tr class="ltx_tr" id="A4.T2.36.36.36">
<td class="ltx_td" id="A4.T2.36.36.36.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.36.36.36.3">InferenceGuard (N=128)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.36.36.36.1">7.08 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.36.36.36.1.m1.1"><semantics id="A4.T2.36.36.36.1.m1.1a"><mo id="A4.T2.36.36.36.1.m1.1.1" xref="A4.T2.36.36.36.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.36.36.36.1.m1.1b"><csymbol cd="latexml" id="A4.T2.36.36.36.1.m1.1.1.cmml" xref="A4.T2.36.36.36.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.36.36.36.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.36.36.36.1.m1.1d">±</annotation></semantics></math> 2.49)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.36.36.36.4">-0.63</td>
<td class="ltx_td ltx_align_center" id="A4.T2.36.36.36.5">88.14%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.36.36.36.6">65</td>
</tr>
<tr class="ltx_tr" id="A4.T2.37.37.37">
<td class="ltx_td" id="A4.T2.37.37.37.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.37.37.37.3">InferenceGuard with Critic (N=128)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.37.37.37.1">6.81 (<math alttext="\pm\ " class="ltx_Math" display="inline" id="A4.T2.37.37.37.1.m1.1"><semantics id="A4.T2.37.37.37.1.m1.1a"><mo id="A4.T2.37.37.37.1.m1.1.1" xref="A4.T2.37.37.37.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.37.37.37.1.m1.1b"><csymbol cd="latexml" id="A4.T2.37.37.37.1.m1.1.1.cmml" xref="A4.T2.37.37.37.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.37.37.37.1.m1.1c">\pm\ </annotation><annotation encoding="application/x-llamapun" id="A4.T2.37.37.37.1.m1.1d">±</annotation></semantics></math>2.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.37.37.37.4">-1.01</td>
<td class="ltx_td ltx_align_center" id="A4.T2.37.37.37.5">
<span class="ltx_text ltx_font_bold" id="A4.T2.37.37.37.5.1">91.04</span>%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.37.37.37.6">71</td>
</tr>
<tr class="ltx_tr" id="A4.T2.38.38.38">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T2.38.38.38.2">Beaver-7B-v3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.38.38.38.3">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.38.38.38.1">5.83 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.38.38.38.1.m1.1"><semantics id="A4.T2.38.38.38.1.m1.1a"><mo id="A4.T2.38.38.38.1.m1.1.1" xref="A4.T2.38.38.38.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.38.38.38.1.m1.1b"><csymbol cd="latexml" id="A4.T2.38.38.38.1.m1.1.1.cmml" xref="A4.T2.38.38.38.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.38.38.38.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.38.38.38.1.m1.1d">±</annotation></semantics></math> 1.62)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.38.38.38.4">-2.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.38.38.38.5">75.89%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T2.38.38.38.6">1.2</td>
</tr>
<tr class="ltx_tr" id="A4.T2.39.39.39">
<td class="ltx_td" id="A4.T2.39.39.39.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.39.39.39.3">RECONTROL</td>
<td class="ltx_td ltx_align_center" id="A4.T2.39.39.39.1">5.9 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.39.39.39.1.m1.1"><semantics id="A4.T2.39.39.39.1.m1.1a"><mo id="A4.T2.39.39.39.1.m1.1.1" xref="A4.T2.39.39.39.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.39.39.39.1.m1.1b"><csymbol cd="latexml" id="A4.T2.39.39.39.1.m1.1.1.cmml" xref="A4.T2.39.39.39.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.39.39.39.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.39.39.39.1.m1.1d">±</annotation></semantics></math> 1.56)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.39.39.39.4">-2.90</td>
<td class="ltx_td ltx_align_center" id="A4.T2.39.39.39.5">75.9%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.39.39.39.6">2</td>
</tr>
<tr class="ltx_tr" id="A4.T2.40.40.40">
<td class="ltx_td" id="A4.T2.40.40.40.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.40.40.40.3">RECONTROL + Lagrangian multiplier</td>
<td class="ltx_td ltx_align_center" id="A4.T2.40.40.40.1">5.91 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.40.40.40.1.m1.1"><semantics id="A4.T2.40.40.40.1.m1.1a"><mo id="A4.T2.40.40.40.1.m1.1.1" xref="A4.T2.40.40.40.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.40.40.40.1.m1.1b"><csymbol cd="latexml" id="A4.T2.40.40.40.1.m1.1.1.cmml" xref="A4.T2.40.40.40.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.40.40.40.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.40.40.40.1.m1.1d">±</annotation></semantics></math> 1.50)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.40.40.40.4">-2.91</td>
<td class="ltx_td ltx_align_center" id="A4.T2.40.40.40.5">75.9%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.40.40.40.6">2.6</td>
</tr>
<tr class="ltx_tr" id="A4.T2.42.42.42">
<td class="ltx_td" id="A4.T2.42.42.42.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.41.41.41.1">Best-of-N + Lagrangian multiplier <math alttext="N=100" class="ltx_Math" display="inline" id="A4.T2.41.41.41.1.m1.1"><semantics id="A4.T2.41.41.41.1.m1.1a"><mrow id="A4.T2.41.41.41.1.m1.1.1" xref="A4.T2.41.41.41.1.m1.1.1.cmml"><mi id="A4.T2.41.41.41.1.m1.1.1.2" xref="A4.T2.41.41.41.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.41.41.41.1.m1.1.1.1" xref="A4.T2.41.41.41.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.41.41.41.1.m1.1.1.3" xref="A4.T2.41.41.41.1.m1.1.1.3.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.41.41.41.1.m1.1b"><apply id="A4.T2.41.41.41.1.m1.1.1.cmml" xref="A4.T2.41.41.41.1.m1.1.1"><eq id="A4.T2.41.41.41.1.m1.1.1.1.cmml" xref="A4.T2.41.41.41.1.m1.1.1.1"></eq><ci id="A4.T2.41.41.41.1.m1.1.1.2.cmml" xref="A4.T2.41.41.41.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.41.41.41.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.41.41.41.1.m1.1.1.3">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.41.41.41.1.m1.1c">N=100</annotation><annotation encoding="application/x-llamapun" id="A4.T2.41.41.41.1.m1.1d">italic_N = 100</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.42.42.42.2">6.52 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.42.42.42.2.m1.1"><semantics id="A4.T2.42.42.42.2.m1.1a"><mo id="A4.T2.42.42.42.2.m1.1.1" xref="A4.T2.42.42.42.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.42.42.42.2.m1.1b"><csymbol cd="latexml" id="A4.T2.42.42.42.2.m1.1.1.cmml" xref="A4.T2.42.42.42.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.42.42.42.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.42.42.42.2.m1.1d">±</annotation></semantics></math> 1.88)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.42.42.42.4">-3.63</td>
<td class="ltx_td ltx_align_center" id="A4.T2.42.42.42.5">85.7%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.42.42.42.6">40</td>
</tr>
<tr class="ltx_tr" id="A4.T2.44.44.44">
<td class="ltx_td" id="A4.T2.44.44.44.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.43.43.43.1">Best-of-N + Lagrangian multiplier <math alttext="N=200" class="ltx_Math" display="inline" id="A4.T2.43.43.43.1.m1.1"><semantics id="A4.T2.43.43.43.1.m1.1a"><mrow id="A4.T2.43.43.43.1.m1.1.1" xref="A4.T2.43.43.43.1.m1.1.1.cmml"><mi id="A4.T2.43.43.43.1.m1.1.1.2" xref="A4.T2.43.43.43.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.43.43.43.1.m1.1.1.1" xref="A4.T2.43.43.43.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.43.43.43.1.m1.1.1.3" xref="A4.T2.43.43.43.1.m1.1.1.3.cmml">200</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.43.43.43.1.m1.1b"><apply id="A4.T2.43.43.43.1.m1.1.1.cmml" xref="A4.T2.43.43.43.1.m1.1.1"><eq id="A4.T2.43.43.43.1.m1.1.1.1.cmml" xref="A4.T2.43.43.43.1.m1.1.1.1"></eq><ci id="A4.T2.43.43.43.1.m1.1.1.2.cmml" xref="A4.T2.43.43.43.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.43.43.43.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.43.43.43.1.m1.1.1.3">200</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.43.43.43.1.m1.1c">N=200</annotation><annotation encoding="application/x-llamapun" id="A4.T2.43.43.43.1.m1.1d">italic_N = 200</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.44.44.44.2">6.61 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.44.44.44.2.m1.1"><semantics id="A4.T2.44.44.44.2.m1.1a"><mo id="A4.T2.44.44.44.2.m1.1.1" xref="A4.T2.44.44.44.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.44.44.44.2.m1.1b"><csymbol cd="latexml" id="A4.T2.44.44.44.2.m1.1.1.cmml" xref="A4.T2.44.44.44.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.44.44.44.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.44.44.44.2.m1.1d">±</annotation></semantics></math> 1.89)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.44.44.44.4">-3.62</td>
<td class="ltx_td ltx_align_center" id="A4.T2.44.44.44.5">85.8%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.44.44.44.6">58</td>
</tr>
<tr class="ltx_tr" id="A4.T2.46.46.46">
<td class="ltx_td" id="A4.T2.46.46.46.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.45.45.45.1">Best-of-N + Augmented safety <math alttext="N=100" class="ltx_Math" display="inline" id="A4.T2.45.45.45.1.m1.1"><semantics id="A4.T2.45.45.45.1.m1.1a"><mrow id="A4.T2.45.45.45.1.m1.1.1" xref="A4.T2.45.45.45.1.m1.1.1.cmml"><mi id="A4.T2.45.45.45.1.m1.1.1.2" xref="A4.T2.45.45.45.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.45.45.45.1.m1.1.1.1" xref="A4.T2.45.45.45.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.45.45.45.1.m1.1.1.3" xref="A4.T2.45.45.45.1.m1.1.1.3.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.45.45.45.1.m1.1b"><apply id="A4.T2.45.45.45.1.m1.1.1.cmml" xref="A4.T2.45.45.45.1.m1.1.1"><eq id="A4.T2.45.45.45.1.m1.1.1.1.cmml" xref="A4.T2.45.45.45.1.m1.1.1.1"></eq><ci id="A4.T2.45.45.45.1.m1.1.1.2.cmml" xref="A4.T2.45.45.45.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.45.45.45.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.45.45.45.1.m1.1.1.3">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.45.45.45.1.m1.1c">N=100</annotation><annotation encoding="application/x-llamapun" id="A4.T2.45.45.45.1.m1.1d">italic_N = 100</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.46.46.46.2">8.55 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.46.46.46.2.m1.1"><semantics id="A4.T2.46.46.46.2.m1.1a"><mo id="A4.T2.46.46.46.2.m1.1.1" xref="A4.T2.46.46.46.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.46.46.46.2.m1.1b"><csymbol cd="latexml" id="A4.T2.46.46.46.2.m1.1.1.cmml" xref="A4.T2.46.46.46.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.46.46.46.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.46.46.46.2.m1.1d">±</annotation></semantics></math> 1.58)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.46.46.46.4">-2.96</td>
<td class="ltx_td ltx_align_center" id="A4.T2.46.46.46.5">97.23%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.46.46.46.6">40</td>
</tr>
<tr class="ltx_tr" id="A4.T2.48.48.48">
<td class="ltx_td" id="A4.T2.48.48.48.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.47.47.47.1">Best-of-N + Augmented safety <math alttext="N=200" class="ltx_Math" display="inline" id="A4.T2.47.47.47.1.m1.1"><semantics id="A4.T2.47.47.47.1.m1.1a"><mrow id="A4.T2.47.47.47.1.m1.1.1" xref="A4.T2.47.47.47.1.m1.1.1.cmml"><mi id="A4.T2.47.47.47.1.m1.1.1.2" xref="A4.T2.47.47.47.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.47.47.47.1.m1.1.1.1" xref="A4.T2.47.47.47.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.47.47.47.1.m1.1.1.3" xref="A4.T2.47.47.47.1.m1.1.1.3.cmml">200</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.47.47.47.1.m1.1b"><apply id="A4.T2.47.47.47.1.m1.1.1.cmml" xref="A4.T2.47.47.47.1.m1.1.1"><eq id="A4.T2.47.47.47.1.m1.1.1.1.cmml" xref="A4.T2.47.47.47.1.m1.1.1.1"></eq><ci id="A4.T2.47.47.47.1.m1.1.1.2.cmml" xref="A4.T2.47.47.47.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.47.47.47.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.47.47.47.1.m1.1.1.3">200</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.47.47.47.1.m1.1c">N=200</annotation><annotation encoding="application/x-llamapun" id="A4.T2.47.47.47.1.m1.1d">italic_N = 200</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.48.48.48.2">9.01 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.48.48.48.2.m1.1"><semantics id="A4.T2.48.48.48.2.m1.1a"><mo id="A4.T2.48.48.48.2.m1.1.1" xref="A4.T2.48.48.48.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.48.48.48.2.m1.1b"><csymbol cd="latexml" id="A4.T2.48.48.48.2.m1.1.1.cmml" xref="A4.T2.48.48.48.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.48.48.48.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.48.48.48.2.m1.1d">±</annotation></semantics></math> 1.63)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.48.48.48.4">-2.98</td>
<td class="ltx_td ltx_align_center" id="A4.T2.48.48.48.5">97.76%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.48.48.48.6">58</td>
</tr>
<tr class="ltx_tr" id="A4.T2.51.51.51">
<td class="ltx_td" id="A4.T2.51.51.51.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.50.50.50.2">Beam search + Lagrangian multiplier <math alttext="N=64" class="ltx_Math" display="inline" id="A4.T2.49.49.49.1.m1.1"><semantics id="A4.T2.49.49.49.1.m1.1a"><mrow id="A4.T2.49.49.49.1.m1.1.1" xref="A4.T2.49.49.49.1.m1.1.1.cmml"><mi id="A4.T2.49.49.49.1.m1.1.1.2" xref="A4.T2.49.49.49.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.49.49.49.1.m1.1.1.1" xref="A4.T2.49.49.49.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.49.49.49.1.m1.1.1.3" xref="A4.T2.49.49.49.1.m1.1.1.3.cmml">64</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.49.49.49.1.m1.1b"><apply id="A4.T2.49.49.49.1.m1.1.1.cmml" xref="A4.T2.49.49.49.1.m1.1.1"><eq id="A4.T2.49.49.49.1.m1.1.1.1.cmml" xref="A4.T2.49.49.49.1.m1.1.1.1"></eq><ci id="A4.T2.49.49.49.1.m1.1.1.2.cmml" xref="A4.T2.49.49.49.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.49.49.49.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.49.49.49.1.m1.1.1.3">64</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.49.49.49.1.m1.1c">N=64</annotation><annotation encoding="application/x-llamapun" id="A4.T2.49.49.49.1.m1.1d">italic_N = 64</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.50.50.50.2.m2.1"><semantics id="A4.T2.50.50.50.2.m2.1a"><mrow id="A4.T2.50.50.50.2.m2.1.1" xref="A4.T2.50.50.50.2.m2.1.1.cmml"><mi id="A4.T2.50.50.50.2.m2.1.1.2" xref="A4.T2.50.50.50.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.50.50.50.2.m2.1.1.1" xref="A4.T2.50.50.50.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.50.50.50.2.m2.1.1.3" xref="A4.T2.50.50.50.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.50.50.50.2.m2.1b"><apply id="A4.T2.50.50.50.2.m2.1.1.cmml" xref="A4.T2.50.50.50.2.m2.1.1"><eq id="A4.T2.50.50.50.2.m2.1.1.1.cmml" xref="A4.T2.50.50.50.2.m2.1.1.1"></eq><ci id="A4.T2.50.50.50.2.m2.1.1.2.cmml" xref="A4.T2.50.50.50.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.50.50.50.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.50.50.50.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.50.50.50.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.50.50.50.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.51.51.51.3">8.33 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.51.51.51.3.m1.1"><semantics id="A4.T2.51.51.51.3.m1.1a"><mo id="A4.T2.51.51.51.3.m1.1.1" xref="A4.T2.51.51.51.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.51.51.51.3.m1.1b"><csymbol cd="latexml" id="A4.T2.51.51.51.3.m1.1.1.cmml" xref="A4.T2.51.51.51.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.51.51.51.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.51.51.51.3.m1.1d">±</annotation></semantics></math> 1.79)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.51.51.51.5">-4.09</td>
<td class="ltx_td ltx_align_center" id="A4.T2.51.51.51.6">87.08%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.51.51.51.7">36</td>
</tr>
<tr class="ltx_tr" id="A4.T2.54.54.54">
<td class="ltx_td" id="A4.T2.54.54.54.4"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.53.53.53.2">Beam search + Lagrangian multiplier <math alttext="N=128" class="ltx_Math" display="inline" id="A4.T2.52.52.52.1.m1.1"><semantics id="A4.T2.52.52.52.1.m1.1a"><mrow id="A4.T2.52.52.52.1.m1.1.1" xref="A4.T2.52.52.52.1.m1.1.1.cmml"><mi id="A4.T2.52.52.52.1.m1.1.1.2" xref="A4.T2.52.52.52.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.52.52.52.1.m1.1.1.1" xref="A4.T2.52.52.52.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.52.52.52.1.m1.1.1.3" xref="A4.T2.52.52.52.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.52.52.52.1.m1.1b"><apply id="A4.T2.52.52.52.1.m1.1.1.cmml" xref="A4.T2.52.52.52.1.m1.1.1"><eq id="A4.T2.52.52.52.1.m1.1.1.1.cmml" xref="A4.T2.52.52.52.1.m1.1.1.1"></eq><ci id="A4.T2.52.52.52.1.m1.1.1.2.cmml" xref="A4.T2.52.52.52.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.52.52.52.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.52.52.52.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.52.52.52.1.m1.1c">N=128</annotation><annotation encoding="application/x-llamapun" id="A4.T2.52.52.52.1.m1.1d">italic_N = 128</annotation></semantics></math>, <math alttext="\lambda=5" class="ltx_Math" display="inline" id="A4.T2.53.53.53.2.m2.1"><semantics id="A4.T2.53.53.53.2.m2.1a"><mrow id="A4.T2.53.53.53.2.m2.1.1" xref="A4.T2.53.53.53.2.m2.1.1.cmml"><mi id="A4.T2.53.53.53.2.m2.1.1.2" xref="A4.T2.53.53.53.2.m2.1.1.2.cmml">λ</mi><mo id="A4.T2.53.53.53.2.m2.1.1.1" xref="A4.T2.53.53.53.2.m2.1.1.1.cmml">=</mo><mn id="A4.T2.53.53.53.2.m2.1.1.3" xref="A4.T2.53.53.53.2.m2.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.53.53.53.2.m2.1b"><apply id="A4.T2.53.53.53.2.m2.1.1.cmml" xref="A4.T2.53.53.53.2.m2.1.1"><eq id="A4.T2.53.53.53.2.m2.1.1.1.cmml" xref="A4.T2.53.53.53.2.m2.1.1.1"></eq><ci id="A4.T2.53.53.53.2.m2.1.1.2.cmml" xref="A4.T2.53.53.53.2.m2.1.1.2">𝜆</ci><cn id="A4.T2.53.53.53.2.m2.1.1.3.cmml" type="integer" xref="A4.T2.53.53.53.2.m2.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.53.53.53.2.m2.1c">\lambda=5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.53.53.53.2.m2.1d">italic_λ = 5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.54.54.54.3">8.63 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.54.54.54.3.m1.1"><semantics id="A4.T2.54.54.54.3.m1.1a"><mo id="A4.T2.54.54.54.3.m1.1.1" xref="A4.T2.54.54.54.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.54.54.54.3.m1.1b"><csymbol cd="latexml" id="A4.T2.54.54.54.3.m1.1.1.cmml" xref="A4.T2.54.54.54.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.54.54.54.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.54.54.54.3.m1.1d">±</annotation></semantics></math> 1.80)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.54.54.54.5">-4.21</td>
<td class="ltx_td ltx_align_center" id="A4.T2.54.54.54.6">87.35 %</td>
<td class="ltx_td ltx_align_center" id="A4.T2.54.54.54.7">64</td>
</tr>
<tr class="ltx_tr" id="A4.T2.56.56.56">
<td class="ltx_td" id="A4.T2.56.56.56.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.55.55.55.1">Beam search + Augmented safety <math alttext="N=64" class="ltx_Math" display="inline" id="A4.T2.55.55.55.1.m1.1"><semantics id="A4.T2.55.55.55.1.m1.1a"><mrow id="A4.T2.55.55.55.1.m1.1.1" xref="A4.T2.55.55.55.1.m1.1.1.cmml"><mi id="A4.T2.55.55.55.1.m1.1.1.2" xref="A4.T2.55.55.55.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.55.55.55.1.m1.1.1.1" xref="A4.T2.55.55.55.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.55.55.55.1.m1.1.1.3" xref="A4.T2.55.55.55.1.m1.1.1.3.cmml">64</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.55.55.55.1.m1.1b"><apply id="A4.T2.55.55.55.1.m1.1.1.cmml" xref="A4.T2.55.55.55.1.m1.1.1"><eq id="A4.T2.55.55.55.1.m1.1.1.1.cmml" xref="A4.T2.55.55.55.1.m1.1.1.1"></eq><ci id="A4.T2.55.55.55.1.m1.1.1.2.cmml" xref="A4.T2.55.55.55.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.55.55.55.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.55.55.55.1.m1.1.1.3">64</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.55.55.55.1.m1.1c">N=64</annotation><annotation encoding="application/x-llamapun" id="A4.T2.55.55.55.1.m1.1d">italic_N = 64</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.56.56.56.2">9.84 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.56.56.56.2.m1.1"><semantics id="A4.T2.56.56.56.2.m1.1a"><mo id="A4.T2.56.56.56.2.m1.1.1" xref="A4.T2.56.56.56.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.56.56.56.2.m1.1b"><csymbol cd="latexml" id="A4.T2.56.56.56.2.m1.1.1.cmml" xref="A4.T2.56.56.56.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.56.56.56.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.56.56.56.2.m1.1d">±</annotation></semantics></math> 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.56.56.56.4">-2.93</td>
<td class="ltx_td ltx_align_center" id="A4.T2.56.56.56.5">95.38 %</td>
<td class="ltx_td ltx_align_center" id="A4.T2.56.56.56.6">22</td>
</tr>
<tr class="ltx_tr" id="A4.T2.58.58.58">
<td class="ltx_td" id="A4.T2.58.58.58.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.57.57.57.1">Beam search + Augmented safety <math alttext="N=128" class="ltx_Math" display="inline" id="A4.T2.57.57.57.1.m1.1"><semantics id="A4.T2.57.57.57.1.m1.1a"><mrow id="A4.T2.57.57.57.1.m1.1.1" xref="A4.T2.57.57.57.1.m1.1.1.cmml"><mi id="A4.T2.57.57.57.1.m1.1.1.2" xref="A4.T2.57.57.57.1.m1.1.1.2.cmml">N</mi><mo id="A4.T2.57.57.57.1.m1.1.1.1" xref="A4.T2.57.57.57.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.57.57.57.1.m1.1.1.3" xref="A4.T2.57.57.57.1.m1.1.1.3.cmml">128</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.57.57.57.1.m1.1b"><apply id="A4.T2.57.57.57.1.m1.1.1.cmml" xref="A4.T2.57.57.57.1.m1.1.1"><eq id="A4.T2.57.57.57.1.m1.1.1.1.cmml" xref="A4.T2.57.57.57.1.m1.1.1.1"></eq><ci id="A4.T2.57.57.57.1.m1.1.1.2.cmml" xref="A4.T2.57.57.57.1.m1.1.1.2">𝑁</ci><cn id="A4.T2.57.57.57.1.m1.1.1.3.cmml" type="integer" xref="A4.T2.57.57.57.1.m1.1.1.3">128</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.57.57.57.1.m1.1c">N=128</annotation><annotation encoding="application/x-llamapun" id="A4.T2.57.57.57.1.m1.1d">italic_N = 128</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.58.58.58.2">10.31 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.58.58.58.2.m1.1"><semantics id="A4.T2.58.58.58.2.m1.1a"><mo id="A4.T2.58.58.58.2.m1.1.1" xref="A4.T2.58.58.58.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.58.58.58.2.m1.1b"><csymbol cd="latexml" id="A4.T2.58.58.58.2.m1.1.1.cmml" xref="A4.T2.58.58.58.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.58.58.58.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.58.58.58.2.m1.1d">±</annotation></semantics></math> 1.37)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.58.58.58.4">-2.94</td>
<td class="ltx_td ltx_align_center" id="A4.T2.58.58.58.5">97.36%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.58.58.58.6">39</td>
</tr>
<tr class="ltx_tr" id="A4.T2.60.60.60">
<td class="ltx_td" id="A4.T2.60.60.60.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.59.59.59.1">ARGS <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.59.59.59.1.m1.1"><semantics id="A4.T2.59.59.59.1.m1.1a"><mrow id="A4.T2.59.59.59.1.m1.1.1" xref="A4.T2.59.59.59.1.m1.1.1.cmml"><mi id="A4.T2.59.59.59.1.m1.1.1.2" xref="A4.T2.59.59.59.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.59.59.59.1.m1.1.1.1" xref="A4.T2.59.59.59.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.59.59.59.1.m1.1.1.3" xref="A4.T2.59.59.59.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.59.59.59.1.m1.1b"><apply id="A4.T2.59.59.59.1.m1.1.1.cmml" xref="A4.T2.59.59.59.1.m1.1.1"><eq id="A4.T2.59.59.59.1.m1.1.1.1.cmml" xref="A4.T2.59.59.59.1.m1.1.1.1"></eq><ci id="A4.T2.59.59.59.1.m1.1.1.2.cmml" xref="A4.T2.59.59.59.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.59.59.59.1.m1.1.1.3.cmml" type="float" xref="A4.T2.59.59.59.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.59.59.59.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.59.59.59.1.m1.1d">italic_ω = 2.5</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A4.T2.60.60.60.2">6.72 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.60.60.60.2.m1.1"><semantics id="A4.T2.60.60.60.2.m1.1a"><mo id="A4.T2.60.60.60.2.m1.1.1" xref="A4.T2.60.60.60.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.60.60.60.2.m1.1b"><csymbol cd="latexml" id="A4.T2.60.60.60.2.m1.1.1.cmml" xref="A4.T2.60.60.60.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.60.60.60.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.60.60.60.2.m1.1d">±</annotation></semantics></math> 1.83)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.60.60.60.4">-2.59</td>
<td class="ltx_td ltx_align_center" id="A4.T2.60.60.60.5">78.5%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.60.60.60.6">94</td>
</tr>
<tr class="ltx_tr" id="A4.T2.62.62.62">
<td class="ltx_td" id="A4.T2.62.62.62.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.61.61.61.1">ARGS <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.61.61.61.1.m1.1"><semantics id="A4.T2.61.61.61.1.m1.1a"><mrow id="A4.T2.61.61.61.1.m1.1.1" xref="A4.T2.61.61.61.1.m1.1.1.cmml"><mi id="A4.T2.61.61.61.1.m1.1.1.2" xref="A4.T2.61.61.61.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.61.61.61.1.m1.1.1.1" xref="A4.T2.61.61.61.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.61.61.61.1.m1.1.1.3" xref="A4.T2.61.61.61.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.61.61.61.1.m1.1b"><apply id="A4.T2.61.61.61.1.m1.1.1.cmml" xref="A4.T2.61.61.61.1.m1.1.1"><eq id="A4.T2.61.61.61.1.m1.1.1.1.cmml" xref="A4.T2.61.61.61.1.m1.1.1.1"></eq><ci id="A4.T2.61.61.61.1.m1.1.1.2.cmml" xref="A4.T2.61.61.61.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.61.61.61.1.m1.1.1.3.cmml" type="float" xref="A4.T2.61.61.61.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.61.61.61.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.61.61.61.1.m1.1d">italic_ω = 2.5</annotation></semantics></math> + Lagrangian multiplier</td>
<td class="ltx_td ltx_align_center" id="A4.T2.62.62.62.2">2.26 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.62.62.62.2.m1.1"><semantics id="A4.T2.62.62.62.2.m1.1a"><mo id="A4.T2.62.62.62.2.m1.1.1" xref="A4.T2.62.62.62.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.62.62.62.2.m1.1b"><csymbol cd="latexml" id="A4.T2.62.62.62.2.m1.1.1.cmml" xref="A4.T2.62.62.62.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.62.62.62.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.62.62.62.2.m1.1d">±</annotation></semantics></math> 1.56)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.62.62.62.4">-1.64</td>
<td class="ltx_td ltx_align_center" id="A4.T2.62.62.62.5">81%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.62.62.62.6">127</td>
</tr>
<tr class="ltx_tr" id="A4.T2.64.64.64">
<td class="ltx_td" id="A4.T2.64.64.64.3"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.63.63.63.1">ARGS <math alttext="\omega=2.5" class="ltx_Math" display="inline" id="A4.T2.63.63.63.1.m1.1"><semantics id="A4.T2.63.63.63.1.m1.1a"><mrow id="A4.T2.63.63.63.1.m1.1.1" xref="A4.T2.63.63.63.1.m1.1.1.cmml"><mi id="A4.T2.63.63.63.1.m1.1.1.2" xref="A4.T2.63.63.63.1.m1.1.1.2.cmml">ω</mi><mo id="A4.T2.63.63.63.1.m1.1.1.1" xref="A4.T2.63.63.63.1.m1.1.1.1.cmml">=</mo><mn id="A4.T2.63.63.63.1.m1.1.1.3" xref="A4.T2.63.63.63.1.m1.1.1.3.cmml">2.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T2.63.63.63.1.m1.1b"><apply id="A4.T2.63.63.63.1.m1.1.1.cmml" xref="A4.T2.63.63.63.1.m1.1.1"><eq id="A4.T2.63.63.63.1.m1.1.1.1.cmml" xref="A4.T2.63.63.63.1.m1.1.1.1"></eq><ci id="A4.T2.63.63.63.1.m1.1.1.2.cmml" xref="A4.T2.63.63.63.1.m1.1.1.2">𝜔</ci><cn id="A4.T2.63.63.63.1.m1.1.1.3.cmml" type="float" xref="A4.T2.63.63.63.1.m1.1.1.3">2.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.63.63.63.1.m1.1c">\omega=2.5</annotation><annotation encoding="application/x-llamapun" id="A4.T2.63.63.63.1.m1.1d">italic_ω = 2.5</annotation></semantics></math> + Cost Model</td>
<td class="ltx_td ltx_align_center" id="A4.T2.64.64.64.2">0.01 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.64.64.64.2.m1.1"><semantics id="A4.T2.64.64.64.2.m1.1a"><mo id="A4.T2.64.64.64.2.m1.1.1" xref="A4.T2.64.64.64.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.64.64.64.2.m1.1b"><csymbol cd="latexml" id="A4.T2.64.64.64.2.m1.1.1.cmml" xref="A4.T2.64.64.64.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.64.64.64.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.64.64.64.2.m1.1d">±</annotation></semantics></math> 1.37)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.64.64.64.4">-3.27</td>
<td class="ltx_td ltx_align_center" id="A4.T2.64.64.64.5">98.4%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.64.64.64.6">90</td>
</tr>
<tr class="ltx_tr" id="A4.T2.65.65.65">
<td class="ltx_td" id="A4.T2.65.65.65.2"></td>
<td class="ltx_td ltx_align_center" id="A4.T2.65.65.65.3">InferenceGuard (N=128)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.65.65.65.1">10.26 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.65.65.65.1.m1.1"><semantics id="A4.T2.65.65.65.1.m1.1a"><mo id="A4.T2.65.65.65.1.m1.1.1" xref="A4.T2.65.65.65.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.65.65.65.1.m1.1b"><csymbol cd="latexml" id="A4.T2.65.65.65.1.m1.1.1.cmml" xref="A4.T2.65.65.65.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.65.65.65.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.65.65.65.1.m1.1d">±</annotation></semantics></math> 1.42)</td>
<td class="ltx_td ltx_align_center" id="A4.T2.65.65.65.4">-2.96</td>
<td class="ltx_td ltx_align_center" id="A4.T2.65.65.65.5">99.7%</td>
<td class="ltx_td ltx_align_center" id="A4.T2.65.65.65.6">39</td>
</tr>
<tr class="ltx_tr" id="A4.T2.66.66.66">
<td class="ltx_td ltx_border_bb" id="A4.T2.66.66.66.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.66.66.66.3">InferenceGuard with Critic (N=128)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.66.66.66.1"><span class="ltx_text ltx_font_bold" id="A4.T2.66.66.66.1.1">10.27 (<math alttext="\pm" class="ltx_Math" display="inline" id="A4.T2.66.66.66.1.1.m1.1"><semantics id="A4.T2.66.66.66.1.1.m1.1a"><mo id="A4.T2.66.66.66.1.1.m1.1.1" xref="A4.T2.66.66.66.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A4.T2.66.66.66.1.1.m1.1b"><csymbol cd="latexml" id="A4.T2.66.66.66.1.1.m1.1.1.cmml" xref="A4.T2.66.66.66.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A4.T2.66.66.66.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A4.T2.66.66.66.1.1.m1.1d">±</annotation></semantics></math> 1.50)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.66.66.66.4"><span class="ltx_text ltx_font_bold" id="A4.T2.66.66.66.4.1">-2.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.66.66.66.5">
<span class="ltx_text ltx_font_bold" id="A4.T2.66.66.66.5.1">100</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T2.66.66.66.6">39</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of different methods for safe and effective language model alignment on the PKU-SafeRLHF dataset.  It evaluates various techniques, including baselines and the proposed InferenceGuard method, across key metrics such as average reward (reflecting helpfulness), average cost (indicating harmfulness), safety rate (percentage of safe responses within the safety budget), and inference time. The results offer insights into the trade-offs between these metrics for each method and highlight the performance of InferenceGuard in achieving high safety and reward.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance Comparison on Dataset PKU-SafeRLHF
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T3.3.4.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A4.T3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A4.T3.3.4.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A4.T3.3.4.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.5.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T3.3.5.2.1">Hidden Dimension</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.3.5.2.2">4096</td>
</tr>
<tr class="ltx_tr" id="A4.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T3.1.1.2">Learning Rate</td>
<td class="ltx_td ltx_align_left" id="A4.T3.1.1.1"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A4.T3.1.1.1.m1.1"><semantics id="A4.T3.1.1.1.m1.1a"><mrow id="A4.T3.1.1.1.m1.1.1" xref="A4.T3.1.1.1.m1.1.1.cmml"><mn id="A4.T3.1.1.1.m1.1.1.2" xref="A4.T3.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A4.T3.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A4.T3.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A4.T3.1.1.1.m1.1.1.3" xref="A4.T3.1.1.1.m1.1.1.3.cmml"><mn id="A4.T3.1.1.1.m1.1.1.3.2" xref="A4.T3.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A4.T3.1.1.1.m1.1.1.3.3" xref="A4.T3.1.1.1.m1.1.1.3.3.cmml"><mo id="A4.T3.1.1.1.m1.1.1.3.3a" xref="A4.T3.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A4.T3.1.1.1.m1.1.1.3.3.2" xref="A4.T3.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T3.1.1.1.m1.1b"><apply id="A4.T3.1.1.1.m1.1.1.cmml" xref="A4.T3.1.1.1.m1.1.1"><times id="A4.T3.1.1.1.m1.1.1.1.cmml" xref="A4.T3.1.1.1.m1.1.1.1"></times><cn id="A4.T3.1.1.1.m1.1.1.2.cmml" type="integer" xref="A4.T3.1.1.1.m1.1.1.2">1</cn><apply id="A4.T3.1.1.1.m1.1.1.3.cmml" xref="A4.T3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T3.1.1.1.m1.1.1.3.1.cmml" xref="A4.T3.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A4.T3.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A4.T3.1.1.1.m1.1.1.3.2">10</cn><apply id="A4.T3.1.1.1.m1.1.1.3.3.cmml" xref="A4.T3.1.1.1.m1.1.1.3.3"><minus id="A4.T3.1.1.1.m1.1.1.3.3.1.cmml" xref="A4.T3.1.1.1.m1.1.1.3.3"></minus><cn id="A4.T3.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T3.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A4.T3.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.6.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T3.3.6.3.1">Number of Epochs</td>
<td class="ltx_td ltx_align_left" id="A4.T3.3.6.3.2">50</td>
</tr>
<tr class="ltx_tr" id="A4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T3.2.2.1">Discount Factor (<math alttext="\gamma" class="ltx_Math" display="inline" id="A4.T3.2.2.1.m1.1"><semantics id="A4.T3.2.2.1.m1.1a"><mi id="A4.T3.2.2.1.m1.1.1" xref="A4.T3.2.2.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="A4.T3.2.2.1.m1.1b"><ci id="A4.T3.2.2.1.m1.1.1.cmml" xref="A4.T3.2.2.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.2.2.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="A4.T3.2.2.1.m1.1d">italic_γ</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.2.2.2">0.999</td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.7.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T3.3.7.4.1">Batch Size</td>
<td class="ltx_td ltx_align_left" id="A4.T3.3.7.4.2">8</td>
</tr>
<tr class="ltx_tr" id="A4.T3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T3.3.3.1">Safety Budget <math alttext="d" class="ltx_Math" display="inline" id="A4.T3.3.3.1.m1.1"><semantics id="A4.T3.3.3.1.m1.1a"><mi id="A4.T3.3.3.1.m1.1.1" xref="A4.T3.3.3.1.m1.1.1.cmml">d</mi><annotation-xml encoding="MathML-Content" id="A4.T3.3.3.1.m1.1b"><ci id="A4.T3.3.3.1.m1.1.1.cmml" xref="A4.T3.3.3.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.3.3.1.m1.1c">d</annotation><annotation encoding="application/x-llamapun" id="A4.T3.3.3.1.m1.1d">italic_d</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.3.3.2">10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training of the critic network within the InferenceGuard model.  The hyperparameters control various aspects of the training process, such as the network's architecture (hidden dimension), the learning process (learning rate, number of epochs, discount factor), batch size for training data, and the safety budget.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyperparameters for Critic Network Training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01208/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01208/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}