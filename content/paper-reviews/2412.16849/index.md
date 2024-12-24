---
title: "OpenRFT: Adapting Reasoning Foundation Model for Domain-specific Tasks with Reinforcement Fine-Tuning"
summary: "OpenRFT adapts generalist reasoning models for domain-specific tasks using reinforcement fine-tuning, overcoming data scarcity and lack of reasoning step data via question augmentation, synthesized re..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Beijing Jiaotong University",]
showSummary: true
date: 2024-12-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.16849 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuxiang Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.16849" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.16849" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/openrft-adapting-reasoning-foundation-model" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.16849/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many large language models excel at reasoning but struggle with generalization to specific domains.  This is often due to the unavailability of sufficient domain-specific training data, particularly data that includes the reasoning steps involved in reaching the answer. The paper introduces OpenRFT, a novel method that aims to address this limitation. 



OpenRFT tackles this issue by employing several techniques.  It uses question augmentation to expand the limited dataset and creates synthetic reasoning steps from existing data using a more powerful model. These synthetic steps are then employed to fine-tune a smaller, more efficient model. Finally, it incorporates few-shot in-context learning to enhance the exploration and learning process during reinforcement learning. The experimental results show significant improvements over existing methods when only a small number of domain-specific samples is used.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OpenRFT effectively fine-tunes generalist reasoning models for specific domains using reinforcement learning, overcoming the challenges of limited data and the absence of reasoning steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method employs three key strategies: question augmentation, synthesized reasoning process data, and few-shot in-context learning to improve performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} OpenRFT demonstrates significant performance improvements on the SciKnowEval benchmark, showcasing the potential of this approach for various domain-specific reasoning tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **OpenRFT**, a novel approach to fine-tune large language models for domain-specific reasoning tasks.  This addresses a critical challenge in AI, allowing researchers to leverage powerful general-purpose models for specialized applications with limited data. The techniques used, such as question augmentation and reasoning process synthesis, provide valuable insights and potential solutions for other researchers working with limited datasets and seeking better generalization in AI models.  The **open-sourcing** of code, datasets, and models further amplifies its impact by facilitating broader community participation and advancement.

------
#### Visual Insights



![](https://arxiv.org/html/2412.16849/extracted/6088342/figs/fig1.jpg)

> 🔼 The OpenRFT framework consists of three main modules: data augmentation, SFT-based imitation, and RL-based exploration and self-improvement.  Data augmentation generates more domain-specific data by rewriting questions and shuffling options. SFT-based imitation uses a stronger reasoning foundation model to synthesize reasoning process data, which is then used to pre-adapt the student policy model. RL-based exploration and self-improvement incorporates domain-specific samples via few-shot ICL and uses a process reward model (PRM) to supervise the rationality of the reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure 1: OpenRFT framework.
> </details>





{{< table-caption >}}
| Model/ Method | Biology | Chemistry | Chemistry | Chemistry | Physics | Materials | Materials | Materials | Avg. |
|---|---|---|---|---|---|---|---|---|---| 
| GPT-4o-mini | **0.37** | 0.69 | 0.84 | **0.32** | 0.53 | 0.49 | 0.90 | 0.525 | 0.583 |
| o1-mini | 0.35 | **0.86** | **0.87** | 0.23 | **0.73** | **0.70** | **0.87** | 0.50 | **0.639** |
| Vanilla | 0.28 | 0.55 | 0.52 | 0.23 | 0.45 | 0.34 | 0.41 | 0.41 | 0.403 |
| ReFT | 0.27 | 0.50 | 0.52 | 0.23 | 0.44 | 0.33 | 0.41 | 0.50 | 0.402 |
| ReFT+PRM | 0.30 | 0.57 | 0.49 | 0.23 | 0.44 | 0.36 | 0.37 | 0.48 | 0.405 |
| SFT | <ins>0.33</ins> | 0.53 | 0.49 | 0.20 | 0.45 | 0.37 | 0.43 | 0.49 | 0.415 |
| SFT+RL(PRM) | 0.29 | 0.59 | 0.52 | 0.24 | <ins>0.47</ins> | 0.36 | 0.46 | 0.57 | 0.437 |
| SFT+RL(PRM)+DA | 0.29 | 0.63 | <ins>0.53</ins> | 0.21 | <ins>0.47</ins> | <ins>0.38</ins> | 0.48 | <ins>0.59</ins> | <ins>0.447</ins> |
| SFT+RL(PRM)+DA+ICL | <ins>0.33</ins> | 0.57 | 0.52 | <ins>0.28</ins> | 0.46 | 0.36 | <ins>0.49</ins> | 0.53 | 0.443 |{{< /table-caption >}}

> 🔼 This table presents the accuracy results of various methods for solving scientific knowledge reasoning tasks, comparing different model approaches (vanilla, ReFT, SFT, etc.) and the impact of additional techniques like process reward modeling, data augmentation, and in-context learning.  The results are shown for eight specific reasoning tasks across four domains (biology, chemistry, physics, and materials), using 100 training samples.  The bold values represent the highest overall accuracy for each task, while the underlined values highlight the best performance achieved among methods utilizing the open-source Skywork-o1 model, providing a context for evaluating the effectiveness of different techniques relative to a baseline.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy of different models/methods. Bold indicates the highest value, while underline indicates the highest value among the different methods based on the open-source Skywork-o1.
> </details>





### In-depth insights


#### OpenRFT: A New Approach
OpenRFT presents a novel approach to fine-tuning reasoning foundation models for domain-specific tasks.  It directly addresses the key challenges inherent in Reinforcement Fine-Tuning (RFT), namely the lack of reasoning step data and limited training samples. **OpenRFT's innovation lies in its multi-pronged strategy** to leverage domain-specific data: question augmentation generates diverse training examples, synthesis of reasoning processes creates richer data, and few-shot in-context learning guides efficient exploration. This comprehensive approach enables significant performance gains, as demonstrated by the evaluation results on SciKnowEval.  **The method's reliance on a strong generalist reasoning model and a process reward model highlights the importance of robust foundation models** for effective RFT.  Further research might explore alternative methods for domain knowledge embedding and more sophisticated reward functions to unlock the full potential of RFT, especially in dealing with more complex reasoning tasks.

#### RFT Challenges Addressed
Reinforcement Fine-Tuning (RFT) presents exciting possibilities for adapting reasoning foundation models to specific domains, but faces two key challenges.  First, **the absence of reasoning step data** in typical domain-specific samples hinders effective reward signal generation, leading to flawed learning.  Second, **the limited quantity of training samples** restricts the model's ability to generalize effectively.  Addressing these challenges is crucial for realizing RFT's potential.  Solutions involve strategies such as question augmentation and the synthesis of reasoning process data to mitigate the lack of step-by-step information and provide a richer dataset for training.  Furthermore, techniques like few-shot in-context learning help leverage limited data more efficiently.  By tackling these limitations, RFT can fully unlock the power of generalist reasoning models, enabling them to excel in specialized tasks with less training data.  This is a critical area of ongoing research, and further advancements are essential to improve the robustness and applicability of RFT.

#### OpenRFT Framework
The OpenRFT framework, as described in the research paper, presents a novel approach to adapting generalist reasoning foundation models for domain-specific tasks. It directly addresses the challenges of limited training data and the absence of explicit reasoning steps by introducing three key strategies: **data augmentation**, which artificially increases the amount of training data by rephrasing and rewriting the questions, thus increasing the amount of data used; **supervised fine-tuning (SFT)** of the model on synthesized reasoning steps, enhancing the model's understanding of the domain-specific reasoning processes; and **reinforcement learning (RL)**, incorporating a process reward model to guide the learning process and improve the stability of the RL training. The framework is a unique integration of several techniques aiming to solve the limited data problem in a clever way. The combined approach of data augmentation, SFT, and RL aims to overcome the limitations of traditional fine-tuning methods and allow for the creation of highly effective domain-specific reasoning models using a small number of domain-specific samples. The paper particularly highlights the effectiveness of this approach through experiments showing that OpenRFT achieves significant performance gains even with a limited amount of samples.

#### Experimental Results
A dedicated section detailing experimental results is crucial for evaluating the effectiveness of OpenRFT.  The results should demonstrate improvements in performance metrics on various domain-specific tasks when compared against baseline methods (e.g., vanilla models, supervised fine-tuning alone). Key insights would be revealed by analyzing the impact of each component of OpenRFT (data augmentation, reasoning process synthesis, RL-based exploration) on the overall performance. **Significant performance gains, particularly with limited training samples, would strongly validate the effectiveness of OpenRFT's approach.** Furthermore, the results should show how well OpenRFT generalizes to unseen data. A detailed error analysis and discussions of limitations or unexpected results are essential for a comprehensive evaluation.  **Comparing OpenRFT's performance to other state-of-the-art reasoning models would establish its position within the current research landscape.** The results must be presented clearly and concisely, with appropriate visualizations (graphs, tables) for easy interpretation.  Additionally, a discussion of potential biases in the datasets and mitigation strategies employed would increase the credibility and robustness of the findings.  Finally, **any observed trade-offs between performance, computational cost, and data efficiency need to be carefully examined and articulated.**

#### Future Work Directions
Future research should prioritize improving the robustness and generalizability of the reinforcement fine-tuning (RFT) method.  **Addressing the limitations of relying solely on limited domain-specific samples** is crucial; this could involve exploring more sophisticated data augmentation techniques or developing methods to effectively transfer knowledge from related domains.  Further investigation into the design of reward functions is also warranted; specifically, how to create reward functions that accurately capture complex reasoning processes while remaining computationally efficient.  **The interaction between the policy model and the process reward model** needs closer examination; ensuring their alignment is paramount for effective training.  Finally, exploring different architectures and training strategies for both the policy model and the reward model could unlock further improvements and enable the technique to scale to even more challenging and complex reasoning tasks.  A thorough analysis of biases and limitations of existing techniques is also required.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.16849/extracted/6088342/figs/data_scale.jpg)

> 🔼 This figure details the task instructions used for data augmentation in the OpenRFT framework.  The goal is to generate multiple distinct yet semantically equivalent versions of a scientific multiple-choice question, preserving its original meaning.  Instructions specify that the paragraph should remain a scientific multiple-choice question without options. The meaning should be unchanged, without adding extra or unrelated information. Sentence structures can be adjusted, but the meaning must remain consistent. The final output should include five variations of the original question, each separated by a specified delimiter.
> <details>
> <summary>read the caption</summary>
> Figure 2: Task instructions for generating distinct expressions
> </details>



![](https://arxiv.org/html/2412.16849/extracted/6088342/figs/fig3.png)

> 🔼 Figure 3 illustrates how the model's performance changes with varying amounts of domain-specific training data.  The x-axis represents the number of domain-specific samples used in the reinforcement learning phase of the OpenRFT model. The y-axis shows the accuracy of the model's predictions. Multiple lines represent different model variations (ReFT, SFT+RL(PRM), SFT+RL(PRM)+DA). The graph reveals that the accuracy generally improves as the number of samples increases, indicating the effectiveness of the proposed data augmentation techniques. A light green dashed line serves as a baseline, showing the accuracy achieved by Supervised Fine-Tuning (SFT) using only 100 samples.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance with different sizes of domain-specific data. The light green dashed line represents the performance of SFT with 100 samples.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | Biology | Chemistry T1 | Chemistry T2 | Chemistry T3 | Physics | Materials T1 | Materials T2 | Materials T3 | Avg. |
|---|---|---|---|---|---|---|---|---|---| 
| Vanilla | 0.28 | **0.55** | **0.52** | **0.23** | **0.45** | 0.34 | 0.41 | 0.41 | 0.40 |
| SFT | **0.33** | 0.53 | 0.49 | 0.20 | **0.45** | **0.37** | **0.43** | **0.49** | **0.41** |
| SFT+ | 0.27 | 0.45 | 0.44 | 0.12 | 0.34 | 0.25 | 0.28 | 0.30 | 0.31 |{{< /table-caption >}}
> 🔼 This table analyzes the impact of teacher-student policy alignment on model performance.  It compares the accuracy of two approaches: SFT (where the student model synthesizes its own reasoning process) and SFT+ (where a stronger model, QwQ-32B, synthesizes the reasoning process for the student model). The results highlight the importance of aligning the teacher and student models for optimal performance, showing that using a more powerful teacher model doesn't always improve performance if the action spaces are misaligned.
> <details>
> <summary>read the caption</summary>
> Table 2: Analysis of teacher-student policy alignment. SFT and SFT+ indicate synthesizing reasoning process by the student policy itself and a stronger reasoning model QwQ-32B, respectively.
> </details>

{{< table-caption >}}
| Training Stages | Pre-Training |  | Fine-Tuning |  |
|---|---|---|---|---|
|  | Training data | Learning method | Training data | Learning method |
| **System-1** | (Q) | Self-supervised learning | (Q,A) | SFT |
| **System-2** | (Q,A) | RL + Self-Play | (Q,...,S<sup>j</sup>,...,A)<sup>4</sup> | RFT |

<sup>4</sup>Alternatively, as configured in this paper, only providing (Q, A) pairs is feasible. For a detailed discussion, please refer to the main text.{{< /table-caption >}}
> 🔼 This table compares System-1 and System-2 inference methods in terms of their training data and learning methods used during pre-training and fine-tuning stages. System-1 inference directly predicts answers from questions, whereas System-2 inference involves multiple intermediate steps.  The table highlights the differences in the type of training data used (labeled vs. unlabeled) and learning methods (supervised vs. reinforcement learning) applied in each approach.
> <details>
> <summary>read the caption</summary>
> Table 3: System-1 v.s. System-2: relied training data and used learning method in the pre-training and fine-tuning stages
> </details>

{{< table-caption >}}
| Methods | Reward Model | Policy Model | Target |
|---|---|---|---| 
| RLHF | Human preference | Base model/ SFT model | Value Alignment |
| RL-based Knowledge Distillation | Teacher model | Student model | Model Compression |
| RFT | Domain samples | Foundation reasoning model | Specialized Reasoning |{{< /table-caption >}}
> 🔼 This table compares different reinforcement learning (RL)-based fine-tuning methods, highlighting key differences in their reward model source, policy model, and overall target.  It shows that while RLHF utilizes human feedback, RL-based knowledge distillation leverages a teacher model, and the paper's proposed RFT method uses domain-specific samples as the reward signal source. The policy models also vary, impacting the target outcome—whether it's aligning model values, reducing model size, or improving specific reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Different methods of RL-based fine-tuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.16849/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16849/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}