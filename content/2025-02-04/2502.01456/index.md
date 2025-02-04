---
title: "Process Reinforcement through Implicit Rewards"
summary: "PRIME (Process Reinforcement through IMplicit rEwards) revolutionizes LLM training by efficiently using implicit process rewards from online policy rollouts and outcome labels, significantly boosting ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01456 {{< /keyword >}}
{{< keyword icon="writer" >}} Ganqu Cui et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01456" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01456" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01456/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for training large language models (LLMs) using reinforcement learning (RL) often rely on sparse outcome-level rewards, leading to issues like training inefficiency and difficulty in assigning credit for intermediate steps. Dense rewards, providing feedback at each step, can address these issues. However, obtaining high-quality dense rewards is costly and prone to reward hacking. This paper introduces PRIME, a novel method that addresses these challenges. 

PRIME leverages implicit process rewards derived from policy rollouts and outcome labels. This innovative technique avoids the expensive process of labeling each step and mitigates reward hacking. Experiments show PRIME significantly enhances performance on benchmark reasoning tasks, outperforming existing models and requiring substantially less training data.  **The results show that PRIME offers a scalable and efficient alternative** for training LLMs with dense rewards.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PRIME uses implicit process rewards, eliminating the need for expensive process-level labels during training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PRIME demonstrates significant improvement in various LLM reasoning benchmarks, outperforming existing models, achieving 15.1% improvement on average and 20%+ on key benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The online updating mechanism of PRIME prevents reward hacking and enables efficient use of limited training data, achieving 2.5x sample efficiency gain compared to using outcome rewards only {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on reinforcement learning for large language models (LLMs).  It addresses the significant challenge of efficiently training LLMs with dense rewards, a problem hindering progress in complex reasoning tasks. **PRIME's novel approach, using implicit rewards and online updates, offers a scalable and cost-effective solution**, opening new avenues for improving LLM reasoning capabilities.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01456/x1.png)

> 🔼 The bar chart displays the performance of various language models on several competitive mathematics benchmarks.  Eurus-2-7B-PRIME, a model enhanced with the PRIME method, demonstrates superior performance compared to other state-of-the-art models, including those with significantly larger parameter counts. The chart highlights the substantial improvement achieved by PRIME (+16.7%) over the Eurus-2-7B-SFT baseline, showcasing the effectiveness of the PRIME technique in enhancing mathematical reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overall math performance. Eurus-2-7B-PRIME excels at competition-level mathematics benchmarks, outperforming advanced math models and larger models. Notably, PRIME brings substantial performance gain (+16.7%) over Eurus-2-7B-SFT.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.2.3.1.2" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.1.2.1" style="background-color:#D7E8E8;">Eurus-2-7B-PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.1.3.1">Qwen2.5-Math-7B-Instruct</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.4.1.1">Base Model</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.4.1.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S1.T1.2.2.4.1.2.1" style="background-color:#D7E8E8;">Qwen2.5-Math-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.4.1.3">Qwen2.5-Math-7B</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.5.2">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.5.2.1">SFT Data</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.5.2.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S1.T1.2.2.5.2.2.1" style="background-color:#D7E8E8;">230K (open-source)</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.5.2.3">2.5M (open-source &amp; in-house)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.6.3">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.6.3.1">RM Data</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.6.3.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S1.T1.2.2.6.3.2.1" style="background-color:#D7E8E8;">0</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.6.3.3">618K (in-house)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.7.4">
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.7.4.1">RM</td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.7.4.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S1.T1.2.2.7.4.2.1" style="background-color:#D7E8E8;">Eurus-2-7B-SFT</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.2.2.7.4.3">Qwen2.5-Math-RM (72B)</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.2.2.2.3">RL Data</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.1.1.1.1" style="background-color:#D7E8E8;"><span class="ltx_text" id="S1.T1.1.1.1.1.1" style="background-color:#D7E8E8;">150K queries <math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.1.1.1.1.1.m1.1" style="background-color:#D7E8E8;"><semantics id="S1.T1.1.1.1.1.1.m1.1a"><mo id="S1.T1.1.1.1.1.1.m1.1.1" mathbackground="#D7E8E8" xref="S1.T1.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.1.1.m1.1b"><times id="S1.T1.1.1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.1.1.m1.1d">×</annotation></semantics></math> 4 samples</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.2.2.2.2">66K queries <math alttext="\times" class="ltx_Math" display="inline" id="S1.T1.2.2.2.2.m1.1"><semantics id="S1.T1.2.2.2.2.m1.1a"><mo id="S1.T1.2.2.2.2.m1.1.1" xref="S1.T1.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.2.m1.1b"><times id="S1.T1.2.2.2.2.m1.1.1.cmml" xref="S1.T1.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.2.m1.1d">×</annotation></semantics></math> 32 samples</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the computational resources used to train the Eurus-2-7B-PRIME model with the Qwen2.5-Math-7B-Instruct model.  It shows a significant difference in the amount of data used for supervised fine-tuning (SFT) and reinforcement learning (RL), highlighting the efficiency gains achieved by PRIME.  Specifically, it contrasts the base models used, the size of the SFT datasets, the amount of reward model data, the type of reward model employed, and the size of the RL training data used in each approach.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison of resource requirements between Eurus-2-7B-PRIME and Qwen2.5-Math-7B-Instruct.
> </details>





### In-depth insights


#### Implicit Reward RL
Implicit Reward RL presents a compelling paradigm shift in reinforcement learning (RL) for large language models (LLMs).  Traditional RL approaches often struggle with the high cost and inherent ambiguity of defining explicit, dense rewards for complex reasoning tasks.  **Implicit reward methods offer a more efficient alternative by leveraging readily available outcome-level feedback (e.g., whether an answer is correct) to indirectly guide the learning process.** This circumvents the need for extensive, manual annotation of intermediate steps.  The effectiveness of this approach hinges on cleverly designed reward models capable of inferring process-level information from high-level signals.  **Key challenges include avoiding reward hacking (where the model exploits weaknesses in the reward model to maximize reward without genuine progress) and maintaining scalability for large LLMs.**  Despite these hurdles, implicit reward RL shows great promise for improving the training efficiency and overall performance of LLMs on complex reasoning benchmarks, making it an exciting area of ongoing research.

#### Online PRM Updates
Online updates to Process Reward Models (PRMs) are crucial for effective reinforcement learning (RL) in large language models (LLMs), particularly in addressing the challenge of reward hacking.  **Continuously adapting the PRM prevents the policy from exploiting loopholes in a static reward function.**  However, online PRM updates present significant challenges.  Acquiring high-quality process-level labels for every step is prohibitively expensive. Therefore, methods like using implicit rewards, derived from outcome labels, offer a scalable solution. **Implicit reward methods reduce reliance on expensive annotations**, enabling online PRM adjustments using only policy rollouts and outcome feedback. This approach significantly lowers development and computational overhead compared to traditional PRM training.  **The key is to find a balance between responsiveness and stability:**  Overly frequent updates could lead to instability, whereas infrequent updates might not effectively address reward hacking or changing policy behavior.  Furthermore, sophisticated techniques may be required to handle the inherent noise and uncertainty in both process and outcome feedback, thus ensuring the robust learning process.

#### Scalable Reward Model
A scalable reward model is crucial for the effective application of reinforcement learning (RL) to large language models (LLMs).  The challenge lies in the high cost of obtaining high-quality, dense process-level rewards for training.  **Existing methods often rely on expensive human annotation or estimation techniques that lack scalability**. A truly scalable solution must leverage readily available data like outcome labels from policy rollouts. This might involve techniques such as **implicit reward modeling**, which derives process-level rewards from outcome labels and online PRM updates without explicit reward model training, significantly reducing the development overhead.  Another aspect of scalability relates to the algorithm's compatibility and efficiency with various RL algorithms.  **A successful scalable reward model will need to integrate seamlessly with established RL frameworks and not require substantial modifications**.  Ultimately, a scalable solution needs to address reward hacking and over-optimization issues commonly found when using simple sparse rewards, providing a robust and effective approach to online RL training for LLMs.  **Efficiency is also key, reducing the number of rollouts necessary for accurate advantage estimation and model training**.

#### Math & Code Benchmarks
A dedicated section on "Math & Code Benchmarks" within a research paper would be crucial for validating the effectiveness of a proposed model or approach.  It should present a diverse range of well-established benchmarks, encompassing various levels of difficulty and problem types within both mathematical and coding domains.  **The selection of benchmarks must be justified, highlighting their relevance to the research question and the model's intended application**.  Results should be presented clearly, ideally with tables comparing the model's performance against state-of-the-art baselines. **Statistical significance testing should be used to demonstrate the robustness of any performance gains**.  Furthermore, a detailed analysis of the model's strengths and weaknesses on each benchmark task should be included, offering valuable insights into its capabilities and limitations.  **A discussion of potential biases in the benchmark datasets and suggestions for future improvement should also be part of this section** to enhance the research's overall impact and reproducibility.

#### Future of PRIME
The future of PRIME hinges on several key aspects.  **Scalability** remains paramount; future work should focus on optimizing its efficiency for even larger language models and more complex reasoning tasks.  **Robustness** is crucial, requiring further investigation into its resilience to various data distributions and potential vulnerabilities like reward hacking, particularly as models become more sophisticated. **Generalization** to diverse tasks beyond mathematics and coding is vital to demonstrate its broader applicability and impact.  **Integration** with other RL frameworks and model architectures should be explored, promoting seamless collaboration within the existing ecosystem of tools and techniques. Finally, **interpretability** improvements are necessary to provide greater insights into the inner workings of PRIME, enabling better understanding, debugging, and potential enhancements in its decision-making processes.  The ultimate success of PRIME depends on successfully addressing these challenges, unlocking its full potential for advanced AI systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01456/x2.png)

> 🔼 The figure illustrates the PRIME framework's workflow.  It begins by initializing both the policy model and the Implicit PRM using a reference model. Next, multiple responses are generated for each prompt, and a filter based on output accuracy selects the most promising ones. Then, the Implicit PRM calculates implicit process rewards for each token, which are used to update the PRM itself using cross-entropy loss. Finally, advantages are computed based on these rewards, and these are used in calculating the policy loss, enabling the update of the policy model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of PRIME. PRIME follows that (1) initialize policy model and the Implicit PRM both with the reference model; (2) sample multiple responses for each prompt and filter with output accuracy; (3) obtain implicit process rewards by the Implicit PRM and update it using cross-entropy (CE) loss; (4) compute advantage and policy loss then update the policy model.
> </details>



![](https://arxiv.org/html/2502.01456/x3.png)

> 🔼 This figure displays the effect of online prompt filtering on the training rewards during reinforcement learning.  The blue line shows the training rewards with online prompt filtering applied, while the orange line represents the training rewards without filtering. The plot demonstrates a significant reduction in variance of the training rewards when using online prompt filtering, suggesting improved stability in the learning process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Impact of online prompt filtering on training rewards.
> </details>



![](https://arxiv.org/html/2502.01456/x4.png)

> 🔼 This figure shows the outcome-based rewards obtained during the training process using a 10-step moving average. It illustrates the trend of training rewards over time, providing insights into the learning progress and the effectiveness of the reward system.
> <details>
> <summary>read the caption</summary>
> (a) Outcome training rewards (10-step moving).
> </details>



![](https://arxiv.org/html/2502.01456/x5.png)

> 🔼 The figure shows the test accuracy of different models across various gradient update steps during training.  It illustrates how the accuracy changes over time as the model is updated and refined using different methods, providing insights into the learning progress and relative performance of the compared models.
> <details>
> <summary>read the caption</summary>
> (b) Test accuracy across different gradient steps.
> </details>



![](https://arxiv.org/html/2502.01456/x6.png)

> 🔼 Figure 4 presents a comparison of the performance of PRIME (Process Reinforcement through Implicit Rewards) and RLOO (Reward-Level Online Optimization) on various tasks. Both methods employ an outcome verifier (OV) to evaluate performance. The results show that PRIME, which utilizes dense rewards, achieves a 2.5x improvement in sample efficiency and a 6.9% increase in performance compared to RLOO, which uses only outcome-level rewards.  Moreover, PRIME demonstrates superior performance on downstream tasks, illustrating the advantages of dense rewards in reinforcement learning for LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4:  The effect of dense reward. We compare PRIME and RLOO with outcome verifier (OV). Dense rewards in PRIME lead to 2.5×2.5\times2.5 × sample efficiency and 6.9%percent6.96.9\%6.9 % performance improvement. PRIME also substantially outperforms RLOO on downstream tasks.
> </details>



![](https://arxiv.org/html/2502.01456/x7.png)

> 🔼 This figure shows the outcome-based rewards obtained during the training process. The rewards are calculated every 10 steps and smoothed using a 10-step moving average to reduce noise and highlight the overall trend. It visually represents the learning progress of the model, indicating how well the model is performing based on its final outputs. Higher reward values suggest improved performance in solving the tasks.
> <details>
> <summary>read the caption</summary>
> (a) Outcome training rewards (10-step moving).
> </details>



![](https://arxiv.org/html/2502.01456/x8.png)

> 🔼 The graph shows how the test accuracy of the model changes as the number of gradient steps increases.  This illustrates the model's learning progress and performance improvement over time during the training process.  It provides insights into how effectively the model learns and generalizes to unseen data as training progresses.
> <details>
> <summary>read the caption</summary>
> (b) Test accuracy across different gradient steps.
> </details>



![](https://arxiv.org/html/2502.01456/extracted/6173597/figures/images/policy_ref.png)

> 🔼 This figure compares the performance of different process reward models (PRMs) in a reinforcement learning setting.  The key finding is that online PRMs, particularly those initialized using the supervised fine-tuning (SFT) model, achieve superior results compared to offline PRMs or online PRMs trained on additional data.  The results demonstrate that training a PRM using only the on-policy rollouts from the SFT model is sufficient, and adding extra training data negatively impacts the performance in both online and offline scenarios.  This suggests that overfitting is a significant concern when training PRMs outside of the online reinforcement learning context.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of different PRMs. Online PRM initialized from SFT model achieved the best results. Surprisingly, using PRMs trained on extra rollouts hurts the performance in both online and offline settings.
> </details>



![](https://arxiv.org/html/2502.01456/extracted/6173597/figures/images/sfr_ref.png)

> 🔼 This figure displays the impact of online vs. offline updates of the process reward model (PRM) on its accuracy. The x-axis represents the training steps, and the y-axis shows the PRM's accuracy in classifying rewards as correct or incorrect.  The online PRM, updated during training, maintains high accuracy, whereas the offline PRM, trained beforehand, gradually loses accuracy due to overoptimization. This highlights the importance of online PRM updates to prevent performance degradation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Impact of PRM online update. The offline PRM is gradully been overoptimized while online PRMs achieve higher accuracy throughout training.
> </details>



![](https://arxiv.org/html/2502.01456/x9.png)

> 🔼 This figure compares two different methods for implementing the implicit process reward model (PRM) in reinforcement learning. The left panel (a) shows the results when using the policy's log probabilities as the reference distribution for the PRM. This method directly uses the model's own estimates of token probabilities to guide the PRM. The right panel (b) shows the alternative method, which employs the initial Supervised Fine-Tuning (SFT) model as the reference. In this case, the PRM is based on a pre-trained model, rather than using the model's dynamically changing probability estimates.
> <details>
> <summary>read the caption</summary>
> (a) Policy ref: We use the policy logprob as πrefsubscript𝜋ref\pi_{\text{ref}}italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT for PRM.
> </details>



![](https://arxiv.org/html/2502.01456/x10.png)

> 🔼 This figure illustrates a design choice in the PRIME framework, specifically how the reference policy (πref) is selected for calculating implicit process rewards.  The (b) part of the figure shows a setup where the initial policy model from the supervised fine-tuning (SFT) stage is used as the reference. This means that the probabilities from the initially trained SFT model are used when computing the implicit process reward, providing a consistent baseline against which to measure the current policy. This choice of reference model helps stabilize the training process and mitigates issues related to reward hacking and reward model overoptimization.
> <details>
> <summary>read the caption</summary>
> (b) SFT ref: We retain the initial policy to provide πrefsubscript𝜋ref\pi_{\text{ref}}italic_π start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT for PRM and KL.
> </details>



![](https://arxiv.org/html/2502.01456/x11.png)

> 🔼 This figure compares two approaches for using a reference policy in the PRIME reinforcement learning framework.  The 'policy ref' method uses the log probabilities from the current policy model as the reference.  The 'SFT ref' method uses the initial Supervised Fine-Tuning (SFT) model's log probabilities as a reference. The comparison highlights how the choice of reference policy impacts the overall performance of the algorithm.  Both methods are visually shown in separate diagrams illustrating their process.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of different reference policy implementations. One uses the running policy’s old logprobs as reference (policy ref) while the other uses the initial SFT model as the reference model (SFT ref).
> </details>



![](https://arxiv.org/html/2502.01456/x12.png)

> 🔼 This figure compares two different methods of selecting a reference model for the Implicit Process Reward Model (PRM) within the PRIME framework. The first method uses the current policy model's log probabilities as the reference. The second method uses the initial Supervised Fine-Tuning (SFT) model's log probabilities.  The results show that the training rewards obtained using both methods are quite similar, suggesting that the choice of reference model may not be a critical factor in the PRIME framework's performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: Different reference model for PRM. We compare two reference model selection strategies for PRIME. Using the policy model as reference and using the initial SFT model as reference. Their rewards are similar.
> </details>



![](https://arxiv.org/html/2502.01456/x13.png)

> 🔼 This figure shows the performance of the Implicit PRM (Process Reward Model) during training. The y-axis represents the classification accuracy of the PRM on the training samples. The x-axis represents the training steps. This plot helps visualize how well the PRM learns to predict process rewards over the course of training. The accuracy is measured on training samples and shows the improvement in the PRM's ability to correctly classify token-level rewards during training.
> <details>
> <summary>read the caption</summary>
> (a) PRM classification accuracy on training samples.
> </details>



![](https://arxiv.org/html/2502.01456/x14.png)

> 🔼 The graph displays the training outcome rewards over time steps for two different methods: single forward and double forward.  It shows the cumulative outcome rewards achieved during the training process. The double-forward approach demonstrates slightly higher rewards, suggesting it might lead to better overall model performance.
> <details>
> <summary>read the caption</summary>
> (b) Training outcome rewards.
> </details>



![](https://arxiv.org/html/2502.01456/x15.png)

> 🔼 This figure compares the performance of single-forward and double-forward methods in training an implicit process reward model (PRM). Single-forward updates the PRM once per training iteration, using the rewards from the previous PRM, while double-forward updates the PRM twice, first using the older rewards and then again using the newly calculated rewards. The results show that the double-forward method achieves higher PRM accuracy after the online update, suggesting it may be more effective at preventing overfitting. However, both methods yield similar training rewards, indicating comparable overall performance in terms of maximizing the cumulative reward.
> <details>
> <summary>read the caption</summary>
> Figure 9: Single and double forward. While double forward methods obtain higher accuracy after online update, the two variants achieve similar rewards during training.
> </details>



![](https://arxiv.org/html/2502.01456/x16.png)

> 🔼 Figure 10 presents a comparison of the performance of several reinforcement learning algorithms (REINFORCE, GRPO, PPO, and RLOO) when used with and without the PRIME method.  The figure demonstrates that incorporating PRIME consistently improves the performance of all four algorithms, achieving similar levels of improvement as seen with RLOO alone.  This highlights the general applicability and effectiveness of the PRIME method across different reinforcement learning algorithms.
> <details>
> <summary>read the caption</summary>
> Figure 10: PRIME also benefits REINFORCE, GRPO, and PPO, achieving similar improvement as RLOO.
> </details>



![](https://arxiv.org/html/2502.01456/x17.png)

> 🔼 This figure compares the performance of using value models versus reward models within a reinforcement learning framework for large language models.  Specifically, it contrasts the performance of three approaches: (1) a standard value model from Proximal Policy Optimization (PPO), (2) a value model based on the implicit process reward model (PRM) proposed in the paper, and (3) a reward model using the implicit PRM. The results demonstrate that using reward models, particularly the implicit PRM reward model, significantly outperforms value models in terms of training effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparison of value models and reward models. We show that value models, either the original PPO one or Implicit PRM, is substaintially worse than reward models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.2.1">Step</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1">AIME 2024</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1">AMC</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1">MATH-500</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.6.1">MinervaMath</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.7.1">OlympiadBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.8.1">LeetCode</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.9.1">LiveCodeBench</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.10.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.1.2">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.3">9.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.4">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.5">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.6">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.7">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.8">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.9">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.10">45.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.2.1.1">Llama-3.1-70B-Inst.</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.3.2.2">-</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.3">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.4">37.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.5">65.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.6">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.7">30.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.8">35.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.9">34.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.10">37.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.3.1.1">Qwen2.5-Math-7B-Inst.</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.4.3.2">-</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.3">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.4">50.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.5">79.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.6">34.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.7">40.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.8">11.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.9">11.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.10">34.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.4.1.1">Eurus-2-7B-SFT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.5.4.2">0</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.3">3.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.4">30.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.5">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.6">32.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.7">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.8">21.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.9">17.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4.10">28.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.6.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.5.1.1">RLOO w/ OV Only</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.6.5.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.3" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.5.3.1" style="background-color:#D7E8E8;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.4" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.4.1" style="background-color:#D7E8E8;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.5" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.5.1" style="background-color:#D7E8E8;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.6" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.6.1" style="background-color:#D7E8E8;">36.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.7" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.7.1" style="background-color:#D7E8E8;">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.8" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.8.1" style="background-color:#D7E8E8;">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.9" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.9.1" style="background-color:#D7E8E8;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5.10" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.6.5.10.1" style="background-color:#D7E8E8;">36.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.7.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.7.6.2">80</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.3">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.4">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.5">68.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.6">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.7">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.8">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.9">26.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6.10">36.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.7">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.1.8.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.8.7.2">160</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.3">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.4">42.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.5">72.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.6">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.7">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.8">26.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.9">25.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7.10">36.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9.8">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.1.9.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.9.8.2" style="background-color:#D7E8E8;"><span class="ltx_text" id="S4.T2.1.1.9.8.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.3" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.3.1" style="background-color:#D7E8E8;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.4" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.4.1" style="background-color:#D7E8E8;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.5" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.5.1" style="background-color:#D7E8E8;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.6" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.6.1" style="background-color:#D7E8E8;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.7" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.7.1" style="background-color:#D7E8E8;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.8" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.8.1" style="background-color:#D7E8E8;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.9" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.9.1" style="background-color:#D7E8E8;">27.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8.10" style="background-color:#D7E8E8;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.8.10.1" style="background-color:#D7E8E8;">41.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10.9">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.1.10.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.10.9.2">320</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.3">16.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.4">51.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.5">77.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.6">39.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.7">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.8">36.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.9">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9.10">41.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.1.11.10.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.10.1.1">Eurus-2-7B-PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.1.11.10.2">592</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.3">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.4">57.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.5">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.6">38.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.7">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.8">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.9">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.11.10.10">43.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed comparison of the performance of two reinforcement learning (RL) methods: PRIME and RLOO (with an outcome verifier), on several key reasoning benchmarks.  Both methods were trained for 240 steps. The results show that the model trained with PRIME consistently outperforms the model trained with RLOO across all benchmarks, demonstrating PRIME's effectiveness in enhancing reasoning capabilities.  Specific metrics shown include accuracy percentages on various benchmarks such as AIME 2024, AMC, MATH-500, Minerva Math, OlympiadBench, LeetCode, and LiveCodeBench, allowing for a comprehensive performance evaluation of both methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Detailed results of PRIME and RLOO w/ outcome verifier (OV). At the same 240 steps, the model trained by PRIME is generally better than the model trained by outcome rewards.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.2.1">Step</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.3.1">AIME 2024</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.4.1">AMC</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.5.1">MATH-500</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.6.1">MinervaMath</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.7.1">OlympiadBench</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.8.1">LeetCode</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.9.1">LiveCodeBench</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.10.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.2.1.1">RLOO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.2.2.2">240</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.3">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.4">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.5">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.6">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.7">35.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.8">28.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.9">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2.10">36.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.3" style="background-color:#D7E8E8;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.3.1.1" style="background-color:#D7E8E8;">RLOO w/ PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.3.3.2"><span class="ltx_text" id="S5.T3.1.1.3.3.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.3"><span class="ltx_text" id="S5.T3.1.1.3.3.3.1" style="background-color:#D7E8E8;">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.4"><span class="ltx_text" id="S5.T3.1.1.3.3.4.1" style="background-color:#D7E8E8;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.5"><span class="ltx_text" id="S5.T3.1.1.3.3.5.1" style="background-color:#D7E8E8;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.6"><span class="ltx_text" id="S5.T3.1.1.3.3.6.1" style="background-color:#D7E8E8;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.7"><span class="ltx_text" id="S5.T3.1.1.3.3.7.1" style="background-color:#D7E8E8;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.8"><span class="ltx_text" id="S5.T3.1.1.3.3.8.1" style="background-color:#D7E8E8;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.9"><span class="ltx_text" id="S5.T3.1.1.3.3.9.1" style="background-color:#D7E8E8;">27.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3.10"><span class="ltx_text" id="S5.T3.1.1.3.3.10.1" style="background-color:#D7E8E8;">41.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.4.1.1">REINFORCE</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.4.4.2">240</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.3">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.4">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.5">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.6">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.7">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.8">27.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.9">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.4.4.10">36.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.5" style="background-color:#D7E8E8;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.5.5.1.1" style="background-color:#D7E8E8;">REINFORCE w/ PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.5.5.2"><span class="ltx_text" id="S5.T3.1.1.5.5.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.3"><span class="ltx_text" id="S5.T3.1.1.5.5.3.1" style="background-color:#D7E8E8;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.4"><span class="ltx_text" id="S5.T3.1.1.5.5.4.1" style="background-color:#D7E8E8;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.5"><span class="ltx_text" id="S5.T3.1.1.5.5.5.1" style="background-color:#D7E8E8;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.6"><span class="ltx_text" id="S5.T3.1.1.5.5.6.1" style="background-color:#D7E8E8;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.7"><span class="ltx_text" id="S5.T3.1.1.5.5.7.1" style="background-color:#D7E8E8;">39.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.8"><span class="ltx_text" id="S5.T3.1.1.5.5.8.1" style="background-color:#D7E8E8;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.9"><span class="ltx_text" id="S5.T3.1.1.5.5.9.1" style="background-color:#D7E8E8;">27.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.5.10"><span class="ltx_text" id="S5.T3.1.1.5.5.10.1" style="background-color:#D7E8E8;">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.6.6.1.1">GRPO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.6.6.2">240</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.3">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.4">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.5">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.6">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.7">36.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.8">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.9">25.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.6.6.10">36.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7.7" style="background-color:#D7E8E8;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.7.7.1.1" style="background-color:#D7E8E8;">GRPO w/ PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.7.7.2"><span class="ltx_text" id="S5.T3.1.1.7.7.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.3"><span class="ltx_text" id="S5.T3.1.1.7.7.3.1" style="background-color:#D7E8E8;">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.4"><span class="ltx_text" id="S5.T3.1.1.7.7.4.1" style="background-color:#D7E8E8;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.5"><span class="ltx_text" id="S5.T3.1.1.7.7.5.1" style="background-color:#D7E8E8;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.6"><span class="ltx_text" id="S5.T3.1.1.7.7.6.1" style="background-color:#D7E8E8;">34.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.7"><span class="ltx_text" id="S5.T3.1.1.7.7.7.1" style="background-color:#D7E8E8;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.8"><span class="ltx_text" id="S5.T3.1.1.7.7.8.1" style="background-color:#D7E8E8;">28.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.9"><span class="ltx_text" id="S5.T3.1.1.7.7.9.1" style="background-color:#D7E8E8;">23.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.7.10"><span class="ltx_text" id="S5.T3.1.1.7.7.10.1" style="background-color:#D7E8E8;">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.8.8.1.1">PPO</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.8.8.2">240</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.3">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.4">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.5">73.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.6">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.7">36.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.8">28.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.9">25.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.8.8.10">35.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.9.1.1">PRIME as Value Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.9.9.2">240</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.3">16.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.4">44.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.5">72.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.6">34.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.7">35.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.8">27.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.9">24.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.9.10">36.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.10.10" style="background-color:#D7E8E8;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.10.1.1" style="background-color:#D7E8E8;">PPO w/ PRIME</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.1.10.10.2"><span class="ltx_text" id="S5.T3.1.1.10.10.2.1" style="background-color:#D7E8E8;">240</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.3"><span class="ltx_text" id="S5.T3.1.1.10.10.3.1" style="background-color:#D7E8E8;">13.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.4"><span class="ltx_text" id="S5.T3.1.1.10.10.4.1" style="background-color:#D7E8E8;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.5"><span class="ltx_text" id="S5.T3.1.1.10.10.5.1" style="background-color:#D7E8E8;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.6"><span class="ltx_text" id="S5.T3.1.1.10.10.6.1" style="background-color:#D7E8E8;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.7"><span class="ltx_text" id="S5.T3.1.1.10.10.7.1" style="background-color:#D7E8E8;">40.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.8"><span class="ltx_text" id="S5.T3.1.1.10.10.8.1" style="background-color:#D7E8E8;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.9"><span class="ltx_text" id="S5.T3.1.1.10.10.9.1" style="background-color:#D7E8E8;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.10.10.10"><span class="ltx_text" id="S5.T3.1.1.10.10.10.1" style="background-color:#D7E8E8;">39.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the test set results achieved by various reinforcement learning (RL) algorithms when combined with the PRIME framework.  It compares the performance of several standard RL algorithms (RLOO, REINFORCE, GRPO, and PPO) both with and without the PRIME framework across seven key reasoning benchmarks (AIME 2024, AMC, MATH-500, Minerva Math, OlympiadBench, LeetCode, and LiveCodeBench).  The results show the effectiveness of PRIME in boosting the performance of different RL algorithms.
> <details>
> <summary>read the caption</summary>
> Table 3: Testset results of different RL algorithms.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Action Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Description</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.2.1.1.1">ASSESS</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1.2">Analyze current situation, identify key elements and goals</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.3.2.1.1">ADVANCE</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2.2">Move forward with reasoning - calculate, conclude, or form hypothesis</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.4.3.1.1">VERIFY</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3.2">Check accuracy of current approach, look for errors</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.5.4.1.1">SIMPLIFY</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4.2">Break complex problems into simpler parts</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.6.5.1.1">SYNTHESIZE</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.5.2">Combine multiple pieces of information into complete solution</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.6.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.7.6.1.1">PIVOT</span></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.6.2">Change strategy when current approach isn’t working</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.8.7.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.8.7.1.1">OUTPUT</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.8.7.2">Summarize thought process and present final answer</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the actions involved in the action-centric chain-of-thought reasoning framework used in the paper.  Each action represents a step in the multi-step reasoning process employed by the language model to solve problems. The actions are: ASSESS (analyzes the problem), ADVANCE (moves forward with reasoning), VERIFY (checks accuracy), SIMPLIFY (breaks down complex problems), SYNTHESIZE (combines information), PIVOT (changes strategy if needed), and OUTPUT (presents the final answer).
> <details>
> <summary>read the caption</summary>
> Table 4: Actions in action-centric chain-of-thought reasoning framework.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1">Avg. Response Length</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.5.1">Source</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.1" rowspan="4"><span class="ltx_text" id="A1.T5.1.1.2.2.1.1">Math</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.2">MathInstruct-MATH <cite class="ltx_cite ltx_citemacro_citep">(Yue et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib53" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.3">12715</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.4">964.01</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.5"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/TIGER-Lab/MathInstruct" title="">https://huggingface.co/datasets/TIGER-Lab/MathInstruct</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.3.1">OpenMathIns-2-Aug_Math <cite class="ltx_cite ltx_citemacro_citep">(Toshniwal et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib44" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.3.2">15086</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.3.3.3">1202.25</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.3.4"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/nvidia/OpenMathInstruct-2" title="">https://huggingface.co/datasets/nvidia/OpenMathInstruct-2</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.4.1">Numina <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.4.2">55845</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.4.4.3">1331.61</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.4.4"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/AI-MO/NuminaMath-CoT" title="">https://huggingface.co/datasets/AI-MO/NuminaMath-CoT</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.5.1">Reasoning-001 <cite class="ltx_cite ltx_citemacro_citep">(SkunkworksAI, <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib38" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.2">29831</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.5.5.3">1316.49</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.5.4"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/SkunkworksAI/reasoning-0.01" title="">https://huggingface.co/datasets/SkunkworksAI/reasoning-0.01</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.1" rowspan="3"><span class="ltx_text" id="A1.T5.1.1.6.6.1.1">Coding</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.2">Code-Feedback <cite class="ltx_cite ltx_citemacro_citep">(Zheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib56" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.6.6.3">27663</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.6.6.4">1805.16</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.5"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/m-a-p/Code-Feedback" title="">https://huggingface.co/datasets/m-a-p/Code-Feedback</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.7.1">Magicoder <cite class="ltx_cite ltx_citemacro_citep">(Wei et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib47" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.2">24480</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.7.7.3">1828.72</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.7.4"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/ise-uiuc/Magicoder-Evol-Instruct-110K" title="">https://huggingface.co/datasets/ise-uiuc/Magicoder-Evol-Instruct-110K</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.8">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.8.1">Magicoder-OSS <cite class="ltx_cite ltx_citemacro_citep">(Wei et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib47" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.2">28980</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.8.8.3">1850.05</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.8.4"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/ise-uiuc/Magicoder-OSS-Instruct-75K" title="">https://huggingface.co/datasets/ise-uiuc/Magicoder-OSS-Instruct-75K</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.9.9.1">Biomedicine</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.9.9.2">UltraMedical_mc <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01456v1#bib.bib55" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.9.9.3">35163</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.9.9.4">891.06</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.9.9.5"><a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/TsinghuaC3I/UltraMedical" title="">https://huggingface.co/datasets/TsinghuaC3I/UltraMedical</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.1.1.10.10.1">Total / Avg.</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.1.1.10.10.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.1.10.10.3">229763</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.1.10.10.4">1390.75</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.1.1.10.10.5">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 provides a detailed overview of the data used for supervised fine-tuning (SFT).  It breaks down the data by task (Math and Code), the source dataset used for each task, the number of instances, the average response length, and the specific URLs to access those datasets. This information is crucial for understanding the scale and composition of the data used to initialize the language model before reinforcement learning.
> <details>
> <summary>read the caption</summary>
> Table 5: Data statistics of SFT data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.2.1">Generator Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.3.1">Num. Inst</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.4.1">Resp/Inst</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.5.1">Step-level/Response-level</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.1" rowspan="4"><span class="ltx_text" id="A2.T6.1.1.2.1.1.1">UltraInteract</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2.1.2">Llama-3.1-8B-Inst</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1.3">20177</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1.4">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1.5">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.3.2.1">Llama-3.1-8B-Base</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.3.2.2">13570</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.3.2.3">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.3.2.4">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.4.3.1">Qwen2.5-72B-Inst</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.3.2">4758</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.3.3">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.4.3.4">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.4.1">Qwen2.5-Math-7B-Base</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.4.2">25713</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.4.3">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.4.4">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.1" rowspan="2"><span class="ltx_text" id="A2.T6.1.1.6.5.1.1">Numina-SynMath</span></td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.5.2">Llama-3.1-8B-Inst</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.5.3">4783</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.5.4">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.5.5">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.6.1">Qwen2.5-Math-7B-Base</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.6.2">5806</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.6.3">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.6.4">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.8.7.1" rowspan="2"><span class="ltx_text" id="A2.T6.1.1.8.7.1.1">Numina-Olympiads</span></td>
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.7.2">Llama-3.1-8B-Inst</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.7.3">2909</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.7.4">8</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.7.5">Response-level</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.9.8.1">Qwen2.5-Math-7B-Base</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.9.8.2">4739</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.9.8.3">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.9.8.4">Response-level</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the datasets used to train the EurusPRM (Eurus Process Reward Model).  For each dataset, it lists the model used to generate the data, the number of instances (training examples), the number of response instances per prompt, whether the reward is assigned at the step level or response level, and the name of the dataset. The datasets include examples from a range of sources and model types, reflecting a variety of mathematical reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Data statistics of EurusPRM training dataset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01456/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01456/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}