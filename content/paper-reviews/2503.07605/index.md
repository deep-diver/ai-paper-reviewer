---
title: "SEAP: Training-free Sparse Expert Activation Pruning Unlock the Brainpower of Large Language Models"
summary: "SEAP: Unlock LLM brainpower w/ training-free sparse expert activation pruning! Boost efficiency, keep accuracy. Optimize LLMs now!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Renmin University of China",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07605 {{< /keyword >}}
{{< keyword icon="writer" >}} Xun Liang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07605" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07605" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07605/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are powerful but computationally expensive, making them difficult to deploy in resource-constrained environments. Existing pruning methods often apply a uniform sparsity pattern across all tasks, potentially overlooking task-dependent knowledge representations. To solve these issues, this paper presents the intruiging parallel of cognitive neuroscience and conventional pruning approaches. Different tasks rely on distinct sets of neurons working collaboratively, a dynamic, task-aware strategy is needed for LLMs.



This paper introduces **Sparse Expert Activation Pruning (SEAP)**, a training-free pruning method that selectively retains task-relevant parameters to reduce inference overhead. SEAP identifies task-specific expert activation patterns and prunes the model while preserving task performance and enhancing computational efficiency. Experiments demonstrate that SEAP significantly reduces computational overhead while maintaining competitive accuracy. SEAP surpasses both WandA and FLAP by over 20% at 50% pruning and only incurs a 2.2% performance drop compared to the dense model at 20% pruning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Task-specific activation patterns exist in LLMs and can be leveraged for efficient pruning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SEAP, a training-free pruning method, significantly reduces computational overhead while maintaining competitive accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SEAP outperforms existing baselines in task accuracy, storage efficiency, and inference speed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel **training-free pruning method that dynamically adapts to task-specific activation patterns**, offering a promising approach to optimize LLMs for real-world applications and paving the way for future advancements in structured pruning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07605/x1.png)

> 🔼 This figure visualizes the activation patterns of hidden states within a large language model (LLM) across various tasks. Each point represents a specific hidden state's activation level for a particular task.  The x and y coordinates represent the dimensionality reduction of the high-dimensional hidden states.  Crucially, the plot reveals distinct clusters of points corresponding to different task categories. Tasks with similar semantic or reasoning requirements tend to cluster together, indicating that these tasks activate similar regions within the LLM's hidden state space. This supports the hypothesis that the LLM's internal representations for various tasks are not uniformly distributed but are instead organized in task-specific clusters. This observation is fundamental to the paper's proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of hidden states h⁢(P)ℎ𝑃h(P)italic_h ( italic_P ) from different tasks. Each point represents the activation of a hidden state in the model for a specific task. The clustering patterns illustrate how tasks with similar requirements tend to activate similar regions in the model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.12.13.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S2.T1.12.13.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S2.T1.12.13.1.1.1.1">
<span class="ltx_tr" id="S2.T1.12.13.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.12.13.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Pruning</span></span>
<span class="ltx_tr" id="S2.T1.12.13.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.12.13.1.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Ratio</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.12.13.1.2" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S2.T1.12.13.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S2.T1.12.13.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Llama-2-7B</td>
</tr>
<tr class="ltx_tr" id="S2.T1.12.14.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WinoGrande</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">OBQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">HellaSwag</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">PIQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">ARC-c</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">ARC-e</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">BoolQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.14.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S2.T1.12.15.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.12.15.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">0%</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.12.15.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Dense</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">44.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">46.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.12.15.3.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.97</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.1.2" rowspan="6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S2.T1.1.1.2.1">20%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA-sp (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.m1.1a"><msub id="S2.T1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.m1.1.1.cmml"><mi id="S2.T1.1.1.1.m1.1.1.2" xref="S2.T1.1.1.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.1.1.1.m1.1.1.3" xref="S2.T1.1.1.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.m1.1b"><apply id="S2.T1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.1.1.1.m1.1.1.1.cmml" xref="S2.T1.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T1.1.1.1.m1.1.1.2.cmml" xref="S2.T1.1.1.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.1.1.1.m1.1.1.3.cmml" xref="S2.T1.1.1.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">40.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">42.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">61.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">60.95</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.2.2.1.m1.1"><semantics id="S2.T1.2.2.1.m1.1a"><msub id="S2.T1.2.2.1.m1.1.1" xref="S2.T1.2.2.1.m1.1.1.cmml"><mi id="S2.T1.2.2.1.m1.1.1.2" xref="S2.T1.2.2.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.2.2.1.m1.1.1.3" xref="S2.T1.2.2.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.1.m1.1b"><apply id="S2.T1.2.2.1.m1.1.1.cmml" xref="S2.T1.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.2.2.1.m1.1.1.1.cmml" xref="S2.T1.2.2.1.m1.1.1">subscript</csymbol><ci id="S2.T1.2.2.1.m1.1.1.2.cmml" xref="S2.T1.2.2.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.2.2.1.m1.1.1.3.cmml" xref="S2.T1.2.2.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.77</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.2.3.1">43.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.53</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.80</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.2.6.1">45.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.2.7.1">75.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.2.2.8.1">\ul</span>71.77</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.68</td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.3.3.1.m1.1"><semantics id="S2.T1.3.3.1.m1.1a"><msub id="S2.T1.3.3.1.m1.1.1" xref="S2.T1.3.3.1.m1.1.1.cmml"><mi id="S2.T1.3.3.1.m1.1.1.2" xref="S2.T1.3.3.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.3.3.1.m1.1.1.3" xref="S2.T1.3.3.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.1.m1.1b"><apply id="S2.T1.3.3.1.m1.1.1.cmml" xref="S2.T1.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.3.3.1.m1.1.1.1.cmml" xref="S2.T1.3.3.1.m1.1.1">subscript</csymbol><ci id="S2.T1.3.3.1.m1.1.1.2.cmml" xref="S2.T1.3.3.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.3.3.1.m1.1.1.3.cmml" xref="S2.T1.3.3.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.3.3.2.1">\ul</span>67.80</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">41.00</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.77</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.58</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">44.71</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.3.3.7.1">\ul</span>74.33</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.44</td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.38</td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.4.4.1.m1.1"><semantics id="S2.T1.4.4.1.m1.1a"><msub id="S2.T1.4.4.1.m1.1.1" xref="S2.T1.4.4.1.m1.1.1.cmml"><mi id="S2.T1.4.4.1.m1.1.1.2" xref="S2.T1.4.4.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.4.4.1.m1.1.1.3" xref="S2.T1.4.4.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.1.m1.1b"><apply id="S2.T1.4.4.1.m1.1.1.cmml" xref="S2.T1.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.4.4.1.m1.1.1.1.cmml" xref="S2.T1.4.4.1.m1.1.1">subscript</csymbol><ci id="S2.T1.4.4.1.m1.1.1.2.cmml" xref="S2.T1.4.4.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.4.4.1.m1.1.1.3.cmml" xref="S2.T1.4.4.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">41.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">42.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.4.4.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.07</td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.5.5.1.m1.1"><semantics id="S2.T1.5.5.1.m1.1a"><msub id="S2.T1.5.5.1.m1.1.1" xref="S2.T1.5.5.1.m1.1.1.cmml"><mi id="S2.T1.5.5.1.m1.1.1.2" xref="S2.T1.5.5.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.5.5.1.m1.1.1.3" xref="S2.T1.5.5.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.1.m1.1b"><apply id="S2.T1.5.5.1.m1.1.1.cmml" xref="S2.T1.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.5.5.1.m1.1.1.1.cmml" xref="S2.T1.5.5.1.m1.1.1">subscript</csymbol><ci id="S2.T1.5.5.1.m1.1.1.2.cmml" xref="S2.T1.5.5.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.5.5.1.m1.1.1.3.cmml" xref="S2.T1.5.5.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.2.1">68.19</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.5.5.3.1">\ul</span>42.60</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.5.5.4.1">\ul</span>74.07</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.5.5.5.1">\ul</span>78.07</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.5.5.6.1">\ul</span>45.39</td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.7.1">75.42</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.8.1">74.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.9.1">65.46</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.6.6.1.m1.1"><semantics id="S2.T1.6.6.1.m1.1a"><msub id="S2.T1.6.6.1.m1.1.1" xref="S2.T1.6.6.1.m1.1.1.cmml"><mi id="S2.T1.6.6.1.m1.1.1.2" xref="S2.T1.6.6.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.6.6.1.m1.1.1.3" xref="S2.T1.6.6.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.1.m1.1b"><apply id="S2.T1.6.6.1.m1.1.1.cmml" xref="S2.T1.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.6.6.1.m1.1.1.1.cmml" xref="S2.T1.6.6.1.m1.1.1">subscript</csymbol><ci id="S2.T1.6.6.1.m1.1.1.2.cmml" xref="S2.T1.6.6.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.6.6.1.m1.1.1.3.cmml" xref="S2.T1.6.6.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.72</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">41.20</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.6.6.4.1">74.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.6.6.5.1">78.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.6.6.6.1">\ul</span>45.39</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.12</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.68</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.6.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.6.6.9.1">\ul</span>64.75</td>
</tr>
<tr class="ltx_tr" id="S2.T1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S2.T1.7.7.2" rowspan="6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S2.T1.7.7.2.1">50%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA-sp (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.7.7.1.m1.1"><semantics id="S2.T1.7.7.1.m1.1a"><msub id="S2.T1.7.7.1.m1.1.1" xref="S2.T1.7.7.1.m1.1.1.cmml"><mi id="S2.T1.7.7.1.m1.1.1.2" xref="S2.T1.7.7.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.7.7.1.m1.1.1.3" xref="S2.T1.7.7.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.1.m1.1b"><apply id="S2.T1.7.7.1.m1.1.1.cmml" xref="S2.T1.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.7.7.1.m1.1.1.1.cmml" xref="S2.T1.7.7.1.m1.1.1">subscript</csymbol><ci id="S2.T1.7.7.1.m1.1.1.2.cmml" xref="S2.T1.7.7.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.7.7.1.m1.1.1.3.cmml" xref="S2.T1.7.7.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">52.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">41.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">64.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">30.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">52.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">39.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.7.7.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">45.23</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.8.8.1.m1.1"><semantics id="S2.T1.8.8.1.m1.1a"><msub id="S2.T1.8.8.1.m1.1.1" xref="S2.T1.8.8.1.m1.1.1.cmml"><mi id="S2.T1.8.8.1.m1.1.1.2" xref="S2.T1.8.8.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.8.8.1.m1.1.1.3" xref="S2.T1.8.8.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.8.8.1.m1.1b"><apply id="S2.T1.8.8.1.m1.1.1.cmml" xref="S2.T1.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.8.8.1.m1.1.1.1.cmml" xref="S2.T1.8.8.1.m1.1.1">subscript</csymbol><ci id="S2.T1.8.8.1.m1.1.1.2.cmml" xref="S2.T1.8.8.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.8.8.1.m1.1.1.3.cmml" xref="S2.T1.8.8.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.8.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.8.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">56.12</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.20</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">58.07</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.8.8.5.1">\ul</span>73.83</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.6.1">38.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.7.1">61.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.8.1">60.15</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.8.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.8.8.9.1">\ul</span>55.06</td>
</tr>
<tr class="ltx_tr" id="S2.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{W}" class="ltx_Math" display="inline" id="S2.T1.9.9.1.m1.1"><semantics id="S2.T1.9.9.1.m1.1a"><msub id="S2.T1.9.9.1.m1.1.1" xref="S2.T1.9.9.1.m1.1.1.cmml"><mi id="S2.T1.9.9.1.m1.1.1.2" xref="S2.T1.9.9.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.9.9.1.m1.1.1.3" xref="S2.T1.9.9.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.9.9.1.m1.1b"><apply id="S2.T1.9.9.1.m1.1.1.cmml" xref="S2.T1.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.9.9.1.m1.1.1.1.cmml" xref="S2.T1.9.9.1.m1.1.1">subscript</csymbol><ci id="S2.T1.9.9.1.m1.1.1.2.cmml" xref="S2.T1.9.9.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.9.9.1.m1.1.1.3.cmml" xref="S2.T1.9.9.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.9.9.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.9.9.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">54.70</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">38.20</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">56.97</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">71.76</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.24</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">57.15</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">57.25</td>
<td class="ltx_td ltx_align_center" id="S2.T1.9.9.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">53.04</td>
</tr>
<tr class="ltx_tr" id="S2.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.10.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.10.10.1.m1.1"><semantics id="S2.T1.10.10.1.m1.1a"><msub id="S2.T1.10.10.1.m1.1.1" xref="S2.T1.10.10.1.m1.1.1.cmml"><mi id="S2.T1.10.10.1.m1.1.1.2" xref="S2.T1.10.10.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.10.10.1.m1.1.1.3" xref="S2.T1.10.10.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.10.10.1.m1.1b"><apply id="S2.T1.10.10.1.m1.1.1.cmml" xref="S2.T1.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.10.10.1.m1.1.1.1.cmml" xref="S2.T1.10.10.1.m1.1.1">subscript</csymbol><ci id="S2.T1.10.10.1.m1.1.1.2.cmml" xref="S2.T1.10.10.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.10.10.1.m1.1.1.3.cmml" xref="S2.T1.10.10.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.10.10.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.10.10.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">56.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">34.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">48.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">63.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">32.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">42.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.10.10.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">46.82</td>
</tr>
<tr class="ltx_tr" id="S2.T1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.11.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.11.11.1.m1.1"><semantics id="S2.T1.11.11.1.m1.1a"><msub id="S2.T1.11.11.1.m1.1.1" xref="S2.T1.11.11.1.m1.1.1.cmml"><mi id="S2.T1.11.11.1.m1.1.1.2" xref="S2.T1.11.11.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.11.11.1.m1.1.1.3" xref="S2.T1.11.11.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.11.11.1.m1.1b"><apply id="S2.T1.11.11.1.m1.1.1.cmml" xref="S2.T1.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.11.11.1.m1.1.1.1.cmml" xref="S2.T1.11.11.1.m1.1.1">subscript</csymbol><ci id="S2.T1.11.11.1.m1.1.1.2.cmml" xref="S2.T1.11.11.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.11.11.1.m1.1.1.3.cmml" xref="S2.T1.11.11.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.11.11.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.11.11.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.11.11.2.1">60.14</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.11.11.3.1">\ul</span>38.80</td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.11.11.4.1">58.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.11.11.5.1">74.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.11.11.6.1">\ul</span>38.14</td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.11.11.7.1">\ul</span>60.56</td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.11.11.8.1">\ul</span>59.94</td>
<td class="ltx_td ltx_align_center" id="S2.T1.11.11.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.11.11.9.1">55.73</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S2.T1.12.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{F}" class="ltx_Math" display="inline" id="S2.T1.12.12.1.m1.1"><semantics id="S2.T1.12.12.1.m1.1a"><msub id="S2.T1.12.12.1.m1.1.1" xref="S2.T1.12.12.1.m1.1.1.cmml"><mi id="S2.T1.12.12.1.m1.1.1.2" xref="S2.T1.12.12.1.m1.1.1.2.cmml">s</mi><mi id="S2.T1.12.12.1.m1.1.1.3" xref="S2.T1.12.12.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="S2.T1.12.12.1.m1.1b"><apply id="S2.T1.12.12.1.m1.1.1.cmml" xref="S2.T1.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T1.12.12.1.m1.1.1.1.cmml" xref="S2.T1.12.12.1.m1.1.1">subscript</csymbol><ci id="S2.T1.12.12.1.m1.1.1.2.cmml" xref="S2.T1.12.12.1.m1.1.1.2">𝑠</ci><ci id="S2.T1.12.12.1.m1.1.1.3.cmml" xref="S2.T1.12.12.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.12.12.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.12.12.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.12.12.2.1">\ul</span>59.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.12.12.3.1">39.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="S2.T1.12.12.4.1">\ul</span>58.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">73.39</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.97</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">55.72</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">57.98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.12.12.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">54.71</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of the SEAP model's performance on the Llama-2-7B model across various downstream tasks.  It compares the accuracy of the model under different pruning ratios (0%, 20%, and 50%), showing the impact of the proposed SEAP method, as well as the FLAP and WandA baselines. The table shows accuracy scores for each task, allowing for a comparison of the different methods' performance across various sparsity levels.  The bolded scores represent the highest performing method for a given task and pruning ratio, while underlined scores indicate the second highest.
> <details>
> <summary>read the caption</summary>
> Table 1: Task performance accuracy on Llama-2-7B under different pruning ratios. A higher ↑ score indicates better performance. The bolded entries represent the highest scoring methods, while the underlined entries represent the second highest scoring methods.
> </details>





### In-depth insights


#### Brainpower LLM
The concept of a "Brainpower LLM" evokes the idea of an LLM optimized for both performance and efficiency. This necessitates a delicate balance, moving beyond simply scaling model size to achieve higher accuracy. **Efficient resource utilization** becomes paramount, focusing on strategies like pruning, quantization, and knowledge distillation to reduce computational overhead. A true Brainpower LLM likely incorporates task-specific optimization techniques, dynamically allocating resources based on the demands of the input. This could involve selectively activating network components or utilizing specialized modules for certain tasks. **Adaptive learning and continual refinement** are also crucial aspects. By analyzing patterns in data and user interactions, the model can identify areas for improvement and fine-tune its parameters to enhance both accuracy and efficiency, solidifying its spot as a genuine Brainpower LLM. 

#### Task-Spec Pruning
**Task-specific pruning** offers a promising avenue for optimizing large language models (LLMs) by tailoring the model's architecture to the demands of individual tasks.  Instead of applying a uniform pruning strategy across all tasks, this approach **selectively removes parameters** that are deemed less relevant for a particular task, **preserving the parameters** crucial for optimal performance. This strategy leverages the observation that different tasks activate distinct sets of neurons within LLMs. **Adaptively retain the most relevant parameters** based on the task's specific characteristics, enhancing computational efficiency while preserving task performance. This approach directly addresses the heterogeneity of tasks and the redundancy of a one-size-fits-all model. By carefully sculpting the model to fit the contours of each task, this can lead to more efficient use of computational resources and improved performance. It makes the models more scalable and adaptive.

#### Activat. Patterns
Analyzing activation patterns in LLMs is crucial for understanding how these models process information. By examining which neurons and layers are activated for specific tasks, we can gain insights into **task-specific knowledge representations**. This understanding can lead to more efficient pruning strategies, dynamically retaining only the most relevant parameters. Exploring the activation landscape allows for adaptive sparsification, **optimizing computational efficiency** while preserving performance. Ultimately, understanding these patterns leads to specialized LLM deployment and efficient performance.

#### Sparsity Setting
The research employs a **sparsity setting** to strategically determine which neurons to prune in LLMs. The study conducts a **remove test** on MMLU and PIQA, analyzing performance at different sparsity levels, showing **early layers are more sensitive to pruning**, while deeper layers tolerate higher sparsity with minimal loss. Inspired by LLM-Pruner and FLAP, sparsity of the final layers is set to zero, adjusting sparsity of other layers to maintain overall sparsity. The research uses a differentiable logistic function for a smooth sparsity distribution across layers, ensuring lower sparsity in early layers and higher sparsity in deeper layers. The global sparsity target is met through numerical search for A. This approach allows for more efficient resource allocation and better performance, as confirmed by results surpassing WandA and FLAP.

#### Efficient LLMs
**Efficient LLMs are crucial** for wider accessibility and deployment, addressing limitations in memory bandwidth and hardware. Techniques such as **quantization** reduce weight precision, while **pruning** removes redundant parameters. Methods like **MoE** dynamically activate subsets of the network. **Task-specific knowledge** can enhance sparsification techniques which adaptively retain parameters, enhancing performance. There is an emerging trend of **activation pruning**, which reduces memory bandwidth during inference by sparsifying network activations. Balancing efficiency and performance requires adaptive sparsity strategies, ensuring critical neurons are retained, **optimizing resource allocation**, and better performance, highlighting potential for practical applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07605/x2.png)

> 🔼 This figure provides a detailed overview of the SEAP (Sparse Expert Activation Pruning) approach. The left side focuses on the 'Motivation Discovery' phase, illustrating how task-specific activation patterns are identified. This is achieved by analyzing the hidden states and neuron activations extracted from a carefully constructed task corpus.  The right side of the figure details the five main steps involved in the 'Training-free Sparse Expert Activation Pruning' process itself, as described in Section 2.1 of the paper.  Each step is shown visually to clarify the process of pruning based on task-specific activation patterns.
> <details>
> <summary>read the caption</summary>
> Figure 2: Framework of the SEAP approach. The left side shows the Motivation Discovery phase, where task-specific activation patterns are identified by analyzing hidden states and neuron activations extracted from the task corpus. The right side illustrates the Training-free Sparse Expert Activation Pruning process, consisting of five main steps described in Section 2.1.
> </details>



![](https://arxiv.org/html/2503.07605/extracted/6267883/figures/l2norms.png)

> 🔼 This figure visualizes the activation patterns of different tasks within a language model.  Heatmaps display the average ℓ2 norm of each dimension in the hidden state across multiple layers or modules. Each row represents a layer/module, and each column represents a dimension.  The top and bottom halves of each heatmap show activation patterns from two different, randomly selected subsets of prompts from the *same* task. Consistent color patterns within each task's heatmaps illustrate that similar tasks activate similar dimensions, while distinctly different tasks show unique activation patterns.  This supports the study's hypothesis that tasks selectively activate specific dimensions of the hidden state.
> <details>
> <summary>read the caption</summary>
> Figure 3: Heatmaps of dimension-wise average normalized ℓℓ\ellroman_ℓ2 norms for different tasks. Each row corresponds to a layer or module, and each column represents a dimension in the hidden state space. The top and bottom parts of the figure show activation patterns from two randomly selected subsets of the same task. Consistent color patterns appear within tasks of the same type, while distinctly different tasks exhibit unique activation signatures, supporting our hypothesis that tasks selectively activate specific dimensions.
> </details>



![](https://arxiv.org/html/2503.07605/x3.png)

> 🔼 This figure illustrates the process of neuron pruning in SEAP. Neurons with low importance scores (indicated by color) are pruned, while those with high scores are retained. This selective pruning enhances computational efficiency while preserving model performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of how neurons are pruned based on importance scores.
> </details>



![](https://arxiv.org/html/2503.07605/extracted/6267883/figures/mmlu_rm_test.png)

> 🔼 This figure shows how performance on the MMLU (Massive Multitask Language Understanding) benchmark changes when different layers of a large language model are pruned at varying sparsity levels (0%, 20%, 50%, 100%).  The x-axis represents the layer index, indicating the depth of the layer within the model, with higher values corresponding to later layers. The y-axis displays the accuracy achieved on the MMLU task after pruning.  Different lines represent different sparsity levels, illustrating the effect of removing increasing proportions of parameters. The results indicate that early layers (those with lower indices) are much more sensitive to pruning than later layers.  A significant drop in accuracy is observed for early layers even at lower sparsity levels, whereas later layers exhibit greater resilience to pruning.
> <details>
> <summary>read the caption</summary>
> Figure 5: Impact of pruning on MMLU performance at different layers and sparsity levels. Early layers are more sensitive to pruning.
> </details>



![](https://arxiv.org/html/2503.07605/extracted/6267883/figures/piqa_rm_test.png)

> 🔼 This figure displays the results of an experiment that evaluated the impact of pruning on the PIQA task's performance across different layers and sparsity levels within a large language model (LLM).  The x-axis represents the index of the pruned layer, indicating the depth of the layer within the model. The y-axis represents the accuracy achieved on the PIQA task. Multiple lines are plotted, each representing a different sparsity level (percentage of the network pruned).  The key observation is that deeper layers (higher layer indices) show greater robustness to pruning; they maintain higher accuracy even at increased sparsity levels compared to shallower layers. This suggests that the model's crucial information for this specific task is concentrated in the deeper layers of the network.
> <details>
> <summary>read the caption</summary>
> Figure 6: Impact of pruning on PIQA performance at different layers and sparsity levels. Deeper layers are more robust to pruning.
> </details>



![](https://arxiv.org/html/2503.07605/extracted/6267883/figures/ppl.png)

> 🔼 This figure displays the perplexity (PPL) scores achieved by different LLMs (Llama-2-7B and Llama-2-13B) under various pruning ratios (0%, 20%, and 50%).  Perplexity is a metric that evaluates how well a language model predicts the next word in a sequence; lower perplexity indicates better performance. The graph visually demonstrates the trade-off between model compression (through pruning) and language modeling quality.  It shows that as the pruning ratio increases, the perplexity generally increases, suggesting a slight degradation in the model's ability to predict words accurately.  However, the increase remains relatively small, particularly at lower pruning ratios, indicating that the proposed pruning methods maintain reasonably good language modeling capabilities even with significant model compression.
> <details>
> <summary>read the caption</summary>
> Figure 7: Perplexity (PPL) results under different pruning ratios. A lower↓ perplexity indicates better performance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S3.T2.1.1.1.1.1">Ratio</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.1.2" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S3.T2.1.1.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T2.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Llama-2-7B</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T2.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">Llama-2-13B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.1.1">
<span class="ltx_p" id="S3.T2.1.2.2.1.1.1" style="width:22.8pt;">Tokens/s</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.2.1">
<span class="ltx_p" id="S3.T2.1.2.2.2.1.1" style="width:22.8pt;">Up</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.3.1">
<span class="ltx_p" id="S3.T2.1.2.2.3.1.1" style="width:22.8pt;">Tokens/s</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.2.4.1">
<span class="ltx_p" id="S3.T2.1.2.2.4.1.1" style="width:22.8pt;">Up</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">0%</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Dense</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.3.3.1">
<span class="ltx_p" id="S3.T2.1.3.3.3.1.1" style="width:22.8pt;">31.88</span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_t" id="S3.T2.1.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.3.5.1">
<span class="ltx_p" id="S3.T2.1.3.3.5.1.1" style="width:22.8pt;">27.45</span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_t" id="S3.T2.1.3.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.4.4.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S3.T2.1.4.4.1.1">20%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.4.3.1">
<span class="ltx_p" id="S3.T2.1.4.4.3.1.1" style="width:22.8pt;">32.05</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.4.4.1">
<span class="ltx_p" id="S3.T2.1.4.4.4.1.1" style="width:22.8pt;">×1.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.4.5.1">
<span class="ltx_p" id="S3.T2.1.4.4.5.1.1" style="width:22.8pt;">28.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.4.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.4.6.1">
<span class="ltx_p" id="S3.T2.1.4.4.6.1.1" style="width:22.8pt;">×1.02</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.5.2.1">
<span class="ltx_p" id="S3.T2.1.5.5.2.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.2.1.1.1">38.90</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.5.3.1">
<span class="ltx_p" id="S3.T2.1.5.5.3.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.3.1.1.1">×1.22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.5.4.1">
<span class="ltx_p" id="S3.T2.1.5.5.4.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.4.1.1.1">33.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.5.5.1">
<span class="ltx_p" id="S3.T2.1.5.5.5.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.5.1.1.1">×1.24</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.6.2.1">
<span class="ltx_p" id="S3.T2.1.6.6.2.1.1" style="width:22.8pt;">37.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.6.3.1">
<span class="ltx_p" id="S3.T2.1.6.6.3.1.1" style="width:22.8pt;">×1.17</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.6.4.1">
<span class="ltx_p" id="S3.T2.1.6.6.4.1.1" style="width:22.8pt;">33.02</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.6.5.1">
<span class="ltx_p" id="S3.T2.1.6.6.5.1.1" style="width:22.8pt;">×1.20</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S3.T2.1.7.7.1" rowspan="3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S3.T2.1.7.7.1.1">50%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.7.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.7.3.1">
<span class="ltx_p" id="S3.T2.1.7.7.3.1.1" style="width:22.8pt;">31.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.7.4.1">
<span class="ltx_p" id="S3.T2.1.7.7.4.1.1" style="width:22.8pt;">×0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.7.5.1">
<span class="ltx_p" id="S3.T2.1.7.7.5.1.1" style="width:22.8pt;">27.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.7.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.7.6.1">
<span class="ltx_p" id="S3.T2.1.7.7.6.1.1" style="width:22.8pt;">×0.98</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.8.2.1">
<span class="ltx_p" id="S3.T2.1.8.8.2.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.8.8.2.1.1.1">47.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.8.3.1">
<span class="ltx_p" id="S3.T2.1.8.8.3.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.8.8.3.1.1.1">×1.50</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.8.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.8.4.1">
<span class="ltx_p" id="S3.T2.1.8.8.4.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.8.8.4.1.1.1">43.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.8.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.8.5.1">
<span class="ltx_p" id="S3.T2.1.8.8.5.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.8.8.5.1.1.1">×1.58</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.T2.1.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T2.1.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.9.2.1">
<span class="ltx_p" id="S3.T2.1.9.9.2.1.1" style="width:22.8pt;">47.10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T2.1.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.9.3.1">
<span class="ltx_p" id="S3.T2.1.9.9.3.1.1" style="width:22.8pt;">×1.48</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T2.1.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.9.4.1">
<span class="ltx_p" id="S3.T2.1.9.9.4.1.1" style="width:22.8pt;">41.78</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S3.T2.1.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.9.5.1">
<span class="ltx_p" id="S3.T2.1.9.9.5.1.1" style="width:22.8pt;">×1.52</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference speed, measured in tokens processed per second, for the Llama-2-7B and Llama-2-13B language models under various pruning ratios (0%, 20%, and 50%).  It shows the speed improvement (speedup) achieved by pruning compared to the unpruned (dense) model.  A higher number indicates better performance. The results are broken down for each model and pruning level, allowing for comparison of performance gains across different sparsity levels.
> <details>
> <summary>read the caption</summary>
> Table 2: Inference speed (Tokens per second) and speedup under different pruning ratios.A higher↑ speed indicates better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T3.1.1.1.1" style="padding:1.25pt 6.5pt;">Ratio</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T3.1.1.1.2" style="padding:1.25pt 6.5pt;">Method</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.3" style="padding:1.25pt 6.5pt;">Set.</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.4" style="padding:1.25pt 6.5pt;">Average</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.5" style="padding:1.25pt 6.5pt;">Set.</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.1.1.6" style="padding:1.25pt 6.5pt;">Average</th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T3.1.2.2.1" style="padding:1.25pt 6.5pt;">0%</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T3.1.2.2.2" style="padding:1.25pt 6.5pt;">Dense</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.2.2.3" style="padding:1.25pt 6.5pt;">-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.2.2.4" style="padding:1.25pt 6.5pt;">69.46</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.2.2.5" style="padding:1.25pt 6.5pt;">-</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T3.1.2.2.6" style="padding:1.25pt 6.5pt;">69.46</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.3.1.1" rowspan="3" style="padding:1.25pt 6.5pt;"><span class="ltx_text" id="S3.T3.1.3.1.1.1">20%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.3.1.2" style="padding:1.25pt 6.5pt;">WandA-sp</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.1.3" style="padding:1.25pt 6.5pt;">UL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.1.4" style="padding:1.25pt 6.5pt;">61.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.1.5" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.1.6" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.1.6.1">65.57</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.4.2.1" style="padding:1.25pt 6.5pt;">FLAP</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.2.2" style="padding:1.25pt 6.5pt;">AL</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.2.3" style="padding:1.25pt 6.5pt;">63.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.2.4" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.4.2.5" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.2.5.1">66.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.5.3.1" style="padding:1.25pt 6.5pt;">SEAP-gen</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.3.2" style="padding:1.25pt 6.5pt;">UL</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.3.3" style="padding:1.25pt 6.5pt;">66.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.3.4" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.5.3.5" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.3.5.1">68.75</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S3.T3.1.6.4.1" rowspan="3" style="padding:1.25pt 6.5pt;"><span class="ltx_text" id="S3.T3.1.6.4.1.1">50%</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.6.4.2" style="padding:1.25pt 6.5pt;">WandA-sp</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.4.3" style="padding:1.25pt 6.5pt;">UL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.4.4" style="padding:1.25pt 6.5pt;">48.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.6.4.5" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.4.6" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.6.4.6.1">49.94</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.7.5.1" style="padding:1.25pt 6.5pt;">FLAP</th>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.5.2" style="padding:1.25pt 6.5pt;">AL</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.5.3" style="padding:1.25pt 6.5pt;">51.12</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.7.5.4" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.7.5.5" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.5.5.1">51.78</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.T3.1.8.6.1" style="padding:1.25pt 6.5pt;">SEAP-gen</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.8.6.2" style="padding:1.25pt 6.5pt;">UL</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.8.6.3" style="padding:1.25pt 6.5pt;">59.03</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.1.8.6.4" style="padding:1.25pt 6.5pt;">LB</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_b" id="S3.T3.1.8.6.5" style="padding:1.25pt 6.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.8.6.5.1">60.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares three different sparsity strategies for pruning the Llama-2-13B language model: Uniform Layer Sparsity (UL), Logistic-based Sparsity (LB), and Adaptive Layer Sparsity (AL).  The comparison is done at 20% and 50% pruning ratios.  For each strategy and pruning ratio, the average performance across several downstream tasks is reported.  A higher score indicates better performance, showing the effectiveness of each sparsity strategy in maintaining accuracy while reducing model size.
> <details>
> <summary>read the caption</summary>
> Table 3: Sparsity settings and average sparsity on the Llama-2-13B model. The table shows three sparsity strategies: 'UL' (Uniform Layer Sparsity), 'LB' (Logistic-based Sparsity), and 'AL' (Adaptive Layer Sparsity).A higher↑ score indicates better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.13.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T4.12.13.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A1.T4.12.13.1.1.1.1">
<span class="ltx_tr" id="A1.T4.12.13.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.12.13.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Pruning</span></span>
<span class="ltx_tr" id="A1.T4.12.13.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T4.12.13.1.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">Ratio</span></span>
</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.13.1.2" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T4.12.13.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="8" id="A1.T4.12.13.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">Llama-2-13B</th>
</tr>
<tr class="ltx_tr" id="A1.T4.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WinoGrande</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">OBQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">HellaSwag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">PIQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">ARC-c</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">ARC-e</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">BoolQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.14.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">Average</th>
</tr>
<tr class="ltx_tr" id="A1.T4.12.15.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">0%</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">Dense</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.14</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">45.20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.37</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.52</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">48.98</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">79.42</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.58</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.12.15.3.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.46</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.2" rowspan="6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T4.1.1.2.1">20%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA-sp (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.m1.1a"><msub id="A1.T4.1.1.1.m1.1.1" xref="A1.T4.1.1.1.m1.1.1.cmml"><mi id="A1.T4.1.1.1.m1.1.1.2" xref="A1.T4.1.1.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.1.1.1.m1.1.1.3" xref="A1.T4.1.1.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.m1.1b"><apply id="A1.T4.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.1.1.1.m1.1.1.1.cmml" xref="A1.T4.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T4.1.1.1.m1.1.1.2.cmml" xref="A1.T4.1.1.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.1.1.1.m1.1.1.3.cmml" xref="A1.T4.1.1.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">42.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.1.1.7.1">\ul</span>48.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">70.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">65.57</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2">
<td class="ltx_td ltx_align_left" id="A1.T4.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.2.2.1.m1.1"><semantics id="A1.T4.2.2.1.m1.1a"><msub id="A1.T4.2.2.1.m1.1.1" xref="A1.T4.2.2.1.m1.1.1.cmml"><mi id="A1.T4.2.2.1.m1.1.1.2" xref="A1.T4.2.2.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.2.2.1.m1.1.1.3" xref="A1.T4.2.2.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.1.m1.1b"><apply id="A1.T4.2.2.1.m1.1.1.cmml" xref="A1.T4.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.2.2.1.m1.1.1.1.cmml" xref="A1.T4.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T4.2.2.1.m1.1.1.2.cmml" xref="A1.T4.2.2.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.2.2.1.m1.1.1.3.cmml" xref="A1.T4.2.2.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.2.1">71.98</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">43.60</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.73</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.2.2.5.1">80.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">48.46</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.61</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">74.68</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.96</td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3">
<td class="ltx_td ltx_align_left" id="A1.T4.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.3.3.1.m1.1"><semantics id="A1.T4.3.3.1.m1.1a"><msub id="A1.T4.3.3.1.m1.1.1" xref="A1.T4.3.3.1.m1.1.1.cmml"><mi id="A1.T4.3.3.1.m1.1.1.2" xref="A1.T4.3.3.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.3.3.1.m1.1.1.3" xref="A1.T4.3.3.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.1.m1.1b"><apply id="A1.T4.3.3.1.m1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.3.3.1.m1.1.1.1.cmml" xref="A1.T4.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T4.3.3.1.m1.1.1.2.cmml" xref="A1.T4.3.3.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.3.3.1.m1.1.1.3.cmml" xref="A1.T4.3.3.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.85</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">43.20</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">78.13</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.3.3.5.1">\ul</span>80.47</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">48.55</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.3.3.7.1">78.58</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">72.54</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.33</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.4.4.1.m1.1"><semantics id="A1.T4.4.4.1.m1.1a"><msub id="A1.T4.4.4.1.m1.1.1" xref="A1.T4.4.4.1.m1.1.1.cmml"><mi id="A1.T4.4.4.1.m1.1.1.2" xref="A1.T4.4.4.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.4.4.1.m1.1.1.3" xref="A1.T4.4.4.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.1.m1.1b"><apply id="A1.T4.4.4.1.m1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.4.4.1.m1.1.1.1.cmml" xref="A1.T4.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T4.4.4.1.m1.1.1.2.cmml" xref="A1.T4.4.4.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.4.4.1.m1.1.1.3.cmml" xref="A1.T4.4.4.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">69.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">44.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">75.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">48.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">77.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.4.4.8.1">\ul</span>77.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.4.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.76</td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5">
<td class="ltx_td ltx_align_left" id="A1.T4.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.5.5.1.m1.1"><semantics id="A1.T4.5.5.1.m1.1a"><msub id="A1.T4.5.5.1.m1.1.1" xref="A1.T4.5.5.1.m1.1.1.cmml"><mi id="A1.T4.5.5.1.m1.1.1.2" xref="A1.T4.5.5.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.5.5.1.m1.1.1.3" xref="A1.T4.5.5.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.1.m1.1b"><apply id="A1.T4.5.5.1.m1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.5.5.1.m1.1.1.1.cmml" xref="A1.T4.5.5.1.m1.1.1">subscript</csymbol><ci id="A1.T4.5.5.1.m1.1.1.2.cmml" xref="A1.T4.5.5.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.5.5.1.m1.1.1.3.cmml" xref="A1.T4.5.5.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.5.5.2.1">\ul</span>70.64</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.5.5.3.1">44.80</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.5.5.4.1">79.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.5.5.5.1">80.69</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">47.95</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.85</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.82</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.5.5.9.1">\ul</span>68.12</td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<td class="ltx_td ltx_align_left" id="A1.T4.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.6.6.1.m1.1"><semantics id="A1.T4.6.6.1.m1.1a"><msub id="A1.T4.6.6.1.m1.1.1" xref="A1.T4.6.6.1.m1.1.1.cmml"><mi id="A1.T4.6.6.1.m1.1.1.2" xref="A1.T4.6.6.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.6.6.1.m1.1.1.3" xref="A1.T4.6.6.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.1.m1.1b"><apply id="A1.T4.6.6.1.m1.1.1.cmml" xref="A1.T4.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.6.6.1.m1.1.1.1.cmml" xref="A1.T4.6.6.1.m1.1.1">subscript</csymbol><ci id="A1.T4.6.6.1.m1.1.1.2.cmml" xref="A1.T4.6.6.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.6.6.1.m1.1.1.3.cmml" xref="A1.T4.6.6.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">70.09</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.6.6.3.1">\ul</span>44.20</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.6.6.4.1">\ul</span>78.97</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">80.09</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.6.6.6.1">50.17</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.6.6.7.1">\ul</span>78.37</td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.6.6.8.1">79.36</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.6.6.9.1">68.75</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.7.7">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T4.7.7.2" rowspan="6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T4.7.7.2.1">50%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">WandA-sp (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.7.7.1.m1.1"><semantics id="A1.T4.7.7.1.m1.1a"><msub id="A1.T4.7.7.1.m1.1.1" xref="A1.T4.7.7.1.m1.1.1.cmml"><mi id="A1.T4.7.7.1.m1.1.1.2" xref="A1.T4.7.7.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.7.7.1.m1.1.1.3" xref="A1.T4.7.7.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.1.m1.1b"><apply id="A1.T4.7.7.1.m1.1.1.cmml" xref="A1.T4.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.7.7.1.m1.1.1.1.cmml" xref="A1.T4.7.7.1.m1.1.1">subscript</csymbol><ci id="A1.T4.7.7.1.m1.1.1.2.cmml" xref="A1.T4.7.7.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.7.7.1.m1.1.1.3.cmml" xref="A1.T4.7.7.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">53.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">37.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">46.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">35.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">60.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">49.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.7.7.10" style="padding-top:1.25pt;padding-bottom:1.25pt;">49.94</td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8">
<td class="ltx_td ltx_align_left" id="A1.T4.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.8.8.1.m1.1"><semantics id="A1.T4.8.8.1.m1.1a"><msub id="A1.T4.8.8.1.m1.1.1" xref="A1.T4.8.8.1.m1.1.1.cmml"><mi id="A1.T4.8.8.1.m1.1.1.2" xref="A1.T4.8.8.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.8.8.1.m1.1.1.3" xref="A1.T4.8.8.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.1.m1.1b"><apply id="A1.T4.8.8.1.m1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.8.8.1.m1.1.1.1.cmml" xref="A1.T4.8.8.1.m1.1.1">subscript</csymbol><ci id="A1.T4.8.8.1.m1.1.1.2.cmml" xref="A1.T4.8.8.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.8.8.1.m1.1.1.3.cmml" xref="A1.T4.8.8.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">58.96</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">40.60</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.91</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.77</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.8.8.6.1">\ul</span>44.03</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.8.8.7.1">\ul</span>71.09</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.8.8.8.1">\ul</span>57.43</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">59.40</td>
</tr>
<tr class="ltx_tr" id="A1.T4.9.9">
<td class="ltx_td ltx_align_left" id="A1.T4.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{W}" class="ltx_Math" display="inline" id="A1.T4.9.9.1.m1.1"><semantics id="A1.T4.9.9.1.m1.1a"><msub id="A1.T4.9.9.1.m1.1.1" xref="A1.T4.9.9.1.m1.1.1.cmml"><mi id="A1.T4.9.9.1.m1.1.1.2" xref="A1.T4.9.9.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.9.9.1.m1.1.1.3" xref="A1.T4.9.9.1.m1.1.1.3.cmml">W</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.1.m1.1b"><apply id="A1.T4.9.9.1.m1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.9.9.1.m1.1.1.1.cmml" xref="A1.T4.9.9.1.m1.1.1">subscript</csymbol><ci id="A1.T4.9.9.1.m1.1.1.2.cmml" xref="A1.T4.9.9.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.9.9.1.m1.1.1.3.cmml" xref="A1.T4.9.9.1.m1.1.1.3">𝑊</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.1.m1.1c">s_{W}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_W end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.9.9.2.1">\ul</span>63.38</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.9.9.3.1">44.40</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">66.75</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">76.55</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">43.43</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.9.9.7.1">\ul</span>71.09</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">49.79</td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">59.34</td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.10.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">FLAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.10.10.1.m1.1"><semantics id="A1.T4.10.10.1.m1.1a"><msub id="A1.T4.10.10.1.m1.1.1" xref="A1.T4.10.10.1.m1.1.1.cmml"><mi id="A1.T4.10.10.1.m1.1.1.2" xref="A1.T4.10.10.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.10.10.1.m1.1.1.3" xref="A1.T4.10.10.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.1.m1.1b"><apply id="A1.T4.10.10.1.m1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.10.10.1.m1.1.1.1.cmml" xref="A1.T4.10.10.1.m1.1.1">subscript</csymbol><ci id="A1.T4.10.10.1.m1.1.1.2.cmml" xref="A1.T4.10.10.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.10.10.1.m1.1.1.3.cmml" xref="A1.T4.10.10.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">55.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">38.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">53.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">33.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">58.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">56.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.10.10.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">51.78</td>
</tr>
<tr class="ltx_tr" id="A1.T4.11.11">
<td class="ltx_td ltx_align_left" id="A1.T4.11.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.11.11.1.m1.1"><semantics id="A1.T4.11.11.1.m1.1a"><msub id="A1.T4.11.11.1.m1.1.1" xref="A1.T4.11.11.1.m1.1.1.cmml"><mi id="A1.T4.11.11.1.m1.1.1.2" xref="A1.T4.11.11.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.11.11.1.m1.1.1.3" xref="A1.T4.11.11.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.11.11.1.m1.1b"><apply id="A1.T4.11.11.1.m1.1.1.cmml" xref="A1.T4.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.11.11.1.m1.1.1.1.cmml" xref="A1.T4.11.11.1.m1.1.1">subscript</csymbol><ci id="A1.T4.11.11.1.m1.1.1.2.cmml" xref="A1.T4.11.11.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.11.11.1.m1.1.1.3.cmml" xref="A1.T4.11.11.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.11.11.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.11.11.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.11.11.2.1">64.56</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">42.00</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.11.11.4.1">68.75</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.11.11.5.1">\ul</span>76.93</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.11.11.6.1">45.05</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.11.11.7.1">71.84</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.8" style="padding-top:1.25pt;padding-bottom:1.25pt;">52.57</td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.9" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.11.11.9.1">\ul</span>60.24</td>
</tr>
<tr class="ltx_tr" id="A1.T4.12.12">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T4.12.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">SEAP-gen (<math alttext="s_{F}" class="ltx_Math" display="inline" id="A1.T4.12.12.1.m1.1"><semantics id="A1.T4.12.12.1.m1.1a"><msub id="A1.T4.12.12.1.m1.1.1" xref="A1.T4.12.12.1.m1.1.1.cmml"><mi id="A1.T4.12.12.1.m1.1.1.2" xref="A1.T4.12.12.1.m1.1.1.2.cmml">s</mi><mi id="A1.T4.12.12.1.m1.1.1.3" xref="A1.T4.12.12.1.m1.1.1.3.cmml">F</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T4.12.12.1.m1.1b"><apply id="A1.T4.12.12.1.m1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T4.12.12.1.m1.1.1.1.cmml" xref="A1.T4.12.12.1.m1.1.1">subscript</csymbol><ci id="A1.T4.12.12.1.m1.1.1.2.cmml" xref="A1.T4.12.12.1.m1.1.1.2">𝑠</ci><ci id="A1.T4.12.12.1.m1.1.1.3.cmml" xref="A1.T4.12.12.1.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.12.12.1.m1.1c">s_{F}</annotation><annotation encoding="application/x-llamapun" id="A1.T4.12.12.1.m1.1d">italic_s start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">62.59</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.12.12.3.1">\ul</span>43.20</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_ERROR undefined" id="A1.T4.12.12.4.1">\ul</span>67.05</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.12.12.5.1">77.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;">41.55</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;">67.93</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.12.12.8.1">66.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.12.12.9" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.12.12.9.1">60.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the zero-shot task performance evaluation on the Llama-2-13B model using different pruning methods (SEAP, FLAP, and WandA) at various pruning ratios (0%, 20%, and 50%).  The performance is measured across several downstream tasks: Winogrande, OBQA, HellaSwag, PIQA, ARC-C, ARC-e, and BoolQ.  A higher score indicates better performance.  The table highlights the best-performing method (bolded) and the second-best (underlined) for each task and pruning ratio, providing a comprehensive comparison of the different pruning techniques' effectiveness on various tasks at different sparsity levels.
> <details>
> <summary>read the caption</summary>
> Table 4: Task performance accuracy on Llama-2-13B under different pruning ratios. A higher ↑ score indicates better performance. The bolded entries represent the highest scoring methods, while the underlined entries represent the second highest scoring methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A1.T5.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Task</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.1.2.1">
<span class="ltx_p" id="A1.T5.1.1.1.2.1.1" style="width:355.7pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1.1.1">Example Prompt</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.2.1.1.1">HellaSwag</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.2.1.2.1">
<span class="ltx_p" id="A1.T5.1.2.1.2.1.1" style="width:355.7pt;">Then, the man writes over the snow covering the window of a car, and a woman wearing winter clothes smiles. Then, the man continues removing the snow on his car.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.3.2.1.1">PIQA</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.3.2.2.1">
<span class="ltx_p" id="A1.T5.1.3.2.2.1.1" style="width:355.7pt;">How do I ready a guinea pig cage for its new occupants? Provide the guinea pig with a cage full of a few inches of bedding made of ripped paper strips, you will also need to supply it with a water bottle and a food dish.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.4.3.1.1">OBQA</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.4.3.2.1">
<span class="ltx_p" id="A1.T5.1.4.3.2.1.1" style="width:355.7pt;">The sun is the source of energy for physical cycles on Earth: plants sprouting, blooming, and wilting.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.5.4.1.1">WinoGrande</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.5.4.2.1">
<span class="ltx_p" id="A1.T5.1.5.4.2.1.1" style="width:355.7pt;">Katrina had the financial means to afford a new car while Monica did not, since Katrina had a high paying job.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.6.5.1.1">ARC</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.6.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.6.5.2.1">
<span class="ltx_p" id="A1.T5.1.6.5.2.1.1" style="width:355.7pt;">One year, the oak trees in a park began producing more acorns than usual. The next year, the population of chipmunks in the park also increased. Which best explains why there were more chipmunks the next year? Food sources increased.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.1.7.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.7.6.1.1">GSM8K</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.7.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.7.6.2.1">
<span class="ltx_p" id="A1.T5.1.7.6.2.1.1" style="width:355.7pt;">Natalia sold clips to 48 of her friends in April, and then she sold half as many clips in May. How many clips did Natalia sell altogether in April and May? Natalia sold 48/2 = 24 clips in May. Natalia sold 48 + 24 = 72 clips altogether in April and May.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="A1.T5.1.8.7.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A1.T5.1.8.7.1.1">BoolQ</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A1.T5.1.8.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.8.7.2.1">
<span class="ltx_p" id="A1.T5.1.8.7.2.1.1" style="width:355.7pt;">All biomass goes through at least some of these steps: it needs to be grown, collected, dried, fermented, distilled, and burned… Does ethanol take more energy to make than it produces? False</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example prompts from seven different tasks used in the paper's experiments. Each task represents a distinct category of natural language understanding challenges (e.g., commonsense reasoning, mathematical reasoning, scientific question answering).  The prompts are constructed to be representative of the style and complexity found in the respective datasets.  The purpose of including these examples is to illustrate the diversity of tasks and the nature of the inputs used to train and evaluate the model's ability to extract task-specific activation patterns.
> <details>
> <summary>read the caption</summary>
> Table 5: Example Prompts from Various Tasks in the Task-Specific Corpus
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1">Class</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.1.2.1.1" style="width:26.2pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.2.1.1.1">Precision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.3.1">
<span class="ltx_p" id="A2.T6.1.1.1.3.1.1" style="width:26.2pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.3.1.1.1">Recall</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.4.1">
<span class="ltx_p" id="A2.T6.1.1.1.4.1.1" style="width:26.2pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.4.1.1.1">F1-Score</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.5.1">
<span class="ltx_p" id="A2.T6.1.1.1.5.1.1" style="width:26.2pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.5.1.1.1">Support</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">hellaswag</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.2.1">
<span class="ltx_p" id="A2.T6.1.2.2.2.1.1" style="width:26.2pt;">0.94</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.3.1">
<span class="ltx_p" id="A2.T6.1.2.2.3.1.1" style="width:26.2pt;">0.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.4.1">
<span class="ltx_p" id="A2.T6.1.2.2.4.1.1" style="width:26.2pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.5.1">
<span class="ltx_p" id="A2.T6.1.2.2.5.1.1" style="width:26.2pt;">236</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">gsm8k</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.2.1">
<span class="ltx_p" id="A2.T6.1.3.3.2.1.1" style="width:26.2pt;">0.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.3.1">
<span class="ltx_p" id="A2.T6.1.3.3.3.1.1" style="width:26.2pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.4.1">
<span class="ltx_p" id="A2.T6.1.3.3.4.1.1" style="width:26.2pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.5.1">
<span class="ltx_p" id="A2.T6.1.3.3.5.1.1" style="width:26.2pt;">233</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">winogrande</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.2.1">
<span class="ltx_p" id="A2.T6.1.4.4.2.1.1" style="width:26.2pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.3.1">
<span class="ltx_p" id="A2.T6.1.4.4.3.1.1" style="width:26.2pt;">0.99</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.4.1">
<span class="ltx_p" id="A2.T6.1.4.4.4.1.1" style="width:26.2pt;">0.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.5.1">
<span class="ltx_p" id="A2.T6.1.4.4.5.1.1" style="width:26.2pt;">218</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">piqa</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.2.1">
<span class="ltx_p" id="A2.T6.1.5.5.2.1.1" style="width:26.2pt;">0.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.3.1">
<span class="ltx_p" id="A2.T6.1.5.5.3.1.1" style="width:26.2pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.4.1">
<span class="ltx_p" id="A2.T6.1.5.5.4.1.1" style="width:26.2pt;">0.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.5.1">
<span class="ltx_p" id="A2.T6.1.5.5.5.1.1" style="width:26.2pt;">201</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">mmlu</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.2.1">
<span class="ltx_p" id="A2.T6.1.6.6.2.1.1" style="width:26.2pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.3.1">
<span class="ltx_p" id="A2.T6.1.6.6.3.1.1" style="width:26.2pt;">0.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.4.1">
<span class="ltx_p" id="A2.T6.1.6.6.4.1.1" style="width:26.2pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.5.1">
<span class="ltx_p" id="A2.T6.1.6.6.5.1.1" style="width:26.2pt;">233</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.1.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">ai2_arc</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.2.1">
<span class="ltx_p" id="A2.T6.1.7.7.2.1.1" style="width:26.2pt;">0.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.3.1">
<span class="ltx_p" id="A2.T6.1.7.7.3.1.1" style="width:26.2pt;">0.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.4.1">
<span class="ltx_p" id="A2.T6.1.7.7.4.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.5.1">
<span class="ltx_p" id="A2.T6.1.7.7.5.1.1" style="width:26.2pt;">222</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.8.8.1.1">Accuracy</span></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="4" id="A2.T6.1.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">0.93 (1343)</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.1.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.9.9.1.1">Macro avg</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.2.1">
<span class="ltx_p" id="A2.T6.1.9.9.2.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.3.1">
<span class="ltx_p" id="A2.T6.1.9.9.3.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.4.1">
<span class="ltx_p" id="A2.T6.1.9.9.4.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.5.1">
<span class="ltx_p" id="A2.T6.1.9.9.5.1.1" style="width:26.2pt;">1343</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A2.T6.1.10.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.10.10.1.1">Weighted avg</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T6.1.10.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.10.10.2.1">
<span class="ltx_p" id="A2.T6.1.10.10.2.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T6.1.10.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.10.10.3.1">
<span class="ltx_p" id="A2.T6.1.10.10.3.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T6.1.10.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.10.10.4.1">
<span class="ltx_p" id="A2.T6.1.10.10.4.1.1" style="width:26.2pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T6.1.10.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.10.10.5.1">
<span class="ltx_p" id="A2.T6.1.10.10.5.1.1" style="width:26.2pt;">1343</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of a task classifier designed to identify the type of downstream task.  The classifier uses a single-layer model trained on embeddings from the 0th layer of the LLM. The results show precision, recall, F1-score, and support for each task category (HellaSwag, GSM8K, Winogrande, PiQA, MMLU, AI2-ARC). Overall accuracy, macro average, and weighted average are also provided, demonstrating the effectiveness and efficiency of the classifier in identifying task types for the subsequent application of task-specific pruning strategies.
> <details>
> <summary>read the caption</summary>
> Table 6: Task classification performance metrics for the proposed task classifier. Precision, recall, and F1-score are reported for each task class, along with the overall accuracy, macro average, and weighted average.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A3.T7.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A3.T7.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.1.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.2.1.1.1">Generated Sentences</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.1.2.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A3.T7.1.2.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.2.1.1.1.1">
<span class="ltx_tr" id="A3.T7.1.2.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.2.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LLaMA-7B</span></span>
<span class="ltx_tr" id="A3.T7.1.2.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.2.1.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">20% Pruned</span></span>
</span></span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.2.1.2.1">
<span class="ltx_p" id="A3.T7.1.2.1.2.1.1" style="width:346.9pt;">AI can create a logo in seconds. But it’s not just a logo that you need to build a brand. A brand is a collection of ideas, emotions, and associations that people have about a product, service, or company. It’s the sum of all the things that make up a brand, and it’s what differentiates one brand from another. The most important thing to remember about branding is that it’s not just about the logo.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.3.2.1.1">
<span class="ltx_p" id="A3.T7.1.3.2.1.1.1" style="width:346.9pt;">What is McDonald’s? McDonald’s is a fast-food restaurant franchise that serves burgers, fries, chicken nuggets, soft drinks, milkshakes, sundaes, salads, wraps, breakfast items (in some restaurants), desserts, and other items. The menu varies by country and region, but there are over 30,000 locations worldwide.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A3.T7.1.4.3.1" rowspan="8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A3.T7.1.4.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T7.1.4.3.1.1.1">
<span class="ltx_tr" id="A3.T7.1.4.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.4.3.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LLaMA-7B</span></span>
<span class="ltx_tr" id="A3.T7.1.4.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T7.1.4.3.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">50% Pruned</span></span>
</span></span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.4.3.2.1">
<span class="ltx_p" id="A3.T7.1.4.3.2.1.1" style="width:346.9pt;">AI can create a logo in seconds. The process of creating logotypes is called typestudy. A Log is a handwritten symbol or group of alphabets used in a script. In 1915, Eric Blake created the typeface Helvetica. It was a revival of handwriting from the Italian Renaissance. The first known example of handwriting is from a cave in Georgia, USA. It is dated 10,000 BCE.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A3.T7.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.5.4.1.1">
<span class="ltx_p" id="A3.T7.1.5.4.1.1.1" style="width:346.9pt;">What is McDonald’s? It is a small inn in an alley, a hundred yards or two from the gates. The tavern’s walls are thick, and it has a steeply pitched roof. Above the door there is carved a dragon’s flicked beak, with the words _Bow of Arrows_ carved in the sill. Inside, the tavern is large and well lit by daylight. There are three stairways leading to the north, all of which are occupied by men in armor.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example sentences generated by the LLaMA-7B language model under different levels of pruning (0%, 20%, and 50%).  It showcases the model's ability to generate coherent text even with a significant reduction in parameters, illustrating the impact of SEAP on maintaining language generation capabilities while reducing model size.
> <details>
> <summary>read the caption</summary>
> Table 7: Generated Sentences by LLaMA-7B with Different Pruning Levels
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A3.T8.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_t" id="A3.T8.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.1.1.2.1">
<span class="ltx_p" id="A3.T8.1.1.1.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.1.2.1.1.1">Generated Sentences</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T8.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T8.1.2.1.1" rowspan="2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A3.T8.1.2.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.1.2.1.1.1.1">
<span class="ltx_tr" id="A3.T8.1.2.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.2.1.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LLaMA-13B</span></span>
<span class="ltx_tr" id="A3.T8.1.2.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.2.1.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">20% Pruned</span></span>
</span></span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T8.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.1.2.1">
<span class="ltx_p" id="A3.T8.1.2.1.2.1.1" style="width:346.9pt;">"AI can create a logo in seconds. But it’s not that simple. There are pros and cons to AI-generated logos. On the one hand, they are quick to create and don’t require a lot of time or resources. On the other hand, they can be generic and lack personality. In this article, we’ll explore the pros and cons of AI-generated logos and how they compare to human-designed logos. "</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T8.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.1.1" style="width:346.9pt;">"What is McDonald’s? McDonald’s is a fast-food hamburger restaurant that serves burgers, fries, chicken nuggets, milkshakes, salads, and breakfast items. The menu is simple and affordable, and the restaurant is known for its cleanliness and friendliness. What is the history of McDonald’s? In 1940, two brothers, Ray Kroc and Richard McDonald, opened the first McDonald’s restaurant in Des Plaines, Illinois."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A3.T8.1.4.3.1" rowspan="11" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="A3.T8.1.4.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="A3.T8.1.4.3.1.1.1">
<span class="ltx_tr" id="A3.T8.1.4.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.4.3.1.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">LLaMA-13B</span></span>
<span class="ltx_tr" id="A3.T8.1.4.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.4.3.1.1.1.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">50% Pruned</span></span>
</span></span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T8.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.3.2.1">
<span class="ltx_p" id="A3.T8.1.4.3.2.1.1" style="width:346.9pt;">"AI can create a logo in seconds. It’s a matter of fact that the time to create a logo has decreased from 10 days to 24 hours in the last decade. This is due to the development of computer graphics and digital technologies. In the 1990s, the world’s first computer-animated film “Turtle Island” was released in 1990. It took three years to make the film and cost $40 million. The sequel of the franchise, Taz the Stone Age, was released in 1994. It made $ 24 million in box office and gross revenue of $402 million worldwide."</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A3.T8.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.5.4.1.1">
<span class="ltx_p" id="A3.T8.1.5.4.1.1.1" style="width:346.9pt;">"What is McDonald’s? Founded in 1946 by Mac and his brother Dave McDonald in Aberdeen, Scotland as a bar for American servicemen and their friends, the Macdonald family took over the business in 1972. It was renamed The White Rose in 1974 and changed to its current name in 1986 due to the unfortunate similarity of McDonald’s which was registered at the time some 30 miles away. Today the pub serves 1200 pints a week and has live music 6 nights a week with DJ’s playing between breaks."</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays examples of text generated by the LLaMA-13B language model under different levels of pruning (20% and 50%).  It showcases the model's ability to generate coherent and relevant text even with a significant reduction in parameters.  The examples illustrate the impact of pruning on the model's output quality and demonstrate how different levels of sparsity may result in variations in the generated text. The differences highlight the trade-off between model efficiency and the quality of the generated text.
> <details>
> <summary>read the caption</summary>
> Table 8: Generated Sentences by LLaMA-13B with Different Pruning Levels
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07605/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07605/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}