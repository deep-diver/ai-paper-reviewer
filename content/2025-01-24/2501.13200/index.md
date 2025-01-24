---
title: "SRMT: Shared Memory for Multi-agent Lifelong Pathfinding"
summary: "SRMT: Shared Recurrent Memory Transformer boosts multi-agent coordination by implicitly sharing information via a global memory, significantly outperforming baselines in complex pathfinding tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 AIRI",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13200 {{< /keyword >}}
{{< keyword icon="writer" >}} Alsu Sagirova et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13200" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13200" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13200/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-agent systems struggle with effective coordination, especially in decentralized settings with limited communication.  Many existing approaches rely on explicit communication protocols or centralized control, which can be inefficient and limit scalability.  This often leads to deadlocks or suboptimal solutions in complex scenarios. 

This paper proposes SRMT (Shared Recurrent Memory Transformer), a novel approach that addresses these issues.  SRMT uses a shared memory space to enable implicit communication between agents. Each agent maintains its own working memory and updates the shared space, allowing for indirect information exchange and improved coordination.  Experiments demonstrate SRMT's effectiveness in a challenging multi-agent pathfinding task, outperforming traditional methods and showing strong generalization to unseen environments and scalability to larger problems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SRMT uses shared recurrent memory to improve multi-agent coordination without explicit communication. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SRMT significantly outperforms existing methods in various multi-agent pathfinding tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SRMT demonstrates strong generalization abilities and scalability to larger environments and more agents. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces a novel approach to multi-agent coordination using shared memory and transformers**, addressing a critical challenge in multi-agent reinforcement learning.  The findings offer valuable insights into improving decentralized decision-making and show significant performance gains in complex scenarios. This work opens new avenues for researchers to explore more effective coordination mechanisms in distributed AI systems, pushing the boundaries of MARL applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13200/x1.png)

> 🔼 The figure illustrates the architecture of the Shared Recurrent Memory Transformer (SRMT).  The core of SRMT is composed of three key components: the memory head, which updates individual agent memories; a cross-attention mechanism, which enables agents to access a shared memory containing the pooled recurrent memories of all agents; and an action decoder, which produces the agents' actions. Each agent's input consists of its own recurrent memory, a history of its past observations, and its current observation.  This input undergoes self-attention processing before being passed to the cross-attention mechanism, allowing information exchange between agents through the shared memory. The updated agent memories are then fed back into the memory head and the action decoder to generate the next actions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Shared Recurrent Memory Transformer architecture. SRMT pools recurrent memories m⁢e⁢mi,t𝑚𝑒subscript𝑚𝑖𝑡mem_{i,t}italic_m italic_e italic_m start_POSTSUBSCRIPT italic_i , italic_t end_POSTSUBSCRIPT of individual agents at a moment t𝑡titalic_t and provides global access to them via cross-attention.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T1.42">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T1.42.43.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T1.42.43.1.1">Parameter</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T1.42.43.1.2">MAPF (all models)</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T1.42.43.1.3">SRMT LMAPF</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.42.44.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T1.42.44.1.1">Optimizer</th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T1.42.44.1.2">Adam</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T1.42.44.1.3">Adam</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.2.3">Learning rate</th>
<td class="ltx_td ltx_align_left" id="A1.T1.1.1.1"><math alttext="0.00013" class="ltx_Math" display="inline" id="A1.T1.1.1.1.m1.1"><semantics id="A1.T1.1.1.1.m1.1a"><mn id="A1.T1.1.1.1.m1.1.1" xref="A1.T1.1.1.1.m1.1.1.cmml">0.00013</mn><annotation-xml encoding="MathML-Content" id="A1.T1.1.1.1.m1.1b"><cn id="A1.T1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T1.1.1.1.m1.1.1">0.00013</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.1.1.1.m1.1c">0.00013</annotation><annotation encoding="application/x-llamapun" id="A1.T1.1.1.1.m1.1d">0.00013</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.2.2.2"><math alttext="0.00022" class="ltx_Math" display="inline" id="A1.T1.2.2.2.m1.1"><semantics id="A1.T1.2.2.2.m1.1a"><mn id="A1.T1.2.2.2.m1.1.1" xref="A1.T1.2.2.2.m1.1.1.cmml">0.00022</mn><annotation-xml encoding="MathML-Content" id="A1.T1.2.2.2.m1.1b"><cn id="A1.T1.2.2.2.m1.1.1.cmml" type="float" xref="A1.T1.2.2.2.m1.1.1">0.00022</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.2.2.2.m1.1c">0.00022</annotation><annotation encoding="application/x-llamapun" id="A1.T1.2.2.2.m1.1d">0.00022</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.42.45.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.42.45.2.1">LR Scheduler</th>
<td class="ltx_td ltx_align_left" id="A1.T1.42.45.2.2">Adaptive KL</td>
<td class="ltx_td ltx_align_left" id="A1.T1.42.45.2.3">Constant</td>
</tr>
<tr class="ltx_tr" id="A1.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.3.3.1">
<math alttext="\gamma" class="ltx_Math" display="inline" id="A1.T1.3.3.1.m1.1"><semantics id="A1.T1.3.3.1.m1.1a"><mi id="A1.T1.3.3.1.m1.1.1" xref="A1.T1.3.3.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="A1.T1.3.3.1.m1.1b"><ci id="A1.T1.3.3.1.m1.1.1.cmml" xref="A1.T1.3.3.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.3.3.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="A1.T1.3.3.1.m1.1d">italic_γ</annotation></semantics></math> (discount factor)</th>
<td class="ltx_td ltx_align_left" id="A1.T1.4.4.2"><math alttext="0.9716" class="ltx_Math" display="inline" id="A1.T1.4.4.2.m1.1"><semantics id="A1.T1.4.4.2.m1.1a"><mn id="A1.T1.4.4.2.m1.1.1" xref="A1.T1.4.4.2.m1.1.1.cmml">0.9716</mn><annotation-xml encoding="MathML-Content" id="A1.T1.4.4.2.m1.1b"><cn id="A1.T1.4.4.2.m1.1.1.cmml" type="float" xref="A1.T1.4.4.2.m1.1.1">0.9716</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.4.4.2.m1.1c">0.9716</annotation><annotation encoding="application/x-llamapun" id="A1.T1.4.4.2.m1.1d">0.9716</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.5.5.3"><math alttext="0.9756" class="ltx_Math" display="inline" id="A1.T1.5.5.3.m1.1"><semantics id="A1.T1.5.5.3.m1.1a"><mn id="A1.T1.5.5.3.m1.1.1" xref="A1.T1.5.5.3.m1.1.1.cmml">0.9756</mn><annotation-xml encoding="MathML-Content" id="A1.T1.5.5.3.m1.1b"><cn id="A1.T1.5.5.3.m1.1.1.cmml" type="float" xref="A1.T1.5.5.3.m1.1.1">0.9756</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.5.5.3.m1.1c">0.9756</annotation><annotation encoding="application/x-llamapun" id="A1.T1.5.5.3.m1.1d">0.9756</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.6.6.2">Recurrence rollout</th>
<td class="ltx_td ltx_align_left" id="A1.T1.6.6.1"><math alttext="8" class="ltx_Math" display="inline" id="A1.T1.6.6.1.m1.1"><semantics id="A1.T1.6.6.1.m1.1a"><mn id="A1.T1.6.6.1.m1.1.1" xref="A1.T1.6.6.1.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T1.6.6.1.m1.1b"><cn id="A1.T1.6.6.1.m1.1.1.cmml" type="integer" xref="A1.T1.6.6.1.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.6.6.1.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T1.6.6.1.m1.1d">8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.6.6.3">-</td>
</tr>
<tr class="ltx_tr" id="A1.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.8.8.3">Clip ratio</th>
<td class="ltx_td ltx_align_left" id="A1.T1.7.7.1"><math alttext="0.2" class="ltx_Math" display="inline" id="A1.T1.7.7.1.m1.1"><semantics id="A1.T1.7.7.1.m1.1a"><mn id="A1.T1.7.7.1.m1.1.1" xref="A1.T1.7.7.1.m1.1.1.cmml">0.2</mn><annotation-xml encoding="MathML-Content" id="A1.T1.7.7.1.m1.1b"><cn id="A1.T1.7.7.1.m1.1.1.cmml" type="float" xref="A1.T1.7.7.1.m1.1.1">0.2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.7.7.1.m1.1c">0.2</annotation><annotation encoding="application/x-llamapun" id="A1.T1.7.7.1.m1.1d">0.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.8.8.2"><math alttext="0.2" class="ltx_Math" display="inline" id="A1.T1.8.8.2.m1.1"><semantics id="A1.T1.8.8.2.m1.1a"><mn id="A1.T1.8.8.2.m1.1.1" xref="A1.T1.8.8.2.m1.1.1.cmml">0.2</mn><annotation-xml encoding="MathML-Content" id="A1.T1.8.8.2.m1.1b"><cn id="A1.T1.8.8.2.m1.1.1.cmml" type="float" xref="A1.T1.8.8.2.m1.1.1">0.2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.8.8.2.m1.1c">0.2</annotation><annotation encoding="application/x-llamapun" id="A1.T1.8.8.2.m1.1d">0.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.10.10.3">Batch size</th>
<td class="ltx_td ltx_align_left" id="A1.T1.9.9.1"><math alttext="16384" class="ltx_Math" display="inline" id="A1.T1.9.9.1.m1.1"><semantics id="A1.T1.9.9.1.m1.1a"><mn id="A1.T1.9.9.1.m1.1.1" xref="A1.T1.9.9.1.m1.1.1.cmml">16384</mn><annotation-xml encoding="MathML-Content" id="A1.T1.9.9.1.m1.1b"><cn id="A1.T1.9.9.1.m1.1.1.cmml" type="integer" xref="A1.T1.9.9.1.m1.1.1">16384</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.9.9.1.m1.1c">16384</annotation><annotation encoding="application/x-llamapun" id="A1.T1.9.9.1.m1.1d">16384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.10.10.2"><math alttext="16384" class="ltx_Math" display="inline" id="A1.T1.10.10.2.m1.1"><semantics id="A1.T1.10.10.2.m1.1a"><mn id="A1.T1.10.10.2.m1.1.1" xref="A1.T1.10.10.2.m1.1.1.cmml">16384</mn><annotation-xml encoding="MathML-Content" id="A1.T1.10.10.2.m1.1b"><cn id="A1.T1.10.10.2.m1.1.1.cmml" type="integer" xref="A1.T1.10.10.2.m1.1.1">16384</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.10.10.2.m1.1c">16384</annotation><annotation encoding="application/x-llamapun" id="A1.T1.10.10.2.m1.1d">16384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.12.12.3">Optimization epochs</th>
<td class="ltx_td ltx_align_left" id="A1.T1.11.11.1"><math alttext="1" class="ltx_Math" display="inline" id="A1.T1.11.11.1.m1.1"><semantics id="A1.T1.11.11.1.m1.1a"><mn id="A1.T1.11.11.1.m1.1.1" xref="A1.T1.11.11.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T1.11.11.1.m1.1b"><cn id="A1.T1.11.11.1.m1.1.1.cmml" type="integer" xref="A1.T1.11.11.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.11.11.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T1.11.11.1.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.12.12.2"><math alttext="1" class="ltx_Math" display="inline" id="A1.T1.12.12.2.m1.1"><semantics id="A1.T1.12.12.2.m1.1a"><mn id="A1.T1.12.12.2.m1.1.1" xref="A1.T1.12.12.2.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T1.12.12.2.m1.1b"><cn id="A1.T1.12.12.2.m1.1.1.cmml" type="integer" xref="A1.T1.12.12.2.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.12.12.2.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T1.12.12.2.m1.1d">1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.14.14.3">Entropy coefficient</th>
<td class="ltx_td ltx_align_left" id="A1.T1.13.13.1"><math alttext="0.0156" class="ltx_Math" display="inline" id="A1.T1.13.13.1.m1.1"><semantics id="A1.T1.13.13.1.m1.1a"><mn id="A1.T1.13.13.1.m1.1.1" xref="A1.T1.13.13.1.m1.1.1.cmml">0.0156</mn><annotation-xml encoding="MathML-Content" id="A1.T1.13.13.1.m1.1b"><cn id="A1.T1.13.13.1.m1.1.1.cmml" type="float" xref="A1.T1.13.13.1.m1.1.1">0.0156</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.13.13.1.m1.1c">0.0156</annotation><annotation encoding="application/x-llamapun" id="A1.T1.13.13.1.m1.1d">0.0156</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.14.14.2"><math alttext="0.023" class="ltx_Math" display="inline" id="A1.T1.14.14.2.m1.1"><semantics id="A1.T1.14.14.2.m1.1a"><mn id="A1.T1.14.14.2.m1.1.1" xref="A1.T1.14.14.2.m1.1.1.cmml">0.023</mn><annotation-xml encoding="MathML-Content" id="A1.T1.14.14.2.m1.1b"><cn id="A1.T1.14.14.2.m1.1.1.cmml" type="float" xref="A1.T1.14.14.2.m1.1.1">0.023</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.14.14.2.m1.1c">0.023</annotation><annotation encoding="application/x-llamapun" id="A1.T1.14.14.2.m1.1d">0.023</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.16.16.3">Value loss coefficient</th>
<td class="ltx_td ltx_align_left" id="A1.T1.15.15.1"><math alttext="0.5" class="ltx_Math" display="inline" id="A1.T1.15.15.1.m1.1"><semantics id="A1.T1.15.15.1.m1.1a"><mn id="A1.T1.15.15.1.m1.1.1" xref="A1.T1.15.15.1.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="A1.T1.15.15.1.m1.1b"><cn id="A1.T1.15.15.1.m1.1.1.cmml" type="float" xref="A1.T1.15.15.1.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.15.15.1.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T1.15.15.1.m1.1d">0.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.16.16.2"><math alttext="0.5" class="ltx_Math" display="inline" id="A1.T1.16.16.2.m1.1"><semantics id="A1.T1.16.16.2.m1.1a"><mn id="A1.T1.16.16.2.m1.1.1" xref="A1.T1.16.16.2.m1.1.1.cmml">0.5</mn><annotation-xml encoding="MathML-Content" id="A1.T1.16.16.2.m1.1b"><cn id="A1.T1.16.16.2.m1.1.1.cmml" type="float" xref="A1.T1.16.16.2.m1.1.1">0.5</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.16.16.2.m1.1c">0.5</annotation><annotation encoding="application/x-llamapun" id="A1.T1.16.16.2.m1.1d">0.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.17.17.1">GAE<sub class="ltx_sub" id="A1.T1.17.17.1.1"><span class="ltx_text ltx_font_italic" id="A1.T1.17.17.1.1.1">λ</span></sub>
</th>
<td class="ltx_td ltx_align_left" id="A1.T1.18.18.2"><math alttext="0.95" class="ltx_Math" display="inline" id="A1.T1.18.18.2.m1.1"><semantics id="A1.T1.18.18.2.m1.1a"><mn id="A1.T1.18.18.2.m1.1.1" xref="A1.T1.18.18.2.m1.1.1.cmml">0.95</mn><annotation-xml encoding="MathML-Content" id="A1.T1.18.18.2.m1.1b"><cn id="A1.T1.18.18.2.m1.1.1.cmml" type="float" xref="A1.T1.18.18.2.m1.1.1">0.95</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.18.18.2.m1.1c">0.95</annotation><annotation encoding="application/x-llamapun" id="A1.T1.18.18.2.m1.1d">0.95</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.19.19.3"><math alttext="0.95" class="ltx_Math" display="inline" id="A1.T1.19.19.3.m1.1"><semantics id="A1.T1.19.19.3.m1.1a"><mn id="A1.T1.19.19.3.m1.1.1" xref="A1.T1.19.19.3.m1.1.1.cmml">0.95</mn><annotation-xml encoding="MathML-Content" id="A1.T1.19.19.3.m1.1b"><cn id="A1.T1.19.19.3.m1.1.1.cmml" type="float" xref="A1.T1.19.19.3.m1.1.1">0.95</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.19.19.3.m1.1c">0.95</annotation><annotation encoding="application/x-llamapun" id="A1.T1.19.19.3.m1.1d">0.95</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T1.21.21.3">MLP hidden size</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T1.20.20.1"><math alttext="16" class="ltx_Math" display="inline" id="A1.T1.20.20.1.m1.1"><semantics id="A1.T1.20.20.1.m1.1a"><mn id="A1.T1.20.20.1.m1.1.1" xref="A1.T1.20.20.1.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T1.20.20.1.m1.1b"><cn id="A1.T1.20.20.1.m1.1.1.cmml" type="integer" xref="A1.T1.20.20.1.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.20.20.1.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T1.20.20.1.m1.1d">16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T1.21.21.2"><math alttext="512" class="ltx_Math" display="inline" id="A1.T1.21.21.2.m1.1"><semantics id="A1.T1.21.21.2.m1.1a"><mn id="A1.T1.21.21.2.m1.1.1" xref="A1.T1.21.21.2.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T1.21.21.2.m1.1b"><cn id="A1.T1.21.21.2.m1.1.1.cmml" type="integer" xref="A1.T1.21.21.2.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.21.21.2.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T1.21.21.2.m1.1d">512</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.23.23.3">ResNet residual blocks</th>
<td class="ltx_td ltx_align_left" id="A1.T1.22.22.1"><math alttext="1" class="ltx_Math" display="inline" id="A1.T1.22.22.1.m1.1"><semantics id="A1.T1.22.22.1.m1.1a"><mn id="A1.T1.22.22.1.m1.1.1" xref="A1.T1.22.22.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A1.T1.22.22.1.m1.1b"><cn id="A1.T1.22.22.1.m1.1.1.cmml" type="integer" xref="A1.T1.22.22.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.22.22.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A1.T1.22.22.1.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.23.23.2"><math alttext="8" class="ltx_Math" display="inline" id="A1.T1.23.23.2.m1.1"><semantics id="A1.T1.23.23.2.m1.1a"><mn id="A1.T1.23.23.2.m1.1.1" xref="A1.T1.23.23.2.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T1.23.23.2.m1.1b"><cn id="A1.T1.23.23.2.m1.1.1.cmml" type="integer" xref="A1.T1.23.23.2.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.23.23.2.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T1.23.23.2.m1.1d">8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.25.25.3">ResNet filters</th>
<td class="ltx_td ltx_align_left" id="A1.T1.24.24.1"><math alttext="8" class="ltx_Math" display="inline" id="A1.T1.24.24.1.m1.1"><semantics id="A1.T1.24.24.1.m1.1a"><mn id="A1.T1.24.24.1.m1.1.1" xref="A1.T1.24.24.1.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T1.24.24.1.m1.1b"><cn id="A1.T1.24.24.1.m1.1.1.cmml" type="integer" xref="A1.T1.24.24.1.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.24.24.1.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T1.24.24.1.m1.1d">8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.25.25.2"><math alttext="64" class="ltx_Math" display="inline" id="A1.T1.25.25.2.m1.1"><semantics id="A1.T1.25.25.2.m1.1a"><mn id="A1.T1.25.25.2.m1.1.1" xref="A1.T1.25.25.2.m1.1.1.cmml">64</mn><annotation-xml encoding="MathML-Content" id="A1.T1.25.25.2.m1.1b"><cn id="A1.T1.25.25.2.m1.1.1.cmml" type="integer" xref="A1.T1.25.25.2.m1.1.1">64</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.25.25.2.m1.1c">64</annotation><annotation encoding="application/x-llamapun" id="A1.T1.25.25.2.m1.1d">64</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.27.27.3">Attention hidden size</th>
<td class="ltx_td ltx_align_left" id="A1.T1.26.26.1"><math alttext="16" class="ltx_Math" display="inline" id="A1.T1.26.26.1.m1.1"><semantics id="A1.T1.26.26.1.m1.1a"><mn id="A1.T1.26.26.1.m1.1.1" xref="A1.T1.26.26.1.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T1.26.26.1.m1.1b"><cn id="A1.T1.26.26.1.m1.1.1.cmml" type="integer" xref="A1.T1.26.26.1.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.26.26.1.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T1.26.26.1.m1.1d">16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.27.27.2"><math alttext="512" class="ltx_Math" display="inline" id="A1.T1.27.27.2.m1.1"><semantics id="A1.T1.27.27.2.m1.1a"><mn id="A1.T1.27.27.2.m1.1.1" xref="A1.T1.27.27.2.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T1.27.27.2.m1.1b"><cn id="A1.T1.27.27.2.m1.1.1.cmml" type="integer" xref="A1.T1.27.27.2.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.27.27.2.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T1.27.27.2.m1.1d">512</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.29.29.3">Attention heads</th>
<td class="ltx_td ltx_align_left" id="A1.T1.28.28.1"><math alttext="4" class="ltx_Math" display="inline" id="A1.T1.28.28.1.m1.1"><semantics id="A1.T1.28.28.1.m1.1a"><mn id="A1.T1.28.28.1.m1.1.1" xref="A1.T1.28.28.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T1.28.28.1.m1.1b"><cn id="A1.T1.28.28.1.m1.1.1.cmml" type="integer" xref="A1.T1.28.28.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.28.28.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T1.28.28.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.29.29.2"><math alttext="8" class="ltx_Math" display="inline" id="A1.T1.29.29.2.m1.1"><semantics id="A1.T1.29.29.2.m1.1a"><mn id="A1.T1.29.29.2.m1.1.1" xref="A1.T1.29.29.2.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T1.29.29.2.m1.1b"><cn id="A1.T1.29.29.2.m1.1.1.cmml" type="integer" xref="A1.T1.29.29.2.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.29.29.2.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T1.29.29.2.m1.1d">8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.30.30.2">GRU hidden size</th>
<td class="ltx_td ltx_align_left" id="A1.T1.30.30.1"><math alttext="16" class="ltx_Math" display="inline" id="A1.T1.30.30.1.m1.1"><semantics id="A1.T1.30.30.1.m1.1a"><mn id="A1.T1.30.30.1.m1.1.1" xref="A1.T1.30.30.1.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A1.T1.30.30.1.m1.1b"><cn id="A1.T1.30.30.1.m1.1.1.cmml" type="integer" xref="A1.T1.30.30.1.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.30.30.1.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A1.T1.30.30.1.m1.1d">16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.30.30.3">-</td>
</tr>
<tr class="ltx_tr" id="A1.T1.42.46.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.42.46.3.1">Activation function</th>
<td class="ltx_td ltx_align_left" id="A1.T1.42.46.3.2">ReLU</td>
<td class="ltx_td ltx_align_left" id="A1.T1.42.46.3.3">ReLU</td>
</tr>
<tr class="ltx_tr" id="A1.T1.42.47.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.42.47.4.1">Network Initialization</th>
<td class="ltx_td ltx_align_left" id="A1.T1.42.47.4.2">orthogonal</td>
<td class="ltx_td ltx_align_left" id="A1.T1.42.47.4.3">orthogonal</td>
</tr>
<tr class="ltx_tr" id="A1.T1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.32.32.3">Rollout workers</th>
<td class="ltx_td ltx_align_left" id="A1.T1.31.31.1"><math alttext="4" class="ltx_Math" display="inline" id="A1.T1.31.31.1.m1.1"><semantics id="A1.T1.31.31.1.m1.1a"><mn id="A1.T1.31.31.1.m1.1.1" xref="A1.T1.31.31.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T1.31.31.1.m1.1b"><cn id="A1.T1.31.31.1.m1.1.1.cmml" type="integer" xref="A1.T1.31.31.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.31.31.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T1.31.31.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.32.32.2"><math alttext="8" class="ltx_Math" display="inline" id="A1.T1.32.32.2.m1.1"><semantics id="A1.T1.32.32.2.m1.1a"><mn id="A1.T1.32.32.2.m1.1.1" xref="A1.T1.32.32.2.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A1.T1.32.32.2.m1.1b"><cn id="A1.T1.32.32.2.m1.1.1.cmml" type="integer" xref="A1.T1.32.32.2.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.32.32.2.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A1.T1.32.32.2.m1.1d">8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.34.34.3">Envs per worker</th>
<td class="ltx_td ltx_align_left" id="A1.T1.33.33.1"><math alttext="4" class="ltx_Math" display="inline" id="A1.T1.33.33.1.m1.1"><semantics id="A1.T1.33.33.1.m1.1a"><mn id="A1.T1.33.33.1.m1.1.1" xref="A1.T1.33.33.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T1.33.33.1.m1.1b"><cn id="A1.T1.33.33.1.m1.1.1.cmml" type="integer" xref="A1.T1.33.33.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.33.33.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T1.33.33.1.m1.1d">4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.34.34.2"><math alttext="4" class="ltx_Math" display="inline" id="A1.T1.34.34.2.m1.1"><semantics id="A1.T1.34.34.2.m1.1a"><mn id="A1.T1.34.34.2.m1.1.1" xref="A1.T1.34.34.2.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A1.T1.34.34.2.m1.1b"><cn id="A1.T1.34.34.2.m1.1.1.cmml" type="integer" xref="A1.T1.34.34.2.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.34.34.2.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A1.T1.34.34.2.m1.1d">4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.36.36.3">Training steps</th>
<td class="ltx_td ltx_align_left" id="A1.T1.35.35.1"><math alttext="2\times 10^{7}" class="ltx_Math" display="inline" id="A1.T1.35.35.1.m1.1"><semantics id="A1.T1.35.35.1.m1.1a"><mrow id="A1.T1.35.35.1.m1.1.1" xref="A1.T1.35.35.1.m1.1.1.cmml"><mn id="A1.T1.35.35.1.m1.1.1.2" xref="A1.T1.35.35.1.m1.1.1.2.cmml">2</mn><mo id="A1.T1.35.35.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T1.35.35.1.m1.1.1.1.cmml">×</mo><msup id="A1.T1.35.35.1.m1.1.1.3" xref="A1.T1.35.35.1.m1.1.1.3.cmml"><mn id="A1.T1.35.35.1.m1.1.1.3.2" xref="A1.T1.35.35.1.m1.1.1.3.2.cmml">10</mn><mn id="A1.T1.35.35.1.m1.1.1.3.3" xref="A1.T1.35.35.1.m1.1.1.3.3.cmml">7</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.35.35.1.m1.1b"><apply id="A1.T1.35.35.1.m1.1.1.cmml" xref="A1.T1.35.35.1.m1.1.1"><times id="A1.T1.35.35.1.m1.1.1.1.cmml" xref="A1.T1.35.35.1.m1.1.1.1"></times><cn id="A1.T1.35.35.1.m1.1.1.2.cmml" type="integer" xref="A1.T1.35.35.1.m1.1.1.2">2</cn><apply id="A1.T1.35.35.1.m1.1.1.3.cmml" xref="A1.T1.35.35.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T1.35.35.1.m1.1.1.3.1.cmml" xref="A1.T1.35.35.1.m1.1.1.3">superscript</csymbol><cn id="A1.T1.35.35.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T1.35.35.1.m1.1.1.3.2">10</cn><cn id="A1.T1.35.35.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T1.35.35.1.m1.1.1.3.3">7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.35.35.1.m1.1c">2\times 10^{7}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.35.35.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT 7 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.36.36.2"><math alttext="10^{9}" class="ltx_Math" display="inline" id="A1.T1.36.36.2.m1.1"><semantics id="A1.T1.36.36.2.m1.1a"><msup id="A1.T1.36.36.2.m1.1.1" xref="A1.T1.36.36.2.m1.1.1.cmml"><mn id="A1.T1.36.36.2.m1.1.1.2" xref="A1.T1.36.36.2.m1.1.1.2.cmml">10</mn><mn id="A1.T1.36.36.2.m1.1.1.3" xref="A1.T1.36.36.2.m1.1.1.3.cmml">9</mn></msup><annotation-xml encoding="MathML-Content" id="A1.T1.36.36.2.m1.1b"><apply id="A1.T1.36.36.2.m1.1.1.cmml" xref="A1.T1.36.36.2.m1.1.1"><csymbol cd="ambiguous" id="A1.T1.36.36.2.m1.1.1.1.cmml" xref="A1.T1.36.36.2.m1.1.1">superscript</csymbol><cn id="A1.T1.36.36.2.m1.1.1.2.cmml" type="integer" xref="A1.T1.36.36.2.m1.1.1.2">10</cn><cn id="A1.T1.36.36.2.m1.1.1.3.cmml" type="integer" xref="A1.T1.36.36.2.m1.1.1.3">9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.36.36.2.m1.1c">10^{9}</annotation><annotation encoding="application/x-llamapun" id="A1.T1.36.36.2.m1.1d">10 start_POSTSUPERSCRIPT 9 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.38.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T1.38.38.3">Episode length</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T1.37.37.1"><math alttext="512" class="ltx_Math" display="inline" id="A1.T1.37.37.1.m1.1"><semantics id="A1.T1.37.37.1.m1.1a"><mn id="A1.T1.37.37.1.m1.1.1" xref="A1.T1.37.37.1.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T1.37.37.1.m1.1b"><cn id="A1.T1.37.37.1.m1.1.1.cmml" type="integer" xref="A1.T1.37.37.1.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.37.37.1.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T1.37.37.1.m1.1d">512</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T1.38.38.2"><math alttext="512" class="ltx_Math" display="inline" id="A1.T1.38.38.2.m1.1"><semantics id="A1.T1.38.38.2.m1.1a"><mn id="A1.T1.38.38.2.m1.1.1" xref="A1.T1.38.38.2.m1.1.1.cmml">512</mn><annotation-xml encoding="MathML-Content" id="A1.T1.38.38.2.m1.1b"><cn id="A1.T1.38.38.2.m1.1.1.cmml" type="integer" xref="A1.T1.38.38.2.m1.1.1">512</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.38.38.2.m1.1c">512</annotation><annotation encoding="application/x-llamapun" id="A1.T1.38.38.2.m1.1d">512</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.40.40.3">Observation patch</th>
<td class="ltx_td ltx_align_left" id="A1.T1.39.39.1"><math alttext="5\times 5" class="ltx_Math" display="inline" id="A1.T1.39.39.1.m1.1"><semantics id="A1.T1.39.39.1.m1.1a"><mrow id="A1.T1.39.39.1.m1.1.1" xref="A1.T1.39.39.1.m1.1.1.cmml"><mn id="A1.T1.39.39.1.m1.1.1.2" xref="A1.T1.39.39.1.m1.1.1.2.cmml">5</mn><mo id="A1.T1.39.39.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T1.39.39.1.m1.1.1.1.cmml">×</mo><mn id="A1.T1.39.39.1.m1.1.1.3" xref="A1.T1.39.39.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.39.39.1.m1.1b"><apply id="A1.T1.39.39.1.m1.1.1.cmml" xref="A1.T1.39.39.1.m1.1.1"><times id="A1.T1.39.39.1.m1.1.1.1.cmml" xref="A1.T1.39.39.1.m1.1.1.1"></times><cn id="A1.T1.39.39.1.m1.1.1.2.cmml" type="integer" xref="A1.T1.39.39.1.m1.1.1.2">5</cn><cn id="A1.T1.39.39.1.m1.1.1.3.cmml" type="integer" xref="A1.T1.39.39.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.39.39.1.m1.1c">5\times 5</annotation><annotation encoding="application/x-llamapun" id="A1.T1.39.39.1.m1.1d">5 × 5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A1.T1.40.40.2"><math alttext="11\times 11" class="ltx_Math" display="inline" id="A1.T1.40.40.2.m1.1"><semantics id="A1.T1.40.40.2.m1.1a"><mrow id="A1.T1.40.40.2.m1.1.1" xref="A1.T1.40.40.2.m1.1.1.cmml"><mn id="A1.T1.40.40.2.m1.1.1.2" xref="A1.T1.40.40.2.m1.1.1.2.cmml">11</mn><mo id="A1.T1.40.40.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T1.40.40.2.m1.1.1.1.cmml">×</mo><mn id="A1.T1.40.40.2.m1.1.1.3" xref="A1.T1.40.40.2.m1.1.1.3.cmml">11</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T1.40.40.2.m1.1b"><apply id="A1.T1.40.40.2.m1.1.1.cmml" xref="A1.T1.40.40.2.m1.1.1"><times id="A1.T1.40.40.2.m1.1.1.1.cmml" xref="A1.T1.40.40.2.m1.1.1.1"></times><cn id="A1.T1.40.40.2.m1.1.1.2.cmml" type="integer" xref="A1.T1.40.40.2.m1.1.1.2">11</cn><cn id="A1.T1.40.40.2.m1.1.1.3.cmml" type="integer" xref="A1.T1.40.40.2.m1.1.1.3">11</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.40.40.2.m1.1c">11\times 11</annotation><annotation encoding="application/x-llamapun" id="A1.T1.40.40.2.m1.1d">11 × 11</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T1.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T1.42.42.3">Number of agents</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T1.41.41.1"><math alttext="2" class="ltx_Math" display="inline" id="A1.T1.41.41.1.m1.1"><semantics id="A1.T1.41.41.1.m1.1a"><mn id="A1.T1.41.41.1.m1.1.1" xref="A1.T1.41.41.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="A1.T1.41.41.1.m1.1b"><cn id="A1.T1.41.41.1.m1.1.1.cmml" type="integer" xref="A1.T1.41.41.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.41.41.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="A1.T1.41.41.1.m1.1d">2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T1.42.42.2"><math alttext="64" class="ltx_Math" display="inline" id="A1.T1.42.42.2.m1.1"><semantics id="A1.T1.42.42.2.m1.1a"><mn id="A1.T1.42.42.2.m1.1.1" xref="A1.T1.42.42.2.m1.1.1.cmml">64</mn><annotation-xml encoding="MathML-Content" id="A1.T1.42.42.2.m1.1b"><cn id="A1.T1.42.42.2.m1.1.1.cmml" type="integer" xref="A1.T1.42.42.2.m1.1.1">64</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T1.42.42.2.m1.1c">64</annotation><annotation encoding="application/x-llamapun" id="A1.T1.42.42.2.m1.1d">64</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the configurations and hyperparameters used during the training of various models for multi-agent pathfinding tasks, including the Shared Recurrent Memory Transformer (SRMT) and several baseline models.  It provides a comprehensive overview of the settings employed for both MAPF (Multi-Agent Pathfinding) and LMAPF (Lifelong Multi-Agent Pathfinding) experiments, covering aspects such as the optimizer, learning rate, discount factor, recurrent rollout length, batch size, and various network architecture parameters. These details are crucial for understanding and replicating the experimental results presented in the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Models configuration and training hyperparameters.
> </details>





### In-depth insights


#### Shared Memory MARL
Shared memory in multi-agent reinforcement learning (MARL) offers a compelling approach to enhance coordination and cooperation among agents. **By establishing a shared memory space**, agents can implicitly communicate, reducing the reliance on explicit communication mechanisms which can be complex and prone to failure.  This indirect communication allows agents to access information about the global state and the actions of other agents, enabling better decision-making and improved performance, particularly in challenging partially observable environments.  However, efficient management of the shared memory is crucial.  **The size and structure of the shared memory** directly impact performance; an overly large space can lead to decreased efficiency, while an insufficiently sized one restricts information access.  **Furthermore, the mechanisms for updating and accessing the shared memory** need careful consideration. Effective strategies ensure that the information is both relevant and readily available to all agents.  Successfully addressing these design challenges unlocks the potential of shared memory MARL to achieve significantly improved results in complex cooperative scenarios.

#### SRMT Architecture
The SRMT architecture is a novel approach to multi-agent reinforcement learning that leverages a shared recurrent memory transformer.  **Its core innovation lies in the integration of individual agent memories into a globally accessible shared memory space.** This allows agents to implicitly communicate and coordinate their actions without explicit communication channels, thereby mitigating the complexities of traditional MARL communication protocols.  The system's design is decentralized, with each agent maintaining its own recurrent memory and updating it based on local observations and the shared memory content.  **The use of a transformer architecture allows for efficient parallel processing of information from both individual and shared memories**, leading to effective coordination and improved performance, especially in challenging scenarios with sparse rewards or long horizons. The ability to implicitly share information via the shared memory is particularly beneficial in scenarios where explicit communication is difficult or costly.  **This shared memory mechanism significantly enhances coordination and avoids deadlocks** by allowing agents to learn effective implicit communication strategies.  The architecture demonstrates successful application to decentralized multi-agent pathfinding, showcasing its capacity for handling complex and dynamic environments.

#### Bottleneck Experiments
The Bottleneck Experiments section would likely detail a series of controlled tests designed to evaluate the performance of the Shared Recurrent Memory Transformer (SRMT) in scenarios requiring high levels of inter-agent coordination.  The core concept of a bottleneck—a narrow passage that forces agents into close proximity—introduces a crucial challenge: **efficient coordination to avoid deadlocks and collisions**. This setup allows researchers to isolate the impact of SRMT's shared memory mechanism on collision avoidance and overall task completion success rate.  The experiments would probably involve varying the bottleneck's length or complexity to assess the model's scalability and generalization capabilities.  **Performance metrics** such as success rate (all agents reach their goals), individual success rate, and the total number of steps taken would be crucial. The results would be compared against baselines such as traditional multi-agent reinforcement learning approaches lacking a shared memory. A key finding might show **SRMT's superior performance, especially in scenarios with sparse rewards or longer, more challenging bottlenecks**, highlighting the effectiveness of shared memory in enabling implicit communication and coordination amongst agents.

#### LMAPF Generalization
Analyzing lifelong multi-agent pathfinding (LMAPF) generalization reveals crucial aspects of algorithm robustness and real-world applicability.  **Successful generalization implies an agent's ability to adapt to unseen map layouts and agent numbers**, showcasing its learning capabilities beyond the training data.  A strong LMAPF algorithm should exhibit consistent performance across diverse map complexities (e.g., mazes, random, warehouse layouts), demonstrating its adaptability to different spatial challenges. **Evaluating generalization often involves testing on maps larger or structurally different from those encountered during training**; this reveals the algorithm's ability to extrapolate learned strategies to novel scenarios.  Furthermore, evaluating performance with varying numbers of agents assesses the algorithm's scalability and its ability to maintain efficiency and effectiveness in increasingly complex multi-agent environments.  **The presence of unseen obstacles or dynamic elements during testing would provide a more rigorous evaluation of true generalization.** Ultimately, strong LMAPF generalization is vital for deploying these algorithms in dynamic, unpredictable environments where perfect prior knowledge is unrealistic.

#### Future of SRMT
The future of SRMT (Shared Recurrent Memory Transformer) appears bright, given its demonstrated success in multi-agent pathfinding.  **Further research could explore its application in more complex and dynamic environments**, beyond the relatively simple scenarios tested in the paper.  **Scaling SRMT to handle a significantly larger number of agents** is crucial for real-world applications.  This might involve investigating more efficient memory sharing mechanisms and potentially exploring distributed architectures.  **Integrating SRMT with other advanced techniques** such as hierarchical reinforcement learning or model-predictive control could lead to even more robust and effective multi-agent systems.  **Investigating the impact of different reward functions and training methods** on SRMT's performance is also warranted.  Finally, a deeper understanding of the internal workings of the shared memory and how it facilitates coordination among agents could lead to significant improvements and new theoretical insights.  **Addressing the limitations regarding perfect localization and action execution** is crucial to make SRMT applicable to real-world robotic systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13200/x2.png)

> 🔼 This figure shows a simple two-agent coordination task, a bottleneck, where agents must navigate through a narrow passage. The environment consists of two rooms connected by a one-cell-wide corridor. Each agent has a 5x5 field of view and starts in one room, with their goal located in the opposite room.  This setup requires both agents to pass through the corridor, making it a test of coordination.
> <details>
> <summary>read the caption</summary>
> (a) Bottleneck
> </details>



![](https://arxiv.org/html/2501.13200/x3.png)

> 🔼 This image displays a sample maze environment from the POGEMA benchmark used in the experiments.  It shows a complex arrangement of walls and pathways, where agents must navigate to their respective goals while avoiding collisions. The complexity of the maze highlights the challenging nature of the multi-agent pathfinding task.
> <details>
> <summary>read the caption</summary>
> (b) Maze
> </details>



![](https://arxiv.org/html/2501.13200/x4.png)

> 🔼 The image displays a sample environment from the POGEMA benchmark, specifically showcasing a 'Random' map used for testing multi-agent pathfinding algorithms.  The map is a grid-based representation, likely featuring randomly placed obstacles and open spaces that agents must navigate.  The agents' starting points and goals are typically represented by colored shapes, demonstrating the complexity of pathfinding in unstructured environments. This visualization helps illustrate the challenges in coordinating multiple agents through randomly generated obstacles, as opposed to more structured environments such as mazes.
> <details>
> <summary>read the caption</summary>
> (c) Random
> </details>



![](https://arxiv.org/html/2501.13200/x5.png)

> 🔼 This subfigure shows an example of a 'Puzzle' environment from the POGEMA benchmark.  The image displays a grid-based map with obstacles (grey squares) and two agents (colored circles) attempting to reach their respective goals (empty circles of the same color). The layout of the obstacles presents a complex pathfinding challenge, requiring agents to navigate around them and potentially coordinate their movements to avoid collisions and reach their goals efficiently.
> <details>
> <summary>read the caption</summary>
> (d) Puzzle
> </details>



![](https://arxiv.org/html/2501.13200/x6.png)

> 🔼 This image displays a warehouse environment map used in multi-agent pathfinding experiments.  The map shows a complex layout with multiple obstacles and narrow corridors representing a challenging scenario for agents to navigate. The agents need to efficiently plan their routes to reach their respective goals without colliding with each other or the obstacles. This complex layout makes the task more difficult compared to simpler environments, offering a significant challenge for testing multi-agent coordination and pathfinding algorithms.
> <details>
> <summary>read the caption</summary>
> (e) Warehouse
> </details>



![](https://arxiv.org/html/2501.13200/x7.png)

> 🔼 The figure shows a sample map from the MovingAI dataset used in the experiments. MovingAI is a dataset containing diverse and complex maps that are commonly used for evaluating multi-agent pathfinding algorithms. The map is characterized by its intricate layout of obstacles and narrow passages, demanding precise coordination and efficient navigation strategies from the agents.
> <details>
> <summary>read the caption</summary>
> (f) MovingAI
> </details>



![](https://arxiv.org/html/2501.13200/x8.png)

> 🔼 Figure 2 showcases example environments used to evaluate multi-agent pathfinding algorithms. (a) presents a simplified 'Bottleneck' scenario: two agents must navigate a narrow passage to reach their respective goals in opposite rooms, highlighting the need for coordination.  This illustrates a simple, controlled test of coordination abilities. (b) through (f) depict more complex maps from the POGEMA benchmark (Skrynnik et al., 2024a), offering diverse layouts and sizes to assess algorithm generalization and performance across various scenarios. These include mazes, random arrangements, and more structured warehouse and MovingAI maps, evaluating the ability of the tested algorithms to solve pathfinding problems in diverse and more realistic settings.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of environments. (a) Bottleneck task. This is a toy task on coordination. Two agents start in rooms opposite their goals and should coordinate passing the corridor. Agents are shown as solid-colored circles, their goals are empty circles with the same border color. (b)-(f) Maps from POGEMA benchmark (images for POGEMA maps are from (Skrynnik et al., 2024a)). POGEMA allows testing the planning methods’ generalization across different maps and problem sizes.
> </details>



![](https://arxiv.org/html/2501.13200/x9.png)

> 🔼 This figure displays the performance comparison of different multi-agent reinforcement learning (MARL) algorithms on a bottleneck navigation task. The algorithms are evaluated across three reward scenarios: Directional, Moving Negative, and Sparse.  The results show that the Shared Recurrent Memory Transformer (SRMT) significantly outperforms other models, especially in scenarios with sparse rewards or negative rewards for movement. SRMT's superior performance is particularly evident compared to communication-based models (MAMBA, QPLEX) and memory-based models (ATM, RATE, RRNN). Ablation studies using variations of the SRMT (RMT, Attention, Empty, RNN) further highlight the importance of the shared memory mechanism. The metrics used for evaluation include Cooperative Success Rate (CSR), Individual Success Rate (ISR), and Sum-of-Costs (SoC). Higher CSR and ISR values are preferred, while a lower SoC value is desired.
> <details>
> <summary>read the caption</summary>
> Figure 3: SRMT effectively solves the Bottleneck Task with different reward functions. Trained with Directional (positive when moved towards a goal and achieved it) reward, SRMT clearly outperforms the communication (MAMBA, QPLEX) and memory (ATM, RATE, RRNN) baselines. The RMT, Attention, and RNN ablations also solve the task. For the case with the negative reward for movement and no directional reward (Moving Negative) SRMT and RMT without shared memory demonstrate the clear advantage over the memory-less ablations of SRMT (Attention, Empty, RNN) and the communicative and memory baselines (MAMBA, QPLEX, ATM, RATE, RRNN). With the Sparse (on-goal only) reward, SRMT maintains the score while other methods drop. Error bars indicate 95% confidence intervals. For CSR and ISR higher values are better, for SoC – the lower the better.
> </details>



![](https://arxiv.org/html/2501.13200/x10.png)

> 🔼 This figure displays the results of testing the generalization capabilities of different multi-agent pathfinding models on longer corridors than those used during training.  The models were initially trained on corridors ranging from 3 to 30 cells in length and then evaluated on corridors up to 1000 cells. The results show that most models maintain good performance up to a corridor length of 100 cells. However,  the performance of the SRMT model (Shared Recurrent Memory Transformer),  while initially leading for the Sparse reward condition, drops below that of the RMT model (Recurrent Memory Transformer) when the corridor reaches 400 cells.  In contrast, for the Moving Negative reward scenario, SRMT consistently displays the best performance across all three metrics (Cooperative Success Rate, Individual Success Rate, and Sum of Costs).  The shaded area represents the 95% confidence interval.
> <details>
> <summary>read the caption</summary>
> Figure 4: SRMT agents generalize on corridor lengths up to 1000. After training on corridor sizes from 3 to 30 cells all methods were evaluated on longer passages up to 1000. All non-zero performing models show good scaling up to the corridor length of 100. For the Sparse reward, SRMT leads up to 400 and then drops below RMT for collective performance. For the Moving Negative reward, SRMT shows the top-1 performance on all three metrics. The shaded area indicates 95% confidence intervals.
> </details>



![](https://arxiv.org/html/2501.13200/x11.png)

> 🔼 Figure 5 presents a comparison of the SRMT algorithm's performance against several other multi-agent reinforcement learning (MARL) methods across six different environments. The figure shows that SRMT, trained on maze-like environments, exhibits strong generalization capabilities when tested on unseen maps. Notably, SRMT outperforms the MAMBA and QPLEX baselines in most environments, with the exception of the Warehouse environment.  Even in the Warehouse environment (known for its challenging narrow corridors and high congestion), SRMT demonstrates competitiveness.  Specifically, when SRMT incorporates a heuristic path-planning approach (SRMT-FlwrPlan), it surpasses other methods in average throughput, including MAMBA, MATS-LP, QPLEX, and RHCR (a centralized planning-based algorithm).  The results show that training SRMT with a mixture of 64 or 128 agents does not negatively impact its generalization ability. Error bars in the graph represent 95% confidence intervals, providing a measure of uncertainty in the results.
> <details>
> <summary>read the caption</summary>
> Figure 5: SRMT outperforms other MARL methods in different environments. SRMT trained on Mazes shows robust generalization when evaluated on maps not seen during training. SRMT outperforms MARL baselines MAMBA and QPLEX on all maps except the Warehouse environment. Mixed training with 64 or 128 agents (SRMT 64-128) does not affect the generalization abilities of the method. In the Warehouse environment, the average throughput of SRMT with a reward function based on the Follower heuristic path search (SRMT-FlwrPlan) surpasses that of MAMBA, MATS-LP, QPLEX, and RHCR methods. Error bars indicate 95% confidence intervals.
> </details>



![](https://arxiv.org/html/2501.13200/x12.png)

> 🔼 Figure 6 presents a bar chart comparing the performance of different multi-agent pathfinding (MAPF) algorithms across six key metrics: Performance (average throughput), Pathfinding (optimality of individual agent paths), Congestion (agent density), Cooperation (ability to resolve complex scenarios), Out-of-Distribution (generalization to unseen maps), and Scalability (runtime scaling with increasing agent numbers).  The algorithms compared are SRMT (the proposed method), two SRMT variants (SRMT 64-128, using a mixture of 64 and 128 agents during training; and SRMT-FlwrPlan, integrating Follower planning), and several other state-of-the-art methods: MAMBA, QPLEX, Follower, MATS-LP, and RHCR.  The results show that SRMT and its variants perform competitively, especially excelling in Scalability and Pathfinding. Notably, integrating Follower planning into SRMT significantly improves performance in Congestion management.  The centralized planning method RHCR generally exhibits the best performance across multiple metrics, but SRMT and MAMBA are competitive in certain aspects, especially Scalability and Congestion.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of SRMT and other methods across key performance metrics in multi-agent pathfinding. The bar chart compares the performance of SRMT and its variants (SRMT 64-128, SRMT-FlwrPlan) against other methods – MAMBA, QPLEX, Follower, MATS-LP, and RHCR – across six metrics: Performance, Pathfinding, Congestion, Cooperation, Out-of-Distribution, and Scalability. SRMT and its variants demonstrate competitive performance, particularly in Scalability and Pathfinding. When integrated with Follower planning, SRMT performs best in Congestion management. The centralized planning method RHCR leads in several metrics, notably Cooperation, Out-of-distribution, Performance, and Pathfinding, reaching nearly 100%. MAMBA shows strong performance in Congestion management and Scalability.
> </details>



![](https://arxiv.org/html/2501.13200/x13.png)

> 🔼 This figure displays the performance of various multi-agent pathfinding models trained with a dense reward function on a bottleneck task.  The x-axis represents the corridor length, while the y-axis shows the success rate (CSR), individual success rate (ISR), and sum-of-costs (SoC).  The results demonstrate that SRMT consistently outperforms other methods, such as MAMBA, QPLEX, ATM, RATE, RRNN, RMT, Attention, Empty, and RNN, across all three metrics, even as the corridor length increases. The shaded regions represent the 95% confidence intervals, indicating the statistical significance of the results.  The empty core model, which lacks key components of the others, notably struggles at longer corridor lengths.
> <details>
> <summary>read the caption</summary>
> Figure 7: Trained with Dense reward, all models except empty core policy scale with enlarging corridor length. SRMT consistently outperforms baselines both in success rates and in the time needed to solve the task. The shaded area indicates 95% confidence intervals.
> </details>



![](https://arxiv.org/html/2501.13200/x14.png)

> 🔼 Figure 8 displays the results of an experiment comparing different multi-agent reinforcement learning methods on a bottleneck navigation task.  The x-axis represents the length of the corridor, a key factor in the difficulty of the task. The y-axis shows various performance metrics for each model (Cooperative Success Rate (CSR), Individual Success Rate (ISR), and Sum of Costs (SoC)). The Directional reward function was used, which rewards the agents for progressing toward their goals. The plot shows that, under the Directional reward scheme, all the tested models maintain relatively consistent performance across various corridor lengths. The shaded regions represent 95% confidence intervals, indicating the uncertainty associated with each model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: Directional reward training leads to all the methods preserving the scores for all tested corridor lengths. The shaded area indicates 95% confidence intervals.
> </details>



![](https://arxiv.org/html/2501.13200/x15.png)

> 🔼 Figure 9 presents a comparison of the performance of different models on a multi-agent pathfinding task with a 'Directional Negative' reward function. The x-axis represents the length of the corridor the agents need to navigate through, which acts as a measure of task difficulty. The y-axis displays three metrics: Cooperative Success Rate (CSR), Individual Success Rate (ISR), and Sum-of-Costs (SoC). The figure shows that models incorporating a shared recurrent memory mechanism (SRMT) significantly outperform models using vanilla attention mechanisms, particularly as corridor length increases.  This difference is evident across all three performance metrics, with the SRMT achieving the highest scores even for longer corridors. The vanilla attention models struggle to maintain performance as the task difficulty increases, highlighting the effectiveness of SRMT's shared memory in enabling agents to coordinate and solve complex pathfinding challenges. The shaded regions represent the 95% confidence intervals, showing the variability in the results. Overall, this figure demonstrates the superiority of the proposed SRMT architecture, particularly for more challenging multi-agent scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 9: Results of training with Directional Negative reward. Vanilla attention fails to scale at corridor lengths of more than 400, compared to the SRMT which preserves the highest scores. That proves the sufficiency of the proposed SRMT architecture. The shaded area indicates 95% confidence intervals.
> </details>



![](https://arxiv.org/html/2501.13200/x16.png)

> 🔼 This figure displays the results of an experiment evaluating the scalability of the Shared Recurrent Memory Transformer (SRMT) algorithm.  The experiment used MovingAI maps from the POGEMA benchmark. The x-axis represents the number of agents, and the y-axis shows the average throughput achieved.  Different lines represent different algorithms being compared to SRMT. The shaded regions around the lines illustrate the 95% confidence intervals, providing a measure of uncertainty or variability in the results.
> <details>
> <summary>read the caption</summary>
> Figure 10: The evaluation of scalability of SRMT on MovingAI maps from POGEMA benchmark. The shaded area indicates 95% confidence intervals.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13200/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13200/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}