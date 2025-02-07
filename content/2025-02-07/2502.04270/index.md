---
title: "PILAF: Optimal Human Preference Sampling for Reward Modeling"
summary: "PILAF optimizes human feedback in reward modeling for better LLM alignment by using a novel response sampling strategy that aligns reward modeling with value optimization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 NYU",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04270 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunzhen Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04270" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04270" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04270/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods in Reinforcement Learning from Human Feedback (RLHF) for aligning Large Language Models (LLMs) with human values often rely on approximate reward models and inefficient data sampling. This leads to inconsistencies in guiding policy toward maximizing human values, and preference labeling is expensive.  The paper focuses on solving the challenge of effective data collection and use for human labeling in RLHF.



To address these issues, the paper proposes PILAF (Policy-Interpolated Learning for Aligned Feedback), a novel response sampling strategy. PILAF generates responses by interpolating between the current policy and a reference policy for balanced exploration and exploitation.  **Theoretically, PILAF aligns reward model optimization with value optimization, offering optimal performance from an optimization and statistical perspective.** Empirically, PILAF demonstrates strong performance in iterative and online RLHF settings, surpassing existing methods in terms of reward and efficiency, and reducing annotation and computation costs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PILAF is a novel response sampling strategy for preference labeling that improves reward model training in RLHF. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PILAF demonstrates strong performance in iterative and online RLHF settings, reducing annotation costs by over 40%. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PILAF is theoretically grounded, showing optimality from both optimization and statistical perspectives. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for RLHF researchers as **it introduces PILAF, a novel sampling method that significantly improves the efficiency and effectiveness of reward model training.**  This addresses a critical challenge in RLHF, where high-quality preference data is expensive and hard to obtain, impacting the overall performance of LLMs.  **PILAF's theoretical grounding and strong empirical results provide a valuable contribution** to the field, opening new avenues for research in sample-efficient reinforcement learning and model alignment.  It's particularly relevant given the growing interest in aligning LLMs with human values.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04270/x1.png)

> 🔼 This figure provides a high-level overview of the PILAF approach. Panel (a) illustrates a standard RLHF training loop, where the language model's policy is iteratively improved by collecting human preference data via pairwise comparisons.  The goal of the paper is to improve the sampling method used to obtain these preference comparisons. Panel (b) introduces the PILAF method, showing how it generates response pairs for comparison by interpolating between a reference policy (a pre-trained or well-understood model) and the current policy. This interpolation balances exploration (trying diverse responses) and exploitation (focusing on responses likely to be highly preferred). Panel (c) summarizes the theoretical analysis showing that PILAF's sampling strategy makes the collected data more informative and leads to faster convergence towards aligning the language model with human preferences.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our approach. (a) We consider a full RLHF training setup, where a language model (LM) policy is iteratively refined through active data collection. Our goal is to develop an optimal response sampling method for preference labeling. (b) We introduce PILAF, which generates responses by interpolating between the current policy and a reference policy, balancing exploration and exploitation. (c) Our theoretical analysis shows that T-PILAF aligns the parameter gradient with the steepest direction for maximizing human values and achieves more favorable convergence in regions of high sensitivity.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="id5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="id5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="id1.1.1.1">Yunzhen Feng<sup class="ltx_sup" id="id1.1.1.1.1">†</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="id2.2.2.2">Ariel Kwiatkowski<sup class="ltx_sup" id="id2.2.2.2.1">∗</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="id3.3.3.3">Kunhao Zheng<sup class="ltx_sup" id="id3.3.3.3.1">∗</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="id4.4.4.4">Julia Kempe<sup class="ltx_sup" id="id4.4.4.4.1">⋄</sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="id5.5.5.5">Yaqi Duan<sup class="ltx_sup" id="id5.5.5.5.1">⋄</sup>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id5.5.6.1">
<td class="ltx_td ltx_align_center" id="id5.5.6.1.1">NYU</td>
<td class="ltx_td ltx_align_center" id="id5.5.6.1.2">Meta FAIR</td>
<td class="ltx_td ltx_align_center" id="id5.5.6.1.3">Meta FAIR</td>
<td class="ltx_td ltx_align_center" id="id5.5.6.1.4">Meta FAIR &amp; NYU</td>
<td class="ltx_td ltx_align_center" id="id5.5.6.1.5">NYU</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the computational cost and annotation effort required for generating a single preference pair using different sampling methods.  It contrasts the standard vanilla approach, which samples two responses and requires two annotations, with methods such as best-of-N, which sample multiple responses but ultimately only uses two for labeling. The table highlights that PILAF, while having slightly higher sampling costs (3 forward passes compared to Vanilla's 2), requires fewer annotations (2, same as vanilla) and is therefore more efficient than other methods such as Best-of-N which can significantly increase the annotation cost.
> <details>
> <summary>read the caption</summary>
> Table 1:  A cost summary of PILAF and sampling methods from related works. Best-of-N method in Xiong et al. (2024) uses the oracle reward to score all candidate responses, then selects the highest- and lowest-scoring ones—instead of providing a preference label for only two responses. We restrict the oracle to providing only preference labels. Thus, we create a Best-of-N variant that uses the DPO internal reward for selection and then applies preference labeling, with an annotation cost of 2. We compare with this variant in the experiment.
> </details>





### In-depth insights


#### Optimal Sampling
Optimal sampling strategies in reinforcement learning from human feedback (RLHF) are crucial for efficient and effective model alignment.  The core challenge lies in **balancing exploration and exploitation** when querying human labelers for preferences.  **Uniform sampling**, while simple, often leads to inefficient data collection, failing to prioritize informative comparisons.  **Optimal sampling methods** aim to address this by strategically selecting pairs of model outputs to compare, focusing on areas where human preferences are most uncertain or where the model's performance is most sensitive. This targeted approach reduces the number of human evaluations needed, while simultaneously improving the quality of the resulting reward model.  **Theoretical analysis** often underpins these methods, demonstrating optimality through optimization or statistical perspectives.  Such analyses ensure that the sampling strategy effectively guides the model toward aligning with human values, reducing variance and increasing stability in the learning process. **Key considerations** include the computational cost of sampling and the trade-off between exploration and exploitation.  Effective optimal sampling leads to significant improvements in sample efficiency and reduced annotation costs in RLHF.

#### RLHF Alignment
Reinforcement Learning from Human Feedback (RLHF) aims to align large language models (LLMs) with human values.  **A core challenge is the inherent inaccessibility of true human preferences**, necessitating approximation through reward models learned from preference data.  RLHF alignment, therefore, focuses on effectively translating human feedback into a reward signal that guides the LLM toward desirable behavior.  This involves careful consideration of **data collection strategies (sampling methods)**, which directly impact the quality and informativeness of the learned reward model.  **Suboptimal sampling** can lead to misaligned gradients, hindering the LLM's progress toward true human alignment.   Effective RLHF alignment requires not only sophisticated reward modeling techniques but also a **principled approach to preference data generation** that balances exploration and exploitation while maximizing the utility of limited human annotation.  This highlights the interplay between theoretical analysis and practical implementation, demanding both strong theoretical grounding and efficient algorithms for response sampling.

#### Theoretical Analysis
A theoretical analysis section in a research paper would rigorously justify the proposed method's efficacy.  It would likely involve **mathematical proofs** demonstrating **optimality** or **convergence** properties. For example, it might show that the method's parameter updates converge to the optimal solution under specific conditions, or that it minimizes a well-defined loss function.  The analysis should address both **optimization** and **statistical** aspects: how efficiently the method approaches the optimum (optimization) and how reliable and precise its estimates are despite noise and limited data (statistical).  This section would ideally highlight the **theoretical guarantees** offered by the proposed method, emphasizing its advantages over existing approaches.  Finally, the theoretical analysis will clarify the key assumptions made and their impact on the results, offering a deeper understanding of the method's strengths and limitations.

#### DPO Experiments
In a hypothetical research paper section titled 'DPO Experiments', one would expect a thorough evaluation of Direct Preference Optimization (DPO) methods.  The experiments should involve a range of tasks and datasets to assess the performance of DPO against established RLHF techniques. Key aspects would include **comparing reward model accuracy**, **policy performance**, and **sample efficiency**. The experiments should meticulously control for variables such as dataset size, reward model complexity, and choice of optimization algorithm, to ensure robust and meaningful conclusions.  **A detailed analysis of results** should include statistical significance testing and error bars to validate findings.  Furthermore, ablation studies would be important for isolating the impact of different aspects of DPO on performance.  **The discussion section** would critically examine the results, highlighting limitations and providing insights into scenarios where DPO excels or falls short.  Overall, a well-structured 'DPO Experiments' section would establish a comprehensive understanding of DPO's strengths and weaknesses and guide future research directions.

#### Future of PILAF
The future of PILAF hinges on several key areas.  **Extending PILAF's applicability to other RLHF paradigms beyond DPO, such as PPO and KTO, is crucial**. This would broaden its impact and demonstrate its generalizability as a superior sampling method.  **Addressing the computational cost of PILAF, particularly for larger language models, is vital**. While PILAF demonstrates significant gains in efficiency, further optimizations are needed to make it truly scalable for industrial applications.  **Investigating PILAF's performance with real human feedback, instead of relying on proxy models**, would validate its effectiveness in real-world scenarios and strengthen its practical implications. Finally, **exploring theoretical extensions of PILAF to provide even stronger theoretical guarantees** and address potential limitations, such as sensitivity to the choice of reference policy, would further enhance its robustness and reliability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04270/x2.png)

> 🔼 This figure shows the reward and KL divergence during iterative Direct Preference Optimization (DPO).  All training runs begin from the same initial model, trained using vanilla sampling in the first iteration. Each point on the graph represents a model's performance after 50 training steps. The x-axis represents the KL divergence from a reference model, which measures how different the current policy is from a baseline. The y-axis represents the reward achieved by the model on a test set. The plot illustrates the learning trajectories of different sampling methods, including PILAF and various baseline methods, showcasing PILAF's superior performance in reaching higher reward values while maintaining a relatively low KL divergence.
> <details>
> <summary>read the caption</summary>
> Figure 2: Reward-KL curve for Iterative DPO. All training runs start from the same model obtained at the end of the first iteration via Vanilla Sampling. Each dot represents an evaluation performed every 50 training steps.
> </details>



![](https://arxiv.org/html/2502.04270/x3.png)

> 🔼 This figure shows the reward and KL divergence (relative to the reference model) during online DPO training.  Each point represents the model's performance after 50 gradient steps.  The plot illustrates how the reward and KL change as the policy is optimized, showcasing the learning progress and the model's closeness to the reference model. Different sampling methods can lead to different reward-KL tradeoffs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Reward-KL curve for Online DPO. Each dot represents an evaluation performed every 50 training steps.
> </details>



![](https://arxiv.org/html/2502.04270/x4.png)

> 🔼 This figure displays the results of an online direct preference optimization (DPO) experiment where the initial policy model is overfitted.  The x-axis shows the KL divergence between the current policy and a reference policy, illustrating the difference between the two policies. The y-axis represents the average reward obtained by the policy. Each point on the graph corresponds to an evaluation of the policy after 50 gradient steps of training. The color intensity of the points gradually darkens to visualize the training progression, with darker shades representing later steps in the training process.  This experiment aims to show the robustness of the PILAF method against an initially overfitted model, comparing its performance to standard Vanilla sampling.
> <details>
> <summary>read the caption</summary>
> Figure 4: Online DPO with an overfitted initial policy. Each dot represents an evaluation performed every 50 training steps. Color saturation indicates the training step, with darker colors representing later steps.
> </details>



![](https://arxiv.org/html/2502.04270/x5.png)

> 🔼 This figure displays the results of an online direct preference optimization (DPO) experiment where the initial policy model is overfitted.  The x-axis represents the KL divergence between the learned policy and a reference policy, while the y-axis shows the reward achieved by the learned policy.  Each point in the plot corresponds to an evaluation performed after every 50 training steps.  The color intensity of the points increases with the training step, providing a visual representation of the model's learning progression over time. This visualization allows comparison of the performance of different sampling methods when starting from a suboptimal initial policy.
> <details>
> <summary>read the caption</summary>
> Figure 5: Online DPO with an overfitted initial policy. Full results of the Figure 4. Each dot represents an evaluation performed every 50 training steps. Color saturation indicates the training step, with darker colors representing later steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.3.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.1.1.1"><math alttext="\vec{\boldsymbol{y}}\!\,^{a}" class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><msup id="S5.T1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.m1.1.1.cmml"><mover accent="true" id="S5.T1.1.1.1.m1.1.1.2" xref="S5.T1.1.1.1.m1.1.1.2.cmml"><mi id="S5.T1.1.1.1.m1.1.1.2.2" mathsize="70%" xref="S5.T1.1.1.1.m1.1.1.2.2.cmml">𝒚</mi><mo id="S5.T1.1.1.1.m1.1.1.2.1" mathsize="70%" stretchy="false" xref="S5.T1.1.1.1.m1.1.1.2.1.cmml">→</mo></mover><mi id="S5.T1.1.1.1.m1.1.1.3" mathsize="70%" xref="S5.T1.1.1.1.m1.1.1.3.cmml">a</mi></msup><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1">superscript</csymbol><apply id="S5.T1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.1.1.1.m1.1.1.2"><ci id="S5.T1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T1.1.1.1.m1.1.1.2.1">→</ci><ci id="S5.T1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T1.1.1.1.m1.1.1.2.2">𝒚</ci></apply><ci id="S5.T1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.1.1.1.m1.1.1.3">𝑎</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\vec{\boldsymbol{y}}\!\,^{a}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">over→ start_ARG bold_italic_y end_ARG start_POSTSUPERSCRIPT italic_a end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T1.2.2.2"><math alttext="\vec{\boldsymbol{y}}\!\,^{b}" class="ltx_Math" display="inline" id="S5.T1.2.2.2.m1.1"><semantics id="S5.T1.2.2.2.m1.1a"><msup id="S5.T1.2.2.2.m1.1.1" xref="S5.T1.2.2.2.m1.1.1.cmml"><mover accent="true" id="S5.T1.2.2.2.m1.1.1.2" xref="S5.T1.2.2.2.m1.1.1.2.cmml"><mi id="S5.T1.2.2.2.m1.1.1.2.2" mathsize="70%" xref="S5.T1.2.2.2.m1.1.1.2.2.cmml">𝒚</mi><mo id="S5.T1.2.2.2.m1.1.1.2.1" mathsize="70%" stretchy="false" xref="S5.T1.2.2.2.m1.1.1.2.1.cmml">→</mo></mover><mi id="S5.T1.2.2.2.m1.1.1.3" mathsize="70%" xref="S5.T1.2.2.2.m1.1.1.3.cmml">b</mi></msup><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.m1.1b"><apply id="S5.T1.2.2.2.m1.1.1.cmml" xref="S5.T1.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.2.2.2.m1.1.1.1.cmml" xref="S5.T1.2.2.2.m1.1.1">superscript</csymbol><apply id="S5.T1.2.2.2.m1.1.1.2.cmml" xref="S5.T1.2.2.2.m1.1.1.2"><ci id="S5.T1.2.2.2.m1.1.1.2.1.cmml" xref="S5.T1.2.2.2.m1.1.1.2.1">→</ci><ci id="S5.T1.2.2.2.m1.1.1.2.2.cmml" xref="S5.T1.2.2.2.m1.1.1.2.2">𝒚</ci></apply><ci id="S5.T1.2.2.2.m1.1.1.3.cmml" xref="S5.T1.2.2.2.m1.1.1.3">𝑏</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.m1.1c">\vec{\boldsymbol{y}}\!\,^{b}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.m1.1d">over→ start_ARG bold_italic_y end_ARG start_POSTSUPERSCRIPT italic_b end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.2.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.2.2.4.1" style="font-size:70%;">Sampling Cost</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.2.2.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.2.2.5.1" style="font-size:70%;">Annotation Cost</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.4.4.3">
<span class="ltx_text ltx_font_italic" id="S5.T1.4.4.3.1" style="font-size:70%;">Vanilla</span><span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.3.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.3.3.1" style="font-size:70%;">(</span>Rafailov et al.<span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.3.4.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.04270v1#bib.bib29" title="">2023</a><span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.3.5.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.1"><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.3.3.1.m1.1"><semantics id="S5.T1.3.3.1.m1.1a"><msub id="S5.T1.3.3.1.m1.1.1" xref="S5.T1.3.3.1.m1.1.1.cmml"><mi id="S5.T1.3.3.1.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.3.3.1.m1.1.1.2.cmml">π</mi><mi id="S5.T1.3.3.1.m1.1.1.3" mathsize="70%" xref="S5.T1.3.3.1.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.1.m1.1b"><apply id="S5.T1.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.3.3.1.m1.1.1.1.cmml" xref="S5.T1.3.3.1.m1.1.1">subscript</csymbol><ci id="S5.T1.3.3.1.m1.1.1.2.cmml" xref="S5.T1.3.3.1.m1.1.1.2">π</ci><ci id="S5.T1.3.3.1.m1.1.1.3.cmml" xref="S5.T1.3.3.1.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.1.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.1.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.4.2"><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.4.4.2.m1.1"><semantics id="S5.T1.4.4.2.m1.1a"><msub id="S5.T1.4.4.2.m1.1.1" xref="S5.T1.4.4.2.m1.1.1.cmml"><mi id="S5.T1.4.4.2.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.4.4.2.m1.1.1.2.cmml">π</mi><mi id="S5.T1.4.4.2.m1.1.1.3" mathsize="70%" xref="S5.T1.4.4.2.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.2.m1.1b"><apply id="S5.T1.4.4.2.m1.1.1.cmml" xref="S5.T1.4.4.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.4.4.2.m1.1.1.1.cmml" xref="S5.T1.4.4.2.m1.1.1">subscript</csymbol><ci id="S5.T1.4.4.2.m1.1.1.2.cmml" xref="S5.T1.4.4.2.m1.1.1.2">π</ci><ci id="S5.T1.4.4.2.m1.1.1.3.cmml" xref="S5.T1.4.4.2.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.2.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.2.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.4.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.4.4.5.1" style="font-size:70%;">2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.6.6.3">
<span class="ltx_text ltx_font_italic" id="S5.T1.6.6.3.1" style="font-size:70%;">Best-of-N</span><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.3.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.3.3.1" style="font-size:70%;">(</span>Xiong et al.<span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.3.4.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.04270v1#bib.bib38" title="">2024</a><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.3.5.3" style="font-size:70%;">)</span></cite><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.3.6" style="font-size:70%;">, N=8</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.5.5.1.1" style="font-size:70%;">best of </span><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.5.5.1.m1.1"><semantics id="S5.T1.5.5.1.m1.1a"><msub id="S5.T1.5.5.1.m1.1.1" xref="S5.T1.5.5.1.m1.1.1.cmml"><mi id="S5.T1.5.5.1.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.5.5.1.m1.1.1.2.cmml">π</mi><mi id="S5.T1.5.5.1.m1.1.1.3" mathsize="70%" xref="S5.T1.5.5.1.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.1.m1.1b"><apply id="S5.T1.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.5.5.1.m1.1.1.1.cmml" xref="S5.T1.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T1.5.5.1.m1.1.1.2.cmml" xref="S5.T1.5.5.1.m1.1.1.2">π</ci><ci id="S5.T1.5.5.1.m1.1.1.3.cmml" xref="S5.T1.5.5.1.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.1.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.1.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.6.6.2">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.2.1" style="font-size:70%;">worst of </span><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.6.6.2.m1.1"><semantics id="S5.T1.6.6.2.m1.1a"><msub id="S5.T1.6.6.2.m1.1.1" xref="S5.T1.6.6.2.m1.1.1.cmml"><mi id="S5.T1.6.6.2.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.6.6.2.m1.1.1.2.cmml">π</mi><mi id="S5.T1.6.6.2.m1.1.1.3" mathsize="70%" xref="S5.T1.6.6.2.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.2.m1.1b"><apply id="S5.T1.6.6.2.m1.1.1.cmml" xref="S5.T1.6.6.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.6.6.2.m1.1.1.1.cmml" xref="S5.T1.6.6.2.m1.1.1">subscript</csymbol><ci id="S5.T1.6.6.2.m1.1.1.2.cmml" xref="S5.T1.6.6.2.m1.1.1.2">π</ci><ci id="S5.T1.6.6.2.m1.1.1.3.cmml" xref="S5.T1.6.6.2.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.2.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.2.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.4.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.6.6.5.1" style="font-size:70%;">8*</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.8.8.3">
<span class="ltx_text ltx_font_italic" id="S5.T1.8.8.3.1" style="font-size:70%;">Best-of-N</span><span class="ltx_text ltx_font_smallcaps" id="S5.T1.8.8.3.2" style="font-size:70%;"> (with DPO reward), N=8</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.7.1.1" style="font-size:70%;">best of </span><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.7.7.1.m1.1"><semantics id="S5.T1.7.7.1.m1.1a"><msub id="S5.T1.7.7.1.m1.1.1" xref="S5.T1.7.7.1.m1.1.1.cmml"><mi id="S5.T1.7.7.1.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.7.7.1.m1.1.1.2.cmml">π</mi><mi id="S5.T1.7.7.1.m1.1.1.3" mathsize="70%" xref="S5.T1.7.7.1.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.1.m1.1b"><apply id="S5.T1.7.7.1.m1.1.1.cmml" xref="S5.T1.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.7.7.1.m1.1.1.1.cmml" xref="S5.T1.7.7.1.m1.1.1">subscript</csymbol><ci id="S5.T1.7.7.1.m1.1.1.2.cmml" xref="S5.T1.7.7.1.m1.1.1.2">π</ci><ci id="S5.T1.7.7.1.m1.1.1.3.cmml" xref="S5.T1.7.7.1.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.1.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.1.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.8.8.2">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.8.8.2.1" style="font-size:70%;">worst of </span><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.8.8.2.m1.1"><semantics id="S5.T1.8.8.2.m1.1a"><msub id="S5.T1.8.8.2.m1.1.1" xref="S5.T1.8.8.2.m1.1.1.cmml"><mi id="S5.T1.8.8.2.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.8.8.2.m1.1.1.2.cmml">π</mi><mi id="S5.T1.8.8.2.m1.1.1.3" mathsize="70%" xref="S5.T1.8.8.2.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.2.m1.1b"><apply id="S5.T1.8.8.2.m1.1.1.cmml" xref="S5.T1.8.8.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.8.8.2.m1.1.1.1.cmml" xref="S5.T1.8.8.2.m1.1.1">subscript</csymbol><ci id="S5.T1.8.8.2.m1.1.1.2.cmml" xref="S5.T1.8.8.2.m1.1.1.2">π</ci><ci id="S5.T1.8.8.2.m1.1.1.3.cmml" xref="S5.T1.8.8.2.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.2.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.2.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.8.8.4.1" style="font-size:70%;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.8.8.5.1" style="font-size:70%;">2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.10.10.3">
<span class="ltx_text ltx_font_italic" id="S5.T1.10.10.3.1" style="font-size:70%;">Hybrid</span><span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.3.2" style="font-size:70%;"> </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.3.3.1" style="font-size:70%;">(</span>Xie et al.<span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.3.4.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.04270v1#bib.bib37" title="">2024</a><span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.3.5.3" style="font-size:70%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.1"><math alttext="\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.9.9.1.m1.1"><semantics id="S5.T1.9.9.1.m1.1a"><msub id="S5.T1.9.9.1.m1.1.1" xref="S5.T1.9.9.1.m1.1.1.cmml"><mi id="S5.T1.9.9.1.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.9.9.1.m1.1.1.2.cmml">π</mi><mi id="S5.T1.9.9.1.m1.1.1.3" mathsize="70%" xref="S5.T1.9.9.1.m1.1.1.3.cmml">θ</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.9.9.1.m1.1b"><apply id="S5.T1.9.9.1.m1.1.1.cmml" xref="S5.T1.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.9.9.1.m1.1.1.1.cmml" xref="S5.T1.9.9.1.m1.1.1">subscript</csymbol><ci id="S5.T1.9.9.1.m1.1.1.2.cmml" xref="S5.T1.9.9.1.m1.1.1.2">π</ci><ci id="S5.T1.9.9.1.m1.1.1.3.cmml" xref="S5.T1.9.9.1.m1.1.1.3">𝜃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.9.1.m1.1c">\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.9.1.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.10.10.2"><math alttext="\uppi_{{\rm ref}}" class="ltx_Math" display="inline" id="S5.T1.10.10.2.m1.1"><semantics id="S5.T1.10.10.2.m1.1a"><msub id="S5.T1.10.10.2.m1.1.1" xref="S5.T1.10.10.2.m1.1.1.cmml"><mi id="S5.T1.10.10.2.m1.1.1.2" mathsize="70%" mathvariant="normal" xref="S5.T1.10.10.2.m1.1.1.2.cmml">π</mi><mi id="S5.T1.10.10.2.m1.1.1.3" mathsize="70%" xref="S5.T1.10.10.2.m1.1.1.3.cmml">ref</mi></msub><annotation-xml encoding="MathML-Content" id="S5.T1.10.10.2.m1.1b"><apply id="S5.T1.10.10.2.m1.1.1.cmml" xref="S5.T1.10.10.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.10.10.2.m1.1.1.1.cmml" xref="S5.T1.10.10.2.m1.1.1">subscript</csymbol><ci id="S5.T1.10.10.2.m1.1.1.2.cmml" xref="S5.T1.10.10.2.m1.1.1.2">π</ci><ci id="S5.T1.10.10.2.m1.1.1.3.cmml" xref="S5.T1.10.10.2.m1.1.1.3">ref</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.10.2.m1.1c">\uppi_{{\rm ref}}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.10.2.m1.1d">roman_π start_POSTSUBSCRIPT roman_ref end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.4.1" style="font-size:70%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.10.10.5.1" style="font-size:70%;">2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.12.12.3">
<span class="ltx_text ltx_font_italic" id="S5.T1.12.12.3.1" style="font-size:70%;">PILAF</span><span class="ltx_text ltx_font_smallcaps" id="S5.T1.12.12.3.2" style="font-size:70%;"> (OURS)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.11.11.1"><math alttext="\uppi_{\theta}^{+}/\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.11.11.1.m1.1"><semantics id="S5.T1.11.11.1.m1.1a"><mrow id="S5.T1.11.11.1.m1.1.1" xref="S5.T1.11.11.1.m1.1.1.cmml"><msubsup id="S5.T1.11.11.1.m1.1.1.2" xref="S5.T1.11.11.1.m1.1.1.2.cmml"><mi id="S5.T1.11.11.1.m1.1.1.2.2.2" mathsize="70%" mathvariant="normal" xref="S5.T1.11.11.1.m1.1.1.2.2.2.cmml">π</mi><mi id="S5.T1.11.11.1.m1.1.1.2.2.3" mathsize="70%" xref="S5.T1.11.11.1.m1.1.1.2.2.3.cmml">θ</mi><mo id="S5.T1.11.11.1.m1.1.1.2.3" mathsize="70%" xref="S5.T1.11.11.1.m1.1.1.2.3.cmml">+</mo></msubsup><mo id="S5.T1.11.11.1.m1.1.1.1" maxsize="70%" minsize="70%" stretchy="true" symmetric="true" xref="S5.T1.11.11.1.m1.1.1.1.cmml">/</mo><msub id="S5.T1.11.11.1.m1.1.1.3" xref="S5.T1.11.11.1.m1.1.1.3.cmml"><mi id="S5.T1.11.11.1.m1.1.1.3.2" mathsize="70%" mathvariant="normal" xref="S5.T1.11.11.1.m1.1.1.3.2.cmml">π</mi><mi id="S5.T1.11.11.1.m1.1.1.3.3" mathsize="70%" xref="S5.T1.11.11.1.m1.1.1.3.3.cmml">θ</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.11.11.1.m1.1b"><apply id="S5.T1.11.11.1.m1.1.1.cmml" xref="S5.T1.11.11.1.m1.1.1"><divide id="S5.T1.11.11.1.m1.1.1.1.cmml" xref="S5.T1.11.11.1.m1.1.1.1"></divide><apply id="S5.T1.11.11.1.m1.1.1.2.cmml" xref="S5.T1.11.11.1.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T1.11.11.1.m1.1.1.2.1.cmml" xref="S5.T1.11.11.1.m1.1.1.2">superscript</csymbol><apply id="S5.T1.11.11.1.m1.1.1.2.2.cmml" xref="S5.T1.11.11.1.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T1.11.11.1.m1.1.1.2.2.1.cmml" xref="S5.T1.11.11.1.m1.1.1.2">subscript</csymbol><ci id="S5.T1.11.11.1.m1.1.1.2.2.2.cmml" xref="S5.T1.11.11.1.m1.1.1.2.2.2">π</ci><ci id="S5.T1.11.11.1.m1.1.1.2.2.3.cmml" xref="S5.T1.11.11.1.m1.1.1.2.2.3">𝜃</ci></apply><plus id="S5.T1.11.11.1.m1.1.1.2.3.cmml" xref="S5.T1.11.11.1.m1.1.1.2.3"></plus></apply><apply id="S5.T1.11.11.1.m1.1.1.3.cmml" xref="S5.T1.11.11.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T1.11.11.1.m1.1.1.3.1.cmml" xref="S5.T1.11.11.1.m1.1.1.3">subscript</csymbol><ci id="S5.T1.11.11.1.m1.1.1.3.2.cmml" xref="S5.T1.11.11.1.m1.1.1.3.2">π</ci><ci id="S5.T1.11.11.1.m1.1.1.3.3.cmml" xref="S5.T1.11.11.1.m1.1.1.3.3">𝜃</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.11.1.m1.1c">\uppi_{\theta}^{+}/\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.11.1.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT start_POSTSUPERSCRIPT + end_POSTSUPERSCRIPT / roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.12.12.2"><math alttext="\uppi_{\theta}^{-}/\uppi_{\theta}" class="ltx_Math" display="inline" id="S5.T1.12.12.2.m1.1"><semantics id="S5.T1.12.12.2.m1.1a"><mrow id="S5.T1.12.12.2.m1.1.1" xref="S5.T1.12.12.2.m1.1.1.cmml"><msubsup id="S5.T1.12.12.2.m1.1.1.2" xref="S5.T1.12.12.2.m1.1.1.2.cmml"><mi id="S5.T1.12.12.2.m1.1.1.2.2.2" mathsize="70%" mathvariant="normal" xref="S5.T1.12.12.2.m1.1.1.2.2.2.cmml">π</mi><mi id="S5.T1.12.12.2.m1.1.1.2.2.3" mathsize="70%" xref="S5.T1.12.12.2.m1.1.1.2.2.3.cmml">θ</mi><mo id="S5.T1.12.12.2.m1.1.1.2.3" mathsize="70%" xref="S5.T1.12.12.2.m1.1.1.2.3.cmml">−</mo></msubsup><mo id="S5.T1.12.12.2.m1.1.1.1" maxsize="70%" minsize="70%" stretchy="true" symmetric="true" xref="S5.T1.12.12.2.m1.1.1.1.cmml">/</mo><msub id="S5.T1.12.12.2.m1.1.1.3" xref="S5.T1.12.12.2.m1.1.1.3.cmml"><mi id="S5.T1.12.12.2.m1.1.1.3.2" mathsize="70%" mathvariant="normal" xref="S5.T1.12.12.2.m1.1.1.3.2.cmml">π</mi><mi id="S5.T1.12.12.2.m1.1.1.3.3" mathsize="70%" xref="S5.T1.12.12.2.m1.1.1.3.3.cmml">θ</mi></msub></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.12.12.2.m1.1b"><apply id="S5.T1.12.12.2.m1.1.1.cmml" xref="S5.T1.12.12.2.m1.1.1"><divide id="S5.T1.12.12.2.m1.1.1.1.cmml" xref="S5.T1.12.12.2.m1.1.1.1"></divide><apply id="S5.T1.12.12.2.m1.1.1.2.cmml" xref="S5.T1.12.12.2.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T1.12.12.2.m1.1.1.2.1.cmml" xref="S5.T1.12.12.2.m1.1.1.2">superscript</csymbol><apply id="S5.T1.12.12.2.m1.1.1.2.2.cmml" xref="S5.T1.12.12.2.m1.1.1.2"><csymbol cd="ambiguous" id="S5.T1.12.12.2.m1.1.1.2.2.1.cmml" xref="S5.T1.12.12.2.m1.1.1.2">subscript</csymbol><ci id="S5.T1.12.12.2.m1.1.1.2.2.2.cmml" xref="S5.T1.12.12.2.m1.1.1.2.2.2">π</ci><ci id="S5.T1.12.12.2.m1.1.1.2.2.3.cmml" xref="S5.T1.12.12.2.m1.1.1.2.2.3">𝜃</ci></apply><minus id="S5.T1.12.12.2.m1.1.1.2.3.cmml" xref="S5.T1.12.12.2.m1.1.1.2.3"></minus></apply><apply id="S5.T1.12.12.2.m1.1.1.3.cmml" xref="S5.T1.12.12.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T1.12.12.2.m1.1.1.3.1.cmml" xref="S5.T1.12.12.2.m1.1.1.3">subscript</csymbol><ci id="S5.T1.12.12.2.m1.1.1.3.2.cmml" xref="S5.T1.12.12.2.m1.1.1.3.2">π</ci><ci id="S5.T1.12.12.2.m1.1.1.3.3.cmml" xref="S5.T1.12.12.2.m1.1.1.3.3">𝜃</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.12.2.m1.1c">\uppi_{\theta}^{-}/\uppi_{\theta}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.12.2.m1.1d">roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT start_POSTSUPERSCRIPT - end_POSTSUPERSCRIPT / roman_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.12.12.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.12.12.4.1" style="font-size:70%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.12.12.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.12.12.5.1" style="font-size:70%;">2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of the iterative Direct Preference Optimization (DPO) experiments.  Three key metrics are reported for each of four different sampling methods: Vanilla, Best-of-N, Hybrid, and PILAF.  The average reward achieved by the language model on a held-out test set is shown. Lower KL divergence indicates better alignment of the learned policy with the reference policy. Finally, the objective function J (combining reward and KL divergence) reflects the overall performance.  Higher values for reward and J indicate better performance, whereas lower KL divergence indicates better alignment.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of Iterative DPO. We report the average reward, KL divergence from the reference model, and objective J𝐽Jitalic_J on the testset. Higher reward and J𝐽Jitalic_J are better, while lower KL divergence is better. We use boldface to indicate the best result and underline to denote the second-best result.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.8.4.5"><span class="ltx_text ltx_font_bold" id="S6.T2.8.4.5.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.5.1.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T2.5.1.1.1" style="font-size:90%;">Reward (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.5.1.1.m1.1"><semantics id="S6.T2.5.1.1.m1.1a"><mo id="S6.T2.5.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.5.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.5.1.1.m1.1b"><ci id="S6.T2.5.1.1.m1.1.1.cmml" xref="S6.T2.5.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.5.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.5.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S6.T2.5.1.1.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.6.2.2">
<span class="ltx_text ltx_font_smallcaps" id="S6.T2.6.2.2.1" style="font-size:90%;">KL (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T2.6.2.2.m1.1"><semantics id="S6.T2.6.2.2.m1.1a"><mo id="S6.T2.6.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.6.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T2.6.2.2.m1.1b"><ci id="S6.T2.6.2.2.m1.1.1.cmml" xref="S6.T2.6.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.6.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.6.2.2.m1.1d">↓</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S6.T2.6.2.2.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.8.4.4">
<math alttext="J" class="ltx_Math" display="inline" id="S6.T2.7.3.3.m1.1"><semantics id="S6.T2.7.3.3.m1.1a"><mi id="S6.T2.7.3.3.m1.1.1" mathsize="90%" xref="S6.T2.7.3.3.m1.1.1.cmml">J</mi><annotation-xml encoding="MathML-Content" id="S6.T2.7.3.3.m1.1b"><ci id="S6.T2.7.3.3.m1.1.1.cmml" xref="S6.T2.7.3.3.m1.1.1">𝐽</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.7.3.3.m1.1c">J</annotation><annotation encoding="application/x-llamapun" id="S6.T2.7.3.3.m1.1d">italic_J</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.4.4.1" style="font-size:90%;"> (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.8.4.4.m2.1"><semantics id="S6.T2.8.4.4.m2.1a"><mo id="S6.T2.8.4.4.m2.1.1" mathsize="90%" stretchy="false" xref="S6.T2.8.4.4.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.8.4.4.m2.1b"><ci id="S6.T2.8.4.4.m2.1.1.cmml" xref="S6.T2.8.4.4.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.8.4.4.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.8.4.4.m2.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.4.4.2" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.8.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.8.5.1.1"><span class="ltx_text ltx_font_italic" id="S6.T2.8.5.1.1.1" style="font-size:90%;">Vanilla</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.8.5.1.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.5.1.2.1" style="font-size:90%;">-10.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.8.5.1.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.5.1.3.1" style="font-size:90%;">35.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.8.5.1.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.5.1.4.1" style="font-size:90%;">-13.68</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.8.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.8.6.2.1"><span class="ltx_text ltx_font_italic" id="S6.T2.8.6.2.1.1" style="font-size:90%;">Best-of-N</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.8.6.2.2"><span class="ltx_text ltx_font_smallcaps ltx_framed ltx_framed_underline" id="S6.T2.8.6.2.2.1" style="font-size:90%;">-10.13</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.8.6.2.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.6.2.3.1" style="font-size:90%;">32.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.8.6.2.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.6.2.4.1" style="font-size:90%;">-13.37</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.8.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.8.7.3.1"><span class="ltx_text ltx_font_italic" id="S6.T2.8.7.3.1.1" style="font-size:90%;">Hybrid</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.8.7.3.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.7.3.2.1" style="font-size:90%;">-10.51</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.8.7.3.3"><span class="ltx_text ltx_font_bold" id="S6.T2.8.7.3.3.1" style="font-size:90%;">22.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.8.7.3.4"><span class="ltx_text ltx_font_smallcaps ltx_framed ltx_framed_underline" id="S6.T2.8.7.3.4.1" style="font-size:90%;">-12.80</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.8.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S6.T2.8.8.4.1">
<span class="ltx_text ltx_font_italic" id="S6.T2.8.8.4.1.1" style="font-size:90%;">PILAF</span><span class="ltx_text ltx_font_smallcaps" id="S6.T2.8.8.4.1.2" style="font-size:90%;"> (Ours)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.8.8.4.2"><span class="ltx_text ltx_font_bold" id="S6.T2.8.8.4.2.1" style="font-size:90%;">-9.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.8.8.4.3"><span class="ltx_text ltx_font_smallcaps ltx_framed ltx_framed_underline" id="S6.T2.8.8.4.3.1" style="font-size:90%;">25.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T2.8.8.4.4"><span class="ltx_text ltx_font_bold" id="S6.T2.8.8.4.4.1" style="font-size:90%;">-12.30</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Online Direct Preference Optimization (DPO) experiments.  It shows a comparison of different sampling methods (Vanilla, Best-of-N, Hybrid, and PILAF) across three key metrics: the average reward achieved by the trained language model (higher is better), the KL divergence from the reference model (lower is better, indicating closer alignment), and the overall objective function J (higher is better, combining reward and regularization). The results are calculated on a held-out test set.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of Online DPO. We report the average reward, KL divergence from the reference model, and objective J𝐽Jitalic_J on the testset.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04270/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04270/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}