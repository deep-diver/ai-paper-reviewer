---
title: "Language Models can Self-Improve at State-Value Estimation for Better Search"
summary: "Self-Taught Lookahead improves LLM search via self-supervision, matching costly methods at a fraction of the compute!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Georgia Institute of Technology",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02878 {{< /keyword >}}
{{< keyword icon="writer" >}} Ethan Mendes et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02878" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02878" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02878/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Collecting task completion data or human demonstrations for complex reasoning is expensive**, especially in interactive domains. This creates a need for self-supervised methods for policy or value LLMs to avoid ground truth. Prior methods are constrained by the capabilities of base models or require ground truth rewards to guide node selection during search.



This paper introduces **Self-Taught Lookahead (STL), a self-supervised method that uses state-transition dynamics to train a value model** for language model-controlled search. STL matches the performance of frontier LLMs, improves performance by 20%, and reduces costs by 37x compared to previous LLM-based tree search.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Self-Taught Lookahead (STL) enables LLMs to self-improve in search by learning state-transition dynamics without ground truth rewards. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} STL fine-tuning of value models improves performance by up to 20% and matches the performance of frontier LLMs like gpt-4o. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} STL significantly reduces computation costs, achieving up to a 37x reduction compared to previous LLM-based tree search methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is important because it offers a **self-supervised learning method to improve value estimation in LLM-based search**, reducing reliance on costly ground truth data. It presents a cost-effective alternative that **maintains performance and opens new avenues for efficient agent training and deployment**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02878/x1.png)

> 🔼 Figure 1 illustrates the self-taught lookahead (STL) process.  The top-left panel shows the data generation phase, where a tree search explores various states.  For each state encountered, possible successor states are generated using a base policy and the current value model.  The top-middle panel shows how verbal representations of the best action and successor state, along with the value model's reasoning and numerical value, are used to create formatted training examples.  These examples are used to fine-tune an improved value model (top-right panel), which is then used in the next iteration of the algorithm. Finally, the bottom panel demonstrates how the learned value model can evaluate unseen states during search by simulating a single lookahead step, considering the best next action and resulting state.
> <details>
> <summary>read the caption</summary>
> Figure 1: Self-taught lookahead self-improves the value model by learning from state-transition dynamics. During the data generation phase (top left), tree search is used to discover diverse states. For every observed state s𝑠sitalic_s encountered during the search, successor states are expanded using base policy πθsubscript𝜋𝜃\pi_{\theta}italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT and the current value model Vϕksubscript𝑉subscriptitalic-ϕ𝑘V_{\phi_{k}}italic_V start_POSTSUBSCRIPT italic_ϕ start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT end_POSTSUBSCRIPT, and a formatted textual training example is formed using verbal representations of the next best action and successor state, as well as Vϕksubscript𝑉subscriptitalic-ϕ𝑘V_{\phi_{k}}italic_V start_POSTSUBSCRIPT italic_ϕ start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT end_POSTSUBSCRIPT’s outputted value reasoning (r𝑟ritalic_r) and numerical value (v𝑣vitalic_v) (top middle). These examples are used to fine-tune Vϕk+1subscript𝑉subscriptitalic-ϕ𝑘1V_{\phi_{k+1}}italic_V start_POSTSUBSCRIPT italic_ϕ start_POSTSUBSCRIPT italic_k + 1 end_POSTSUBSCRIPT end_POSTSUBSCRIPT, which will be used in the next iteration of the algorithm (top right). Value models learned during self-taught lookahead can be used to evaluate unseen states encountered during search on unseen tasks by simulating a step of lookahead including the next best action and the best successor state s~′superscript~𝑠′\tilde{s}^{\prime}over~ start_ARG italic_s end_ARG start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT (bottom).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.5.6.1.1" style="padding:1.05pt 2.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.1.1" style="font-size:70%;">Method</span></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.6.1.2" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.6.1.2.1"></span><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.2.2" style="font-size:70%;"> <span class="ltx_text" id="S4.T1.5.6.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.6.1.2.2.1.1">
<span class="ltx_tr" id="S4.T1.5.6.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.2.2.1.1.1.1" style="padding:1.05pt 2.7pt;">Inference</span></span>
<span class="ltx_tr" id="S4.T1.5.6.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.2.2.1.1.2.1" style="padding:1.05pt 2.7pt;">Config</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.6.1.2.2.2"></span></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.6.1.3" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.6.1.3.1"></span><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.3.2" style="font-size:70%;"> <span class="ltx_text" id="S4.T1.5.6.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.6.1.3.2.1.1">
<span class="ltx_tr" id="S4.T1.5.6.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.3.2.1.1.1.1" style="padding:1.05pt 2.7pt;">Human</span></span>
<span class="ltx_tr" id="S4.T1.5.6.1.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.3.2.1.1.2.1" style="padding:1.05pt 2.7pt;">Demo.</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.6.1.3.2.2"></span></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.6.1.4" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.6.1.4.1"></span><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.4.2" style="font-size:70%;"> <span class="ltx_text" id="S4.T1.5.6.1.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.6.1.4.2.1.1">
<span class="ltx_tr" id="S4.T1.5.6.1.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.4.2.1.1.1.1" style="padding:1.05pt 2.7pt;">GT</span></span>
<span class="ltx_tr" id="S4.T1.5.6.1.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.4.2.1.1.2.1" style="padding:1.05pt 2.7pt;">Reward</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.6.1.4.2.2"></span></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.5.6.1.5" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.6.1.5.1"></span><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.5.2" style="font-size:70%;"> <span class="ltx_text" id="S4.T1.5.6.1.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.6.1.5.2.1.1">
<span class="ltx_tr" id="S4.T1.5.6.1.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.5.2.1.1.1.1" style="padding:1.05pt 2.7pt;">Env.</span></span>
<span class="ltx_tr" id="S4.T1.5.6.1.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.5.2.1.1.2.1" style="padding:1.05pt 2.7pt;">Obs.</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.6.1.5.2.2"></span></span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.6.1.6" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.6.1.6.1"></span><span class="ltx_text ltx_font_bold" id="S4.T1.5.6.1.6.2" style="font-size:70%;"> <span class="ltx_text" id="S4.T1.5.6.1.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.6.1.6.2.1.1">
<span class="ltx_tr" id="S4.T1.5.6.1.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.5.6.1.6.2.1.1.1.1" style="padding:1.05pt 2.7pt;">FT</span></span>
</span></span><span class="ltx_text" id="S4.T1.5.6.1.6.2.2"></span></span>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.5.7.2.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.7.2.1.1" style="font-size:70%;">Reflexion </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.5.7.2.1.2.1" style="font-size:70%;">(</span>Shinn et al.<span class="ltx_text" id="S4.T1.5.7.2.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib38" title="">2024</a><span class="ltx_text" id="S4.T1.5.7.2.1.4.3" style="font-size:70%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.7.2.2.1" style="font-size:70%;">—</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.7.2.3.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.7.2.4.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.5.7.2.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.7.2.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.7.2.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.7.2.6.1" style="font-size:70%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.8.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.8.3.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.8.3.1.1" style="font-size:70%;">LATS </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.5.8.3.1.2.1" style="font-size:70%;">(</span>Zhou et al.<span class="ltx_text" id="S4.T1.5.8.3.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib56" title="">2024</a><span class="ltx_text" id="S4.T1.5.8.3.1.4.3" style="font-size:70%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.8.3.2.1" style="font-size:70%;">MCTS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.8.3.3.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.8.3.4.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.8.3.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.8.3.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.8.3.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.8.3.6.1" style="font-size:70%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.2" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.1.1.2.1" style="font-size:70%;">IL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.1.1.2.2.1" style="font-size:70%;">(</span>Yao et al.<span class="ltx_text" id="S4.T1.1.1.2.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib47" title="">2022a</a><span class="ltx_text" id="S4.T1.1.1.2.4.3" style="font-size:70%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:70%;">pass@</span><math alttext="3" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mn id="S4.T1.1.1.1.m1.1.1" mathsize="70%" xref="S4.T1.1.1.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><cn id="S4.T1.1.1.1.m1.1.1.cmml" type="integer" xref="S4.T1.1.1.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">3</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.1.1.3.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.1.1.4.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.1.1.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.1.1.6.1" style="font-size:70%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.2" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:70%;">IL+RL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:70%;">(</span>Yao et al.<span class="ltx_text" id="S4.T1.2.2.2.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib47" title="">2022a</a><span class="ltx_text" id="S4.T1.2.2.2.4.3" style="font-size:70%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.2.2.1.1" style="font-size:70%;">pass@</span><math alttext="3" class="ltx_Math" display="inline" id="S4.T1.2.2.1.m1.1"><semantics id="S4.T1.2.2.1.m1.1a"><mn id="S4.T1.2.2.1.m1.1.1" mathsize="70%" xref="S4.T1.2.2.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.1.m1.1b"><cn id="S4.T1.2.2.1.m1.1.1.cmml" type="integer" xref="S4.T1.2.2.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.1.m1.1d">3</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.2.2.3.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.2.2.4.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.2.2.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.2.2.6.1" style="font-size:70%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.9.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.9.4.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.9.4.1.1"></span><span class="ltx_text" id="S4.T1.5.9.4.1.2" style="font-size:70%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.5.9.4.1.2.1">
<span class="ltx_tr" id="S4.T1.5.9.4.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.9.4.1.2.1.1.1" style="padding:1.05pt 2.7pt;">MCTS + DPO</span></span>
<span class="ltx_tr" id="S4.T1.5.9.4.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.5.9.4.1.2.1.2.1" style="padding:1.05pt 2.7pt;"><cite class="ltx_cite ltx_citemacro_citep">(Putta et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib36" title="">2024</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S4.T1.5.9.4.1.3"></span><span class="ltx_text" id="S4.T1.5.9.4.1.4" style="font-size:70%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.9.4.2.1" style="font-size:70%;">MCTS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.9.4.3.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.9.4.4.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.9.4.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.9.4.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.9.4.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.9.4.6.1" style="font-size:70%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3" style="background-color:#D0EDFD;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.3.3.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.2.1" style="font-size:70%;background-color:#D0EDFD;">Greedy Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.1" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.1.1" style="font-size:70%;background-color:#D0EDFD;">Greedy (pass@<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.3.3.1.1.m1.1"><semantics id="S4.T1.3.3.1.1.m1.1a"><mn id="S4.T1.3.3.1.1.m1.1.1" mathbackground="#D0EDFD" xref="S4.T1.3.3.1.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.1.1.m1.1b"><cn id="S4.T1.3.3.1.1.m1.1.1.cmml" type="integer" xref="S4.T1.3.3.1.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.1.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.1.1.m1.1d">3</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.4.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.5.1" style="font-size:70%;background-color:#D0EDFD;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.3.3.6.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4" style="background-color:#D0EDFD;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.4.4.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.2.1" style="font-size:70%;background-color:#D0EDFD;">MCTS Baseline</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.1" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.1.1" style="font-size:70%;background-color:#D0EDFD;">MCTS (pass@<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.4.4.1.1.m1.1"><semantics id="S4.T1.4.4.1.1.m1.1a"><mn id="S4.T1.4.4.1.1.m1.1.1" mathbackground="#D0EDFD" xref="S4.T1.4.4.1.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.1.1.m1.1b"><cn id="S4.T1.4.4.1.1.m1.1.1.cmml" type="integer" xref="S4.T1.4.4.1.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.1.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.1.1.m1.1d">3</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.3.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.4.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.5.1" style="font-size:70%;background-color:#D0EDFD;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.4.4.6.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5" style="background-color:#D0EDFD;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.5.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.2.1" style="font-size:70%;background-color:#D0EDFD;">STL <span class="ltx_text ltx_font_bold" id="S4.T1.5.5.2.1.1">(Ours)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.1" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.1.1" style="font-size:70%;background-color:#D0EDFD;">Greedy (pass@<math alttext="3" class="ltx_Math" display="inline" id="S4.T1.5.5.1.1.m1.1"><semantics id="S4.T1.5.5.1.1.m1.1a"><mn id="S4.T1.5.5.1.1.m1.1.1" mathbackground="#D0EDFD" xref="S4.T1.5.5.1.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.1.1.m1.1b"><cn id="S4.T1.5.5.1.1.m1.1.1.cmml" type="integer" xref="S4.T1.5.5.1.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.1.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.1.1.m1.1d">3</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.3.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.4.1" style="font-size:70%;background-color:#D0EDFD;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.5.1" style="font-size:70%;background-color:#D0EDFD;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.5.6.1" style="font-size:70%;background-color:#D0EDFD;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.10.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.5.10.5.1" style="padding:1.05pt 2.7pt;">
<span class="ltx_text" id="S4.T1.5.10.5.1.1" style="font-size:70%;">Expert </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.5.10.5.1.2.1" style="font-size:70%;">(</span>Yao et al.<span class="ltx_text" id="S4.T1.5.10.5.1.3.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.02878v1#bib.bib47" title="">2022a</a><span class="ltx_text" id="S4.T1.5.10.5.1.4.3" style="font-size:70%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.2" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.10.5.2.1" style="font-size:70%;">—</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.3" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.10.5.3.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.4" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.10.5.4.1" style="font-size:70%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.5.10.5.5" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.10.5.5.1" style="font-size:70%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.5.10.5.6" style="padding:1.05pt 2.7pt;"><span class="ltx_text" id="S4.T1.5.10.5.6.1" style="font-size:70%;">—</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a detailed comparison of various methods used for the WebShop task, a benchmark for evaluating agents' performance in interactive web environments.  Each method is analyzed across several key aspects.  These include the specific language models employed (both for policy and value), the inference configuration used during the search process, and the reliance on various types of training data.  Specifically, the table indicates whether each method utilizes human demonstrations, ground truth rewards, and environmental observations in its training or inference.  It also notes whether fine-tuning is involved. Notably, a separate section highlights methods that operate in a 'Reward and Demo Free' setting, where only environmental observations are available. This distinction allows for a clear comparison of methods' capabilities under different data availability constraints.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of methods for the WebShop task. For each method, the models and inference configuration are listed along with the usage of human demonstrations, ground truth rewards, environmental observations, and fine-tuning marked with ✓ (used) and ✗ (unused). In the Reward and Demo Free setting, only environment observations are accessible.
> </details>





### In-depth insights


#### Self-Taught STL
**Self-Taught Lookahead (STL)** presents a novel approach to improve LLM value models without ground truth task completion rewards or human intervention, particularly crucial in complex multi-step reasoning tasks. It is unique as it enables self-improvement by bootstrapping from an initial value function and leveraging state-transition dynamics. The algorithm generates self-improvement data through single-step lookahead in a tree search, refining state values akin to the Bellman update but without explicit environment rewards. It captures the mechanics of traditional RL by training a value model to predict the next best action, resulting state, and the rationale for the state's value. This is better than prior methods that utilize ground truth. Self-taught lookahead effectively transfers computation from expensive large closed-source models to cheaper open-source alternatives.

#### LM Value Models
While the paper doesn't have a specific section titled "LM Value Models," it extensively explores how **Large Language Models (LLMs) can be leveraged to estimate state values** in the context of tree search for complex reasoning tasks. The core idea revolves around using an LLM as a value function, guiding the search process by predicting the utility of different states. The authors introduce "Self-Taught Lookahead" (STL), a self-supervised method where the LLM bootstraps its value estimation by learning from state-transition dynamics without relying on ground truth rewards. This approach involves **fine-tuning the LLM to reason about the utility of a state**, predict the next best action, and generate a rationale for its value assessment. By explicitly incorporating rationales, the LLM can capture domain-specific state transitions more effectively, improving its ability to assign accurate values to states. Furthermore, the paper demonstrates that LLMs can replace computationally expensive components by generating proxy rewards, and the **value models can be made with low cost and smaller models**.

#### Action Rationale
In the realm of language model-driven search and self-improvement, the concept of “action rationale” emerges as a critical component. Instead of merely focusing on the numerical value or score assigned to a state during tree search, **explicitly capturing and learning from the reasoning behind state transitions enhances the model's understanding of the environment's dynamics.** This involves generating rationales that explain the outcome of taking a specific action, detailing the resulting successor state and the rationale for its assigned value. This approach diverges from traditional methods that solely rely on numerical rewards, enabling the model to leverage the rich information encoded in natural language. **By fine-tuning the value model on these action-outcome rationales, the model gains the ability to predict the consequences of actions** and integrate this prediction into its value estimates. This not only improves accuracy but also fosters greater interpretability, as the model can articulate the reasoning behind its decisions. The action-outcome rationales capture **which action yielded the best successor state and why the successor state was assigned a high value by V**.

#### WebShop Pareto
Analyzing a hypothetical "WebShop Pareto" section of a research paper, one would expect it to delve into the **Pareto optimality** of different approaches within the WebShop environment. This likely involves examining the trade-offs between various performance metrics such as **task completion rate, cost, environmental impact (number of states visited), and computational efficiency**. The section might present a **Pareto frontier**, visually demonstrating the methods that offer the best balance between these competing objectives, where no improvement can be made in one metric without sacrificing another. A key focus would be on identifying approaches that achieve **high task success with minimal computational resources and environmental interaction**, reflecting a shift towards more sustainable and efficient agent designs. The section might also analyze why certain methods fall short of the Pareto frontier, identifying bottlenecks or inefficiencies that hinder their overall performance. Furthermore, expect a discussion on the limitations of the chosen metrics and potential avenues for future research to explore alternative performance measures that better capture the complexities of the WebShop environment.

#### Smaller Models
It's intriguing to consider the role of smaller language models in self-improvement techniques like self-taught lookahead (STL). While larger models like gpt-40 may offer strong initial capabilities, the practical benefits of smaller models, even those below 3 billion parameters, are noteworthy. These smaller models, when boosted with STL, demonstrate the capacity to match the performance of significantly larger models, pointing towards enhanced efficiency and reduced computational costs. This is especially relevant in real-world applications where resource constraints are a major concern. **The key lies in STL's ability to transfer knowledge from larger, potentially closed-source models to these smaller, open-source alternatives.** This not only lowers the barrier to entry but also fosters greater accessibility and wider adoption. The finding that even the smaller models can be improved by STL opens up further possibilities, especially around improving the edge-computing capabilities of LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02878/x2.png)

> 🔼 Figure 2 presents the results of applying self-taught lookahead to the Game-of-24 math reasoning task.  The figure displays the performance of breadth-first search using different value models. One uses a GPT-40 LLM directly as a value model (baseline), the other employs a llama-3.1-8b-instruct model fine-tuned using the self-taught lookahead method. The performance is assessed on two sets of tasks: one set consists of tasks encountered during the self-improvement process, and the other comprises unseen tasks. The x-axis indicates the number of iterations of self-taught lookahead, and the y-axis represents the accuracy achieved by the search algorithm.
> <details>
> <summary>read the caption</summary>
> Figure 2: Breadth-first search performance on Game-of-24 task on sets of tasks both seen and unseen during the self-improvement.
> </details>



![](https://arxiv.org/html/2503.02878/x3.png)

> 🔼 Figure 3 compares the computational and environmental efficiency of different methods for the WebShop task, using a gpt-3.5-turbo policy.  Computational efficiency is presented as the total number of tokens used (prompt and completion tokens combined), categorized by whether the model was open or closed source.  This highlights the cost difference between using open-source LLMs and large, closed-source models. Environmental efficiency is depicted as the number of states or 'webpages visited' during the search process.  This illustrates the impact of different search methods on resource consumption and the number of interactions required with the website.
> <details>
> <summary>read the caption</summary>
> Figure 3: Compute and environmental efficiency during evaluation on WebShop with a gpt-3.5-turbo policy. Compute efficiency is measured in total (prompt and completion) tokens broken down by model type (closed and open source). Environmental efficiency is measured by the number of states expanded (webpages visited).
> </details>



![](https://arxiv.org/html/2503.02878/x4.png)

> 🔼 Figure 4 illustrates the tradeoffs between performance and efficiency for different search methods on the WebShop task, using a gpt-3.5-turbo policy. The Pareto frontiers in the three subplots show the optimal balance between cost and average reward (top), environmental impact (measured by expanded states) and average reward (middle), and cost and success rate (bottom). Self-taught lookahead (STL) consistently demonstrates Pareto optimality, outperforming other methods across all three tradeoff scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Tradeoff between performance and efficiency on WebShop with a gpt-3.5-turbo policy. Pareto frontiers of existing methods and baselines are shown, illustrating the optimality of STL when considering the tradeoff between cost and average reward (top), environmental usage and average reward (middle), and cost and success rate (bottom).
> </details>



![](https://arxiv.org/html/2503.02878/x5.png)

> 🔼 This figure displays the scaling trends of Self-Taught Lookahead (STL) on the WebShop dataset using various llama-3 and qwen-2.5 model sizes.  The experiments were conducted with a gpt-3.5-turbo policy model. The top panel shows the average reward achieved by each model size, while the bottom panel shows the success rate.  The results illustrate how STL performs with different-sized models, indicating the potential for using smaller, more computationally efficient LLMs while maintaining reasonable performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: STL scaling trends on WebShop for llama-3 and qwen-2.5 model families when using a gpt-3.5-turbo policy with performance measured by average reward (top) and success rate (bottom).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.23">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.23.14.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.23.14.1.1" rowspan="2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.1.1">Setting</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.23.14.1.2" rowspan="2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.23.14.1.3" rowspan="2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.3.1">Policy</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.23.14.1.4" rowspan="2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.4.1">Value</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.23.14.1.5" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.5.1">Mini Test Set (50)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.23.14.1.6" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.14.1.6.1">Full Test Set (500)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.1.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.11.1.1.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.1.1.1.m1.1"><semantics id="S4.T2.11.1.1.1.m1.1a"><mo id="S4.T2.11.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.11.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.1.1.1.m1.1b"><ci id="S4.T2.11.1.1.1.m1.1.1.cmml" xref="S4.T2.11.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.12.2.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.2.2.1">SR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.2.2.1.m1.1"><semantics id="S4.T2.12.2.2.1.m1.1a"><mo id="S4.T2.12.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.12.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.2.2.1.m1.1b"><ci id="S4.T2.12.2.2.1.m1.1.1.cmml" xref="S4.T2.12.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.3.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.3.3.1">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.13.3.3.1.m1.1"><semantics id="S4.T2.13.3.3.1.m1.1a"><mo id="S4.T2.13.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.13.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.3.3.1.m1.1b"><ci id="S4.T2.13.3.3.1.m1.1.1.cmml" xref="S4.T2.13.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.14.4.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.4.4.1">SR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.4.4.1.m1.1"><semantics id="S4.T2.14.4.4.1.m1.1a"><mo id="S4.T2.14.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.14.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.4.4.1.m1.1b"><ci id="S4.T2.14.4.4.1.m1.1.1.cmml" xref="S4.T2.14.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.15.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.23.15.2.1" style="padding:1pt 7.5pt;"><span class="ltx_text" id="S4.T2.23.15.2.1.1"><span class="ltx_text" id="S4.T2.23.15.2.1.1.1"></span> <span class="ltx_text" id="S4.T2.23.15.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.23.15.2.1.1.2.1">
<span class="ltx_tr" id="S4.T2.23.15.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.23.15.2.1.1.2.1.1.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.15.2.1.1.2.1.1.1.1">Prompting + Search</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.23.15.2.1.1.3"></span></span></th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.15.2.2" style="padding:1pt 7.5pt;">Reflexion</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.15.2.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.15.2.3.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.15.2.4" style="padding:1pt 7.5pt;">—</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.15.2.5" style="padding:1pt 7.5pt;">58.5</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.15.2.6" style="padding:1pt 7.5pt;">24.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.15.2.7" style="padding:1pt 7.5pt;">49.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.15.2.8" style="padding:1pt 7.5pt;">16.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.15.5.2" style="padding:1pt 7.5pt;">
<span class="ltx_ERROR undefined" id="S4.T2.15.5.2.1">\cdashline</span>2-8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.15.5.1" style="padding:1pt 7.5pt;">LATS<sup class="ltx_sup" id="S4.T2.15.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.15.5.1.1.1">†</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.5.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.15.5.3.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.15.5.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.15.5.4.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.5.5" style="padding:1pt 7.5pt;">75.9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.15.5.6" style="padding:1pt 7.5pt;">38.0</td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.5.7" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left" id="S4.T2.15.5.8" style="padding:1pt 7.5pt;">——</td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.17.7.3" style="padding:1pt 7.5pt;"><span class="ltx_text" id="S4.T2.17.7.3.1"><span class="ltx_text" id="S4.T2.17.7.3.1.1"></span> <span class="ltx_text" id="S4.T2.17.7.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.17.7.3.1.2.1">
<span class="ltx_tr" id="S4.T2.17.7.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.17.7.3.1.2.1.1.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.17.7.3.1.2.1.1.1.1">Fine-Tuning + RL</span></span></span>
</span></span> <span class="ltx_text" id="S4.T2.17.7.3.1.3"></span></span></th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.17.7.4" style="padding:1pt 7.5pt;">IL</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.17.7.2" style="padding:1pt 7.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S4.T2.16.6.1.1">BERT<sup class="ltx_sup" id="S4.T2.16.6.1.1.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.16.6.1.1.1.m1.1"><semantics id="S4.T2.16.6.1.1.1.m1.1a"><mo id="S4.T2.16.6.1.1.1.m1.1.1" xref="S4.T2.16.6.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.6.1.1.1.m1.1b"><ci id="S4.T2.16.6.1.1.1.m1.1.1.cmml" xref="S4.T2.16.6.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.6.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.6.1.1.1.m1.1d">‡</annotation></semantics></math></sup></span> + <span class="ltx_text ltx_font_typewriter" id="S4.T2.17.7.2.2">BART<sup class="ltx_sup" id="S4.T2.17.7.2.2.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.17.7.2.2.1.m1.1"><semantics id="S4.T2.17.7.2.2.1.m1.1a"><mo id="S4.T2.17.7.2.2.1.m1.1.1" xref="S4.T2.17.7.2.2.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.7.2.2.1.m1.1b"><ci id="S4.T2.17.7.2.2.1.m1.1.1.cmml" xref="S4.T2.17.7.2.2.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.7.2.2.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.7.2.2.1.m1.1d">‡</annotation></semantics></math></sup></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.17.7.5" style="padding:1pt 7.5pt;">—</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.17.7.6" style="padding:1pt 7.5pt;">57.5</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.17.7.7" style="padding:1pt 7.5pt;">34.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.17.7.8" style="padding:1pt 7.5pt;">59.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.17.7.9" style="padding:1pt 7.5pt;">29.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.19.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.9.3" style="padding:1pt 7.5pt;">
<span class="ltx_ERROR undefined" id="S4.T2.19.9.3.1">\cdashline</span>2-8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.19.9.4" style="padding:1pt 7.5pt;">IL+RL</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.9.2" style="padding:1pt 7.5pt;">
<span class="ltx_text ltx_font_typewriter" id="S4.T2.18.8.1.1">BERT<sup class="ltx_sup" id="S4.T2.18.8.1.1.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.18.8.1.1.1.m1.1"><semantics id="S4.T2.18.8.1.1.1.m1.1a"><mo id="S4.T2.18.8.1.1.1.m1.1.1" xref="S4.T2.18.8.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.8.1.1.1.m1.1b"><ci id="S4.T2.18.8.1.1.1.m1.1.1.cmml" xref="S4.T2.18.8.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.8.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.8.1.1.1.m1.1d">‡</annotation></semantics></math></sup></span> + <span class="ltx_text ltx_font_typewriter" id="S4.T2.19.9.2.2">BART<sup class="ltx_sup" id="S4.T2.19.9.2.2.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.19.9.2.2.1.m1.1"><semantics id="S4.T2.19.9.2.2.1.m1.1a"><mo id="S4.T2.19.9.2.2.1.m1.1.1" xref="S4.T2.19.9.2.2.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.19.9.2.2.1.m1.1b"><ci id="S4.T2.19.9.2.2.1.m1.1.1.cmml" xref="S4.T2.19.9.2.2.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.9.2.2.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.9.2.2.1.m1.1d">‡</annotation></semantics></math></sup></span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.19.9.5" style="padding:1pt 7.5pt;">—</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.9.6" style="padding:1pt 7.5pt;">58.9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.19.9.7" style="padding:1pt 7.5pt;">26.0</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.9.8" style="padding:1pt 7.5pt;">62.4</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.9.9" style="padding:1pt 7.5pt;">28.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.21.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.21.11.3" style="padding:1pt 7.5pt;">
<span class="ltx_ERROR undefined" id="S4.T2.21.11.3.1">\cdashline</span>2-8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.20.10.1" style="padding:1pt 7.5pt;">
<span class="ltx_text" id="S4.T2.20.10.1.2"></span><span class="ltx_text" id="S4.T2.20.10.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.20.10.1.1.1">
<span class="ltx_tr" id="S4.T2.20.10.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.20.10.1.1.1.1.1" style="padding:1pt 7.5pt;">AgentQ<sup class="ltx_sup" id="S4.T2.20.10.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.20.10.1.1.1.1.1.1.1">†</span></sup></span></span>
</span></span><span class="ltx_text" id="S4.T2.20.10.1.3"></span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.11.2" style="padding:1pt 7.5pt;">
<span class="ltx_text" id="S4.T2.21.11.2.2"></span><span class="ltx_text" id="S4.T2.21.11.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.21.11.2.1.1">
<span class="ltx_tr" id="S4.T2.21.11.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.21.11.2.1.1.1.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.21.11.2.1.1.1.1.1">xLAM-v0.1-r-46.7b<sup class="ltx_sup" id="S4.T2.21.11.2.1.1.1.1.1.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1"><semantics id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1a"><mo id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1.1" xref="S4.T2.21.11.2.1.1.1.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1b"><ci id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.21.11.2.1.1.1.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.11.2.1.1.1.1.1.1.m1.1d">‡</annotation></semantics></math></sup></span></span></span>
</span></span><span class="ltx_text" id="S4.T2.21.11.2.3"></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.21.11.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.21.11.4.1">gpt-4v</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.11.5" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.21.11.6" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.11.7" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.11.8" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.21.11.8.1">50.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.16.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.23.16.3.1" rowspan="8" style="padding:1pt 7.5pt;"><span class="ltx_text" id="S4.T2.23.16.3.1.1"> <span class="ltx_text" id="S4.T2.23.16.3.1.1.1"><span class="ltx_text" id="S4.T2.23.16.3.1.1.1.1"></span><span class="ltx_text ltx_font_bold" id="S4.T2.23.16.3.1.1.1.2" style="background-color:#D0EDFD;"> <span class="ltx_text" id="S4.T2.23.16.3.1.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.23.16.3.1.1.1.2.1.1">
<span class="ltx_tr" id="S4.T2.23.16.3.1.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.23.16.3.1.1.1.2.1.1.1.1" style="padding:1pt 7.5pt;">Reward and Demo Free</span></span>
</span></span> <span class="ltx_text" id="S4.T2.23.16.3.1.1.1.2.2"></span></span></span></span></th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.16.3.2" rowspan="8" style="padding:1pt 7.5pt;"><span class="ltx_text" id="S4.T2.23.16.3.2.1">Greedy Baseline</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.16.3.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.16.3.3.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.16.3.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.16.3.4.1">llama-3.1-8b-instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.16.3.5" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.16.3.5.1">70.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.23.16.3.6" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.16.3.6.1">26.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.16.3.7" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.16.3.7.1">67.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.23.16.3.8" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.23.16.3.8.1">26.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.17.4">
<td class="ltx_td ltx_align_left" id="S4.T2.23.17.4.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.17.4.1.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.17.4.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.17.4.2.1">r1-distill-llama-8b</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.17.4.3" style="padding:1pt 7.5pt;">68.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.17.4.4" style="padding:1pt 7.5pt;">24.0</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.17.4.5" style="padding:1pt 7.5pt;">66.3</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.17.4.6" style="padding:1pt 7.5pt;">24.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.18.5">
<td class="ltx_td ltx_align_left" id="S4.T2.23.18.5.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.18.5.1.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.18.5.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.18.5.2.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.18.5.3" style="padding:1pt 7.5pt;">71.5</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.18.5.4" style="padding:1pt 7.5pt;">38.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.18.5.4.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.18.5.5" style="padding:1pt 7.5pt;">70.6<span class="ltx_text ltx_font_bold" id="S4.T2.23.18.5.5.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.18.5.6" style="padding:1pt 7.5pt;">35.6<span class="ltx_text ltx_font_bold" id="S4.T2.23.18.5.6.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.19.6">
<td class="ltx_td ltx_align_left" id="S4.T2.23.19.6.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.19.6.1.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.19.6.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.19.6.2.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.19.6.3" style="padding:1pt 7.5pt;">72.9<span class="ltx_text ltx_font_bold" id="S4.T2.23.19.6.3.1">*</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.19.6.4" style="padding:1pt 7.5pt;">42.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.19.6.4.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.19.6.5" style="padding:1pt 7.5pt;">71.5<span class="ltx_text ltx_font_bold" id="S4.T2.23.19.6.5.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.19.6.6" style="padding:1pt 7.5pt;">40.6<span class="ltx_text ltx_font_bold" id="S4.T2.23.19.6.6.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.20.7">
<td class="ltx_td ltx_align_left" id="S4.T2.23.20.7.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.20.7.1.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.20.7.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.20.7.2.1">llama-3.1-8b-instruct</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.20.7.3" style="padding:1pt 7.5pt;">71.6</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.20.7.4" style="padding:1pt 7.5pt;">28.0</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.20.7.5" style="padding:1pt 7.5pt;">67.2</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.20.7.6" style="padding:1pt 7.5pt;">25.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.21.8">
<td class="ltx_td ltx_align_left" id="S4.T2.23.21.8.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.21.8.1.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.21.8.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.21.8.2.1">r1-distill-llama-8b</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.21.8.3" style="padding:1pt 7.5pt;">71.6</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.21.8.4" style="padding:1pt 7.5pt;">32.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.21.8.4.1">*</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.21.8.5" style="padding:1pt 7.5pt;">66.5</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.21.8.6" style="padding:1pt 7.5pt;">25.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.22.9">
<td class="ltx_td ltx_align_left" id="S4.T2.23.22.9.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.22.9.1.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.22.9.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.22.9.2.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.22.9.3" style="padding:1pt 7.5pt;">77.4<span class="ltx_text ltx_font_bold" id="S4.T2.23.22.9.3.1">***</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.22.9.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.22.9.4.1">46.0***</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.22.9.5" style="padding:1pt 7.5pt;">72.4<span class="ltx_text ltx_font_bold" id="S4.T2.23.22.9.5.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.22.9.6" style="padding:1pt 7.5pt;">38.8<span class="ltx_text ltx_font_bold" id="S4.T2.23.22.9.6.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.23.10">
<td class="ltx_td ltx_align_left" id="S4.T2.23.23.10.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.23.10.1.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.23.10.2" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.23.10.2.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.23.10.3" style="padding:1pt 7.5pt;">74.4<span class="ltx_text ltx_font_bold" id="S4.T2.23.23.10.3.1">**</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.23.10.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.23.10.4.1">46.0***</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.23.10.5" style="padding:1pt 7.5pt;">71.4<span class="ltx_text ltx_font_bold" id="S4.T2.23.23.10.5.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.23.10.6" style="padding:1pt 7.5pt;">40.8<span class="ltx_text ltx_font_bold" id="S4.T2.23.23.10.6.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.24.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.24.11.1" style="padding:1pt 7.5pt;">
<span class="ltx_ERROR undefined" id="S4.T2.23.24.11.1.1">\cdashline</span>2-8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.24.11.2" style="padding:1pt 7.5pt;">MCTS Baseline</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.24.11.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.24.11.3.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.24.11.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.24.11.4.1">llama-3.1-8b-instruct</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.24.11.5" style="padding:1pt 7.5pt;">71.9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.24.11.6" style="padding:1pt 7.5pt;">34.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.24.11.6.1">**</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.24.11.7" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.24.11.8" style="padding:1pt 7.5pt;">——</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.12.2" style="padding:1pt 7.5pt;">
<span class="ltx_ERROR undefined" id="S4.T2.22.12.2.1">\cdashline</span>2-8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.12.3" rowspan="2" style="padding:1pt 7.5pt;"><span class="ltx_text" id="S4.T2.22.12.3.1">STL <span class="ltx_text ltx_font_bold" id="S4.T2.22.12.3.1.1">(Ours)</span></span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.12.4" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.22.12.4.1">gpt-3.5-turbo</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.12.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.22.12.1.1">llama-3.1-8b-instruct<sup class="ltx_sup" id="S4.T2.22.12.1.1.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.22.12.1.1.1.m1.1"><semantics id="S4.T2.22.12.1.1.1.m1.1a"><mo id="S4.T2.22.12.1.1.1.m1.1.1" xref="S4.T2.22.12.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.12.1.1.1.m1.1b"><ci id="S4.T2.22.12.1.1.1.m1.1.1.cmml" xref="S4.T2.22.12.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.12.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.12.1.1.1.m1.1d">‡</annotation></semantics></math></sup></span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.12.5" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.22.12.5.1">78.3***</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.12.6" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.22.12.6.1">46.0***</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.12.7" style="padding:1pt 7.5pt;">72.8<span class="ltx_text ltx_font_bold" id="S4.T2.22.12.7.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.12.8" style="padding:1pt 7.5pt;">36.6<span class="ltx_text ltx_font_bold" id="S4.T2.22.12.8.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.13">
<td class="ltx_td ltx_border_r" id="S4.T2.23.13.2" style="padding:1pt 7.5pt;"></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.13.3" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.13.3.1">gpt-4o</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.13.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T2.23.13.1.1">llama-3.1-8b-instruct<sup class="ltx_sup" id="S4.T2.23.13.1.1.1"><math alttext="{\ddagger}" class="ltx_Math" display="inline" id="S4.T2.23.13.1.1.1.m1.1"><semantics id="S4.T2.23.13.1.1.1.m1.1a"><mo id="S4.T2.23.13.1.1.1.m1.1.1" xref="S4.T2.23.13.1.1.1.m1.1.1.cmml">‡</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.13.1.1.1.m1.1b"><ci id="S4.T2.23.13.1.1.1.m1.1.1.cmml" xref="S4.T2.23.13.1.1.1.m1.1.1">‡</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.13.1.1.1.m1.1c">{\ddagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.13.1.1.1.m1.1d">‡</annotation></semantics></math></sup></span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.13.4" style="padding:1pt 7.5pt;">76.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.13.4.1">***</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.13.5" style="padding:1pt 7.5pt;">40.0<span class="ltx_text ltx_font_bold" id="S4.T2.23.13.5.1">***</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.13.6" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.13.6.1">74.2***</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.13.7" style="padding:1pt 7.5pt;">40.6<span class="ltx_text ltx_font_bold" id="S4.T2.23.13.7.1">***</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.25.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.23.25.12.1" style="padding:1pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.23.25.12.1.1">Human Expert</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.23.25.12.2" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.23.25.12.3" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.23.25.12.4" style="padding:1pt 7.5pt;">——</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.23.25.12.5" style="padding:1pt 7.5pt;">76.1</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.23.25.12.6" style="padding:1pt 7.5pt;">54.0</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.23.25.12.7" style="padding:1pt 7.5pt;">82.1</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.23.25.12.8" style="padding:1pt 7.5pt;">59.6</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed comparison of different methods' performance on the WebShop task, a benchmark for evaluating interactive web-based reasoning capabilities.  The table includes various approaches, some using human demonstrations or ground truth rewards, and others that are reward-free.  Performance is measured by both score (average reward) and success rate. Methods using Monte Carlo Tree Search (MCTS) are compared to others that employ simpler greedy search, and the self-taught lookahead (STL) method is highlighted, showcasing its improvement over existing techniques.  Statistical significance is assessed using a paired bootstrap test for Reward and Demo Free methods against the baseline models.  The table also indicates whether value functions were fine-tuned and notes the limitations of comparing MCTS methods due to computational constraints.
> <details>
> <summary>read the caption</summary>
> Table 2: Score and success rate (SR) on WebShop. Results marked with ††{{\dagger}}† are taken from previous work (Zhou et al., 2024; Putta et al., 2024). Results correspond to methods specified in Table 1. Value functions marked with ‡‡{\ddagger}‡ are fine-tuned. Due to the computational complexity of MCTS methods, we report their results on only the mini-test set used by Zhou et al. (2024) when results on the full test set are not available. We observe a 40% improvement in success rate when using the STL value function compared to the llama-3.1-8b-instruct base value model in the greedy setting. We compute statistical significance of Reward and Demo Free methods compared to the underlined results (p∗<0.05superscript𝑝0.05{}^{*}p<0.05start_FLOATSUPERSCRIPT ∗ end_FLOATSUPERSCRIPT italic_p < 0.05, p∗∗<0.01superscript𝑝absent0.01{}^{**}p<0.01start_FLOATSUPERSCRIPT ∗ ∗ end_FLOATSUPERSCRIPT italic_p < 0.01, p∗⁣∗∗<0.001){}^{***}p<0.001)start_FLOATSUPERSCRIPT ∗ ∗ ∗ end_FLOATSUPERSCRIPT italic_p < 0.001 ) using the paired bootstrap test (Berg-Kirkpatrick et al., 2012). The best results are also bolded.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.2.2.3" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1" style="font-size:80%;">Fine-tuning Data Setup</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1" style="font-size:80%;">Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1" style="font-size:80%;">SR(%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.3.1" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_font_typewriter" id="S4.T3.2.3.1.1" style="font-size:80%;">llama-3.1-8b-instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.2" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.3.2.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.3" style="padding:0.8pt 7.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.2.3.3.1" style="font-size:80%;">30.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_left" id="S4.T3.2.4.1" style="padding:0.8pt 7.5pt;">
<span class="ltx_text" id="S4.T3.2.4.1.1" style="font-size:80%;">    + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.4.1.2" style="font-size:80%;">lv</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.2" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.4.2.1" style="font-size:80%;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.4.3" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.4.3.1" style="font-size:80%;">34.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_left" id="S4.T3.2.5.1" style="padding:0.8pt 7.5pt;">
<span class="ltx_text" id="S4.T3.2.5.1.1" style="font-size:80%;">    + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.5.1.2" style="font-size:80%;">lv</span><span class="ltx_text" id="S4.T3.2.5.1.3" style="font-size:80%;"> + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.5.1.4" style="font-size:80%;">tr</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.5.2.1" style="font-size:80%;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.3" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.5.3.1" style="font-size:80%;">32.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.6.1" style="padding:0.8pt 7.5pt;">
<span class="ltx_text" id="S4.T3.2.6.1.1" style="font-size:80%;">    + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.6.1.2" style="font-size:80%;">lv</span><span class="ltx_text" id="S4.T3.2.6.1.3" style="font-size:80%;"> + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.6.1.4" style="font-size:80%;">tr</span><span class="ltx_text" id="S4.T3.2.6.1.5" style="font-size:80%;"> + </span><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.6.1.6" style="font-size:80%;">r</span><span class="ltx_text" id="S4.T3.2.6.1.7" style="font-size:80%;"> </span><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.2.6.1.8" style="font-size:80%;">(stl)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.2" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.6.2.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.6.3" style="padding:0.8pt 7.5pt;"><span class="ltx_text" id="S4.T3.2.6.3.1" style="font-size:80%;">42.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different combinations of information from the lookahead process on the performance of the WebShop task.  Specifically, it examines the effects of including lookahead values (LV), textual representations of the next best action and successor state (TR), and the value rationale for the successor state (R), in the fine-tuning process. The table compares the performance (score and success rate) resulting from various combinations of these information sources, with the performance of the base model (before fine-tuning) serving as a baseline.  The results indicate how much each element of the lookahead contributes to the overall improvement achieved by self-taught lookahead.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on WebShop of the impact of fine-tuning with different combinations of information from lookahead namely lookahead values (lv), textual representation of the next best action and successor state (tr), and the value rationale for the successor state (r). The underlined results are from the base model before any fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T4.6">
<tr class="ltx_tr" id="A4.T4.6.7">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A4.T4.6.7.1" style="padding:0.9pt 7.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.2" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.2.1" style="font-size:90%;">warmup-steps</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.3" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.3.1" style="font-size:90%;">learning-rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.4" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.4.1" style="font-size:90%;">weight-decay</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.5" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.5.1" style="font-size:90%;">per-device-batch size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.6" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.6.1" style="font-size:90%;">lora-r</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.6.7.7" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.7.7.1" style="font-size:90%;">lora-alpha</span></td>
</tr>
<tr class="ltx_tr" id="A4.T4.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A4.T4.6.6.7" style="padding:0.9pt 7.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.6.6.7.1" style="font-size:90%;">STL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.1.1.1" style="padding:0.9pt 7.5pt;"><math alttext="10" class="ltx_Math" display="inline" id="A4.T4.1.1.1.m1.1"><semantics id="A4.T4.1.1.1.m1.1a"><mn id="A4.T4.1.1.1.m1.1.1" mathsize="90%" xref="A4.T4.1.1.1.m1.1.1.cmml">10</mn><annotation-xml encoding="MathML-Content" id="A4.T4.1.1.1.m1.1b"><cn id="A4.T4.1.1.1.m1.1.1.cmml" type="integer" xref="A4.T4.1.1.1.m1.1.1">10</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.1.1.1.m1.1c">10</annotation><annotation encoding="application/x-llamapun" id="A4.T4.1.1.1.m1.1d">10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.2.2.2" style="padding:0.9pt 7.5pt;"><math alttext="2e^{-4}" class="ltx_Math" display="inline" id="A4.T4.2.2.2.m1.1"><semantics id="A4.T4.2.2.2.m1.1a"><mrow id="A4.T4.2.2.2.m1.1.1" xref="A4.T4.2.2.2.m1.1.1.cmml"><mn id="A4.T4.2.2.2.m1.1.1.2" mathsize="90%" xref="A4.T4.2.2.2.m1.1.1.2.cmml">2</mn><mo id="A4.T4.2.2.2.m1.1.1.1" xref="A4.T4.2.2.2.m1.1.1.1.cmml">⁢</mo><msup id="A4.T4.2.2.2.m1.1.1.3" xref="A4.T4.2.2.2.m1.1.1.3.cmml"><mi id="A4.T4.2.2.2.m1.1.1.3.2" mathsize="90%" xref="A4.T4.2.2.2.m1.1.1.3.2.cmml">e</mi><mrow id="A4.T4.2.2.2.m1.1.1.3.3" xref="A4.T4.2.2.2.m1.1.1.3.3.cmml"><mo id="A4.T4.2.2.2.m1.1.1.3.3a" mathsize="90%" xref="A4.T4.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="A4.T4.2.2.2.m1.1.1.3.3.2" mathsize="90%" xref="A4.T4.2.2.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T4.2.2.2.m1.1b"><apply id="A4.T4.2.2.2.m1.1.1.cmml" xref="A4.T4.2.2.2.m1.1.1"><times id="A4.T4.2.2.2.m1.1.1.1.cmml" xref="A4.T4.2.2.2.m1.1.1.1"></times><cn id="A4.T4.2.2.2.m1.1.1.2.cmml" type="integer" xref="A4.T4.2.2.2.m1.1.1.2">2</cn><apply id="A4.T4.2.2.2.m1.1.1.3.cmml" xref="A4.T4.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="A4.T4.2.2.2.m1.1.1.3.1.cmml" xref="A4.T4.2.2.2.m1.1.1.3">superscript</csymbol><ci id="A4.T4.2.2.2.m1.1.1.3.2.cmml" xref="A4.T4.2.2.2.m1.1.1.3.2">𝑒</ci><apply id="A4.T4.2.2.2.m1.1.1.3.3.cmml" xref="A4.T4.2.2.2.m1.1.1.3.3"><minus id="A4.T4.2.2.2.m1.1.1.3.3.1.cmml" xref="A4.T4.2.2.2.m1.1.1.3.3"></minus><cn id="A4.T4.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="A4.T4.2.2.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.2.2.2.m1.1c">2e^{-4}</annotation><annotation encoding="application/x-llamapun" id="A4.T4.2.2.2.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.3.3.3" style="padding:0.9pt 7.5pt;"><math alttext="0.01" class="ltx_Math" display="inline" id="A4.T4.3.3.3.m1.1"><semantics id="A4.T4.3.3.3.m1.1a"><mn id="A4.T4.3.3.3.m1.1.1" mathsize="90%" xref="A4.T4.3.3.3.m1.1.1.cmml">0.01</mn><annotation-xml encoding="MathML-Content" id="A4.T4.3.3.3.m1.1b"><cn id="A4.T4.3.3.3.m1.1.1.cmml" type="float" xref="A4.T4.3.3.3.m1.1.1">0.01</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.3.3.3.m1.1c">0.01</annotation><annotation encoding="application/x-llamapun" id="A4.T4.3.3.3.m1.1d">0.01</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.4.4.4" style="padding:0.9pt 7.5pt;"><math alttext="8" class="ltx_Math" display="inline" id="A4.T4.4.4.4.m1.1"><semantics id="A4.T4.4.4.4.m1.1a"><mn id="A4.T4.4.4.4.m1.1.1" mathsize="90%" xref="A4.T4.4.4.4.m1.1.1.cmml">8</mn><annotation-xml encoding="MathML-Content" id="A4.T4.4.4.4.m1.1b"><cn id="A4.T4.4.4.4.m1.1.1.cmml" type="integer" xref="A4.T4.4.4.4.m1.1.1">8</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.4.4.4.m1.1c">8</annotation><annotation encoding="application/x-llamapun" id="A4.T4.4.4.4.m1.1d">8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.5.5.5" style="padding:0.9pt 7.5pt;"><math alttext="16" class="ltx_Math" display="inline" id="A4.T4.5.5.5.m1.1"><semantics id="A4.T4.5.5.5.m1.1a"><mn id="A4.T4.5.5.5.m1.1.1" mathsize="90%" xref="A4.T4.5.5.5.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A4.T4.5.5.5.m1.1b"><cn id="A4.T4.5.5.5.m1.1.1.cmml" type="integer" xref="A4.T4.5.5.5.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.5.5.5.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A4.T4.5.5.5.m1.1d">16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T4.6.6.6" style="padding:0.9pt 7.5pt;"><math alttext="16" class="ltx_Math" display="inline" id="A4.T4.6.6.6.m1.1"><semantics id="A4.T4.6.6.6.m1.1a"><mn id="A4.T4.6.6.6.m1.1.1" mathsize="90%" xref="A4.T4.6.6.6.m1.1.1.cmml">16</mn><annotation-xml encoding="MathML-Content" id="A4.T4.6.6.6.m1.1b"><cn id="A4.T4.6.6.6.m1.1.1.cmml" type="integer" xref="A4.T4.6.6.6.m1.1.1">16</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.6.6.6.m1.1c">16</annotation><annotation encoding="application/x-llamapun" id="A4.T4.6.6.6.m1.1d">16</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training phase of the Self-Taught Lookahead (STL) algorithm.  It shows values for parameters such as warmup steps, learning rate, weight decay, per-device batch size, lora-r (the rank for LoRA adaptation), and lora-alpha (the scaling factor for LoRA adaptation).  These hyperparameters were tuned for optimal performance of the STL method in training value models.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameters during STL training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02878/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02878/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}