---
title: "RAD: Training an End-to-End Driving Policy via Large-Scale 3DGS-based Reinforcement Learning"
summary: "RAD: 3DGS-based RL advances autonomous driving, achieving a 3x lower collision rate!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Autonomous Vehicles", "🏢 Huazhong University of Science & Technology",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13144 {{< /keyword >}}
{{< keyword icon="writer" >}} Hao Gao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13144" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13144" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13144/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Autonomous driving (AD) algorithms** often use Imitation Learning (IL), which copies human driving. However, this faces problems like causal confusion, where the AI learns the wrong reasons for actions, and the open-loop gap, where small errors add up over time. Real-world testing is unsafe and costly, while existing simulated environments lack realism, hindering effective training and safety. To tackle these challenges, the paper introduces a new approach using Reinforcement Learning (RL) to improve end-to-end autonomous driving, aiming to overcome the limitations of IL by enabling safer and more robust training. 



This paper presents RAD, a new method that uses **3D Gaussian Splatting (3DGS)** to create detailed, realistic digital driving environments. This allows AD policies to explore many situations and learn from trial and error safely. RAD also includes specialized rewards to teach the AI to handle critical safety events and understand real-world causes and effects. To make the AI drive more like humans, imitation learning is used as a regular part of the RL training. The method is tested in new 3DGS environments, showing it performs better than IL-based methods, with a collision rate three times lower. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RAD leverages 3DGS to create realistic digital driving environments for RL training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Combining RL with imitation learning addresses causal confusion and open-loop issues in autonomous driving. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RAD outperforms imitation learning in closed-loop driving, showcasing enhanced safety and robustness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces RAD, a novel **Reinforcement Learning framework using 3DGS** for end-to-end autonomous driving. RAD's approach could lead to **safer and more reliable autonomous driving** by addressing limitations of traditional methods. The insights on combining RL and IL could spur further innovations in imitation learning.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13144/x1.png)

> 🔼 This figure compares three different training approaches for end-to-end autonomous driving models:  Imitation Learning (IL), simulator-based Reinforcement Learning (RL), and the proposed 3DGS-based RL method.  The IL approach uses human driving demonstrations to train the model, but suffers from causal confusion and an open-loop gap. The simulator-based RL approach addresses these issues by training in a simulator, but it introduces the Sim2Real gap and may not accurately model real-world conditions. The 3DGS-based RL approach combines the strengths of both methods, using a highly realistic digital replica of the real world to train the model via RL, while incorporating IL for better alignment with human driving behavior. This approach offers improved safety and addresses the limitations of the other two methods.
> <details>
> <summary>read the caption</summary>
> Figure 1: Different training paradigms of end-to-end autonomous driving (AD).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.9.9.10">RL:IL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1">CR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2">DCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3">SCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.4.4">DR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.5.5.5">PDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.6.6.6">HDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.7.7.7">ADD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.m1.1.1" stretchy="false" xref="S3.T1.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.8.8">Long. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.8.8.8.m1.1"><semantics id="S3.T1.8.8.8.m1.1a"><mo id="S3.T1.8.8.8.m1.1.1" stretchy="false" xref="S3.T1.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.m1.1b"><ci id="S3.T1.8.8.8.m1.1.1.cmml" xref="S3.T1.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.9.9.9">Lat. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.9.9.9.m1.1"><semantics id="S3.T1.9.9.9.m1.1a"><mo id="S3.T1.9.9.9.m1.1.1" stretchy="false" xref="S3.T1.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.m1.1b"><ci id="S3.T1.9.9.9.m1.1.1.cmml" xref="S3.T1.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.9.10.1.1">0:1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.2">0.229</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.3">0.211</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.4">0.018</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.5">0.066</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.6">0.039</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.7">0.027</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.8">0.238</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.9">3.928</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.9.10.1.10">0.103</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.11.2.1">1:0</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.2">0.143</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.3">0.128</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.4">0.015</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.5">0.080</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.6">0.065</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.7">0.015</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.8">0.345</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.9">4.204</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.11.2.10">0.085</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.12.3.1">2:1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.2">0.137</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.3">0.125</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.4">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.5">0.059</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.6">0.050</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.7">0.009</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.8">0.274</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.9">4.538</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.12.3.10">0.092</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.13.4.1">4:1</th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.2">0.089</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.3">0.080</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.4">0.009</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.5">0.063</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.6">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.7">0.021</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.8">0.257</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.9">4.495</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.13.4.10">0.082</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.9.14.5.1">8:1</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.2">0.125</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.3">0.116</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.4">0.009</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.5">0.084</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.6">0.045</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.7">0.039</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.8">0.323</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.9">5.285</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.9.14.5.10">0.115</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an ablation study on the impact of different RL-to-IL step mixing ratios during the reinforced post-training stage of the RAD model. It shows how varying the proportion of reinforcement learning (RL) updates versus imitation learning (IL) updates affects various metrics, including collision rates, deviation ratios, jerk, and others, providing insights into the optimal balance between RL and IL for end-to-end autonomous driving.
> <details>
> <summary>read the caption</summary>
> Table 1: Ablation on RL-to-IL step mixing ratios in the reinforced post-training stage.
> </details>





### In-depth insights


#### 3DGS-based RL
The notion of '3DGS-based RL' represents a significant advancement in training autonomous driving systems. By leveraging **3D Gaussian Splatting (3DGS)**, it constructs photorealistic digital replicas of real-world environments, enabling **extensive exploration of state spaces** otherwise inaccessible due to safety and cost constraints. This approach addresses limitations of Imitation Learning (IL) related to causal confusion and open-loop issues. Through large-scale trial and error within these realistic simulated environments, the agent can effectively learn to handle **out-of-distribution scenarios** and respond safely to critical events. The design of **specialized rewards** aligned with real-world causal relationships further refines the policy. Integrating IL as a regularization term during RL training helps align the agent’s behavior with that of human drivers.

#### RAD: End-to-End AD
**RAD: End-to-End AD** signifies a pivotal shift towards holistic autonomous driving systems. This approach, contrasting with modular pipelines, promises **system simplicity and enhanced generalization**. By directly mapping sensory inputs to driving actions, it bypasses intermediate processing stages, potentially mitigating error propagation. The success hinges on robust neural networks capable of discerning complex relationships and generalizing across diverse scenarios. Challenges include ensuring safety, interpretability, and handling edge cases not well-represented in training data. RAD’s effectiveness relies on both the architecture and the data used for training. Significant research concentrates on enhancing network architectures to better capture intricate scene dynamics and devising innovative training methodologies to improve robustness and safety. The potential benefits include adaptive decision-making and greater autonomy in real-world driving conditions. The practicality of end-to-end AD hinges on surmounting challenges related to data bias, safety certification, and explainability in decision-making. Overcoming these is paramount for widespread adoption.

#### Causation Modeling
Modeling causation in autonomous driving is paramount, moving beyond simple correlations to establish true cause-and-effect relationships. This is crucial for **robust decision-making** in unpredictable environments. Traditional imitation learning (IL) often falters here, as it primarily learns from observed data, capturing correlations that may not hold true in novel situations. A causation-aware model, on the other hand, can identify the **true underlying factors** influencing driving scenarios, leading to policies that generalize better and are more resilient to distributional shifts. Techniques like **causal inference** and **intervention analysis** could be incorporated to explicitly model causal relationships. This involves not only observing but also actively manipulating variables in a simulated environment to understand their true impact. Furthermore, **counterfactual reasoning** could be employed to assess the consequences of different actions in hypothetical scenarios, allowing the agent to learn from its mistakes without actually experiencing them in the real world. Prioritizing causation enables safer and more reliable autonomous systems.

#### RAD vs IL methods
The paper posits that traditional Imitation Learning (IL) approaches, while simple, suffer from issues like **causal confusion** and an **open-loop gap**, hindering real-world deployment. **RAD**, the Reinforcement learning with imitation learning, addresses these limitations by enabling extensive exploration of the state space in a realistic simulated environment. This allows the AD policy to learn from its mistakes and handle out-of-distribution scenarios better, compared to IL which is limited by the training data. RAD also emphasizes **safety-critical events** and **causal relationships** through specialized rewards and constraints. The authors show RAD achieves a **3x lower collision rate** compared to IL.

#### Safety by Design
**Safety by Design** is a crucial element, particularly in the realm of autonomous systems. It requires proactive integration of safety considerations throughout the entire development lifecycle, not just as an afterthought. This encompasses various strategies, including **fault tolerance**, **redundancy**, and **formal verification** to minimize potential risks. The design must inherently consider potential failure modes and incorporate mechanisms to either prevent them or mitigate their impact, ensuring system-level safety. It also involves designing a system that can handle unforeseen situations, such as **edge cases** and **black swan events**, that may not be explicitly covered during training. **Robustness** and the ability to **fail gracefully** are essential attributes.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13144/x2.png)

> 🔼 RAD's training process consists of three stages.  First, perception pre-training uses ground truth map and agent data to train instance-level token encoders for scene understanding.  Second, planning pre-training leverages large-scale driving demonstrations to initialize the action distribution of the autonomous driving policy. Finally, reinforced post-training uses reinforcement learning (RL) and imitation learning (IL) together to fine-tune the policy, combining the strengths of both approaches to achieve optimal performance.  RL handles the causal relationships and the open-loop problem, while IL maintains human-like driving behavior.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall framework of RAD. RAD takes a three-stage training paradigm. In the perception pre-training, ground-truths of map and agent are used to guide instance-level tokens to encode corresponding information. In the planning pre-training stage, large-scale driving demonstrations are used to initialize the action distribution. In the reinforced post-training stage, RL and IL synergistically fine-tune the AD policy.
> </details>



![](https://arxiv.org/html/2502.13144/x3.png)

> 🔼 The figure illustrates the post-training stage of the RAD model, where N parallel workers simultaneously interact with the 3DGS environment. Each worker generates a sequence of data, including states (s), actions (a), rewards (r), and next states (s), which is then collected in a buffer.  This data, along with human driving demonstrations, are used to refine the driving policy using both reinforcement learning (RL) and imitation learning (IL) techniques, combining their strengths for improved performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Post-training. N𝑁Nitalic_N workers parallelly run. The generated rollout data (st,at,rt+1,st+1,…)subscript𝑠𝑡subscript𝑎𝑡subscript𝑟𝑡1subscript𝑠𝑡1…(s_{t},a_{t},r_{t+1},s_{t+1},...)( italic_s start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_r start_POSTSUBSCRIPT italic_t + 1 end_POSTSUBSCRIPT , italic_s start_POSTSUBSCRIPT italic_t + 1 end_POSTSUBSCRIPT , … ) are recorded in a rollout buffer. Rollout data and human driving demonstrations are used in RL- and IL-training steps to fine-tune the AD policy synergistically.
> </details>



![](https://arxiv.org/html/2502.13144/x4.png)

> 🔼 Figure 4 illustrates the four reward components used in the reinforcement learning process of the autonomous driving system.  Each component penalizes specific unsafe behaviors:  1.  **Dynamic Collision (𝑟dcr_{   dc})**: A negative reward is given if the vehicle collides with a moving obstacle (e.g., another car or pedestrian). 2.  **Static Collision (𝑟scr_{   sc})**: A negative reward is given if the vehicle collides with a stationary obstacle (e.g., a curb or barrier). 3.  **Positional Deviation (𝑟pdr_{   pd})**: A negative reward is given if the vehicle deviates from the optimal trajectory by more than a threshold distance (dmax). 4.  **Heading Deviation (𝑟hdr_{   hd})**: A negative reward is given if the vehicle's heading angle deviates from the optimal trajectory by more than a threshold angle (ψmax).
> <details>
> <summary>read the caption</summary>
> Figure 4: Example diagram of four types of reward sources. (1): Collision with a dynamic obstacle ahead triggers a reward rdcsubscript𝑟dcr_{\text{dc}}italic_r start_POSTSUBSCRIPT dc end_POSTSUBSCRIPT. (2): Hitting a static roadside obstacle incurs a reward rscsubscript𝑟scr_{\text{sc}}italic_r start_POSTSUBSCRIPT sc end_POSTSUBSCRIPT. (3): Moving onto the curb exceeds the positional deviation threshold dmaxsubscript𝑑maxd_{\text{max}}italic_d start_POSTSUBSCRIPT max end_POSTSUBSCRIPT, triggering a reward rpdsubscript𝑟pdr_{\text{pd}}italic_r start_POSTSUBSCRIPT pd end_POSTSUBSCRIPT. (4): Drifting toward the adjacent lane exceeds the heading deviation threshold ψmaxsubscript𝜓max\psi_{\text{max}}italic_ψ start_POSTSUBSCRIPT max end_POSTSUBSCRIPT, triggering a reward rhdsubscript𝑟hdr_{\text{hd}}italic_r start_POSTSUBSCRIPT hd end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2502.13144/x5.png)

> 🔼 This figure presents a qualitative comparison of the performance of an Imitation Learning (IL)-only policy versus the proposed RAD policy in handling complex driving scenarios within a 3DGS (3D Gaussian Splatting) simulated environment.  The scenarios depicted showcase the challenges of yielding to pedestrians (Rows 1-2) and executing unprotected left turns (Rows 3-4). By visually comparing the behaviors of both policies under these conditions, the figure highlights RAD's superior ability to navigate these complex situations safely and smoothly, while the IL-only approach demonstrates limitations in handling such challenging conditions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Closed-loop qualitative comparisons between the IL-only policy and RAD in 3DGS environments. Rows 1-2 correspond to Yield to Pedestrians. Rows 3-4 correspond to Unprotected Left-turn.
> </details>



![](https://arxiv.org/html/2502.13144/x6.png)

> 🔼 Figure A1 presents a qualitative comparison of the performance of the IL-only policy and RAD across diverse driving scenarios.  The scenarios are displayed in rows, with each row showcasing a different driving situation.  Rows 1-2 illustrate a detour maneuver; Rows 3-4 show navigation through dense traffic conditions; Rows 5-6 depict maneuvering through congested traffic; and Rows 7-8 demonstrate successful U-turn execution. For each scenario, the figure displays a sequence of images, allowing visual comparison between the IL-only policy's and RAD's performance in terms of smoothness, collision avoidance, and adherence to the driving lanes.
> <details>
> <summary>read the caption</summary>
> Figure A1:  More Qualitative Results. Comparison between the IL-only policy and RAD in various driving scenarios: Detour (Rows 1-2), Crawl in Dense Traffic (Rows 3-4), Traffic Congestion (Rows 5-6), and U-turn(Rows 7-8).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.9.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.9.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.9.9.9.9.10" rowspan="2"><span class="ltx_text" id="S3.T2.9.9.9.9.10.1">ID</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.9.9.9.11">Dynamic</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.9.9.9.12">Static</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.9.9.9.13">Position</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.9.9.9.14">Heading</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.1.1.1.1.1">CR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2.2.2" rowspan="2"><span class="ltx_text" id="S3.T2.2.2.2.2.2.1">DCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.2.1.m1.1"><semantics id="S3.T2.2.2.2.2.2.1.m1.1a"><mo id="S3.T2.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.2.1.m1.1b"><ci id="S3.T2.2.2.2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3.3.3" rowspan="2"><span class="ltx_text" id="S3.T2.3.3.3.3.3.1">SCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.3.1.m1.1"><semantics id="S3.T2.3.3.3.3.3.1.m1.1a"><mo id="S3.T2.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.3.1.m1.1b"><ci id="S3.T2.3.3.3.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.4.4.4.4.4" rowspan="2"><span class="ltx_text" id="S3.T2.4.4.4.4.4.1">DR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.4.1.m1.1"><semantics id="S3.T2.4.4.4.4.4.1.m1.1a"><mo id="S3.T2.4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.4.1.m1.1b"><ci id="S3.T2.4.4.4.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.5.5.5.5" rowspan="2"><span class="ltx_text" id="S3.T2.5.5.5.5.5.1">PDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.5.1.m1.1"><semantics id="S3.T2.5.5.5.5.5.1.m1.1a"><mo id="S3.T2.5.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.5.1.m1.1b"><ci id="S3.T2.5.5.5.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.6.6.6.6.6" rowspan="2"><span class="ltx_text" id="S3.T2.6.6.6.6.6.1">HDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.6.1.m1.1"><semantics id="S3.T2.6.6.6.6.6.1.m1.1a"><mo id="S3.T2.6.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T2.6.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.6.1.m1.1b"><ci id="S3.T2.6.6.6.6.6.1.m1.1.1.cmml" xref="S3.T2.6.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.7.7.7.7.7" rowspan="2"><span class="ltx_text" id="S3.T2.7.7.7.7.7.1">ADD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.7.1.m1.1"><semantics id="S3.T2.7.7.7.7.7.1.m1.1a"><mo id="S3.T2.7.7.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.7.1.m1.1b"><ci id="S3.T2.7.7.7.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.8.8.8.8.8" rowspan="2"><span class="ltx_text" id="S3.T2.8.8.8.8.8.1">Long. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.8.8.8.8.8.1.m1.1"><semantics id="S3.T2.8.8.8.8.8.1.m1.1a"><mo id="S3.T2.8.8.8.8.8.1.m1.1.1" stretchy="false" xref="S3.T2.8.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.8.8.1.m1.1b"><ci id="S3.T2.8.8.8.8.8.1.m1.1.1.cmml" xref="S3.T2.8.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.9.9.9.9.9" rowspan="2"><span class="ltx_text" id="S3.T2.9.9.9.9.9.1">Lat. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.9.9.9.9.9.1.m1.1"><semantics id="S3.T2.9.9.9.9.9.1.m1.1a"><mo id="S3.T2.9.9.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T2.9.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.9.9.1.m1.1b"><ci id="S3.T2.9.9.9.9.9.1.m1.1.1.cmml" xref="S3.T2.9.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.9.9.9.10.1.1">Collision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.9.9.9.10.1.2">Collision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.9.9.9.10.1.3">Deviation</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T2.9.9.9.10.1.4">Deviation</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.9.9.9.11.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T2.9.9.9.11.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.2">✓</td>
<td class="ltx_td ltx_border_t" id="S3.T2.9.9.9.11.1.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.9.9.9.11.1.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.9.9.9.11.1.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.6">0.172</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.7">0.154</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.8">0.018</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.9">0.092</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.10">0.033</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.11">0.059</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.12">0.259</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.13">4.211</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.11.1.14">0.095</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.12.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T2.9.9.9.12.2.1">2</th>
<td class="ltx_td" id="S3.T2.9.9.9.12.2.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.6">0.238</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.7">0.217</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.8">0.021</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.9">0.090</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.10">0.045</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.11">0.045</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.12">0.241</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.13">3.937</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.12.2.14">0.098</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.13.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T2.9.9.9.13.3.1">3</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.2">✓</td>
<td class="ltx_td" id="S3.T2.9.9.9.13.3.3"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.6">0.146</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.7">0.128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.8">0.018</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.9">0.060</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.10">0.030</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.11">0.030</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.12">0.263</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.13">3.729</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.13.3.14">0.083</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.14.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T2.9.9.9.14.4.1">4</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.3">✓</td>
<td class="ltx_td" id="S3.T2.9.9.9.14.4.4"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.6">0.151</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.7">0.142</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.8">0.009</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.9">0.069</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.10">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.11">0.027</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.12">0.303</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.13">3.938</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.14.4.14">0.079</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.15.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T2.9.9.9.15.5.1">5</th>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.4">✓</td>
<td class="ltx_td" id="S3.T2.9.9.9.15.5.5"></td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.6">0.166</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.7">0.157</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.8">0.009</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.9">0.048</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.10">0.036</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.11">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.12">0.243</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.13">3.334</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9.15.5.14">0.067</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.9.9.16.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T2.9.9.9.16.6.1">6</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.6">0.089</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.7">0.080</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.8">0.009</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.9">0.063</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.10">0.042</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.11">0.021</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.12">0.257</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.13">4.495</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.9.9.9.16.6.14">0.082</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the reward components used in the RAD model.  Each row represents a different configuration, where certain reward components are either included or excluded.  The impact of each component on various performance metrics (CR, DCR, SCR, DR, PDR, HDR, ADD, Long. Jerk, Lat. Jerk) is assessed.  The goal is to determine the contribution of each reward component in achieving optimal performance, particularly in minimizing collisions and improving the smoothness of driving behavior.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation on reward sources. The table shows the impact of different reward components on performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.9.9.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.9.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.9.9.9.9.10" rowspan="2"><span class="ltx_text" id="S3.T3.9.9.9.9.10.1">ID</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.11" rowspan="2"><span class="ltx_text" id="S3.T3.9.9.9.9.11.1">PPO Obj.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.12">Dynamic Col.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.13">Static Col.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.14">Position Dev.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.15">Heading Dev.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T3.1.1.1.1.1.1">CR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.2.2.2.2.2" rowspan="2"><span class="ltx_text" id="S3.T3.2.2.2.2.2.1">DCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.2.2.1.m1.1a"><mo id="S3.T3.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T3.2.2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.2.2.1.m1.1b"><ci id="S3.T3.2.2.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.3.3.3.3" rowspan="2"><span class="ltx_text" id="S3.T3.3.3.3.3.3.1">SCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.3.3.1.m1.1a"><mo id="S3.T3.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T3.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.3.3.1.m1.1b"><ci id="S3.T3.3.3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.4.4.4.4" rowspan="2"><span class="ltx_text" id="S3.T3.4.4.4.4.4.1">DR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.4.4.1.m1.1"><semantics id="S3.T3.4.4.4.4.4.1.m1.1a"><mo id="S3.T3.4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T3.4.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.4.4.1.m1.1b"><ci id="S3.T3.4.4.4.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.5.5.5.5.5" rowspan="2"><span class="ltx_text" id="S3.T3.5.5.5.5.5.1">PDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.5.5.5.5.5.1.m1.1"><semantics id="S3.T3.5.5.5.5.5.1.m1.1a"><mo id="S3.T3.5.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T3.5.5.5.5.5.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.5.5.1.m1.1b"><ci id="S3.T3.5.5.5.5.5.1.m1.1.1.cmml" xref="S3.T3.5.5.5.5.5.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.5.5.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.5.5.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.6.6.6.6.6" rowspan="2"><span class="ltx_text" id="S3.T3.6.6.6.6.6.1">HDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.6.6.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.6.6.1.m1.1a"><mo id="S3.T3.6.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T3.6.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.6.6.1.m1.1b"><ci id="S3.T3.6.6.6.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.6.6.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.7.7.7.7.7" rowspan="2"><span class="ltx_text" id="S3.T3.7.7.7.7.7.1">ADD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.7.7.7.7.7.1.m1.1"><semantics id="S3.T3.7.7.7.7.7.1.m1.1a"><mo id="S3.T3.7.7.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T3.7.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.7.7.1.m1.1b"><ci id="S3.T3.7.7.7.7.7.1.m1.1.1.cmml" xref="S3.T3.7.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.8.8.8.8.8" rowspan="2"><span class="ltx_text" id="S3.T3.8.8.8.8.8.1">Long. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.8.8.8.8.8.1.m1.1"><semantics id="S3.T3.8.8.8.8.8.1.m1.1a"><mo id="S3.T3.8.8.8.8.8.1.m1.1.1" stretchy="false" xref="S3.T3.8.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.8.8.8.1.m1.1b"><ci id="S3.T3.8.8.8.8.8.1.m1.1.1.cmml" xref="S3.T3.8.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.9.9.9.9.9" rowspan="2"><span class="ltx_text" id="S3.T3.9.9.9.9.9.1">Lat. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.9.9.9.9.9.1.m1.1"><semantics id="S3.T3.9.9.9.9.9.1.m1.1a"><mo id="S3.T3.9.9.9.9.9.1.m1.1.1" stretchy="false" xref="S3.T3.9.9.9.9.9.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.9.9.9.1.m1.1b"><ci id="S3.T3.9.9.9.9.9.1.m1.1.1.cmml" xref="S3.T3.9.9.9.9.9.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.9.9.9.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.9.9.9.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.9.9.9.10.1.1">Auxiliary Obj.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.9.9.9.10.1.2">Auxiliary Obj.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.9.9.9.10.1.3">Auxiliary Obj.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T3.9.9.9.10.1.4">Auxiliary Obj.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.9.9.9.11.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T3.9.9.9.11.1.1">1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.2">✓</td>
<td class="ltx_td ltx_border_t" id="S3.T3.9.9.9.11.1.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.9.9.9.11.1.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.9.9.9.11.1.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T3.9.9.9.11.1.6"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.7">0.249</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.8">0.223</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.9">0.026</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.10">0.077</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.11">0.047</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.12">0.030</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.13">0.266</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.14">4.209</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.9.11.1.15">0.104</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.12.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.12.2.1">2</th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.3">✓</td>
<td class="ltx_td" id="S3.T3.9.9.9.12.2.4"></td>
<td class="ltx_td" id="S3.T3.9.9.9.12.2.5"></td>
<td class="ltx_td" id="S3.T3.9.9.9.12.2.6"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.7">0.178</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.8">0.163</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.9">0.015</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.10">0.151</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.11">0.101</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.12">0.050</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.13">0.301</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.14">3.906</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.12.2.15">0.085</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.13.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.13.3.1">3</th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.2">✓</td>
<td class="ltx_td" id="S3.T3.9.9.9.13.3.3"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.6">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.7">0.137</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.8">0.125</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.9">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.10">0.157</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.11">0.145</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.12">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.13">0.296</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.14">3.419</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.13.3.15">0.071</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.14.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.14.4.1">4</th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.3">✓</td>
<td class="ltx_td" id="S3.T3.9.9.9.14.4.4"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.6">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.7">0.169</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.8">0.151</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.9">0.018</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.10">0.075</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.11">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.12">0.033</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.13">0.254</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.14">4.450</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.14.4.15">0.098</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.15.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.15.5.1">5</th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.4">✓</td>
<td class="ltx_td" id="S3.T3.9.9.9.15.5.5"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.6">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.7">0.149</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.8">0.134</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.9">0.015</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.10">0.063</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.11">0.057</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.12">0.006</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.13">0.324</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.14">3.980</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.15.5.15">0.086</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.16.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.16.6.1">6</th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.2">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.5">✓</td>
<td class="ltx_td" id="S3.T3.9.9.9.16.6.6"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.7">0.128</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.8">0.119</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.9">0.009</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.10">0.066</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.11">0.030</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.12">0.036</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.13">0.254</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.14">4.102</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.16.6.15">0.092</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.17.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.9.17.7.1">7</th>
<td class="ltx_td" id="S3.T3.9.9.9.17.7.2"></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.3">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.4">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.5">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.6">✓</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.7">0.187</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.8">0.175</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.9">0.012</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.10">0.077</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.11">0.056</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.12">0.021</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.13">0.309</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.14">5.014</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.9.17.7.15">0.112</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9.18.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T3.9.9.9.18.8.1">8</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.7">0.089</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.8">0.080</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.9">0.009</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.10">0.063</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.11">0.042</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.12">0.021</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.13">0.257</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.14">4.495</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.18.8.15">0.082</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the effects of each auxiliary objective (dynamic collision avoidance, static collision avoidance, positional deviation correction, and heading deviation correction) on the overall performance of the autonomous driving policy.  It shows how each component contributes to the final results, highlighting their importance in collision avoidance, trajectory tracking, and driving smoothness.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation on auxiliary objectives. The table shows the impact of different auxiliary objectives on performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.9.9.10">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">CR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">DCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">SCR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4">DR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.5.5">PDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><ci id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.6.6">HDR<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.6.6.6.m1.1"><semantics id="S4.T4.6.6.6.m1.1a"><mo id="S4.T4.6.6.6.m1.1.1" stretchy="false" xref="S4.T4.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.m1.1b"><ci id="S4.T4.6.6.6.m1.1.1.cmml" xref="S4.T4.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.7.7.7">ADD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.7.7.7.m1.1"><semantics id="S4.T4.7.7.7.m1.1a"><mo id="S4.T4.7.7.7.m1.1.1" stretchy="false" xref="S4.T4.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.m1.1b"><ci id="S4.T4.7.7.7.m1.1.1.cmml" xref="S4.T4.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.8.8.8">Long. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.8.8.8.m1.1"><semantics id="S4.T4.8.8.8.m1.1a"><mo id="S4.T4.8.8.8.m1.1.1" stretchy="false" xref="S4.T4.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.m1.1b"><ci id="S4.T4.8.8.8.m1.1.1.cmml" xref="S4.T4.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.9.9">Lat. Jerk<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.9.9.9.m1.1"><semantics id="S4.T4.9.9.9.m1.1a"><mo id="S4.T4.9.9.9.m1.1.1" stretchy="false" xref="S4.T4.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.m1.1b"><ci id="S4.T4.9.9.9.m1.1.1.cmml" xref="S4.T4.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.10.1.1">VAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.2">0.335</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.3">0.273</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.4">0.062</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.5">0.314</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.6">0.255</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.7">0.059</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.8">0.304</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.9">5.284</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.10.1.10">0.550</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.11.2.1">GenAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.2">0.341</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.3">0.299</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.4">0.042</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.5">0.291</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.6">0.160</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.7">0.131</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.8">0.265</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.9">11.37</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.11.2.10">0.320</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.12.3.1">VADv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.2">0.270</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.3">0.240</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.4">0.030</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.5">0.243</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.6">0.139</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.7">0.104</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.8">0.273</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.9">7.782</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3.10">0.171</td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.9.13.4.1">RAD</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.2">0.089</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.3">0.080</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.4">0.009</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.5">0.063</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.6">0.042</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.7">0.021</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.8">0.257</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.9">4.495</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.13.4.10">0.082</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various end-to-end autonomous driving (AD) methods, specifically focusing on those that utilize Imitation Learning (IL). The comparison is based on performance metrics obtained from a rigorous evaluation benchmark involving dense traffic scenarios within a photorealistic 3DGS (3D Gaussian Splatting) simulated environment. The metrics assess collision rates (both dynamic and static), positional and heading deviations from expert trajectories, average deviation distance, and longitudinal and lateral jerk.  These metrics provide a comprehensive evaluation of safety, accuracy, and smoothness of the AD policies in challenging driving conditions.
> <details>
> <summary>read the caption</summary>
> Table 4: Closed-loop quantitative comparisons with other IL-based methods on the 3DGS dense-traffic evaluation benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T1.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.4.1.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.4.1.1.1" style="font-size:80%;">config</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.4.1.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.4.1.2.1" style="font-size:80%;">Planning Pre-Training</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T1.3.5.2.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.5.2.1.1" style="font-size:80%;">learning rate</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T1.3.5.2.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.5.2.2.1" style="font-size:80%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.6.3.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.6.3.1.1" style="font-size:80%;">learning rate schedule</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.6.3.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.6.3.2.1" style="font-size:80%;">cosine decay</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.7.4.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.7.4.1.1" style="font-size:80%;">optimizer</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.7.4.2" style="padding:0.8pt 8.0pt;">
<span class="ltx_text" id="A1.T1.3.7.4.2.1" style="font-size:80%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T1.3.7.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="A1.T1.3.7.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.3.4" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.3.4.1" style="font-size:80%;">optimizer hyper-parameters</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.3.3" style="padding:0.8pt 8.0pt;">
<math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T1.1.1.1.m1.1"><semantics id="A1.T1.1.1.1.m1.1a"><msub id="A1.T1.1.1.1.m1.1.1" xref="A1.T1.1.1.1.m1.1.1.cmml"><mi id="A1.T1.1.1.1.m1.1.1.2" mathsize="80%" xref="A1.T1.1.1.1.m1.1.1.2.cmml">β</mi><mn id="A1.T1.1.1.1.m1.1.1.3" mathsize="80%" xref="A1.T1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T1.1.1.1.m1.1b"><apply id="A1.T1.1.1.1.m1.1.1.cmml" xref="A1.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T1.1.1.1.m1.1.1.1.cmml" xref="A1.T1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T1.1.1.1.m1.1.1.2.cmml" xref="A1.T1.1.1.1.m1.1.1.2">𝛽</ci><cn id="A1.T1.1.1.1.m1.1.1.3.cmml" type="integer" xref="A1.T1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.1.1.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T1.3.3.3.1" style="font-size:80%;">, </span><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T1.2.2.2.m2.1"><semantics id="A1.T1.2.2.2.m2.1a"><msub id="A1.T1.2.2.2.m2.1.1" xref="A1.T1.2.2.2.m2.1.1.cmml"><mi id="A1.T1.2.2.2.m2.1.1.2" mathsize="80%" xref="A1.T1.2.2.2.m2.1.1.2.cmml">β</mi><mn id="A1.T1.2.2.2.m2.1.1.3" mathsize="80%" xref="A1.T1.2.2.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T1.2.2.2.m2.1b"><apply id="A1.T1.2.2.2.m2.1.1.cmml" xref="A1.T1.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T1.2.2.2.m2.1.1.1.cmml" xref="A1.T1.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T1.2.2.2.m2.1.1.2.cmml" xref="A1.T1.2.2.2.m2.1.1.2">𝛽</ci><cn id="A1.T1.2.2.2.m2.1.1.3.cmml" type="integer" xref="A1.T1.2.2.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.2.2.2.m2.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.2.2.2.m2.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T1.3.3.3.2" style="font-size:80%;">, </span><math alttext="\epsilon" class="ltx_Math" display="inline" id="A1.T1.3.3.3.m3.1"><semantics id="A1.T1.3.3.3.m3.1a"><mi id="A1.T1.3.3.3.m3.1.1" mathsize="80%" xref="A1.T1.3.3.3.m3.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A1.T1.3.3.3.m3.1b"><ci id="A1.T1.3.3.3.m3.1.1.cmml" xref="A1.T1.3.3.3.m3.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.3.3.3.m3.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A1.T1.3.3.3.m3.1d">italic_ϵ</annotation></semantics></math><span class="ltx_text" id="A1.T1.3.3.3.3" style="font-size:80%;"> = 0.9, 0.999, 1e-8</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.8.5.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.8.5.1.1" style="font-size:80%;">weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.8.5.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.8.5.2.1" style="font-size:80%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.9.6.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.9.6.1.1" style="font-size:80%;">batch size</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.9.6.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.9.6.2.1" style="font-size:80%;">512</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.10.7.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.10.7.1.1" style="font-size:80%;">training steps</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.10.7.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.10.7.2.1" style="font-size:80%;">30k</span></td>
</tr>
<tr class="ltx_tr" id="A1.T1.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T1.3.11.8.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.11.8.1.1" style="font-size:80%;">planning head dim</span></th>
<td class="ltx_td ltx_align_center" id="A1.T1.3.11.8.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T1.3.11.8.2.1" style="font-size:80%;">256</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the Planning Pre-training stage of the RAD model. It includes the learning rate, learning rate schedule, optimizer, optimizer hyperparameters, weight decay, batch size, and the number of training steps.  The dimensions of the planning head are also specified.
> <details>
> <summary>read the caption</summary>
> Table A1: Hyperparameters used in RAD Planning Pre-Training stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.10.1.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.10.1.1.1" style="font-size:80%;">config</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.10.1.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.10.1.2.1" style="font-size:80%;">Reinforced Post-Training</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T2.9.11.2.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.11.2.1.1" style="font-size:80%;">learning rate</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.9.11.2.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.11.2.2.1" style="font-size:80%;">5e-6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.12.3.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.12.3.1.1" style="font-size:80%;">learning rate schedule</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.12.3.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.12.3.2.1" style="font-size:80%;">cosine decay</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.13.4.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.13.4.1.1" style="font-size:80%;">optimizer</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.13.4.2" style="padding:0.8pt 8.0pt;">
<span class="ltx_text" id="A1.T2.9.13.4.2.1" style="font-size:80%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T2.9.13.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2502.13144v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="A1.T2.9.13.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.3.3.4" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.3.3.4.1" style="font-size:80%;">optimizer hyper-parameters</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.3.3.3" style="padding:0.8pt 8.0pt;">
<math alttext="\beta_{1}" class="ltx_Math" display="inline" id="A1.T2.1.1.1.m1.1"><semantics id="A1.T2.1.1.1.m1.1a"><msub id="A1.T2.1.1.1.m1.1.1" xref="A1.T2.1.1.1.m1.1.1.cmml"><mi id="A1.T2.1.1.1.m1.1.1.2" mathsize="80%" xref="A1.T2.1.1.1.m1.1.1.2.cmml">β</mi><mn id="A1.T2.1.1.1.m1.1.1.3" mathsize="80%" xref="A1.T2.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T2.1.1.1.m1.1b"><apply id="A1.T2.1.1.1.m1.1.1.cmml" xref="A1.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T2.1.1.1.m1.1.1.1.cmml" xref="A1.T2.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T2.1.1.1.m1.1.1.2.cmml" xref="A1.T2.1.1.1.m1.1.1.2">𝛽</ci><cn id="A1.T2.1.1.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.1.1.1.m1.1c">\beta_{1}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T2.3.3.3.1" style="font-size:80%;">, </span><math alttext="\beta_{2}" class="ltx_Math" display="inline" id="A1.T2.2.2.2.m2.1"><semantics id="A1.T2.2.2.2.m2.1a"><msub id="A1.T2.2.2.2.m2.1.1" xref="A1.T2.2.2.2.m2.1.1.cmml"><mi id="A1.T2.2.2.2.m2.1.1.2" mathsize="80%" xref="A1.T2.2.2.2.m2.1.1.2.cmml">β</mi><mn id="A1.T2.2.2.2.m2.1.1.3" mathsize="80%" xref="A1.T2.2.2.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A1.T2.2.2.2.m2.1b"><apply id="A1.T2.2.2.2.m2.1.1.cmml" xref="A1.T2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="A1.T2.2.2.2.m2.1.1.1.cmml" xref="A1.T2.2.2.2.m2.1.1">subscript</csymbol><ci id="A1.T2.2.2.2.m2.1.1.2.cmml" xref="A1.T2.2.2.2.m2.1.1.2">𝛽</ci><cn id="A1.T2.2.2.2.m2.1.1.3.cmml" type="integer" xref="A1.T2.2.2.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.2.2.2.m2.1c">\beta_{2}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.2.2.2.m2.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="A1.T2.3.3.3.2" style="font-size:80%;">, </span><math alttext="\epsilon" class="ltx_Math" display="inline" id="A1.T2.3.3.3.m3.1"><semantics id="A1.T2.3.3.3.m3.1a"><mi id="A1.T2.3.3.3.m3.1.1" mathsize="80%" xref="A1.T2.3.3.3.m3.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A1.T2.3.3.3.m3.1b"><ci id="A1.T2.3.3.3.m3.1.1.cmml" xref="A1.T2.3.3.3.m3.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.3.3.3.m3.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A1.T2.3.3.3.m3.1d">italic_ϵ</annotation></semantics></math><span class="ltx_text" id="A1.T2.3.3.3.3" style="font-size:80%;"> = 0.9, 0.999, 1e-8</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.14.5.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.14.5.1.1" style="font-size:80%;">weight decay</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.14.5.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.14.5.2.1" style="font-size:80%;">1e-4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.15.6.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.15.6.1.1" style="font-size:80%;">RL worker number</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.15.6.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.15.6.2.1" style="font-size:80%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.16.7.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.16.7.1.1" style="font-size:80%;">RL batch size</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.16.7.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.16.7.2.1" style="font-size:80%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.17.8.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.17.8.1.1" style="font-size:80%;">IL batch size</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.17.8.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.17.8.2.1" style="font-size:80%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.5.5.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.5.5.3.1" style="font-size:80%;">GAE parameter</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.2" style="padding:0.8pt 8.0pt;">
<math alttext="\gamma=0.9" class="ltx_Math" display="inline" id="A1.T2.4.4.1.m1.1"><semantics id="A1.T2.4.4.1.m1.1a"><mrow id="A1.T2.4.4.1.m1.1.1" xref="A1.T2.4.4.1.m1.1.1.cmml"><mi id="A1.T2.4.4.1.m1.1.1.2" mathsize="80%" xref="A1.T2.4.4.1.m1.1.1.2.cmml">γ</mi><mo id="A1.T2.4.4.1.m1.1.1.1" mathsize="80%" xref="A1.T2.4.4.1.m1.1.1.1.cmml">=</mo><mn id="A1.T2.4.4.1.m1.1.1.3" mathsize="80%" xref="A1.T2.4.4.1.m1.1.1.3.cmml">0.9</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.4.4.1.m1.1b"><apply id="A1.T2.4.4.1.m1.1.1.cmml" xref="A1.T2.4.4.1.m1.1.1"><eq id="A1.T2.4.4.1.m1.1.1.1.cmml" xref="A1.T2.4.4.1.m1.1.1.1"></eq><ci id="A1.T2.4.4.1.m1.1.1.2.cmml" xref="A1.T2.4.4.1.m1.1.1.2">𝛾</ci><cn id="A1.T2.4.4.1.m1.1.1.3.cmml" type="float" xref="A1.T2.4.4.1.m1.1.1.3">0.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.4.4.1.m1.1c">\gamma=0.9</annotation><annotation encoding="application/x-llamapun" id="A1.T2.4.4.1.m1.1d">italic_γ = 0.9</annotation></semantics></math><span class="ltx_text" id="A1.T2.5.5.2.1" style="font-size:80%;">, </span><math alttext="\lambda=0.95" class="ltx_Math" display="inline" id="A1.T2.5.5.2.m2.1"><semantics id="A1.T2.5.5.2.m2.1a"><mrow id="A1.T2.5.5.2.m2.1.1" xref="A1.T2.5.5.2.m2.1.1.cmml"><mi id="A1.T2.5.5.2.m2.1.1.2" mathsize="80%" xref="A1.T2.5.5.2.m2.1.1.2.cmml">λ</mi><mo id="A1.T2.5.5.2.m2.1.1.1" mathsize="80%" xref="A1.T2.5.5.2.m2.1.1.1.cmml">=</mo><mn id="A1.T2.5.5.2.m2.1.1.3" mathsize="80%" xref="A1.T2.5.5.2.m2.1.1.3.cmml">0.95</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.5.5.2.m2.1b"><apply id="A1.T2.5.5.2.m2.1.1.cmml" xref="A1.T2.5.5.2.m2.1.1"><eq id="A1.T2.5.5.2.m2.1.1.1.cmml" xref="A1.T2.5.5.2.m2.1.1.1"></eq><ci id="A1.T2.5.5.2.m2.1.1.2.cmml" xref="A1.T2.5.5.2.m2.1.1.2">𝜆</ci><cn id="A1.T2.5.5.2.m2.1.1.3.cmml" type="float" xref="A1.T2.5.5.2.m2.1.1.3">0.95</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.5.5.2.m2.1c">\lambda=0.95</annotation><annotation encoding="application/x-llamapun" id="A1.T2.5.5.2.m2.1d">italic_λ = 0.95</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.7.7.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.7.7.3.1" style="font-size:80%;">clipping thresholds</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.2" style="padding:0.8pt 8.0pt;">
<math alttext="\epsilon_{x}=0.1" class="ltx_Math" display="inline" id="A1.T2.6.6.1.m1.1"><semantics id="A1.T2.6.6.1.m1.1a"><mrow id="A1.T2.6.6.1.m1.1.1" xref="A1.T2.6.6.1.m1.1.1.cmml"><msub id="A1.T2.6.6.1.m1.1.1.2" xref="A1.T2.6.6.1.m1.1.1.2.cmml"><mi id="A1.T2.6.6.1.m1.1.1.2.2" mathsize="80%" xref="A1.T2.6.6.1.m1.1.1.2.2.cmml">ϵ</mi><mi id="A1.T2.6.6.1.m1.1.1.2.3" mathsize="80%" xref="A1.T2.6.6.1.m1.1.1.2.3.cmml">x</mi></msub><mo id="A1.T2.6.6.1.m1.1.1.1" mathsize="80%" xref="A1.T2.6.6.1.m1.1.1.1.cmml">=</mo><mn id="A1.T2.6.6.1.m1.1.1.3" mathsize="80%" xref="A1.T2.6.6.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.6.6.1.m1.1b"><apply id="A1.T2.6.6.1.m1.1.1.cmml" xref="A1.T2.6.6.1.m1.1.1"><eq id="A1.T2.6.6.1.m1.1.1.1.cmml" xref="A1.T2.6.6.1.m1.1.1.1"></eq><apply id="A1.T2.6.6.1.m1.1.1.2.cmml" xref="A1.T2.6.6.1.m1.1.1.2"><csymbol cd="ambiguous" id="A1.T2.6.6.1.m1.1.1.2.1.cmml" xref="A1.T2.6.6.1.m1.1.1.2">subscript</csymbol><ci id="A1.T2.6.6.1.m1.1.1.2.2.cmml" xref="A1.T2.6.6.1.m1.1.1.2.2">italic-ϵ</ci><ci id="A1.T2.6.6.1.m1.1.1.2.3.cmml" xref="A1.T2.6.6.1.m1.1.1.2.3">𝑥</ci></apply><cn id="A1.T2.6.6.1.m1.1.1.3.cmml" type="float" xref="A1.T2.6.6.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.6.6.1.m1.1c">\epsilon_{x}=0.1</annotation><annotation encoding="application/x-llamapun" id="A1.T2.6.6.1.m1.1d">italic_ϵ start_POSTSUBSCRIPT italic_x end_POSTSUBSCRIPT = 0.1</annotation></semantics></math><span class="ltx_text" id="A1.T2.7.7.2.1" style="font-size:80%;">, </span><math alttext="\epsilon_{y}=0.2" class="ltx_Math" display="inline" id="A1.T2.7.7.2.m2.1"><semantics id="A1.T2.7.7.2.m2.1a"><mrow id="A1.T2.7.7.2.m2.1.1" xref="A1.T2.7.7.2.m2.1.1.cmml"><msub id="A1.T2.7.7.2.m2.1.1.2" xref="A1.T2.7.7.2.m2.1.1.2.cmml"><mi id="A1.T2.7.7.2.m2.1.1.2.2" mathsize="80%" xref="A1.T2.7.7.2.m2.1.1.2.2.cmml">ϵ</mi><mi id="A1.T2.7.7.2.m2.1.1.2.3" mathsize="80%" xref="A1.T2.7.7.2.m2.1.1.2.3.cmml">y</mi></msub><mo id="A1.T2.7.7.2.m2.1.1.1" mathsize="80%" xref="A1.T2.7.7.2.m2.1.1.1.cmml">=</mo><mn id="A1.T2.7.7.2.m2.1.1.3" mathsize="80%" xref="A1.T2.7.7.2.m2.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.7.7.2.m2.1b"><apply id="A1.T2.7.7.2.m2.1.1.cmml" xref="A1.T2.7.7.2.m2.1.1"><eq id="A1.T2.7.7.2.m2.1.1.1.cmml" xref="A1.T2.7.7.2.m2.1.1.1"></eq><apply id="A1.T2.7.7.2.m2.1.1.2.cmml" xref="A1.T2.7.7.2.m2.1.1.2"><csymbol cd="ambiguous" id="A1.T2.7.7.2.m2.1.1.2.1.cmml" xref="A1.T2.7.7.2.m2.1.1.2">subscript</csymbol><ci id="A1.T2.7.7.2.m2.1.1.2.2.cmml" xref="A1.T2.7.7.2.m2.1.1.2.2">italic-ϵ</ci><ci id="A1.T2.7.7.2.m2.1.1.2.3.cmml" xref="A1.T2.7.7.2.m2.1.1.2.3">𝑦</ci></apply><cn id="A1.T2.7.7.2.m2.1.1.3.cmml" type="float" xref="A1.T2.7.7.2.m2.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.7.7.2.m2.1c">\epsilon_{y}=0.2</annotation><annotation encoding="application/x-llamapun" id="A1.T2.7.7.2.m2.1d">italic_ϵ start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT = 0.2</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.9.3" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.9.3.1" style="font-size:80%;">deviation threshold</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.2" style="padding:0.8pt 8.0pt;">
<math alttext="d_{\text{max}}=2.0m" class="ltx_Math" display="inline" id="A1.T2.8.8.1.m1.1"><semantics id="A1.T2.8.8.1.m1.1a"><mrow id="A1.T2.8.8.1.m1.1.1" xref="A1.T2.8.8.1.m1.1.1.cmml"><msub id="A1.T2.8.8.1.m1.1.1.2" xref="A1.T2.8.8.1.m1.1.1.2.cmml"><mi id="A1.T2.8.8.1.m1.1.1.2.2" mathsize="80%" xref="A1.T2.8.8.1.m1.1.1.2.2.cmml">d</mi><mtext id="A1.T2.8.8.1.m1.1.1.2.3" mathsize="80%" xref="A1.T2.8.8.1.m1.1.1.2.3a.cmml">max</mtext></msub><mo id="A1.T2.8.8.1.m1.1.1.1" mathsize="80%" xref="A1.T2.8.8.1.m1.1.1.1.cmml">=</mo><mrow id="A1.T2.8.8.1.m1.1.1.3" xref="A1.T2.8.8.1.m1.1.1.3.cmml"><mn id="A1.T2.8.8.1.m1.1.1.3.2" mathsize="80%" xref="A1.T2.8.8.1.m1.1.1.3.2.cmml">2.0</mn><mo id="A1.T2.8.8.1.m1.1.1.3.1" xref="A1.T2.8.8.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A1.T2.8.8.1.m1.1.1.3.3" mathsize="80%" xref="A1.T2.8.8.1.m1.1.1.3.3.cmml">m</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.8.8.1.m1.1b"><apply id="A1.T2.8.8.1.m1.1.1.cmml" xref="A1.T2.8.8.1.m1.1.1"><eq id="A1.T2.8.8.1.m1.1.1.1.cmml" xref="A1.T2.8.8.1.m1.1.1.1"></eq><apply id="A1.T2.8.8.1.m1.1.1.2.cmml" xref="A1.T2.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="A1.T2.8.8.1.m1.1.1.2.1.cmml" xref="A1.T2.8.8.1.m1.1.1.2">subscript</csymbol><ci id="A1.T2.8.8.1.m1.1.1.2.2.cmml" xref="A1.T2.8.8.1.m1.1.1.2.2">𝑑</ci><ci id="A1.T2.8.8.1.m1.1.1.2.3a.cmml" xref="A1.T2.8.8.1.m1.1.1.2.3"><mtext id="A1.T2.8.8.1.m1.1.1.2.3.cmml" mathsize="56%" xref="A1.T2.8.8.1.m1.1.1.2.3">max</mtext></ci></apply><apply id="A1.T2.8.8.1.m1.1.1.3.cmml" xref="A1.T2.8.8.1.m1.1.1.3"><times id="A1.T2.8.8.1.m1.1.1.3.1.cmml" xref="A1.T2.8.8.1.m1.1.1.3.1"></times><cn id="A1.T2.8.8.1.m1.1.1.3.2.cmml" type="float" xref="A1.T2.8.8.1.m1.1.1.3.2">2.0</cn><ci id="A1.T2.8.8.1.m1.1.1.3.3.cmml" xref="A1.T2.8.8.1.m1.1.1.3.3">𝑚</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.8.8.1.m1.1c">d_{\text{max}}=2.0m</annotation><annotation encoding="application/x-llamapun" id="A1.T2.8.8.1.m1.1d">italic_d start_POSTSUBSCRIPT max end_POSTSUBSCRIPT = 2.0 italic_m</annotation></semantics></math><span class="ltx_text" id="A1.T2.9.9.2.1" style="font-size:80%;">, </span><math alttext="\psi_{\text{max}}=40^{\circ}" class="ltx_Math" display="inline" id="A1.T2.9.9.2.m2.1"><semantics id="A1.T2.9.9.2.m2.1a"><mrow id="A1.T2.9.9.2.m2.1.1" xref="A1.T2.9.9.2.m2.1.1.cmml"><msub id="A1.T2.9.9.2.m2.1.1.2" xref="A1.T2.9.9.2.m2.1.1.2.cmml"><mi id="A1.T2.9.9.2.m2.1.1.2.2" mathsize="80%" xref="A1.T2.9.9.2.m2.1.1.2.2.cmml">ψ</mi><mtext id="A1.T2.9.9.2.m2.1.1.2.3" mathsize="80%" xref="A1.T2.9.9.2.m2.1.1.2.3a.cmml">max</mtext></msub><mo id="A1.T2.9.9.2.m2.1.1.1" mathsize="80%" xref="A1.T2.9.9.2.m2.1.1.1.cmml">=</mo><msup id="A1.T2.9.9.2.m2.1.1.3" xref="A1.T2.9.9.2.m2.1.1.3.cmml"><mn id="A1.T2.9.9.2.m2.1.1.3.2" mathsize="80%" xref="A1.T2.9.9.2.m2.1.1.3.2.cmml">40</mn><mo id="A1.T2.9.9.2.m2.1.1.3.3" mathsize="80%" xref="A1.T2.9.9.2.m2.1.1.3.3.cmml">∘</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.9.9.2.m2.1b"><apply id="A1.T2.9.9.2.m2.1.1.cmml" xref="A1.T2.9.9.2.m2.1.1"><eq id="A1.T2.9.9.2.m2.1.1.1.cmml" xref="A1.T2.9.9.2.m2.1.1.1"></eq><apply id="A1.T2.9.9.2.m2.1.1.2.cmml" xref="A1.T2.9.9.2.m2.1.1.2"><csymbol cd="ambiguous" id="A1.T2.9.9.2.m2.1.1.2.1.cmml" xref="A1.T2.9.9.2.m2.1.1.2">subscript</csymbol><ci id="A1.T2.9.9.2.m2.1.1.2.2.cmml" xref="A1.T2.9.9.2.m2.1.1.2.2">𝜓</ci><ci id="A1.T2.9.9.2.m2.1.1.2.3a.cmml" xref="A1.T2.9.9.2.m2.1.1.2.3"><mtext id="A1.T2.9.9.2.m2.1.1.2.3.cmml" mathsize="56%" xref="A1.T2.9.9.2.m2.1.1.2.3">max</mtext></ci></apply><apply id="A1.T2.9.9.2.m2.1.1.3.cmml" xref="A1.T2.9.9.2.m2.1.1.3"><csymbol cd="ambiguous" id="A1.T2.9.9.2.m2.1.1.3.1.cmml" xref="A1.T2.9.9.2.m2.1.1.3">superscript</csymbol><cn id="A1.T2.9.9.2.m2.1.1.3.2.cmml" type="integer" xref="A1.T2.9.9.2.m2.1.1.3.2">40</cn><compose id="A1.T2.9.9.2.m2.1.1.3.3.cmml" xref="A1.T2.9.9.2.m2.1.1.3.3"></compose></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.9.9.2.m2.1c">\psi_{\text{max}}=40^{\circ}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.9.9.2.m2.1d">italic_ψ start_POSTSUBSCRIPT max end_POSTSUBSCRIPT = 40 start_POSTSUPERSCRIPT ∘ end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.18.9.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.18.9.1.1" style="font-size:80%;">planning head dim</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.18.9.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.18.9.2.1" style="font-size:80%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T2.9.19.10.1" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.19.10.1.1" style="font-size:80%;">value function dim</span></th>
<td class="ltx_td ltx_align_center" id="A1.T2.9.19.10.2" style="padding:0.8pt 8.0pt;"><span class="ltx_text" id="A1.T2.9.19.10.2.1" style="font-size:80%;">256</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the reinforced post-training stage of the RAD model. It includes the learning rate and its decay schedule, the optimizer used (AdamW), optimizer hyperparameters (beta1, beta2, epsilon), weight decay, the number of RL workers, RL and IL batch sizes, the GAE parameter (gamma and lambda), clipping thresholds (epsilon_x and epsilon_y), the maximum deviation threshold (dmax and vmax), planning and value function dimensions. These settings are crucial for fine-tuning the model's policy using both reinforcement and imitation learning.
> <details>
> <summary>read the caption</summary>
> Table A2: Hyperparameters used in RAD Reinforced Post-Training stage.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13144/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13144/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}