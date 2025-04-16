---
title: "Adaptive Computation Pruning for the Forgetting Transformer"
summary: "ACP prunes computations in Forgetting Transformers, boosting training throughput by 10-35% without sacrificing performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Mila & Université de Montréal",]
showSummary: true
date: 2025-04-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06949 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhixuan Lin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06949" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06949" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06949/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The Forgetting Transformer (FoX) has shown great potential as a better alternative to the standard Transformer, but it still faces the challenges of high computational costs, especially with long sequences. Many attention heads in FoX tend to forget quickly, leading to redundant computations. To address this inefficiency, the paper introduces Adaptive Computation Pruning (ACP), a method designed to dynamically prune computations that involve input-output dependencies heavily decayed by the forget gate. ACP is based on dynamically set pruning threshold, thus the pruned attention weights remain negligible.



With ACP, the method is applied to language model pretraining with Forgetting Transformer, and consistently reduces the number of FLOPs in softmax attention by around 70% across different model sizes and context lengths. This leads to a 10% to 35% improvement in training throughput. The longer the context lengths, the greater the computational savings. The speed improvements are achieved without any performance degradation. The method identifies and prunes computations in FlashAttention with a linear time complexity algorithm.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Adaptive Computation Pruning (ACP) significantly reduces FLOPs in Forgetting Transformer attention layers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ACP improves training throughput, especially with longer context lengths. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ACP maintains model performance while enhancing efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an innovative approach to enhance the efficiency of attention mechanisms in the Forgetting Transformer model. It paves the way for developing more efficient models that will contribute to reducing computational costs and accelerating the training process. This will promote further advancements in long-context language modeling and other sequence processing tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06949/x1.png)

> 🔼 Figure 1 illustrates the concept of Forgetting Attention, a mechanism in the Forgetting Transformer (FoX), and how Adaptive Computation Pruning (ACP) optimizes it.  The figure uses a visual representation of the FlashAttention algorithm, showing the computation as a grid of blocks.  Each block represents a calculation involving input-output dependencies. Darker colors indicate stronger decay (i.e., the forget gate significantly reduces the importance of the connection).  The left side shows a standard FlashAttention computation, visiting all blocks in sequence. The right side demonstrates ACP, showing how the algorithm identifies a 'pruning boundary' to skip calculations of less important dependencies (indicated by the lighter colors and the pruned blocks not visited). The arrows show the order of operations in each version of the algorithm, highlighting the significant reduction in computations achieved with ACP. This optimization enhances speed and efficiency without sacrificing performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of Forgetting Attention with and without ACP. Each cell represents a block in the FlashAttention algorithm. Darker colors represent decay bias values farther below 00 and thus stronger decay. The arrows indicate the set of blocks that would be visited (in the indicated order) in the FlashAttention iterations.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.19.19.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.19.19.19.20.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.19.19.19.20.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.2.1">Wiki.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.19.19.19.20.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.3.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.4.1">LMB.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.5.1">PIQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.6.1">Hella.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.7.1">Wino.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.8"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.8.1">ARC-e</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.9.1">ARC-c</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.10"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.10.1">COPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.11"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.11.1">OBQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.12"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.12.1">SciQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.19.19.19.20.1.13"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.13.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.19.19.19.20.1.14"><span class="ltx_text ltx_font_bold" id="S4.T1.19.19.19.20.1.14.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.13.13.13.13">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S4.T1.13.13.13.13.14"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.1.1.1">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.2.2.2.2.2">ppl<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.3.3.3.3.3">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.4.4.4.4.4">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.5.5.5.5.5">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.5.m1.1a"><mo id="S4.T1.5.5.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.5.m1.1b"><ci id="S4.T1.5.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.6.6.6.6.6">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.6.m1.1"><semantics id="S4.T1.6.6.6.6.6.m1.1a"><mo id="S4.T1.6.6.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.6.m1.1b"><ci id="S4.T1.6.6.6.6.6.m1.1.1.cmml" xref="S4.T1.6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.7.7.7.7.7">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.7.m1.1"><semantics id="S4.T1.7.7.7.7.7.m1.1a"><mo id="S4.T1.7.7.7.7.7.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.7.m1.1b"><ci id="S4.T1.7.7.7.7.7.m1.1.1.cmml" xref="S4.T1.7.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.8.8.8.8.8">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.8.m1.1"><semantics id="S4.T1.8.8.8.8.8.m1.1a"><mo id="S4.T1.8.8.8.8.8.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.8.m1.1b"><ci id="S4.T1.8.8.8.8.8.m1.1.1.cmml" xref="S4.T1.8.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.9.9.9.9.9">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.9.m1.1"><semantics id="S4.T1.9.9.9.9.9.m1.1a"><mo id="S4.T1.9.9.9.9.9.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.9.m1.1b"><ci id="S4.T1.9.9.9.9.9.m1.1.1.cmml" xref="S4.T1.9.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.10.10.10.10.10">acc-n<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.10.m1.1"><semantics id="S4.T1.10.10.10.10.10.m1.1a"><mo id="S4.T1.10.10.10.10.10.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.10.m1.1b"><ci id="S4.T1.10.10.10.10.10.m1.1.1.cmml" xref="S4.T1.10.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.11.11.11.11.11">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.11.m1.1"><semantics id="S4.T1.11.11.11.11.11.m1.1a"><mo id="S4.T1.11.11.11.11.11.m1.1.1" stretchy="false" xref="S4.T1.11.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.11.m1.1b"><ci id="S4.T1.11.11.11.11.11.m1.1.1.cmml" xref="S4.T1.11.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S4.T1.12.12.12.12.12">acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.12.m1.1"><semantics id="S4.T1.12.12.12.12.12.m1.1a"><mo id="S4.T1.12.12.12.12.12.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.12.m1.1b"><ci id="S4.T1.12.12.12.12.12.m1.1.1.cmml" xref="S4.T1.12.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.13.13.13.13.13"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.13.13.13.13.13.m1.1"><semantics id="S4.T1.13.13.13.13.13.m1.1a"><mo id="S4.T1.13.13.13.13.13.m1.1.1" stretchy="false" xref="S4.T1.13.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.13.13.m1.1b"><ci id="S4.T1.13.13.13.13.13.m1.1.1.cmml" xref="S4.T1.13.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.13.13.m1.1d">↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.14.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.14.14.14.14.1">FoX (Pro) w/ ACP, <math alttext="L=4k" class="ltx_Math" display="inline" id="S4.T1.14.14.14.14.1.m1.1"><semantics id="S4.T1.14.14.14.14.1.m1.1a"><mrow id="S4.T1.14.14.14.14.1.m1.1.1" xref="S4.T1.14.14.14.14.1.m1.1.1.cmml"><mi id="S4.T1.14.14.14.14.1.m1.1.1.2" xref="S4.T1.14.14.14.14.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.14.14.14.14.1.m1.1.1.1" xref="S4.T1.14.14.14.14.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.14.14.14.14.1.m1.1.1.3" xref="S4.T1.14.14.14.14.1.m1.1.1.3.cmml"><mn id="S4.T1.14.14.14.14.1.m1.1.1.3.2" xref="S4.T1.14.14.14.14.1.m1.1.1.3.2.cmml">4</mn><mo id="S4.T1.14.14.14.14.1.m1.1.1.3.1" xref="S4.T1.14.14.14.14.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.14.14.14.14.1.m1.1.1.3.3" xref="S4.T1.14.14.14.14.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.14.1.m1.1b"><apply id="S4.T1.14.14.14.14.1.m1.1.1.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1"><eq id="S4.T1.14.14.14.14.1.m1.1.1.1.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1.1"></eq><ci id="S4.T1.14.14.14.14.1.m1.1.1.2.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.14.14.14.14.1.m1.1.1.3.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1.3"><times id="S4.T1.14.14.14.14.1.m1.1.1.3.1.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1.3.1"></times><cn id="S4.T1.14.14.14.14.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.14.14.14.14.1.m1.1.1.3.2">4</cn><ci id="S4.T1.14.14.14.14.1.m1.1.1.3.3.cmml" xref="S4.T1.14.14.14.14.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.14.1.m1.1c">L=4k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.14.1.m1.1d">italic_L = 4 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.2">29.66</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.14.14.14.14.3">22.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.4">37.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.5">63.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.6">33.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.7">52.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.8">48.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.9">24.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.10">68.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.11">29.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.12">79.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.14.14.14.14.13">57.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.14.14.14.14.14">49.45</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.15.15.15.15.1">FoX (Pro) w/o ACP, <math alttext="L=4k" class="ltx_Math" display="inline" id="S4.T1.15.15.15.15.1.m1.1"><semantics id="S4.T1.15.15.15.15.1.m1.1a"><mrow id="S4.T1.15.15.15.15.1.m1.1.1" xref="S4.T1.15.15.15.15.1.m1.1.1.cmml"><mi id="S4.T1.15.15.15.15.1.m1.1.1.2" xref="S4.T1.15.15.15.15.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.15.15.15.15.1.m1.1.1.1" xref="S4.T1.15.15.15.15.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.15.15.15.15.1.m1.1.1.3" xref="S4.T1.15.15.15.15.1.m1.1.1.3.cmml"><mn id="S4.T1.15.15.15.15.1.m1.1.1.3.2" xref="S4.T1.15.15.15.15.1.m1.1.1.3.2.cmml">4</mn><mo id="S4.T1.15.15.15.15.1.m1.1.1.3.1" xref="S4.T1.15.15.15.15.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.15.15.15.15.1.m1.1.1.3.3" xref="S4.T1.15.15.15.15.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.15.1.m1.1b"><apply id="S4.T1.15.15.15.15.1.m1.1.1.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1"><eq id="S4.T1.15.15.15.15.1.m1.1.1.1.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1.1"></eq><ci id="S4.T1.15.15.15.15.1.m1.1.1.2.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.15.15.15.15.1.m1.1.1.3.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1.3"><times id="S4.T1.15.15.15.15.1.m1.1.1.3.1.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1.3.1"></times><cn id="S4.T1.15.15.15.15.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.15.15.15.15.1.m1.1.1.3.2">4</cn><ci id="S4.T1.15.15.15.15.1.m1.1.1.3.3.cmml" xref="S4.T1.15.15.15.15.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.15.1.m1.1c">L=4k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.15.1.m1.1d">italic_L = 4 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.2">29.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.15.15.15.3">22.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.4">37.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.5">62.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.6">33.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.7">52.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.8">47.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.9">25.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.10">67.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.11">29.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.12">79.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.15.15.15.13">54.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.15.14">49.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.16.16.16.16.1">FoX (Pro) w/ ACP, <math alttext="L=8k" class="ltx_Math" display="inline" id="S4.T1.16.16.16.16.1.m1.1"><semantics id="S4.T1.16.16.16.16.1.m1.1a"><mrow id="S4.T1.16.16.16.16.1.m1.1.1" xref="S4.T1.16.16.16.16.1.m1.1.1.cmml"><mi id="S4.T1.16.16.16.16.1.m1.1.1.2" xref="S4.T1.16.16.16.16.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.16.16.16.16.1.m1.1.1.1" xref="S4.T1.16.16.16.16.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.16.16.16.16.1.m1.1.1.3" xref="S4.T1.16.16.16.16.1.m1.1.1.3.cmml"><mn id="S4.T1.16.16.16.16.1.m1.1.1.3.2" xref="S4.T1.16.16.16.16.1.m1.1.1.3.2.cmml">8</mn><mo id="S4.T1.16.16.16.16.1.m1.1.1.3.1" xref="S4.T1.16.16.16.16.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.16.16.16.16.1.m1.1.1.3.3" xref="S4.T1.16.16.16.16.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.16.1.m1.1b"><apply id="S4.T1.16.16.16.16.1.m1.1.1.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1"><eq id="S4.T1.16.16.16.16.1.m1.1.1.1.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1.1"></eq><ci id="S4.T1.16.16.16.16.1.m1.1.1.2.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.16.16.16.16.1.m1.1.1.3.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1.3"><times id="S4.T1.16.16.16.16.1.m1.1.1.3.1.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1.3.1"></times><cn id="S4.T1.16.16.16.16.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.16.16.16.16.1.m1.1.1.3.2">8</cn><ci id="S4.T1.16.16.16.16.1.m1.1.1.3.3.cmml" xref="S4.T1.16.16.16.16.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.16.1.m1.1c">L=8k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.16.1.m1.1d">italic_L = 8 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.2">28.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.16.3">23.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.4">38.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.5">60.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.6">33.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.7">51.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.8">48.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.9">24.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.10">67.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.11">28.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.12">80.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.16.13">60.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.16.14">49.34</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.17.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.17.17.17.17.1">FoX (Pro) w/o ACP, <math alttext="L=8k" class="ltx_Math" display="inline" id="S4.T1.17.17.17.17.1.m1.1"><semantics id="S4.T1.17.17.17.17.1.m1.1a"><mrow id="S4.T1.17.17.17.17.1.m1.1.1" xref="S4.T1.17.17.17.17.1.m1.1.1.cmml"><mi id="S4.T1.17.17.17.17.1.m1.1.1.2" xref="S4.T1.17.17.17.17.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.17.17.17.17.1.m1.1.1.1" xref="S4.T1.17.17.17.17.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.17.17.17.17.1.m1.1.1.3" xref="S4.T1.17.17.17.17.1.m1.1.1.3.cmml"><mn id="S4.T1.17.17.17.17.1.m1.1.1.3.2" xref="S4.T1.17.17.17.17.1.m1.1.1.3.2.cmml">8</mn><mo id="S4.T1.17.17.17.17.1.m1.1.1.3.1" xref="S4.T1.17.17.17.17.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.17.17.17.17.1.m1.1.1.3.3" xref="S4.T1.17.17.17.17.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.17.1.m1.1b"><apply id="S4.T1.17.17.17.17.1.m1.1.1.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1"><eq id="S4.T1.17.17.17.17.1.m1.1.1.1.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1.1"></eq><ci id="S4.T1.17.17.17.17.1.m1.1.1.2.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.17.17.17.17.1.m1.1.1.3.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1.3"><times id="S4.T1.17.17.17.17.1.m1.1.1.3.1.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1.3.1"></times><cn id="S4.T1.17.17.17.17.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.17.17.17.17.1.m1.1.1.3.2">8</cn><ci id="S4.T1.17.17.17.17.1.m1.1.1.3.3.cmml" xref="S4.T1.17.17.17.17.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.17.1.m1.1c">L=8k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.17.1.m1.1d">italic_L = 8 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.2">28.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.17.17.17.3">22.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.4">38.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.5">61.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.6">33.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.7">50.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.8">49.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.9">24.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.10">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.11">27.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.12">80.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.17.17.17.17.13">61.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.17.14">49.75</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.18.18.18.18.1">FoX (Pro) w/ ACP, <math alttext="L=16k" class="ltx_Math" display="inline" id="S4.T1.18.18.18.18.1.m1.1"><semantics id="S4.T1.18.18.18.18.1.m1.1a"><mrow id="S4.T1.18.18.18.18.1.m1.1.1" xref="S4.T1.18.18.18.18.1.m1.1.1.cmml"><mi id="S4.T1.18.18.18.18.1.m1.1.1.2" xref="S4.T1.18.18.18.18.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.18.18.18.18.1.m1.1.1.1" xref="S4.T1.18.18.18.18.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.18.18.18.18.1.m1.1.1.3" xref="S4.T1.18.18.18.18.1.m1.1.1.3.cmml"><mn id="S4.T1.18.18.18.18.1.m1.1.1.3.2" xref="S4.T1.18.18.18.18.1.m1.1.1.3.2.cmml">16</mn><mo id="S4.T1.18.18.18.18.1.m1.1.1.3.1" xref="S4.T1.18.18.18.18.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.18.18.18.18.1.m1.1.1.3.3" xref="S4.T1.18.18.18.18.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.18.1.m1.1b"><apply id="S4.T1.18.18.18.18.1.m1.1.1.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1"><eq id="S4.T1.18.18.18.18.1.m1.1.1.1.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1.1"></eq><ci id="S4.T1.18.18.18.18.1.m1.1.1.2.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.18.18.18.18.1.m1.1.1.3.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1.3"><times id="S4.T1.18.18.18.18.1.m1.1.1.3.1.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1.3.1"></times><cn id="S4.T1.18.18.18.18.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.18.18.18.18.1.m1.1.1.3.2">16</cn><ci id="S4.T1.18.18.18.18.1.m1.1.1.3.3.cmml" xref="S4.T1.18.18.18.18.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.18.1.m1.1c">L=16k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.18.1.m1.1d">italic_L = 16 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.2">27.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.18.3">25.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.4">35.77</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.5">62.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.6">33.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.7">50.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.8">48.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.9">24.23</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.10">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.11">28.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.12">79.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.18.13">58.93</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.18.14">49.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.19.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.19.19.19.19.1">FoX (Pro) w/o ACP, <math alttext="L=16k" class="ltx_Math" display="inline" id="S4.T1.19.19.19.19.1.m1.1"><semantics id="S4.T1.19.19.19.19.1.m1.1a"><mrow id="S4.T1.19.19.19.19.1.m1.1.1" xref="S4.T1.19.19.19.19.1.m1.1.1.cmml"><mi id="S4.T1.19.19.19.19.1.m1.1.1.2" xref="S4.T1.19.19.19.19.1.m1.1.1.2.cmml">L</mi><mo id="S4.T1.19.19.19.19.1.m1.1.1.1" xref="S4.T1.19.19.19.19.1.m1.1.1.1.cmml">=</mo><mrow id="S4.T1.19.19.19.19.1.m1.1.1.3" xref="S4.T1.19.19.19.19.1.m1.1.1.3.cmml"><mn id="S4.T1.19.19.19.19.1.m1.1.1.3.2" xref="S4.T1.19.19.19.19.1.m1.1.1.3.2.cmml">16</mn><mo id="S4.T1.19.19.19.19.1.m1.1.1.3.1" xref="S4.T1.19.19.19.19.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.19.19.19.19.1.m1.1.1.3.3" xref="S4.T1.19.19.19.19.1.m1.1.1.3.3.cmml">k</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.19.1.m1.1b"><apply id="S4.T1.19.19.19.19.1.m1.1.1.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1"><eq id="S4.T1.19.19.19.19.1.m1.1.1.1.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1.1"></eq><ci id="S4.T1.19.19.19.19.1.m1.1.1.2.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1.2">𝐿</ci><apply id="S4.T1.19.19.19.19.1.m1.1.1.3.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1.3"><times id="S4.T1.19.19.19.19.1.m1.1.1.3.1.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1.3.1"></times><cn id="S4.T1.19.19.19.19.1.m1.1.1.3.2.cmml" type="integer" xref="S4.T1.19.19.19.19.1.m1.1.1.3.2">16</cn><ci id="S4.T1.19.19.19.19.1.m1.1.1.3.3.cmml" xref="S4.T1.19.19.19.19.1.m1.1.1.3.3">𝑘</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.19.1.m1.1c">L=16k</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.19.1.m1.1d">italic_L = 16 italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.2">28.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.19.19.19.3">24.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.4">36.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.5">62.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.6">33.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.7">48.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.8">48.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.9">25.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.10">71.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.11">27.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.12">82.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.19.19.19.19.13">56.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.19.19.19.19.14">49.20</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various 760M parameter language models on the LM-eval-harness benchmark.  The models were trained on the LongCrawl64 dataset using different training context lengths (L). The table shows several downstream task evaluation metrics, including perplexity (ppl) and accuracy (acc), with acc-n representing length-normalized accuracy.  This allows for a comparison of model performance across different context lengths and highlights the impact of the training context length on downstream task performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results on LM-eval-harness. All models have roughly 760760760760M non-embedding parameters and are trained on roughly 16161616B tokens on LongCrawl64. “acc-n” means length-normalized accuracy. L𝐿Litalic_L is the training context length.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06949/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06949/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}