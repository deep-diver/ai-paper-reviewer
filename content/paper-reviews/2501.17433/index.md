---
title: "Virus: Harmful Fine-tuning Attack for Large Language Models Bypassing Guardrail Moderation"
summary: "Virus: A new attack method easily bypasses LLM guardrails, highlighting the inadequacy of current safety measures and urging for more robust solutions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Georgia Institute of Technology",]
showSummary: true
date: 2025-01-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.17433 {{< /keyword >}}
{{< keyword icon="writer" >}} Tiansheng Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.17433" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.17433" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.17433/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are increasingly used in various applications, but their vulnerability to harmful fine-tuning attacks poses significant safety concerns.  These attacks involve modifying an LLM by training it on a small set of malicious data, causing it to generate unsafe or biased outputs.  To mitigate this risk, many services employ 'guardrail moderation' systems that filter out harmful data before fine-tuning.  However, current research shows that these guardrails are often ineffective.

This paper introduces a new attack method called "Virus" that successfully bypasses these guardrail systems.  Virus cleverly modifies harmful data to make it undetectable by the filter while still effectively compromising the safety of the LLM.  The researchers demonstrate that Virus achieves a 100% leakage rate (meaning all modified harmful data passes the filter), and that it significantly degrades the LLM's safety performance.  **The key finding is that relying solely on guardrail moderation for LLM safety is insufficient and reckless.**  The paper's contributions include a novel attack methodology, empirical evidence of the guardrail's vulnerabilities, and a deeper understanding of the limitations of current safety techniques.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LLM guardrail moderation methods are insufficient to prevent harmful fine-tuning attacks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The 'Virus' attack method effectively circumvents these guardrails by subtly modifying harmful data, achieving a 100% leakage rate. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} This research emphasizes the need for more robust safety mechanisms in LLM development and deployment, moving beyond reliance on easily bypassed guardrails. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it reveals a critical vulnerability in the widely adopted fine-tuning-as-a-service paradigm for large language models (LLMs)**.  By demonstrating how easily the guardrail moderation system can be bypassed, **it highlights the inherent safety risks associated with current LLM development and deployment practices**. This necessitates a reevaluation of current security measures and prompts research into more robust safety mechanisms.

------
#### Visual Insights



![](https://arxiv.org/html/2501.17433/extracted/6163167/pic/virus.png)

> 🔼 The figure illustrates a three-stage pipeline for a harmful fine-tuning attack against a large language model (LLM).  Stage 1 shows the initial safety alignment of the LLM using alignment data. Stage 2 depicts the guardrail moderation process, where the service provider filters out harmful samples from the uploaded fine-tuning data.  Stage 3 shows the fine-tuning of the aligned LLM with the filtered data. The 'Virus' attack focuses on creating a user dataset that bypasses the guardrail and compromises the LLM's safety alignment.
> <details>
> <summary>read the caption</summary>
> Figure 1: A three stage pipeline for harmful fine-tuning attack under guardrail moderation. i) At the first stage, the model is safety aligned with alignment data. ii) At the second stage, the service provider applies guardrail moderation to filter out the harmful samples over the uploaded fine-tuning data. iii) At the third stage, the filtered data is used for fine-tuning the aligned LLM. Our attack Virus is concerning how to construct the user dataset that can bypass the guardrail and break the victim LLM’s safety alignment.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Metrics\Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">BFA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">HFA w/o moderation</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Leakage ratio</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">100%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.3" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.1.1.2.1.3.1" style="background-color:#FFBFBF;">38%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">100%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful score</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">55.80</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of benign and harmful fine-tuning attacks on a language model, both with and without guardrail moderation.  It shows the leakage ratio (percentage of harmful samples that bypass the guardrail), and the resulting harmful score (a measure of how harmful the model's outputs become after fine-tuning).  The metrics help assess the effectiveness of guardrail moderation in mitigating harmful fine-tuning attacks.
> <details>
> <summary>read the caption</summary>
> Table 1: Attack performance of benign/harmful fine-tuning attack. Attack methods are under guardrail moderation unless specified.
> </details>





### In-depth insights


#### Guardrail Jailbreak
The concept of "Guardrail Jailbreak" in the context of large language model (LLM) safety is a crucial aspect of the research.  It highlights a critical vulnerability: **the limitations of relying solely on moderation guardrails to prevent harmful fine-tuning**. The guardrail, designed to filter harmful data before it's used to train the LLM, is not foolproof.  A successful jailbreak demonstrates that carefully crafted, subtly harmful data can bypass these filters, leading to a model that's less safe than intended. This has significant implications, because it suggests that **purely relying on data filtration as a safety mechanism is insufficient**. The research likely explores methods to create these adversarial examples that evade detection, providing insight into the sophistication of attacks.  Furthermore, it underscores the importance of **developing more robust safety mechanisms** that go beyond simple data filtering, perhaps by focusing on model architecture, training methodology, or post-training mitigation strategies.  The effectiveness of a guardrail jailbreak also speaks to the need for **ongoing adversarial testing and improvement** of these safety systems, mimicking real-world attack attempts.  Understanding how these jailbreaks work is paramount in enhancing LLM security and building more trustworthy and responsible AI systems.

#### Dual-Goal Optimization
The concept of "Dual-Goal Optimization" in the context of adversarial attacks against Large Language Models (LLMs) is a significant advancement in the field.  It addresses the limitations of previous methods that either focused solely on bypassing moderation filters or solely on maximizing the harmful impact of fine-tuned models. **The core innovation lies in simultaneously optimizing for two objectives:** 1) **evading detection by the guardrail moderation system** and 2) **maintaining or improving the model's ability to generate harmful outputs.** This dual-pronged approach is critical because a successful attack needs to pass both hurdles—an attack that easily gets detected will not cause significant harm. The dual-goal optimization cleverly uses a weighted combination of two loss functions, allowing the system to strike a balance between invisibility and potency.  **This approach significantly improves the efficacy of the attacks**, demonstrating a higher degree of success in compromising the safety of the LLM.  However, the introduction of the hyperparameter (lambda) raises questions about the robustness of the method and its susceptibility to fine-tuning; further research is required to explore optimal parameter settings and generalizability across various LLMs and datasets.

#### Virus Attack Method
The "Virus" attack method, as described in the research paper, represents a novel and effective approach to circumventing guardrail moderation in large language model (LLM) fine-tuning.  **Its core innovation lies in a dual-objective data optimization strategy.**  This isn't simply about injecting harmful data; it's about carefully crafting that data to meet two crucial goals simultaneously.  First, the harmful data must be subtly modified to avoid detection by the guardrail's moderation system. Second, even after passing this filter, the data must still be effective at undermining the LLM's safety alignment. The use of a dual-objective optimization algorithm is pivotal here, balancing the need to bypass the guardrail with maintaining a harmful gradient that can effectively corrupt the model's learned safety parameters.  The research highlights the limitations of relying solely on guardrail moderation as a defense against harmful fine-tuning attacks, emphasizing the inherent vulnerability of pre-trained LLMs and the potential for sophisticated adversarial techniques to exploit them. The **Virus method's success rate, achieving up to 100% leakage ratio in experiments**, underscores this vulnerability and underscores the need for more robust LLM safety mechanisms beyond simple data filtering.

#### Gradient Mismatch
The concept of "Gradient Mismatch" in the context of the research paper highlights a critical challenge in adversarial attacks against machine learning models, specifically those employing guardrail moderation.  The authors posit that simply optimizing harmful data to bypass the guardrail (achieving a high "leakage ratio") isn't sufficient to effectively compromise the model's safety alignment.  **A successful attack requires not only evading detection but also ensuring that the gradients of the optimized harmful data remain similar to the gradients of truly harmful data.** This similarity is crucial because the model's fine-tuning process relies on gradient updates. If the gradients differ significantly, the model may not learn harmful behavior, even if the harmful data itself passes moderation. Therefore, **the "Gradient Mismatch" refers to the discrepancy between the gradients of the optimized adversarial data and those of genuinely harmful data.** This mismatch renders the attack less effective, despite successfully bypassing the guardrail.  The paper introduces "Virus", a dual-objective optimization method that addresses this problem by simultaneously optimizing for both guardrail evasion and gradient similarity, achieving superior attack performance compared to single-objective methods.

#### Future Research
Future research should **prioritize developing more robust guardrail systems** that are less susceptible to adversarial attacks like Virus.  This involves exploring advanced techniques in natural language understanding to better distinguish subtle manipulations in harmful data.  **Investigating alternative data sanitization methods** beyond simple filtering is crucial. This could involve techniques like data augmentation or adversarial training for the guardrails themselves.  A deeper understanding of the **interaction between guardrail models and the underlying LLM architecture** is needed. This understanding could lead to design improvements that make the models more resistant to manipulation at the data level. Finally, research should focus on developing more effective **post-fine-tuning safety mechanisms** to mitigate the impact of successful attacks, potentially including techniques to detect and reverse the effects of harmful fine-tuning on the model's outputs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.17433/extracted/6163167/pic/HS_FS_hr.png)

> 🔼 This figure shows the impact of different harmful data ratios on the harmful score and fine-tuning accuracy of a language model.  A harmful ratio of 0% (BFA, Benign Fine-tuning Attack) represents a baseline where only benign data is used for fine-tuning.  Increasing the harmful ratio (HFA, Harmful Fine-tuning Attack) introduces more harmful data, leading to a higher harmful score (indicating the model's tendency to produce harmful outputs) and potentially lower fine-tuning accuracy (although in this instance, accuracy remains largely unaffected). The figure also demonstrates the effectiveness of the guardrail moderation system by showing that a significant portion of harmful data is filtered out (average leakage ratio of 0.348), mitigating the negative impact on the model's safety alignment. However, the key takeaway is that even with the guardrail,  a non-negligible fraction of harmful data still leaks through and compromises the model's safety.
> <details>
> <summary>read the caption</summary>
> Figure 2: Harmful score and Fine-tune accuracy under different harmful ratio. HFA refers to harmful fine-tuning attack with a harmful ratio of harmful data. BFA refers to benign fine-tuning attack with pure GSM8K data. BF is a special case when harmful ratio=0 for HF. The average leakage ratio (ratio of leak-through harmful data) of HF w/ moderation is 0.348. All the data in BFA an leak through the moderation.
> </details>



![](https://arxiv.org/html/2501.17433/extracted/6163167/pic/example_figure.png)

> 🔼 Figure 3 illustrates four different fine-tuning attack methods. (a) shows a benign fine-tuning attack where only benign question-answer pairs are used. This serves as a baseline for comparison. (b) shows a harmful fine-tuning attack where only harmful question-answer pairs are used, demonstrating the vulnerability of LLMs to such attacks.  (c) demonstrates the 'Mixing Attack', which attempts to bypass guardrail moderation by concatenating benign and harmful question-answer pairs.  However, this method proves ineffective. (d) Finally, the figure illustrates the 'Virus' attack, which successfully bypasses the guardrail. This is achieved by concatenating a benign and a harmful question-answer pair, but this time, the harmful part is optimized using a novel method that considers two objectives: 1) bypassing the guardrail's moderation and 2) maintaining effective attack performance. This dual optimization ensures that the malicious data evades detection while retaining its capability to degrade the safety alignment of the victim LLM.  The figure visually represents the differences in data construction and moderation outcomes for each of the four approaches.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example illustration of different fine-tuning attack techniques. a) For benign fine-tuning attack, benign QA pair is uploaded for fine-tuning. b) For harmful fine-tuning attack, only harmful samples are uploaded. c) For Mixing attack, a benign QA is concatenated with a harmful QA in order to circumvent guardrail, which unfortunately does not succeed. d) For Virus, the benign QA is concated with a harmful QA and the harmful QA is optimized with the dual goals: i) To bypass moderation. ii) To guarantee attack performance.
> </details>



![](https://arxiv.org/html/2501.17433/extracted/6163167/pic/statistic.png)

> 🔼 This figure visualizes the impact of the hyperparameter λ (lambda) in the Virus algorithm on two key metrics: harmful loss and gradient similarity.  The x-axis represents the number of fine-tuning steps, while the y-axis shows the harmful loss and gradient similarity. Multiple lines are plotted, each corresponding to a different value of λ.  The lines demonstrate how the harmful loss and the gradient similarity change as the optimization process proceeds with different values of λ. When λ is 0, Virus prioritizes gradient similarity, resulting in a decrease in harmful loss. As λ increases, the focus shifts toward guardrail jailbreak, leading to higher harmful loss.  The case where λ = 1 represents a failed attempt (guardrail jailbreak) where only the jailbreak goal was pursued.
> <details>
> <summary>read the caption</summary>
> Figure 4: Stepping over the data optimized by Virus with different λ𝜆\lambdaitalic_λ, harmful loss and gradient similarity across fine-tuning rounds are displayed. When λ=1𝜆1\lambda=1italic_λ = 1, the method reduces to one of our failure attempt named guardrail jailbreak.
> </details>



![](https://arxiv.org/html/2501.17433/extracted/6163167/pic/onehot.png)

> 🔼 The figure illustrates how a sequence of tokens is represented as a flattened one-hot vector.  The vocabulary size is 6, meaning there are 6 unique tokens.  The number of optimizable tokens (n) is 3. Each token's position in the sequence is represented by a segment of the flattened vector.  Each segment is a one-hot encoding where only one bit is set to 1 (representing the selected token) and the rest are 0s. This representation is used because it allows easy manipulation and optimization of the tokens during the data optimization process of the proposed attack.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of flattened one-hot vector.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Metrics\Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing w/o moderation</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Leakage ratio</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">38%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.3" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.3.1" style="background-color:#FFBFBF;">44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">100%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful score</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">35.30</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of harmful fine-tuning attacks (HFA) and a novel mixing attack strategy, both evaluated under the presence and absence of guardrail moderation.  The comparison focuses on two key metrics: the leakage ratio (percentage of harmful samples that bypass the moderation filter) and the harmful score (a measure of how effectively the fine-tuned model generates harmful outputs).  The data illustrates the effectiveness of guardrail moderation in mitigating harmful fine-tuning and the relative performance of the mixing attack in comparison to standard HFA.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of HFA/Mixing. Attack methods are under guardrail moderation unless specified.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Metrics \Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Guardrail Jailbreak</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Gradient similarity</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.4" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.1.2.1.4.1" style="background-color:#FFBFBF;">0.826</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Leakage ratio</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">38%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">44%</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4" style="background-color:#BFFF00;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.1.1.3.2.4.1" style="background-color:#BFFF00;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.1.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful score</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">14.10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the effectiveness of a guardrail jailbreak attack method. The experiment compares three approaches: a standard harmful fine-tuning attack (HFA), a mixing attack that combines benign and harmful data, and a proposed guardrail jailbreak method.  The table reports on three metrics: gradient similarity (measuring how closely the optimized harmful data's gradient resembles that of the original mixing data), leakage ratio (percentage of harmful data that bypasses the guardrail), and harmful score (measure of how effectively the attack compromises the model's safety alignment).  All attacks are performed under guardrail moderation, except where explicitly noted. Cosine similarity is used to quantify the resemblance between gradients.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation of guardrail jailbreak design. Attack methods are under guardrail moderation unless specified. We use cosine similarity to measure the similarity between the gradient of the optimizable data and the original mixing data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Metrics\Methods</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Guardrail Jailbreak</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Only <math alttext="F_{2}" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><msub id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.1.m1.1.1.2.cmml">F</mi><mn id="S4.T4.1.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.1.m1.1.1.2">𝐹</ci><cn id="S4.T4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.1.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">F_{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">italic_F start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Virus</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<td class="ltx_td" id="S4.T4.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">(Only <math alttext="F_{1}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><msub id="S4.T4.2.2.2.1.m1.1.1" xref="S4.T4.2.2.2.1.m1.1.1.cmml"><mi id="S4.T4.2.2.2.1.m1.1.1.2" xref="S4.T4.2.2.2.1.m1.1.1.2.cmml">F</mi><mn id="S4.T4.2.2.2.1.m1.1.1.3" xref="S4.T4.2.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><apply id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.2.2.2.1.m1.1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T4.2.2.2.1.m1.1.1.2.cmml" xref="S4.T4.2.2.2.1.m1.1.1.2">𝐹</ci><cn id="S4.T4.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T4.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">F_{1}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">italic_F start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td" id="S4.T4.2.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T4.2.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.2.2.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Grad similarity</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.3" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.2.2.3.1.3.1" style="background-color:#FFBFBF;">0.826</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.5" style="background-color:#BFFF00;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1.5.1" style="background-color:#BFFF00;">0.981</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.2.2.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Leakage ratio</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.2" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.2.2.4.2.2.1" style="background-color:#FFBFBF;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">100%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.4" style="background-color:#FFBFBF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.2.2.4.2.4.1" style="background-color:#FFBFBF;">44%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.5" style="background-color:#BFFF00;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.2.5.1" style="background-color:#BFFF00;">100%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.2.2.5.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful score</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.5.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.5.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">14.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.5.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">14.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.5.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.5.3.5.1">30.40</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of the performance of different attack methods, specifically focusing on the Virus method, under the constraint of guardrail moderation.  The table highlights key metrics: leakage ratio (the percentage of harmful data that bypasses the guardrail), and harmful score (a measure of the attack's success in compromising the safety of the language model). Gradient similarity, calculated using cosine similarity, measures the resemblance between the gradients of the optimized harmful data produced by the Virus method and the original mixing data.  This similarity metric helps assess the effectiveness of the optimization process.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of Virus design. Attack methods are under guardrail moderation unless specified. We use cosine similarity to measure the similarity between the gradient of the optimizable data and the original mixing data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.5.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T5.5.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T5.5.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Finetune Accuracy</th>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T5.5.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.05</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.15</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.5.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">Average</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.05</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.15</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">p=0.2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.5.1.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">BFA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.1.3.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.8.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.9.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.10.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.11.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.12.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.1.3.1.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.3.1.13.1">32.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.1.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">9.30</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">20.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">26.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.1.4.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">15.30</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">27.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">27.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">29.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">29.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">29.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.4.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">28.66</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.1.5.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">3.30</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">8.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">16.30</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">21.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.1.5.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">12.82</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">31.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">30.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">30.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.11" style="padding-left:3.0pt;padding-right:3.0pt;">28.90</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.12" style="padding-left:3.0pt;padding-right:3.0pt;">30.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.1.5.3.13" style="padding-left:3.0pt;padding-right:3.0pt;">30.12</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.1.6.4" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.5.1.6.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.1.1" style="background-color:#D9D9D9;">Virus</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.2.1" style="background-color:#D9D9D9;">5.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.3.1" style="background-color:#D9D9D9;">15.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.4.1" style="background-color:#D9D9D9;">31.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.5.1" style="background-color:#D9D9D9;">33.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.6.1" style="background-color:#D9D9D9;">48.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.5.1.6.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.1.6.4.7.1" style="background-color:#D9D9D9;">26.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.8.1" style="background-color:#D9D9D9;">29.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.9.1" style="background-color:#D9D9D9;">29.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.10.1" style="background-color:#D9D9D9;">30.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.11.1" style="background-color:#D9D9D9;">29.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.12.1" style="background-color:#D9D9D9;">30.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.1.6.4.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T5.5.1.6.4.13.1" style="background-color:#D9D9D9;">29.84</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different attack methods' effectiveness against a guardrail moderation system at varying harmful data ratios.  The methods compared include Benign Fine-tuning Attack (BFA), Harmful Fine-tuning Attack (HFA), Mixing attack, and the proposed Virus attack.  For each method, the harmful score and fine-tuning accuracy are measured across different percentages of harmful training data (p).  BFA results remain constant because the harmful data ratio does not affect its implementation. The table helps quantify the impact of harmful data on model safety and the effectiveness of each attack in bypassing the guardrail.
> <details>
> <summary>read the caption</summary>
> Table 5:  Evaluation of different attack methods under guardrail moderation and different harmful ratio p𝑝pitalic_p. All the statistic of BFA for this table are the same because harmful ratio p𝑝pitalic_p does not affect its implementation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.3.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T6.3.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S4.T6.3.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Finetune Accuracy</th>
</tr>
<tr class="ltx_tr" id="S4.T6.3.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T6.3.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">n=100</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">n=200</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">n=500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">n=800</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">n=1000</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.3.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">Average</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">n=100</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">n=200</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">n=500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.11" style="padding-left:3.0pt;padding-right:3.0pt;">n=800</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">n=1000</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.1.2.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">Average</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.3.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.3.1.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">BFA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">2.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">2.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">4.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">5.60</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.3.1.3.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">3.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">22.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">26.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.3.1.10.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.11" style="padding-left:3.0pt;padding-right:3.0pt;">31.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.3.1.12.1">36.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.1.3.1.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.3.1.13.1">29.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.3.1.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">3.10</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">5.60</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">24.70</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">31.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.3.1.4.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">16.56</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">22.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">27.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.10" style="padding-left:3.0pt;padding-right:3.0pt;">29.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.4.2.11.1">32.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.12" style="padding-left:3.0pt;padding-right:3.0pt;">33.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.4.2.13" style="padding-left:3.0pt;padding-right:3.0pt;">28.86</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T6.3.1.5.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">3.80</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">5.30</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">21.70</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">25.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.3.1.5.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">14.14</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.5.3.8.1">24.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">24.30</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.10" style="padding-left:3.0pt;padding-right:3.0pt;">30.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.11" style="padding-left:3.0pt;padding-right:3.0pt;">31.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.12" style="padding-left:3.0pt;padding-right:3.0pt;">33.80</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.1.5.3.13" style="padding-left:3.0pt;padding-right:3.0pt;">28.76</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.1.6.4" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T6.3.1.6.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.1.1" style="background-color:#D9D9D9;">Virus</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.2.1" style="background-color:#D9D9D9;">6.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.3.1" style="background-color:#D9D9D9;">12.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.4.1" style="background-color:#D9D9D9;">31.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.5.1" style="background-color:#D9D9D9;">39.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.6.1" style="background-color:#D9D9D9;">42.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.3.1.6.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.7.1" style="background-color:#D9D9D9;">26.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.8.1" style="background-color:#D9D9D9;">21.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.4.9.1" style="background-color:#D9D9D9;">27.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.10.1" style="background-color:#D9D9D9;">30.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.11" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.11.1" style="background-color:#D9D9D9;">32.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.12" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.12.1" style="background-color:#D9D9D9;">34.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.1.6.4.13" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T6.3.1.6.4.13.1" style="background-color:#D9D9D9;">29.44</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different attack methods (BFA, HFA, Mixing, Virus) on a large language model (LLM) under guardrail moderation. The experiment is conducted with varying numbers of fine-tuning samples (n) to assess the effectiveness of each attack in compromising the safety alignment of the model. The metrics used for evaluation include the harmful score (measuring the LLM's tendency to generate harmful responses) and finetune accuracy (measuring the accuracy on the downstream task). This allows for an understanding of how the number of fine-tuning samples and different attack strategies impact the LLM's safety alignment and its performance on the intended task.
> <details>
> <summary>read the caption</summary>
> Table 6:  Evaluation of different attack methods under guardrail moderation and different number of fine-tune sample n𝑛nitalic_n.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T7.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T7.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T7.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">SST2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T7.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">AgNews</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T7.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T7.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Average</th>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S5.T7.1.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T7.1.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">HS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T7.1.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">FA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T7.1.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">HS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T7.1.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">FA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T7.1.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">HS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T7.1.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">FA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T7.1.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">HS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T7.1.1.2.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">FA</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.1.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T7.1.1.3.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">BFA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.3.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">2.20</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.1.3.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1.3.1">93.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.3.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">1.30</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.1.3.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">79.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.3.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">4.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.1.3.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1.7.1">32.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.3.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">2.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.3.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1.9.1">68.33</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T7.1.1.4.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">HFA</th>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">13.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.4.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">92.78</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">13.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.4.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">54.00</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">17.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.4.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">29.00</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">14.97</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.2.9" style="padding-left:3.0pt;padding-right:3.0pt;">58.59</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T7.1.1.5.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mixing</th>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">9.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.5.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.5.3.3.1">93.69</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">6.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.5.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.5.3.5.1">79.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">14.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.1.5.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">30.00</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">10.10</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.5.3.9" style="padding-left:3.0pt;padding-right:3.0pt;">67.70</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T7.1.1.6.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Virus</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.6.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.4.2.1">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.1.1.6.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">93.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.6.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.4.4.1">21.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.1.1.6.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">75.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.6.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.4.6.1">31.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.1.1.6.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">30.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.6.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.4.8.1">25.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.6.4.9" style="padding-left:3.0pt;padding-right:3.0pt;">66.38</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different attack methods (BFA, HFA, Mixing, Virus) on the safety alignment of a large language model (LLM) under guardrail moderation.  The comparison is conducted across three different downstream fine-tuning tasks (SST2, AGNews, GSM8K).  The metrics used are harmful score and fine-tuning accuracy, reflecting the effectiveness of each attack method in compromising the model's safety and its impact on its performance on benign tasks.  It demonstrates the relative success of each method in bypassing the safety mechanisms and degrading the model's ability to produce safe responses.
> <details>
> <summary>read the caption</summary>
> Table 7:  Evaluation of different attack methods under guardrail moderation and different fine-tuning tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T8.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T8.4.4.5.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Methods</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T8.4.4.5.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Clocktime</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T8.4.4.5.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">GPU Memory</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T8.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">Only <math alttext="F_{1}" class="ltx_Math" display="inline" id="S5.T8.1.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.1.m1.1a"><msub id="S5.T8.1.1.1.1.m1.1.1" xref="S5.T8.1.1.1.1.m1.1.1.cmml"><mi id="S5.T8.1.1.1.1.m1.1.1.2" xref="S5.T8.1.1.1.1.m1.1.1.2.cmml">F</mi><mn id="S5.T8.1.1.1.1.m1.1.1.3" xref="S5.T8.1.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.1.m1.1b"><apply id="S5.T8.1.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T8.1.1.1.1.m1.1.1.1.cmml" xref="S5.T8.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T8.1.1.1.1.m1.1.1.2.cmml" xref="S5.T8.1.1.1.1.m1.1.1.2">𝐹</ci><cn id="S5.T8.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T8.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.1.m1.1c">F_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.1.m1.1d">italic_F start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\lambda" class="ltx_Math" display="inline" id="S5.T8.2.2.2.2.m2.1"><semantics id="S5.T8.2.2.2.2.m2.1a"><mi id="S5.T8.2.2.2.2.m2.1.1" xref="S5.T8.2.2.2.2.m2.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.2.m2.1b"><ci id="S5.T8.2.2.2.2.m2.1.1.cmml" xref="S5.T8.2.2.2.2.m2.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.2.m2.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.2.m2.1d">italic_λ</annotation></semantics></math>=1)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.0828h</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">34.37GB</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.4.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">Only <math alttext="F_{2}" class="ltx_Math" display="inline" id="S5.T8.3.3.3.1.m1.1"><semantics id="S5.T8.3.3.3.1.m1.1a"><msub id="S5.T8.3.3.3.1.m1.1.1" xref="S5.T8.3.3.3.1.m1.1.1.cmml"><mi id="S5.T8.3.3.3.1.m1.1.1.2" xref="S5.T8.3.3.3.1.m1.1.1.2.cmml">F</mi><mn id="S5.T8.3.3.3.1.m1.1.1.3" xref="S5.T8.3.3.3.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.1.m1.1b"><apply id="S5.T8.3.3.3.1.m1.1.1.cmml" xref="S5.T8.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T8.3.3.3.1.m1.1.1.1.cmml" xref="S5.T8.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S5.T8.3.3.3.1.m1.1.1.2.cmml" xref="S5.T8.3.3.3.1.m1.1.1.2">𝐹</ci><cn id="S5.T8.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S5.T8.3.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.1.m1.1c">F_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.1.m1.1d">italic_F start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\lambda" class="ltx_Math" display="inline" id="S5.T8.4.4.4.2.m2.1"><semantics id="S5.T8.4.4.4.2.m2.1a"><mi id="S5.T8.4.4.4.2.m2.1.1" xref="S5.T8.4.4.4.2.m2.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S5.T8.4.4.4.2.m2.1b"><ci id="S5.T8.4.4.4.2.m2.1.1.cmml" xref="S5.T8.4.4.4.2.m2.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.4.4.4.2.m2.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S5.T8.4.4.4.2.m2.1d">italic_λ</annotation></semantics></math>=0)</th>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.2036h</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">36.62GB</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T8.4.4.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Virus</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T8.4.4.6.1.2.1" style="color:#FF0000;">0.2649h</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">39.68GB</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the computational resource requirements for running the Virus attack algorithm on an NVIDIA H100 GPU.  It details the GPU clock time (in hours) and GPU memory usage (in GB) needed to generate the adversarial examples.  The table compares resource usage for three scenarios: Virus (the full dual-objective optimization method), only F1 (guardrail jailbreak, optimizing only for bypassing the guardrail), and only F2 (gradient matching, optimizing only for gradient similarity). This allows for an assessment of the computational cost-effectiveness of the different components of the Virus attack.
> <details>
> <summary>read the caption</summary>
> Table 8:  System evaluation for Virus on an H100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T9.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T9.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T9.3.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\lambda" class="ltx_Math" display="inline" id="S5.T9.3.1.1.1.m1.1"><semantics id="S5.T9.3.1.1.1.m1.1a"><mi id="S5.T9.3.1.1.1.m1.1.1" xref="S5.T9.3.1.1.1.m1.1.1.cmml">λ</mi><annotation-xml encoding="MathML-Content" id="S5.T9.3.1.1.1.m1.1b"><ci id="S5.T9.3.1.1.1.m1.1.1.cmml" xref="S5.T9.3.1.1.1.m1.1.1">𝜆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.3.1.1.1.m1.1c">\lambda</annotation><annotation encoding="application/x-llamapun" id="S5.T9.3.1.1.1.m1.1d">italic_λ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.01</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.05</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T9.3.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T9.3.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Gradient similarity</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.3.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.2.1.2.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.3.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.9972</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.3.1.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.9840</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.3.1.2.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.9805</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.3.1.2.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.8264</td>
</tr>
<tr class="ltx_tr" id="S5.T9.3.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T9.3.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Leakage ratio</th>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">44%</td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">66%</td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.3.2.4.1">100%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.3.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.3.2.5.1">100%</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.3.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.3.2.6.1">100%</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.3.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T9.3.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Harmful score</th>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">14.00</td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">21.90</td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">30.40</td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.4.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.4.3.5.1">31.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.3.1.4.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">14.10</td>
</tr>
<tr class="ltx_tr" id="S5.T9.3.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T9.3.1.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Finetune accuracy</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.3.1.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.3.1.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T9.3.1.5.4.3.1">30.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.3.1.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">29.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.3.1.5.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">30.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.3.1.5.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">27.10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the effect of different values for the hyperparameter lambda (λ) on the performance of the Virus attack.  The hyperparameter λ controls the tradeoff between two objectives: minimizing the loss for jailbreaking the guardrail and maximizing the gradient similarity between the optimized data and the original harmful data. The table shows how different values of λ affect gradient similarity, leakage ratio (percentage of harmful data that bypasses the guardrail), harmful score (a measure of the attack's success in compromising the model's safety), and downstream task accuracy.
> <details>
> <summary>read the caption</summary>
> Table 9:  The impact of tradeoff hyper-parameter λ𝜆\lambdaitalic_λ.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.17433/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17433/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}