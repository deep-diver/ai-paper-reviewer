---
title: "How Much Knowledge Can You Pack into a LoRA Adapter without Harming LLM?"
summary: "Packing new knowledge into LoRA adapters can harm LLMs! A delicate balance is needed to prevent performance decline."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 AIRI",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14502 {{< /keyword >}}
{{< keyword icon="writer" >}} Sergey Pletenev et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14502" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14502" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14502/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) rely on pre-training knowledge, but Low-Rank Adaptation (LoRA) is used for updates. Integrating new facts can compromise previously learned knowledge. Existing techniques like Retrieval-Augmented Generation (RAG) and few-shot learning have limitations, motivating a revisit to fine-tuning for knowledge integration. Fine-tuning LLMs is computationally expensive, leading to Parameter-Efficient Fine-Tuning (PEFT) techniques like LoRA. However, modified LLMs can suffer from catastrophic forgetting or loss of associations. Increased new data can degrade pre-existing knowledge, prompting investigation into how much knowledge can be added without harm.



This study investigates additional knowledge integration into LLMs via LoRA while preserving capabilities. Experiments fine-tuned Llama-3.1-8B-instruct with varying new knowledge amounts, tracking degradation using metrics and benchmarks(MMLU, TruthfulQA). The best results came from mixing known and new facts, but performance on external question-answering declined. Training data bias led to over-represented answers, while models became more confident and refused answers less often. The findings underscore LoRA-based LLM updates' pitfalls and the importance of balanced training data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mixing known and new facts during LoRA fine-tuning yields better results but can degrade performance on external QA benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Biasing training data towards certain entities leads to answer regression. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Fine-tuning can make models overconfident and less likely to admit uncertainty. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it highlights the **trade-offs involved in updating LLMs** with new knowledge using LoRA. Understanding these dynamics is crucial for developing **effective and safe fine-tuning strategies**. The research also uncovers the risk of reasoning disruption and suggests directions for mitigating these issues, paving the way for further research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14502/x1.png)

> 🔼 This figure displays the performance of a fine-tuned Llama-3.1-8B-Instruct language model on the TruthfulQA benchmark as the amount of new knowledge incorporated during training increases.  The solid line represents the average accuracy across three independent trials (with different random seeds), and the shaded area shows the range (minimum to maximum) of those accuracy scores.  The x-axis indicates the number of 'unknown' facts (facts not present in the model's pre-training data) added to the training set.  The y-axis shows the accuracy on the TruthfulQA benchmark. The results illustrate a negative correlation: As more new facts are added, the model's accuracy on TruthfulQA tends to decrease.
> <details>
> <summary>read the caption</summary>
> Figure 1: Decrease in quality with increase of new facts learned by the model: results of the fine-tuned Llama-3.1-8B-Instruct on TruthfulQA (solid line corresponds to the mean score, error margin – to the min/max scores of three runs with different random seeds).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.4.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.4.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.2.1">Definition</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.4.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.3.1">Explanation</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.4.1"># Facts</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2"><span class="ltx_text ltx_font_typewriter" id="S3.T1.1.1.2.1">Unknown (UK)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1"><math alttext="\textbf{P}_{\text{correct}}(q,a,F)=0" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.3"><semantics id="S3.T1.1.1.1.m1.3a"><mrow id="S3.T1.1.1.1.m1.3.4" xref="S3.T1.1.1.1.m1.3.4.cmml"><mrow id="S3.T1.1.1.1.m1.3.4.2" xref="S3.T1.1.1.1.m1.3.4.2.cmml"><msub id="S3.T1.1.1.1.m1.3.4.2.2" xref="S3.T1.1.1.1.m1.3.4.2.2.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.m1.3.4.2.2.2" xref="S3.T1.1.1.1.m1.3.4.2.2.2a.cmml">P</mtext><mtext id="S3.T1.1.1.1.m1.3.4.2.2.3" xref="S3.T1.1.1.1.m1.3.4.2.2.3a.cmml">correct</mtext></msub><mo id="S3.T1.1.1.1.m1.3.4.2.1" xref="S3.T1.1.1.1.m1.3.4.2.1.cmml">⁢</mo><mrow id="S3.T1.1.1.1.m1.3.4.2.3.2" xref="S3.T1.1.1.1.m1.3.4.2.3.1.cmml"><mo id="S3.T1.1.1.1.m1.3.4.2.3.2.1" stretchy="false" xref="S3.T1.1.1.1.m1.3.4.2.3.1.cmml">(</mo><mi id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml">q</mi><mo id="S3.T1.1.1.1.m1.3.4.2.3.2.2" xref="S3.T1.1.1.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.1.1.1.m1.2.2" xref="S3.T1.1.1.1.m1.2.2.cmml">a</mi><mo id="S3.T1.1.1.1.m1.3.4.2.3.2.3" xref="S3.T1.1.1.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.1.1.1.m1.3.3" xref="S3.T1.1.1.1.m1.3.3.cmml">F</mi><mo id="S3.T1.1.1.1.m1.3.4.2.3.2.4" stretchy="false" xref="S3.T1.1.1.1.m1.3.4.2.3.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.1.1.1.m1.3.4.1" xref="S3.T1.1.1.1.m1.3.4.1.cmml">=</mo><mn id="S3.T1.1.1.1.m1.3.4.3" xref="S3.T1.1.1.1.m1.3.4.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.3b"><apply id="S3.T1.1.1.1.m1.3.4.cmml" xref="S3.T1.1.1.1.m1.3.4"><eq id="S3.T1.1.1.1.m1.3.4.1.cmml" xref="S3.T1.1.1.1.m1.3.4.1"></eq><apply id="S3.T1.1.1.1.m1.3.4.2.cmml" xref="S3.T1.1.1.1.m1.3.4.2"><times id="S3.T1.1.1.1.m1.3.4.2.1.cmml" xref="S3.T1.1.1.1.m1.3.4.2.1"></times><apply id="S3.T1.1.1.1.m1.3.4.2.2.cmml" xref="S3.T1.1.1.1.m1.3.4.2.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.m1.3.4.2.2.1.cmml" xref="S3.T1.1.1.1.m1.3.4.2.2">subscript</csymbol><ci id="S3.T1.1.1.1.m1.3.4.2.2.2a.cmml" xref="S3.T1.1.1.1.m1.3.4.2.2.2"><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.m1.3.4.2.2.2.cmml" xref="S3.T1.1.1.1.m1.3.4.2.2.2">P</mtext></ci><ci id="S3.T1.1.1.1.m1.3.4.2.2.3a.cmml" xref="S3.T1.1.1.1.m1.3.4.2.2.3"><mtext id="S3.T1.1.1.1.m1.3.4.2.2.3.cmml" mathsize="70%" xref="S3.T1.1.1.1.m1.3.4.2.2.3">correct</mtext></ci></apply><vector id="S3.T1.1.1.1.m1.3.4.2.3.1.cmml" xref="S3.T1.1.1.1.m1.3.4.2.3.2"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">𝑞</ci><ci id="S3.T1.1.1.1.m1.2.2.cmml" xref="S3.T1.1.1.1.m1.2.2">𝑎</ci><ci id="S3.T1.1.1.1.m1.3.3.cmml" xref="S3.T1.1.1.1.m1.3.3">𝐹</ci></vector></apply><cn id="S3.T1.1.1.1.m1.3.4.3.cmml" type="integer" xref="S3.T1.1.1.1.m1.3.4.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.3c">\textbf{P}_{\text{correct}}(q,a,F)=0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.3d">P start_POSTSUBSCRIPT correct end_POSTSUBSCRIPT ( italic_q , italic_a , italic_F ) = 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3">LLM <span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.1">never</span> returns the correct answer</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.4">14,373</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2"><span class="ltx_text ltx_font_typewriter" id="S3.T1.2.2.2.1">MaybeKnown (MK)</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.1"><math alttext="\textbf{P}_{\text{correct}}(q,a,F)&gt;0" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.3"><semantics id="S3.T1.2.2.1.m1.3a"><mrow id="S3.T1.2.2.1.m1.3.4" xref="S3.T1.2.2.1.m1.3.4.cmml"><mrow id="S3.T1.2.2.1.m1.3.4.2" xref="S3.T1.2.2.1.m1.3.4.2.cmml"><msub id="S3.T1.2.2.1.m1.3.4.2.2" xref="S3.T1.2.2.1.m1.3.4.2.2.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T1.2.2.1.m1.3.4.2.2.2" xref="S3.T1.2.2.1.m1.3.4.2.2.2a.cmml">P</mtext><mtext id="S3.T1.2.2.1.m1.3.4.2.2.3" xref="S3.T1.2.2.1.m1.3.4.2.2.3a.cmml">correct</mtext></msub><mo id="S3.T1.2.2.1.m1.3.4.2.1" xref="S3.T1.2.2.1.m1.3.4.2.1.cmml">⁢</mo><mrow id="S3.T1.2.2.1.m1.3.4.2.3.2" xref="S3.T1.2.2.1.m1.3.4.2.3.1.cmml"><mo id="S3.T1.2.2.1.m1.3.4.2.3.2.1" stretchy="false" xref="S3.T1.2.2.1.m1.3.4.2.3.1.cmml">(</mo><mi id="S3.T1.2.2.1.m1.1.1" xref="S3.T1.2.2.1.m1.1.1.cmml">q</mi><mo id="S3.T1.2.2.1.m1.3.4.2.3.2.2" xref="S3.T1.2.2.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.2.2.1.m1.2.2" xref="S3.T1.2.2.1.m1.2.2.cmml">a</mi><mo id="S3.T1.2.2.1.m1.3.4.2.3.2.3" xref="S3.T1.2.2.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.2.2.1.m1.3.3" xref="S3.T1.2.2.1.m1.3.3.cmml">F</mi><mo id="S3.T1.2.2.1.m1.3.4.2.3.2.4" stretchy="false" xref="S3.T1.2.2.1.m1.3.4.2.3.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.2.2.1.m1.3.4.1" xref="S3.T1.2.2.1.m1.3.4.1.cmml">&gt;</mo><mn id="S3.T1.2.2.1.m1.3.4.3" xref="S3.T1.2.2.1.m1.3.4.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.3b"><apply id="S3.T1.2.2.1.m1.3.4.cmml" xref="S3.T1.2.2.1.m1.3.4"><gt id="S3.T1.2.2.1.m1.3.4.1.cmml" xref="S3.T1.2.2.1.m1.3.4.1"></gt><apply id="S3.T1.2.2.1.m1.3.4.2.cmml" xref="S3.T1.2.2.1.m1.3.4.2"><times id="S3.T1.2.2.1.m1.3.4.2.1.cmml" xref="S3.T1.2.2.1.m1.3.4.2.1"></times><apply id="S3.T1.2.2.1.m1.3.4.2.2.cmml" xref="S3.T1.2.2.1.m1.3.4.2.2"><csymbol cd="ambiguous" id="S3.T1.2.2.1.m1.3.4.2.2.1.cmml" xref="S3.T1.2.2.1.m1.3.4.2.2">subscript</csymbol><ci id="S3.T1.2.2.1.m1.3.4.2.2.2a.cmml" xref="S3.T1.2.2.1.m1.3.4.2.2.2"><mtext class="ltx_mathvariant_bold" id="S3.T1.2.2.1.m1.3.4.2.2.2.cmml" xref="S3.T1.2.2.1.m1.3.4.2.2.2">P</mtext></ci><ci id="S3.T1.2.2.1.m1.3.4.2.2.3a.cmml" xref="S3.T1.2.2.1.m1.3.4.2.2.3"><mtext id="S3.T1.2.2.1.m1.3.4.2.2.3.cmml" mathsize="70%" xref="S3.T1.2.2.1.m1.3.4.2.2.3">correct</mtext></ci></apply><vector id="S3.T1.2.2.1.m1.3.4.2.3.1.cmml" xref="S3.T1.2.2.1.m1.3.4.2.3.2"><ci id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1">𝑞</ci><ci id="S3.T1.2.2.1.m1.2.2.cmml" xref="S3.T1.2.2.1.m1.2.2">𝑎</ci><ci id="S3.T1.2.2.1.m1.3.3.cmml" xref="S3.T1.2.2.1.m1.3.3">𝐹</ci></vector></apply><cn id="S3.T1.2.2.1.m1.3.4.3.cmml" type="integer" xref="S3.T1.2.2.1.m1.3.4.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.3c">\textbf{P}_{\text{correct}}(q,a,F)&gt;0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.3d">P start_POSTSUBSCRIPT correct end_POSTSUBSCRIPT ( italic_q , italic_a , italic_F ) &gt; 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.3">LLM returns the correct answer <span class="ltx_text ltx_font_bold" id="S3.T1.2.2.3.1">occasionally</span>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.2.2.4">3,931</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.3.3.2"><span class="ltx_text ltx_font_typewriter" id="S3.T1.3.3.2.1">HighlyKnown (HK)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.3.3.1"><math alttext="\textbf{P}_{\text{correct}}(q,a,F)=1" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.3"><semantics id="S3.T1.3.3.1.m1.3a"><mrow id="S3.T1.3.3.1.m1.3.4" xref="S3.T1.3.3.1.m1.3.4.cmml"><mrow id="S3.T1.3.3.1.m1.3.4.2" xref="S3.T1.3.3.1.m1.3.4.2.cmml"><msub id="S3.T1.3.3.1.m1.3.4.2.2" xref="S3.T1.3.3.1.m1.3.4.2.2.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T1.3.3.1.m1.3.4.2.2.2" xref="S3.T1.3.3.1.m1.3.4.2.2.2a.cmml">P</mtext><mtext id="S3.T1.3.3.1.m1.3.4.2.2.3" xref="S3.T1.3.3.1.m1.3.4.2.2.3a.cmml">correct</mtext></msub><mo id="S3.T1.3.3.1.m1.3.4.2.1" xref="S3.T1.3.3.1.m1.3.4.2.1.cmml">⁢</mo><mrow id="S3.T1.3.3.1.m1.3.4.2.3.2" xref="S3.T1.3.3.1.m1.3.4.2.3.1.cmml"><mo id="S3.T1.3.3.1.m1.3.4.2.3.2.1" stretchy="false" xref="S3.T1.3.3.1.m1.3.4.2.3.1.cmml">(</mo><mi id="S3.T1.3.3.1.m1.1.1" xref="S3.T1.3.3.1.m1.1.1.cmml">q</mi><mo id="S3.T1.3.3.1.m1.3.4.2.3.2.2" xref="S3.T1.3.3.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.3.3.1.m1.2.2" xref="S3.T1.3.3.1.m1.2.2.cmml">a</mi><mo id="S3.T1.3.3.1.m1.3.4.2.3.2.3" xref="S3.T1.3.3.1.m1.3.4.2.3.1.cmml">,</mo><mi id="S3.T1.3.3.1.m1.3.3" xref="S3.T1.3.3.1.m1.3.3.cmml">F</mi><mo id="S3.T1.3.3.1.m1.3.4.2.3.2.4" stretchy="false" xref="S3.T1.3.3.1.m1.3.4.2.3.1.cmml">)</mo></mrow></mrow><mo id="S3.T1.3.3.1.m1.3.4.1" xref="S3.T1.3.3.1.m1.3.4.1.cmml">=</mo><mn id="S3.T1.3.3.1.m1.3.4.3" xref="S3.T1.3.3.1.m1.3.4.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.3b"><apply id="S3.T1.3.3.1.m1.3.4.cmml" xref="S3.T1.3.3.1.m1.3.4"><eq id="S3.T1.3.3.1.m1.3.4.1.cmml" xref="S3.T1.3.3.1.m1.3.4.1"></eq><apply id="S3.T1.3.3.1.m1.3.4.2.cmml" xref="S3.T1.3.3.1.m1.3.4.2"><times id="S3.T1.3.3.1.m1.3.4.2.1.cmml" xref="S3.T1.3.3.1.m1.3.4.2.1"></times><apply id="S3.T1.3.3.1.m1.3.4.2.2.cmml" xref="S3.T1.3.3.1.m1.3.4.2.2"><csymbol cd="ambiguous" id="S3.T1.3.3.1.m1.3.4.2.2.1.cmml" xref="S3.T1.3.3.1.m1.3.4.2.2">subscript</csymbol><ci id="S3.T1.3.3.1.m1.3.4.2.2.2a.cmml" xref="S3.T1.3.3.1.m1.3.4.2.2.2"><mtext class="ltx_mathvariant_bold" id="S3.T1.3.3.1.m1.3.4.2.2.2.cmml" xref="S3.T1.3.3.1.m1.3.4.2.2.2">P</mtext></ci><ci id="S3.T1.3.3.1.m1.3.4.2.2.3a.cmml" xref="S3.T1.3.3.1.m1.3.4.2.2.3"><mtext id="S3.T1.3.3.1.m1.3.4.2.2.3.cmml" mathsize="70%" xref="S3.T1.3.3.1.m1.3.4.2.2.3">correct</mtext></ci></apply><vector id="S3.T1.3.3.1.m1.3.4.2.3.1.cmml" xref="S3.T1.3.3.1.m1.3.4.2.3.2"><ci id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1">𝑞</ci><ci id="S3.T1.3.3.1.m1.2.2.cmml" xref="S3.T1.3.3.1.m1.2.2">𝑎</ci><ci id="S3.T1.3.3.1.m1.3.3.cmml" xref="S3.T1.3.3.1.m1.3.3">𝐹</ci></vector></apply><cn id="S3.T1.3.3.1.m1.3.4.3.cmml" type="integer" xref="S3.T1.3.3.1.m1.3.4.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.3c">\textbf{P}_{\text{correct}}(q,a,F)=1</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.3d">P start_POSTSUBSCRIPT correct end_POSTSUBSCRIPT ( italic_q , italic_a , italic_F ) = 1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.3.3.3">LLM <span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.1">always</span> returns the correct answer</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.3.3.4">2,732</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table categorizes knowledge facts based on a language model's ability to generate correct answers.  The probability of the model giving the correct answer is assessed using various few-shot prompts.  Three categories are defined: HighlyKnown (always predicts correctly), MaybeKnown (sometimes predicts correctly), and Unknown (never predicts correctly).  The table also provides the count of facts within each category.
> <details>
> <summary>read the caption</summary>
> Table 1: Fact categories based on the probability of providing the correct answer to a corresponding question and number of fact (q,a)𝑞𝑎(q,a)( italic_q , italic_a ) from each category.
> </details>





### In-depth insights


#### LoRA's Limits
**LoRA's limits** stem from its design. While efficient, it only adjusts a fraction of the parameters, potentially capping the model's capacity to absorb new knowledge without disrupting existing capabilities. The **trade-off between accuracy, recall and hallucination** must be considered in designing LoRA for knowledge integration. Integrating new information requires a careful **balance** to maintain the model's reasoning abilities. As shown in the study **TruthfulQA**, and **MMLU**,  these methods do not provide any help to LoRA to perform well. Therefore,  the composition of training data is necessary when using LoRA.

#### Known Fact Bias
**Known fact bias** in language models arises when models disproportionately favor information they already possess during pre-training, hindering the integration of new knowledge. This bias manifests as a resistance to learning novel facts or a tendency to distort new information to align with existing beliefs. **Fine-tuning on imbalanced datasets** exacerbates this, leading to models that excel at recalling known facts but struggle with generalization and adaptation. Mitigating this bias requires **careful data curation**, favoring datasets with diverse and novel information, and employing techniques like **contrastive learning** to encourage the model to distinguish between known and unknown facts. Further research on **knowledge attribution** within models could reveal the mechanisms underlying this bias and inform more effective mitigation strategies, promoting more robust and adaptive language models.

#### Paraphrase Impact
**Paraphrasing enhances knowledge integration**: Augmenting training data with paraphrased versions of unknown facts improves the LLM's ability to learn and retain new information. **Convergence and reliability**: Models trained with paraphrased data converge faster during fine-tuning and achieve higher reliability scores, indicating better learning of new knowledge. **Structural understanding**: Paraphrasing helps the model grasp the 'inner structure' of knowledge rather than just memorizing simple sentences, leading to more robust knowledge representation. **Mitigation of forgetting**: By exposing the model to different phrasings of the same information, paraphrasing reduces the risk of catastrophic forgetting of previously known facts.

#### Knowledge Tradeoff
The "knowledge tradeoff" in LLMs adapted with LoRA highlights a critical balance: integrating new facts without impairing existing knowledge. **Fine-tuning can degrade pre-existing knowledge** if not carefully managed. Experiments reveal that combining known and new facts during training yields optimal results, but carries the risk of diminished performance on general knowledge benchmarks. The model may regress to overrepresented answers when training data is biased, and interestingly, confidence increases, leading to more refusals to answer. It indicates a complex interplay between new information assimilation and maintaining prior knowledge and abilities. The trade-off underscores the need for careful training data design and parameter adjustment to ensure new knowledge integration enhances, rather than harms, the overall model capabilities. In short, the efficient packing of knowledge is not only about adding new information but also about **preserving the utility and reliability of existing knowledge**.

#### Over-Confidence
The paper touches upon the important issue of model overconfidence, noting that LLMs fine-tuned with LoRA adapters demonstrate a **reduction in their ability to express uncertainty**.  Specifically, the research highlights that LoRA-adapted LLMs become less likely to admit when they don't know an answer. This has serious implications, as the model may start giving **statistically overrepresented answers**.  Essentially, the fine-tuning process, while aiming to improve knowledge integration, can inadvertently lead to **decreased reliability** in the LLM's self-assessment of its knowledge boundaries. Thus, it's not simply about adding new facts, but ensuring that the model maintains its capacity to appropriately express doubt when faced with questions outside its knowledge base.  The observed overconfidence emphasizes the need for careful calibration techniques during or after fine-tuning to ensure the model remains both knowledgeable and realistically self-aware. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14502/x4.png)

> 🔼 This figure displays the reliability scores across multiple training epochs for two different datasets (500 and 3000 Unknown items) while incorporating paraphrased and HighlyKnown facts.  The reliability metric reflects the model's ability to consistently generate correct answers, illustrating the impact of additional training data on model performance.  Separate lines represent different training approaches (using 0, 1, or 10 paraphrases or HighlyKnown facts per unknown item). The min-max error bars shown for each data point reflect variability across three independent training runs, suggesting the consistency of results.
> <details>
> <summary>read the caption</summary>
> Figure 2: Dynamics of the reliability score during training on 500 (left) and 3,000 (right) Unknown items along with paraphrases and HighlyKnown facts. Error bar is min-max for 3 seed run.
> </details>



![](https://arxiv.org/html/2502.14502/x7.png)

> 🔼 This figure displays the performance of the fine-tuned Llama-3.1-8B-Instruct model on the MMLU (Massive Multitask Language Understanding) benchmark as a function of the amount of new, previously unknown knowledge introduced during the fine-tuning process using LoRA (Low-Rank Adaptation).  The x-axis represents the number of 'Unknown' facts added to the training dataset. The y-axis shows the accuracy achieved on the MMLU benchmark.  A horizontal line represents the baseline accuracy of the original, untrained model. The graph illustrates that increasing the amount of new knowledge initially improves the model's performance on MMLU; however, beyond a certain point, adding more new facts leads to a decrease in accuracy, indicating that integrating too much novel information into the model via LoRA can negatively affect its overall reasoning abilities.  The results suggest a trade-off between incorporating new knowledge and maintaining the model’s general capabilities. Less additional data during training leads to less disruption in reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 3: MMLU: Accuracy dependent on the amount of Unknown learned. Pointed horizontal line indicates the baseline. Models trained with less additional data tend to disrupt reasoning less.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S5.T2.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Highly Known</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T2.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Paraphrase</th>
</tr>
<tr class="ltx_tr" id="S5.T2.1.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">UK</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.1.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.2.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.2.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.2.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.3.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.1.3.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.1.3.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.1.3.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.4.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.4.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.4.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.5.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">50</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.5.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.5.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.6.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.6.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.6.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.6.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.7.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_r" id="S5.T2.1.7.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">500</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.7.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.99</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.7.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.8.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.1.8.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">3,000</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.8.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.8.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.92</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.1.8.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.8.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.8.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.8.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.99</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the reliability scores achieved by LoRA models trained on different combinations of HighlyKnown and paraphrased facts.  The reliability score represents the model's ability to consistently predict correct answers for unknown facts (UK) after fine-tuning.  The results show that the model learns almost all UK facts effectively when trained using paraphrased data. However, when incorporating HighlyKnown (HK) facts, alongside the 3,000 UK facts, the reliability significantly decreases, indicating a negative impact of this training approach on the model's ability to learn and retain new knowledge.
> <details>
> <summary>read the caption</summary>
> Table 2: Reliability on test for models trained on HighlyKnown and Paraphrase. Almost all UK facts are learned except for 3,000 UK trained with HK.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T3.1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.3.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.3.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.3.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HK</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.4.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.4.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.4.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Paraphrase</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.5.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.5.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.5.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HK</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.6.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.6.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.6.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Paraphrase</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.3.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.034</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.036</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.029</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.3.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.3.5.1" style="color:#00FF00;">0.056</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.3.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.045</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.4.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.4.2.1" style="color:#B80000;">0.053</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.054</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.056</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.4.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.118</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.4.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.067</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.5.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.6.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.6.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.021</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.6.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.051</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.6.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.049</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.6.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.6.6.5.1" style="color:#00FF00;">0.068</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.6.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.038</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.7.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.7.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.245</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.181</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.7.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.7.7.4.1" style="color:#B80000;">0.154</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.158</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.7.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.187</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.8.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">50 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.9.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.9.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.06</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.071</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.9.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.069</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.9.5.1" style="color:#00FF00;">0.078</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.9.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.07</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.10.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.10.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.148</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.138</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.10.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.159</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.10.10.5.1" style="color:#B80000;">0.16</span></td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.10.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.174</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.11.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">100 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.12.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.12.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.067</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.12.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.12.12.3.1" style="color:#00FF00;">0.083</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.12.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.078</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.12.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.071</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.12.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.064</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.13.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.13.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.172</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.13.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.13.13.3.1" style="color:#B80000;">0.151</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.13.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.154</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.13.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.181</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.13.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.204</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.14.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">500 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.15.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.15.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.096</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.15.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.1</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.15.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.15.15.4.1" style="color:#00FF00;">0.105</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.15.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.089</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.15.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.076</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.16.16">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.16.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.16.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.195</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.16.16.3.1" style="color:#B80000;">0.191</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S5.T3.1.1.16.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.194</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.213</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.16.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.25</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S5.T3.1.1.17.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">3,000 UK</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.18.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">positive shift</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.18.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.222</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.18.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.18.18.3.1" style="color:#00FF00;">0.229</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S5.T3.1.1.18.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.222</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.18.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.163</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T3.1.1.18.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.213</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.1.1.19.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">negative shift</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S5.T3.1.1.19.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.235</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.202</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r" id="S5.T3.1.1.19.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.23</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.19.19.5.1" style="color:#B80000;">0.149</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.1.1.19.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.253</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of adding new knowledge to a language model using Low-Rank Adaptation (LoRA). It shows the number of positive and negative knowledge shifts observed for different amounts of unknown facts included in the training data, categorized by training methods (with and without additional paraphrased or HighlyKnown facts).  Positive shifts represent cases where the model improves its knowledge (e.g., correctly answering a question it previously couldn't), while negative shifts indicate knowledge degradation (e.g., starting to answer questions incorrectly). The table helps to analyze the effectiveness of different LoRA fine-tuning strategies in balancing new knowledge integration with retention of existing knowledge.
> <details>
> <summary>read the caption</summary>
> Table 3: Positive and negative shifts. Each minitable compares positive and negative shifts for amount of unknown facts learned. Columns represent extra training data used: either HK or paraphrasing. Green numbers indicate maximum positive shift for the amount of UK learned, while red numbers indicate minimum negative shift for UK learned.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.3.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.3.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.3.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HK</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 analyzes the impact of fine-tuning LLMs using LoRA on two key aspects of model behavior: the tendency to refuse answering questions and the diversity of responses provided.  The default, untuned Llama-3.1-8B-Instruct model is observed to refuse to answer approximately 15% of questions.  The table reveals that fine-tuning with LoRA significantly reduces this refusal rate across various training configurations (different numbers of Unknown facts and added HighlyKnown or paraphrased facts). However, some fine-tuned models exhibit a phenomenon of convergence toward a limited set of responses, resulting in less response diversity.  The table provides a detailed breakdown of the number of unique answers and the number of times the model refused to answer for each configuration.
> <details>
> <summary>read the caption</summary>
> Table 4: Trends for the answers’ refusal and diversity in trained models. Default model refuses to answer in 15% cases, while trained models almost never. Some models converge to answers that become over-represented.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.4.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.4.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.4.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Paraphrase</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table analyzes the reasons behind knowledge shifts observed during the fine-tuning of a language model.  It shows the absolute counts of shifts from Unknown to HighlyKnown (new knowledge learned) and from HighlyKnown to Unknown (existing knowledge lost), breaking down each shift type into contributing factors. The factors include: the model refusing to answer (non-refusal); the model producing over-represented answers (explosion); the model transferring knowledge from the same domain or entity range (domain-based shifts); and the portion of a shift that is unexplained by these three factors.  Bold numbers indicate the most significant contributing factor for each shift type, while underlined numbers represent the second most significant factor.
> <details>
> <summary>read the caption</summary>
> Table 5: Reasons for knowledge shifts. UK →→\to→ HK and HK →→\to→ UK indicate absolute amount of shifts. Each reason reflects the relative contribution to understanding the nature of shifts. Bold numbers reflect a main reason of shift, underlined numbers - the second best reason of shift.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.5.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.5.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.5.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">HK</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy shift results for the Mistral-7B-Instruct-v0.3 model.  It shows the positive and negative accuracy shifts observed when incorporating different amounts of new knowledge into the model using various configurations of paraphrased and HighlyKnown data. The configurations involve adding 1 or 10 paraphrased examples or 1 or 10 HighlyKnown examples along with 1 Unknown example to the training data.  The values represent the change in accuracy after the fine-tuning process.
> <details>
> <summary>read the caption</summary>
> Table 6: Accuracy shift for Mistral-7B-Instruct-v0.3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1.1.1.6.1">
<tr class="ltx_tr" id="S5.T3.1.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.6.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.1.1.1.1.6.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Paraphrase</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various LoRA-adapted LLMs on two benchmark datasets: MMLU (Massive Multitask Language Understanding) and TruthfulQA.  For MMLU, the accuracy is reported.  For TruthfulQA, multiple metrics are provided, including accuracy scores for both multiple choice question types (MC1 and MC2). The table allows for a comparison of different LoRA training configurations (varying numbers of unknown facts and the addition of paraphrases or highly-known facts during training).  It demonstrates the impact of different training methods and data augmentation strategies on the models' performance across multiple dimensions of reasoning ability and factual accuracy.
> <details>
> <summary>read the caption</summary>
> Table 7: Accuracy for MMLU and a range of metrics for ThruthfulQA for all trained LoRA adapters
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"># Refused</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"># Unique</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mean (Variance)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">              Default</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.2.1" style="color:#B80000;">3,189</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">48,136</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.72 (10.96)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1 UK  +   0 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">758</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">48,084</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.17 (13.61)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            +   1 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">816</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">46,966</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.31 (12.91)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            + 10 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">43,766</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.81 (14.26)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">10 UK +   0 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.6.5.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.6.5.3.1" style="color:#FF9400;">22,804</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.6.5.4.1" style="color:#FF9400;">9.22 (96.52)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.7.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            +   1 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.7.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.7.6.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.7.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.7.6.3.1" style="color:#FF9400;">22,148</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.7.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.7.6.4.1" style="color:#FF9400;">9.38 (166.57)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.8.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            + 10 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.8.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">5</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.8.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">36,798</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.8.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.71 (38.26)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.9.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">50 UK +   0 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.9.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.9.8.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.9.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">37,394</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.9.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.62 (38.26)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.10.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            +   1 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.10.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.10.9.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.10.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">52,253</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.10.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.02 (14.72)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.11.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            + 10 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.11.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.11.10.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.11.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">47,734</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.11.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.40 (15.14)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.12.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">100 UK +   0 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.12.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.12.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">49,403</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.12.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.26 (16.58)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.13.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            +   1 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.13.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.13.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">53,576</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.13.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.92 (11.74)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.14.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            + 10 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.14.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.14.13.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.14.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">59,914</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.14.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.51 (12.02)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.1.15.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">500 UK +   1 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.15.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.15.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">48,446</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.15.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.34 (16.17)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.16.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">            + 10 HK</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.16.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.16.15.2.1" style="color:#00FF00;">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.16.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">57,114</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.16.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.68 (12.97)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance metrics of several LoRA adapters on two question answering benchmarks: ARC and LogiQA.  The adapters were fine-tuned using different configurations, varying the number of unknown facts and the type of additional training data (paraphrases or highly known facts).  The results show the accuracy scores across different subsets of ARC and LogiQA datasets, providing a comprehensive evaluation of the adapters' performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Metrics for ARC and LogiQA benchmarks for trained LoRA adapters
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14502/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14502/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}