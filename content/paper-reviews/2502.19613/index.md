---
title: "Self-rewarding correction for mathematical reasoning"
summary: "LLM can now reason and correct itself using self-generated data, achieving performance on par with external reward models!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-02-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.19613 {{< /keyword >}}
{{< keyword icon="writer" >}} Wei Xiong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.19613" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.19613" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.19613/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

This paper addresses the challenge of **improving self-correction in Large Language Models (LLMs) without relying on external reward models**. Current LLMs struggle with intrinsic self-correction, requiring complex multi-agent systems for error detection and refinement. This increases computational costs and deployment complexity. This paper aims to equip a single LLM with the ability to autonomously evaluate its reasoning and correct errors, simplifying the process and reducing computational overhead. 



The paper **introduces a self-rewarding reasoning framework and a two-stage algorithmic approach**. The first stage involves synthesizing data that contain both self-rewarding and self-correcting mechanisms. The second stage uses reinforcement learning with rule-based signals to improve response accuracy and refine outputs. Results on Llama-3 and Qwen-2.5 show that the approach outperforms intrinsic self-correction and achieves performance comparable to systems that rely on external reward models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A single LLM can autonomously reason, evaluate and correct itself without external rewards. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A two-stage framework enables LLMs to learn self-rewarding and self-correcting behaviors from self-generated data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Self-rewarding correction outperforms intrinsic self-correction and matches the performance of systems using external reward models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces an efficient self-rewarding reasoning LLM, which can lead to more streamlined and cost-effective AI deployment**. It addresses the limitations of current LLMs and offers a new approach that could potentially be applied to a wide range of reasoning tasks. It paves the way for further research into improving intrinsic self-correction capabilities.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.17">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.5.3.4"><span class="ltx_text ltx_font_bold" id="S3.T3.5.3.4.1" style="font-size:80%;">Benchmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T3.5.3.5"><span class="ltx_text ltx_font_bold" id="S3.T3.5.3.5.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.5.3.6"><span class="ltx_text ltx_font_bold" id="S3.T3.5.3.6.1" style="font-size:80%;">Turn 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.5.3.7"><span class="ltx_text ltx_font_bold" id="S3.T3.5.3.7.1" style="font-size:80%;color:#FF0000;">Final Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.3.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="S3.T3.3.1.1.m1.2"><semantics id="S3.T3.3.1.1.m1.2a"><mrow id="S3.T3.3.1.1.m1.2.2" xref="S3.T3.3.1.1.m1.2.2.cmml"><mi id="S3.T3.3.1.1.m1.2.2.4" mathcolor="#FF0000" mathsize="80%" mathvariant="normal" xref="S3.T3.3.1.1.m1.2.2.4.cmml">Δ</mi><mo id="S3.T3.3.1.1.m1.2.2.3" xref="S3.T3.3.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="S3.T3.3.1.1.m1.2.2.2.2" xref="S3.T3.3.1.1.m1.2.2.2.3.cmml"><mo id="S3.T3.3.1.1.m1.2.2.2.2.3" mathcolor="#FF0000" maxsize="80%" minsize="80%" xref="S3.T3.3.1.1.m1.2.2.2.3.cmml">(</mo><msub id="S3.T3.3.1.1.m1.1.1.1.1.1" xref="S3.T3.3.1.1.m1.1.1.1.1.1.cmml"><mi id="S3.T3.3.1.1.m1.1.1.1.1.1.2" mathcolor="#FF0000" mathsize="80%" xref="S3.T3.3.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S3.T3.3.1.1.m1.1.1.1.1.1.3" mathcolor="#FF0000" mathsize="80%" xref="S3.T3.3.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S3.T3.3.1.1.m1.2.2.2.2.4" mathcolor="#FF0000" mathsize="80%" xref="S3.T3.3.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S3.T3.3.1.1.m1.2.2.2.2.2" xref="S3.T3.3.1.1.m1.2.2.2.2.2.cmml"><mi id="S3.T3.3.1.1.m1.2.2.2.2.2.2" mathcolor="#FF0000" mathsize="80%" xref="S3.T3.3.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S3.T3.3.1.1.m1.2.2.2.2.2.3" mathcolor="#FF0000" mathsize="80%" xref="S3.T3.3.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T3.3.1.1.m1.2.2.2.2.5" mathcolor="#FF0000" maxsize="80%" minsize="80%" xref="S3.T3.3.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.3.1.1.m1.2b"><apply id="S3.T3.3.1.1.m1.2.2.cmml" xref="S3.T3.3.1.1.m1.2.2"><times id="S3.T3.3.1.1.m1.2.2.3.cmml" xref="S3.T3.3.1.1.m1.2.2.3"></times><ci id="S3.T3.3.1.1.m1.2.2.4.cmml" xref="S3.T3.3.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="S3.T3.3.1.1.m1.2.2.2.3.cmml" xref="S3.T3.3.1.1.m1.2.2.2.2"><apply id="S3.T3.3.1.1.m1.1.1.1.1.1.cmml" xref="S3.T3.3.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T3.3.1.1.m1.1.1.1.1.1.1.cmml" xref="S3.T3.3.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S3.T3.3.1.1.m1.1.1.1.1.1.2.cmml" xref="S3.T3.3.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="S3.T3.3.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T3.3.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="S3.T3.3.1.1.m1.2.2.2.2.2.cmml" xref="S3.T3.3.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T3.3.1.1.m1.2.2.2.2.2.1.cmml" xref="S3.T3.3.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S3.T3.3.1.1.m1.2.2.2.2.2.2.cmml" xref="S3.T3.3.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="S3.T3.3.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="S3.T3.3.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S3.T3.4.2.2.m1.2"><semantics id="S3.T3.4.2.2.m1.2a"><mrow id="S3.T3.4.2.2.m1.2.2" xref="S3.T3.4.2.2.m1.2.2.cmml"><msup id="S3.T3.4.2.2.m1.2.2.4" xref="S3.T3.4.2.2.m1.2.2.4.cmml"><mi id="S3.T3.4.2.2.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S3.T3.4.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="S3.T3.4.2.2.m1.2.2.4.3" xref="S3.T3.4.2.2.m1.2.2.4.3.cmml"><mi id="S3.T3.4.2.2.m1.2.2.4.3.2" mathsize="80%" xref="S3.T3.4.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="S3.T3.4.2.2.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S3.T3.4.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="S3.T3.4.2.2.m1.2.2.4.3.3" mathsize="80%" xref="S3.T3.4.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="S3.T3.4.2.2.m1.2.2.3" xref="S3.T3.4.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="S3.T3.4.2.2.m1.2.2.2.2" xref="S3.T3.4.2.2.m1.2.2.2.3.cmml"><mo id="S3.T3.4.2.2.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S3.T3.4.2.2.m1.2.2.2.3.cmml">(</mo><msub id="S3.T3.4.2.2.m1.1.1.1.1.1" xref="S3.T3.4.2.2.m1.1.1.1.1.1.cmml"><mi id="S3.T3.4.2.2.m1.1.1.1.1.1.2" mathsize="80%" xref="S3.T3.4.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S3.T3.4.2.2.m1.1.1.1.1.1.3" mathsize="80%" xref="S3.T3.4.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S3.T3.4.2.2.m1.2.2.2.2.4" mathsize="80%" xref="S3.T3.4.2.2.m1.2.2.2.3.cmml">,</mo><msub id="S3.T3.4.2.2.m1.2.2.2.2.2" xref="S3.T3.4.2.2.m1.2.2.2.2.2.cmml"><mi id="S3.T3.4.2.2.m1.2.2.2.2.2.2" mathsize="80%" xref="S3.T3.4.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S3.T3.4.2.2.m1.2.2.2.2.2.3" mathsize="80%" xref="S3.T3.4.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T3.4.2.2.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S3.T3.4.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.4.2.2.m1.2b"><apply id="S3.T3.4.2.2.m1.2.2.cmml" xref="S3.T3.4.2.2.m1.2.2"><times id="S3.T3.4.2.2.m1.2.2.3.cmml" xref="S3.T3.4.2.2.m1.2.2.3"></times><apply id="S3.T3.4.2.2.m1.2.2.4.cmml" xref="S3.T3.4.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="S3.T3.4.2.2.m1.2.2.4.1.cmml" xref="S3.T3.4.2.2.m1.2.2.4">superscript</csymbol><ci id="S3.T3.4.2.2.m1.2.2.4.2.cmml" xref="S3.T3.4.2.2.m1.2.2.4.2">Δ</ci><apply id="S3.T3.4.2.2.m1.2.2.4.3.cmml" xref="S3.T3.4.2.2.m1.2.2.4.3"><ci id="S3.T3.4.2.2.m1.2.2.4.3.1.cmml" xref="S3.T3.4.2.2.m1.2.2.4.3.1">→</ci><ci id="S3.T3.4.2.2.m1.2.2.4.3.2.cmml" xref="S3.T3.4.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="S3.T3.4.2.2.m1.2.2.4.3.3.cmml" xref="S3.T3.4.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="S3.T3.4.2.2.m1.2.2.2.3.cmml" xref="S3.T3.4.2.2.m1.2.2.2.2"><apply id="S3.T3.4.2.2.m1.1.1.1.1.1.cmml" xref="S3.T3.4.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T3.4.2.2.m1.1.1.1.1.1.1.cmml" xref="S3.T3.4.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="S3.T3.4.2.2.m1.1.1.1.1.1.2.cmml" xref="S3.T3.4.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="S3.T3.4.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T3.4.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="S3.T3.4.2.2.m1.2.2.2.2.2.cmml" xref="S3.T3.4.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T3.4.2.2.m1.2.2.2.2.2.1.cmml" xref="S3.T3.4.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="S3.T3.4.2.2.m1.2.2.2.2.2.2.cmml" xref="S3.T3.4.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="S3.T3.4.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="S3.T3.4.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.5.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S3.T3.5.3.3.m1.2"><semantics id="S3.T3.5.3.3.m1.2a"><mrow id="S3.T3.5.3.3.m1.2.2" xref="S3.T3.5.3.3.m1.2.2.cmml"><msup id="S3.T3.5.3.3.m1.2.2.4" xref="S3.T3.5.3.3.m1.2.2.4.cmml"><mi id="S3.T3.5.3.3.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S3.T3.5.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="S3.T3.5.3.3.m1.2.2.4.3" xref="S3.T3.5.3.3.m1.2.2.4.3.cmml"><mi id="S3.T3.5.3.3.m1.2.2.4.3.2" mathsize="80%" xref="S3.T3.5.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="S3.T3.5.3.3.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S3.T3.5.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="S3.T3.5.3.3.m1.2.2.4.3.3" mathsize="80%" xref="S3.T3.5.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S3.T3.5.3.3.m1.2.2.3" xref="S3.T3.5.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="S3.T3.5.3.3.m1.2.2.2.2" xref="S3.T3.5.3.3.m1.2.2.2.3.cmml"><mo id="S3.T3.5.3.3.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S3.T3.5.3.3.m1.2.2.2.3.cmml">(</mo><msub id="S3.T3.5.3.3.m1.1.1.1.1.1" xref="S3.T3.5.3.3.m1.1.1.1.1.1.cmml"><mi id="S3.T3.5.3.3.m1.1.1.1.1.1.2" mathsize="80%" xref="S3.T3.5.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S3.T3.5.3.3.m1.1.1.1.1.1.3" mathsize="80%" xref="S3.T3.5.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S3.T3.5.3.3.m1.2.2.2.2.4" mathsize="80%" xref="S3.T3.5.3.3.m1.2.2.2.3.cmml">,</mo><msub id="S3.T3.5.3.3.m1.2.2.2.2.2" xref="S3.T3.5.3.3.m1.2.2.2.2.2.cmml"><mi id="S3.T3.5.3.3.m1.2.2.2.2.2.2" mathsize="80%" xref="S3.T3.5.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S3.T3.5.3.3.m1.2.2.2.2.2.3" mathsize="80%" xref="S3.T3.5.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S3.T3.5.3.3.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S3.T3.5.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.5.3.3.m1.2b"><apply id="S3.T3.5.3.3.m1.2.2.cmml" xref="S3.T3.5.3.3.m1.2.2"><times id="S3.T3.5.3.3.m1.2.2.3.cmml" xref="S3.T3.5.3.3.m1.2.2.3"></times><apply id="S3.T3.5.3.3.m1.2.2.4.cmml" xref="S3.T3.5.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="S3.T3.5.3.3.m1.2.2.4.1.cmml" xref="S3.T3.5.3.3.m1.2.2.4">superscript</csymbol><ci id="S3.T3.5.3.3.m1.2.2.4.2.cmml" xref="S3.T3.5.3.3.m1.2.2.4.2">Δ</ci><apply id="S3.T3.5.3.3.m1.2.2.4.3.cmml" xref="S3.T3.5.3.3.m1.2.2.4.3"><ci id="S3.T3.5.3.3.m1.2.2.4.3.1.cmml" xref="S3.T3.5.3.3.m1.2.2.4.3.1">→</ci><ci id="S3.T3.5.3.3.m1.2.2.4.3.2.cmml" xref="S3.T3.5.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="S3.T3.5.3.3.m1.2.2.4.3.3.cmml" xref="S3.T3.5.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S3.T3.5.3.3.m1.2.2.2.3.cmml" xref="S3.T3.5.3.3.m1.2.2.2.2"><apply id="S3.T3.5.3.3.m1.1.1.1.1.1.cmml" xref="S3.T3.5.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T3.5.3.3.m1.1.1.1.1.1.1.cmml" xref="S3.T3.5.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="S3.T3.5.3.3.m1.1.1.1.1.1.2.cmml" xref="S3.T3.5.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="S3.T3.5.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T3.5.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="S3.T3.5.3.3.m1.2.2.2.2.2.cmml" xref="S3.T3.5.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S3.T3.5.3.3.m1.2.2.2.2.2.1.cmml" xref="S3.T3.5.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="S3.T3.5.3.3.m1.2.2.2.2.2.2.cmml" xref="S3.T3.5.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="S3.T3.5.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="S3.T3.5.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.17.16.1">
<td class="ltx_td ltx_border_t" id="S3.T3.17.16.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.17.16.1.2"><span class="ltx_text" id="S3.T3.17.16.1.2.1" style="font-size:80%;">Single-turn STaR/RAFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.16.1.3"><span class="ltx_text" id="S3.T3.17.16.1.3.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.16.1.4"><span class="ltx_text" id="S3.T3.17.16.1.4.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.16.1.5"><span class="ltx_text" id="S3.T3.17.16.1.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.16.1.6"><span class="ltx_text" id="S3.T3.17.16.1.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.16.1.7"><span class="ltx_text" id="S3.T3.17.16.1.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.17.2">
<td class="ltx_td" id="S3.T3.17.17.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.17.2.2"><span class="ltx_text" id="S3.T3.17.17.2.2.1" style="font-size:80%;">Single-turn DPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.2.3"><span class="ltx_text" id="S3.T3.17.17.2.3.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.2.4"><span class="ltx_text" id="S3.T3.17.17.2.4.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.2.5"><span class="ltx_text" id="S3.T3.17.17.2.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.2.6"><span class="ltx_text" id="S3.T3.17.17.2.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.17.2.7"><span class="ltx_text" id="S3.T3.17.17.2.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.18.3">
<td class="ltx_td" id="S3.T3.17.18.3.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.18.3.2"><span class="ltx_text" id="S3.T3.17.18.3.2.1" style="font-size:80%;">Single-turn PPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.18.3.3"><span class="ltx_text" id="S3.T3.17.18.3.3.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.18.3.4"><span class="ltx_text" id="S3.T3.17.18.3.4.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.18.3.5"><span class="ltx_text" id="S3.T3.17.18.3.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.18.3.6"><span class="ltx_text" id="S3.T3.17.18.3.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.18.3.7"><span class="ltx_text" id="S3.T3.17.18.3.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.4">
<td class="ltx_td" id="S3.T3.6.4.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.6.4.1">
<span class="ltx_text" id="S3.T3.6.4.1.1" style="font-size:80%;">Prompt with Gold RM</span><sup class="ltx_sup" id="S3.T3.6.4.1.2"><span class="ltx_text" id="S3.T3.6.4.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.3"><span class="ltx_text" id="S3.T3.6.4.3.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.4"><span class="ltx_text" id="S3.T3.6.4.4.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.5"><span class="ltx_text" id="S3.T3.6.4.5.1" style="font-size:80%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.6"><span class="ltx_text" id="S3.T3.6.4.6.1" style="font-size:80%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.4.7"><span class="ltx_text" id="S3.T3.6.4.7.1" style="font-size:80%;">0.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.5">
<td class="ltx_td" id="S3.T3.7.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.5.1">
<span class="ltx_text" id="S3.T3.7.5.1.1" style="font-size:80%;">Intrinsic self-correction</span><sup class="ltx_sup" id="S3.T3.7.5.1.2"><span class="ltx_text" id="S3.T3.7.5.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.3"><span class="ltx_text" id="S3.T3.7.5.3.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.4"><span class="ltx_text" id="S3.T3.7.5.4.1" style="font-size:80%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.5"><span class="ltx_text" id="S3.T3.7.5.5.1" style="font-size:80%;">-14.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.6"><span class="ltx_text" id="S3.T3.7.5.6.1" style="font-size:80%;">1.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.5.7"><span class="ltx_text" id="S3.T3.7.5.7.1" style="font-size:80%;">15.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.6">
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.2"><span class="ltx_text" id="S3.T3.8.6.2.1" style="font-size:80%;">MATH500</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.8.6.1">
<span class="ltx_text" id="S3.T3.8.6.1.1" style="font-size:80%;">STaR/RAFT for self-correction</span><sup class="ltx_sup" id="S3.T3.8.6.1.2"><span class="ltx_text" id="S3.T3.8.6.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.3"><span class="ltx_text" id="S3.T3.8.6.3.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.4"><span class="ltx_text" id="S3.T3.8.6.4.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.5"><span class="ltx_text" id="S3.T3.8.6.5.1" style="font-size:80%;">-1.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.6"><span class="ltx_text" id="S3.T3.8.6.6.1" style="font-size:80%;">5.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.6.7"><span class="ltx_text" id="S3.T3.8.6.7.1" style="font-size:80%;">6.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.7">
<td class="ltx_td" id="S3.T3.9.7.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.7.1">
<span class="ltx_text" id="S3.T3.9.7.1.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span><sup class="ltx_sup" id="S3.T3.9.7.1.2"><span class="ltx_text" id="S3.T3.9.7.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.3"><span class="ltx_text" id="S3.T3.9.7.3.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.4"><span class="ltx_text" id="S3.T3.9.7.4.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.5"><span class="ltx_text" id="S3.T3.9.7.5.1" style="font-size:80%;">-0.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.6"><span class="ltx_text" id="S3.T3.9.7.6.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.9.7.7"><span class="ltx_text" id="S3.T3.9.7.7.1" style="font-size:80%;">3.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.19.4">
<td class="ltx_td" id="S3.T3.17.19.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.19.4.2"><span class="ltx_text" id="S3.T3.17.19.4.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.19.4.3"><span class="ltx_text" id="S3.T3.17.19.4.3.1" style="font-size:80%;background-color:#DDEBF7;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.19.4.4"><span class="ltx_text" id="S3.T3.17.19.4.4.1" style="font-size:80%;background-color:#DDEBF7;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.19.4.5"><span class="ltx_text" id="S3.T3.17.19.4.5.1" style="font-size:80%;background-color:#DDEBF7;">4.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.19.4.6"><span class="ltx_text" id="S3.T3.17.19.4.6.1" style="font-size:80%;background-color:#DDEBF7;">5.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.19.4.7"><span class="ltx_text" id="S3.T3.17.19.4.7.1" style="font-size:80%;background-color:#DDEBF7;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.20.5">
<td class="ltx_td" id="S3.T3.17.20.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.20.5.2"><span class="ltx_text" id="S3.T3.17.20.5.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + DPO w correctness</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.20.5.3"><span class="ltx_text" id="S3.T3.17.20.5.3.1" style="font-size:80%;background-color:#DDEBF7;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.20.5.4"><span class="ltx_text" id="S3.T3.17.20.5.4.1" style="font-size:80%;background-color:#DDEBF7;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.20.5.5"><span class="ltx_text" id="S3.T3.17.20.5.5.1" style="font-size:80%;background-color:#DDEBF7;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.20.5.6"><span class="ltx_text" id="S3.T3.17.20.5.6.1" style="font-size:80%;background-color:#DDEBF7;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.20.5.7"><span class="ltx_text" id="S3.T3.17.20.5.7.1" style="font-size:80%;background-color:#DDEBF7;">0.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.21.6">
<td class="ltx_td" id="S3.T3.17.21.6.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.21.6.2"><span class="ltx_text" id="S3.T3.17.21.6.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + PPO w correctness</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.21.6.3"><span class="ltx_text" id="S3.T3.17.21.6.3.1" style="font-size:80%;background-color:#DDEBF7;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.21.6.4"><span class="ltx_text" id="S3.T3.17.21.6.4.1" style="font-size:80%;background-color:#DDEBF7;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.21.6.5"><span class="ltx_text" id="S3.T3.17.21.6.5.1" style="font-size:80%;background-color:#DDEBF7;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.21.6.6"><span class="ltx_text" id="S3.T3.17.21.6.6.1" style="font-size:80%;background-color:#DDEBF7;">4.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.21.6.7"><span class="ltx_text" id="S3.T3.17.21.6.7.1" style="font-size:80%;background-color:#DDEBF7;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.22.7">
<td class="ltx_td ltx_border_t" id="S3.T3.17.22.7.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.17.22.7.2"><span class="ltx_text" id="S3.T3.17.22.7.2.1" style="font-size:80%;">Single-turn STaR/RAFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.22.7.3"><span class="ltx_text" id="S3.T3.17.22.7.3.1" style="font-size:80%;">40.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.22.7.4"><span class="ltx_text" id="S3.T3.17.22.7.4.1" style="font-size:80%;">40.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.22.7.5"><span class="ltx_text" id="S3.T3.17.22.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.22.7.6"><span class="ltx_text" id="S3.T3.17.22.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.22.7.7"><span class="ltx_text" id="S3.T3.17.22.7.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.23.8">
<td class="ltx_td" id="S3.T3.17.23.8.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.23.8.2"><span class="ltx_text" id="S3.T3.17.23.8.2.1" style="font-size:80%;">Single-turn DPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.23.8.3"><span class="ltx_text" id="S3.T3.17.23.8.3.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.23.8.4"><span class="ltx_text" id="S3.T3.17.23.8.4.1" style="font-size:80%;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.23.8.5"><span class="ltx_text" id="S3.T3.17.23.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.23.8.6"><span class="ltx_text" id="S3.T3.17.23.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.23.8.7"><span class="ltx_text" id="S3.T3.17.23.8.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.24.9">
<td class="ltx_td" id="S3.T3.17.24.9.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.24.9.2"><span class="ltx_text" id="S3.T3.17.24.9.2.1" style="font-size:80%;">Single-turn PPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.24.9.3"><span class="ltx_text" id="S3.T3.17.24.9.3.1" style="font-size:80%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.24.9.4"><span class="ltx_text" id="S3.T3.17.24.9.4.1" style="font-size:80%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.24.9.5"><span class="ltx_text" id="S3.T3.17.24.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.24.9.6"><span class="ltx_text" id="S3.T3.17.24.9.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.24.9.7"><span class="ltx_text" id="S3.T3.17.24.9.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.8">
<td class="ltx_td" id="S3.T3.10.8.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.10.8.1">
<span class="ltx_text" id="S3.T3.10.8.1.1" style="font-size:80%;">Prompt with Gold RM</span><sup class="ltx_sup" id="S3.T3.10.8.1.2"><span class="ltx_text" id="S3.T3.10.8.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.3"><span class="ltx_text" id="S3.T3.10.8.3.1" style="font-size:80%;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.4"><span class="ltx_text" id="S3.T3.10.8.4.1" style="font-size:80%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.5"><span class="ltx_text" id="S3.T3.10.8.5.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.6"><span class="ltx_text" id="S3.T3.10.8.6.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.10.8.7"><span class="ltx_text" id="S3.T3.10.8.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.9">
<td class="ltx_td" id="S3.T3.11.9.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.9.1">
<span class="ltx_text" id="S3.T3.11.9.1.1" style="font-size:80%;">Intrinsic self-correction</span><sup class="ltx_sup" id="S3.T3.11.9.1.2"><span class="ltx_text" id="S3.T3.11.9.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.11.9.3"><span class="ltx_text" id="S3.T3.11.9.3.1" style="font-size:80%;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.11.9.4"><span class="ltx_text" id="S3.T3.11.9.4.1" style="font-size:80%;">18.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.11.9.5"><span class="ltx_text" id="S3.T3.11.9.5.1" style="font-size:80%;">-5.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.11.9.6"><span class="ltx_text" id="S3.T3.11.9.6.1" style="font-size:80%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.11.9.7"><span class="ltx_text" id="S3.T3.11.9.7.1" style="font-size:80%;">7.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.10">
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.2"><span class="ltx_text" id="S3.T3.12.10.2.1" style="font-size:80%;">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.10.1">
<span class="ltx_text" id="S3.T3.12.10.1.1" style="font-size:80%;">STaR/RAFT for self-correction </span><sup class="ltx_sup" id="S3.T3.12.10.1.2"><span class="ltx_text" id="S3.T3.12.10.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.3"><span class="ltx_text" id="S3.T3.12.10.3.1" style="font-size:80%;">36.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.4"><span class="ltx_text" id="S3.T3.12.10.4.1" style="font-size:80%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.5"><span class="ltx_text" id="S3.T3.12.10.5.1" style="font-size:80%;">-4.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.6"><span class="ltx_text" id="S3.T3.12.10.6.1" style="font-size:80%;">7.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.10.7"><span class="ltx_text" id="S3.T3.12.10.7.1" style="font-size:80%;">11.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.13.11">
<td class="ltx_td" id="S3.T3.13.11.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.13.11.1">
<span class="ltx_text" id="S3.T3.13.11.1.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span><sup class="ltx_sup" id="S3.T3.13.11.1.2"><span class="ltx_text" id="S3.T3.13.11.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.11.3"><span class="ltx_text" id="S3.T3.13.11.3.1" style="font-size:80%;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.11.4"><span class="ltx_text" id="S3.T3.13.11.4.1" style="font-size:80%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.11.5"><span class="ltx_text" id="S3.T3.13.11.5.1" style="font-size:80%;">-0.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.11.6"><span class="ltx_text" id="S3.T3.13.11.6.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.13.11.7"><span class="ltx_text" id="S3.T3.13.11.7.1" style="font-size:80%;">3.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.25.10">
<td class="ltx_td" id="S3.T3.17.25.10.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.25.10.2"><span class="ltx_text" id="S3.T3.17.25.10.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.25.10.3"><span class="ltx_text" id="S3.T3.17.25.10.3.1" style="font-size:80%;background-color:#DDEBF7;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.25.10.4"><span class="ltx_text" id="S3.T3.17.25.10.4.1" style="font-size:80%;background-color:#DDEBF7;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.25.10.5"><span class="ltx_text" id="S3.T3.17.25.10.5.1" style="font-size:80%;background-color:#DDEBF7;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.25.10.6"><span class="ltx_text" id="S3.T3.17.25.10.6.1" style="font-size:80%;background-color:#DDEBF7;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.25.10.7"><span class="ltx_text" id="S3.T3.17.25.10.7.1" style="font-size:80%;background-color:#DDEBF7;">0.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.26.11">
<td class="ltx_td" id="S3.T3.17.26.11.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.26.11.2"><span class="ltx_text" id="S3.T3.17.26.11.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + DPO w correctness</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.26.11.3"><span class="ltx_text" id="S3.T3.17.26.11.3.1" style="font-size:80%;background-color:#DDEBF7;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.26.11.4"><span class="ltx_text" id="S3.T3.17.26.11.4.1" style="font-size:80%;background-color:#DDEBF7;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.26.11.5"><span class="ltx_text" id="S3.T3.17.26.11.5.1" style="font-size:80%;background-color:#DDEBF7;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.26.11.6"><span class="ltx_text" id="S3.T3.17.26.11.6.1" style="font-size:80%;background-color:#DDEBF7;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.26.11.7"><span class="ltx_text" id="S3.T3.17.26.11.7.1" style="font-size:80%;background-color:#DDEBF7;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.27.12">
<td class="ltx_td" id="S3.T3.17.27.12.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.27.12.2"><span class="ltx_text" id="S3.T3.17.27.12.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + PPO w correctness</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.27.12.3"><span class="ltx_text" id="S3.T3.17.27.12.3.1" style="font-size:80%;background-color:#DDEBF7;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.27.12.4"><span class="ltx_text" id="S3.T3.17.27.12.4.1" style="font-size:80%;background-color:#DDEBF7;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.27.12.5"><span class="ltx_text" id="S3.T3.17.27.12.5.1" style="font-size:80%;background-color:#DDEBF7;">2.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.27.12.6"><span class="ltx_text" id="S3.T3.17.27.12.6.1" style="font-size:80%;background-color:#DDEBF7;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.27.12.7"><span class="ltx_text" id="S3.T3.17.27.12.7.1" style="font-size:80%;background-color:#DDEBF7;">0.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.28.13">
<td class="ltx_td ltx_border_t" id="S3.T3.17.28.13.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.17.28.13.2"><span class="ltx_text" id="S3.T3.17.28.13.2.1" style="font-size:80%;">Single-turn STaR/RAFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.28.13.3"><span class="ltx_text" id="S3.T3.17.28.13.3.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.28.13.4"><span class="ltx_text" id="S3.T3.17.28.13.4.1" style="font-size:80%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.28.13.5"><span class="ltx_text" id="S3.T3.17.28.13.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.28.13.6"><span class="ltx_text" id="S3.T3.17.28.13.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.17.28.13.7"><span class="ltx_text" id="S3.T3.17.28.13.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.29.14">
<td class="ltx_td" id="S3.T3.17.29.14.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.29.14.2"><span class="ltx_text" id="S3.T3.17.29.14.2.1" style="font-size:80%;">Single-turn DPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.29.14.3"><span class="ltx_text" id="S3.T3.17.29.14.3.1" style="font-size:80%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.29.14.4"><span class="ltx_text" id="S3.T3.17.29.14.4.1" style="font-size:80%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.29.14.5"><span class="ltx_text" id="S3.T3.17.29.14.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.29.14.6"><span class="ltx_text" id="S3.T3.17.29.14.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.29.14.7"><span class="ltx_text" id="S3.T3.17.29.14.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.30.15">
<td class="ltx_td" id="S3.T3.17.30.15.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.30.15.2"><span class="ltx_text" id="S3.T3.17.30.15.2.1" style="font-size:80%;">Single-turn PPO</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.30.15.3"><span class="ltx_text" id="S3.T3.17.30.15.3.1" style="font-size:80%;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.30.15.4"><span class="ltx_text" id="S3.T3.17.30.15.4.1" style="font-size:80%;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.30.15.5"><span class="ltx_text" id="S3.T3.17.30.15.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.30.15.6"><span class="ltx_text" id="S3.T3.17.30.15.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.30.15.7"><span class="ltx_text" id="S3.T3.17.30.15.7.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.14.12">
<td class="ltx_td" id="S3.T3.14.12.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.14.12.1">
<span class="ltx_text" id="S3.T3.14.12.1.1" style="font-size:80%;">Prompt with Gold RM</span><sup class="ltx_sup" id="S3.T3.14.12.1.2"><span class="ltx_text" id="S3.T3.14.12.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.12.3"><span class="ltx_text" id="S3.T3.14.12.3.1" style="font-size:80%;">9.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.12.4"><span class="ltx_text" id="S3.T3.14.12.4.1" style="font-size:80%;">11.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.12.5"><span class="ltx_text" id="S3.T3.14.12.5.1" style="font-size:80%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.12.6"><span class="ltx_text" id="S3.T3.14.12.6.1" style="font-size:80%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.14.12.7"><span class="ltx_text" id="S3.T3.14.12.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.15.13">
<td class="ltx_td" id="S3.T3.15.13.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.15.13.1">
<span class="ltx_text" id="S3.T3.15.13.1.1" style="font-size:80%;">Intrinsic self-correction</span><sup class="ltx_sup" id="S3.T3.15.13.1.2"><span class="ltx_text" id="S3.T3.15.13.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.13.3"><span class="ltx_text" id="S3.T3.15.13.3.1" style="font-size:80%;">9.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.13.4"><span class="ltx_text" id="S3.T3.15.13.4.1" style="font-size:80%;">8.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.13.5"><span class="ltx_text" id="S3.T3.15.13.5.1" style="font-size:80%;">-1.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.13.6"><span class="ltx_text" id="S3.T3.15.13.6.1" style="font-size:80%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.15.13.7"><span class="ltx_text" id="S3.T3.15.13.7.1" style="font-size:80%;">3.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.14">
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.2"><span class="ltx_text" id="S3.T3.16.14.2.1" style="font-size:80%;">Minerva Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.16.14.1">
<span class="ltx_text" id="S3.T3.16.14.1.1" style="font-size:80%;">STaR/RAFT for self-correction</span><sup class="ltx_sup" id="S3.T3.16.14.1.2"><span class="ltx_text" id="S3.T3.16.14.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.3"><span class="ltx_text" id="S3.T3.16.14.3.1" style="font-size:80%;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.4"><span class="ltx_text" id="S3.T3.16.14.4.1" style="font-size:80%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.5"><span class="ltx_text" id="S3.T3.16.14.5.1" style="font-size:80%;">0.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.6"><span class="ltx_text" id="S3.T3.16.14.6.1" style="font-size:80%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.16.14.7"><span class="ltx_text" id="S3.T3.16.14.7.1" style="font-size:80%;">1.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.15">
<td class="ltx_td" id="S3.T3.17.15.2"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.15.1">
<span class="ltx_text" id="S3.T3.17.15.1.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span><sup class="ltx_sup" id="S3.T3.17.15.1.2"><span class="ltx_text" id="S3.T3.17.15.1.2.1" style="font-size:80%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.15.3"><span class="ltx_text" id="S3.T3.17.15.3.1" style="font-size:80%;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.15.4"><span class="ltx_text" id="S3.T3.17.15.4.1" style="font-size:80%;">25.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.15.5"><span class="ltx_text" id="S3.T3.17.15.5.1" style="font-size:80%;">-0.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.15.6"><span class="ltx_text" id="S3.T3.17.15.6.1" style="font-size:80%;">0.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.15.7"><span class="ltx_text" id="S3.T3.17.15.7.1" style="font-size:80%;">1.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.31.16">
<td class="ltx_td" id="S3.T3.17.31.16.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.31.16.2"><span class="ltx_text" id="S3.T3.17.31.16.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.31.16.3"><span class="ltx_text" id="S3.T3.17.31.16.3.1" style="font-size:80%;background-color:#DDEBF7;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.31.16.4"><span class="ltx_text" id="S3.T3.17.31.16.4.1" style="font-size:80%;background-color:#DDEBF7;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.31.16.5"><span class="ltx_text" id="S3.T3.17.31.16.5.1" style="font-size:80%;background-color:#DDEBF7;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.31.16.6"><span class="ltx_text" id="S3.T3.17.31.16.6.1" style="font-size:80%;background-color:#DDEBF7;">7.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.31.16.7"><span class="ltx_text" id="S3.T3.17.31.16.7.1" style="font-size:80%;background-color:#DDEBF7;">1.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.32.17">
<td class="ltx_td" id="S3.T3.17.32.17.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.32.17.2"><span class="ltx_text" id="S3.T3.17.32.17.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + DPO w correctness</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.32.17.3"><span class="ltx_text" id="S3.T3.17.32.17.3.1" style="font-size:80%;background-color:#DDEBF7;">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.32.17.4"><span class="ltx_text" id="S3.T3.17.32.17.4.1" style="font-size:80%;background-color:#DDEBF7;">34.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.32.17.5"><span class="ltx_text" id="S3.T3.17.32.17.5.1" style="font-size:80%;background-color:#DDEBF7;">7.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.32.17.6"><span class="ltx_text" id="S3.T3.17.32.17.6.1" style="font-size:80%;background-color:#DDEBF7;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.17.32.17.7"><span class="ltx_text" id="S3.T3.17.32.17.7.1" style="font-size:80%;background-color:#DDEBF7;">1.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.33.18">
<td class="ltx_td ltx_border_bb" id="S3.T3.17.33.18.1"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.17.33.18.2"><span class="ltx_text" id="S3.T3.17.33.18.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + PPO w correctness</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.33.18.3"><span class="ltx_text" id="S3.T3.17.33.18.3.1" style="font-size:80%;background-color:#DDEBF7;">34.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.33.18.4"><span class="ltx_text" id="S3.T3.17.33.18.4.1" style="font-size:80%;background-color:#DDEBF7;">38.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.33.18.5"><span class="ltx_text" id="S3.T3.17.33.18.5.1" style="font-size:80%;background-color:#DDEBF7;">4.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.33.18.6"><span class="ltx_text" id="S3.T3.17.33.18.6.1" style="font-size:80%;background-color:#DDEBF7;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.17.33.18.7"><span class="ltx_text" id="S3.T3.17.33.18.7.1" style="font-size:80%;background-color:#DDEBF7;">0.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of experiments conducted using the Qwen2.5-Math-7B-base language model.  It compares the performance of several different methods on three mathematical reasoning benchmarks: MATH500, OlympiadBench, and Minerva Math. The methods include single-turn baselines (without self-correction), baselines that employ self-correction with an external prompt (and potentially additional training to enhance self-correction abilities), and the proposed self-rewarding approach. The table reports the accuracy of the model at the first turn and the final accuracy after iterative reasoning and correction, along with various metrics reflecting improvement in accuracy, specifically the changes in problem correctness status from the first turn to the final answer.  Greedy decoding was used for all methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Main results of experiments with Qwen2.5-Math-7B-base. The single-turn baselines are used to train a regular CoT reasoning model. The baselines with † perform self-correction under the external prompt, where training may apply to enhance this ability. We use greedy decoding following the convention of the recent open-source projects on mathematical reasoning.
> </details>





### In-depth insights


#### Self-Reward Intro
**Self-rewarding reasoning** in LLMs is a promising area, enabling models to **autonomously evaluate and refine** their outputs.  The traditional approach relies on external reward models, which increases computational costs and deployment complexity. The ideal scenario would involve a **single LLM capable of both generating reasoning steps and assessing their correctness**.  Current LLMs struggle with **intrinsic self-correction**, highlighting the need for innovative training techniques. By incorporating self-evaluation mechanisms, models can make informed decisions about when to revise their responses, leading to **more efficient and accurate reasoning** without needing external feedback loops. This has **significant implications** for model deployment and scalability.

#### 2-Stage Training
The **two-stage training** paradigm detailed in the paper is a very good method. First, the model should be trained using **self-generated data**, where the algorithm uses sequential rejection sampling. Fine-tuning models here help to detect the errors in previously generated attempts, and also allows for revisions. In the second stage, the patterns are enhanced using **reinforcement learning**, and using rule-based signals. This is a good method because it enhances a model's ability to evaluate and correct its outputs without relying on external reward models. However, there should be more details about the actual implementation process. 

#### Rejection Sampling
The technique of **rejection sampling** is pivotal for curating high-quality datasets, especially when dealing with sparse behaviors like self-correction in language models. By generating a multitude of responses and selectively retaining only those that meet predefined criteria, we can efficiently distill datasets that exhibit desired patterns. The key insight is that base models might inherently possess self-correction abilities, albeit sparsely. Rejection sampling allows us to **amplify these sparse behaviors**, creating a dataset where self-correction patterns are more prevalent. This targeted dataset can then be used to fine-tune models, enabling them to learn and internalize these patterns more effectively. Furthermore, the process can be strategically iterated, prompting models in separate steps and combining them into a single trajectory to enforce both **self-rewarding** and **self-correction**

#### Llama vs. Qwen
In the realm of open-source large language models (LLMs), **Llama and Qwen represent prominent and contrasting architectures.** Llama, known for its research-friendly licensing, has become a cornerstone for academic exploration and community-driven development. **Its architecture emphasizes simplicity and scalability**, fostering a vibrant ecosystem of fine-tuned variants and derivatives. **Qwen, backed by a commercial entity, offers a compelling blend of performance and accessibility**. It stands out as a high-performing open-source model. While **Llama prioritizes transparency and ease of modification**, Qwen focuses on delivering state-of-the-art capabilities, potentially with more complex architectural choices. The interplay between these two models fuels innovation, driving progress in both open research and practical applications. The choice between Llama and Qwen hinges on the specific needs: **Llama for research flexibility, Qwen for readily available performance**.

#### Future Work
Future work could focus on **mitigating the lower reward model accuracy**, possibly through techniques like **model merging** or by using a **larger base model**. Exploring **SimPO** for more accurate probability is also promising. Addressing the limited enhancement of self-correction ability in the RL stage suggests exploring **multi-turn RL strategies** to decouple the self-rewarding steps, making the agent capable to learn how to correct the error in the previous step rather than giving up entirely. This may involve the study of different prompt engineering methods to enhance self-correction or to increase the model performance.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.6.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.6.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.3.1.1.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.2"><span class="ltx_text" id="S4.T4.6.3.1.2.1" style="font-size:80%;">MATH-500 C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.3"><span class="ltx_text" id="S4.T4.6.3.1.3.1" style="font-size:80%;">MATH-500 W</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.4"><span class="ltx_text" id="S4.T4.6.3.1.4.1" style="font-size:80%;">OlympiadBench C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.5"><span class="ltx_text" id="S4.T4.6.3.1.5.1" style="font-size:80%;">OlympiadBench W</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.6"><span class="ltx_text" id="S4.T4.6.3.1.6.1" style="font-size:80%;">Minerva Math C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.3.1.7"><span class="ltx_text" id="S4.T4.6.3.1.7.1" style="font-size:80%;">Minerva Math W</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.6.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.4.2.1"><span class="ltx_text" id="S4.T4.6.4.2.1.1" style="font-size:80%;">Self-rewarding IFT</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.2"><span class="ltx_text" id="S4.T4.6.4.2.2.1" style="font-size:80%;">93.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.3"><span class="ltx_text" id="S4.T4.6.4.2.3.1" style="font-size:80%;">47.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.4"><span class="ltx_text" id="S4.T4.6.4.2.4.1" style="font-size:80%;">89.6</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.5"><span class="ltx_text" id="S4.T4.6.4.2.5.1" style="font-size:80%;">45.9</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.6"><span class="ltx_text" id="S4.T4.6.4.2.6.1" style="font-size:80%;">91.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.6.4.2.7"><span class="ltx_text" id="S4.T4.6.4.2.7.1" style="font-size:80%;">36.1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.6.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.5.1.1"><span class="ltx_text" id="S4.T4.6.5.1.1.1" style="font-size:80%;">PPO Step 100</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.2"><span class="ltx_text" id="S4.T4.6.5.1.2.1" style="font-size:80%;">97.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.3"><span class="ltx_text" id="S4.T4.6.5.1.3.1" style="font-size:80%;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.4"><span class="ltx_text" id="S4.T4.6.5.1.4.1" style="font-size:80%;">98.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.5"><span class="ltx_text" id="S4.T4.6.5.1.5.1" style="font-size:80%;">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.6"><span class="ltx_text" id="S4.T4.6.5.1.6.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.5.1.7"><span class="ltx_text" id="S4.T4.6.5.1.7.1" style="font-size:80%;">29.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.5.1.1">
<span class="ltx_text" id="S4.T4.5.1.1.1" style="font-size:80%;">PPO Step 220 </span><math alttext="(\star)" class="ltx_Math" display="inline" id="S4.T4.5.1.1.m1.1"><semantics id="S4.T4.5.1.1.m1.1a"><mrow id="S4.T4.5.1.1.m1.1.2.2"><mo id="S4.T4.5.1.1.m1.1.2.2.1" maxsize="80%" minsize="80%">(</mo><mo id="S4.T4.5.1.1.m1.1.1" lspace="0em" mathsize="80%" rspace="0em" xref="S4.T4.5.1.1.m1.1.1.cmml">⋆</mo><mo id="S4.T4.5.1.1.m1.1.2.2.2" maxsize="80%" minsize="80%">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.5.1.1.m1.1b"><ci id="S4.T4.5.1.1.m1.1.1.cmml" xref="S4.T4.5.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.1.1.m1.1c">(\star)</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.1.1.m1.1d">( ⋆ )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.2"><span class="ltx_text" id="S4.T4.5.1.2.1" style="font-size:80%;">98.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.3"><span class="ltx_text" id="S4.T4.5.1.3.1" style="font-size:80%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4"><span class="ltx_text" id="S4.T4.5.1.4.1" style="font-size:80%;">97.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5"><span class="ltx_text" id="S4.T4.5.1.5.1" style="font-size:80%;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6"><span class="ltx_text" id="S4.T4.5.1.6.1" style="font-size:80%;">94.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7"><span class="ltx_text" id="S4.T4.5.1.7.1" style="font-size:80%;">32.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.6.6.2.1"><span class="ltx_text" id="S4.T4.6.6.2.1.1" style="font-size:80%;">DPO Iter 2</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.2"><span class="ltx_text" id="S4.T4.6.6.2.2.1" style="font-size:80%;">91.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.3"><span class="ltx_text" id="S4.T4.6.6.2.3.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.4"><span class="ltx_text" id="S4.T4.6.6.2.4.1" style="font-size:80%;">81.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.5"><span class="ltx_text" id="S4.T4.6.6.2.5.1" style="font-size:80%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.6"><span class="ltx_text" id="S4.T4.6.6.2.6.1" style="font-size:80%;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.2.7"><span class="ltx_text" id="S4.T4.6.6.2.7.1" style="font-size:80%;">36.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.6.2.1">
<span class="ltx_text" id="S4.T4.6.2.1.1" style="font-size:80%;">DPO Iter 5 </span><math alttext="(\star)" class="ltx_Math" display="inline" id="S4.T4.6.2.1.m1.1"><semantics id="S4.T4.6.2.1.m1.1a"><mrow id="S4.T4.6.2.1.m1.1.2.2"><mo id="S4.T4.6.2.1.m1.1.2.2.1" maxsize="80%" minsize="80%">(</mo><mo id="S4.T4.6.2.1.m1.1.1" lspace="0em" mathsize="80%" rspace="0em" xref="S4.T4.6.2.1.m1.1.1.cmml">⋆</mo><mo id="S4.T4.6.2.1.m1.1.2.2.2" maxsize="80%" minsize="80%">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.6.2.1.m1.1b"><ci id="S4.T4.6.2.1.m1.1.1.cmml" xref="S4.T4.6.2.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.2.1.m1.1c">(\star)</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.2.1.m1.1d">( ⋆ )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.2"><span class="ltx_text" id="S4.T4.6.2.2.1" style="font-size:80%;">92.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.3"><span class="ltx_text" id="S4.T4.6.2.3.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.4"><span class="ltx_text" id="S4.T4.6.2.4.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.5"><span class="ltx_text" id="S4.T4.6.2.5.1" style="font-size:80%;">44.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.6"><span class="ltx_text" id="S4.T4.6.2.6.1" style="font-size:80%;">92.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.6.2.7"><span class="ltx_text" id="S4.T4.6.2.7.1" style="font-size:80%;">37.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the reward models in evaluating the correctness of generated reasoning trajectories.  It shows the accuracy of the models in identifying both correctly generated trajectories (C) and incorrectly generated trajectories (W) for three different mathematical reasoning benchmarks (MATH-500, OlympiadBench, and Minerva Math).  The accuracy is reported separately for correctly and incorrectly generated sequences, providing a more detailed view of the model's performance. The model marked with an asterisk (*) represents the final model selected for the study.
> <details>
> <summary>read the caption</summary>
> Table 4: The results of reward modeling accuracy (%percent\%%). We report the accuracy of self-rewarding signals for the three benchmarks in two separate classes. For instance, MATH-500 C is the accuracy of recognizing a correct trajectory, while MATH-500 W is the accuracy of recognizing a wrong trajectory. The model highlighted by (∗)(*)( ∗ ) is selected as the final model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1" style="font-size:80%;">Base Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T5.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.5.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.6.1" style="font-size:80%;">Turn 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.7"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.7.1" style="font-size:80%;color:#FF0000;">Final Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.2"><semantics id="S4.T5.1.1.1.m1.2a"><mrow id="S4.T5.1.1.1.m1.2.2" xref="S4.T5.1.1.1.m1.2.2.cmml"><mi id="S4.T5.1.1.1.m1.2.2.4" mathcolor="#FF0000" mathsize="80%" mathvariant="normal" xref="S4.T5.1.1.1.m1.2.2.4.cmml">Δ</mi><mo id="S4.T5.1.1.1.m1.2.2.3" xref="S4.T5.1.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="S4.T5.1.1.1.m1.2.2.2.2" xref="S4.T5.1.1.1.m1.2.2.2.3.cmml"><mo id="S4.T5.1.1.1.m1.2.2.2.2.3" mathcolor="#FF0000" maxsize="80%" minsize="80%" xref="S4.T5.1.1.1.m1.2.2.2.3.cmml">(</mo><msub id="S4.T5.1.1.1.m1.1.1.1.1.1" xref="S4.T5.1.1.1.m1.1.1.1.1.1.cmml"><mi id="S4.T5.1.1.1.m1.1.1.1.1.1.2" mathcolor="#FF0000" mathsize="80%" xref="S4.T5.1.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S4.T5.1.1.1.m1.1.1.1.1.1.3" mathcolor="#FF0000" mathsize="80%" xref="S4.T5.1.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S4.T5.1.1.1.m1.2.2.2.2.4" mathcolor="#FF0000" mathsize="80%" xref="S4.T5.1.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S4.T5.1.1.1.m1.2.2.2.2.2" xref="S4.T5.1.1.1.m1.2.2.2.2.2.cmml"><mi id="S4.T5.1.1.1.m1.2.2.2.2.2.2" mathcolor="#FF0000" mathsize="80%" xref="S4.T5.1.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S4.T5.1.1.1.m1.2.2.2.2.2.3" mathcolor="#FF0000" mathsize="80%" xref="S4.T5.1.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S4.T5.1.1.1.m1.2.2.2.2.5" mathcolor="#FF0000" maxsize="80%" minsize="80%" xref="S4.T5.1.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.2b"><apply id="S4.T5.1.1.1.m1.2.2.cmml" xref="S4.T5.1.1.1.m1.2.2"><times id="S4.T5.1.1.1.m1.2.2.3.cmml" xref="S4.T5.1.1.1.m1.2.2.3"></times><ci id="S4.T5.1.1.1.m1.2.2.4.cmml" xref="S4.T5.1.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="S4.T5.1.1.1.m1.2.2.2.3.cmml" xref="S4.T5.1.1.1.m1.2.2.2.2"><apply id="S4.T5.1.1.1.m1.1.1.1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T5.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S4.T5.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S4.T5.1.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="S4.T5.1.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S4.T5.1.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="S4.T5.1.1.1.m1.2.2.2.2.2.cmml" xref="S4.T5.1.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S4.T5.1.1.1.m1.2.2.2.2.2.1.cmml" xref="S4.T5.1.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S4.T5.1.1.1.m1.2.2.2.2.2.2.cmml" xref="S4.T5.1.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="S4.T5.1.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="S4.T5.1.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.2"><semantics id="S4.T5.2.2.2.m1.2a"><mrow id="S4.T5.2.2.2.m1.2.2" xref="S4.T5.2.2.2.m1.2.2.cmml"><msup id="S4.T5.2.2.2.m1.2.2.4" xref="S4.T5.2.2.2.m1.2.2.4.cmml"><mi id="S4.T5.2.2.2.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S4.T5.2.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="S4.T5.2.2.2.m1.2.2.4.3" xref="S4.T5.2.2.2.m1.2.2.4.3.cmml"><mi id="S4.T5.2.2.2.m1.2.2.4.3.2" mathsize="80%" xref="S4.T5.2.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="S4.T5.2.2.2.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S4.T5.2.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="S4.T5.2.2.2.m1.2.2.4.3.3" mathsize="80%" xref="S4.T5.2.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="S4.T5.2.2.2.m1.2.2.3" xref="S4.T5.2.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="S4.T5.2.2.2.m1.2.2.2.2" xref="S4.T5.2.2.2.m1.2.2.2.3.cmml"><mo id="S4.T5.2.2.2.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S4.T5.2.2.2.m1.2.2.2.3.cmml">(</mo><msub id="S4.T5.2.2.2.m1.1.1.1.1.1" xref="S4.T5.2.2.2.m1.1.1.1.1.1.cmml"><mi id="S4.T5.2.2.2.m1.1.1.1.1.1.2" mathsize="80%" xref="S4.T5.2.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S4.T5.2.2.2.m1.1.1.1.1.1.3" mathsize="80%" xref="S4.T5.2.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S4.T5.2.2.2.m1.2.2.2.2.4" mathsize="80%" xref="S4.T5.2.2.2.m1.2.2.2.3.cmml">,</mo><msub id="S4.T5.2.2.2.m1.2.2.2.2.2" xref="S4.T5.2.2.2.m1.2.2.2.2.2.cmml"><mi id="S4.T5.2.2.2.m1.2.2.2.2.2.2" mathsize="80%" xref="S4.T5.2.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S4.T5.2.2.2.m1.2.2.2.2.2.3" mathsize="80%" xref="S4.T5.2.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S4.T5.2.2.2.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S4.T5.2.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.2b"><apply id="S4.T5.2.2.2.m1.2.2.cmml" xref="S4.T5.2.2.2.m1.2.2"><times id="S4.T5.2.2.2.m1.2.2.3.cmml" xref="S4.T5.2.2.2.m1.2.2.3"></times><apply id="S4.T5.2.2.2.m1.2.2.4.cmml" xref="S4.T5.2.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="S4.T5.2.2.2.m1.2.2.4.1.cmml" xref="S4.T5.2.2.2.m1.2.2.4">superscript</csymbol><ci id="S4.T5.2.2.2.m1.2.2.4.2.cmml" xref="S4.T5.2.2.2.m1.2.2.4.2">Δ</ci><apply id="S4.T5.2.2.2.m1.2.2.4.3.cmml" xref="S4.T5.2.2.2.m1.2.2.4.3"><ci id="S4.T5.2.2.2.m1.2.2.4.3.1.cmml" xref="S4.T5.2.2.2.m1.2.2.4.3.1">→</ci><ci id="S4.T5.2.2.2.m1.2.2.4.3.2.cmml" xref="S4.T5.2.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="S4.T5.2.2.2.m1.2.2.4.3.3.cmml" xref="S4.T5.2.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="S4.T5.2.2.2.m1.2.2.2.3.cmml" xref="S4.T5.2.2.2.m1.2.2.2.2"><apply id="S4.T5.2.2.2.m1.1.1.1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T5.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="S4.T5.2.2.2.m1.1.1.1.1.1.2.cmml" xref="S4.T5.2.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="S4.T5.2.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S4.T5.2.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="S4.T5.2.2.2.m1.2.2.2.2.2.cmml" xref="S4.T5.2.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S4.T5.2.2.2.m1.2.2.2.2.2.1.cmml" xref="S4.T5.2.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="S4.T5.2.2.2.m1.2.2.2.2.2.2.cmml" xref="S4.T5.2.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="S4.T5.2.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="S4.T5.2.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.2"><semantics id="S4.T5.3.3.3.m1.2a"><mrow id="S4.T5.3.3.3.m1.2.2" xref="S4.T5.3.3.3.m1.2.2.cmml"><msup id="S4.T5.3.3.3.m1.2.2.4" xref="S4.T5.3.3.3.m1.2.2.4.cmml"><mi id="S4.T5.3.3.3.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S4.T5.3.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="S4.T5.3.3.3.m1.2.2.4.3" xref="S4.T5.3.3.3.m1.2.2.4.3.cmml"><mi id="S4.T5.3.3.3.m1.2.2.4.3.2" mathsize="80%" xref="S4.T5.3.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="S4.T5.3.3.3.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S4.T5.3.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="S4.T5.3.3.3.m1.2.2.4.3.3" mathsize="80%" xref="S4.T5.3.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S4.T5.3.3.3.m1.2.2.3" xref="S4.T5.3.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="S4.T5.3.3.3.m1.2.2.2.2" xref="S4.T5.3.3.3.m1.2.2.2.3.cmml"><mo id="S4.T5.3.3.3.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S4.T5.3.3.3.m1.2.2.2.3.cmml">(</mo><msub id="S4.T5.3.3.3.m1.1.1.1.1.1" xref="S4.T5.3.3.3.m1.1.1.1.1.1.cmml"><mi id="S4.T5.3.3.3.m1.1.1.1.1.1.2" mathsize="80%" xref="S4.T5.3.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S4.T5.3.3.3.m1.1.1.1.1.1.3" mathsize="80%" xref="S4.T5.3.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S4.T5.3.3.3.m1.2.2.2.2.4" mathsize="80%" xref="S4.T5.3.3.3.m1.2.2.2.3.cmml">,</mo><msub id="S4.T5.3.3.3.m1.2.2.2.2.2" xref="S4.T5.3.3.3.m1.2.2.2.2.2.cmml"><mi id="S4.T5.3.3.3.m1.2.2.2.2.2.2" mathsize="80%" xref="S4.T5.3.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S4.T5.3.3.3.m1.2.2.2.2.2.3" mathsize="80%" xref="S4.T5.3.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S4.T5.3.3.3.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S4.T5.3.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.2b"><apply id="S4.T5.3.3.3.m1.2.2.cmml" xref="S4.T5.3.3.3.m1.2.2"><times id="S4.T5.3.3.3.m1.2.2.3.cmml" xref="S4.T5.3.3.3.m1.2.2.3"></times><apply id="S4.T5.3.3.3.m1.2.2.4.cmml" xref="S4.T5.3.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="S4.T5.3.3.3.m1.2.2.4.1.cmml" xref="S4.T5.3.3.3.m1.2.2.4">superscript</csymbol><ci id="S4.T5.3.3.3.m1.2.2.4.2.cmml" xref="S4.T5.3.3.3.m1.2.2.4.2">Δ</ci><apply id="S4.T5.3.3.3.m1.2.2.4.3.cmml" xref="S4.T5.3.3.3.m1.2.2.4.3"><ci id="S4.T5.3.3.3.m1.2.2.4.3.1.cmml" xref="S4.T5.3.3.3.m1.2.2.4.3.1">→</ci><ci id="S4.T5.3.3.3.m1.2.2.4.3.2.cmml" xref="S4.T5.3.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="S4.T5.3.3.3.m1.2.2.4.3.3.cmml" xref="S4.T5.3.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S4.T5.3.3.3.m1.2.2.2.3.cmml" xref="S4.T5.3.3.3.m1.2.2.2.2"><apply id="S4.T5.3.3.3.m1.1.1.1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T5.3.3.3.m1.1.1.1.1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="S4.T5.3.3.3.m1.1.1.1.1.1.2.cmml" xref="S4.T5.3.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="S4.T5.3.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="S4.T5.3.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="S4.T5.3.3.3.m1.2.2.2.2.2.cmml" xref="S4.T5.3.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S4.T5.3.3.3.m1.2.2.2.2.2.1.cmml" xref="S4.T5.3.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="S4.T5.3.3.3.m1.2.2.2.2.2.2.cmml" xref="S4.T5.3.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="S4.T5.3.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="S4.T5.3.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.1"><span class="ltx_text" id="S4.T5.3.4.1.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.4.1.2"><span class="ltx_text" id="S4.T5.3.4.1.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.3"><span class="ltx_text" id="S4.T5.3.4.1.3.1" style="font-size:80%;">20.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.4"><span class="ltx_text" id="S4.T5.3.4.1.4.1" style="font-size:80%;">30.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.5"><span class="ltx_text" id="S4.T5.3.4.1.5.1" style="font-size:80%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.6"><span class="ltx_text" id="S4.T5.3.4.1.6.1" style="font-size:80%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.7"><span class="ltx_text" id="S4.T5.3.4.1.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.1"><span class="ltx_text" id="S4.T5.3.5.2.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.5.2.2"><span class="ltx_text" id="S4.T5.3.5.2.2.1" style="font-size:80%;">Prompt with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.3"><span class="ltx_text" id="S4.T5.3.5.2.3.1" style="font-size:80%;">20.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.4"><span class="ltx_text" id="S4.T5.3.5.2.4.1" style="font-size:80%;">26.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.5"><span class="ltx_text" id="S4.T5.3.5.2.5.1" style="font-size:80%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.6"><span class="ltx_text" id="S4.T5.3.5.2.6.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.7"><span class="ltx_text" id="S4.T5.3.5.2.7.1" style="font-size:80%;">3.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6.3">
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.1"><span class="ltx_text" id="S4.T5.3.6.3.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.6.3.2"><span class="ltx_text" id="S4.T5.3.6.3.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.3"><span class="ltx_text" id="S4.T5.3.6.3.3.1" style="font-size:80%;">20.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.4"><span class="ltx_text" id="S4.T5.3.6.3.4.1" style="font-size:80%;">22.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.5"><span class="ltx_text" id="S4.T5.3.6.3.5.1" style="font-size:80%;">1.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.6"><span class="ltx_text" id="S4.T5.3.6.3.6.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.3.7"><span class="ltx_text" id="S4.T5.3.6.3.7.1" style="font-size:80%;">7.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.7.4">
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.1"><span class="ltx_text" id="S4.T5.3.7.4.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.7.4.2"><span class="ltx_text" id="S4.T5.3.7.4.2.1" style="font-size:80%;">STaR/RAFT for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.3"><span class="ltx_text" id="S4.T5.3.7.4.3.1" style="font-size:80%;">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.4"><span class="ltx_text" id="S4.T5.3.7.4.4.1" style="font-size:80%;">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.5"><span class="ltx_text" id="S4.T5.3.7.4.5.1" style="font-size:80%;">3.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.6"><span class="ltx_text" id="S4.T5.3.7.4.6.1" style="font-size:80%;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4.7"><span class="ltx_text" id="S4.T5.3.7.4.7.1" style="font-size:80%;">7.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.8.5">
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.1"><span class="ltx_text" id="S4.T5.3.8.5.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.8.5.2"><span class="ltx_text" id="S4.T5.3.8.5.2.1" style="font-size:80%;">STaR/RAFT+ for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.3"><span class="ltx_text" id="S4.T5.3.8.5.3.1" style="font-size:80%;">22.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.4"><span class="ltx_text" id="S4.T5.3.8.5.4.1" style="font-size:80%;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.5"><span class="ltx_text" id="S4.T5.3.8.5.5.1" style="font-size:80%;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.6"><span class="ltx_text" id="S4.T5.3.8.5.6.1" style="font-size:80%;">11.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5.7"><span class="ltx_text" id="S4.T5.3.8.5.7.1" style="font-size:80%;">7.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.9.6" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.1"><span class="ltx_text" id="S4.T5.3.9.6.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.9.6.2"><span class="ltx_text" id="S4.T5.3.9.6.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.3"><span class="ltx_text" id="S4.T5.3.9.6.3.1" style="font-size:80%;background-color:#DDEBF7;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.4"><span class="ltx_text" id="S4.T5.3.9.6.4.1" style="font-size:80%;background-color:#DDEBF7;">27.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.5"><span class="ltx_text" id="S4.T5.3.9.6.5.1" style="font-size:80%;background-color:#DDEBF7;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.6"><span class="ltx_text" id="S4.T5.3.9.6.6.1" style="font-size:80%;background-color:#DDEBF7;">8.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.6.7"><span class="ltx_text" id="S4.T5.3.9.6.7.1" style="font-size:80%;background-color:#DDEBF7;">3.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.10.7" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.1"><span class="ltx_text" id="S4.T5.3.10.7.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.10.7.2"><span class="ltx_text" id="S4.T5.3.10.7.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT + Gold RM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.3"><span class="ltx_text" id="S4.T5.3.10.7.3.1" style="font-size:80%;background-color:#DDEBF7;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.4"><span class="ltx_text" id="S4.T5.3.10.7.4.1" style="font-size:80%;background-color:#DDEBF7;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.5"><span class="ltx_text" id="S4.T5.3.10.7.5.1" style="font-size:80%;background-color:#DDEBF7;">11.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.6"><span class="ltx_text" id="S4.T5.3.10.7.6.1" style="font-size:80%;background-color:#DDEBF7;">11.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.10.7.7"><span class="ltx_text" id="S4.T5.3.10.7.7.1" style="font-size:80%;background-color:#DDEBF7;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.11.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.1"><span class="ltx_text" id="S4.T5.3.11.8.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.11.8.2"><span class="ltx_text" id="S4.T5.3.11.8.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.3"><span class="ltx_text" id="S4.T5.3.11.8.3.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.4"><span class="ltx_text" id="S4.T5.3.11.8.4.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.5"><span class="ltx_text" id="S4.T5.3.11.8.5.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.6"><span class="ltx_text" id="S4.T5.3.11.8.6.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.11.8.7"><span class="ltx_text" id="S4.T5.3.11.8.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.12.9">
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.1"><span class="ltx_text" id="S4.T5.3.12.9.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.12.9.2"><span class="ltx_text" id="S4.T5.3.12.9.2.1" style="font-size:80%;">Prompt with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.3"><span class="ltx_text" id="S4.T5.3.12.9.3.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.4"><span class="ltx_text" id="S4.T5.3.12.9.4.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.5"><span class="ltx_text" id="S4.T5.3.12.9.5.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.6"><span class="ltx_text" id="S4.T5.3.12.9.6.1" style="font-size:80%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.12.9.7"><span class="ltx_text" id="S4.T5.3.12.9.7.1" style="font-size:80%;">4.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.13.10">
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.1"><span class="ltx_text" id="S4.T5.3.13.10.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.13.10.2"><span class="ltx_text" id="S4.T5.3.13.10.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.3"><span class="ltx_text" id="S4.T5.3.13.10.3.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.4"><span class="ltx_text" id="S4.T5.3.13.10.4.1" style="font-size:80%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.5"><span class="ltx_text" id="S4.T5.3.13.10.5.1" style="font-size:80%;">-0.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.6"><span class="ltx_text" id="S4.T5.3.13.10.6.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.13.10.7"><span class="ltx_text" id="S4.T5.3.13.10.7.1" style="font-size:80%;">9.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.14.11">
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.1"><span class="ltx_text" id="S4.T5.3.14.11.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.14.11.2"><span class="ltx_text" id="S4.T5.3.14.11.2.1" style="font-size:80%;">STaR/RAFT for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.3"><span class="ltx_text" id="S4.T5.3.14.11.3.1" style="font-size:80%;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.4"><span class="ltx_text" id="S4.T5.3.14.11.4.1" style="font-size:80%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.5"><span class="ltx_text" id="S4.T5.3.14.11.5.1" style="font-size:80%;">-1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.6"><span class="ltx_text" id="S4.T5.3.14.11.6.1" style="font-size:80%;">10.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.14.11.7"><span class="ltx_text" id="S4.T5.3.14.11.7.1" style="font-size:80%;">12.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.15.12">
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.1"><span class="ltx_text" id="S4.T5.3.15.12.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.15.12.2"><span class="ltx_text" id="S4.T5.3.15.12.2.1" style="font-size:80%;">STaR/RAFT+ for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.3"><span class="ltx_text" id="S4.T5.3.15.12.3.1" style="font-size:80%;">37.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.4"><span class="ltx_text" id="S4.T5.3.15.12.4.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.5"><span class="ltx_text" id="S4.T5.3.15.12.5.1" style="font-size:80%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.6"><span class="ltx_text" id="S4.T5.3.15.12.6.1" style="font-size:80%;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.15.12.7"><span class="ltx_text" id="S4.T5.3.15.12.7.1" style="font-size:80%;">8.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.16.13" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.1"><span class="ltx_text" id="S4.T5.3.16.13.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.16.13.2"><span class="ltx_text" id="S4.T5.3.16.13.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.3"><span class="ltx_text" id="S4.T5.3.16.13.3.1" style="font-size:80%;background-color:#DDEBF7;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.4"><span class="ltx_text" id="S4.T5.3.16.13.4.1" style="font-size:80%;background-color:#DDEBF7;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.5"><span class="ltx_text" id="S4.T5.3.16.13.5.1" style="font-size:80%;background-color:#DDEBF7;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.6"><span class="ltx_text" id="S4.T5.3.16.13.6.1" style="font-size:80%;background-color:#DDEBF7;">7.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.16.13.7"><span class="ltx_text" id="S4.T5.3.16.13.7.1" style="font-size:80%;background-color:#DDEBF7;">4.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.17.14" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.1"><span class="ltx_text" id="S4.T5.3.17.14.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.17.14.2"><span class="ltx_text" id="S4.T5.3.17.14.2.1" style="font-size:80%;background-color:#DDEBF7;">rewarding IFT + Gold RM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.3"><span class="ltx_text" id="S4.T5.3.17.14.3.1" style="font-size:80%;background-color:#DDEBF7;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.4"><span class="ltx_text" id="S4.T5.3.17.14.4.1" style="font-size:80%;background-color:#DDEBF7;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.5"><span class="ltx_text" id="S4.T5.3.17.14.5.1" style="font-size:80%;background-color:#DDEBF7;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.6"><span class="ltx_text" id="S4.T5.3.17.14.6.1" style="font-size:80%;background-color:#DDEBF7;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.17.14.7"><span class="ltx_text" id="S4.T5.3.17.14.7.1" style="font-size:80%;background-color:#DDEBF7;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.18.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.1"><span class="ltx_text" id="S4.T5.3.18.15.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.18.15.2"><span class="ltx_text" id="S4.T5.3.18.15.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.3"><span class="ltx_text" id="S4.T5.3.18.15.3.1" style="font-size:80%;">64.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.4"><span class="ltx_text" id="S4.T5.3.18.15.4.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.5"><span class="ltx_text" id="S4.T5.3.18.15.5.1" style="font-size:80%;">8.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.6"><span class="ltx_text" id="S4.T5.3.18.15.6.1" style="font-size:80%;">8.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.18.15.7"><span class="ltx_text" id="S4.T5.3.18.15.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.19.16">
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.1"><span class="ltx_text" id="S4.T5.3.19.16.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.19.16.2"><span class="ltx_text" id="S4.T5.3.19.16.2.1" style="font-size:80%;">Prompt with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.3"><span class="ltx_text" id="S4.T5.3.19.16.3.1" style="font-size:80%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.4"><span class="ltx_text" id="S4.T5.3.19.16.4.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.5"><span class="ltx_text" id="S4.T5.3.19.16.5.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.6"><span class="ltx_text" id="S4.T5.3.19.16.6.1" style="font-size:80%;">5.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.19.16.7"><span class="ltx_text" id="S4.T5.3.19.16.7.1" style="font-size:80%;">1.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.20.17">
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.1"><span class="ltx_text" id="S4.T5.3.20.17.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.20.17.2"><span class="ltx_text" id="S4.T5.3.20.17.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.3"><span class="ltx_text" id="S4.T5.3.20.17.3.1" style="font-size:80%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.4"><span class="ltx_text" id="S4.T5.3.20.17.4.1" style="font-size:80%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.5"><span class="ltx_text" id="S4.T5.3.20.17.5.1" style="font-size:80%;">-15.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.6"><span class="ltx_text" id="S4.T5.3.20.17.6.1" style="font-size:80%;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.20.17.7"><span class="ltx_text" id="S4.T5.3.20.17.7.1" style="font-size:80%;">23.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.21.18">
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.1"><span class="ltx_text" id="S4.T5.3.21.18.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.21.18.2"><span class="ltx_text" id="S4.T5.3.21.18.2.1" style="font-size:80%;">STaR/RAFT for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.3"><span class="ltx_text" id="S4.T5.3.21.18.3.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.4"><span class="ltx_text" id="S4.T5.3.21.18.4.1" style="font-size:80%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.5"><span class="ltx_text" id="S4.T5.3.21.18.5.1" style="font-size:80%;">-12.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.6"><span class="ltx_text" id="S4.T5.3.21.18.6.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.21.18.7"><span class="ltx_text" id="S4.T5.3.21.18.7.1" style="font-size:80%;">20.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.22.19">
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.1"><span class="ltx_text" id="S4.T5.3.22.19.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.22.19.2"><span class="ltx_text" id="S4.T5.3.22.19.2.1" style="font-size:80%;">STaR/RAFT+ for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.3"><span class="ltx_text" id="S4.T5.3.22.19.3.1" style="font-size:80%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.4"><span class="ltx_text" id="S4.T5.3.22.19.4.1" style="font-size:80%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.5"><span class="ltx_text" id="S4.T5.3.22.19.5.1" style="font-size:80%;">-8.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.6"><span class="ltx_text" id="S4.T5.3.22.19.6.1" style="font-size:80%;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.22.19.7"><span class="ltx_text" id="S4.T5.3.22.19.7.1" style="font-size:80%;">17.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.23.20" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.1"><span class="ltx_text" id="S4.T5.3.23.20.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.23.20.2"><span class="ltx_text" id="S4.T5.3.23.20.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.3"><span class="ltx_text" id="S4.T5.3.23.20.3.1" style="font-size:80%;background-color:#DDEBF7;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.4"><span class="ltx_text" id="S4.T5.3.23.20.4.1" style="font-size:80%;background-color:#DDEBF7;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.5"><span class="ltx_text" id="S4.T5.3.23.20.5.1" style="font-size:80%;background-color:#DDEBF7;">5.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.6"><span class="ltx_text" id="S4.T5.3.23.20.6.1" style="font-size:80%;background-color:#DDEBF7;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.23.20.7"><span class="ltx_text" id="S4.T5.3.23.20.7.1" style="font-size:80%;background-color:#DDEBF7;">4.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.24.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.1"><span class="ltx_text" id="S4.T5.3.24.21.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.24.21.2"><span class="ltx_text" id="S4.T5.3.24.21.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.3"><span class="ltx_text" id="S4.T5.3.24.21.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.4"><span class="ltx_text" id="S4.T5.3.24.21.4.1" style="font-size:80%;">83.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.5"><span class="ltx_text" id="S4.T5.3.24.21.5.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.6"><span class="ltx_text" id="S4.T5.3.24.21.6.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.24.21.7"><span class="ltx_text" id="S4.T5.3.24.21.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.25.22">
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.1"><span class="ltx_text" id="S4.T5.3.25.22.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.25.22.2"><span class="ltx_text" id="S4.T5.3.25.22.2.1" style="font-size:80%;">Prompt with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.3"><span class="ltx_text" id="S4.T5.3.25.22.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.4"><span class="ltx_text" id="S4.T5.3.25.22.4.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.5"><span class="ltx_text" id="S4.T5.3.25.22.5.1" style="font-size:80%;">2.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.6"><span class="ltx_text" id="S4.T5.3.25.22.6.1" style="font-size:80%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.25.22.7"><span class="ltx_text" id="S4.T5.3.25.22.7.1" style="font-size:80%;">3.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.26.23">
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.1"><span class="ltx_text" id="S4.T5.3.26.23.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.26.23.2"><span class="ltx_text" id="S4.T5.3.26.23.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.3"><span class="ltx_text" id="S4.T5.3.26.23.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.4"><span class="ltx_text" id="S4.T5.3.26.23.4.1" style="font-size:80%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.5"><span class="ltx_text" id="S4.T5.3.26.23.5.1" style="font-size:80%;">-7.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.6"><span class="ltx_text" id="S4.T5.3.26.23.6.1" style="font-size:80%;">7.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.26.23.7"><span class="ltx_text" id="S4.T5.3.26.23.7.1" style="font-size:80%;">14.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.27.24">
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.1"><span class="ltx_text" id="S4.T5.3.27.24.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.27.24.2"><span class="ltx_text" id="S4.T5.3.27.24.2.1" style="font-size:80%;">STaR/RAFT for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.3"><span class="ltx_text" id="S4.T5.3.27.24.3.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.4"><span class="ltx_text" id="S4.T5.3.27.24.4.1" style="font-size:80%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.5"><span class="ltx_text" id="S4.T5.3.27.24.5.1" style="font-size:80%;">-6.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.6"><span class="ltx_text" id="S4.T5.3.27.24.6.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.27.24.7"><span class="ltx_text" id="S4.T5.3.27.24.7.1" style="font-size:80%;">15.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.28.25">
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.1"><span class="ltx_text" id="S4.T5.3.28.25.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.28.25.2"><span class="ltx_text" id="S4.T5.3.28.25.2.1" style="font-size:80%;">STaR/RAFT+ for self-correctio</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.3"><span class="ltx_text" id="S4.T5.3.28.25.3.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.4"><span class="ltx_text" id="S4.T5.3.28.25.4.1" style="font-size:80%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.5"><span class="ltx_text" id="S4.T5.3.28.25.5.1" style="font-size:80%;">-0.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.6"><span class="ltx_text" id="S4.T5.3.28.25.6.1" style="font-size:80%;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.28.25.7"><span class="ltx_text" id="S4.T5.3.28.25.7.1" style="font-size:80%;">9.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.29.26" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.1"><span class="ltx_text" id="S4.T5.3.29.26.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.3.29.26.2"><span class="ltx_text" id="S4.T5.3.29.26.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.3"><span class="ltx_text" id="S4.T5.3.29.26.3.1" style="font-size:80%;background-color:#DDEBF7;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.4"><span class="ltx_text" id="S4.T5.3.29.26.4.1" style="font-size:80%;background-color:#DDEBF7;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.5"><span class="ltx_text" id="S4.T5.3.29.26.5.1" style="font-size:80%;background-color:#DDEBF7;">3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.6"><span class="ltx_text" id="S4.T5.3.29.26.6.1" style="font-size:80%;background-color:#DDEBF7;">4.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.29.26.7"><span class="ltx_text" id="S4.T5.3.29.26.7.1" style="font-size:80%;background-color:#DDEBF7;">1.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various methods on MATH and GSM8K datasets.  The methods include using gold standard reward models, intrinsic self-correction, STaR/RAFT (and its enhanced version), and the proposed self-rewarding IFT approach. Performance is evaluated based on turn 1 accuracy, final accuracy, the improvement in accuracy from turn 1 to the final answer, the fraction of problems correctly solved after correction, and the fraction of problems incorrectly solved after correction. The results are averaged across three different random seeds, and the models are evaluated with a temperature setting of 1.0. Due to space limitations, additional results using a temperature of 0.7 are included in the appendix.
> <details>
> <summary>read the caption</summary>
> Table 5: Main results of different methods on the test sets of MATH (first two groups of results) and GSM8K (last two groups of results). Models are evaluated with temperature 1.0, and results are averaged over three random seeds. Additional results using a temperature of 0.7 are included in the appendix due to space constraints.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T7.3.3.4"><span class="ltx_text ltx_font_bold" id="S5.T7.3.3.4.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.5"><span class="ltx_text ltx_font_bold" id="S5.T7.3.3.5.1" style="font-size:80%;">Turn 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.6"><span class="ltx_text ltx_font_bold" id="S5.T7.3.3.6.1" style="font-size:80%;">Final Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T7.1.1.1.m1.2"><semantics id="S5.T7.1.1.1.m1.2a"><mrow id="S5.T7.1.1.1.m1.2.2" xref="S5.T7.1.1.1.m1.2.2.cmml"><mi id="S5.T7.1.1.1.m1.2.2.4" mathsize="80%" mathvariant="normal" xref="S5.T7.1.1.1.m1.2.2.4.cmml">Δ</mi><mo id="S5.T7.1.1.1.m1.2.2.3" xref="S5.T7.1.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T7.1.1.1.m1.2.2.2.2" xref="S5.T7.1.1.1.m1.2.2.2.3.cmml"><mo id="S5.T7.1.1.1.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S5.T7.1.1.1.m1.2.2.2.3.cmml">(</mo><msub id="S5.T7.1.1.1.m1.1.1.1.1.1" xref="S5.T7.1.1.1.m1.1.1.1.1.1.cmml"><mi id="S5.T7.1.1.1.m1.1.1.1.1.1.2" mathsize="80%" xref="S5.T7.1.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T7.1.1.1.m1.1.1.1.1.1.3" mathsize="80%" xref="S5.T7.1.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T7.1.1.1.m1.2.2.2.2.4" mathsize="80%" xref="S5.T7.1.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S5.T7.1.1.1.m1.2.2.2.2.2" xref="S5.T7.1.1.1.m1.2.2.2.2.2.cmml"><mi id="S5.T7.1.1.1.m1.2.2.2.2.2.2" mathsize="80%" xref="S5.T7.1.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T7.1.1.1.m1.2.2.2.2.2.3" mathsize="80%" xref="S5.T7.1.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T7.1.1.1.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S5.T7.1.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T7.1.1.1.m1.2b"><apply id="S5.T7.1.1.1.m1.2.2.cmml" xref="S5.T7.1.1.1.m1.2.2"><times id="S5.T7.1.1.1.m1.2.2.3.cmml" xref="S5.T7.1.1.1.m1.2.2.3"></times><ci id="S5.T7.1.1.1.m1.2.2.4.cmml" xref="S5.T7.1.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="S5.T7.1.1.1.m1.2.2.2.3.cmml" xref="S5.T7.1.1.1.m1.2.2.2.2"><apply id="S5.T7.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T7.1.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T7.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T7.1.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T7.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T7.1.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T7.1.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T7.1.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T7.1.1.1.m1.2.2.2.2.2.cmml" xref="S5.T7.1.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T7.1.1.1.m1.2.2.2.2.2.1.cmml" xref="S5.T7.1.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T7.1.1.1.m1.2.2.2.2.2.2.cmml" xref="S5.T7.1.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T7.1.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T7.1.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.1.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T7.1.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.2.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T7.2.2.2.m1.2"><semantics id="S5.T7.2.2.2.m1.2a"><mrow id="S5.T7.2.2.2.m1.2.2" xref="S5.T7.2.2.2.m1.2.2.cmml"><msup id="S5.T7.2.2.2.m1.2.2.4" xref="S5.T7.2.2.2.m1.2.2.4.cmml"><mi id="S5.T7.2.2.2.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S5.T7.2.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T7.2.2.2.m1.2.2.4.3" xref="S5.T7.2.2.2.m1.2.2.4.3.cmml"><mi id="S5.T7.2.2.2.m1.2.2.4.3.2" mathsize="80%" xref="S5.T7.2.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="S5.T7.2.2.2.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S5.T7.2.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T7.2.2.2.m1.2.2.4.3.3" mathsize="80%" xref="S5.T7.2.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="S5.T7.2.2.2.m1.2.2.3" xref="S5.T7.2.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T7.2.2.2.m1.2.2.2.2" xref="S5.T7.2.2.2.m1.2.2.2.3.cmml"><mo id="S5.T7.2.2.2.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S5.T7.2.2.2.m1.2.2.2.3.cmml">(</mo><msub id="S5.T7.2.2.2.m1.1.1.1.1.1" xref="S5.T7.2.2.2.m1.1.1.1.1.1.cmml"><mi id="S5.T7.2.2.2.m1.1.1.1.1.1.2" mathsize="80%" xref="S5.T7.2.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T7.2.2.2.m1.1.1.1.1.1.3" mathsize="80%" xref="S5.T7.2.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T7.2.2.2.m1.2.2.2.2.4" mathsize="80%" xref="S5.T7.2.2.2.m1.2.2.2.3.cmml">,</mo><msub id="S5.T7.2.2.2.m1.2.2.2.2.2" xref="S5.T7.2.2.2.m1.2.2.2.2.2.cmml"><mi id="S5.T7.2.2.2.m1.2.2.2.2.2.2" mathsize="80%" xref="S5.T7.2.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T7.2.2.2.m1.2.2.2.2.2.3" mathsize="80%" xref="S5.T7.2.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T7.2.2.2.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S5.T7.2.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T7.2.2.2.m1.2b"><apply id="S5.T7.2.2.2.m1.2.2.cmml" xref="S5.T7.2.2.2.m1.2.2"><times id="S5.T7.2.2.2.m1.2.2.3.cmml" xref="S5.T7.2.2.2.m1.2.2.3"></times><apply id="S5.T7.2.2.2.m1.2.2.4.cmml" xref="S5.T7.2.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T7.2.2.2.m1.2.2.4.1.cmml" xref="S5.T7.2.2.2.m1.2.2.4">superscript</csymbol><ci id="S5.T7.2.2.2.m1.2.2.4.2.cmml" xref="S5.T7.2.2.2.m1.2.2.4.2">Δ</ci><apply id="S5.T7.2.2.2.m1.2.2.4.3.cmml" xref="S5.T7.2.2.2.m1.2.2.4.3"><ci id="S5.T7.2.2.2.m1.2.2.4.3.1.cmml" xref="S5.T7.2.2.2.m1.2.2.4.3.1">→</ci><ci id="S5.T7.2.2.2.m1.2.2.4.3.2.cmml" xref="S5.T7.2.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="S5.T7.2.2.2.m1.2.2.4.3.3.cmml" xref="S5.T7.2.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="S5.T7.2.2.2.m1.2.2.2.3.cmml" xref="S5.T7.2.2.2.m1.2.2.2.2"><apply id="S5.T7.2.2.2.m1.1.1.1.1.1.cmml" xref="S5.T7.2.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T7.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S5.T7.2.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T7.2.2.2.m1.1.1.1.1.1.2.cmml" xref="S5.T7.2.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T7.2.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T7.2.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T7.2.2.2.m1.2.2.2.2.2.cmml" xref="S5.T7.2.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T7.2.2.2.m1.2.2.2.2.2.1.cmml" xref="S5.T7.2.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T7.2.2.2.m1.2.2.2.2.2.2.cmml" xref="S5.T7.2.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T7.2.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T7.2.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.2.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T7.2.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T7.3.3.3.m1.2"><semantics id="S5.T7.3.3.3.m1.2a"><mrow id="S5.T7.3.3.3.m1.2.2" xref="S5.T7.3.3.3.m1.2.2.cmml"><msup id="S5.T7.3.3.3.m1.2.2.4" xref="S5.T7.3.3.3.m1.2.2.4.cmml"><mi id="S5.T7.3.3.3.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="S5.T7.3.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T7.3.3.3.m1.2.2.4.3" xref="S5.T7.3.3.3.m1.2.2.4.3.cmml"><mi id="S5.T7.3.3.3.m1.2.2.4.3.2" mathsize="80%" xref="S5.T7.3.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="S5.T7.3.3.3.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="S5.T7.3.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T7.3.3.3.m1.2.2.4.3.3" mathsize="80%" xref="S5.T7.3.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S5.T7.3.3.3.m1.2.2.3" xref="S5.T7.3.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T7.3.3.3.m1.2.2.2.2" xref="S5.T7.3.3.3.m1.2.2.2.3.cmml"><mo id="S5.T7.3.3.3.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="S5.T7.3.3.3.m1.2.2.2.3.cmml">(</mo><msub id="S5.T7.3.3.3.m1.1.1.1.1.1" xref="S5.T7.3.3.3.m1.1.1.1.1.1.cmml"><mi id="S5.T7.3.3.3.m1.1.1.1.1.1.2" mathsize="80%" xref="S5.T7.3.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T7.3.3.3.m1.1.1.1.1.1.3" mathsize="80%" xref="S5.T7.3.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T7.3.3.3.m1.2.2.2.2.4" mathsize="80%" xref="S5.T7.3.3.3.m1.2.2.2.3.cmml">,</mo><msub id="S5.T7.3.3.3.m1.2.2.2.2.2" xref="S5.T7.3.3.3.m1.2.2.2.2.2.cmml"><mi id="S5.T7.3.3.3.m1.2.2.2.2.2.2" mathsize="80%" xref="S5.T7.3.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T7.3.3.3.m1.2.2.2.2.2.3" mathsize="80%" xref="S5.T7.3.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T7.3.3.3.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="S5.T7.3.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T7.3.3.3.m1.2b"><apply id="S5.T7.3.3.3.m1.2.2.cmml" xref="S5.T7.3.3.3.m1.2.2"><times id="S5.T7.3.3.3.m1.2.2.3.cmml" xref="S5.T7.3.3.3.m1.2.2.3"></times><apply id="S5.T7.3.3.3.m1.2.2.4.cmml" xref="S5.T7.3.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T7.3.3.3.m1.2.2.4.1.cmml" xref="S5.T7.3.3.3.m1.2.2.4">superscript</csymbol><ci id="S5.T7.3.3.3.m1.2.2.4.2.cmml" xref="S5.T7.3.3.3.m1.2.2.4.2">Δ</ci><apply id="S5.T7.3.3.3.m1.2.2.4.3.cmml" xref="S5.T7.3.3.3.m1.2.2.4.3"><ci id="S5.T7.3.3.3.m1.2.2.4.3.1.cmml" xref="S5.T7.3.3.3.m1.2.2.4.3.1">→</ci><ci id="S5.T7.3.3.3.m1.2.2.4.3.2.cmml" xref="S5.T7.3.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="S5.T7.3.3.3.m1.2.2.4.3.3.cmml" xref="S5.T7.3.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S5.T7.3.3.3.m1.2.2.2.3.cmml" xref="S5.T7.3.3.3.m1.2.2.2.2"><apply id="S5.T7.3.3.3.m1.1.1.1.1.1.cmml" xref="S5.T7.3.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T7.3.3.3.m1.1.1.1.1.1.1.cmml" xref="S5.T7.3.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T7.3.3.3.m1.1.1.1.1.1.2.cmml" xref="S5.T7.3.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T7.3.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T7.3.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T7.3.3.3.m1.2.2.2.2.2.cmml" xref="S5.T7.3.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T7.3.3.3.m1.2.2.2.2.2.1.cmml" xref="S5.T7.3.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T7.3.3.3.m1.2.2.2.2.2.2.cmml" xref="S5.T7.3.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T7.3.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T7.3.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T7.3.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T7.3.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.7"><span class="ltx_text" id="S5.T7.3.3.7.1" style="font-size:80%;">MATH C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.3.3.8"><span class="ltx_text" id="S5.T7.3.3.8.1" style="font-size:80%;">MATH W</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.3.4.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.3.4.1.1"><span class="ltx_text" id="S5.T7.3.4.1.1.1" style="font-size:80%;">Llama-3-SFT + Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.2"><span class="ltx_text" id="S5.T7.3.4.1.2.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.3"><span class="ltx_text" id="S5.T7.3.4.1.3.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.4"><span class="ltx_text" id="S5.T7.3.4.1.4.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.5"><span class="ltx_text" id="S5.T7.3.4.1.5.1" style="font-size:80%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.6"><span class="ltx_text" id="S5.T7.3.4.1.6.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.7"><span class="ltx_text" id="S5.T7.3.4.1.7.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.4.1.8"><span class="ltx_text" id="S5.T7.3.4.1.8.1" style="font-size:80%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.3.5.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.3.5.2.1"><span class="ltx_text" id="S5.T7.3.5.2.1.1" style="font-size:80%;">Llama-3-SFT + External ORM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.2"><span class="ltx_text" id="S5.T7.3.5.2.2.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.3"><span class="ltx_text" id="S5.T7.3.5.2.3.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.4"><span class="ltx_text" id="S5.T7.3.5.2.4.1" style="font-size:80%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.5"><span class="ltx_text" id="S5.T7.3.5.2.5.1" style="font-size:80%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.6"><span class="ltx_text" id="S5.T7.3.5.2.6.1" style="font-size:80%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.7"><span class="ltx_text" id="S5.T7.3.5.2.7.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.5.2.8"><span class="ltx_text" id="S5.T7.3.5.2.8.1" style="font-size:80%;">88.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.3.6.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.3.6.3.1"><span class="ltx_text" id="S5.T7.3.6.3.1.1" style="font-size:80%;">Llama-3-SFT + Self-rewarding RM</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.2"><span class="ltx_text" id="S5.T7.3.6.3.2.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.3"><span class="ltx_text" id="S5.T7.3.6.3.3.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.4"><span class="ltx_text" id="S5.T7.3.6.3.4.1" style="font-size:80%;">2.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.5"><span class="ltx_text" id="S5.T7.3.6.3.5.1" style="font-size:80%;">7.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.6"><span class="ltx_text" id="S5.T7.3.6.3.6.1" style="font-size:80%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.7"><span class="ltx_text" id="S5.T7.3.6.3.7.1" style="font-size:80%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.3.6.3.8"><span class="ltx_text" id="S5.T7.3.6.3.8.1" style="font-size:80%;">86.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.3.7.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.3.7.4.1"><span class="ltx_text" id="S5.T7.3.7.4.1.1" style="font-size:80%;">Self-rewarding IFT + Self-rewarding RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.2"><span class="ltx_text" id="S5.T7.3.7.4.2.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.3"><span class="ltx_text" id="S5.T7.3.7.4.3.1" style="font-size:80%;">40.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.4"><span class="ltx_text" id="S5.T7.3.7.4.4.1" style="font-size:80%;">3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.5"><span class="ltx_text" id="S5.T7.3.7.4.5.1" style="font-size:80%;">7.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.6"><span class="ltx_text" id="S5.T7.3.7.4.6.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.7"><span class="ltx_text" id="S5.T7.3.7.4.7.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.3.7.4.8"><span class="ltx_text" id="S5.T7.3.7.4.8.1" style="font-size:80%;">76.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.3.8.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.3.8.5.1"><span class="ltx_text" id="S5.T7.3.8.5.1.1" style="font-size:80%;">Self-rewarding IFT + Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.2"><span class="ltx_text" id="S5.T7.3.8.5.2.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.3"><span class="ltx_text" id="S5.T7.3.8.5.3.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.4"><span class="ltx_text" id="S5.T7.3.8.5.4.1" style="font-size:80%;">9.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.5"><span class="ltx_text" id="S5.T7.3.8.5.5.1" style="font-size:80%;">9.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.6"><span class="ltx_text" id="S5.T7.3.8.5.6.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.7"><span class="ltx_text" id="S5.T7.3.8.5.7.1" style="font-size:80%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.3.8.5.8"><span class="ltx_text" id="S5.T7.3.8.5.8.1" style="font-size:80%;">100</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of self-rewarding Instruction Following fine-tuning (IFT) models against Llama-3-SFT models using an external Oracle Reward Model (ORM) on the MATH benchmark.  It evaluates the accuracy of the models in recognizing correct and incorrect reasoning trajectories.  The accuracy is broken down into two classes for each benchmark:  'C' representing the accuracy of identifying correct trajectories, and 'W' representing the accuracy of identifying incorrect trajectories. The table shows the Turn 1 accuracy, final accuracy, change in accuracy from turn 1 to final answer, fraction of problems changing from incorrect to correct and vice versa, and the reward model accuracy for each method.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison between self-rewarding IFT models and Llama-3-SFT model with external ORM on MATH benchmark. We report the accuracy of self-rewarding signals for the three benchmarks in two separate classes. For instance, MATH C is the accuracy of recognizing a correct trajectory, while MATH W is the accuracy of recognizing a wrong trajectory.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T8.21">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.18.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T8.18.4.5"><span class="ltx_text ltx_font_bold" id="S5.T8.18.4.5.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.18.4.6"><span class="ltx_text ltx_font_bold" id="S5.T8.18.4.6.1" style="font-size:70%;">Turn 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.18.4.7"><span class="ltx_text ltx_font_bold" id="S5.T8.18.4.7.1" style="font-size:70%;">Final Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.15.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T8.15.1.1.m1.2"><semantics id="S5.T8.15.1.1.m1.2a"><mrow id="S5.T8.15.1.1.m1.2.2" xref="S5.T8.15.1.1.m1.2.2.cmml"><mi id="S5.T8.15.1.1.m1.2.2.4" mathsize="70%" mathvariant="normal" xref="S5.T8.15.1.1.m1.2.2.4.cmml">Δ</mi><mo id="S5.T8.15.1.1.m1.2.2.3" xref="S5.T8.15.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T8.15.1.1.m1.2.2.2.2" xref="S5.T8.15.1.1.m1.2.2.2.3.cmml"><mo id="S5.T8.15.1.1.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T8.15.1.1.m1.2.2.2.3.cmml">(</mo><msub id="S5.T8.15.1.1.m1.1.1.1.1.1" xref="S5.T8.15.1.1.m1.1.1.1.1.1.cmml"><mi id="S5.T8.15.1.1.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T8.15.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T8.15.1.1.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T8.15.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T8.15.1.1.m1.2.2.2.2.4" mathsize="70%" xref="S5.T8.15.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S5.T8.15.1.1.m1.2.2.2.2.2" xref="S5.T8.15.1.1.m1.2.2.2.2.2.cmml"><mi id="S5.T8.15.1.1.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T8.15.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T8.15.1.1.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T8.15.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T8.15.1.1.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T8.15.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.15.1.1.m1.2b"><apply id="S5.T8.15.1.1.m1.2.2.cmml" xref="S5.T8.15.1.1.m1.2.2"><times id="S5.T8.15.1.1.m1.2.2.3.cmml" xref="S5.T8.15.1.1.m1.2.2.3"></times><ci id="S5.T8.15.1.1.m1.2.2.4.cmml" xref="S5.T8.15.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="S5.T8.15.1.1.m1.2.2.2.3.cmml" xref="S5.T8.15.1.1.m1.2.2.2.2"><apply id="S5.T8.15.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.15.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T8.15.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.15.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T8.15.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.15.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T8.15.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T8.15.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T8.15.1.1.m1.2.2.2.2.2.cmml" xref="S5.T8.15.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T8.15.1.1.m1.2.2.2.2.2.1.cmml" xref="S5.T8.15.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T8.15.1.1.m1.2.2.2.2.2.2.cmml" xref="S5.T8.15.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T8.15.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T8.15.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.15.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.15.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.16.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T8.16.2.2.m1.2"><semantics id="S5.T8.16.2.2.m1.2a"><mrow id="S5.T8.16.2.2.m1.2.2" xref="S5.T8.16.2.2.m1.2.2.cmml"><msup id="S5.T8.16.2.2.m1.2.2.4" xref="S5.T8.16.2.2.m1.2.2.4.cmml"><mi id="S5.T8.16.2.2.m1.2.2.4.2" mathsize="70%" mathvariant="normal" xref="S5.T8.16.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T8.16.2.2.m1.2.2.4.3" xref="S5.T8.16.2.2.m1.2.2.4.3.cmml"><mi id="S5.T8.16.2.2.m1.2.2.4.3.2" mathsize="70%" xref="S5.T8.16.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="S5.T8.16.2.2.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T8.16.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T8.16.2.2.m1.2.2.4.3.3" mathsize="70%" xref="S5.T8.16.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="S5.T8.16.2.2.m1.2.2.3" xref="S5.T8.16.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T8.16.2.2.m1.2.2.2.2" xref="S5.T8.16.2.2.m1.2.2.2.3.cmml"><mo id="S5.T8.16.2.2.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T8.16.2.2.m1.2.2.2.3.cmml">(</mo><msub id="S5.T8.16.2.2.m1.1.1.1.1.1" xref="S5.T8.16.2.2.m1.1.1.1.1.1.cmml"><mi id="S5.T8.16.2.2.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T8.16.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T8.16.2.2.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T8.16.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T8.16.2.2.m1.2.2.2.2.4" mathsize="70%" xref="S5.T8.16.2.2.m1.2.2.2.3.cmml">,</mo><msub id="S5.T8.16.2.2.m1.2.2.2.2.2" xref="S5.T8.16.2.2.m1.2.2.2.2.2.cmml"><mi id="S5.T8.16.2.2.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T8.16.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T8.16.2.2.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T8.16.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T8.16.2.2.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T8.16.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.16.2.2.m1.2b"><apply id="S5.T8.16.2.2.m1.2.2.cmml" xref="S5.T8.16.2.2.m1.2.2"><times id="S5.T8.16.2.2.m1.2.2.3.cmml" xref="S5.T8.16.2.2.m1.2.2.3"></times><apply id="S5.T8.16.2.2.m1.2.2.4.cmml" xref="S5.T8.16.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T8.16.2.2.m1.2.2.4.1.cmml" xref="S5.T8.16.2.2.m1.2.2.4">superscript</csymbol><ci id="S5.T8.16.2.2.m1.2.2.4.2.cmml" xref="S5.T8.16.2.2.m1.2.2.4.2">Δ</ci><apply id="S5.T8.16.2.2.m1.2.2.4.3.cmml" xref="S5.T8.16.2.2.m1.2.2.4.3"><ci id="S5.T8.16.2.2.m1.2.2.4.3.1.cmml" xref="S5.T8.16.2.2.m1.2.2.4.3.1">→</ci><ci id="S5.T8.16.2.2.m1.2.2.4.3.2.cmml" xref="S5.T8.16.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="S5.T8.16.2.2.m1.2.2.4.3.3.cmml" xref="S5.T8.16.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="S5.T8.16.2.2.m1.2.2.2.3.cmml" xref="S5.T8.16.2.2.m1.2.2.2.2"><apply id="S5.T8.16.2.2.m1.1.1.1.1.1.cmml" xref="S5.T8.16.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T8.16.2.2.m1.1.1.1.1.1.1.cmml" xref="S5.T8.16.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T8.16.2.2.m1.1.1.1.1.1.2.cmml" xref="S5.T8.16.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T8.16.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T8.16.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T8.16.2.2.m1.2.2.2.2.2.cmml" xref="S5.T8.16.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T8.16.2.2.m1.2.2.2.2.2.1.cmml" xref="S5.T8.16.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T8.16.2.2.m1.2.2.2.2.2.2.cmml" xref="S5.T8.16.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T8.16.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T8.16.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.16.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.16.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.17.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T8.17.3.3.m1.2"><semantics id="S5.T8.17.3.3.m1.2a"><mrow id="S5.T8.17.3.3.m1.2.2" xref="S5.T8.17.3.3.m1.2.2.cmml"><msup id="S5.T8.17.3.3.m1.2.2.4" xref="S5.T8.17.3.3.m1.2.2.4.cmml"><mi id="S5.T8.17.3.3.m1.2.2.4.2" mathsize="70%" mathvariant="normal" xref="S5.T8.17.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T8.17.3.3.m1.2.2.4.3" xref="S5.T8.17.3.3.m1.2.2.4.3.cmml"><mi id="S5.T8.17.3.3.m1.2.2.4.3.2" mathsize="70%" xref="S5.T8.17.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="S5.T8.17.3.3.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T8.17.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T8.17.3.3.m1.2.2.4.3.3" mathsize="70%" xref="S5.T8.17.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S5.T8.17.3.3.m1.2.2.3" xref="S5.T8.17.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T8.17.3.3.m1.2.2.2.2" xref="S5.T8.17.3.3.m1.2.2.2.3.cmml"><mo id="S5.T8.17.3.3.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T8.17.3.3.m1.2.2.2.3.cmml">(</mo><msub id="S5.T8.17.3.3.m1.1.1.1.1.1" xref="S5.T8.17.3.3.m1.1.1.1.1.1.cmml"><mi id="S5.T8.17.3.3.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T8.17.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T8.17.3.3.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T8.17.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T8.17.3.3.m1.2.2.2.2.4" mathsize="70%" xref="S5.T8.17.3.3.m1.2.2.2.3.cmml">,</mo><msub id="S5.T8.17.3.3.m1.2.2.2.2.2" xref="S5.T8.17.3.3.m1.2.2.2.2.2.cmml"><mi id="S5.T8.17.3.3.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T8.17.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T8.17.3.3.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T8.17.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T8.17.3.3.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T8.17.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.17.3.3.m1.2b"><apply id="S5.T8.17.3.3.m1.2.2.cmml" xref="S5.T8.17.3.3.m1.2.2"><times id="S5.T8.17.3.3.m1.2.2.3.cmml" xref="S5.T8.17.3.3.m1.2.2.3"></times><apply id="S5.T8.17.3.3.m1.2.2.4.cmml" xref="S5.T8.17.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T8.17.3.3.m1.2.2.4.1.cmml" xref="S5.T8.17.3.3.m1.2.2.4">superscript</csymbol><ci id="S5.T8.17.3.3.m1.2.2.4.2.cmml" xref="S5.T8.17.3.3.m1.2.2.4.2">Δ</ci><apply id="S5.T8.17.3.3.m1.2.2.4.3.cmml" xref="S5.T8.17.3.3.m1.2.2.4.3"><ci id="S5.T8.17.3.3.m1.2.2.4.3.1.cmml" xref="S5.T8.17.3.3.m1.2.2.4.3.1">→</ci><ci id="S5.T8.17.3.3.m1.2.2.4.3.2.cmml" xref="S5.T8.17.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="S5.T8.17.3.3.m1.2.2.4.3.3.cmml" xref="S5.T8.17.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S5.T8.17.3.3.m1.2.2.2.3.cmml" xref="S5.T8.17.3.3.m1.2.2.2.2"><apply id="S5.T8.17.3.3.m1.1.1.1.1.1.cmml" xref="S5.T8.17.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T8.17.3.3.m1.1.1.1.1.1.1.cmml" xref="S5.T8.17.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T8.17.3.3.m1.1.1.1.1.1.2.cmml" xref="S5.T8.17.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T8.17.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T8.17.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T8.17.3.3.m1.2.2.2.2.2.cmml" xref="S5.T8.17.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T8.17.3.3.m1.2.2.2.2.2.1.cmml" xref="S5.T8.17.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T8.17.3.3.m1.2.2.2.2.2.2.cmml" xref="S5.T8.17.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T8.17.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T8.17.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.17.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.17.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.18.4.4"><math alttext="p^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T8.18.4.4.m1.2"><semantics id="S5.T8.18.4.4.m1.2a"><mrow id="S5.T8.18.4.4.m1.2.2" xref="S5.T8.18.4.4.m1.2.2.cmml"><msup id="S5.T8.18.4.4.m1.2.2.4" xref="S5.T8.18.4.4.m1.2.2.4.cmml"><mi id="S5.T8.18.4.4.m1.2.2.4.2" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.4.2.cmml">p</mi><mrow id="S5.T8.18.4.4.m1.2.2.4.3" xref="S5.T8.18.4.4.m1.2.2.4.3.cmml"><mi id="S5.T8.18.4.4.m1.2.2.4.3.2" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.4.3.2.cmml">c</mi><mo id="S5.T8.18.4.4.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T8.18.4.4.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T8.18.4.4.m1.2.2.4.3.3" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S5.T8.18.4.4.m1.2.2.3" xref="S5.T8.18.4.4.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T8.18.4.4.m1.2.2.2.2" xref="S5.T8.18.4.4.m1.2.2.2.3.cmml"><mo id="S5.T8.18.4.4.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T8.18.4.4.m1.2.2.2.3.cmml">(</mo><msub id="S5.T8.18.4.4.m1.1.1.1.1.1" xref="S5.T8.18.4.4.m1.1.1.1.1.1.cmml"><mi id="S5.T8.18.4.4.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T8.18.4.4.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T8.18.4.4.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T8.18.4.4.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T8.18.4.4.m1.2.2.2.2.4" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.2.3.cmml">,</mo><msub id="S5.T8.18.4.4.m1.2.2.2.2.2" xref="S5.T8.18.4.4.m1.2.2.2.2.2.cmml"><mi id="S5.T8.18.4.4.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T8.18.4.4.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T8.18.4.4.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T8.18.4.4.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T8.18.4.4.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.18.4.4.m1.2b"><apply id="S5.T8.18.4.4.m1.2.2.cmml" xref="S5.T8.18.4.4.m1.2.2"><times id="S5.T8.18.4.4.m1.2.2.3.cmml" xref="S5.T8.18.4.4.m1.2.2.3"></times><apply id="S5.T8.18.4.4.m1.2.2.4.cmml" xref="S5.T8.18.4.4.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T8.18.4.4.m1.2.2.4.1.cmml" xref="S5.T8.18.4.4.m1.2.2.4">superscript</csymbol><ci id="S5.T8.18.4.4.m1.2.2.4.2.cmml" xref="S5.T8.18.4.4.m1.2.2.4.2">𝑝</ci><apply id="S5.T8.18.4.4.m1.2.2.4.3.cmml" xref="S5.T8.18.4.4.m1.2.2.4.3"><ci id="S5.T8.18.4.4.m1.2.2.4.3.1.cmml" xref="S5.T8.18.4.4.m1.2.2.4.3.1">→</ci><ci id="S5.T8.18.4.4.m1.2.2.4.3.2.cmml" xref="S5.T8.18.4.4.m1.2.2.4.3.2">𝑐</ci><ci id="S5.T8.18.4.4.m1.2.2.4.3.3.cmml" xref="S5.T8.18.4.4.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S5.T8.18.4.4.m1.2.2.2.3.cmml" xref="S5.T8.18.4.4.m1.2.2.2.2"><apply id="S5.T8.18.4.4.m1.1.1.1.1.1.cmml" xref="S5.T8.18.4.4.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T8.18.4.4.m1.1.1.1.1.1.1.cmml" xref="S5.T8.18.4.4.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T8.18.4.4.m1.1.1.1.1.1.2.cmml" xref="S5.T8.18.4.4.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T8.18.4.4.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T8.18.4.4.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T8.18.4.4.m1.2.2.2.2.2.cmml" xref="S5.T8.18.4.4.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T8.18.4.4.m1.2.2.2.2.2.1.cmml" xref="S5.T8.18.4.4.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T8.18.4.4.m1.2.2.2.2.2.2.cmml" xref="S5.T8.18.4.4.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T8.18.4.4.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T8.18.4.4.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.18.4.4.m1.2c">p^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.18.4.4.m1.2d">italic_p start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T8.18.4.8"><span class="ltx_text ltx_font_bold" id="S5.T8.18.4.8.1" style="font-size:70%;">RM Accuracy</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.21.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T8.21.8.1.1"><span class="ltx_text" id="S5.T8.21.8.1.1.1" style="font-size:70%;">Llama-3-SFT + Gold RM</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.2"><span class="ltx_text" id="S5.T8.21.8.1.2.1" style="font-size:70%;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.3"><span class="ltx_text" id="S5.T8.21.8.1.3.1" style="font-size:70%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.4"><span class="ltx_text" id="S5.T8.21.8.1.4.1" style="font-size:70%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.5"><span class="ltx_text" id="S5.T8.21.8.1.5.1" style="font-size:70%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.6"><span class="ltx_text" id="S5.T8.21.8.1.6.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.7"><span class="ltx_text" id="S5.T8.21.8.1.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.8.1.8"><span class="ltx_text" id="S5.T8.21.8.1.8.1" style="font-size:70%;">(100, 100)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.19.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.19.5.1">
<span class="ltx_text" id="S5.T8.19.5.1.1" style="font-size:70%;">Llama-3-SFT + External ORM </span><math alttext="(\star)" class="ltx_Math" display="inline" id="S5.T8.19.5.1.m1.1"><semantics id="S5.T8.19.5.1.m1.1a"><mrow id="S5.T8.19.5.1.m1.1.2.2"><mo id="S5.T8.19.5.1.m1.1.2.2.1" maxsize="70%" minsize="70%">(</mo><mo id="S5.T8.19.5.1.m1.1.1" lspace="0em" mathsize="70%" rspace="0em" xref="S5.T8.19.5.1.m1.1.1.cmml">⋆</mo><mo id="S5.T8.19.5.1.m1.1.2.2.2" maxsize="70%" minsize="70%">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.19.5.1.m1.1b"><ci id="S5.T8.19.5.1.m1.1.1.cmml" xref="S5.T8.19.5.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.19.5.1.m1.1c">(\star)</annotation><annotation encoding="application/x-llamapun" id="S5.T8.19.5.1.m1.1d">( ⋆ )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.2"><span class="ltx_text" id="S5.T8.19.5.2.1" style="font-size:70%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.3"><span class="ltx_text" id="S5.T8.19.5.3.1" style="font-size:70%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.4"><span class="ltx_text" id="S5.T8.19.5.4.1" style="font-size:70%;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.5"><span class="ltx_text" id="S5.T8.19.5.5.1" style="font-size:70%;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.6"><span class="ltx_text" id="S5.T8.19.5.6.1" style="font-size:70%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.7"><span class="ltx_text" id="S5.T8.19.5.7.1" style="font-size:70%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.19.5.8"><span class="ltx_text" id="S5.T8.19.5.8.1" style="font-size:70%;">(66.9, 88.4)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.20.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.20.6.1">
<span class="ltx_text" id="S5.T8.20.6.1.1" style="font-size:70%;">Llama-3-SFT + Self-rewarding RM </span><math alttext="(\star)" class="ltx_Math" display="inline" id="S5.T8.20.6.1.m1.1"><semantics id="S5.T8.20.6.1.m1.1a"><mrow id="S5.T8.20.6.1.m1.1.2.2"><mo id="S5.T8.20.6.1.m1.1.2.2.1" maxsize="70%" minsize="70%">(</mo><mo id="S5.T8.20.6.1.m1.1.1" lspace="0em" mathsize="70%" rspace="0em" xref="S5.T8.20.6.1.m1.1.1.cmml">⋆</mo><mo id="S5.T8.20.6.1.m1.1.2.2.2" maxsize="70%" minsize="70%">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.20.6.1.m1.1b"><ci id="S5.T8.20.6.1.m1.1.1.cmml" xref="S5.T8.20.6.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.20.6.1.m1.1c">(\star)</annotation><annotation encoding="application/x-llamapun" id="S5.T8.20.6.1.m1.1d">( ⋆ )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.2"><span class="ltx_text" id="S5.T8.20.6.2.1" style="font-size:70%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.3"><span class="ltx_text" id="S5.T8.20.6.3.1" style="font-size:70%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.4"><span class="ltx_text" id="S5.T8.20.6.4.1" style="font-size:70%;">2.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.5"><span class="ltx_text" id="S5.T8.20.6.5.1" style="font-size:70%;">7.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.6"><span class="ltx_text" id="S5.T8.20.6.6.1" style="font-size:70%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.7"><span class="ltx_text" id="S5.T8.20.6.7.1" style="font-size:70%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.20.6.8"><span class="ltx_text" id="S5.T8.20.6.8.1" style="font-size:70%;">(67.0, 86.7)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T8.21.7.1">
<span class="ltx_text" id="S5.T8.21.7.1.1" style="font-size:70%;">Self-rewarding IFT + Balanced </span><math alttext="(\star)" class="ltx_Math" display="inline" id="S5.T8.21.7.1.m1.1"><semantics id="S5.T8.21.7.1.m1.1a"><mrow id="S5.T8.21.7.1.m1.1.2.2"><mo id="S5.T8.21.7.1.m1.1.2.2.1" maxsize="70%" minsize="70%">(</mo><mo id="S5.T8.21.7.1.m1.1.1" lspace="0em" mathsize="70%" rspace="0em" xref="S5.T8.21.7.1.m1.1.1.cmml">⋆</mo><mo id="S5.T8.21.7.1.m1.1.2.2.2" maxsize="70%" minsize="70%">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.21.7.1.m1.1b"><ci id="S5.T8.21.7.1.m1.1.1.cmml" xref="S5.T8.21.7.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.21.7.1.m1.1c">(\star)</annotation><annotation encoding="application/x-llamapun" id="S5.T8.21.7.1.m1.1d">( ⋆ )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.2"><span class="ltx_text" id="S5.T8.21.7.2.1" style="font-size:70%;">37.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.3"><span class="ltx_text" id="S5.T8.21.7.3.1" style="font-size:70%;">40.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.4"><span class="ltx_text" id="S5.T8.21.7.4.1" style="font-size:70%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.5"><span class="ltx_text" id="S5.T8.21.7.5.1" style="font-size:70%;">7.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.6"><span class="ltx_text" id="S5.T8.21.7.6.1" style="font-size:70%;">4.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.7"><span class="ltx_text" id="S5.T8.21.7.7.1" style="font-size:70%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.7.8"><span class="ltx_text" id="S5.T8.21.7.8.1" style="font-size:70%;">(72.1, 75.3)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.9.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.21.9.2.1"><span class="ltx_text" id="S5.T8.21.9.2.1.1" style="font-size:70%;">  + c2c 60K</span></th>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.2"><span class="ltx_text" id="S5.T8.21.9.2.2.1" style="font-size:70%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.3"><span class="ltx_text" id="S5.T8.21.9.2.3.1" style="font-size:70%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.4"><span class="ltx_text" id="S5.T8.21.9.2.4.1" style="font-size:70%;">3.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.5"><span class="ltx_text" id="S5.T8.21.9.2.5.1" style="font-size:70%;">7.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.6"><span class="ltx_text" id="S5.T8.21.9.2.6.1" style="font-size:70%;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.7"><span class="ltx_text" id="S5.T8.21.9.2.7.1" style="font-size:70%;">36.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.9.2.8"><span class="ltx_text" id="S5.T8.21.9.2.8.1" style="font-size:70%;">(70.0, 76.4)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.10.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.21.10.3.1"><span class="ltx_text" id="S5.T8.21.10.3.1.1" style="font-size:70%;">  + Gold RM</span></th>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.2"><span class="ltx_text" id="S5.T8.21.10.3.2.1" style="font-size:70%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.3"><span class="ltx_text" id="S5.T8.21.10.3.3.1" style="font-size:70%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.4"><span class="ltx_text" id="S5.T8.21.10.3.4.1" style="font-size:70%;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.5"><span class="ltx_text" id="S5.T8.21.10.3.5.1" style="font-size:70%;">9.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.6"><span class="ltx_text" id="S5.T8.21.10.3.6.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.7"><span class="ltx_text" id="S5.T8.21.10.3.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.10.3.8"><span class="ltx_text" id="S5.T8.21.10.3.8.1" style="font-size:70%;">(100, 100)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.11.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T8.21.11.4.1"><span class="ltx_text" id="S5.T8.21.11.4.1.1" style="font-size:70%;">Self-rewarding IFT + More Incorrect</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.2"><span class="ltx_text" id="S5.T8.21.11.4.2.1" style="font-size:70%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.3"><span class="ltx_text" id="S5.T8.21.11.4.3.1" style="font-size:70%;">40.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.4"><span class="ltx_text" id="S5.T8.21.11.4.4.1" style="font-size:70%;">2.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.5"><span class="ltx_text" id="S5.T8.21.11.4.5.1" style="font-size:70%;">8.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.6"><span class="ltx_text" id="S5.T8.21.11.4.6.1" style="font-size:70%;">5.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.7"><span class="ltx_text" id="S5.T8.21.11.4.7.1" style="font-size:70%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.11.4.8"><span class="ltx_text" id="S5.T8.21.11.4.8.1" style="font-size:70%;">(63.6, 82.4)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.12.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.21.12.5.1"><span class="ltx_text" id="S5.T8.21.12.5.1.1" style="font-size:70%;">  + c2c 60K</span></th>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.2"><span class="ltx_text" id="S5.T8.21.12.5.2.1" style="font-size:70%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.3"><span class="ltx_text" id="S5.T8.21.12.5.3.1" style="font-size:70%;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.4"><span class="ltx_text" id="S5.T8.21.12.5.4.1" style="font-size:70%;">3.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.5"><span class="ltx_text" id="S5.T8.21.12.5.5.1" style="font-size:70%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.6"><span class="ltx_text" id="S5.T8.21.12.5.6.1" style="font-size:70%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.7"><span class="ltx_text" id="S5.T8.21.12.5.7.1" style="font-size:70%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.12.5.8"><span class="ltx_text" id="S5.T8.21.12.5.8.1" style="font-size:70%;">(61.5, 84.3)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.13.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.21.13.6.1"><span class="ltx_text" id="S5.T8.21.13.6.1.1" style="font-size:70%;">  + Gold RM</span></th>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.2"><span class="ltx_text" id="S5.T8.21.13.6.2.1" style="font-size:70%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.3"><span class="ltx_text" id="S5.T8.21.13.6.3.1" style="font-size:70%;">46.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.4"><span class="ltx_text" id="S5.T8.21.13.6.4.1" style="font-size:70%;">9.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.5"><span class="ltx_text" id="S5.T8.21.13.6.5.1" style="font-size:70%;">9.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.6"><span class="ltx_text" id="S5.T8.21.13.6.6.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.7"><span class="ltx_text" id="S5.T8.21.13.6.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.13.6.8"><span class="ltx_text" id="S5.T8.21.13.6.8.1" style="font-size:70%;">(100, 100)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.14.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T8.21.14.7.1"><span class="ltx_text" id="S5.T8.21.14.7.1.1" style="font-size:70%;">Self-rewarding IFT + More Correct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.2"><span class="ltx_text" id="S5.T8.21.14.7.2.1" style="font-size:70%;">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.3"><span class="ltx_text" id="S5.T8.21.14.7.3.1" style="font-size:70%;">40.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.4"><span class="ltx_text" id="S5.T8.21.14.7.4.1" style="font-size:70%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.5"><span class="ltx_text" id="S5.T8.21.14.7.5.1" style="font-size:70%;">7.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.6"><span class="ltx_text" id="S5.T8.21.14.7.6.1" style="font-size:70%;">4.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.7"><span class="ltx_text" id="S5.T8.21.14.7.7.1" style="font-size:70%;">45.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.21.14.7.8"><span class="ltx_text" id="S5.T8.21.14.7.8.1" style="font-size:70%;">(72.6, 75.1)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.15.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T8.21.15.8.1"><span class="ltx_text" id="S5.T8.21.15.8.1.1" style="font-size:70%;">  + c2c 60K</span></th>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.2"><span class="ltx_text" id="S5.T8.21.15.8.2.1" style="font-size:70%;">37.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.3"><span class="ltx_text" id="S5.T8.21.15.8.3.1" style="font-size:70%;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.4"><span class="ltx_text" id="S5.T8.21.15.8.4.1" style="font-size:70%;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.5"><span class="ltx_text" id="S5.T8.21.15.8.5.1" style="font-size:70%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.6"><span class="ltx_text" id="S5.T8.21.15.8.6.1" style="font-size:70%;">3.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.7"><span class="ltx_text" id="S5.T8.21.15.8.7.1" style="font-size:70%;">35.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.21.15.8.8"><span class="ltx_text" id="S5.T8.21.15.8.8.1" style="font-size:70%;">(72.1, 76.2)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.21.16.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T8.21.16.9.1"><span class="ltx_text" id="S5.T8.21.16.9.1.1" style="font-size:70%;">  + Gold RM</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.2"><span class="ltx_text" id="S5.T8.21.16.9.2.1" style="font-size:70%;">37.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.3"><span class="ltx_text" id="S5.T8.21.16.9.3.1" style="font-size:70%;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.4"><span class="ltx_text" id="S5.T8.21.16.9.4.1" style="font-size:70%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.5"><span class="ltx_text" id="S5.T8.21.16.9.5.1" style="font-size:70%;">9.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.6"><span class="ltx_text" id="S5.T8.21.16.9.6.1" style="font-size:70%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.7"><span class="ltx_text" id="S5.T8.21.16.9.7.1" style="font-size:70%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.21.16.9.8"><span class="ltx_text" id="S5.T8.21.16.9.8.1" style="font-size:70%;">(100, 100)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the training data used for self-rewarding instruction following (IFT) with Llama-3-8B-SFT as the base model.  It explores the impact of varying the proportions of trajectories with correct and incorrect initial responses in the training data.  Three data configurations are compared: a balanced set, one with more incorrect trajectories, and one with more correct trajectories. For each configuration, results are shown for the self-rewarding IFT model, along with variants including additional correct-to-correct trajectories and replacing self-rewarding signals with ground truth labels during inference. The results allow for analyzing the influence of data composition on the model's performance and ability to self-correct.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation study on the training sets of self-rewarding IFT with the base model Llama-3-8B-SFT. For the balanced training set, we use 125K trajectories with incorrect first answers (𝒟1IFTsubscriptsuperscript𝒟IFT1\mathcal{D}^{\mathrm{IFT}}_{1}caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT) and 125K with correct first answers (𝒟3IFTsubscriptsuperscript𝒟IFT3\mathcal{D}^{\mathrm{IFT}}_{3}caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT). For sets with more incorrect trajectories, |𝒟1IFT|=125⁢Ksubscriptsuperscript𝒟IFT1125𝐾|\mathcal{D}^{\mathrm{IFT}}_{1}|=125K| caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT | = 125 italic_K and |𝒟3IFT|=60⁢Ksubscriptsuperscript𝒟IFT360𝐾|\mathcal{D}^{\mathrm{IFT}}_{3}|=60K| caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT | = 60 italic_K. Finally, for the training set with more correct trajectories, we have |𝒟1IFT|=125⁢Ksubscriptsuperscript𝒟IFT1125𝐾|\mathcal{D}^{\mathrm{IFT}}_{1}|=125K| caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT | = 125 italic_K and |𝒟3IFT|=180⁢Ksubscriptsuperscript𝒟IFT3180𝐾|\mathcal{D}^{\mathrm{IFT}}_{3}|=180K| caligraphic_D start_POSTSUPERSCRIPT roman_IFT end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT | = 180 italic_K. Models trained with more incorrect trajectories (marked by (⋆)⋆(\star)( ⋆ )) are used as final model and the dataset is also used to train the external ORM. “+ c2c 60K” indicates an additional 60K correct-to-correct trajectories and “+Gold RM” replaces self-rewarding signals with ground-truth labels during inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T9.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T9.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T9.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T9.4.4.5.1" style="font-size:70%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.4.4.6"><span class="ltx_text ltx_font_bold" id="S5.T9.4.4.6.1" style="font-size:70%;">Turn 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.4.4.7"><span class="ltx_text ltx_font_bold" id="S5.T9.4.4.7.1" style="font-size:70%;">Final Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.1.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T9.1.1.1.m1.2"><semantics id="S5.T9.1.1.1.m1.2a"><mrow id="S5.T9.1.1.1.m1.2.2" xref="S5.T9.1.1.1.m1.2.2.cmml"><mi id="S5.T9.1.1.1.m1.2.2.4" mathsize="70%" mathvariant="normal" xref="S5.T9.1.1.1.m1.2.2.4.cmml">Δ</mi><mo id="S5.T9.1.1.1.m1.2.2.3" xref="S5.T9.1.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T9.1.1.1.m1.2.2.2.2" xref="S5.T9.1.1.1.m1.2.2.2.3.cmml"><mo id="S5.T9.1.1.1.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T9.1.1.1.m1.2.2.2.3.cmml">(</mo><msub id="S5.T9.1.1.1.m1.1.1.1.1.1" xref="S5.T9.1.1.1.m1.1.1.1.1.1.cmml"><mi id="S5.T9.1.1.1.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T9.1.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T9.1.1.1.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T9.1.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T9.1.1.1.m1.2.2.2.2.4" mathsize="70%" xref="S5.T9.1.1.1.m1.2.2.2.3.cmml">,</mo><msub id="S5.T9.1.1.1.m1.2.2.2.2.2" xref="S5.T9.1.1.1.m1.2.2.2.2.2.cmml"><mi id="S5.T9.1.1.1.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T9.1.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T9.1.1.1.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T9.1.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T9.1.1.1.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T9.1.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T9.1.1.1.m1.2b"><apply id="S5.T9.1.1.1.m1.2.2.cmml" xref="S5.T9.1.1.1.m1.2.2"><times id="S5.T9.1.1.1.m1.2.2.3.cmml" xref="S5.T9.1.1.1.m1.2.2.3"></times><ci id="S5.T9.1.1.1.m1.2.2.4.cmml" xref="S5.T9.1.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="S5.T9.1.1.1.m1.2.2.2.3.cmml" xref="S5.T9.1.1.1.m1.2.2.2.2"><apply id="S5.T9.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T9.1.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T9.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T9.1.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T9.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T9.1.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T9.1.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T9.1.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T9.1.1.1.m1.2.2.2.2.2.cmml" xref="S5.T9.1.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T9.1.1.1.m1.2.2.2.2.2.1.cmml" xref="S5.T9.1.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T9.1.1.1.m1.2.2.2.2.2.2.cmml" xref="S5.T9.1.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T9.1.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T9.1.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.1.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T9.1.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.2.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T9.2.2.2.m1.2"><semantics id="S5.T9.2.2.2.m1.2a"><mrow id="S5.T9.2.2.2.m1.2.2" xref="S5.T9.2.2.2.m1.2.2.cmml"><msup id="S5.T9.2.2.2.m1.2.2.4" xref="S5.T9.2.2.2.m1.2.2.4.cmml"><mi id="S5.T9.2.2.2.m1.2.2.4.2" mathsize="70%" mathvariant="normal" xref="S5.T9.2.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T9.2.2.2.m1.2.2.4.3" xref="S5.T9.2.2.2.m1.2.2.4.3.cmml"><mi id="S5.T9.2.2.2.m1.2.2.4.3.2" mathsize="70%" xref="S5.T9.2.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="S5.T9.2.2.2.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T9.2.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T9.2.2.2.m1.2.2.4.3.3" mathsize="70%" xref="S5.T9.2.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="S5.T9.2.2.2.m1.2.2.3" xref="S5.T9.2.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T9.2.2.2.m1.2.2.2.2" xref="S5.T9.2.2.2.m1.2.2.2.3.cmml"><mo id="S5.T9.2.2.2.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T9.2.2.2.m1.2.2.2.3.cmml">(</mo><msub id="S5.T9.2.2.2.m1.1.1.1.1.1" xref="S5.T9.2.2.2.m1.1.1.1.1.1.cmml"><mi id="S5.T9.2.2.2.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T9.2.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T9.2.2.2.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T9.2.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T9.2.2.2.m1.2.2.2.2.4" mathsize="70%" xref="S5.T9.2.2.2.m1.2.2.2.3.cmml">,</mo><msub id="S5.T9.2.2.2.m1.2.2.2.2.2" xref="S5.T9.2.2.2.m1.2.2.2.2.2.cmml"><mi id="S5.T9.2.2.2.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T9.2.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T9.2.2.2.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T9.2.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T9.2.2.2.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T9.2.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T9.2.2.2.m1.2b"><apply id="S5.T9.2.2.2.m1.2.2.cmml" xref="S5.T9.2.2.2.m1.2.2"><times id="S5.T9.2.2.2.m1.2.2.3.cmml" xref="S5.T9.2.2.2.m1.2.2.3"></times><apply id="S5.T9.2.2.2.m1.2.2.4.cmml" xref="S5.T9.2.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T9.2.2.2.m1.2.2.4.1.cmml" xref="S5.T9.2.2.2.m1.2.2.4">superscript</csymbol><ci id="S5.T9.2.2.2.m1.2.2.4.2.cmml" xref="S5.T9.2.2.2.m1.2.2.4.2">Δ</ci><apply id="S5.T9.2.2.2.m1.2.2.4.3.cmml" xref="S5.T9.2.2.2.m1.2.2.4.3"><ci id="S5.T9.2.2.2.m1.2.2.4.3.1.cmml" xref="S5.T9.2.2.2.m1.2.2.4.3.1">→</ci><ci id="S5.T9.2.2.2.m1.2.2.4.3.2.cmml" xref="S5.T9.2.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="S5.T9.2.2.2.m1.2.2.4.3.3.cmml" xref="S5.T9.2.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="S5.T9.2.2.2.m1.2.2.2.3.cmml" xref="S5.T9.2.2.2.m1.2.2.2.2"><apply id="S5.T9.2.2.2.m1.1.1.1.1.1.cmml" xref="S5.T9.2.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T9.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S5.T9.2.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T9.2.2.2.m1.1.1.1.1.1.2.cmml" xref="S5.T9.2.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T9.2.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T9.2.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T9.2.2.2.m1.2.2.2.2.2.cmml" xref="S5.T9.2.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T9.2.2.2.m1.2.2.2.2.2.1.cmml" xref="S5.T9.2.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T9.2.2.2.m1.2.2.2.2.2.2.cmml" xref="S5.T9.2.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T9.2.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T9.2.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.2.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T9.2.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.3.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T9.3.3.3.m1.2"><semantics id="S5.T9.3.3.3.m1.2a"><mrow id="S5.T9.3.3.3.m1.2.2" xref="S5.T9.3.3.3.m1.2.2.cmml"><msup id="S5.T9.3.3.3.m1.2.2.4" xref="S5.T9.3.3.3.m1.2.2.4.cmml"><mi id="S5.T9.3.3.3.m1.2.2.4.2" mathsize="70%" mathvariant="normal" xref="S5.T9.3.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="S5.T9.3.3.3.m1.2.2.4.3" xref="S5.T9.3.3.3.m1.2.2.4.3.cmml"><mi id="S5.T9.3.3.3.m1.2.2.4.3.2" mathsize="70%" xref="S5.T9.3.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="S5.T9.3.3.3.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T9.3.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T9.3.3.3.m1.2.2.4.3.3" mathsize="70%" xref="S5.T9.3.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S5.T9.3.3.3.m1.2.2.3" xref="S5.T9.3.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T9.3.3.3.m1.2.2.2.2" xref="S5.T9.3.3.3.m1.2.2.2.3.cmml"><mo id="S5.T9.3.3.3.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T9.3.3.3.m1.2.2.2.3.cmml">(</mo><msub id="S5.T9.3.3.3.m1.1.1.1.1.1" xref="S5.T9.3.3.3.m1.1.1.1.1.1.cmml"><mi id="S5.T9.3.3.3.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T9.3.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T9.3.3.3.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T9.3.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T9.3.3.3.m1.2.2.2.2.4" mathsize="70%" xref="S5.T9.3.3.3.m1.2.2.2.3.cmml">,</mo><msub id="S5.T9.3.3.3.m1.2.2.2.2.2" xref="S5.T9.3.3.3.m1.2.2.2.2.2.cmml"><mi id="S5.T9.3.3.3.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T9.3.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T9.3.3.3.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T9.3.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T9.3.3.3.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T9.3.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T9.3.3.3.m1.2b"><apply id="S5.T9.3.3.3.m1.2.2.cmml" xref="S5.T9.3.3.3.m1.2.2"><times id="S5.T9.3.3.3.m1.2.2.3.cmml" xref="S5.T9.3.3.3.m1.2.2.3"></times><apply id="S5.T9.3.3.3.m1.2.2.4.cmml" xref="S5.T9.3.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T9.3.3.3.m1.2.2.4.1.cmml" xref="S5.T9.3.3.3.m1.2.2.4">superscript</csymbol><ci id="S5.T9.3.3.3.m1.2.2.4.2.cmml" xref="S5.T9.3.3.3.m1.2.2.4.2">Δ</ci><apply id="S5.T9.3.3.3.m1.2.2.4.3.cmml" xref="S5.T9.3.3.3.m1.2.2.4.3"><ci id="S5.T9.3.3.3.m1.2.2.4.3.1.cmml" xref="S5.T9.3.3.3.m1.2.2.4.3.1">→</ci><ci id="S5.T9.3.3.3.m1.2.2.4.3.2.cmml" xref="S5.T9.3.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="S5.T9.3.3.3.m1.2.2.4.3.3.cmml" xref="S5.T9.3.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S5.T9.3.3.3.m1.2.2.2.3.cmml" xref="S5.T9.3.3.3.m1.2.2.2.2"><apply id="S5.T9.3.3.3.m1.1.1.1.1.1.cmml" xref="S5.T9.3.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T9.3.3.3.m1.1.1.1.1.1.1.cmml" xref="S5.T9.3.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T9.3.3.3.m1.1.1.1.1.1.2.cmml" xref="S5.T9.3.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T9.3.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T9.3.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T9.3.3.3.m1.2.2.2.2.2.cmml" xref="S5.T9.3.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T9.3.3.3.m1.2.2.2.2.2.1.cmml" xref="S5.T9.3.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T9.3.3.3.m1.2.2.2.2.2.2.cmml" xref="S5.T9.3.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T9.3.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T9.3.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.3.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T9.3.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.4.4.4"><math alttext="p^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="S5.T9.4.4.4.m1.2"><semantics id="S5.T9.4.4.4.m1.2a"><mrow id="S5.T9.4.4.4.m1.2.2" xref="S5.T9.4.4.4.m1.2.2.cmml"><msup id="S5.T9.4.4.4.m1.2.2.4" xref="S5.T9.4.4.4.m1.2.2.4.cmml"><mi id="S5.T9.4.4.4.m1.2.2.4.2" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.4.2.cmml">p</mi><mrow id="S5.T9.4.4.4.m1.2.2.4.3" xref="S5.T9.4.4.4.m1.2.2.4.3.cmml"><mi id="S5.T9.4.4.4.m1.2.2.4.3.2" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.4.3.2.cmml">c</mi><mo id="S5.T9.4.4.4.m1.2.2.4.3.1" mathsize="70%" stretchy="false" xref="S5.T9.4.4.4.m1.2.2.4.3.1.cmml">→</mo><mi id="S5.T9.4.4.4.m1.2.2.4.3.3" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="S5.T9.4.4.4.m1.2.2.3" xref="S5.T9.4.4.4.m1.2.2.3.cmml">⁢</mo><mrow id="S5.T9.4.4.4.m1.2.2.2.2" xref="S5.T9.4.4.4.m1.2.2.2.3.cmml"><mo id="S5.T9.4.4.4.m1.2.2.2.2.3" maxsize="70%" minsize="70%" xref="S5.T9.4.4.4.m1.2.2.2.3.cmml">(</mo><msub id="S5.T9.4.4.4.m1.1.1.1.1.1" xref="S5.T9.4.4.4.m1.1.1.1.1.1.cmml"><mi id="S5.T9.4.4.4.m1.1.1.1.1.1.2" mathsize="70%" xref="S5.T9.4.4.4.m1.1.1.1.1.1.2.cmml">t</mi><mn id="S5.T9.4.4.4.m1.1.1.1.1.1.3" mathsize="70%" xref="S5.T9.4.4.4.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="S5.T9.4.4.4.m1.2.2.2.2.4" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.2.3.cmml">,</mo><msub id="S5.T9.4.4.4.m1.2.2.2.2.2" xref="S5.T9.4.4.4.m1.2.2.2.2.2.cmml"><mi id="S5.T9.4.4.4.m1.2.2.2.2.2.2" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.2.2.2.2.cmml">t</mi><mn id="S5.T9.4.4.4.m1.2.2.2.2.2.3" mathsize="70%" xref="S5.T9.4.4.4.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="S5.T9.4.4.4.m1.2.2.2.2.5" maxsize="70%" minsize="70%" xref="S5.T9.4.4.4.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T9.4.4.4.m1.2b"><apply id="S5.T9.4.4.4.m1.2.2.cmml" xref="S5.T9.4.4.4.m1.2.2"><times id="S5.T9.4.4.4.m1.2.2.3.cmml" xref="S5.T9.4.4.4.m1.2.2.3"></times><apply id="S5.T9.4.4.4.m1.2.2.4.cmml" xref="S5.T9.4.4.4.m1.2.2.4"><csymbol cd="ambiguous" id="S5.T9.4.4.4.m1.2.2.4.1.cmml" xref="S5.T9.4.4.4.m1.2.2.4">superscript</csymbol><ci id="S5.T9.4.4.4.m1.2.2.4.2.cmml" xref="S5.T9.4.4.4.m1.2.2.4.2">𝑝</ci><apply id="S5.T9.4.4.4.m1.2.2.4.3.cmml" xref="S5.T9.4.4.4.m1.2.2.4.3"><ci id="S5.T9.4.4.4.m1.2.2.4.3.1.cmml" xref="S5.T9.4.4.4.m1.2.2.4.3.1">→</ci><ci id="S5.T9.4.4.4.m1.2.2.4.3.2.cmml" xref="S5.T9.4.4.4.m1.2.2.4.3.2">𝑐</ci><ci id="S5.T9.4.4.4.m1.2.2.4.3.3.cmml" xref="S5.T9.4.4.4.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="S5.T9.4.4.4.m1.2.2.2.3.cmml" xref="S5.T9.4.4.4.m1.2.2.2.2"><apply id="S5.T9.4.4.4.m1.1.1.1.1.1.cmml" xref="S5.T9.4.4.4.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T9.4.4.4.m1.1.1.1.1.1.1.cmml" xref="S5.T9.4.4.4.m1.1.1.1.1.1">subscript</csymbol><ci id="S5.T9.4.4.4.m1.1.1.1.1.1.2.cmml" xref="S5.T9.4.4.4.m1.1.1.1.1.1.2">𝑡</ci><cn id="S5.T9.4.4.4.m1.1.1.1.1.1.3.cmml" type="integer" xref="S5.T9.4.4.4.m1.1.1.1.1.1.3">1</cn></apply><apply id="S5.T9.4.4.4.m1.2.2.2.2.2.cmml" xref="S5.T9.4.4.4.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="S5.T9.4.4.4.m1.2.2.2.2.2.1.cmml" xref="S5.T9.4.4.4.m1.2.2.2.2.2">subscript</csymbol><ci id="S5.T9.4.4.4.m1.2.2.2.2.2.2.cmml" xref="S5.T9.4.4.4.m1.2.2.2.2.2.2">𝑡</ci><cn id="S5.T9.4.4.4.m1.2.2.2.2.2.3.cmml" type="integer" xref="S5.T9.4.4.4.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.4.4.4.m1.2c">p^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="S5.T9.4.4.4.m1.2d">italic_p start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.4.4.8"><span class="ltx_text ltx_font_bold" id="S5.T9.4.4.8.1" style="font-size:70%;">Accuracy</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T9.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T9.12.13.1.1"><span class="ltx_text" id="S5.T9.12.13.1.1.1" style="font-size:70%;">Self-rewarding IFT (MATH)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.2"><span class="ltx_text" id="S5.T9.12.13.1.2.1" style="font-size:70%;">22.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.3"><span class="ltx_text" id="S5.T9.12.13.1.3.1" style="font-size:70%;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.4"><span class="ltx_text" id="S5.T9.12.13.1.4.1" style="font-size:70%;">5.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.5"><span class="ltx_text" id="S5.T9.12.13.1.5.1" style="font-size:70%;">8.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.6"><span class="ltx_text" id="S5.T9.12.13.1.6.1" style="font-size:70%;">3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.7"><span class="ltx_text" id="S5.T9.12.13.1.7.1" style="font-size:70%;">43.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.13.1.8"><span class="ltx_text" id="S5.T9.12.13.1.8.1" style="font-size:70%;">(63.6, 76.1)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.5.5.1">
<span class="ltx_text" id="S5.T9.5.5.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1}" class="ltx_Math" display="inline" id="S5.T9.5.5.1.m1.1"><semantics id="S5.T9.5.5.1.m1.1a"><msub id="S5.T9.5.5.1.m1.1.1" xref="S5.T9.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.5.5.1.m1.1.1.2" mathsize="70%" xref="S5.T9.5.5.1.m1.1.1.2.cmml">𝒟</mi><mn id="S5.T9.5.5.1.m1.1.1.3" mathsize="70%" xref="S5.T9.5.5.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T9.5.5.1.m1.1b"><apply id="S5.T9.5.5.1.m1.1.1.cmml" xref="S5.T9.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T9.5.5.1.m1.1.1.1.cmml" xref="S5.T9.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T9.5.5.1.m1.1.1.2.cmml" xref="S5.T9.5.5.1.m1.1.1.2">𝒟</ci><cn id="S5.T9.5.5.1.m1.1.1.3.cmml" type="integer" xref="S5.T9.5.5.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.5.5.1.m1.1c">\mathcal{D}_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.5.5.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.2"><span class="ltx_text" id="S5.T9.5.5.2.1" style="font-size:70%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.3"><span class="ltx_text" id="S5.T9.5.5.3.1" style="font-size:70%;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.4"><span class="ltx_text" id="S5.T9.5.5.4.1" style="font-size:70%;">4.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.5"><span class="ltx_text" id="S5.T9.5.5.5.1" style="font-size:70%;">9.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.6"><span class="ltx_text" id="S5.T9.5.5.6.1" style="font-size:70%;">5.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.7"><span class="ltx_text" id="S5.T9.5.5.7.1" style="font-size:70%;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.5.5.8"><span class="ltx_text" id="S5.T9.5.5.8.1" style="font-size:70%;">(59.2, 77.1)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.6.6.1">
<span class="ltx_text" id="S5.T9.6.6.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{2}" class="ltx_Math" display="inline" id="S5.T9.6.6.1.m1.1"><semantics id="S5.T9.6.6.1.m1.1a"><msub id="S5.T9.6.6.1.m1.1.1" xref="S5.T9.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.6.6.1.m1.1.1.2" mathsize="70%" xref="S5.T9.6.6.1.m1.1.1.2.cmml">𝒟</mi><mn id="S5.T9.6.6.1.m1.1.1.3" mathsize="70%" xref="S5.T9.6.6.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T9.6.6.1.m1.1b"><apply id="S5.T9.6.6.1.m1.1.1.cmml" xref="S5.T9.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T9.6.6.1.m1.1.1.1.cmml" xref="S5.T9.6.6.1.m1.1.1">subscript</csymbol><ci id="S5.T9.6.6.1.m1.1.1.2.cmml" xref="S5.T9.6.6.1.m1.1.1.2">𝒟</ci><cn id="S5.T9.6.6.1.m1.1.1.3.cmml" type="integer" xref="S5.T9.6.6.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.6.6.1.m1.1c">\mathcal{D}_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.6.6.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.2"><span class="ltx_text" id="S5.T9.6.6.2.1" style="font-size:70%;">24.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.3"><span class="ltx_text" id="S5.T9.6.6.3.1" style="font-size:70%;">27.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.4"><span class="ltx_text" id="S5.T9.6.6.4.1" style="font-size:70%;">3.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.5"><span class="ltx_text" id="S5.T9.6.6.5.1" style="font-size:70%;">5.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.6"><span class="ltx_text" id="S5.T9.6.6.6.1" style="font-size:70%;">1.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.7"><span class="ltx_text" id="S5.T9.6.6.7.1" style="font-size:70%;">31.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.6.6.8"><span class="ltx_text" id="S5.T9.6.6.8.1" style="font-size:70%;">(74.7, 65.8)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.7.7.1">
<span class="ltx_text" id="S5.T9.7.7.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1,2}" class="ltx_Math" display="inline" id="S5.T9.7.7.1.m1.2"><semantics id="S5.T9.7.7.1.m1.2a"><msub id="S5.T9.7.7.1.m1.2.3" xref="S5.T9.7.7.1.m1.2.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.7.7.1.m1.2.3.2" mathsize="70%" xref="S5.T9.7.7.1.m1.2.3.2.cmml">𝒟</mi><mrow id="S5.T9.7.7.1.m1.2.2.2.4" xref="S5.T9.7.7.1.m1.2.2.2.3.cmml"><mn id="S5.T9.7.7.1.m1.1.1.1.1" mathsize="70%" xref="S5.T9.7.7.1.m1.1.1.1.1.cmml">1</mn><mo id="S5.T9.7.7.1.m1.2.2.2.4.1" mathsize="70%" xref="S5.T9.7.7.1.m1.2.2.2.3.cmml">,</mo><mn id="S5.T9.7.7.1.m1.2.2.2.2" mathsize="70%" xref="S5.T9.7.7.1.m1.2.2.2.2.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T9.7.7.1.m1.2b"><apply id="S5.T9.7.7.1.m1.2.3.cmml" xref="S5.T9.7.7.1.m1.2.3"><csymbol cd="ambiguous" id="S5.T9.7.7.1.m1.2.3.1.cmml" xref="S5.T9.7.7.1.m1.2.3">subscript</csymbol><ci id="S5.T9.7.7.1.m1.2.3.2.cmml" xref="S5.T9.7.7.1.m1.2.3.2">𝒟</ci><list id="S5.T9.7.7.1.m1.2.2.2.3.cmml" xref="S5.T9.7.7.1.m1.2.2.2.4"><cn id="S5.T9.7.7.1.m1.1.1.1.1.cmml" type="integer" xref="S5.T9.7.7.1.m1.1.1.1.1">1</cn><cn id="S5.T9.7.7.1.m1.2.2.2.2.cmml" type="integer" xref="S5.T9.7.7.1.m1.2.2.2.2">2</cn></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.7.7.1.m1.2c">\mathcal{D}_{1,2}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.7.7.1.m1.2d">caligraphic_D start_POSTSUBSCRIPT 1 , 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.2"><span class="ltx_text" id="S5.T9.7.7.2.1" style="font-size:70%;">23.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.3"><span class="ltx_text" id="S5.T9.7.7.3.1" style="font-size:70%;">28.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.4"><span class="ltx_text" id="S5.T9.7.7.4.1" style="font-size:70%;">4.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.5"><span class="ltx_text" id="S5.T9.7.7.5.1" style="font-size:70%;">6.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.6"><span class="ltx_text" id="S5.T9.7.7.6.1" style="font-size:70%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.7"><span class="ltx_text" id="S5.T9.7.7.7.1" style="font-size:70%;">27.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.7.7.8"><span class="ltx_text" id="S5.T9.7.7.8.1" style="font-size:70%;">(73.4, 68.6)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.8.8.1">
<span class="ltx_text" id="S5.T9.8.8.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1,2,3}" class="ltx_Math" display="inline" id="S5.T9.8.8.1.m1.3"><semantics id="S5.T9.8.8.1.m1.3a"><msub id="S5.T9.8.8.1.m1.3.4" xref="S5.T9.8.8.1.m1.3.4.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.8.8.1.m1.3.4.2" mathsize="70%" xref="S5.T9.8.8.1.m1.3.4.2.cmml">𝒟</mi><mrow id="S5.T9.8.8.1.m1.3.3.3.5" xref="S5.T9.8.8.1.m1.3.3.3.4.cmml"><mn id="S5.T9.8.8.1.m1.1.1.1.1" mathsize="70%" xref="S5.T9.8.8.1.m1.1.1.1.1.cmml">1</mn><mo id="S5.T9.8.8.1.m1.3.3.3.5.1" mathsize="70%" xref="S5.T9.8.8.1.m1.3.3.3.4.cmml">,</mo><mn id="S5.T9.8.8.1.m1.2.2.2.2" mathsize="70%" xref="S5.T9.8.8.1.m1.2.2.2.2.cmml">2</mn><mo id="S5.T9.8.8.1.m1.3.3.3.5.2" mathsize="70%" xref="S5.T9.8.8.1.m1.3.3.3.4.cmml">,</mo><mn id="S5.T9.8.8.1.m1.3.3.3.3" mathsize="70%" xref="S5.T9.8.8.1.m1.3.3.3.3.cmml">3</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T9.8.8.1.m1.3b"><apply id="S5.T9.8.8.1.m1.3.4.cmml" xref="S5.T9.8.8.1.m1.3.4"><csymbol cd="ambiguous" id="S5.T9.8.8.1.m1.3.4.1.cmml" xref="S5.T9.8.8.1.m1.3.4">subscript</csymbol><ci id="S5.T9.8.8.1.m1.3.4.2.cmml" xref="S5.T9.8.8.1.m1.3.4.2">𝒟</ci><list id="S5.T9.8.8.1.m1.3.3.3.4.cmml" xref="S5.T9.8.8.1.m1.3.3.3.5"><cn id="S5.T9.8.8.1.m1.1.1.1.1.cmml" type="integer" xref="S5.T9.8.8.1.m1.1.1.1.1">1</cn><cn id="S5.T9.8.8.1.m1.2.2.2.2.cmml" type="integer" xref="S5.T9.8.8.1.m1.2.2.2.2">2</cn><cn id="S5.T9.8.8.1.m1.3.3.3.3.cmml" type="integer" xref="S5.T9.8.8.1.m1.3.3.3.3">3</cn></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.8.8.1.m1.3c">\mathcal{D}_{1,2,3}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.8.8.1.m1.3d">caligraphic_D start_POSTSUBSCRIPT 1 , 2 , 3 end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T9.8.8.1.2" style="font-size:70%;"> (well-tuned)</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.2"><span class="ltx_text" id="S5.T9.8.8.2.1" style="font-size:70%;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.3"><span class="ltx_text" id="S5.T9.8.8.3.1" style="font-size:70%;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.4"><span class="ltx_text" id="S5.T9.8.8.4.1" style="font-size:70%;">6.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.5"><span class="ltx_text" id="S5.T9.8.8.5.1" style="font-size:70%;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.6"><span class="ltx_text" id="S5.T9.8.8.6.1" style="font-size:70%;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.7"><span class="ltx_text" id="S5.T9.8.8.7.1" style="font-size:70%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.8.8.8"><span class="ltx_text" id="S5.T9.8.8.8.1" style="font-size:70%;">(61.6, 81.4)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.12.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.12.14.2.1"><span class="ltx_text" id="S5.T9.12.14.2.1.1" style="font-size:70%;">Self-rewarding IFT + Distillation (MATH)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.2"><span class="ltx_text" id="S5.T9.12.14.2.2.1" style="font-size:70%;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.3"><span class="ltx_text" id="S5.T9.12.14.2.3.1" style="font-size:70%;">30.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.4"><span class="ltx_text" id="S5.T9.12.14.2.4.1" style="font-size:70%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.5"><span class="ltx_text" id="S5.T9.12.14.2.5.1" style="font-size:70%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.6"><span class="ltx_text" id="S5.T9.12.14.2.6.1" style="font-size:70%;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.7"><span class="ltx_text" id="S5.T9.12.14.2.7.1" style="font-size:70%;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.12.14.2.8"><span class="ltx_text" id="S5.T9.12.14.2.8.1" style="font-size:70%;">(36.7, 76.7)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.12.15.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T9.12.15.3.1"><span class="ltx_text" id="S5.T9.12.15.3.1.1" style="font-size:70%;">Self-rewarding IFT (GSM8K)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.2"><span class="ltx_text" id="S5.T9.12.15.3.2.1" style="font-size:70%;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.3"><span class="ltx_text" id="S5.T9.12.15.3.3.1" style="font-size:70%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.4"><span class="ltx_text" id="S5.T9.12.15.3.4.1" style="font-size:70%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.5"><span class="ltx_text" id="S5.T9.12.15.3.5.1" style="font-size:70%;">9.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.6"><span class="ltx_text" id="S5.T9.12.15.3.6.1" style="font-size:70%;">4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.7"><span class="ltx_text" id="S5.T9.12.15.3.7.1" style="font-size:70%;">26.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.12.15.3.8"><span class="ltx_text" id="S5.T9.12.15.3.8.1" style="font-size:70%;">(79.3, 74.0)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.9.9.1">
<span class="ltx_text" id="S5.T9.9.9.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1}" class="ltx_Math" display="inline" id="S5.T9.9.9.1.m1.1"><semantics id="S5.T9.9.9.1.m1.1a"><msub id="S5.T9.9.9.1.m1.1.1" xref="S5.T9.9.9.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.9.9.1.m1.1.1.2" mathsize="70%" xref="S5.T9.9.9.1.m1.1.1.2.cmml">𝒟</mi><mn id="S5.T9.9.9.1.m1.1.1.3" mathsize="70%" xref="S5.T9.9.9.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T9.9.9.1.m1.1b"><apply id="S5.T9.9.9.1.m1.1.1.cmml" xref="S5.T9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T9.9.9.1.m1.1.1.1.cmml" xref="S5.T9.9.9.1.m1.1.1">subscript</csymbol><ci id="S5.T9.9.9.1.m1.1.1.2.cmml" xref="S5.T9.9.9.1.m1.1.1.2">𝒟</ci><cn id="S5.T9.9.9.1.m1.1.1.3.cmml" type="integer" xref="S5.T9.9.9.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.9.9.1.m1.1c">\mathcal{D}_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.9.9.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.2"><span class="ltx_text" id="S5.T9.9.9.2.1" style="font-size:70%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.3"><span class="ltx_text" id="S5.T9.9.9.3.1" style="font-size:70%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.4"><span class="ltx_text" id="S5.T9.9.9.4.1" style="font-size:70%;">3.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.5"><span class="ltx_text" id="S5.T9.9.9.5.1" style="font-size:70%;">8.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.6"><span class="ltx_text" id="S5.T9.9.9.6.1" style="font-size:70%;">4.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.7"><span class="ltx_text" id="S5.T9.9.9.7.1" style="font-size:70%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.9.9.8"><span class="ltx_text" id="S5.T9.9.9.8.1" style="font-size:70%;">(82.1, 70.1)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.10.10.1">
<span class="ltx_text" id="S5.T9.10.10.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{2}" class="ltx_Math" display="inline" id="S5.T9.10.10.1.m1.1"><semantics id="S5.T9.10.10.1.m1.1a"><msub id="S5.T9.10.10.1.m1.1.1" xref="S5.T9.10.10.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.10.10.1.m1.1.1.2" mathsize="70%" xref="S5.T9.10.10.1.m1.1.1.2.cmml">𝒟</mi><mn id="S5.T9.10.10.1.m1.1.1.3" mathsize="70%" xref="S5.T9.10.10.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T9.10.10.1.m1.1b"><apply id="S5.T9.10.10.1.m1.1.1.cmml" xref="S5.T9.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T9.10.10.1.m1.1.1.1.cmml" xref="S5.T9.10.10.1.m1.1.1">subscript</csymbol><ci id="S5.T9.10.10.1.m1.1.1.2.cmml" xref="S5.T9.10.10.1.m1.1.1.2">𝒟</ci><cn id="S5.T9.10.10.1.m1.1.1.3.cmml" type="integer" xref="S5.T9.10.10.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.10.10.1.m1.1c">\mathcal{D}_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.10.10.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.2"><span class="ltx_text" id="S5.T9.10.10.2.1" style="font-size:70%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.3"><span class="ltx_text" id="S5.T9.10.10.3.1" style="font-size:70%;">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.4"><span class="ltx_text" id="S5.T9.10.10.4.1" style="font-size:70%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.5"><span class="ltx_text" id="S5.T9.10.10.5.1" style="font-size:70%;">7.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.6"><span class="ltx_text" id="S5.T9.10.10.6.1" style="font-size:70%;">1.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.7"><span class="ltx_text" id="S5.T9.10.10.7.1" style="font-size:70%;">12.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.10.10.8"><span class="ltx_text" id="S5.T9.10.10.8.1" style="font-size:70%;">(80.3, 70.4)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T9.11.11.1">
<span class="ltx_text" id="S5.T9.11.11.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1,2}" class="ltx_Math" display="inline" id="S5.T9.11.11.1.m1.2"><semantics id="S5.T9.11.11.1.m1.2a"><msub id="S5.T9.11.11.1.m1.2.3" xref="S5.T9.11.11.1.m1.2.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.11.11.1.m1.2.3.2" mathsize="70%" xref="S5.T9.11.11.1.m1.2.3.2.cmml">𝒟</mi><mrow id="S5.T9.11.11.1.m1.2.2.2.4" xref="S5.T9.11.11.1.m1.2.2.2.3.cmml"><mn id="S5.T9.11.11.1.m1.1.1.1.1" mathsize="70%" xref="S5.T9.11.11.1.m1.1.1.1.1.cmml">1</mn><mo id="S5.T9.11.11.1.m1.2.2.2.4.1" mathsize="70%" xref="S5.T9.11.11.1.m1.2.2.2.3.cmml">,</mo><mn id="S5.T9.11.11.1.m1.2.2.2.2" mathsize="70%" xref="S5.T9.11.11.1.m1.2.2.2.2.cmml">2</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T9.11.11.1.m1.2b"><apply id="S5.T9.11.11.1.m1.2.3.cmml" xref="S5.T9.11.11.1.m1.2.3"><csymbol cd="ambiguous" id="S5.T9.11.11.1.m1.2.3.1.cmml" xref="S5.T9.11.11.1.m1.2.3">subscript</csymbol><ci id="S5.T9.11.11.1.m1.2.3.2.cmml" xref="S5.T9.11.11.1.m1.2.3.2">𝒟</ci><list id="S5.T9.11.11.1.m1.2.2.2.3.cmml" xref="S5.T9.11.11.1.m1.2.2.2.4"><cn id="S5.T9.11.11.1.m1.1.1.1.1.cmml" type="integer" xref="S5.T9.11.11.1.m1.1.1.1.1">1</cn><cn id="S5.T9.11.11.1.m1.2.2.2.2.cmml" type="integer" xref="S5.T9.11.11.1.m1.2.2.2.2">2</cn></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.11.11.1.m1.2c">\mathcal{D}_{1,2}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.11.11.1.m1.2d">caligraphic_D start_POSTSUBSCRIPT 1 , 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.2"><span class="ltx_text" id="S5.T9.11.11.2.1" style="font-size:70%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.3"><span class="ltx_text" id="S5.T9.11.11.3.1" style="font-size:70%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.4"><span class="ltx_text" id="S5.T9.11.11.4.1" style="font-size:70%;">6.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.5"><span class="ltx_text" id="S5.T9.11.11.5.1" style="font-size:70%;">8.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.6"><span class="ltx_text" id="S5.T9.11.11.6.1" style="font-size:70%;">2.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.7"><span class="ltx_text" id="S5.T9.11.11.7.1" style="font-size:70%;">18.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T9.11.11.8"><span class="ltx_text" id="S5.T9.11.11.8.1" style="font-size:70%;">(82.3, 69.6)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T9.12.12.1">
<span class="ltx_text" id="S5.T9.12.12.1.1" style="font-size:70%;">    + M-DPO with </span><math alttext="\mathcal{D}_{1,2,3}" class="ltx_Math" display="inline" id="S5.T9.12.12.1.m1.3"><semantics id="S5.T9.12.12.1.m1.3a"><msub id="S5.T9.12.12.1.m1.3.4" xref="S5.T9.12.12.1.m1.3.4.cmml"><mi class="ltx_font_mathcaligraphic" id="S5.T9.12.12.1.m1.3.4.2" mathsize="70%" xref="S5.T9.12.12.1.m1.3.4.2.cmml">𝒟</mi><mrow id="S5.T9.12.12.1.m1.3.3.3.5" xref="S5.T9.12.12.1.m1.3.3.3.4.cmml"><mn id="S5.T9.12.12.1.m1.1.1.1.1" mathsize="70%" xref="S5.T9.12.12.1.m1.1.1.1.1.cmml">1</mn><mo id="S5.T9.12.12.1.m1.3.3.3.5.1" mathsize="70%" xref="S5.T9.12.12.1.m1.3.3.3.4.cmml">,</mo><mn id="S5.T9.12.12.1.m1.2.2.2.2" mathsize="70%" xref="S5.T9.12.12.1.m1.2.2.2.2.cmml">2</mn><mo id="S5.T9.12.12.1.m1.3.3.3.5.2" mathsize="70%" xref="S5.T9.12.12.1.m1.3.3.3.4.cmml">,</mo><mn id="S5.T9.12.12.1.m1.3.3.3.3" mathsize="70%" xref="S5.T9.12.12.1.m1.3.3.3.3.cmml">3</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T9.12.12.1.m1.3b"><apply id="S5.T9.12.12.1.m1.3.4.cmml" xref="S5.T9.12.12.1.m1.3.4"><csymbol cd="ambiguous" id="S5.T9.12.12.1.m1.3.4.1.cmml" xref="S5.T9.12.12.1.m1.3.4">subscript</csymbol><ci id="S5.T9.12.12.1.m1.3.4.2.cmml" xref="S5.T9.12.12.1.m1.3.4.2">𝒟</ci><list id="S5.T9.12.12.1.m1.3.3.3.4.cmml" xref="S5.T9.12.12.1.m1.3.3.3.5"><cn id="S5.T9.12.12.1.m1.1.1.1.1.cmml" type="integer" xref="S5.T9.12.12.1.m1.1.1.1.1">1</cn><cn id="S5.T9.12.12.1.m1.2.2.2.2.cmml" type="integer" xref="S5.T9.12.12.1.m1.2.2.2.2">2</cn><cn id="S5.T9.12.12.1.m1.3.3.3.3.cmml" type="integer" xref="S5.T9.12.12.1.m1.3.3.3.3">3</cn></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.12.12.1.m1.3c">\mathcal{D}_{1,2,3}</annotation><annotation encoding="application/x-llamapun" id="S5.T9.12.12.1.m1.3d">caligraphic_D start_POSTSUBSCRIPT 1 , 2 , 3 end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.2"><span class="ltx_text" id="S5.T9.12.12.2.1" style="font-size:70%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.3"><span class="ltx_text" id="S5.T9.12.12.3.1" style="font-size:70%;">80.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.4"><span class="ltx_text" id="S5.T9.12.12.4.1" style="font-size:70%;">5.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.5"><span class="ltx_text" id="S5.T9.12.12.5.1" style="font-size:70%;">8.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.6"><span class="ltx_text" id="S5.T9.12.12.6.1" style="font-size:70%;">2.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.7"><span class="ltx_text" id="S5.T9.12.12.7.1" style="font-size:70%;">15.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.12.12.8"><span class="ltx_text" id="S5.T9.12.12.8.1" style="font-size:70%;">(76.7, 67.1)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the impact of training data and distillation techniques on the performance of a mathematical reasoning model.  It uses Llama-3-8B-it as the base model and explores different configurations:  standard self-rewarding IFT, M-DPO with various data distributions (D1, D2, D1&2, D1&2&3), and the inclusion of distillation.  For each configuration, the table shows turn 1 accuracy, final accuracy, the improvement in accuracy between turn 1 and the final answer, the percentage of problems correctly solved after correction, the percentage of problems incorrectly solved after correction, and reward model accuracy for both correct and incorrect trajectories. This comprehensive analysis allows for a detailed assessment of the effect of data composition and distillation on both the overall accuracy and the model's ability to self-correct.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study on the impart of training sets of M-DPO and distillation, with Llama-3-8B-it as the base model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T10.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T10.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.3.3.4"><span class="ltx_text ltx_font_bold" id="A3.T10.3.3.4.1" style="font-size:80%;">Base Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A3.T10.3.3.5"><span class="ltx_text ltx_font_bold" id="A3.T10.3.3.5.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.3.3.6"><span class="ltx_text ltx_font_bold" id="A3.T10.3.3.6.1" style="font-size:80%;">Turn 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.3.3.7"><span class="ltx_text ltx_font_bold" id="A3.T10.3.3.7.1" style="font-size:80%;">Final Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.1.1.1"><math alttext="\Delta(t_{1},t_{2})" class="ltx_Math" display="inline" id="A3.T10.1.1.1.m1.2"><semantics id="A3.T10.1.1.1.m1.2a"><mrow id="A3.T10.1.1.1.m1.2.2" xref="A3.T10.1.1.1.m1.2.2.cmml"><mi id="A3.T10.1.1.1.m1.2.2.4" mathsize="80%" mathvariant="normal" xref="A3.T10.1.1.1.m1.2.2.4.cmml">Δ</mi><mo id="A3.T10.1.1.1.m1.2.2.3" xref="A3.T10.1.1.1.m1.2.2.3.cmml">⁢</mo><mrow id="A3.T10.1.1.1.m1.2.2.2.2" xref="A3.T10.1.1.1.m1.2.2.2.3.cmml"><mo id="A3.T10.1.1.1.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="A3.T10.1.1.1.m1.2.2.2.3.cmml">(</mo><msub id="A3.T10.1.1.1.m1.1.1.1.1.1" xref="A3.T10.1.1.1.m1.1.1.1.1.1.cmml"><mi id="A3.T10.1.1.1.m1.1.1.1.1.1.2" mathsize="80%" xref="A3.T10.1.1.1.m1.1.1.1.1.1.2.cmml">t</mi><mn id="A3.T10.1.1.1.m1.1.1.1.1.1.3" mathsize="80%" xref="A3.T10.1.1.1.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A3.T10.1.1.1.m1.2.2.2.2.4" mathsize="80%" xref="A3.T10.1.1.1.m1.2.2.2.3.cmml">,</mo><msub id="A3.T10.1.1.1.m1.2.2.2.2.2" xref="A3.T10.1.1.1.m1.2.2.2.2.2.cmml"><mi id="A3.T10.1.1.1.m1.2.2.2.2.2.2" mathsize="80%" xref="A3.T10.1.1.1.m1.2.2.2.2.2.2.cmml">t</mi><mn id="A3.T10.1.1.1.m1.2.2.2.2.2.3" mathsize="80%" xref="A3.T10.1.1.1.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="A3.T10.1.1.1.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="A3.T10.1.1.1.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T10.1.1.1.m1.2b"><apply id="A3.T10.1.1.1.m1.2.2.cmml" xref="A3.T10.1.1.1.m1.2.2"><times id="A3.T10.1.1.1.m1.2.2.3.cmml" xref="A3.T10.1.1.1.m1.2.2.3"></times><ci id="A3.T10.1.1.1.m1.2.2.4.cmml" xref="A3.T10.1.1.1.m1.2.2.4">Δ</ci><interval closure="open" id="A3.T10.1.1.1.m1.2.2.2.3.cmml" xref="A3.T10.1.1.1.m1.2.2.2.2"><apply id="A3.T10.1.1.1.m1.1.1.1.1.1.cmml" xref="A3.T10.1.1.1.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="A3.T10.1.1.1.m1.1.1.1.1.1.1.cmml" xref="A3.T10.1.1.1.m1.1.1.1.1.1">subscript</csymbol><ci id="A3.T10.1.1.1.m1.1.1.1.1.1.2.cmml" xref="A3.T10.1.1.1.m1.1.1.1.1.1.2">𝑡</ci><cn id="A3.T10.1.1.1.m1.1.1.1.1.1.3.cmml" type="integer" xref="A3.T10.1.1.1.m1.1.1.1.1.1.3">1</cn></apply><apply id="A3.T10.1.1.1.m1.2.2.2.2.2.cmml" xref="A3.T10.1.1.1.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="A3.T10.1.1.1.m1.2.2.2.2.2.1.cmml" xref="A3.T10.1.1.1.m1.2.2.2.2.2">subscript</csymbol><ci id="A3.T10.1.1.1.m1.2.2.2.2.2.2.cmml" xref="A3.T10.1.1.1.m1.2.2.2.2.2.2">𝑡</ci><cn id="A3.T10.1.1.1.m1.2.2.2.2.2.3.cmml" type="integer" xref="A3.T10.1.1.1.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.1.1.1.m1.2c">\Delta(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T10.1.1.1.m1.2d">roman_Δ ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.2.2.2"><math alttext="\Delta^{i\to c}(t_{1},t_{2})" class="ltx_Math" display="inline" id="A3.T10.2.2.2.m1.2"><semantics id="A3.T10.2.2.2.m1.2a"><mrow id="A3.T10.2.2.2.m1.2.2" xref="A3.T10.2.2.2.m1.2.2.cmml"><msup id="A3.T10.2.2.2.m1.2.2.4" xref="A3.T10.2.2.2.m1.2.2.4.cmml"><mi id="A3.T10.2.2.2.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="A3.T10.2.2.2.m1.2.2.4.2.cmml">Δ</mi><mrow id="A3.T10.2.2.2.m1.2.2.4.3" xref="A3.T10.2.2.2.m1.2.2.4.3.cmml"><mi id="A3.T10.2.2.2.m1.2.2.4.3.2" mathsize="80%" xref="A3.T10.2.2.2.m1.2.2.4.3.2.cmml">i</mi><mo id="A3.T10.2.2.2.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="A3.T10.2.2.2.m1.2.2.4.3.1.cmml">→</mo><mi id="A3.T10.2.2.2.m1.2.2.4.3.3" mathsize="80%" xref="A3.T10.2.2.2.m1.2.2.4.3.3.cmml">c</mi></mrow></msup><mo id="A3.T10.2.2.2.m1.2.2.3" xref="A3.T10.2.2.2.m1.2.2.3.cmml">⁢</mo><mrow id="A3.T10.2.2.2.m1.2.2.2.2" xref="A3.T10.2.2.2.m1.2.2.2.3.cmml"><mo id="A3.T10.2.2.2.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="A3.T10.2.2.2.m1.2.2.2.3.cmml">(</mo><msub id="A3.T10.2.2.2.m1.1.1.1.1.1" xref="A3.T10.2.2.2.m1.1.1.1.1.1.cmml"><mi id="A3.T10.2.2.2.m1.1.1.1.1.1.2" mathsize="80%" xref="A3.T10.2.2.2.m1.1.1.1.1.1.2.cmml">t</mi><mn id="A3.T10.2.2.2.m1.1.1.1.1.1.3" mathsize="80%" xref="A3.T10.2.2.2.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A3.T10.2.2.2.m1.2.2.2.2.4" mathsize="80%" xref="A3.T10.2.2.2.m1.2.2.2.3.cmml">,</mo><msub id="A3.T10.2.2.2.m1.2.2.2.2.2" xref="A3.T10.2.2.2.m1.2.2.2.2.2.cmml"><mi id="A3.T10.2.2.2.m1.2.2.2.2.2.2" mathsize="80%" xref="A3.T10.2.2.2.m1.2.2.2.2.2.2.cmml">t</mi><mn id="A3.T10.2.2.2.m1.2.2.2.2.2.3" mathsize="80%" xref="A3.T10.2.2.2.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="A3.T10.2.2.2.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="A3.T10.2.2.2.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T10.2.2.2.m1.2b"><apply id="A3.T10.2.2.2.m1.2.2.cmml" xref="A3.T10.2.2.2.m1.2.2"><times id="A3.T10.2.2.2.m1.2.2.3.cmml" xref="A3.T10.2.2.2.m1.2.2.3"></times><apply id="A3.T10.2.2.2.m1.2.2.4.cmml" xref="A3.T10.2.2.2.m1.2.2.4"><csymbol cd="ambiguous" id="A3.T10.2.2.2.m1.2.2.4.1.cmml" xref="A3.T10.2.2.2.m1.2.2.4">superscript</csymbol><ci id="A3.T10.2.2.2.m1.2.2.4.2.cmml" xref="A3.T10.2.2.2.m1.2.2.4.2">Δ</ci><apply id="A3.T10.2.2.2.m1.2.2.4.3.cmml" xref="A3.T10.2.2.2.m1.2.2.4.3"><ci id="A3.T10.2.2.2.m1.2.2.4.3.1.cmml" xref="A3.T10.2.2.2.m1.2.2.4.3.1">→</ci><ci id="A3.T10.2.2.2.m1.2.2.4.3.2.cmml" xref="A3.T10.2.2.2.m1.2.2.4.3.2">𝑖</ci><ci id="A3.T10.2.2.2.m1.2.2.4.3.3.cmml" xref="A3.T10.2.2.2.m1.2.2.4.3.3">𝑐</ci></apply></apply><interval closure="open" id="A3.T10.2.2.2.m1.2.2.2.3.cmml" xref="A3.T10.2.2.2.m1.2.2.2.2"><apply id="A3.T10.2.2.2.m1.1.1.1.1.1.cmml" xref="A3.T10.2.2.2.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="A3.T10.2.2.2.m1.1.1.1.1.1.1.cmml" xref="A3.T10.2.2.2.m1.1.1.1.1.1">subscript</csymbol><ci id="A3.T10.2.2.2.m1.1.1.1.1.1.2.cmml" xref="A3.T10.2.2.2.m1.1.1.1.1.1.2">𝑡</ci><cn id="A3.T10.2.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="A3.T10.2.2.2.m1.1.1.1.1.1.3">1</cn></apply><apply id="A3.T10.2.2.2.m1.2.2.2.2.2.cmml" xref="A3.T10.2.2.2.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="A3.T10.2.2.2.m1.2.2.2.2.2.1.cmml" xref="A3.T10.2.2.2.m1.2.2.2.2.2">subscript</csymbol><ci id="A3.T10.2.2.2.m1.2.2.2.2.2.2.cmml" xref="A3.T10.2.2.2.m1.2.2.2.2.2.2">𝑡</ci><cn id="A3.T10.2.2.2.m1.2.2.2.2.2.3.cmml" type="integer" xref="A3.T10.2.2.2.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.2.2.2.m1.2c">\Delta^{i\to c}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T10.2.2.2.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_i → italic_c end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.3.3.3"><math alttext="\Delta^{c\to i}(t_{1},t_{2})" class="ltx_Math" display="inline" id="A3.T10.3.3.3.m1.2"><semantics id="A3.T10.3.3.3.m1.2a"><mrow id="A3.T10.3.3.3.m1.2.2" xref="A3.T10.3.3.3.m1.2.2.cmml"><msup id="A3.T10.3.3.3.m1.2.2.4" xref="A3.T10.3.3.3.m1.2.2.4.cmml"><mi id="A3.T10.3.3.3.m1.2.2.4.2" mathsize="80%" mathvariant="normal" xref="A3.T10.3.3.3.m1.2.2.4.2.cmml">Δ</mi><mrow id="A3.T10.3.3.3.m1.2.2.4.3" xref="A3.T10.3.3.3.m1.2.2.4.3.cmml"><mi id="A3.T10.3.3.3.m1.2.2.4.3.2" mathsize="80%" xref="A3.T10.3.3.3.m1.2.2.4.3.2.cmml">c</mi><mo id="A3.T10.3.3.3.m1.2.2.4.3.1" mathsize="80%" stretchy="false" xref="A3.T10.3.3.3.m1.2.2.4.3.1.cmml">→</mo><mi id="A3.T10.3.3.3.m1.2.2.4.3.3" mathsize="80%" xref="A3.T10.3.3.3.m1.2.2.4.3.3.cmml">i</mi></mrow></msup><mo id="A3.T10.3.3.3.m1.2.2.3" xref="A3.T10.3.3.3.m1.2.2.3.cmml">⁢</mo><mrow id="A3.T10.3.3.3.m1.2.2.2.2" xref="A3.T10.3.3.3.m1.2.2.2.3.cmml"><mo id="A3.T10.3.3.3.m1.2.2.2.2.3" maxsize="80%" minsize="80%" xref="A3.T10.3.3.3.m1.2.2.2.3.cmml">(</mo><msub id="A3.T10.3.3.3.m1.1.1.1.1.1" xref="A3.T10.3.3.3.m1.1.1.1.1.1.cmml"><mi id="A3.T10.3.3.3.m1.1.1.1.1.1.2" mathsize="80%" xref="A3.T10.3.3.3.m1.1.1.1.1.1.2.cmml">t</mi><mn id="A3.T10.3.3.3.m1.1.1.1.1.1.3" mathsize="80%" xref="A3.T10.3.3.3.m1.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A3.T10.3.3.3.m1.2.2.2.2.4" mathsize="80%" xref="A3.T10.3.3.3.m1.2.2.2.3.cmml">,</mo><msub id="A3.T10.3.3.3.m1.2.2.2.2.2" xref="A3.T10.3.3.3.m1.2.2.2.2.2.cmml"><mi id="A3.T10.3.3.3.m1.2.2.2.2.2.2" mathsize="80%" xref="A3.T10.3.3.3.m1.2.2.2.2.2.2.cmml">t</mi><mn id="A3.T10.3.3.3.m1.2.2.2.2.2.3" mathsize="80%" xref="A3.T10.3.3.3.m1.2.2.2.2.2.3.cmml">2</mn></msub><mo id="A3.T10.3.3.3.m1.2.2.2.2.5" maxsize="80%" minsize="80%" xref="A3.T10.3.3.3.m1.2.2.2.3.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T10.3.3.3.m1.2b"><apply id="A3.T10.3.3.3.m1.2.2.cmml" xref="A3.T10.3.3.3.m1.2.2"><times id="A3.T10.3.3.3.m1.2.2.3.cmml" xref="A3.T10.3.3.3.m1.2.2.3"></times><apply id="A3.T10.3.3.3.m1.2.2.4.cmml" xref="A3.T10.3.3.3.m1.2.2.4"><csymbol cd="ambiguous" id="A3.T10.3.3.3.m1.2.2.4.1.cmml" xref="A3.T10.3.3.3.m1.2.2.4">superscript</csymbol><ci id="A3.T10.3.3.3.m1.2.2.4.2.cmml" xref="A3.T10.3.3.3.m1.2.2.4.2">Δ</ci><apply id="A3.T10.3.3.3.m1.2.2.4.3.cmml" xref="A3.T10.3.3.3.m1.2.2.4.3"><ci id="A3.T10.3.3.3.m1.2.2.4.3.1.cmml" xref="A3.T10.3.3.3.m1.2.2.4.3.1">→</ci><ci id="A3.T10.3.3.3.m1.2.2.4.3.2.cmml" xref="A3.T10.3.3.3.m1.2.2.4.3.2">𝑐</ci><ci id="A3.T10.3.3.3.m1.2.2.4.3.3.cmml" xref="A3.T10.3.3.3.m1.2.2.4.3.3">𝑖</ci></apply></apply><interval closure="open" id="A3.T10.3.3.3.m1.2.2.2.3.cmml" xref="A3.T10.3.3.3.m1.2.2.2.2"><apply id="A3.T10.3.3.3.m1.1.1.1.1.1.cmml" xref="A3.T10.3.3.3.m1.1.1.1.1.1"><csymbol cd="ambiguous" id="A3.T10.3.3.3.m1.1.1.1.1.1.1.cmml" xref="A3.T10.3.3.3.m1.1.1.1.1.1">subscript</csymbol><ci id="A3.T10.3.3.3.m1.1.1.1.1.1.2.cmml" xref="A3.T10.3.3.3.m1.1.1.1.1.1.2">𝑡</ci><cn id="A3.T10.3.3.3.m1.1.1.1.1.1.3.cmml" type="integer" xref="A3.T10.3.3.3.m1.1.1.1.1.1.3">1</cn></apply><apply id="A3.T10.3.3.3.m1.2.2.2.2.2.cmml" xref="A3.T10.3.3.3.m1.2.2.2.2.2"><csymbol cd="ambiguous" id="A3.T10.3.3.3.m1.2.2.2.2.2.1.cmml" xref="A3.T10.3.3.3.m1.2.2.2.2.2">subscript</csymbol><ci id="A3.T10.3.3.3.m1.2.2.2.2.2.2.cmml" xref="A3.T10.3.3.3.m1.2.2.2.2.2.2">𝑡</ci><cn id="A3.T10.3.3.3.m1.2.2.2.2.2.3.cmml" type="integer" xref="A3.T10.3.3.3.m1.2.2.2.2.2.3">2</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.3.3.m1.2c">\Delta^{c\to i}(t_{1},t_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.3.3.m1.2d">roman_Δ start_POSTSUPERSCRIPT italic_c → italic_i end_POSTSUPERSCRIPT ( italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T10.3.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.1"><span class="ltx_text" id="A3.T10.3.4.1.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.3.4.1.2"><span class="ltx_text" id="A3.T10.3.4.1.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.3"><span class="ltx_text" id="A3.T10.3.4.1.3.1" style="font-size:80%;">24.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.4"><span class="ltx_text" id="A3.T10.3.4.1.4.1" style="font-size:80%;">33.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.5"><span class="ltx_text" id="A3.T10.3.4.1.5.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.6"><span class="ltx_text" id="A3.T10.3.4.1.6.1" style="font-size:80%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.4.1.7"><span class="ltx_text" id="A3.T10.3.4.1.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.5.2">
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.1"><span class="ltx_text" id="A3.T10.3.5.2.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.5.2.2"><span class="ltx_text" id="A3.T10.3.5.2.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.3"><span class="ltx_text" id="A3.T10.3.5.2.3.1" style="font-size:80%;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.4"><span class="ltx_text" id="A3.T10.3.5.2.4.1" style="font-size:80%;">25.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.5"><span class="ltx_text" id="A3.T10.3.5.2.5.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.6"><span class="ltx_text" id="A3.T10.3.5.2.6.1" style="font-size:80%;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.5.2.7"><span class="ltx_text" id="A3.T10.3.5.2.7.1" style="font-size:80%;">8.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.6.3">
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.1"><span class="ltx_text" id="A3.T10.3.6.3.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.6.3.2"><span class="ltx_text" id="A3.T10.3.6.3.2.1" style="font-size:80%;">STaR/RAFT for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.3"><span class="ltx_text" id="A3.T10.3.6.3.3.1" style="font-size:80%;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.4"><span class="ltx_text" id="A3.T10.3.6.3.4.1" style="font-size:80%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.5"><span class="ltx_text" id="A3.T10.3.6.3.5.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.6"><span class="ltx_text" id="A3.T10.3.6.3.6.1" style="font-size:80%;">10.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.6.3.7"><span class="ltx_text" id="A3.T10.3.6.3.7.1" style="font-size:80%;">8.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.7.4">
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.1"><span class="ltx_text" id="A3.T10.3.7.4.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.7.4.2"><span class="ltx_text" id="A3.T10.3.7.4.2.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.3"><span class="ltx_text" id="A3.T10.3.7.4.3.1" style="font-size:80%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.4"><span class="ltx_text" id="A3.T10.3.7.4.4.1" style="font-size:80%;">28.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.5"><span class="ltx_text" id="A3.T10.3.7.4.5.1" style="font-size:80%;">3.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.6"><span class="ltx_text" id="A3.T10.3.7.4.6.1" style="font-size:80%;">10.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.7.4.7"><span class="ltx_text" id="A3.T10.3.7.4.7.1" style="font-size:80%;">7.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.8.5">
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.1"><span class="ltx_text" id="A3.T10.3.8.5.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.8.5.2"><span class="ltx_text" id="A3.T10.3.8.5.2.1" style="font-size:80%;">Self-correct with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.3"><span class="ltx_text" id="A3.T10.3.8.5.3.1" style="font-size:80%;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.4"><span class="ltx_text" id="A3.T10.3.8.5.4.1" style="font-size:80%;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.5"><span class="ltx_text" id="A3.T10.3.8.5.5.1" style="font-size:80%;">5.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.6"><span class="ltx_text" id="A3.T10.3.8.5.6.1" style="font-size:80%;">8.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.8.5.7"><span class="ltx_text" id="A3.T10.3.8.5.7.1" style="font-size:80%;">3.5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.9.6" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.1"><span class="ltx_text" id="A3.T10.3.9.6.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.9.6.2"><span class="ltx_text" id="A3.T10.3.9.6.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.3"><span class="ltx_text" id="A3.T10.3.9.6.3.1" style="font-size:80%;background-color:#DDEBF7;">25.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.4"><span class="ltx_text" id="A3.T10.3.9.6.4.1" style="font-size:80%;background-color:#DDEBF7;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.5"><span class="ltx_text" id="A3.T10.3.9.6.5.1" style="font-size:80%;background-color:#DDEBF7;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.6"><span class="ltx_text" id="A3.T10.3.9.6.6.1" style="font-size:80%;background-color:#DDEBF7;">7.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.9.6.7"><span class="ltx_text" id="A3.T10.3.9.6.7.1" style="font-size:80%;background-color:#DDEBF7;">3.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.10.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.1"><span class="ltx_text" id="A3.T10.3.10.7.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.3.10.7.2"><span class="ltx_text" id="A3.T10.3.10.7.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.3"><span class="ltx_text" id="A3.T10.3.10.7.3.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.4"><span class="ltx_text" id="A3.T10.3.10.7.4.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.5"><span class="ltx_text" id="A3.T10.3.10.7.5.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.6"><span class="ltx_text" id="A3.T10.3.10.7.6.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.10.7.7"><span class="ltx_text" id="A3.T10.3.10.7.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.11.8">
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.1"><span class="ltx_text" id="A3.T10.3.11.8.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.11.8.2"><span class="ltx_text" id="A3.T10.3.11.8.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.3"><span class="ltx_text" id="A3.T10.3.11.8.3.1" style="font-size:80%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.4"><span class="ltx_text" id="A3.T10.3.11.8.4.1" style="font-size:80%;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.5"><span class="ltx_text" id="A3.T10.3.11.8.5.1" style="font-size:80%;">-1.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.6"><span class="ltx_text" id="A3.T10.3.11.8.6.1" style="font-size:80%;">6.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.11.8.7"><span class="ltx_text" id="A3.T10.3.11.8.7.1" style="font-size:80%;">8.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.12.9">
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.1"><span class="ltx_text" id="A3.T10.3.12.9.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.12.9.2"><span class="ltx_text" id="A3.T10.3.12.9.2.1" style="font-size:80%;">STaR/RAFT for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.3"><span class="ltx_text" id="A3.T10.3.12.9.3.1" style="font-size:80%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.4"><span class="ltx_text" id="A3.T10.3.12.9.4.1" style="font-size:80%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.5"><span class="ltx_text" id="A3.T10.3.12.9.5.1" style="font-size:80%;">-2.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.6"><span class="ltx_text" id="A3.T10.3.12.9.6.1" style="font-size:80%;">9.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.12.9.7"><span class="ltx_text" id="A3.T10.3.12.9.7.1" style="font-size:80%;">11.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.13.10">
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.1"><span class="ltx_text" id="A3.T10.3.13.10.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.13.10.2"><span class="ltx_text" id="A3.T10.3.13.10.2.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.3"><span class="ltx_text" id="A3.T10.3.13.10.3.1" style="font-size:80%;">42.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.4"><span class="ltx_text" id="A3.T10.3.13.10.4.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.5"><span class="ltx_text" id="A3.T10.3.13.10.5.1" style="font-size:80%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.6"><span class="ltx_text" id="A3.T10.3.13.10.6.1" style="font-size:80%;">8.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.13.10.7"><span class="ltx_text" id="A3.T10.3.13.10.7.1" style="font-size:80%;">7.9</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.14.11">
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.1"><span class="ltx_text" id="A3.T10.3.14.11.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.14.11.2"><span class="ltx_text" id="A3.T10.3.14.11.2.1" style="font-size:80%;">Self-correct with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.3"><span class="ltx_text" id="A3.T10.3.14.11.3.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.4"><span class="ltx_text" id="A3.T10.3.14.11.4.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.5"><span class="ltx_text" id="A3.T10.3.14.11.5.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.6"><span class="ltx_text" id="A3.T10.3.14.11.6.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.14.11.7"><span class="ltx_text" id="A3.T10.3.14.11.7.1" style="font-size:80%;">4.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.15.12" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.1"><span class="ltx_text" id="A3.T10.3.15.12.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.15.12.2"><span class="ltx_text" id="A3.T10.3.15.12.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.3"><span class="ltx_text" id="A3.T10.3.15.12.3.1" style="font-size:80%;background-color:#DDEBF7;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.4"><span class="ltx_text" id="A3.T10.3.15.12.4.1" style="font-size:80%;background-color:#DDEBF7;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.5"><span class="ltx_text" id="A3.T10.3.15.12.5.1" style="font-size:80%;background-color:#DDEBF7;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.6"><span class="ltx_text" id="A3.T10.3.15.12.6.1" style="font-size:80%;background-color:#DDEBF7;">6.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.15.12.7"><span class="ltx_text" id="A3.T10.3.15.12.7.1" style="font-size:80%;background-color:#DDEBF7;">4.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.16.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.1"><span class="ltx_text" id="A3.T10.3.16.13.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.3.16.13.2"><span class="ltx_text" id="A3.T10.3.16.13.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.3"><span class="ltx_text" id="A3.T10.3.16.13.3.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.4"><span class="ltx_text" id="A3.T10.3.16.13.4.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.5"><span class="ltx_text" id="A3.T10.3.16.13.5.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.6"><span class="ltx_text" id="A3.T10.3.16.13.6.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.16.13.7"><span class="ltx_text" id="A3.T10.3.16.13.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.17.14">
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.1"><span class="ltx_text" id="A3.T10.3.17.14.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.17.14.2"><span class="ltx_text" id="A3.T10.3.17.14.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.3"><span class="ltx_text" id="A3.T10.3.17.14.3.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.4"><span class="ltx_text" id="A3.T10.3.17.14.4.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.5"><span class="ltx_text" id="A3.T10.3.17.14.5.1" style="font-size:80%;">-15.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.6"><span class="ltx_text" id="A3.T10.3.17.14.6.1" style="font-size:80%;">6.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.17.14.7"><span class="ltx_text" id="A3.T10.3.17.14.7.1" style="font-size:80%;">22.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.18.15">
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.1"><span class="ltx_text" id="A3.T10.3.18.15.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.18.15.2"><span class="ltx_text" id="A3.T10.3.18.15.2.1" style="font-size:80%;">STaR/RAFT for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.3"><span class="ltx_text" id="A3.T10.3.18.15.3.1" style="font-size:80%;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.4"><span class="ltx_text" id="A3.T10.3.18.15.4.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.5"><span class="ltx_text" id="A3.T10.3.18.15.5.1" style="font-size:80%;">-15.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.6"><span class="ltx_text" id="A3.T10.3.18.15.6.1" style="font-size:80%;">7.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.18.15.7"><span class="ltx_text" id="A3.T10.3.18.15.7.1" style="font-size:80%;">23.3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.19.16">
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.1"><span class="ltx_text" id="A3.T10.3.19.16.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.19.16.2"><span class="ltx_text" id="A3.T10.3.19.16.2.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.3"><span class="ltx_text" id="A3.T10.3.19.16.3.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.4"><span class="ltx_text" id="A3.T10.3.19.16.4.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.5"><span class="ltx_text" id="A3.T10.3.19.16.5.1" style="font-size:80%;">-11.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.6"><span class="ltx_text" id="A3.T10.3.19.16.6.1" style="font-size:80%;">7.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.19.16.7"><span class="ltx_text" id="A3.T10.3.19.16.7.1" style="font-size:80%;">18.9</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.20.17">
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.1"><span class="ltx_text" id="A3.T10.3.20.17.1.1" style="font-size:80%;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.20.17.2"><span class="ltx_text" id="A3.T10.3.20.17.2.1" style="font-size:80%;">Self-correct with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.3"><span class="ltx_text" id="A3.T10.3.20.17.3.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.4"><span class="ltx_text" id="A3.T10.3.20.17.4.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.5"><span class="ltx_text" id="A3.T10.3.20.17.5.1" style="font-size:80%;">2.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.6"><span class="ltx_text" id="A3.T10.3.20.17.6.1" style="font-size:80%;">4.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.20.17.7"><span class="ltx_text" id="A3.T10.3.20.17.7.1" style="font-size:80%;">2.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.21.18" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.1"><span class="ltx_text" id="A3.T10.3.21.18.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-8B-it</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.21.18.2"><span class="ltx_text" id="A3.T10.3.21.18.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.3"><span class="ltx_text" id="A3.T10.3.21.18.3.1" style="font-size:80%;background-color:#DDEBF7;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.4"><span class="ltx_text" id="A3.T10.3.21.18.4.1" style="font-size:80%;background-color:#DDEBF7;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.5"><span class="ltx_text" id="A3.T10.3.21.18.5.1" style="font-size:80%;background-color:#DDEBF7;">4.1</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.6"><span class="ltx_text" id="A3.T10.3.21.18.6.1" style="font-size:80%;background-color:#DDEBF7;">7.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.21.18.7"><span class="ltx_text" id="A3.T10.3.21.18.7.1" style="font-size:80%;background-color:#DDEBF7;">3.6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.22.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.1"><span class="ltx_text" id="A3.T10.3.22.19.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T10.3.22.19.2"><span class="ltx_text" id="A3.T10.3.22.19.2.1" style="font-size:80%;">Prompt with Gold RM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.3"><span class="ltx_text" id="A3.T10.3.22.19.3.1" style="font-size:80%;">81.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.4"><span class="ltx_text" id="A3.T10.3.22.19.4.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.5"><span class="ltx_text" id="A3.T10.3.22.19.5.1" style="font-size:80%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.6"><span class="ltx_text" id="A3.T10.3.22.19.6.1" style="font-size:80%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.3.22.19.7"><span class="ltx_text" id="A3.T10.3.22.19.7.1" style="font-size:80%;">0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.23.20">
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.1"><span class="ltx_text" id="A3.T10.3.23.20.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.23.20.2"><span class="ltx_text" id="A3.T10.3.23.20.2.1" style="font-size:80%;">Intrinsic self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.3"><span class="ltx_text" id="A3.T10.3.23.20.3.1" style="font-size:80%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.4"><span class="ltx_text" id="A3.T10.3.23.20.4.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.5"><span class="ltx_text" id="A3.T10.3.23.20.5.1" style="font-size:80%;">-6.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.6"><span class="ltx_text" id="A3.T10.3.23.20.6.1" style="font-size:80%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.23.20.7"><span class="ltx_text" id="A3.T10.3.23.20.7.1" style="font-size:80%;">12.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.24.21">
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.1"><span class="ltx_text" id="A3.T10.3.24.21.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.24.21.2"><span class="ltx_text" id="A3.T10.3.24.21.2.1" style="font-size:80%;">STaR/RAFT for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.3"><span class="ltx_text" id="A3.T10.3.24.21.3.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.4"><span class="ltx_text" id="A3.T10.3.24.21.4.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.5"><span class="ltx_text" id="A3.T10.3.24.21.5.1" style="font-size:80%;">-5.8</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.6"><span class="ltx_text" id="A3.T10.3.24.21.6.1" style="font-size:80%;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.24.21.7"><span class="ltx_text" id="A3.T10.3.24.21.7.1" style="font-size:80%;">14.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.25.22">
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.1"><span class="ltx_text" id="A3.T10.3.25.22.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.25.22.2"><span class="ltx_text" id="A3.T10.3.25.22.2.1" style="font-size:80%;">STaR/RAFT+ for self-correction</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.3"><span class="ltx_text" id="A3.T10.3.25.22.3.1" style="font-size:80%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.4"><span class="ltx_text" id="A3.T10.3.25.22.4.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.5"><span class="ltx_text" id="A3.T10.3.25.22.5.1" style="font-size:80%;">-0.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.6"><span class="ltx_text" id="A3.T10.3.25.22.6.1" style="font-size:80%;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.25.22.7"><span class="ltx_text" id="A3.T10.3.25.22.7.1" style="font-size:80%;">6.9</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.26.23">
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.1"><span class="ltx_text" id="A3.T10.3.26.23.1.1" style="font-size:80%;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T10.3.26.23.2"><span class="ltx_text" id="A3.T10.3.26.23.2.1" style="font-size:80%;">Self-correct with External ORM</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.3"><span class="ltx_text" id="A3.T10.3.26.23.3.1" style="font-size:80%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.4"><span class="ltx_text" id="A3.T10.3.26.23.4.1" style="font-size:80%;">82.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.5"><span class="ltx_text" id="A3.T10.3.26.23.5.1" style="font-size:80%;">0.9</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.6"><span class="ltx_text" id="A3.T10.3.26.23.6.1" style="font-size:80%;">2.3</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.3.26.23.7"><span class="ltx_text" id="A3.T10.3.26.23.7.1" style="font-size:80%;">1.4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.27.24" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.1"><span class="ltx_text" id="A3.T10.3.27.24.1.1" style="font-size:80%;background-color:#DDEBF7;">Llama-3-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T10.3.27.24.2"><span class="ltx_text" id="A3.T10.3.27.24.2.1" style="font-size:80%;background-color:#DDEBF7;">Self-rewarding IFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.3"><span class="ltx_text" id="A3.T10.3.27.24.3.1" style="font-size:80%;background-color:#DDEBF7;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.4"><span class="ltx_text" id="A3.T10.3.27.24.4.1" style="font-size:80%;background-color:#DDEBF7;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.5"><span class="ltx_text" id="A3.T10.3.27.24.5.1" style="font-size:80%;background-color:#DDEBF7;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.6"><span class="ltx_text" id="A3.T10.3.27.24.6.1" style="font-size:80%;background-color:#DDEBF7;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.3.27.24.7"><span class="ltx_text" id="A3.T10.3.27.24.7.1" style="font-size:80%;background-color:#DDEBF7;">0.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various methods on the MATH dataset, focusing on mathematical reasoning capabilities.  The results include metrics such as Turn 1 accuracy (accuracy of the initial response), final accuracy (accuracy of the final answer after potential corrections), and changes in accuracy from the first to the final attempt. Different methods are compared including baselines like single-turn models and those utilizing external reward models, along with the proposed self-rewarding and self-correction methods. The test temperature used was 0.7.
> <details>
> <summary>read the caption</summary>
> Table 10: Main results of different methods on the test set of MATH. The test temperature is 0.7.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.19613/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.19613/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}