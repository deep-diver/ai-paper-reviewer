---
title: "AdaptiveStep: Automatically Dividing Reasoning Step through Model Confidence"
summary: "AdaptiveStep: Divides reasoning steps automatically through model confidence, enhancing PRM training & performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Nanjing University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13943 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuliang Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13943" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13943" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13943/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current PRMs use rule-based methods to divide reasoning steps, which overlook crucial decision points. The methods results in coarse divisions lacking decision-making insights. Existing PRMs face challenges in balancing annotation costs and division granularity, limiting their broad use due to high building costs and reliance on fixed symbols. Thus, more informative step dividing methods are in urgent needs. 



This paper presents **AdaptiveStep**, a novel method that divides reasoning steps based on the model's confidence in predicting the next word. This approach yields informative steps, enhancing reward model learning without manual annotation. The resulting AdaptiveStep Process Reward Model (ASPRM) outperforms existing PRMs in mathematical reasoning and code generation, reducing construction costs significantly. ASPRM also demonstrates strong transferability and generalization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AdaptiveStep divides reasoning steps based on model confidence, providing more decision-making information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} AdaptiveStep-trained PRMs achieve state-of-the-art performance in mathematical reasoning and code generation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AdaptiveStep reduces construction costs by over 30% compared to existing open-source PRMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces AdaptiveStep, a novel and efficient method for training Process Reward Models (PRMs) by dynamically dividing reasoning steps based on model confidence. It outperforms existing PRMs, reduces construction costs, and shows strong generalization, opening new avenues for **improving LLM reasoning and code generation**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13943/x1.png)

> 🔼 This figure compares three different methods for dividing reasoning steps in a process reward model (PRM). Rule-based methods automate step division using simple cues like line breaks or fixed token counts.  However, these methods often result in steps that are uninformative, particularly towards the end, and are difficult to adapt to diverse domains where defining clear rules is challenging.  Manual division, on the other hand, produces highly informative steps but is expensive and relies heavily on expert knowledge, thus limiting scalability. AdaptiveStep, the proposed method, addresses these limitations by automatically dividing steps according to the model's confidence in predicting the next word.  This approach offers the benefits of automation and efficiency while producing informative steps applicable to a wide variety of domains.
> <details>
> <summary>read the caption</summary>
> Figure 1: Rule-based reasoning step dividing (e.g., using line breaks or a fixed number of tokens) is automated but results in low informativeness at the end of the step and is difficult to apply in domains that hard to define rules. In contrast, manual step division provides high informativeness but is costly to scale and heavily reliant on the experts’ domain knowledge. AdaptiveStep, which divides steps based on model confidence, addresses these challenges by offering automation, efficiency, high informativeness, and applicability across various domains.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.2.1">Inference Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.3.1">A/P@1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.4.1">Math-Shepherd</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.5.1">ER-PRM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.6.1">ASPRM-L</span> / -M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.6.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.7.1">ASPRM-D</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.2.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.1.1.1">GSM8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.2">MetaMath-M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.3">77.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.4">75.66<span class="ltx_text" id="S4.T1.6.2.1.4.1" style="color:#00FF00;">↓</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.5">75.13<span class="ltx_text" id="S4.T1.6.2.1.5.1" style="color:#00FF00;">↓</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.2.1.6.1">79.53</span><span class="ltx_text" id="S4.T1.6.2.1.6.2" style="color:#FF0000;">↑</span> / 77.33<span class="ltx_text" id="S4.T1.6.2.1.6.3" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.2.1.7">/</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.3.2">
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.1">MetaMath-L</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.2">81.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.3">81.73<span class="ltx_text" id="S4.T1.6.3.2.3.1" style="color:#00FF00;">↓</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.4">81.58<span class="ltx_text" id="S4.T1.6.3.2.4.1" style="color:#00FF00;">↓</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.5">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.3.2.5.1">83.47</span><span class="ltx_text" id="S4.T1.6.3.2.5.2" style="color:#FF0000;">↑</span> / 82.56<span class="ltx_text" id="S4.T1.6.3.2.5.3" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.3.2.6">/</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.4.3.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.4.3.1.1">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.2">MetaMath-M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.3">25.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.4">27.60<span class="ltx_text" id="S4.T1.6.4.3.4.1" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.5">27.80<span class="ltx_text" id="S4.T1.6.4.3.5.1" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.6">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.4.3.6.1">28.60</span><span class="ltx_text" id="S4.T1.6.4.3.6.2" style="color:#FF0000;">↑</span> / 26.80<span class="ltx_text" id="S4.T1.6.4.3.6.3" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.3.7">/</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.5.4">
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.1">MetaMath-L</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.2">38.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.3">41.00<span class="ltx_text" id="S4.T1.6.5.4.3.1" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.4">38.60<span class="ltx_text" id="S4.T1.6.5.4.4.1" style="color:#00FF00;">↓</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.5">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.5.4.5.1">42.00</span><span class="ltx_text" id="S4.T1.6.5.4.5.2" style="color:#FF0000;">↑</span> / 41.20<span class="ltx_text" id="S4.T1.6.5.4.5.3" style="color:#FF0000;">↑</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.4.6">/</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.6.5.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.5.1.1">LeetCodeDataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.2">LCD-DS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.3">26.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.4">/</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.5">/</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.6">/</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.5.7">28.00<span class="ltx_text" id="S4.T1.6.6.5.7.1" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.7.6.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.7.6.1.1">LiveCodeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.2">LCD-DS</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.3">19.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.4">/</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.5">/</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.6">/</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.7.6.7">19.92<span class="ltx_text" id="S4.T1.6.7.6.7.1" style="color:#FF0000;">↑</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of Token-level Value-guided Decoding (TVD).  It compares the performance of different models (including Math-Shepherd, ER-PRM, and the proposed ASPRM) on various datasets (GSM8k, MATH500, LeetCodeDataset, and LiveCodeBench). The evaluation metrics are Accuracy@1 for mathematical reasoning tasks and Pass@1 for code generation tasks.  A/P@1 represents the performance of the greedy search method. The up arrow (↑) and down arrow (↓) symbols indicate whether the TVD method improved or reduced performance compared to the greedy search baseline.
> <details>
> <summary>read the caption</summary>
> Table 1: Token-level Value-guided Decoding results. A/P@1 refers to the inference model’s greedy search performance, we use Accuracy@1 for math tasks, and Pass@1 for code tasks as the metrics. ↑ and ↓ represent the performance improvement or decline compared to A/P@1.
> </details>





### In-depth insights


#### AdaptiveSteps PRM
**AdaptiveStep PRM** aims to refine Process Reward Models by dynamically adjusting reasoning step divisions based on model confidence. Instead of rule-based or fixed-length steps, it leverages prediction confidence for potentially more informative divisions, crucial for complex tasks. This adaptive approach seeks to balance automation with informativeness, addressing the limitations of existing PRMs. By focusing on decision-making points, the intention is to enhance downstream tasks like reward model learning and improve overall reasoning performance while potentially reducing annotation costs. The goal is to more precisely guide LLMs.

#### Model Confidence
When dividing reasoning steps, the **probability of a sampled token can act as a metric for model confidence**. High confidence implies the model is certain about the next token, while low confidence suggests difficulty in token selection. AdaptiveStep leverages this, **identifying key decision points in the reasoning process** where the model struggles, such as within mathematical expressions or at noun selections. These points then serve as the boundaries for dividing the reasoning steps. A threshold based on the token count determines which tokens fall below the confidence level and become breaking points. This approach is valuable because it **shifts from rule-based division to a data-driven method** based on the model's actual performance, **potentially capturing nuances overlooked by fixed rules** and allowing a reward model to focus on the most uncertain and critical parts of the reasoning process.

#### Token TVD
**Token-level Value-guided Decoding (TVD)** likely refers to a strategy that leverages a reward model (PRM) to guide token selection during decoding. The core idea is to use the PRM as a value function, assessing the quality or correctness of each potential token at each step of the decoding process. When the model encounters low confidence, the PRM can be triggered to evaluate the tokens, selecting the token that the PRM considers most promising. TVD enhances reasoning capacity of the inference models. This allows for a more fine-grained control over the generated output, potentially improving the overall coherence, accuracy, and relevance of the generated text, especially in tasks requiring complex reasoning or adherence to specific constraints. The value of PRM improves the overall performance in downstream tasks.

#### Code&Math General
The concept of a 'Code&Math General' evaluation is compelling, suggesting a unified benchmark for assessing AI reasoning across diverse domains. It would reveal true **generalization** by testing models on problems that require both mathematical computation and programmatic execution. A robust Code&Math General test could incorporate challenges like algorithm design with numerical constraints, code optimization with mathematical modeling, or even automated theorem proving within a code environment. This would demand models that seamlessly integrate symbolic reasoning with numerical computation, a crucial step toward more **versatile and intelligent AI** systems, rather than specialized tools limited to single domains.

#### Limited Transfers
**Limited Transfer** refers to a scenario where a model trained on one dataset or task struggles to perform well on a different, but related, dataset or task. This highlights the challenges in achieving true generalization and domain adaptation in machine learning. Several factors can contribute to this phenomenon, including **differences in data distributions**, **feature representations**, and **task objectives**. Overcoming these limitations requires developing techniques that can effectively capture and transfer knowledge across diverse domains, such as **domain adaptation methods**, **meta-learning algorithms**, and **transfer learning techniques**. Addressing the challenges of limited transfer is crucial for building robust and adaptable AI systems that can generalize to new and unseen environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13943/x2.png)

> 🔼 Figure 2 illustrates the AdaptiveStep process.  Panel (a) details the training data construction pipeline. First, samples are drawn from a dataset, and model confidence scores are calculated.  Then, a threshold is determined from the aggregate confidence distribution, and reasoning steps are divided based on this threshold.  Each step is labeled using rollout.  Panel (b) compares AdaptiveStep with rule-based methods for step division. Rule-based methods use predefined symbols or fixed token lengths (e.g., line breaks).  In contrast, AdaptiveStep divides steps based on model confidence. The figure shows that AdaptiveStep identifies critical breaking points in reasoning (mathematical expressions, noun selections, final answer decisions), unlike rule-based methods, which show higher confidence at artificial boundaries like line breaks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method overview. a) ASPRM  Training Data Construction Pipeline. Step 1: Sample from the dataset of a given domain, collecting confidence scores and samples for the training data. Then, accumulate the confidence distribution of all samples and determine the threshold. Step 2: Divide reasoning steps based on the threshold and label the steps using rollout. b) The difference between Rule-based method and AdaptiveStep division. The Rule-based method divides the reasoning process using predefined symbols or fixed token counts (e.g., line breaks, as shown in the figure), while AdaptiveStep divides reasoning steps based on model confidence. We observe that the model tends to divide reasoning steps at key decision points, such as within mathematical expressions, at noun selections, and when determining the final answer. In contrast, we find that the confidence at line breaks is particularly high.
> </details>



![](https://arxiv.org/html/2502.13943/x3.png)

> 🔼 Figure 3 illustrates the Token-level Value-guided Decoding (TVD) process.  A simple example is used to show how the method works. The model generates tokens, and their predicted confidence scores and PRM scores are displayed.  Green tokens represent tokens selected by the TVD process, while gray tokens were not selected. The example problem is '3 * (1 + 1) = ?', with the correct answer being 6. The model's confidence is low (below threshold τ) when calculating 1+1. This low confidence indicates a decision point, where the model needs to decide which number to multiply by 3. The PRM helps guide the model to select the best token (based on its calculated reward) to reach the correct final answer.  Red confidence scores highlight instances where the confidence of the top-predicted candidate falls below the threshold.
> <details>
> <summary>read the caption</summary>
> Figure 3: We illustrate Token-level Value-guided Decoding (TVD) with a simple example. The green token denotes the selected tokens, while the gray token indicates the tokens that were not selected. The question is 3 * (1 + 1) = ?, and the correct output is 6. In this case, the model exhibits low confidence (where cy<τsubscript𝑐𝑦𝜏c_{y}<\tauitalic_c start_POSTSUBSCRIPT italic_y end_POSTSUBSCRIPT < italic_τ) when calculating the result of 1+1, and subsequently determines which number to multiply by 3. The PRM should select the best token based on its judgment to arrive at the correct final answer. As shown in the top-left corner, for each token, the middle box represents the token itself, the bottom box shows the predicted confidence, and the box on the right displays the PRM score. The red confidence score indicates that the confidence of the Top-1 predicted candidate is lower than the threshold.
> </details>



![](https://arxiv.org/html/2502.13943/x4.png)

> 🔼 Figure 4 presents the Best-of-N (BoN) performance results for various Process Reward Models (PRMs) on mathematical reasoning tasks.  The models were tested on two datasets, GSM8k and MATH500, with candidate solutions generated using two different LLMs, Llama and Mistral.  Subfigures (a) and (b) show the results for GSM8k using Llama and Mistral respectively, while subfigures (c) and (d) display the MATH500 results using Llama and Mistral respectively. The suffixes '-L' and '-M' denote the base models used (Llama and Mistral). The results shown are based on previously published work, using the released versions of those models.
> <details>
> <summary>read the caption</summary>
> Figure 4: BoN results for the math tasks. We evaluate all PRMs on: (a) MetaMath-Llama generated GSM8k candidate solutions; (b) MetaMath-Mistral generated GSM8k candidates; (c) MetaMath-Llama generated MATH500 candidates; and (d) MetaMath-Mistral generated MATH500 candidates. The ”-L” and ”-M” suffixes denote the base models (Llama and Mistral, respectively). We report the evaluation results based on the released versions of other works.
> </details>



![](https://arxiv.org/html/2502.13943/x5.png)

> 🔼 Figure 5 presents the Best-of-N (BoN) evaluation results for code generation tasks using two datasets: LeetCodeDataset and LiveCodeBench.  Both datasets' BoN candidates were generated using the LCD-DS model.  The figure compares the performance of the AdaptiveStep Process Reward Model (ASPRM-D) with a baseline Outcome Reward Model (ORM-D).  Subfigure (a) shows the results for the LeetCodeDataset while subfigure (b) displays the results for the LiveCodeBench dataset.  This allows for a comparison of the two models across different datasets and provides insight into the effectiveness of ASPRM-D in code generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: BoN results for the code datasets, we test ASPRM-D   and a Code-ORM (ORM-D) on (a) LCD-DS generated LeetCodeDataset BoN candidates; (b) LCD-DS generated LiveCodeBench BoN candidates.
> </details>



![](https://arxiv.org/html/2502.13943/x6.png)

> 🔼 This figure presents the Best-of-N (BoN) results for mathematical reasoning tasks.  It displays the performance of several PRMs (Process Reward Models), including ASPRM (AdaptiveStep Process Reward Model) and baselines like Math-Shepherd and ER-PRM, across four different experimental setups.  The setups vary in the base LLMs used (Llama and Mistral) and the datasets used for evaluation (GSM8k and MATH500).  Each bar graph shows the BoN performance at different values of N (the number of candidates considered), indicating how the performance improves as more candidates are evaluated.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.13943/x7.png)

> 🔼 This figure presents a comparison of the Best-of-N (BoN) evaluation results for the code generation task.  Specifically, it illustrates the performance of the AdaptiveStep Process Reward Model (ASPRM) against an Outcome Reward Model (ORM) baseline, using the BoN metric across different numbers of candidate solutions (Bo1, Bo4, Bo8, Bo16, Bo32, Bo64). The x-axis represents the number of candidates considered in the BoN evaluation, and the y-axis shows the accuracy (percentage of correctly solved problems). The results highlight the superior performance and robustness of ASPRM compared to the ORM, particularly as the number of considered candidates increases.  The graph is divided into two parts, (a) and (b), each showing a different dataset used for evaluation.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.13943/x8.png)

> 🔼 This figure displays the results of the Best-of-N (BoN) evaluation for mathematical reasoning tasks, specifically on the MATH500 dataset.  It compares the performance of different PRMs (Process Reward Models), including the proposed ASPRM (AdaptiveStep Process Reward Model) and baselines such as Shepherd-MER-PRM and others. The x-axis represents different values of 'N' (the number of candidates considered in BoN), while the y-axis represents the accuracy achieved.  The figure shows how the ASPRM achieves state-of-the-art results in BoN evaluations for mathematical reasoning tasks.  The labels '-L' and '-M' indicate the base models used (Llama and Mistral, respectively).
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2502.13943/x9.png)

> 🔼 This figure displays the Best-of-N (BoN) results for mathematical reasoning tasks using the MetaMath-Mistral generated MATH500 candidate solutions.  The x-axis represents different values of N (the number of candidates considered), indicating the diversity of the solutions explored. The y-axis represents the accuracy achieved.  The plot compares the performance of several different PRMs, including ASPRM-L (trained on Llama), ASPRM-M (trained on Mistral), and two baselines (Math-Shepherd and ER-PRM).  The figure shows the performance comparison across different values of N, allowing analysis of the effectiveness of each PRM model at different levels of diversity considered in the evaluation.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



![](https://arxiv.org/html/2502.13943/x10.png)

> 🔼 Figure 6 presents a comparative analysis of four different methods used to construct training data for a Process Reward Model (PRM) applied to mathematical reasoning tasks.  The methods compared are: data generated using the Mistral model (Ours-M), data generated using the Llama model (Ours-L), data from the ER-PRM model, data from the Math-Shepherd model, and data from the PRM800K model. The figure displays four subplots: (a) shows the average number of reasoning steps generated by each method, (b) shows the total number of samples generated by each method, (c) shows the average number of tokens per reasoning step, and (d) shows the average length (in tokens) of each sample.  A Mistral tokenizer was consistently used for all statistical calculations. This visualization allows for direct comparison of the characteristics of the training data produced by each method, illustrating potential differences in efficiency, granularity, and data volume.
> <details>
> <summary>read the caption</summary>
> Figure 6: Statistic Information of our math dataset, Ours-M represents data constructed by Mistral, and Ours-L represents data constructed by Llama. ER-PRM, Math-Shepherd (M-S), PRM800K. (a): Average step; (b): Sample number; (c): Average tokens per reasoning step; (d): Sample length. We use a Mistral tokenizer for statistics.
> </details>



![](https://arxiv.org/html/2502.13943/x11.png)

> 🔼 This figure presents the results of the Best-of-N (BoN) evaluation for mathematical reasoning tasks. It shows the performance of various PRMs (Process Reward Models), including ASPRM (AdaptiveStep PRM), on two datasets: GSM8k and MATH500.  The models are evaluated using different base models (Llama and Mistral).  The x-axis represents different values of N, while the y-axis shows the accuracy achieved.  This allows for a comparison of the different PRMs' effectiveness in selecting the best solution from multiple generated responses. The plots are categorized by the base LLMs and datasets, enabling a detailed analysis of their relative strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.7.1.1.1.1">Setup</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.7.1.1.2.1">Test Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.7.1.1.3.1">Bo64 / TVD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.7.2.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.7.2.1.1" rowspan="4"><span class="ltx_text" id="S4.T2.7.2.1.1.1">L to M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.2.1.2">M-MATH500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.2.1.3">34.20<span class="ltx_text" id="S4.T2.7.2.1.3.1" style="color:#00FF00;">↓</span> / 27.60<span class="ltx_text" id="S4.T2.7.2.1.3.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.3.2">
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.2.1">M-GSM8k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.2.2">83.40<span class="ltx_text" id="S4.T2.7.3.2.2.1" style="color:#00FF00;">↓</span> / 77.94<span class="ltx_text" id="S4.T2.7.3.2.2.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.4.3">
<td class="ltx_td ltx_align_center" id="S4.T2.7.4.3.1">L-MATH500</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.4.3.2">41.80<span class="ltx_text" id="S4.T2.7.4.3.2.1" style="color:#00FF00;">↓</span> / 41.40<span class="ltx_text" id="S4.T2.7.4.3.2.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.5.4.1">L-GSM8k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.5.4.2">87.87<span class="ltx_text" id="S4.T2.7.5.4.2.1" style="color:#00FF00;">↓</span> / 82.49<span class="ltx_text" id="S4.T2.7.5.4.2.2" style="color:#00FF00;">↓</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment assessing the transferability of Process Reward Model (PRM) training data.  Specifically, it investigates whether a PRM trained on data generated by one language model (MetaMath-Llama) can effectively be used with a different language model (Mistral). The 'L to M' setup denotes training the Mistral model using PRM data originally generated by the Llama model. The table compares the performance of this setup against the performance of the Mistral model trained on its own data ('ASPRM-M').  The 'BoN' metric (Best-of-N) and the 'TVD' method (Token-level Value-guided Decoding) are used for evaluation, for two different datasets (MATH500 and GSM8k). The up and down arrows (↑↓) indicate whether the performance improved or decreased compared to the baseline (ASPRM-M).
> <details>
> <summary>read the caption</summary>
> Table 2: Transferability of PRM training data: L to M indicates training Mistral using PRM training data generated by MetaMath-Llama. ↑ and ↓ denote performance improvement or decline compared to ASPRM-M.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.2.1">Scoring Setup</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.1.1.3.1">Bo64</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.7.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.7.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.7.2.1.1.1">ASPRM-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.2.1.2">confidence</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.2.1.3">90.45</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.3.2">
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.2.1">random</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.2.2">90.22</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.4.3.1" rowspan="2"><span class="ltx_text" id="S4.T3.7.4.3.1.1">ASPRM-M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.4.3.2">confidence</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.4.3.3">85.82</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5.4">
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.4.1">random</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.5.4.2">86.96</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.7.6.5.1" rowspan="2"><span class="ltx_text" id="S4.T3.7.6.5.1.1">MS-M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.6.5.2">hard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.6.5.3">86.50</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7.6">
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.6.1">random</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.6.2">86.20</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.7.8.7.1" rowspan="2"><span class="ltx_text" id="S4.T3.7.8.7.1.1">ER-PRM-L</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.8.7.2">hard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.8.7.3">88.70</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.9.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.9.8.1">random</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.9.8.2">87.71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment assessing the generalization ability of different methods for selecting rating positions in a process reward model (PRM).  Three different setups were used: 1) Confidence: Rating points are identified where model confidence falls below a pre-defined threshold, reflecting areas of uncertainty in the model's reasoning process. 2) Random: Five rating points are randomly selected within the response. 3) Hard: Rating points are fixed to line breaks in the text. The table compares the performance (BoN@64) under each condition, demonstrating how well each method generalizes to different rating position selection strategies.
> <details>
> <summary>read the caption</summary>
> Table 3: Rating position generalization. In the confidence setup, rating points are the positions where confidence falls below the threshold. In the random setup, rating points are selected at five random positions. In the hard setup, rating points are line breaks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.1">PRM Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.2.1">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.3.1">Bo64 / TVD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.2.1.1">ASPRM-L</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.2.1.2">22.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.2.1.3">51.56 / 24.56<span class="ltx_text" id="S4.T4.5.2.1.3.1" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.5.3.2.1">ASPRM-M</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.3.2.2">22.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.3.2.3">37.88 / 24.68<span class="ltx_text" id="S4.T4.5.3.2.3.1" style="color:#FF0000;">↑</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the in-domain generalization capabilities of different PRM models. The evaluation was performed on the GSM-Symbolic p2 dataset, a modified version of the GSM8k dataset designed to test the models' ability to handle variations in problem wording or structure.  The table compares the performance of different PRMs (including ASPRM models) using the Best-of-N (BoN) metric and Token-level Value-guided Decoding (TVD). The 'Base' column shows the accuracy achieved using greedy search (baseline), while BoN/TVD columns represent the performance improvement using the Best-of-N strategy and TVD, respectively. The up arrow (↑) indicates a performance improvement compared to the baseline greedy search results.
> <details>
> <summary>read the caption</summary>
> Table 4: In-domain generalization ability. The experiments are conducted on the GSM-Symbolic p2 dataset. ↑ indicates the performance improvement compared to greedy search.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.8.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.8.1.1.1.1">PRM Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.8.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.8.1.1.2.1">Target</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.8.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.8.1.1.3.1">Bo64 / TVD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.8.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.8.2.1.1.1">ASPRM-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.2.1.2">Code-LCD</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.2.1.3">34.29<span class="ltx_text" id="S4.T5.8.2.1.3.1" style="color:#FF0000;">↑</span> / 28.00<span class="ltx_text" id="S4.T5.8.2.1.3.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.3.2">
<td class="ltx_td ltx_align_center" id="S4.T5.8.3.2.1">Code-LCB</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.3.2.2">22.30<span class="ltx_text" id="S4.T5.8.3.2.2.1" style="color:#FF0000;">↑</span> / 19.21-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.8.4.3.1" rowspan="2"><span class="ltx_text" id="S4.T5.8.4.3.1.1">ASPRM-D</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.4.3.2">Math-GSM8k</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.4.3.3">75.13<span class="ltx_text" id="S4.T5.8.4.3.3.1" style="color:#00FF00;">↓</span> / 75.28<span class="ltx_text" id="S4.T5.8.4.3.3.2" style="color:#00FF00;">↓</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.8.5.4.1">Math-MATH500</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.8.5.4.2">30.00<span class="ltx_text" id="S4.T5.8.5.4.2.1" style="color:#FF0000;">↑</span> / 26.00<span class="ltx_text" id="S4.T5.8.5.4.2.2" style="color:#FF0000;">↑</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the transferability of the Process Reward Models (PRMs) across different domains.  It shows the performance (using BoN and TVD metrics) of models trained on one domain (Source) when applied to a different domain (Target).  The 'Source' column indicates the training data domain and the corresponding PRM, while the 'Target' column specifies the evaluation dataset and its domain.  Performance improvements (↑) or declines (↓) relative to the original model's greedy search performance (A/P@1, from Table 1) are also indicated, giving a clear comparison of how well the PRMs generalize to new, unseen domains.
> <details>
> <summary>read the caption</summary>
> Table 5: Cross-domain generalization ability of the PRMs: Source represents the source domain and the corresponding model. Target represents the target dataset domain and the corresponding test data. ↑ and ↓ indicate performance improvements or declines compared to the A/P@1 performance in Table 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.8.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.8.1.1.1.1">Base Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.8.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.8.1.1.2.1">Train</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.8.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.8.1.1.3.1">Test</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.8.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.8.1.1.4.1">Bo64 / TVD</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.8.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T6.8.2.1.1.1">Mistral</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.2.1.2">M+C</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.2.1.3">GSM8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.2.1.4">86.35<span class="ltx_text" id="S4.T6.8.2.1.4.1" style="color:#FF0000;">↑</span> / 77.79<span class="ltx_text" id="S4.T6.8.2.1.4.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.3.2">
<td class="ltx_td ltx_align_center" id="S4.T6.8.3.2.1">M+C</td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.3.2.2">MATH500</td>
<td class="ltx_td ltx_align_center" id="S4.T6.8.3.2.3">35.40<span class="ltx_text" id="S4.T6.8.3.2.3.1" style="color:#FF0000;">↑</span> / 29.00<span class="ltx_text" id="S4.T6.8.3.2.3.2" style="color:#FF0000;">↑</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.8.4.3.1" rowspan="2"><span class="ltx_text" id="S4.T6.8.4.3.1.1">Deepseek</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.4.3.2">C+M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.4.3.3">LCD</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.4.3.4">37.71- / 28.00-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.5.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.8.5.4.1">C+M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.8.5.4.2">LCB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.8.5.4.3">24.96<span class="ltx_text" id="S4.T6.8.5.4.3.1" style="color:#00FF00;">↓</span> / 20.33<span class="ltx_text" id="S4.T6.8.5.4.3.2" style="color:#FF0000;">↑</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating Process Reward Models (PRMs) trained on mixed datasets containing both mathematical reasoning and code generation data.  Two base models were used: Mistral and DeepSeek.  For Mistral, the mixed dataset (M+C) combined MetaMath-Mistral generated math data with the complete code training dataset. For DeepSeek, the mixed dataset (C+M) used the entire code dataset along with an equal amount of randomly selected math data.  The table shows the performance (BoN and TVD) of these mixed-data PRMs on the original math and code test datasets, comparing them to PRMs trained without mixed data to highlight the impact of data mixing on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 6: The test results of the PRMs trained with a mixed training dataset. When the base model is Mistral, the M+C training data consists of the MetaMATH-Mistral generated math dataset and full code training dataset. When the base model is Deepseek, the C+M training data includes all of the code dataset and an equal amount of randomly sampled math training data. ↑ and ↓ represent the performance improvement or decline compared to the no mixed data trained PRMs in the origin domain of test data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="A1.T7.17" style="width:433.6pt;">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.17.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T7.17.1.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T7.17.1.1.1.1">Categories</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T7.17.1.1.2" rowspan="2" style="padding:1pt 0.0pt;">      <span class="ltx_text" id="A1.T7.17.1.1.2.1">Subtypes</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.17.1.1.3" style="padding:1pt 0.0pt;">Position</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.17.2.2.1" style="padding:1pt 0.0pt;">Token type proportion (78m)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.17.2.2.2" style="padding:1pt 0.0pt;">decision token proportion (1517k)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T7.17.3.3.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T7.17.3.3.1.1">Natural Sentence</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T7.17.3.3.2" style="padding:1pt 0.0pt;">New line break</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.17.3.3.3" style="padding:1pt 0.0pt;">3.85%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T7.17.3.3.4" style="padding:1pt 0.0pt;">2.70%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.17.4.4.1" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T7.17.4.4.1.1" style="position:relative; bottom:0.0pt;"><span class="ltx_rule" style="width:0.5pt;height:28.5pt;background:black;display:inline-block;"> </span></span>      Punctuation</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.4.4.2" style="padding:1pt 0.0pt;">26.92%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.4.4.3" style="padding:1pt 0.0pt;">4.61%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T7.17.5.5.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T7.17.5.5.1.1">Reasoning</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T7.17.5.5.2" style="padding:1pt 0.0pt;">Symbolic Reasoning</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.5.5.3" style="padding:1pt 0.0pt;">15.39%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.5.5.4" style="padding:1pt 0.0pt;">6.79%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.6.6">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T7.17.6.6.1" style="padding:1pt 0.0pt;">Math Formula</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.6.6.2" style="padding:1pt 0.0pt;">3.85%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.6.6.3" style="padding:1pt 0.0pt;">21.03%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T7.17.7.7.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T7.17.7.7.1.1">Entity</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T7.17.7.7.2" style="padding:1pt 0.0pt;">          Noun</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.7.7.3" style="padding:1pt 0.0pt;">15.38%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.7.7.4" style="padding:1pt 0.0pt;">11.01%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T7.17.8.8.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T7.17.8.8.1.1">Semantics</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T7.17.8.8.2" style="padding:1pt 0.0pt;">      Conjunction</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.8.8.3" style="padding:1pt 0.0pt;">20.51%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.8.8.4" style="padding:1pt 0.0pt;">29.00%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.9.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T7.17.9.9.1" style="padding:1pt 0.0pt;">          Verb</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.9.9.2" style="padding:1pt 0.0pt;">6.41%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T7.17.9.9.3" style="padding:1pt 0.0pt;">5.34%</td>
</tr>
<tr class="ltx_tr" id="A1.T7.17.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T7.17.10.10.1" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T7.17.10.10.1.1" style="position:relative; bottom:0.0pt;"><span class="ltx_rule" style="width:0.5pt;height:28.5pt;background:black;display:inline-block;"> </span></span>       Determiner</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T7.17.10.10.2" style="padding:1pt 0.0pt;">7.69%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T7.17.10.10.3" style="padding:1pt 0.0pt;">2.64%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a statistical analysis of token types and decision token types within the MetaMath-Mistral generated dataset for mathematical reasoning tasks.  It breaks down the data into categories (Natural Sentence, Reasoning, Entity, Semantics) and subcategories (e.g., types of punctuation, math formulas, nouns, conjunctions, verbs, determiners). For each category and subcategory, the table shows the percentage of tokens belonging to that category/subcategory in the overall dataset, as well as the percentage of those tokens that are considered 'decision tokens' (tokens indicating a point where the model has low confidence and a new reasoning step begins).  The table also notes the inclusion of a few 'Split Word' tokens, which represent word-level segmentation points retained to improve model generalization during PRM training.
> <details>
> <summary>read the caption</summary>
> Table 7: MetaMath-Mistral generated data statistic results: percentage of tokens types and percentage of decision tokens types for math domain. Natural Sentence stands for a piece of text separated by a New line break or Punctuation like Period and Question Mark. Reasoning represents symbolic reasoning or Math Formula; Entity represents Noun like apple or personal name; Semantics represents Conjunction, Verb and Determiner. We also find that there are few word level splits represented by Split Word; we retained these segmentation points to enhance the model’s generalization at these points during PRM training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="A1.T8.4" style="width:433.6pt;">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="A1.T8.4.1.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T8.4.1.1.1.1">Categories</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.2" rowspan="2" style="padding:1pt 0.0pt;">      <span class="ltx_text" id="A1.T8.4.1.1.2.1">Subtypes</span>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="A1.T8.4.1.1.3" style="padding:1pt 0.0pt;">Position</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T8.4.2.2.1" style="padding:1pt 0.0pt;">Token type proportion (81m)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T8.4.2.2.2" style="padding:1pt 0.0pt;">decision token proportion (1413k)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T8.4.3.3.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T8.4.3.3.1.1">Natural Sentence</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T8.4.3.3.2" style="padding:1pt 0.0pt;">New line break</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T8.4.3.3.3" style="padding:1pt 0.0pt;">2.47%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T8.4.3.3.4" style="padding:1pt 0.0pt;">6.69%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.4.4.1" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T8.4.4.4.1.1" style="position:relative; bottom:0.0pt;"><span class="ltx_rule" style="width:0.5pt;height:28.5pt;background:black;display:inline-block;"> </span></span>      Punctuation</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.4.4.2" style="padding:1pt 0.0pt;">28.40%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.4.4.3" style="padding:1pt 0.0pt;">14.91%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.5.5.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T8.4.5.5.1.1">Reasoning</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T8.4.5.5.2" style="padding:1pt 0.0pt;">Symbolic Reasoning</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.5.5.3" style="padding:1pt 0.0pt;">16.05%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.5.5.4" style="padding:1pt 0.0pt;">5.66%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.6.6">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T8.4.6.6.1" style="padding:1pt 0.0pt;">Math Formula</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.6.6.2" style="padding:1pt 0.0pt;">3.7%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.6.6.3" style="padding:1pt 0.0pt;">20.24%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T8.4.7.7.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T8.4.7.7.1.1">Entity</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.7.7.2" style="padding:1pt 0.0pt;">          Noun</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.7.7.3" style="padding:1pt 0.0pt;">14.82%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.7.7.4" style="padding:1pt 0.0pt;">7.35%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T8.4.8.8.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T8.4.8.8.1.1">Semantics</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T8.4.8.8.2" style="padding:1pt 0.0pt;">      Conjunction</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.8.8.3" style="padding:1pt 0.0pt;">20.99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.8.8.4" style="padding:1pt 0.0pt;">23.48%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.9.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T8.4.9.9.1" style="padding:1pt 0.0pt;">          Verb</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.9.9.2" style="padding:1pt 0.0pt;">6.17%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T8.4.9.9.3" style="padding:1pt 0.0pt;">5.24%</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T8.4.10.10.1" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T8.4.10.10.1.1" style="position:relative; bottom:0.0pt;"><span class="ltx_rule" style="width:0.5pt;height:28.5pt;background:black;display:inline-block;"> </span></span>       Determiner</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T8.4.10.10.2" style="padding:1pt 0.0pt;">7.4%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T8.4.10.10.3" style="padding:1pt 0.0pt;">2.99%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical breakdown of decision tokens within mathematical reasoning data generated using the MetaMath-Llama model. It categorizes tokens into types (Natural Sentence, Reasoning, Entity, Semantics) and subtypes (e.g., New line break, Punctuation, Math Formula, Noun, Conjunction, Verb, Determiner). For each category and subcategory, the table shows the proportion of all tokens and the proportion of decision tokens among all generated tokens.  Decision tokens are defined as those with low model confidence, indicating points where the model is less certain about the next token prediction.
> <details>
> <summary>read the caption</summary>
> Table 8: Proportion of decision tokens in the original data of the same type for math domain generated by MetaMath-Llama.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="A1.T9.4" style="width:433.6pt;">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T9.4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T9.4.1.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.1.1.1.1">Categories</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T9.4.1.1.2" rowspan="2" style="padding:1pt 0.0pt;">      <span class="ltx_text" id="A1.T9.4.1.1.2.1">Subtypes</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T9.4.1.1.3" style="padding:1pt 0.0pt;">Position</th>
</tr>
<tr class="ltx_tr" id="A1.T9.4.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.4.2.2.1" style="padding:1pt 0.0pt;"> Token type proportion (17m)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.4.2.2.2" style="padding:1pt 0.0pt;">   decision token proportion (47k)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.4.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A1.T9.4.3.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.3.1.1.1">Syntax Symbol</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.T9.4.3.1.2" style="padding:1pt 0.0pt;">New line break</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T9.4.3.1.3" style="padding:1pt 0.0pt;">6.99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T9.4.3.1.4" style="padding:1pt 0.0pt;">11.79%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.4.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.4.2.1" style="padding:1pt 0.0pt;">Space Character</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.4.2.2" style="padding:1pt 0.0pt;">77.58%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.4.2.3" style="padding:1pt 0.0pt;">1.60%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.5.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.5.3.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.5.3.1.1">Numbers</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.5.3.2" style="padding:1pt 0.0pt;">       Number</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.5.3.3" style="padding:1pt 0.0pt;">4.21%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.5.3.4" style="padding:1pt 0.0pt;">0.84%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.6.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.6.4.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.6.4.1.1">Logical Operators</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.6.4.2" style="padding:1pt 0.0pt;">Boolean Operators</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.6.4.3" style="padding:1pt 0.0pt;">0.26%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.6.4.4" style="padding:1pt 0.0pt;">3.21%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.7.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.7.5.1" style="padding:1pt 0.0pt;">Arithmetic Operators</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.7.5.2" style="padding:1pt 0.0pt;">2.04%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.7.5.3" style="padding:1pt 0.0pt;">3.54%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.8.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.8.6.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.8.6.1.1">Definition</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.8.6.2" style="padding:1pt 0.0pt;">      Def / Class</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.8.6.3" style="padding:1pt 0.0pt;">0.53%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.8.6.4" style="padding:1pt 0.0pt;">1.82%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.9.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.9.7.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.9.7.1.1">Import Statement</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.9.7.2" style="padding:1pt 0.0pt;">From / Import</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.9.7.3" style="padding:1pt 0.0pt;">0.58%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.9.7.4" style="padding:1pt 0.0pt;">0.76%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.10.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.10.8.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.10.8.1.1">Function</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.10.8.2" style="padding:1pt 0.0pt;">Type Defination</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.10.8.3" style="padding:1pt 0.0pt;">0.16%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.10.8.4" style="padding:1pt 0.0pt;">0.48%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.11.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.11.9.1" style="padding:1pt 0.0pt;">Build-in Function</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.11.9.2" style="padding:1pt 0.0pt;">0.49%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.11.9.3" style="padding:1pt 0.0pt;">0.77%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.12.10">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.12.10.1" style="padding:1pt 0.0pt;">Instance Method</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.12.10.2" style="padding:1pt 0.0pt;">0.09%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.12.10.3" style="padding:1pt 0.0pt;">0.26%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.13.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.13.11.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.13.11.1.1">Control Statements</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.13.11.2" style="padding:1pt 0.0pt;">     If / Else / Elif</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.13.11.3" style="padding:1pt 0.0pt;">0.64%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.13.11.4" style="padding:1pt 0.0pt;">3.51%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.14.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="A1.T9.4.14.12.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.14.12.1.1">Loop Statements</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.4.14.12.2" style="padding:1pt 0.0pt;">       For / While</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.14.12.3" style="padding:1pt 0.0pt;">0.62%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.14.12.4" style="padding:1pt 0.0pt;">1.73%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.15.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A1.T9.4.15.13.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T9.4.15.13.1.1">Others</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="A1.T9.4.15.13.2" style="padding:1pt 0.0pt;">        Return</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.15.13.3" style="padding:1pt 0.0pt;">0.68%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T9.4.15.13.4" style="padding:1pt 0.0pt;">0.58%</td>
</tr>
<tr class="ltx_tr" id="A1.T9.4.16.14">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_l ltx_border_r" id="A1.T9.4.16.14.1" style="padding:1pt 0.0pt;">Punctuation Mark</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T9.4.16.14.2" style="padding:1pt 0.0pt;">4.99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T9.4.16.14.3" style="padding:1pt 0.0pt;">6.52%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical analysis of the types of tokens identified as 'decision tokens' within the code domain data.  Decision tokens are those where the model exhibits low confidence in its prediction. The table breaks down the proportion of these decision tokens across various categories of code tokens (e.g., syntax symbols, numbers, logical operators, function calls, control statements), and the sub-types within each category. This analysis reveals which types of tokens are more likely to represent critical decision points during the code generation process, offering insights into model behavior and potential areas for improvement.
> <details>
> <summary>read the caption</summary>
> Table 9: Proportion of decision tokens in the original data of the same type for code domain
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T10.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T10.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.4.1.1.1">Categories</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.4.1.1.2">Trigger type(234k)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.4.1.1.3">Token type (17m)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T10.4.1.1.4">Line number(1599k)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.4.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.4.2.1.1">Code</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.4.2.1.2">47k (19.95%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.4.2.1.3">4m (26.15%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.4.2.1.4">1280k(80.02%)</td>
</tr>
<tr class="ltx_tr" id="A1.T10.4.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A1.T10.4.3.2.1">Code comment</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.4.3.2.2">187k (80.05%)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.4.3.2.3">13m (73.85%)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.4.3.2.4">319k(19.98%)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of decision tokens within code and code comments.  It breaks down the proportion of decision tokens by their type (trigger, token, line number) and category (code, code comment). This helps to understand the characteristics of decision points within different parts of the code and offers insights into the nature of the reasoning process during code generation.
> <details>
> <summary>read the caption</summary>
> Table 10: Proportion of decision tokens in Code and Code Comment
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="A1.T11.4" style="width:433.6pt;">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T11.4.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T11.4.1.1.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T11.4.1.1.1.1">Categories</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T11.4.1.1.2" style="padding:1pt 0.0pt;">      <span class="ltx_text" id="A1.T11.4.1.1.2.1">Subtypes</span>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T11.4.1.1.3" style="padding:1pt 0.0pt;">Sample</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.4.2.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T11.4.2.1.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T11.4.2.1.1.1">Sentence</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T11.4.2.1.2" style="padding:1pt 0.0pt;">New line break</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T11.4.2.1.3" style="padding:1pt 0.0pt;">works on 4 of them each day.<span class="ltx_text" id="A1.T11.4.2.1.3.1" style="color:#FF0000;">\<span class="ltx_text ltx_font_bold" id="A1.T11.4.2.1.3.1.1">n</span></span>After 5 days,</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.3.2">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T11.4.3.2.1" style="padding:1pt 0.0pt;">      Punctuation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.3.2.2" style="padding:1pt 0.0pt;">If Billie has 18 crayons<span class="ltx_text ltx_font_bold" id="A1.T11.4.3.2.2.1" style="color:#FF0000;">,</span> and Bobbie has three times</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.4.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.4.3.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T11.4.4.3.1.1">Reasoning</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.4.3.2" style="padding:1pt 0.0pt;">Text reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.4.3.3" style="padding:1pt 0.0pt;">gives them <span class="ltx_text ltx_font_bold" id="A1.T11.4.4.3.3.1" style="color:#FF0000;">3</span> points. So in total, Joe’s team has 3 + 3 = 6</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.5.4">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.5.4.1" style="padding:1pt 0.0pt;">Math formula</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.5.4.2" style="padding:1pt 0.0pt;">so x <span class="ltx_text ltx_font_bold" id="A1.T11.4.5.4.2.1" style="color:#FF0000;">+</span> 4x - 10 = 25</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.6.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.6.5.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T11.4.6.5.1.1">Entity</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.6.5.2" style="padding:1pt 0.0pt;">          Noun</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.6.5.3" style="padding:1pt 0.0pt;">Ron gets to pick a new <span class="ltx_text ltx_font_bold" id="A1.T11.4.6.5.3.1" style="color:#FF0000;">book</span> 1 out of 13</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.7.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T11.4.7.6.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T11.4.7.6.1.1">Semantics</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T11.4.7.6.2" style="padding:1pt 0.0pt;">      Conjunction</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.7.6.3" style="padding:1pt 0.0pt;">their ages is 34, <span class="ltx_text ltx_font_bold" id="A1.T11.4.7.6.3.1" style="color:#FF0000;">so</span> we can write the equation L + (L + 4) = 34.</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.8.7">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T11.4.8.7.1" style="padding:1pt 0.0pt;">          Verb</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.8.7.2" style="padding:1pt 0.0pt;">In 14 days, each dog will <span class="ltx_text ltx_font_bold" id="A1.T11.4.8.7.2.1" style="color:#FF0000;">eat</span> 250 grams/day</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.9.8">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_l ltx_border_r" id="A1.T11.4.9.8.1" style="padding:1pt 0.0pt;">      Determiner</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T11.4.9.8.2" style="padding:1pt 0.0pt;">we can round <span class="ltx_text ltx_font_bold" id="A1.T11.4.9.8.2.1" style="color:#FF0000;">this</span> to the nearest whole number.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides examples of decision tokens identified by the AdaptiveStep method in mathematical reasoning tasks.  Decision tokens represent points in the reasoning process where the model exhibits low confidence in predicting the next word, indicating a potential break between reasoning steps. The table shows different categories of tokens (such as natural sentences, reasoning steps, entities, and semantics), sub-types of tokens within those categories, and illustrative examples of how these tokens appear in the context of a mathematical reasoning problem.
> <details>
> <summary>read the caption</summary>
> Table 11: Samples of decision tokens for math domain.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_minipage ltx_align_middle" id="A1.T12.4" style="width:433.6pt;">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T12.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T12.4.1.1.1" style="padding:1pt 0.0pt;">Categories</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="A1.T12.4.1.1.2" style="padding:1pt 0.0pt;">       Subtypes</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T12.4.1.1.3" style="padding:1pt 0.0pt;">Sample</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T12.4.2.2.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.2.2.1.1">Syntax Symbol</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A1.T12.4.2.2.2" style="padding:1pt 0.0pt;">New line break</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T12.4.2.2.3" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T12.4.2.2.3.1" style="color:#FF0000;">\n</span> i += num_bytes</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.3.3">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.3.3.1" style="padding:1pt 0.0pt;">Space Character</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.3.3.2" style="padding:1pt 0.0pt;">dp[i][j] += dp[i - 1][j] * (j - k) <span class="ltx_text" id="A1.T12.4.3.3.2.1" style="color:#FF0000;">\<span class="ltx_text ltx_font_bold" id="A1.T12.4.3.3.2.1.1">s</span></span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.4.4.1" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.4.4.1.1">Numbers</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.4.4.2" style="padding:1pt 0.0pt;">       Number</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.4.4.3" style="padding:1pt 0.0pt;">j = (target - x * <span class="ltx_text ltx_font_bold" id="A1.T12.4.4.4.3.1" style="color:#FF0000;">2</span>) // 2</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.5.5.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.5.5.1.1">Logical Operators</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.5.5.2" style="padding:1pt 0.0pt;">Boolean Operators</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.5.5.3" style="padding:1pt 0.0pt;">if c in count <span class="ltx_text ltx_font_bold" id="A1.T12.4.5.5.3.1" style="color:#FF0000;">and</span> c != a:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.6.6.1" style="padding:1pt 0.0pt;">Arithmetic Operators</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.6.6.2" style="padding:1pt 0.0pt;">dp = [[0] * (n<span class="ltx_text ltx_font_bold" id="A1.T12.4.6.6.2.1" style="color:#FF0000;">+</span>1) for _ in range(n+1)]</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.7.7.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.7.7.1.1">Definition</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.7.7.2" style="padding:1pt 0.0pt;">          Def</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.7.7.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.7.7.3.1" style="color:#FF0000;">def</span> is_valid(r, c):</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.8.8">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.8.8.1" style="padding:1pt 0.0pt;">         Class</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.8.8.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.8.8.2.1" style="color:#FF0000;">class</span> Solution:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.9.9.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.9.9.1.1">Import Statement</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.9.9.2" style="padding:1pt 0.0pt;">          From</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.9.9.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.9.9.3.1" style="color:#FF0000;">from</span> collections import defaultdict</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.10.10">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.10.10.1" style="padding:1pt 0.0pt;">        Import</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.10.10.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.10.10.2.1" style="color:#FF0000;">import</span> collections</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.11.11.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.11.11.1.1">Function</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.11.11.2" style="padding:1pt 0.0pt;">Type Defination</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.11.11.3" style="padding:1pt 0.0pt;">for size in <span class="ltx_text ltx_font_bold" id="A1.T12.4.11.11.3.1" style="color:#FF0000;">list</span>(dp[curr_sum]):</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.12.12">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.12.12.1" style="padding:1pt 0.0pt;">Build-in Function</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.12.12.2" style="padding:1pt 0.0pt;">if <span class="ltx_text ltx_font_bold" id="A1.T12.4.12.12.2.1" style="color:#FF0000;">abs</span>(next_count + 1) ¿ 0:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.13.13">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.13.13.1" style="padding:1pt 0.0pt;">Instance Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.13.13.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.13.13.2.1" style="color:#FF0000;">self</span>.count = 0</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.14.14.1" rowspan="3" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.14.14.1.1">Control Statements</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.14.14.2" style="padding:1pt 0.0pt;">            If</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.14.14.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.14.14.3.1" style="color:#FF0000;">if</span> len(tokens) ¡ 4:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.15.15">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.15.15.1" style="padding:1pt 0.0pt;">          Else</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.15.15.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.15.15.2.1" style="color:#FF0000;">else</span>:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.16.16">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.16.16.1" style="padding:1pt 0.0pt;">          Elif</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.16.16.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.16.16.2.1" style="color:#FF0000;">elif</span> level == 0 and expression[i] == ’ ’:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.17.17.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.17.17.1.1">Loop Statements</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.17.17.2" style="padding:1pt 0.0pt;">           For</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.17.17.3" style="padding:1pt 0.0pt;">
<span class="ltx_text" id="A1.T12.4.17.17.3.1" style="color:#FF0000;">for</span> i in range(len(fronts)):</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.18.18">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.4.18.18.1" style="padding:1pt 0.0pt;">          While</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.18.18.2" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.18.18.2.1" style="color:#FF0000;">while</span> x != self.parent[x]:</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T12.4.19.19.1" rowspan="2" style="padding:1pt 0.0pt;"><span class="ltx_text" id="A1.T12.4.19.19.1.1">Others</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_l ltx_border_r" id="A1.T12.4.19.19.2" style="padding:1pt 0.0pt;">        Return</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.4.19.19.3" style="padding:1pt 0.0pt;">
<span class="ltx_text ltx_font_bold" id="A1.T12.4.19.19.3.1" style="color:#FF0000;">return</span> (merged[n // 2 - 1] + merged[n // 2]) / 2.0</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.20.20">
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_l ltx_border_r" id="A1.T12.4.20.20.1" style="padding:1pt 0.0pt;">Punctuation Mark</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T12.4.20.20.2" style="padding:1pt 0.0pt;">digit_sum = <span class="ltx_text ltx_font_bold" id="A1.T12.4.20.20.2.1" style="color:#FF0000;">(</span>l1.val if l1 else 0) + (l2.val if l2 else 0)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides examples of decision tokens identified by the AdaptiveStep method in the code generation domain.  Decision tokens represent points in the code where the model exhibits low confidence when generating the next token.  The table is categorized by syntactic elements (e.g., numbers, operators, control statements) to illustrate where AdaptiveStep tends to identify these critical breakpoints in the code generation process.
> <details>
> <summary>read the caption</summary>
> Table 12: Samples of decision tokens for code domain
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13943/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13943/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}