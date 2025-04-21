---
title: "Efficient Process Reward Model Training via Active Learning"
summary: "ACTPRM: Actively learns to train process reward models, slashing annotation costs while boosting performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Active Learning", "🏢 National University of Singapore",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10559 {{< /keyword >}}
{{< keyword icon="writer" >}} Keyu Duan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10559" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10559" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10559/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Process Reward Models(PRMs) provide step-level supervision to LLMs. Scaling up training data annotation is challenging because it's expensive to obtain fine-grained step-level annotations from the process. Prior methods need human experts to label or leverage LLMs to detect errors, but remains costly due to the heavy reliance on manual annotation or the requirement of massive rollouts for accurate estimation. It needs a high-capability reasoning model and computational costs.



This paper proposes an active learning approach, ACTPRM, to address the limitations. ACTPRM proactively selects the most uncertain samples for training, substantially reducing labeling costs. During training, it estimates uncertainty after the forward pass and retains only highly uncertain data for labeling. Experimental results show that ACTPRM reduces 50% annotation. It advances actively trained PRM by filtering over 1M+ math reasoning trajectories with ACTPRM, retaining 60% of the data and achieving state-of-the-art(SOTA) PRM performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ACTPRM significantly reduces annotation costs by strategically selecting uncertain samples for labeling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The ensemble-based uncertainty estimation effectively identifies informative reasoning steps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ACTPRM achieves state-of-the-art performance on ProcessBench and PRMBench benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel active learning approach to train process reward models, significantly reducing annotation costs while achieving state-of-the-art performance. It's important for researchers working on aligning LLMs, reinforcement learning, and mathematical reasoning, offering a practical solution to improve training efficiency and model accuracy. This work reduces the annotation cost to 20% of the previous SOTA method, **enabling the field of process reward model research to be more accessible and efficient**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10559/x1.png)

> 🔼 This figure illustrates the trade-off between model performance and annotation cost in training Process Reward Models (PRMs) on the ProcessBench dataset.  The x-axis represents the estimated annotation cost (in generated tokens), reflecting the amount of human effort required for data labeling. The y-axis shows the average F1 score, a metric evaluating the model's accuracy.  The figure compares ACTPRM (the proposed active learning approach) against several state-of-the-art (SOTA) PRM models.  ACTPRM demonstrates superior performance compared to the other models, achieving a similar or even better F1 score while requiring only 20% of the annotation costs.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Average F1 score on ProcessBench (Zheng et al., 2024) versus estimated annotation cost. ActPRM outperforms prior SOTA models while requiring merely 20% of the annotation costs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.7.7">
<tr class="ltx_tr" id="S5.T1.7.7.8">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.7.7.8.1"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.7.8.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.2.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.7.8.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.3.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.7.8.4">
<span class="ltx_text" id="S5.T1.7.7.8.4.1"></span><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.4.2"> <span class="ltx_text" id="S5.T1.7.7.8.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.7.7.8.4.2.1.1">
<span class="ltx_tr" id="S5.T1.7.7.8.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.7.7.8.4.2.1.1.1.1">Olympiad</span></span>
<span class="ltx_tr" id="S5.T1.7.7.8.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.7.7.8.4.2.1.1.2.1">Bench</span></span>
</span></span><span class="ltx_text" id="S5.T1.7.7.8.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.7.8.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.5.1">OmniMath</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.7.7.8.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.8.6.1">Average F1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.9">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T1.7.7.9.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T1.7.7.9.1.1">LLM-as-judge</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.1.1">o1-Mini<sup class="ltx_sup" id="S5.T1.1.1.1.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.2">0.932</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.3">0.889</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.4">0.872</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.5">0.824</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.6">0.879</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.10">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.10.1">
<span class="ltx_text" id="S5.T1.7.7.10.1.1"></span><span class="ltx_text" id="S5.T1.7.7.10.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.7.7.10.1.2.1">
<span class="ltx_tr" id="S5.T1.7.7.10.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S5.T1.7.7.10.1.2.1.1.1">Deepseek-R1-Distill-32B</span></span>
</span></span><span class="ltx_text" id="S5.T1.7.7.10.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.10.2">0.817</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.10.3">0.739</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.10.4">0.659</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.10.5">0.585</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.10.6">0.700</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.11">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.11.1">QwQ-32B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.11.2">0.871</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.11.3">0.834</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.11.4">0.787</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.11.5">0.771</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.11.6">0.816</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T1.7.7.12.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T1.7.7.12.1.1">Process Reward Models (72B)</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<td class="ltx_td ltx_align_left" id="S5.T1.2.2.2.1">Qwen2.5-Math-PRM-72B<sup class="ltx_sup" id="S5.T1.2.2.2.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.2">0.873</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.3">0.806</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.4">0.743</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.5">0.711</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.6">0.783</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.13">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T1.7.7.13.1"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T1.7.7.13.1.1">Process Reward Models (7B+)</em></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<td class="ltx_td ltx_align_left" id="S5.T1.3.3.3.1">Math-Shepherd-PRM-7B<sup class="ltx_sup" id="S5.T1.3.3.3.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.2">0.479</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.3">0.295</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.4">0.248</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.5">0.238</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.6">0.315</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_left" id="S5.T1.4.4.4.1">Qwen2.5-Math-7B-Math-Shepherd<sup class="ltx_sup" id="S5.T1.4.4.4.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.2">0.625</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.3">0.316</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.4">0.137</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.5">0.077</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.6">0.289</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5.5">
<td class="ltx_td ltx_align_left" id="S5.T1.5.5.5.1">EurusPRM-Stage2<sup class="ltx_sup" id="S5.T1.5.5.5.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.2">0.473</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.3">0.357</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.4">0.212</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.5">0.209</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.6">0.313</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.T1.6.6.6.1">Qwen2.5-Math-7B-PRM800K<sup class="ltx_sup" id="S5.T1.6.6.6.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.2">0.683</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.3">0.626</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.4">0.507</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.5">0.443</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.6">0.565</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.14">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.14.1">
<span class="ltx_text" id="S5.T1.7.7.14.1.1"></span><span class="ltx_text" id="S5.T1.7.7.14.1.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.7.7.14.1.2.1">
<span class="ltx_tr" id="S5.T1.7.7.14.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S5.T1.7.7.14.1.2.1.1.1">Ensemble-PRM-PRM800K (ours)</span></span>
</span></span><span class="ltx_text" id="S5.T1.7.7.14.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.14.2">0.705</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.14.3">0.630</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.14.4">0.472</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.14.5">0.433</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.14.6">0.560</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.15">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.15.1">PURE-PRM-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.15.2">0.690</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.15.3">0.665</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.15.4">0.484</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.15.5">0.459</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.15.6">0.575</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.7">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.7.1">Qwen2.5-Math-PRM-7B<sup class="ltx_sup" id="S5.T1.7.7.7.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.2">0.824</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.3">0.776</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.4">0.675</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.5">0.663</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.6">0.735</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.16">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.16.1">Universal-PRM</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.16.2"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.16.2.1">0.858</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.16.3">0.777</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.16.4">0.676</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.16.5">0.664</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.16.6">0.743</td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.17.1">
<span class="ltx_ERROR undefined" id="S5.T1.7.7.17.1.1">\hdashline</span>
<span class="ltx_text" id="S5.T1.7.7.17.1.2" style="background-color:#E6E6E6;">
<span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.7.17.1.2.1">ActPRM</span> (ours)</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.17.2"><span class="ltx_text" id="S5.T1.7.7.17.2.1" style="background-color:#E6E6E6;">0.816</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.17.3"><span class="ltx_text" id="S5.T1.7.7.17.3.1" style="background-color:#E6E6E6;">0.798</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.17.4"><span class="ltx_text" id="S5.T1.7.7.17.4.1" style="background-color:#E6E6E6;">0.714</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.17.5"><span class="ltx_text" id="S5.T1.7.7.17.5.1" style="background-color:#E6E6E6;">0.670</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.17.6"><span class="ltx_text" id="S5.T1.7.7.17.6.1" style="background-color:#E6E6E6;">0.750</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.18" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.7.7.18.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.7.7.18.1.1" style="background-color:#E6E6E6;">ActPRM-X<span class="ltx_text ltx_font_upright" id="S5.T1.7.7.18.1.1.1"> (ours)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.18.2"><span class="ltx_text" id="S5.T1.7.7.18.2.1" style="background-color:#E6E6E6;">0.827</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.18.3"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.18.3.1" style="background-color:#E6E6E6;">0.820</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.18.4"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.18.4.1" style="background-color:#E6E6E6;">0.720</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.18.5"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.18.5.1" style="background-color:#E6E6E6;">0.673</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.7.7.18.6"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.18.6.1" style="background-color:#E6E6E6;">0.760</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of various models on the ProcessBench benchmark.  The models are categorized into LLMs (Large Language Models) and Process Reward Models (PRMs), with further subcategories indicating model size or specific training techniques.  Performance is measured using the F1 score, calculated using the same method as in the ProcessBench evaluation. A symbol (⋄) is used to mark results that were taken from a separate publication by Zhang et al. (2025), providing context for data not directly obtained by the authors of this current paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on ProcessBench. We report the results in the same calculation method with ProcessBench. ⋄ denotes the results are from Qwen PRM’s report (Zhang et al., 2025).
> </details>





### In-depth insights


#### Active PRM Learn
**Active PRM Learning** signifies a strategic approach to training Process Reward Models (PRMs) by intelligently selecting the most informative data for annotation. This contrasts with traditional methods that rely on annotating entire datasets, which can be prohibitively expensive. By focusing on uncertain or ambiguous data points, active learning minimizes annotation costs while maintaining or even improving PRM performance. The core idea revolves around **uncertainty estimation**, where the PRM itself is used to identify data points where its predictions are least confident. These uncertain instances are then prioritized for annotation, allowing the PRM to learn most efficiently from the most challenging examples. This iterative process can significantly reduce the annotation burden, making PRM training more scalable and practical for large datasets and complex reasoning tasks.

#### Uncertainty Focus
**Uncertainty** is a central theme in active learning, where the goal is to strategically select the most informative data for annotation. This helps to train effective models with minimal labeling effort. The concept of uncertainty can be decomposed into **aleatoric** (data inherent noise) and **epistemic** (model's lack of knowledge). Accurately quantifying and utilizing uncertainty is crucial for effective active learning. It is essential to **strike a balance** between exploiting regions of high uncertainty and exploring potentially novel areas. A robust and well-calibrated uncertainty estimation approach is vital for achieving optimal performance in active learning scenarios, particularly when dealing with complex and high-dimensional data. It also contributes to **reliability**.

#### Low-Cost SOTA
The pursuit of "Low-Cost SOTA" signifies a pivotal shift in AI research, prioritizing efficiency without sacrificing state-of-the-art performance. This approach is crucial for democratizing access to advanced AI, enabling wider adoption by resource-constrained entities. Achieving **high performance with minimal resources** demands innovative strategies. This often involves techniques like active learning, where the most informative data points are strategically selected for training, significantly reducing annotation costs. It includes model compression and efficient architectures, such as knowledge distillation, and **prioritizes resource-aware design choices** throughout the development pipeline. The pursuit is not merely about cost reduction; it is about **sustainable and scalable AI**, ensuring that advancements benefit a broader audience.

#### Ensemble Heads
**Ensemble heads** are a vital technique for enhancing model performance and robustness. This approach, often implemented with shared backbones to reduce costs, involves training multiple 'heads' on top of a core model. The diversity among heads, achieved through methods like random initialization and diversity regularization, is key to epistemic uncertainty estimation. The variance in predictions across these heads helps identify uncertain data points, enabling more informed decision-making and efficient training. Balancing the number of heads with computational overhead is important, with diminishing returns often observed beyond a certain point. Their use significantly contributes to more reliable and accurate predictions in various applications.

#### Math Reasoning+
While the text doesn't explicitly have a section titled "Math Reasoning+", I can infer its presence from context, math reasoning appears as a critical aspect. The paper deeply investigates how effectively **PRMs can pinpoint errors in the chain-of-thought process** within mathematical problem-solving. The study likely explores diverse datasets and models to assess PRMs in **identifying incorrect steps in complex mathematical solutions**. It shows how PRMs can offer more detailed supervision than outcome-based methods. The section probably presents metrics and comparisons to display the efficiency gains of PRMs. It also highlights the capacity to boost math reasoning and performance, particularly in large language models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10559/x5.png)

> 🔼 Figure 2 presents a comparison of ActPRM's performance against random data selection for process reward model training.  Subfigure (a) shows that ActPRM matches full data training performance while using only half the annotation budget. The semi-transparent points illustrate results from a grid search across various uncertainty thresholds (δp⁢r⁢e⁢d and δs⁢t⁢d). The highlighted line shows results using specific thresholds (δp⁢r⁢e⁢d = 0.95 and δs⁢t⁢d = 0.005). Subfigure (b) shows an ablation study comparing different uncertainty estimation strategies, while (c) presents an ablation study on the effect of varying the number of ensemble PRM heads on the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Comparison of the average F1 score on ProcessBench between ActPRM and random selection, plotted against the normalized budget positively correlated the number of labeled data instances consumed. The semi-transparent points represent all results in grid searching w.r.t. δp⁢r⁢e⁢dsubscript𝛿𝑝𝑟𝑒𝑑\delta_{pred}italic_δ start_POSTSUBSCRIPT italic_p italic_r italic_e italic_d end_POSTSUBSCRIPT and δs⁢t⁢dsubscript𝛿𝑠𝑡𝑑\delta_{std}italic_δ start_POSTSUBSCRIPT italic_s italic_t italic_d end_POSTSUBSCRIPT. For the highlighted ActPRM curve in the figure, δp⁢r⁢e⁢d=0.95subscript𝛿𝑝𝑟𝑒𝑑0.95\delta_{pred}=0.95italic_δ start_POSTSUBSCRIPT italic_p italic_r italic_e italic_d end_POSTSUBSCRIPT = 0.95 and δs⁢t⁢d=0.005subscript𝛿𝑠𝑡𝑑0.005\delta_{std}=0.005italic_δ start_POSTSUBSCRIPT italic_s italic_t italic_d end_POSTSUBSCRIPT = 0.005. (b) Ablation: uncertainty estimation strategies. (c) Ablation: number of ensemble PRM heads.
> </details>



![](https://arxiv.org/html/2504.10559/x6.png)

> 🔼 Figure 3 compares the estimated annotation costs (in terms of generated tokens) of ActPRM with three other methods: Ensemble Prompting (Tan et al., 2025), MathShepherd (Wang et al., 2024), and Consensus Filtering (Zhang et al., 2025).  It visually represents the significant cost reduction achieved by ActPRM. The bar chart shows that ActPRM requires substantially fewer generated tokens compared to the other methods, highlighting its efficiency in reducing annotation costs for training Process Reward Models (PRMs).
> <details>
> <summary>read the caption</summary>
> Figure 3: Estimated annotation costs (generated tokens) comparison between ActPRM and popular methods, including Ensemble Prompting (Tan et al., 2025), MathShepherd (Wang et al., 2024) and Consensus Filtering (Zhang et al., 2025).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.1.1">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">#</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1">Simlicity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.4.1">Soundness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.5.1">Sensitivity</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.6.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.2">
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.2.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S5.T2.1.1.2.2"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T2.1.1.2.2.1">LLM-as-judge</em></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.3.1">1</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.3.2">Gemini-2.0-thinking-exp-1219</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.3">0.662</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.4">0.718</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.5">0.753</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.6">0.688</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.4.1">1</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.4.2">o1-mini</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.3">0.646</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.4">0.721</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.5">0.755</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.6">0.688</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.5.1">4</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.5.2">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3">0.597</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.4">0.709</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.5">0.758</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.6">0.668</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.6.1">6</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.6.2">Gemini-2.0-flash-exp</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.3">0.627</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4">0.673</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.5">0.754</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.6">0.660</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.7">
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.7.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S5.T2.1.1.7.2"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T2.1.1.7.2.1">Process Reward Models (72B)</em></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.8.1">3</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.8.2">Qwen-2.5-Math-PRM-72B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.3">0.546</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.4">0.739</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.5">0.770</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6">0.682</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.9">
<td class="ltx_td ltx_border_t" id="S5.T2.1.1.9.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S5.T2.1.1.9.2"><em class="ltx_emph ltx_font_bold ltx_font_italic" id="S5.T2.1.1.9.2.1">Process Reward Models (7B+)</em></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.10">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.10.1">7</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.10.2">Qwen2.5-Math-PRM-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.3">0.521</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.4">0.710</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.5">0.755</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.6">0.655</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.11">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.11.1">9</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.11.2">Pure-PRM-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.11.3">0.522</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.11.4">0.702</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.11.5.1">0.758</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.11.6">0.653</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.12.1">
<span class="ltx_ERROR undefined" id="S5.T2.1.1.12.1.1">\hdashline</span>
<span class="ltx_text" id="S5.T2.1.1.12.1.2" style="background-color:#E6E6E6;">
7</span>
</td>
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.12.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.1.1.12.2.1" style="background-color:#E6E6E6;">ActPRM<span class="ltx_text ltx_font_upright" id="S5.T2.1.1.12.2.1.1"> (ours)</span></span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.3"><span class="ltx_text" id="S5.T2.1.1.12.3.1" style="background-color:#E6E6E6;">0.536</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.4"><span class="ltx_text" id="S5.T2.1.1.12.4.1" style="background-color:#E6E6E6;">0.713</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.5"><span class="ltx_text" id="S5.T2.1.1.12.5.1" style="background-color:#E6E6E6;">0.752</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.6"><span class="ltx_text" id="S5.T2.1.1.12.6.1" style="background-color:#E6E6E6;">0.655</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.1.1.13.1"><span class="ltx_text" id="S5.T2.1.1.13.1.1" style="background-color:#E6E6E6;">5</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.1.1.13.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.1.1.13.2.1" style="background-color:#E6E6E6;">ActPRM-X<span class="ltx_text ltx_font_upright" id="S5.T2.1.1.13.2.1.1"> (ours)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.13.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.13.3.1" style="background-color:#E6E6E6;">0.545</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.13.4.1" style="background-color:#E6E6E6;">0.727</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.13.5"><span class="ltx_text" id="S5.T2.1.1.13.5.1" style="background-color:#E6E6E6;">0.756</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.13.6"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.13.6.1" style="background-color:#E6E6E6;">0.667</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different Process Reward Models (PRMs) on the PRMBench benchmark.  It shows the average F1 score, simplicity, soundness, and sensitivity of each model.  The models include various LLM-based approaches and process reward models, highlighting the performance differences on this specific benchmark.  The ranking (#) indicates the relative performance compared to other models on the leaderboard.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on PRMBench. All results of the other models are from the official leaderboard. # denotes the ranking.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T3.1.1">
<tr class="ltx_tr" id="A2.T3.1.1.1">
<td class="ltx_td ltx_border_tt" id="A2.T3.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T3.1.1.1.2.1"># Problem set</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.1.1.1.3"># <span class="ltx_text ltx_font_bold" id="A2.T3.1.1.1.3.1">CoT Trajectories</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T3.1.1.1.4.1">ProcessBench F1 score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A2.T3.1.1.2.1.1">PRM800K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.1.2.2">7,500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.1.2.3">460,000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.1.2.4">0.575</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A2.T3.1.1.3.1.1">NuminaMath (Random Selected)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.1.1.3.2">100,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.1.1.3.3">100,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T3.1.1.3.4">0.673</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Process Reward Models (PRMs) trained on two different datasets: PRM800K, a widely used dataset with 800K step-level labels, and a newly collected dataset of 100K samples from the NuminaMath dataset, labeled using the Qwen-QwQ model.  The comparison focuses on the ProcessBench F1 score, demonstrating the impact of dataset size and labeling method on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison between PRM800K and 100K data collected from NuminaMath labeled by Qwen-QwQ.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T4.3.3">
<tr class="ltx_tr" id="A3.T4.3.3.4">
<td class="ltx_td ltx_border_tt" id="A3.T4.3.3.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T4.3.3.4.2"><span class="ltx_text ltx_font_bold" id="A3.T4.3.3.4.2.1">Value</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T4.3.3.4.3"><span class="ltx_text ltx_font_bold" id="A3.T4.3.3.4.3.1">Source</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1.1"># Reasoning Steps (<math alttext="S" class="ltx_Math" display="inline" id="A3.T4.1.1.1.1.1.m1.1"><semantics id="A3.T4.1.1.1.1.1.m1.1a"><mi id="A3.T4.1.1.1.1.1.m1.1.1" xref="A3.T4.1.1.1.1.1.m1.1.1.cmml">S</mi><annotation-xml encoding="MathML-Content" id="A3.T4.1.1.1.1.1.m1.1b"><ci id="A3.T4.1.1.1.1.1.m1.1.1.cmml" xref="A3.T4.1.1.1.1.1.m1.1.1">𝑆</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.1.1.1.1.1.m1.1c">S</annotation><annotation encoding="application/x-llamapun" id="A3.T4.1.1.1.1.1.m1.1d">italic_S</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.1.2">8.845</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.1.3">Qwen Models’ rollouts</td>
</tr>
<tr class="ltx_tr" id="A3.T4.2.2.2">
<td class="ltx_td ltx_align_left" id="A3.T4.2.2.2.1"><span class="ltx_text ltx_font_bold" id="A3.T4.2.2.2.1.1"># Tokens per Rollout (<math alttext="R" class="ltx_Math" display="inline" id="A3.T4.2.2.2.1.1.m1.1"><semantics id="A3.T4.2.2.2.1.1.m1.1a"><mi id="A3.T4.2.2.2.1.1.m1.1.1" xref="A3.T4.2.2.2.1.1.m1.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="A3.T4.2.2.2.1.1.m1.1b"><ci id="A3.T4.2.2.2.1.1.m1.1.1.cmml" xref="A3.T4.2.2.2.1.1.m1.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.2.2.2.1.1.m1.1c">R</annotation><annotation encoding="application/x-llamapun" id="A3.T4.2.2.2.1.1.m1.1d">italic_R</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.2.2.2.2">625.098</td>
<td class="ltx_td ltx_align_center" id="A3.T4.2.2.2.3">Qwen Models’ rollouts</td>
</tr>
<tr class="ltx_tr" id="A3.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.3.3.3.1"><span class="ltx_text ltx_font_bold" id="A3.T4.3.3.3.1.1"># Tokens per Critic Response from Judge (<math alttext="C" class="ltx_Math" display="inline" id="A3.T4.3.3.3.1.1.m1.1"><semantics id="A3.T4.3.3.3.1.1.m1.1a"><mi id="A3.T4.3.3.3.1.1.m1.1.1" xref="A3.T4.3.3.3.1.1.m1.1.1.cmml">C</mi><annotation-xml encoding="MathML-Content" id="A3.T4.3.3.3.1.1.m1.1b"><ci id="A3.T4.3.3.3.1.1.m1.1.1.cmml" xref="A3.T4.3.3.3.1.1.m1.1.1">𝐶</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.3.3.3.1.1.m1.1c">C</annotation><annotation encoding="application/x-llamapun" id="A3.T4.3.3.3.1.1.m1.1d">italic_C</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.3.3.3.2">1,919.860</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.3.3.3.3">Qwen-QwQ’s responses as LLM-as-Judge</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a statistical overview of 1 million Chain-of-Thought (CoT) trajectories generated using the Qwen2.5-Math language models. These statistics are crucial for estimating the annotation costs associated with the active learning approach.  The table shows the average number of reasoning steps per trajectory, the average number of tokens required per complete rollout, and the average number of tokens per critic response from the judge, which are all key factors influencing the computational cost of labeling.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistics of 1M NuminaMath CoT Trajectories collected by Qwen2.5-Math Models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.1.1">
<tr class="ltx_tr" id="A3.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.2.1"># Labeled Data</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.2.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T5.1.1.2.1.1">ActPRM</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.2.2">624,000 (labeled in two stages)</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.3">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.3.1.1">Qwen2.5-Math-PRM-Math-shepherd</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.3.2">860,000</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.4.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.4.1.1">Qwen2.5-Math-PRM</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.4.2">860,000</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.1.5.1"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.5.1.1">UniversalPRM</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.1.5.2">690,000</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the number of labeled data points used to train different process reward models (PRMs).  The datasets include those used in the ACTPRM model (the authors' model), Qwen2.5-Math-PRM-Math-shepherd, Qwen2.5-Math-PRM, and UniversalPRM. Note that ACTPRM's data was labeled in two stages, resulting in a higher number of labeled data points.
> <details>
> <summary>read the caption</summary>
> Table 5: Data number of datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10559/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10559/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}