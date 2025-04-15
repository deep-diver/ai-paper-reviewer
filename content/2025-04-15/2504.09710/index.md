---
title: "DUMP: Automated Distribution-Level Curriculum Learning for RL-based LLM Post-training"
summary: "DUMP: Adaptive curriculum learning enhances RL-based LLM post-training!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Rutgers University",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09710 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenting Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09710" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09710" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09710/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Modern LLM training often uses data from various distributions with different sources and complexities. Existing reinforcement learning (RL)-based post-training methods typically treat all training data as uniform, ignoring the inherent heterogeneity across distributions. This uniform treatment overlooks the potential for more efficient training by dynamically scheduling data from different distributions. It wastes resources on data where the model has already saturated its learning or that are too difficult to learn effectively.



This paper introduces **DUMP**, an automated distribution-level curriculum learning framework for RL-based LLM post-training. The core insight is that the magnitude of policy advantages reflects how much a model can still benefit from a given distribution. DUMP uses Upper Confidence Bound (UCB) to dynamically adjust sampling probabilities, prioritizing distributions with high average advantage or low sample count. Experiments on logic reasoning datasets show that DUMP improves convergence speed and final performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Absolute advantage serves as a practical proxy for distribution-level learnability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DUMP leverages advantage-based UCB scores to adaptively guide training over data distributions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DUMP significantly improves convergence speed and final performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an automated curriculum learning approach, **DUMP**, for RL-based LLM post-training, addressing the critical challenge of efficiently training across diverse data distributions. By leveraging advantage-based UCB scores, it dynamically optimizes training schedules, enhancing model capabilities and accelerating convergence. This offers a practical solution for improving LLM performance and opens new avenues for research in adaptive training strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09710/x1.png)

> 🔼 This figure shows an example of a puzzle and its corresponding prompt from the Knights and Knaves (K&K) dataset. The K&K dataset is used to evaluate the model's ability to perform logical reasoning. This particular prompt presents a scenario on a special island inhabited by knights (who always tell the truth) and knaves (who always lie).  The task is to deduce the identities of three inhabitants (Olivia, Henry, and Daniel) based on their statements. The prompt is carefully formatted to guide the model to provide reasoning process and answer in specific <think> and <answer> tags, making it suitable for evaluating structured reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of puzzle and prompt used in Knights and Knaves (K&K) puzzle dataset.
> </details>







### In-depth insights


#### Distro-Aware RL
**Distribution-aware RL** presents a significant advancement by recognizing data heterogeneity. Traditional methods often treat training data as a unified whole, ignoring the diverse origins and difficulties present. **This awareness enables adaptive scheduling** across distributions, optimizing learning efficiency. The core idea revolves around using policy advantages to reflect how much a model benefits from training on a specific distribution. By employing techniques like Upper Confidence Bound (UCB), the framework dynamically adjusts sampling probabilities. This approach prioritizes distributions based on high average advantage (**exploitation**) or low sample count (**exploration**), leading to an adaptive and theoretically grounded training schedule. It mirrors a human's learning approach by focusing on areas where improvement is most likely, thus enhancing both convergence speed and final performance.

#### Advantage as Proxy
The idea of using "advantage as a proxy" for something else is interesting. The **advantage function** in reinforcement learning estimates how much better an action is compared to the average action in a given state. Using it as a proxy implies leveraging this relative measure to infer something beyond just action quality. For example, it could **indicate the learnability of a particular data distribution**. If a model consistently shows high advantage on a specific subset of data, it suggests that the model is still actively learning from it. Conversely, low advantage might mean the model has plateaued, or the data is too noisy. This proxy could be used to **dynamically adjust the training curriculum**, focusing on data distributions where the model has the most to gain. This approach can lead to more efficient learning and better overall performance. Furthermore, the advantage function is already computed during standard RL training, making it a computationally inexpensive proxy.

#### UCB for LLM RL
Applying Upper Confidence Bound (UCB) to LLM Reinforcement Learning (RL) is intriguing. UCB balances exploration and exploitation, which could be beneficial in curriculum learning for LLMs. **UCB can guide the selection of data distributions** by prioritizing those with high potential returns, quantified by advantages. The exploration bonus ensures diverse data exposure, preventing premature convergence. **Theoretically, UCB offers regret bounds**, suggesting efficient learning. Adaptive sampling aligns well with the evolving nature of LLM training by dynamically scheduling resources based on learnability signals. A key aspect is **defining a suitable 'reward' signal for UCB**, such as expected absolute advantage, reflecting potential model improvement. This allows for a data-driven curriculum, avoiding manual heuristics and adapting to specific learning dynamics. UCB provides a theoretically grounded and adaptive framework for LLM RL, enhancing training efficiency and model performance.

#### Automated Curricula
The concept of automated curricula is compelling, especially in the context of training large language models. The core idea revolves around **dynamically adjusting the training process** without relying on manually designed schedules. This adaptability is crucial because models' learning needs evolve over time, and a static curriculum can become inefficient. An automated approach could leverage various signals, like the model's performance on specific tasks or the diversity of generated outputs, to **guide the selection of training data**. Such a system could **prioritize examples where the model is underperforming or where there's a high potential for learning**, leading to faster convergence and improved generalization. Furthermore, automation could **enable exploration of novel training strategies** that might be overlooked by human designers, potentially uncovering more effective ways to boost model capabilities. The success of automated curricula hinges on identifying reliable signals that accurately reflect learnability and developing algorithms that can stably and efficiently leverage these signals to guide training. **Theoretical grounding and empirical validation are essential** to ensure the automated curriculum leads to meaningful improvements in model performance.

#### DUMP Efficacy
Analyzing DUMP's efficacy involves assessing its ability to **improve LLM post-training by dynamically adjusting the training focus across data distributions**. Key indicators include faster convergence, higher final performance, and efficient resource allocation. A successful DUMP implementation should demonstrate a clear advantage over uniform sampling, particularly in scenarios with **heterogeneous data sources and varying difficulty levels**. The analysis should also reveal a curriculum-like progression, where simpler tasks are prioritized early on, followed by a gradual shift towards more complex ones, reflecting the model's evolving capacity. Furthermore, it is crucial to examine how DUMP avoids getting stuck in over-saturated or low-signal data, ensuring that the training effort is concentrated on distributions with high learnability. Analyzing the empirical advantage signals and the adaptive nature of DUMP's online adjustments is essential to validate its effectiveness.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_3_plot.png)

> 🔼 The figure displays the test answer reward over training steps for the Knights and Knaves puzzle dataset, specifically focusing on puzzles with 3 characters.  It compares the performance of the DUMP algorithm (distribution-level curriculum learning) against a uniform sampling baseline. The graph shows the reward accumulating over training steps, illustrating the improvement in accuracy achieved with the DUMP algorithm.
> <details>
> <summary>read the caption</summary>
> (a) 3 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_4_plot.png)

> 🔼 The figure shows the effectiveness of the DUMP algorithm compared to a baseline approach on the Knights and Knaves puzzle dataset with 4 characters.  The x-axis represents the training step, and the y-axis represents the test answer reward.  The plot displays the performance of both DUMP and the baseline (uniform sampling) over the course of training, illustrating that DUMP consistently outperforms the baseline, indicating superior convergence speed and higher final performance.
> <details>
> <summary>read the caption</summary>
> (b) 4 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_5_plot.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset. Specifically, it focuses on puzzles with 5 characters, comparing the performance of DUMP against a uniform sampling baseline in terms of test answer reward over training steps.  The graph illustrates how DUMP consistently outperforms the uniform sampling approach, achieving a higher reward and faster convergence.
> <details>
> <summary>read the caption</summary>
> (c) 5 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_6_plot.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset. Specifically, it presents the test answer reward over training steps for puzzles with 6 characters.  The graph compares the performance of DUMP against a uniform sampling baseline, illustrating DUMP's superior performance in terms of both convergence speed and final reward.
> <details>
> <summary>read the caption</summary>
> (d) 6 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_7_plot.png)

> 🔼 This figure shows the effectiveness of DUMP (Automated Distribution-level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset, specifically focusing on puzzles with 7 characters.  The graph plots the test answer reward over training steps, comparing the performance of DUMP against a baseline method that doesn't utilize DUMP's curriculum learning strategy.  The x-axis represents the training step, while the y-axis displays the test answer reward.  The lines represent the average test reward achieved using DUMP and uniform sampling.
> <details>
> <summary>read the caption</summary>
> (e) 7 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_8_plot.png)

> 🔼 The figure shows the effectiveness of the DUMP algorithm on the Knights and Knaves puzzle dataset, specifically for puzzles with 8 characters.  It compares the test answer reward achieved by using DUMP versus a baseline method (without DUMP). The x-axis represents the training step, and the y-axis shows the test answer reward. The graph visually demonstrates the performance improvement achieved by DUMP over the baseline.
> <details>
> <summary>read the caption</summary>
> (f) 8 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_9_plot.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset. Specifically, it focuses on puzzles with 9 characters, illustrating the test answer reward achieved by the model trained with DUMP against a baseline model trained without DUMP over a series of training steps.  The graph visually demonstrates how DUMP improves model performance, as measured by the test answer reward, on this specific puzzle complexity.
> <details>
> <summary>read the caption</summary>
> (g) 9 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_10_plot.png)

> 🔼 The figure shows the effectiveness of the DUMP algorithm compared to a uniform sampling baseline. Specifically, it presents the test answer reward over training steps for the puzzle distribution with 10 characters.  The graph illustrates the superior performance of DUMP in achieving a higher reward compared to uniform sampling. This demonstrates DUMP's ability to prioritize more informative data distributions for efficient learning.
> <details>
> <summary>read the caption</summary>
> (h) 10 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_11_plot.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-level Curriculum Learning) on a specific subset of the Knights and Knaves puzzle dataset.  This subset contains puzzles with 11 characters, representing a mid-level difficulty. The graph plots the test answer reward over training steps for the model trained with DUMP against a model trained with uniform sampling (no curriculum). The results demonstrate that DUMP achieves a significantly higher test answer reward compared to uniform sampling, highlighting DUMP’s ability to improve model performance on more challenging logic reasoning tasks.
> <details>
> <summary>read the caption</summary>
> (i) 11 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_12_plot.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset, specifically focusing on puzzles with 12 characters.  It compares the test answer reward achieved by the model trained using DUMP against a model trained with uniform sampling across different training steps. The graph illustrates the superior performance of DUMP in terms of achieving a higher reward on test puzzles compared to the uniform sampling baseline.
> <details>
> <summary>read the caption</summary>
> (j) 12 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_13_plot.png)

> 🔼 This figure displays the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset.  Specifically, it shows the test answer reward over training steps for puzzles containing 13 characters.  The graph compares the performance of DUMP against a uniform sampling baseline, illustrating DUMP's superior ability to achieve higher rewards faster.
> <details>
> <summary>read the caption</summary>
> (k) 13 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/kk_logic_plots/kk_logic_14_plot.png)

> 🔼 This figure displays the test answer reward achieved by the model trained with DUMP and without DUMP (baseline) for a specific distribution of the K&K puzzle dataset, where the puzzles have 14 characters.  The graph plots the reward against the training step, showcasing the superior performance of DUMP in achieving a higher reward compared to the baseline. This illustrates DUMP's effectiveness, particularly in more complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> (l) 14 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_3_curriculum_samples.png)

> 🔼 This figure displays the performance comparison between DUMP and a uniform sampling baseline on a Knights and Knaves puzzle dataset. The dataset is divided into 12 distributions, each defined by the number of characters (3-14) in the puzzle.  Each subplot represents a distribution, showing the test answer reward (a metric combining formatting and correctness of the answer) over training steps. DUMP consistently outperforms the baseline across all distributions, demonstrating faster convergence and higher rewards, particularly in more complex puzzles. This highlights DUMP’s effectiveness in dynamically adapting to different learning challenges.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effectiveness of DUMP on the K&K puzzle dataset mixed with 12 distributions defined by the number of characters in each puzzle. DUMP consistently achieves higher answer reward on test dataset compared to baseline.
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_4_curriculum_samples.png)

> 🔼 The figure shows the effectiveness of DUMP on the Knights and Knaves puzzle dataset with 12 distributions, each defined by the number of characters in the puzzle.  Each subplot represents a different number of characters (3 to 14), indicating varying levels of puzzle difficulty.  The x-axis represents the training step, and the y-axis represents the test answer reward.  The lines compare the performance of DUMP against a uniform sampling baseline.  DUMP consistently achieves higher answer rewards, demonstrating its ability to improve both convergence speed and final performance by dynamically prioritizing more learnable distributions.
> <details>
> <summary>read the caption</summary>
> (a) 3 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_5_curriculum_samples.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset, specifically focusing on puzzles with 4 characters.  It compares the test answer reward achieved by the model trained with DUMP against a baseline model trained without DUMP. The x-axis represents the training step, and the y-axis shows the test answer reward. The plot visualizes the performance improvement resulting from the application of DUMP. The graph helps demonstrate that DUMP enhances both speed and final performance by prioritizing the distributions that contribute to learning more efficiently.
> <details>
> <summary>read the caption</summary>
> (b) 4 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_6_curriculum_samples.png)

> 🔼 The figure shows the test answer reward over training steps for the puzzle with 5 characters.  The blue line represents the results using the proposed DUMP algorithm, while the green line shows the results without DUMP (uniform sampling).  It demonstrates DUMP's effectiveness in achieving a higher reward with faster convergence compared to the baseline uniform sampling approach.
> <details>
> <summary>read the caption</summary>
> (c) 5 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_7_curriculum_samples.png)

> 🔼 This figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) compared to a baseline method without DUMP, specifically for the subset of logic puzzles with 6 characters.  The x-axis represents the training step, and the y-axis represents the test answer reward. The graph shows how the test answer reward changes over time for both DUMP and the baseline, enabling a comparison of their performance.  This allows evaluation of how DUMP impacts the model's ability to solve the 6-character logic puzzles over the course of training.
> <details>
> <summary>read the caption</summary>
> (d) 6 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_8_curriculum_samples.png)

> 🔼 The figure shows the effectiveness of the DUMP algorithm compared to a baseline (without DUMP) on a subset of the Knights and Knaves puzzle dataset, specifically focusing on puzzles with 7 characters.  The plot displays the test answer reward over a series of training steps. The answer reward is a measure of the model's performance on unseen puzzles and reflects the accuracy of its solutions and adherence to formatting guidelines. This plot visually demonstrates the advantage of DUMP in terms of achieving a higher test answer reward in a shorter training time compared to the baseline.
> <details>
> <summary>read the caption</summary>
> (e) 7 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_9_curriculum_samples.png)

> 🔼 The figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a subset of the Knights and Knaves puzzle dataset. Specifically, it focuses on puzzles with 8 characters.  The graph plots the test answer reward achieved by the model trained with DUMP against a model trained with uniform sampling over training steps. The y-axis represents the test answer reward, and the x-axis represents the training steps.  The plot demonstrates that DUMP consistently outperforms uniform sampling in terms of achieving a higher test answer reward.
> <details>
> <summary>read the caption</summary>
> (f) 8 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_10_curriculum_samples.png)

> 🔼 The figure displays the test answer reward over training steps for the distribution containing puzzles with 9 characters.  It compares the performance of the model trained with the DUMP curriculum learning method against a model trained with uniform sampling (no curriculum). The x-axis represents the training steps, and the y-axis shows the test answer reward, a measure of the model's performance on unseen puzzles.  The graph visualizes how the DUMP method leads to significantly better test answer reward compared to uniform sampling.
> <details>
> <summary>read the caption</summary>
> (g) 9 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_11_curriculum_samples.png)

> 🔼 This figure displays the test answer reward over training steps for the K&K puzzle dataset's 10-character distribution, comparing the performance of the model trained with the DUMP algorithm against a model trained without DUMP (uniform sampling).  The x-axis represents the training steps, while the y-axis shows the test answer reward, a metric reflecting the model's accuracy on unseen puzzles. This visualization demonstrates the effectiveness of DUMP by showing that the model with DUMP achieves a higher reward, suggesting improved performance and faster convergence than the baseline model. The graph visually illustrates DUMP's ability to enhance the learning process on this specific difficulty level.
> <details>
> <summary>read the caption</summary>
> (h) 10 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_12_curriculum_samples.png)

> 🔼 The figure displays the test answer reward over training steps for the distribution with 11 characters in each puzzle.  It compares the performance of the DUMP method against a uniform sampling baseline. The graph shows the test answer reward on the y-axis and the training steps on the x-axis.  Two lines represent the results obtained using DUMP and uniform sampling, respectively, allowing for a direct comparison of their effectiveness on this specific puzzle difficulty.
> <details>
> <summary>read the caption</summary>
> (i) 11 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_13_curriculum_samples.png)

> 🔼 This figure displays the results of the DUMP algorithm and a baseline (uniform sampling) on the Knights and Knaves puzzle dataset, focusing on the distribution where puzzles have 12 characters.  It shows the test answer reward (a measure of model performance) over the course of training steps.  The graph helps to illustrate how the DUMP algorithm outperforms uniform sampling by achieving a higher reward faster.
> <details>
> <summary>read the caption</summary>
> (j) 12 Characters
> </details>



![](https://arxiv.org/html/2504.09710/extracted/6358163/fig/curriculum_sample_plots/kk_logic_14_curriculum_samples.png)

> 🔼 This figure shows the effectiveness of DUMP (Automated Distribution-Level Curriculum Learning) on a specific subset of the Knights and Knaves puzzle dataset.  Specifically, it focuses on puzzles containing 13 characters. The graph plots the test answer reward over training steps, comparing the performance of the model trained with DUMP against a model trained with uniform sampling (no curriculum). The goal is to demonstrate that DUMP improves the model's ability to solve these more complex puzzles, leading to higher rewards.  The x-axis represents the training step, and the y-axis represents the test answer reward.
> <details>
> <summary>read the caption</summary>
> (k) 13 Characters
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09710/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09710/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}