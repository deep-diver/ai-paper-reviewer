---
title: "ZJUKLAB at SemEval-2025 Task 4: Unlearning via Model Merging"
summary: "Model Merging: An unlearning system, which combines specialized models, achieves top results in SemEval-2025 Task 4 by selectively erasing sensitive knowledge."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Privacy", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21088 {{< /keyword >}}
{{< keyword icon="writer" >}} Haoming Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21088" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21088" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21088/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the challenge of **selectively removing sensitive data from large language models** without compromising their performance, a critical issue in AI safety and privacy. Existing unlearning methods often struggle with over-forgetting (excessive elimination of information) or under-forgetting (incomplete removal). It is also difficult to balance performance across multiple evaluation dimensions. 



To overcome these limitations, the authors propose a novel unlearning system that **leverages model merging**. They use TIES-Merging to combine an over-forgetting model with an under-forgetting model, creating a more balanced and effective unlearned model. The system achieved second place in the SemEval-2025 Task 4 competition, demonstrating its effectiveness in selectively removing sensitive content. The paper also provides analyses of the unlearning process, examining performance, loss dynamics and weight perspectives.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Model merging, specifically using TIES-Merging, can effectively balance over-forgetting and under-forgetting in unlearning systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current unlearning evaluation metrics, like MIA scores and ROUGE-based metrics, are insufficient for fully assessing successful unlearning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} There is a need to rethink unlearning objectives, moving towards on-demand unlearning and more robust evaluation methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is vital for researchers addressing **privacy and copyright in AI systems**. It highlights the limitations of current unlearning methods and evaluation metrics, paving the way for **more robust and comprehensive approaches**. The research opens avenues for exploring advanced merging techniques and refining unlearning objectives.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21088/x1.png)

> 🔼 This figure illustrates the model merging technique used for unlearning sensitive information.  The top panel shows a vanilla language model, where high probabilities are assigned to data points in the forget set (data to be removed) and low probabilities are given to the holdout data (data to be retained). The middle-left panel displays an 'over-forgetting' model, which removes too much information, while the middle-right panel shows an 'under-forgetting' model that doesn't remove enough. The bottom panel depicts the final 'balanced-forgetting' model obtained by merging the over-forgetting and under-forgetting models. This merging process reduces the model's confidence in predicting sensitive data from the forget set while maintaining its performance on the non-sensitive holdout data.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualizing Unlearning via Model Merging. The vanilla model (top) initially assigns high probabilities to forget set (member) and low probabilities to holdout data (nonmember). We then merge two individually unlearned models: one exhibiting over-forgetting (middle left) and the other under-forgetting (middle right). Model merging aims to achieve balanced forgetting (bottom), effectively reducing the model’s confidence in predicting sensitive member data while preserving its performance on nonmember data.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.5.5.6.1.1">Environment</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.5.6.1.2">Algorithm</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.5.6.1.3">Aggregate</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.6.1.4">Task Aggregate</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.6.1.5">MIA Score/MIA AUC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.5.5.6.1.6">MMLU Avg.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.5.5.7.2.1" rowspan="2"><span class="ltx_text" id="S3.T1.5.5.7.2.1.1">Online</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.7.2.2">AILS-NTUA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.5.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.7.2.3.1">0.706</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.7.2.4">0.827</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.7.2.5">
<span class="ltx_text ltx_font_bold" id="S3.T1.5.5.7.2.5.1">0.847</span> / –</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.7.2.6">0.443</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.8.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.8.3.1">YNU</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.8.3.2">0.470</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.3">0.834</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.4">0.139 / –</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.8.3.5">0.436</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.9.4">
<td class="ltx_td ltx_border_r" id="S3.T1.5.5.9.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.9.4.2">Mr.Snuffleupagus</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.9.4.3">0.376</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.9.4.4">0.387</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.9.4.5">0.256 / –</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.9.4.6"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.9.4.6.1">0.485</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.10.5">
<td class="ltx_td ltx_border_r" id="S3.T1.5.5.10.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.10.5.2">ZJUKLAB (ours)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.5.5.10.5.3">0.487</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.4"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.10.5.4.1">0.944</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.5">0.048 / –</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.10.5.6">0.471</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_tt" id="S3.T1.2.2.2.3" rowspan="3"><span class="ltx_text" id="S3.T1.2.2.2.3.1">Local</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1">NPO+GDR+KLR (<math alttext="model_{1}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S3.T1.1.1.1.1.m1.1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.m1.1.1.3.cmml">o</mi><mo id="S3.T1.1.1.1.1.m1.1.1.1a" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.4" xref="S3.T1.1.1.1.1.m1.1.1.4.cmml">d</mi><mo id="S3.T1.1.1.1.1.m1.1.1.1b" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.1.1.1.1.m1.1.1.5" xref="S3.T1.1.1.1.1.m1.1.1.5.cmml">e</mi><mo id="S3.T1.1.1.1.1.m1.1.1.1c" xref="S3.T1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S3.T1.1.1.1.1.m1.1.1.6" xref="S3.T1.1.1.1.1.m1.1.1.6.cmml"><mi id="S3.T1.1.1.1.1.m1.1.1.6.2" xref="S3.T1.1.1.1.1.m1.1.1.6.2.cmml">l</mi><mn id="S3.T1.1.1.1.1.m1.1.1.6.3" xref="S3.T1.1.1.1.1.m1.1.1.6.3.cmml">1</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.1"></times><ci id="S3.T1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.2">𝑚</ci><ci id="S3.T1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.1.m1.1.1.3">𝑜</ci><ci id="S3.T1.1.1.1.1.m1.1.1.4.cmml" xref="S3.T1.1.1.1.1.m1.1.1.4">𝑑</ci><ci id="S3.T1.1.1.1.1.m1.1.1.5.cmml" xref="S3.T1.1.1.1.1.m1.1.1.5">𝑒</ci><apply id="S3.T1.1.1.1.1.m1.1.1.6.cmml" xref="S3.T1.1.1.1.1.m1.1.1.6"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.m1.1.1.6.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1.6">subscript</csymbol><ci id="S3.T1.1.1.1.1.m1.1.1.6.2.cmml" xref="S3.T1.1.1.1.1.m1.1.1.6.2">𝑙</ci><cn id="S3.T1.1.1.1.1.m1.1.1.6.3.cmml" type="integer" xref="S3.T1.1.1.1.1.m1.1.1.6.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">model_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">italic_m italic_o italic_d italic_e italic_l start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.2.2.4">0.481</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.5">0.968</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.2">0.045 / <math alttext="0.022^{\clubsuit}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><msup id="S3.T1.2.2.2.2.m1.1.1" xref="S3.T1.2.2.2.2.m1.1.1.cmml"><mn id="S3.T1.2.2.2.2.m1.1.1.2" xref="S3.T1.2.2.2.2.m1.1.1.2.cmml">0.022</mn><mi id="S3.T1.2.2.2.2.m1.1.1.3" mathvariant="normal" xref="S3.T1.2.2.2.2.m1.1.1.3.cmml">♣</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><apply id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.2.2.m1.1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">superscript</csymbol><cn id="S3.T1.2.2.2.2.m1.1.1.2.cmml" type="float" xref="S3.T1.2.2.2.2.m1.1.1.2">0.022</cn><ci id="S3.T1.2.2.2.2.m1.1.1.3.cmml" xref="S3.T1.2.2.2.2.m1.1.1.3">♣</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">0.022^{\clubsuit}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">0.022 start_POSTSUPERSCRIPT ♣ end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.6">0.431</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.3.1">NPO+GDR+KLR (<math alttext="model_{2}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mrow id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml"><mi id="S3.T1.3.3.3.1.m1.1.1.2" xref="S3.T1.3.3.3.1.m1.1.1.2.cmml">m</mi><mo id="S3.T1.3.3.3.1.m1.1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.1.m1.1.1.3" xref="S3.T1.3.3.3.1.m1.1.1.3.cmml">o</mi><mo id="S3.T1.3.3.3.1.m1.1.1.1a" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.1.m1.1.1.4" xref="S3.T1.3.3.3.1.m1.1.1.4.cmml">d</mi><mo id="S3.T1.3.3.3.1.m1.1.1.1b" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.3.3.3.1.m1.1.1.5" xref="S3.T1.3.3.3.1.m1.1.1.5.cmml">e</mi><mo id="S3.T1.3.3.3.1.m1.1.1.1c" xref="S3.T1.3.3.3.1.m1.1.1.1.cmml">⁢</mo><msub id="S3.T1.3.3.3.1.m1.1.1.6" xref="S3.T1.3.3.3.1.m1.1.1.6.cmml"><mi id="S3.T1.3.3.3.1.m1.1.1.6.2" xref="S3.T1.3.3.3.1.m1.1.1.6.2.cmml">l</mi><mn id="S3.T1.3.3.3.1.m1.1.1.6.3" xref="S3.T1.3.3.3.1.m1.1.1.6.3.cmml">2</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><apply id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1"><times id="S3.T1.3.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1.1"></times><ci id="S3.T1.3.3.3.1.m1.1.1.2.cmml" xref="S3.T1.3.3.3.1.m1.1.1.2">𝑚</ci><ci id="S3.T1.3.3.3.1.m1.1.1.3.cmml" xref="S3.T1.3.3.3.1.m1.1.1.3">𝑜</ci><ci id="S3.T1.3.3.3.1.m1.1.1.4.cmml" xref="S3.T1.3.3.3.1.m1.1.1.4">𝑑</ci><ci id="S3.T1.3.3.3.1.m1.1.1.5.cmml" xref="S3.T1.3.3.3.1.m1.1.1.5">𝑒</ci><apply id="S3.T1.3.3.3.1.m1.1.1.6.cmml" xref="S3.T1.3.3.3.1.m1.1.1.6"><csymbol cd="ambiguous" id="S3.T1.3.3.3.1.m1.1.1.6.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1.6">subscript</csymbol><ci id="S3.T1.3.3.3.1.m1.1.1.6.2.cmml" xref="S3.T1.3.3.3.1.m1.1.1.6.2">𝑙</ci><cn id="S3.T1.3.3.3.1.m1.1.1.6.3.cmml" type="integer" xref="S3.T1.3.3.3.1.m1.1.1.6.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">model_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">italic_m italic_o italic_d italic_e italic_l start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.4.4.4.3">0.504</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4">0.659</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.2">0.364 / <math alttext="0.818^{\spadesuit}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.2.m1.1"><semantics id="S3.T1.4.4.4.2.m1.1a"><msup id="S3.T1.4.4.4.2.m1.1.1" xref="S3.T1.4.4.4.2.m1.1.1.cmml"><mn id="S3.T1.4.4.4.2.m1.1.1.2" xref="S3.T1.4.4.4.2.m1.1.1.2.cmml">0.818</mn><mi id="S3.T1.4.4.4.2.m1.1.1.3" mathvariant="normal" xref="S3.T1.4.4.4.2.m1.1.1.3.cmml">♠</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.2.m1.1b"><apply id="S3.T1.4.4.4.2.m1.1.1.cmml" xref="S3.T1.4.4.4.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.4.2.m1.1.1.1.cmml" xref="S3.T1.4.4.4.2.m1.1.1">superscript</csymbol><cn id="S3.T1.4.4.4.2.m1.1.1.2.cmml" type="float" xref="S3.T1.4.4.4.2.m1.1.1.2">0.818</cn><ci id="S3.T1.4.4.4.2.m1.1.1.3.cmml" xref="S3.T1.4.4.4.2.m1.1.1.3">♠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.2.m1.1c">0.818^{\spadesuit}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.2.m1.1d">0.818 start_POSTSUPERSCRIPT ♠ end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.5">0.491</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.5.5.2">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.5.5.5.3"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.3.1">0.806</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.4"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.4.1">0.939</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.1.1">0.997</span> / <math alttext="0.501^{\heartsuit}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><msup id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml"><mn id="S3.T1.5.5.5.1.m1.1.1.2" xref="S3.T1.5.5.5.1.m1.1.1.2.cmml">0.501</mn><mi id="S3.T1.5.5.5.1.m1.1.1.3" mathvariant="normal" xref="S3.T1.5.5.5.1.m1.1.1.3.cmml">♡</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><apply id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1">superscript</csymbol><cn id="S3.T1.5.5.5.1.m1.1.1.2.cmml" type="float" xref="S3.T1.5.5.5.1.m1.1.1.2">0.501</cn><ci id="S3.T1.5.5.5.1.m1.1.1.3.cmml" xref="S3.T1.5.5.5.1.m1.1.1.3">♡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">0.501^{\heartsuit}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">0.501 start_POSTSUPERSCRIPT ♡ end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.5.1">0.480</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the online and local experimental results for the ZJUKLAB team's unlearning system.  It shows the aggregate score, task aggregate score, MIA score (with AUC), and MMLU average score for the ZJUKLAB system and several other systems. The symbols ♣ (over-forgetting), ♠ (under-forgetting), and ♡ (balanced forgetting) indicate the bias of different models' unlearning behavior. The MIA AUC score close to 0.5 signifies a balanced forgetting scenario.
> <details>
> <summary>read the caption</summary>
> Table 1: The online and local experiments results. Note that ♣♣\clubsuit♣ indicates over-forgetting, ♠♠\spadesuit♠ indicates under-forgetting, and ♡♡\heartsuit♡ signifies balanced forgetting, achieving a raw MIA AUC close to 0.5. All metrics are detailed in §2.
> </details>





### In-depth insights


#### Model Merging
**Model Merging** offers a solution to reduce costs by combining multiple pretrained models. Strategies include parameter averaging (Linear), singular value decomposition (SVD) for low-rank alignment, and feature concatenation (CAT). Advanced variants like TIES trim redundant parameters and resolve sign conflicts, while TIES-SVD integrates SVD for fusion. DARE methods introduce parameter dropout and rescaling, with extensions (DARE-TIES-SVD) combining SVD for structured compression. Magnitude-prune removes low-impact weights, and its SVD variant is compressed via low-rank decomposition.

#### Unlearning System
An unlearning system aims to **selectively remove sensitive information** from models, addressing privacy and copyright concerns. Central to its design is the careful balance between **over-forgetting (excessive removal)** and **under-forgetting (incomplete removal)**. Model merging emerges as a promising technique, combining specialized models with complementary biases. The goal is to achieve balanced forgetting, effectively reducing the model's confidence in predicting sensitive data while preserving performance on non-sensitive tasks. Key steps involve a training phase to develop complementary models and a merging phase leveraging techniques to integrate their strengths. Evaluation focuses on metrics that accurately assess both the removal of sensitive knowledge and the retention of general knowledge. Further research should emphasize more comprehensive evaluation methodologies and a re-thinking of unlearning objectives, moving towards on-demand unlearning solutions.

#### Task Aggregate
**Task Aggregate** represents a crucial composite metric. It harmonically combines Regurgitation and Knowledge Scores, offering a balanced view of unlearning efficacy. **Regurgitation** assesses the removal of sensitive data, while **Knowledge** gauges the preservation of general knowledge. The harmonic mean ensures that a high score in one area doesn't mask deficiencies in the other. A strong Task Aggregate implies successful sensitive content removal without sacrificing broader knowledge retention. Analyzing Task Aggregate performance across various unlearning methods and datasets is critical for comprehensive evaluation, highlighting methods excelling in both forgetting and remembering, crucial for practical deployment.

#### Weight Analysis
The section analyzes parameter change vectors, focusing on angles between initial (ΔP165) and final (ΔPfinal) weight adjustments. **Initial over-forgetting shifts to a balance with retention**, reflected in the angle changing from 70-85 degrees. Near orthogonality (90 degrees) between initial and overall optimization direction suggests **later retention efforts correct initial "forgetting" bias.** This highlights a strategic shift during training, where the model initially prioritizes sensitive content removal but gradually integrates knowledge preservation, showcasing adaptive optimization for balanced unlearning.

#### Over-forgetting
The phenomenon of **over-forgetting** in machine unlearning is a critical concern. It arises when an unlearning method, aiming to remove specific sensitive information, inadvertently eliminates a broader spectrum of knowledge, negatively impacting the model's overall performance and utility. This can manifest as a **model collapse**, where the model generates nonsensical or repetitive outputs, failing to generalize to unseen data or retain previously learned general knowledge. It's crucial to balance the removal of target data with the preservation of valuable information. Over-forgetting can lead to a model that is no longer useful, despite successfully removing the sensitive content. Strategies to mitigate over-forgetting include careful selection of unlearning parameters, targeted interventions that focus on specific knowledge components, and regularization techniques to encourage the retention of relevant information. Furthermore, **evaluating unlearning methods requires careful consideration of both forgetting and retention metrics** to avoid unintended consequences of over-zealous unlearning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21088/x2.png)

> 🔼 This figure displays the performance of the model during training, focusing on two key metrics: Regurgitation Score and Knowledge Score.  The x-axis represents the training epochs, indicating the progression of training over time.  The y-axis shows the scores for both metrics. Separate lines are provided for different tasks (Task 1, Task 2, and Task 3) and whether the data used is the forget set or the retain set.  The curves illustrate how the model's ability to recall (regurgitate) sensitive information from the forget set and its ability to maintain general knowledge from the retain set changes over the course of training. This allows for an analysis of the effectiveness of the training process in achieving the dual goal of removing sensitive information while preserving useful information.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance Curves: Regurgitation and Knowledge Scores During Training.
> </details>



![](https://arxiv.org/html/2503.21088/x3.png)

> 🔼 This figure shows the training loss curves for two different model training approaches: one using only Negative Preference Optimization (NPO) and the other using NPO in combination with Gradient Descent on Retain Set (GDR) and Kullback-Leibler Divergence Minimization on Retain Set (KLR).  The graph illustrates how the loss changes over training epochs for each method.  By comparing the loss curves, we can observe the effectiveness of adding GDR and KLR to NPO for improving training performance and achieving balanced unlearning.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training Loss Curves of NPO and NPO+GDR+KLR.
> </details>



![](https://arxiv.org/html/2503.21088/x4.png)

> 🔼 Figure 4 illustrates the angle (θ) between parameter change vectors at different stages of model training.  Specifically, it shows the angles between the parameter changes from step 0 to 165 (ΔP₀¹⁶⁵), from step 165 to the final step (ΔP₁₆₅final), and from step 0 to the final step (ΔP₀final). This visualization helps analyze the optimization dynamics during training and understand how the model's focus shifts between forgetting and retaining knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 4: Angle (θ𝜃\thetaitalic_θ) between Parameter Change Vectors: Δ⁢P0165Δsuperscriptsubscript𝑃0165\Delta P_{0}^{165}roman_Δ italic_P start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 165 end_POSTSUPERSCRIPT, Δ⁢P165f⁢i⁢n⁢a⁢lΔsuperscriptsubscript𝑃165𝑓𝑖𝑛𝑎𝑙\Delta P_{165}^{final}roman_Δ italic_P start_POSTSUBSCRIPT 165 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_f italic_i italic_n italic_a italic_l end_POSTSUPERSCRIPT, Δ⁢P0f⁢i⁢n⁢a⁢lΔsuperscriptsubscript𝑃0𝑓𝑖𝑛𝑎𝑙\Delta P_{0}^{final}roman_Δ italic_P start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_f italic_i italic_n italic_a italic_l end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2503.21088/x5.png)

> 🔼 This figure demonstrates the impact of different density choices during the model merging phase on overall performance.  The x-axis likely represents different density thresholds used for trimming less important parameters during merging. The y-axis shows various performance metrics, such as aggregate score, task aggregate, MIA AUC score, and MMLU score.  The graph visualizes how varying the density affects the balance between retaining important information and removing sensitive data, ultimately revealing the optimal density setting for achieving the best results in the unlearning task.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance for different density choices
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.1.1.1.1">Merging methods</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1.2">Agggregate</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.2.1.1">Linear</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.2.1.2">0.244</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.3.2.1">DARE-Linear</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.3.2.2">0.440</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.3.1">DARE-TIES</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.3.2">0.561</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.4.1">Magnitude Prune</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.4.2">0.558</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.1.6.5.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.6.5.1.1">TIES</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.6.5.2.1">0.806</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different model merging techniques on the task of unlearning sensitive content from large language models.  The techniques compared include simple linear merging, DARE-Linear, DARE-TIES, Magnitude Prune, and TIES-Merging. The evaluation metric is the aggregate score, indicating the overall effectiveness of each method in balancing the removal of sensitive information with the preservation of non-sensitive knowledge.
> <details>
> <summary>read the caption</summary>
> Table 2: Merging techniques comparison
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T3.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T3.2.2.3.1">Parameter</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1">Model<sub class="ltx_sub" id="A1.T3.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="A1.T3.1.1.1.1.1.1">1</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T3.2.2.2.1">Model<sub class="ltx_sub" id="A1.T3.2.2.2.1.1"><span class="ltx_text ltx_font_medium" id="A1.T3.2.2.2.1.1.1">2</span></sub></span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T3.4.5.1.1">batch_size</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.5.1.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.5.1.3">2</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.6.2.1">gradient_accumulation</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.6.2.2">4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.6.2.3">4</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.7.3.1">num_epochs</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.7.3.2">5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.7.3.3">5</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.4.3">lr</th>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.1"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T3.3.3.1.m1.1"><semantics id="A1.T3.3.3.1.m1.1a"><mrow id="A1.T3.3.3.1.m1.1.1" xref="A1.T3.3.3.1.m1.1.1.cmml"><mn id="A1.T3.3.3.1.m1.1.1.2" xref="A1.T3.3.3.1.m1.1.1.2.cmml">1</mn><mo id="A1.T3.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T3.3.3.1.m1.1.1.1.cmml">×</mo><msup id="A1.T3.3.3.1.m1.1.1.3" xref="A1.T3.3.3.1.m1.1.1.3.cmml"><mn id="A1.T3.3.3.1.m1.1.1.3.2" xref="A1.T3.3.3.1.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T3.3.3.1.m1.1.1.3.3" xref="A1.T3.3.3.1.m1.1.1.3.3.cmml"><mo id="A1.T3.3.3.1.m1.1.1.3.3a" xref="A1.T3.3.3.1.m1.1.1.3.3.cmml">−</mo><mn id="A1.T3.3.3.1.m1.1.1.3.3.2" xref="A1.T3.3.3.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.1.m1.1b"><apply id="A1.T3.3.3.1.m1.1.1.cmml" xref="A1.T3.3.3.1.m1.1.1"><times id="A1.T3.3.3.1.m1.1.1.1.cmml" xref="A1.T3.3.3.1.m1.1.1.1"></times><cn id="A1.T3.3.3.1.m1.1.1.2.cmml" type="integer" xref="A1.T3.3.3.1.m1.1.1.2">1</cn><apply id="A1.T3.3.3.1.m1.1.1.3.cmml" xref="A1.T3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.3.3.1.m1.1.1.3.1.cmml" xref="A1.T3.3.3.1.m1.1.1.3">superscript</csymbol><cn id="A1.T3.3.3.1.m1.1.1.3.2.cmml" type="integer" xref="A1.T3.3.3.1.m1.1.1.3.2">10</cn><apply id="A1.T3.3.3.1.m1.1.1.3.3.cmml" xref="A1.T3.3.3.1.m1.1.1.3.3"><minus id="A1.T3.3.3.1.m1.1.1.3.3.1.cmml" xref="A1.T3.3.3.1.m1.1.1.3.3"></minus><cn id="A1.T3.3.3.1.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T3.3.3.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.4.2"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="A1.T3.4.4.2.m1.1"><semantics id="A1.T3.4.4.2.m1.1a"><mrow id="A1.T3.4.4.2.m1.1.1" xref="A1.T3.4.4.2.m1.1.1.cmml"><mn id="A1.T3.4.4.2.m1.1.1.2" xref="A1.T3.4.4.2.m1.1.1.2.cmml">1</mn><mo id="A1.T3.4.4.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T3.4.4.2.m1.1.1.1.cmml">×</mo><msup id="A1.T3.4.4.2.m1.1.1.3" xref="A1.T3.4.4.2.m1.1.1.3.cmml"><mn id="A1.T3.4.4.2.m1.1.1.3.2" xref="A1.T3.4.4.2.m1.1.1.3.2.cmml">10</mn><mrow id="A1.T3.4.4.2.m1.1.1.3.3" xref="A1.T3.4.4.2.m1.1.1.3.3.cmml"><mo id="A1.T3.4.4.2.m1.1.1.3.3a" xref="A1.T3.4.4.2.m1.1.1.3.3.cmml">−</mo><mn id="A1.T3.4.4.2.m1.1.1.3.3.2" xref="A1.T3.4.4.2.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T3.4.4.2.m1.1b"><apply id="A1.T3.4.4.2.m1.1.1.cmml" xref="A1.T3.4.4.2.m1.1.1"><times id="A1.T3.4.4.2.m1.1.1.1.cmml" xref="A1.T3.4.4.2.m1.1.1.1"></times><cn id="A1.T3.4.4.2.m1.1.1.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.2">1</cn><apply id="A1.T3.4.4.2.m1.1.1.3.cmml" xref="A1.T3.4.4.2.m1.1.1.3"><csymbol cd="ambiguous" id="A1.T3.4.4.2.m1.1.1.3.1.cmml" xref="A1.T3.4.4.2.m1.1.1.3">superscript</csymbol><cn id="A1.T3.4.4.2.m1.1.1.3.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.3.2">10</cn><apply id="A1.T3.4.4.2.m1.1.1.3.3.cmml" xref="A1.T3.4.4.2.m1.1.1.3.3"><minus id="A1.T3.4.4.2.m1.1.1.3.3.1.cmml" xref="A1.T3.4.4.2.m1.1.1.3.3"></minus><cn id="A1.T3.4.4.2.m1.1.1.3.3.2.cmml" type="integer" xref="A1.T3.4.4.2.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.4.4.2.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.4.4.2.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.8.4.1">max_length</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.4.2">256</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.8.4.3">256</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.9.5.1">weight_decay</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.9.5.2">0.01</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.9.5.3">0.01</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.10.6.1">seed</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.10.6.2">42</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.10.6.3">42</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.11.7.1">ga_ratio</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.11.7.2">0.4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.11.7.3">0.3</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.12.8.1">gd_ratio</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.12.8.2">0.4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.12.8.3">0.3</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.13.9.1">gk_ratio</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.13.9.2">0.2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.13.9.3">0.4</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.14.10.1">LoRA_r</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.14.10.2">32</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.14.10.3">32</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T3.4.15.11.1">LoRA_alpha</th>
<td class="ltx_td ltx_align_center" id="A1.T3.4.15.11.2">32</td>
<td class="ltx_td ltx_align_center" id="A1.T3.4.15.11.3">32</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.16.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T3.4.16.12.1">LoRA_dropout</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.4.16.12.2">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.4.16.12.3">0.05</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameter settings used during the training phase of the unlearning model. It includes parameters like batch size, gradient accumulation steps, learning rate, maximum sequence length, weight decay, and various parameters specific to the LoRA (Low-Rank Adaptation) technique employed for model optimization.  The table showcases two different model configurations (Model 1 and Model 2), highlighting the variations used in the training of the two complementary models used in the model merging approach for unlearning.
> <details>
> <summary>read the caption</summary>
> Table 3: Complete Hyperparameters Configuration.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21088/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21088/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}