---
title: "LASP-2: Rethinking Sequence Parallelism for Linear Attention and Its Hybrid"
summary: "LASP-2 revolutionizes linear attention training by achieving 36.6% faster speeds than Ring Attention via a novel sequence parallelism method, boosting efficiency for very long sequences."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-02-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.07563 {{< /keyword >}}
{{< keyword icon="writer" >}} Weigao Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.07563" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.07563" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.07563/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Linear attention offers advantages in sequence modeling, but existing sequence parallelism (SP) methods have limitations. They are not optimized for linear attention's structure or use inefficient communication strategies, hindering scalability for long sequences in distributed systems.  This leads to lower computation parallelism and increased training time. 

LASP-2 tackles these issues by rethinking the minimal communication requirement for SP. It reorganizes the communication-computation workflow, needing only one AllGather operation on intermediate memory states (independent of sequence length). This significantly improves both communication and computation parallelism and their overlap. LASP-2H extends this to hybrid models (linear and standard attention).  **Evaluations show LASP-2 achieves a 15.2% speedup over LASP and 36.6% over Ring Attention with a 2048K sequence length on 64 GPUs.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LASP-2 significantly enhances both communication and computation parallelism in training linear attention transformer models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LASP-2H extends these improvements to hybrid models using both linear and standard attention layers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LASP-2 demonstrates substantial training speed improvements (up to 36.6% faster than Ring Attention) on a Linear-Llama3 model with very long sequences. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models and linear attention mechanisms.  **It presents LASP-2, a novel sequence parallelism method that significantly improves the training speed and scalability of these models**, addressing a key challenge in handling very long sequences. This work directly impacts the efficiency and resource consumption of large-scale model training, opening new avenues for further research in optimizing training processes and enhancing the capabilities of next-generation language models.

------
#### Visual Insights



![](https://arxiv.org/html/2502.07563/x1.png)

> 🔼 This figure illustrates how LASP-2 handles sequence parallelism with masking, a crucial aspect of autoregressive tasks.  It shows the decomposition of computations into intra-chunk (within a single chunk) and inter-chunk (between multiple chunks) operations.  The colored chunks highlight the inter-chunk computations, which are performed independently and in parallel across different devices because they don't depend on the results of other chunks. This parallel processing improves efficiency. The intra-chunk computations, on the other hand, involve sequential operations due to the masking requirements of autoregressive tasks.  The figure visually demonstrates how LASP-2 efficiently combines parallel and sequential processing to improve the scalability of linear attention models with masking.
> <details>
> <summary>read the caption</summary>
> Figure 1: Computation Decomposition in LASP-2 with masking. Colored chunks represent inter-chunks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T1.34">
<tr class="ltx_tr" id="S1.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.1.1.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S1.T1.1.1.1.1" style="font-size:90%;">Indices</span></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.3"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.2.2.2"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S1.T1.2.2.2.1" style="font-size:90%;">Operations</span></td>
<td class="ltx_td ltx_border_tt" id="S1.T1.2.2.4"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.4">
<td class="ltx_td ltx_align_left" id="S1.T1.3.3.1"><math alttext="i" class="ltx_Math" display="inline" id="S1.T1.3.3.1.m1.1"><semantics id="S1.T1.3.3.1.m1.1a"><mi id="S1.T1.3.3.1.m1.1.1" mathsize="90%" xref="S1.T1.3.3.1.m1.1.1.cmml">i</mi><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.1.m1.1b"><ci id="S1.T1.3.3.1.m1.1.1.cmml" xref="S1.T1.3.3.1.m1.1.1">𝑖</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.1.m1.1c">i</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.1.m1.1d">italic_i</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.4.4.3"><span class="ltx_text" id="S1.T1.4.4.3.1" style="font-size:90%;">Any indices</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.4.4.2">
<math alttext="\cdot" class="ltx_Math" display="inline" id="S1.T1.4.4.2.m1.1"><semantics id="S1.T1.4.4.2.m1.1a"><mo id="S1.T1.4.4.2.m1.1.1" mathsize="90%" xref="S1.T1.4.4.2.m1.1.1.cmml">⋅</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.2.m1.1b"><ci id="S1.T1.4.4.2.m1.1.1.cmml" xref="S1.T1.4.4.2.m1.1.1">⋅</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.2.m1.1c">\cdot</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.2.m1.1d">⋅</annotation></semantics></math><span class="ltx_text" id="S1.T1.4.4.2.1" style="font-size:90%;"> (or omitted)</span>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.4.4.4"><span class="ltx_text" id="S1.T1.4.4.4.1" style="font-size:90%;">Matrix multiplication</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6">
<td class="ltx_td ltx_align_left" id="S1.T1.5.5.1"><math alttext="s" class="ltx_Math" display="inline" id="S1.T1.5.5.1.m1.1"><semantics id="S1.T1.5.5.1.m1.1a"><mi id="S1.T1.5.5.1.m1.1.1" mathsize="90%" xref="S1.T1.5.5.1.m1.1.1.cmml">s</mi><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.1.m1.1b"><ci id="S1.T1.5.5.1.m1.1.1.cmml" xref="S1.T1.5.5.1.m1.1.1">𝑠</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.1.m1.1c">s</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.1.m1.1d">italic_s</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.6.6.3"><span class="ltx_text" id="S1.T1.6.6.3.1" style="font-size:90%;">Index of current token</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.6.6.2"><math alttext="\odot" class="ltx_Math" display="inline" id="S1.T1.6.6.2.m1.1"><semantics id="S1.T1.6.6.2.m1.1a"><mo id="S1.T1.6.6.2.m1.1.1" mathsize="90%" xref="S1.T1.6.6.2.m1.1.1.cmml">⊙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.2.m1.1b"><csymbol cd="latexml" id="S1.T1.6.6.2.m1.1.1.cmml" xref="S1.T1.6.6.2.m1.1.1">direct-product</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.2.m1.1c">\odot</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.2.m1.1d">⊙</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.6.6.4"><span class="ltx_text" id="S1.T1.6.6.4.1" style="font-size:90%;">Hadamard multiplication</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.8.8">
<td class="ltx_td ltx_align_left" id="S1.T1.7.7.1"><math alttext="t" class="ltx_Math" display="inline" id="S1.T1.7.7.1.m1.1"><semantics id="S1.T1.7.7.1.m1.1a"><mi id="S1.T1.7.7.1.m1.1.1" mathsize="90%" xref="S1.T1.7.7.1.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.1.m1.1b"><ci id="S1.T1.7.7.1.m1.1.1.cmml" xref="S1.T1.7.7.1.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.1.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.1.m1.1d">italic_t</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.8.8.3"><span class="ltx_text" id="S1.T1.8.8.3.1" style="font-size:90%;">Index of chunk</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.8.8.2"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S1.T1.8.8.2.1" style="font-size:90%;">Vectors and Matrices</span></td>
<td class="ltx_td" id="S1.T1.8.8.4"></td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.12">
<td class="ltx_td ltx_align_left" id="S1.T1.9.9.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S1.T1.9.9.1.1" style="font-size:90%;">Constants</span></td>
<td class="ltx_td" id="S1.T1.12.12.5"></td>
<td class="ltx_td ltx_align_left" id="S1.T1.12.12.4">
<math alttext="\mathbf{x}" class="ltx_Math" display="inline" id="S1.T1.10.10.2.m1.1"><semantics id="S1.T1.10.10.2.m1.1a"><mi id="S1.T1.10.10.2.m1.1.1" mathsize="90%" xref="S1.T1.10.10.2.m1.1.1.cmml">𝐱</mi><annotation-xml encoding="MathML-Content" id="S1.T1.10.10.2.m1.1b"><ci id="S1.T1.10.10.2.m1.1.1.cmml" xref="S1.T1.10.10.2.m1.1.1">𝐱</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.10.10.2.m1.1c">\mathbf{x}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.10.10.2.m1.1d">bold_x</annotation></semantics></math><span class="ltx_text" id="S1.T1.12.12.4.1" style="font-size:90%;">, </span><math alttext="\mathbf{o}" class="ltx_Math" display="inline" id="S1.T1.11.11.3.m2.1"><semantics id="S1.T1.11.11.3.m2.1a"><mi id="S1.T1.11.11.3.m2.1.1" mathsize="90%" xref="S1.T1.11.11.3.m2.1.1.cmml">𝐨</mi><annotation-xml encoding="MathML-Content" id="S1.T1.11.11.3.m2.1b"><ci id="S1.T1.11.11.3.m2.1.1.cmml" xref="S1.T1.11.11.3.m2.1.1">𝐨</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.11.11.3.m2.1c">\mathbf{o}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.11.11.3.m2.1d">bold_o</annotation></semantics></math><span class="ltx_text" id="S1.T1.12.12.4.2" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{1\times d}" class="ltx_Math" display="inline" id="S1.T1.12.12.4.m3.1"><semantics id="S1.T1.12.12.4.m3.1a"><mrow id="S1.T1.12.12.4.m3.1.1" xref="S1.T1.12.12.4.m3.1.1.cmml"><mi id="S1.T1.12.12.4.m3.1.1.2" xref="S1.T1.12.12.4.m3.1.1.2.cmml"></mi><mo id="S1.T1.12.12.4.m3.1.1.1" mathsize="90%" xref="S1.T1.12.12.4.m3.1.1.1.cmml">∈</mo><msup id="S1.T1.12.12.4.m3.1.1.3" xref="S1.T1.12.12.4.m3.1.1.3.cmml"><mi id="S1.T1.12.12.4.m3.1.1.3.2" mathsize="90%" xref="S1.T1.12.12.4.m3.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.12.12.4.m3.1.1.3.3" xref="S1.T1.12.12.4.m3.1.1.3.3.cmml"><mn id="S1.T1.12.12.4.m3.1.1.3.3.2" mathsize="90%" xref="S1.T1.12.12.4.m3.1.1.3.3.2.cmml">1</mn><mo id="S1.T1.12.12.4.m3.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.12.12.4.m3.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.12.12.4.m3.1.1.3.3.3" mathsize="90%" xref="S1.T1.12.12.4.m3.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.12.12.4.m3.1b"><apply id="S1.T1.12.12.4.m3.1.1.cmml" xref="S1.T1.12.12.4.m3.1.1"><in id="S1.T1.12.12.4.m3.1.1.1.cmml" xref="S1.T1.12.12.4.m3.1.1.1"></in><csymbol cd="latexml" id="S1.T1.12.12.4.m3.1.1.2.cmml" xref="S1.T1.12.12.4.m3.1.1.2">absent</csymbol><apply id="S1.T1.12.12.4.m3.1.1.3.cmml" xref="S1.T1.12.12.4.m3.1.1.3"><csymbol cd="ambiguous" id="S1.T1.12.12.4.m3.1.1.3.1.cmml" xref="S1.T1.12.12.4.m3.1.1.3">superscript</csymbol><ci id="S1.T1.12.12.4.m3.1.1.3.2.cmml" xref="S1.T1.12.12.4.m3.1.1.3.2">ℝ</ci><apply id="S1.T1.12.12.4.m3.1.1.3.3.cmml" xref="S1.T1.12.12.4.m3.1.1.3.3"><times id="S1.T1.12.12.4.m3.1.1.3.3.1.cmml" xref="S1.T1.12.12.4.m3.1.1.3.3.1"></times><cn id="S1.T1.12.12.4.m3.1.1.3.3.2.cmml" type="integer" xref="S1.T1.12.12.4.m3.1.1.3.3.2">1</cn><ci id="S1.T1.12.12.4.m3.1.1.3.3.3.cmml" xref="S1.T1.12.12.4.m3.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.12.12.4.m3.1c">\in\mathbb{R}^{1\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.12.12.4.m3.1d">∈ blackboard_R start_POSTSUPERSCRIPT 1 × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.12.12.6"><span class="ltx_text" id="S1.T1.12.12.6.1" style="font-size:90%;">Input and output vectors</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.17.17">
<td class="ltx_td ltx_align_left" id="S1.T1.13.13.1"><math alttext="d" class="ltx_Math" display="inline" id="S1.T1.13.13.1.m1.1"><semantics id="S1.T1.13.13.1.m1.1a"><mi id="S1.T1.13.13.1.m1.1.1" mathsize="90%" xref="S1.T1.13.13.1.m1.1.1.cmml">d</mi><annotation-xml encoding="MathML-Content" id="S1.T1.13.13.1.m1.1b"><ci id="S1.T1.13.13.1.m1.1.1.cmml" xref="S1.T1.13.13.1.m1.1.1">𝑑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.13.13.1.m1.1c">d</annotation><annotation encoding="application/x-llamapun" id="S1.T1.13.13.1.m1.1d">italic_d</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.17.17.6"><span class="ltx_text" id="S1.T1.17.17.6.1" style="font-size:90%;">Hidden dimension</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.17.17.5">
<math alttext="\mathbf{q}" class="ltx_Math" display="inline" id="S1.T1.14.14.2.m1.1"><semantics id="S1.T1.14.14.2.m1.1a"><mi id="S1.T1.14.14.2.m1.1.1" mathsize="90%" xref="S1.T1.14.14.2.m1.1.1.cmml">𝐪</mi><annotation-xml encoding="MathML-Content" id="S1.T1.14.14.2.m1.1b"><ci id="S1.T1.14.14.2.m1.1.1.cmml" xref="S1.T1.14.14.2.m1.1.1">𝐪</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.14.14.2.m1.1c">\mathbf{q}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.14.14.2.m1.1d">bold_q</annotation></semantics></math><span class="ltx_text" id="S1.T1.17.17.5.1" style="font-size:90%;">, </span><math alttext="\mathbf{k}" class="ltx_Math" display="inline" id="S1.T1.15.15.3.m2.1"><semantics id="S1.T1.15.15.3.m2.1a"><mi id="S1.T1.15.15.3.m2.1.1" mathsize="90%" xref="S1.T1.15.15.3.m2.1.1.cmml">𝐤</mi><annotation-xml encoding="MathML-Content" id="S1.T1.15.15.3.m2.1b"><ci id="S1.T1.15.15.3.m2.1.1.cmml" xref="S1.T1.15.15.3.m2.1.1">𝐤</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.15.15.3.m2.1c">\mathbf{k}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.15.15.3.m2.1d">bold_k</annotation></semantics></math><span class="ltx_text" id="S1.T1.17.17.5.2" style="font-size:90%;">, </span><math alttext="\mathbf{v}" class="ltx_Math" display="inline" id="S1.T1.16.16.4.m3.1"><semantics id="S1.T1.16.16.4.m3.1a"><mi id="S1.T1.16.16.4.m3.1.1" mathsize="90%" xref="S1.T1.16.16.4.m3.1.1.cmml">𝐯</mi><annotation-xml encoding="MathML-Content" id="S1.T1.16.16.4.m3.1b"><ci id="S1.T1.16.16.4.m3.1.1.cmml" xref="S1.T1.16.16.4.m3.1.1">𝐯</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.16.16.4.m3.1c">\mathbf{v}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.16.16.4.m3.1d">bold_v</annotation></semantics></math><span class="ltx_text" id="S1.T1.17.17.5.3" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{1\times d}" class="ltx_Math" display="inline" id="S1.T1.17.17.5.m4.1"><semantics id="S1.T1.17.17.5.m4.1a"><mrow id="S1.T1.17.17.5.m4.1.1" xref="S1.T1.17.17.5.m4.1.1.cmml"><mi id="S1.T1.17.17.5.m4.1.1.2" xref="S1.T1.17.17.5.m4.1.1.2.cmml"></mi><mo id="S1.T1.17.17.5.m4.1.1.1" mathsize="90%" xref="S1.T1.17.17.5.m4.1.1.1.cmml">∈</mo><msup id="S1.T1.17.17.5.m4.1.1.3" xref="S1.T1.17.17.5.m4.1.1.3.cmml"><mi id="S1.T1.17.17.5.m4.1.1.3.2" mathsize="90%" xref="S1.T1.17.17.5.m4.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.17.17.5.m4.1.1.3.3" xref="S1.T1.17.17.5.m4.1.1.3.3.cmml"><mn id="S1.T1.17.17.5.m4.1.1.3.3.2" mathsize="90%" xref="S1.T1.17.17.5.m4.1.1.3.3.2.cmml">1</mn><mo id="S1.T1.17.17.5.m4.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.17.17.5.m4.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.17.17.5.m4.1.1.3.3.3" mathsize="90%" xref="S1.T1.17.17.5.m4.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.17.17.5.m4.1b"><apply id="S1.T1.17.17.5.m4.1.1.cmml" xref="S1.T1.17.17.5.m4.1.1"><in id="S1.T1.17.17.5.m4.1.1.1.cmml" xref="S1.T1.17.17.5.m4.1.1.1"></in><csymbol cd="latexml" id="S1.T1.17.17.5.m4.1.1.2.cmml" xref="S1.T1.17.17.5.m4.1.1.2">absent</csymbol><apply id="S1.T1.17.17.5.m4.1.1.3.cmml" xref="S1.T1.17.17.5.m4.1.1.3"><csymbol cd="ambiguous" id="S1.T1.17.17.5.m4.1.1.3.1.cmml" xref="S1.T1.17.17.5.m4.1.1.3">superscript</csymbol><ci id="S1.T1.17.17.5.m4.1.1.3.2.cmml" xref="S1.T1.17.17.5.m4.1.1.3.2">ℝ</ci><apply id="S1.T1.17.17.5.m4.1.1.3.3.cmml" xref="S1.T1.17.17.5.m4.1.1.3.3"><times id="S1.T1.17.17.5.m4.1.1.3.3.1.cmml" xref="S1.T1.17.17.5.m4.1.1.3.3.1"></times><cn id="S1.T1.17.17.5.m4.1.1.3.3.2.cmml" type="integer" xref="S1.T1.17.17.5.m4.1.1.3.3.2">1</cn><ci id="S1.T1.17.17.5.m4.1.1.3.3.3.cmml" xref="S1.T1.17.17.5.m4.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.17.17.5.m4.1c">\in\mathbb{R}^{1\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.17.17.5.m4.1d">∈ blackboard_R start_POSTSUPERSCRIPT 1 × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.17.17.7"><span class="ltx_text" id="S1.T1.17.17.7.1" style="font-size:90%;">Query, key, value vectors</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.21.21">
<td class="ltx_td ltx_align_left" id="S1.T1.18.18.1"><math alttext="W" class="ltx_Math" display="inline" id="S1.T1.18.18.1.m1.1"><semantics id="S1.T1.18.18.1.m1.1a"><mi id="S1.T1.18.18.1.m1.1.1" mathsize="90%" xref="S1.T1.18.18.1.m1.1.1.cmml">W</mi><annotation-xml encoding="MathML-Content" id="S1.T1.18.18.1.m1.1b"><ci id="S1.T1.18.18.1.m1.1.1.cmml" xref="S1.T1.18.18.1.m1.1.1">𝑊</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.18.18.1.m1.1c">W</annotation><annotation encoding="application/x-llamapun" id="S1.T1.18.18.1.m1.1d">italic_W</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.21.21.5"><span class="ltx_text" id="S1.T1.21.21.5.1" style="font-size:90%;">World size</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.21.21.4">
<math alttext="\mathbf{X}" class="ltx_Math" display="inline" id="S1.T1.19.19.2.m1.1"><semantics id="S1.T1.19.19.2.m1.1a"><mi id="S1.T1.19.19.2.m1.1.1" mathsize="90%" xref="S1.T1.19.19.2.m1.1.1.cmml">𝐗</mi><annotation-xml encoding="MathML-Content" id="S1.T1.19.19.2.m1.1b"><ci id="S1.T1.19.19.2.m1.1.1.cmml" xref="S1.T1.19.19.2.m1.1.1">𝐗</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.19.19.2.m1.1c">\mathbf{X}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.19.19.2.m1.1d">bold_X</annotation></semantics></math><span class="ltx_text" id="S1.T1.21.21.4.1" style="font-size:90%;">, </span><math alttext="\mathbf{O}" class="ltx_Math" display="inline" id="S1.T1.20.20.3.m2.1"><semantics id="S1.T1.20.20.3.m2.1a"><mi id="S1.T1.20.20.3.m2.1.1" mathsize="90%" xref="S1.T1.20.20.3.m2.1.1.cmml">𝐎</mi><annotation-xml encoding="MathML-Content" id="S1.T1.20.20.3.m2.1b"><ci id="S1.T1.20.20.3.m2.1.1.cmml" xref="S1.T1.20.20.3.m2.1.1">𝐎</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.20.20.3.m2.1c">\mathbf{O}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.20.20.3.m2.1d">bold_O</annotation></semantics></math><span class="ltx_text" id="S1.T1.21.21.4.2" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{N\times d}" class="ltx_Math" display="inline" id="S1.T1.21.21.4.m3.1"><semantics id="S1.T1.21.21.4.m3.1a"><mrow id="S1.T1.21.21.4.m3.1.1" xref="S1.T1.21.21.4.m3.1.1.cmml"><mi id="S1.T1.21.21.4.m3.1.1.2" xref="S1.T1.21.21.4.m3.1.1.2.cmml"></mi><mo id="S1.T1.21.21.4.m3.1.1.1" mathsize="90%" xref="S1.T1.21.21.4.m3.1.1.1.cmml">∈</mo><msup id="S1.T1.21.21.4.m3.1.1.3" xref="S1.T1.21.21.4.m3.1.1.3.cmml"><mi id="S1.T1.21.21.4.m3.1.1.3.2" mathsize="90%" xref="S1.T1.21.21.4.m3.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.21.21.4.m3.1.1.3.3" xref="S1.T1.21.21.4.m3.1.1.3.3.cmml"><mi id="S1.T1.21.21.4.m3.1.1.3.3.2" mathsize="90%" xref="S1.T1.21.21.4.m3.1.1.3.3.2.cmml">N</mi><mo id="S1.T1.21.21.4.m3.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.21.21.4.m3.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.21.21.4.m3.1.1.3.3.3" mathsize="90%" xref="S1.T1.21.21.4.m3.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.21.21.4.m3.1b"><apply id="S1.T1.21.21.4.m3.1.1.cmml" xref="S1.T1.21.21.4.m3.1.1"><in id="S1.T1.21.21.4.m3.1.1.1.cmml" xref="S1.T1.21.21.4.m3.1.1.1"></in><csymbol cd="latexml" id="S1.T1.21.21.4.m3.1.1.2.cmml" xref="S1.T1.21.21.4.m3.1.1.2">absent</csymbol><apply id="S1.T1.21.21.4.m3.1.1.3.cmml" xref="S1.T1.21.21.4.m3.1.1.3"><csymbol cd="ambiguous" id="S1.T1.21.21.4.m3.1.1.3.1.cmml" xref="S1.T1.21.21.4.m3.1.1.3">superscript</csymbol><ci id="S1.T1.21.21.4.m3.1.1.3.2.cmml" xref="S1.T1.21.21.4.m3.1.1.3.2">ℝ</ci><apply id="S1.T1.21.21.4.m3.1.1.3.3.cmml" xref="S1.T1.21.21.4.m3.1.1.3.3"><times id="S1.T1.21.21.4.m3.1.1.3.3.1.cmml" xref="S1.T1.21.21.4.m3.1.1.3.3.1"></times><ci id="S1.T1.21.21.4.m3.1.1.3.3.2.cmml" xref="S1.T1.21.21.4.m3.1.1.3.3.2">𝑁</ci><ci id="S1.T1.21.21.4.m3.1.1.3.3.3.cmml" xref="S1.T1.21.21.4.m3.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.21.21.4.m3.1c">\in\mathbb{R}^{N\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.21.21.4.m3.1d">∈ blackboard_R start_POSTSUPERSCRIPT italic_N × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.21.21.6"><span class="ltx_text" id="S1.T1.21.21.6.1" style="font-size:90%;">Input and output matrices</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.26.26">
<td class="ltx_td ltx_align_left" id="S1.T1.22.22.1"><math alttext="N" class="ltx_Math" display="inline" id="S1.T1.22.22.1.m1.1"><semantics id="S1.T1.22.22.1.m1.1a"><mi id="S1.T1.22.22.1.m1.1.1" mathsize="90%" xref="S1.T1.22.22.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="S1.T1.22.22.1.m1.1b"><ci id="S1.T1.22.22.1.m1.1.1.cmml" xref="S1.T1.22.22.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.22.22.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="S1.T1.22.22.1.m1.1d">italic_N</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.26.26.6"><span class="ltx_text" id="S1.T1.26.26.6.1" style="font-size:90%;">Sequence length</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.26.26.5">
<math alttext="\mathbf{Q}" class="ltx_Math" display="inline" id="S1.T1.23.23.2.m1.1"><semantics id="S1.T1.23.23.2.m1.1a"><mi id="S1.T1.23.23.2.m1.1.1" mathsize="90%" xref="S1.T1.23.23.2.m1.1.1.cmml">𝐐</mi><annotation-xml encoding="MathML-Content" id="S1.T1.23.23.2.m1.1b"><ci id="S1.T1.23.23.2.m1.1.1.cmml" xref="S1.T1.23.23.2.m1.1.1">𝐐</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.23.23.2.m1.1c">\mathbf{Q}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.23.23.2.m1.1d">bold_Q</annotation></semantics></math><span class="ltx_text" id="S1.T1.26.26.5.1" style="font-size:90%;">, </span><math alttext="\mathbf{K}" class="ltx_Math" display="inline" id="S1.T1.24.24.3.m2.1"><semantics id="S1.T1.24.24.3.m2.1a"><mi id="S1.T1.24.24.3.m2.1.1" mathsize="90%" xref="S1.T1.24.24.3.m2.1.1.cmml">𝐊</mi><annotation-xml encoding="MathML-Content" id="S1.T1.24.24.3.m2.1b"><ci id="S1.T1.24.24.3.m2.1.1.cmml" xref="S1.T1.24.24.3.m2.1.1">𝐊</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.24.24.3.m2.1c">\mathbf{K}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.24.24.3.m2.1d">bold_K</annotation></semantics></math><span class="ltx_text" id="S1.T1.26.26.5.2" style="font-size:90%;">, </span><math alttext="\mathbf{V}" class="ltx_Math" display="inline" id="S1.T1.25.25.4.m3.1"><semantics id="S1.T1.25.25.4.m3.1a"><mi id="S1.T1.25.25.4.m3.1.1" mathsize="90%" xref="S1.T1.25.25.4.m3.1.1.cmml">𝐕</mi><annotation-xml encoding="MathML-Content" id="S1.T1.25.25.4.m3.1b"><ci id="S1.T1.25.25.4.m3.1.1.cmml" xref="S1.T1.25.25.4.m3.1.1">𝐕</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.25.25.4.m3.1c">\mathbf{V}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.25.25.4.m3.1d">bold_V</annotation></semantics></math><span class="ltx_text" id="S1.T1.26.26.5.3" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{N\times d}" class="ltx_Math" display="inline" id="S1.T1.26.26.5.m4.1"><semantics id="S1.T1.26.26.5.m4.1a"><mrow id="S1.T1.26.26.5.m4.1.1" xref="S1.T1.26.26.5.m4.1.1.cmml"><mi id="S1.T1.26.26.5.m4.1.1.2" xref="S1.T1.26.26.5.m4.1.1.2.cmml"></mi><mo id="S1.T1.26.26.5.m4.1.1.1" mathsize="90%" xref="S1.T1.26.26.5.m4.1.1.1.cmml">∈</mo><msup id="S1.T1.26.26.5.m4.1.1.3" xref="S1.T1.26.26.5.m4.1.1.3.cmml"><mi id="S1.T1.26.26.5.m4.1.1.3.2" mathsize="90%" xref="S1.T1.26.26.5.m4.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.26.26.5.m4.1.1.3.3" xref="S1.T1.26.26.5.m4.1.1.3.3.cmml"><mi id="S1.T1.26.26.5.m4.1.1.3.3.2" mathsize="90%" xref="S1.T1.26.26.5.m4.1.1.3.3.2.cmml">N</mi><mo id="S1.T1.26.26.5.m4.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.26.26.5.m4.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.26.26.5.m4.1.1.3.3.3" mathsize="90%" xref="S1.T1.26.26.5.m4.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.26.26.5.m4.1b"><apply id="S1.T1.26.26.5.m4.1.1.cmml" xref="S1.T1.26.26.5.m4.1.1"><in id="S1.T1.26.26.5.m4.1.1.1.cmml" xref="S1.T1.26.26.5.m4.1.1.1"></in><csymbol cd="latexml" id="S1.T1.26.26.5.m4.1.1.2.cmml" xref="S1.T1.26.26.5.m4.1.1.2">absent</csymbol><apply id="S1.T1.26.26.5.m4.1.1.3.cmml" xref="S1.T1.26.26.5.m4.1.1.3"><csymbol cd="ambiguous" id="S1.T1.26.26.5.m4.1.1.3.1.cmml" xref="S1.T1.26.26.5.m4.1.1.3">superscript</csymbol><ci id="S1.T1.26.26.5.m4.1.1.3.2.cmml" xref="S1.T1.26.26.5.m4.1.1.3.2">ℝ</ci><apply id="S1.T1.26.26.5.m4.1.1.3.3.cmml" xref="S1.T1.26.26.5.m4.1.1.3.3"><times id="S1.T1.26.26.5.m4.1.1.3.3.1.cmml" xref="S1.T1.26.26.5.m4.1.1.3.3.1"></times><ci id="S1.T1.26.26.5.m4.1.1.3.3.2.cmml" xref="S1.T1.26.26.5.m4.1.1.3.3.2">𝑁</ci><ci id="S1.T1.26.26.5.m4.1.1.3.3.3.cmml" xref="S1.T1.26.26.5.m4.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.26.26.5.m4.1c">\in\mathbb{R}^{N\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.26.26.5.m4.1d">∈ blackboard_R start_POSTSUPERSCRIPT italic_N × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.26.26.7"><span class="ltx_text" id="S1.T1.26.26.7.1" style="font-size:90%;">Query, key, value matrices</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.29.29">
<td class="ltx_td ltx_align_left" id="S1.T1.27.27.1"><math alttext="T" class="ltx_Math" display="inline" id="S1.T1.27.27.1.m1.1"><semantics id="S1.T1.27.27.1.m1.1a"><mi id="S1.T1.27.27.1.m1.1.1" mathsize="90%" xref="S1.T1.27.27.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S1.T1.27.27.1.m1.1b"><ci id="S1.T1.27.27.1.m1.1.1.cmml" xref="S1.T1.27.27.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.27.27.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="S1.T1.27.27.1.m1.1d">italic_T</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S1.T1.29.29.4"><span class="ltx_text" id="S1.T1.29.29.4.1" style="font-size:90%;">Total number of chunks</span></td>
<td class="ltx_td ltx_align_left" id="S1.T1.29.29.3">
<math alttext="\mathbf{M}" class="ltx_Math" display="inline" id="S1.T1.28.28.2.m1.1"><semantics id="S1.T1.28.28.2.m1.1a"><mi id="S1.T1.28.28.2.m1.1.1" mathsize="90%" xref="S1.T1.28.28.2.m1.1.1.cmml">𝐌</mi><annotation-xml encoding="MathML-Content" id="S1.T1.28.28.2.m1.1b"><ci id="S1.T1.28.28.2.m1.1.1.cmml" xref="S1.T1.28.28.2.m1.1.1">𝐌</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.28.28.2.m1.1c">\mathbf{M}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.28.28.2.m1.1d">bold_M</annotation></semantics></math><span class="ltx_text" id="S1.T1.29.29.3.1" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{d\times d}" class="ltx_Math" display="inline" id="S1.T1.29.29.3.m2.1"><semantics id="S1.T1.29.29.3.m2.1a"><mrow id="S1.T1.29.29.3.m2.1.1" xref="S1.T1.29.29.3.m2.1.1.cmml"><mi id="S1.T1.29.29.3.m2.1.1.2" xref="S1.T1.29.29.3.m2.1.1.2.cmml"></mi><mo id="S1.T1.29.29.3.m2.1.1.1" mathsize="90%" xref="S1.T1.29.29.3.m2.1.1.1.cmml">∈</mo><msup id="S1.T1.29.29.3.m2.1.1.3" xref="S1.T1.29.29.3.m2.1.1.3.cmml"><mi id="S1.T1.29.29.3.m2.1.1.3.2" mathsize="90%" xref="S1.T1.29.29.3.m2.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.29.29.3.m2.1.1.3.3" xref="S1.T1.29.29.3.m2.1.1.3.3.cmml"><mi id="S1.T1.29.29.3.m2.1.1.3.3.2" mathsize="90%" xref="S1.T1.29.29.3.m2.1.1.3.3.2.cmml">d</mi><mo id="S1.T1.29.29.3.m2.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.29.29.3.m2.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.29.29.3.m2.1.1.3.3.3" mathsize="90%" xref="S1.T1.29.29.3.m2.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.29.29.3.m2.1b"><apply id="S1.T1.29.29.3.m2.1.1.cmml" xref="S1.T1.29.29.3.m2.1.1"><in id="S1.T1.29.29.3.m2.1.1.1.cmml" xref="S1.T1.29.29.3.m2.1.1.1"></in><csymbol cd="latexml" id="S1.T1.29.29.3.m2.1.1.2.cmml" xref="S1.T1.29.29.3.m2.1.1.2">absent</csymbol><apply id="S1.T1.29.29.3.m2.1.1.3.cmml" xref="S1.T1.29.29.3.m2.1.1.3"><csymbol cd="ambiguous" id="S1.T1.29.29.3.m2.1.1.3.1.cmml" xref="S1.T1.29.29.3.m2.1.1.3">superscript</csymbol><ci id="S1.T1.29.29.3.m2.1.1.3.2.cmml" xref="S1.T1.29.29.3.m2.1.1.3.2">ℝ</ci><apply id="S1.T1.29.29.3.m2.1.1.3.3.cmml" xref="S1.T1.29.29.3.m2.1.1.3.3"><times id="S1.T1.29.29.3.m2.1.1.3.3.1.cmml" xref="S1.T1.29.29.3.m2.1.1.3.3.1"></times><ci id="S1.T1.29.29.3.m2.1.1.3.3.2.cmml" xref="S1.T1.29.29.3.m2.1.1.3.3.2">𝑑</ci><ci id="S1.T1.29.29.3.m2.1.1.3.3.3.cmml" xref="S1.T1.29.29.3.m2.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.29.29.3.m2.1c">\in\mathbb{R}^{d\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.29.29.3.m2.1d">∈ blackboard_R start_POSTSUPERSCRIPT italic_d × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S1.T1.29.29.5"><span class="ltx_text" id="S1.T1.29.29.5.1" style="font-size:90%;">Memory state matrix</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.34.34">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.30.30.1"><math alttext="C" class="ltx_Math" display="inline" id="S1.T1.30.30.1.m1.1"><semantics id="S1.T1.30.30.1.m1.1a"><mi id="S1.T1.30.30.1.m1.1.1" mathsize="90%" xref="S1.T1.30.30.1.m1.1.1.cmml">C</mi><annotation-xml encoding="MathML-Content" id="S1.T1.30.30.1.m1.1b"><ci id="S1.T1.30.30.1.m1.1.1.cmml" xref="S1.T1.30.30.1.m1.1.1">𝐶</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.30.30.1.m1.1c">C</annotation><annotation encoding="application/x-llamapun" id="S1.T1.30.30.1.m1.1d">italic_C</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.34.34.6"><span class="ltx_text" id="S1.T1.34.34.6.1" style="font-size:90%;">Chunk length</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.34.34.5">
<math alttext="\mathbf{W}_{Q}" class="ltx_Math" display="inline" id="S1.T1.31.31.2.m1.1"><semantics id="S1.T1.31.31.2.m1.1a"><msub id="S1.T1.31.31.2.m1.1.1" xref="S1.T1.31.31.2.m1.1.1.cmml"><mi id="S1.T1.31.31.2.m1.1.1.2" mathsize="90%" xref="S1.T1.31.31.2.m1.1.1.2.cmml">𝐖</mi><mi id="S1.T1.31.31.2.m1.1.1.3" mathsize="90%" xref="S1.T1.31.31.2.m1.1.1.3.cmml">Q</mi></msub><annotation-xml encoding="MathML-Content" id="S1.T1.31.31.2.m1.1b"><apply id="S1.T1.31.31.2.m1.1.1.cmml" xref="S1.T1.31.31.2.m1.1.1"><csymbol cd="ambiguous" id="S1.T1.31.31.2.m1.1.1.1.cmml" xref="S1.T1.31.31.2.m1.1.1">subscript</csymbol><ci id="S1.T1.31.31.2.m1.1.1.2.cmml" xref="S1.T1.31.31.2.m1.1.1.2">𝐖</ci><ci id="S1.T1.31.31.2.m1.1.1.3.cmml" xref="S1.T1.31.31.2.m1.1.1.3">𝑄</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.31.31.2.m1.1c">\mathbf{W}_{Q}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.31.31.2.m1.1d">bold_W start_POSTSUBSCRIPT italic_Q end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S1.T1.34.34.5.1" style="font-size:90%;">, </span><math alttext="\mathbf{W}_{K}" class="ltx_Math" display="inline" id="S1.T1.32.32.3.m2.1"><semantics id="S1.T1.32.32.3.m2.1a"><msub id="S1.T1.32.32.3.m2.1.1" xref="S1.T1.32.32.3.m2.1.1.cmml"><mi id="S1.T1.32.32.3.m2.1.1.2" mathsize="90%" xref="S1.T1.32.32.3.m2.1.1.2.cmml">𝐖</mi><mi id="S1.T1.32.32.3.m2.1.1.3" mathsize="90%" xref="S1.T1.32.32.3.m2.1.1.3.cmml">K</mi></msub><annotation-xml encoding="MathML-Content" id="S1.T1.32.32.3.m2.1b"><apply id="S1.T1.32.32.3.m2.1.1.cmml" xref="S1.T1.32.32.3.m2.1.1"><csymbol cd="ambiguous" id="S1.T1.32.32.3.m2.1.1.1.cmml" xref="S1.T1.32.32.3.m2.1.1">subscript</csymbol><ci id="S1.T1.32.32.3.m2.1.1.2.cmml" xref="S1.T1.32.32.3.m2.1.1.2">𝐖</ci><ci id="S1.T1.32.32.3.m2.1.1.3.cmml" xref="S1.T1.32.32.3.m2.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.32.32.3.m2.1c">\mathbf{W}_{K}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.32.32.3.m2.1d">bold_W start_POSTSUBSCRIPT italic_K end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S1.T1.34.34.5.2" style="font-size:90%;">, </span><math alttext="\mathbf{W}_{V}" class="ltx_Math" display="inline" id="S1.T1.33.33.4.m3.1"><semantics id="S1.T1.33.33.4.m3.1a"><msub id="S1.T1.33.33.4.m3.1.1" xref="S1.T1.33.33.4.m3.1.1.cmml"><mi id="S1.T1.33.33.4.m3.1.1.2" mathsize="90%" xref="S1.T1.33.33.4.m3.1.1.2.cmml">𝐖</mi><mi id="S1.T1.33.33.4.m3.1.1.3" mathsize="90%" xref="S1.T1.33.33.4.m3.1.1.3.cmml">V</mi></msub><annotation-xml encoding="MathML-Content" id="S1.T1.33.33.4.m3.1b"><apply id="S1.T1.33.33.4.m3.1.1.cmml" xref="S1.T1.33.33.4.m3.1.1"><csymbol cd="ambiguous" id="S1.T1.33.33.4.m3.1.1.1.cmml" xref="S1.T1.33.33.4.m3.1.1">subscript</csymbol><ci id="S1.T1.33.33.4.m3.1.1.2.cmml" xref="S1.T1.33.33.4.m3.1.1.2">𝐖</ci><ci id="S1.T1.33.33.4.m3.1.1.3.cmml" xref="S1.T1.33.33.4.m3.1.1.3">𝑉</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.33.33.4.m3.1c">\mathbf{W}_{V}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.33.33.4.m3.1d">bold_W start_POSTSUBSCRIPT italic_V end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S1.T1.34.34.5.3" style="font-size:90%;"> </span><math alttext="\in\mathbb{R}^{d\times d}" class="ltx_Math" display="inline" id="S1.T1.34.34.5.m4.1"><semantics id="S1.T1.34.34.5.m4.1a"><mrow id="S1.T1.34.34.5.m4.1.1" xref="S1.T1.34.34.5.m4.1.1.cmml"><mi id="S1.T1.34.34.5.m4.1.1.2" xref="S1.T1.34.34.5.m4.1.1.2.cmml"></mi><mo id="S1.T1.34.34.5.m4.1.1.1" mathsize="90%" xref="S1.T1.34.34.5.m4.1.1.1.cmml">∈</mo><msup id="S1.T1.34.34.5.m4.1.1.3" xref="S1.T1.34.34.5.m4.1.1.3.cmml"><mi id="S1.T1.34.34.5.m4.1.1.3.2" mathsize="90%" xref="S1.T1.34.34.5.m4.1.1.3.2.cmml">ℝ</mi><mrow id="S1.T1.34.34.5.m4.1.1.3.3" xref="S1.T1.34.34.5.m4.1.1.3.3.cmml"><mi id="S1.T1.34.34.5.m4.1.1.3.3.2" mathsize="90%" xref="S1.T1.34.34.5.m4.1.1.3.3.2.cmml">d</mi><mo id="S1.T1.34.34.5.m4.1.1.3.3.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="S1.T1.34.34.5.m4.1.1.3.3.1.cmml">×</mo><mi id="S1.T1.34.34.5.m4.1.1.3.3.3" mathsize="90%" xref="S1.T1.34.34.5.m4.1.1.3.3.3.cmml">d</mi></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S1.T1.34.34.5.m4.1b"><apply id="S1.T1.34.34.5.m4.1.1.cmml" xref="S1.T1.34.34.5.m4.1.1"><in id="S1.T1.34.34.5.m4.1.1.1.cmml" xref="S1.T1.34.34.5.m4.1.1.1"></in><csymbol cd="latexml" id="S1.T1.34.34.5.m4.1.1.2.cmml" xref="S1.T1.34.34.5.m4.1.1.2">absent</csymbol><apply id="S1.T1.34.34.5.m4.1.1.3.cmml" xref="S1.T1.34.34.5.m4.1.1.3"><csymbol cd="ambiguous" id="S1.T1.34.34.5.m4.1.1.3.1.cmml" xref="S1.T1.34.34.5.m4.1.1.3">superscript</csymbol><ci id="S1.T1.34.34.5.m4.1.1.3.2.cmml" xref="S1.T1.34.34.5.m4.1.1.3.2">ℝ</ci><apply id="S1.T1.34.34.5.m4.1.1.3.3.cmml" xref="S1.T1.34.34.5.m4.1.1.3.3"><times id="S1.T1.34.34.5.m4.1.1.3.3.1.cmml" xref="S1.T1.34.34.5.m4.1.1.3.3.1"></times><ci id="S1.T1.34.34.5.m4.1.1.3.3.2.cmml" xref="S1.T1.34.34.5.m4.1.1.3.3.2">𝑑</ci><ci id="S1.T1.34.34.5.m4.1.1.3.3.3.cmml" xref="S1.T1.34.34.5.m4.1.1.3.3.3">𝑑</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.34.34.5.m4.1c">\in\mathbb{R}^{d\times d}</annotation><annotation encoding="application/x-llamapun" id="S1.T1.34.34.5.m4.1d">∈ blackboard_R start_POSTSUPERSCRIPT italic_d × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.34.34.7"><span class="ltx_text" id="S1.T1.34.34.7.1" style="font-size:90%;">Weight matrices</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists the notations used throughout the paper, clarifying the meaning of indices, mathematical operations, constants, vectors, and matrices.  It serves as a reference for understanding the symbols and their representations within the mathematical formulas and algorithms presented in the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Notations. Indices, operations, constants, vectors and matrices used in the paper.
> </details>





### In-depth insights


#### Linear Attention SP
Sequence parallelism (SP) for linear attention mechanisms presents unique challenges and opportunities.  **Linear attention's inherent computational efficiency**, unlike standard attention, offers a compelling foundation for scaling to longer sequences. However, naive SP approaches may not fully leverage this efficiency, leading to suboptimal speedups. Effective SP methods must carefully consider the communication patterns required to aggregate intermediate results across multiple devices.  **Minimizing communication overhead is paramount**; strategies like all-gather operations (as explored in LASP-2), which aggregate results efficiently, rather than ring-based approaches, are crucial.  **Balancing communication and computation** is key. Carefully designed SP algorithms can ensure sufficient overlap between communication and computation, leading to significant improvements in training throughput.  **Hybrid models**, incorporating both linear and standard attention, present further complexities that demand tailored SP approaches, such as the unified all-gather design in LASP-2H.  **Evaluating the scalability** of different SP techniques across various sequence lengths and hardware configurations is also crucial to understanding their practical limitations and optimal deployment strategies.  The success of linear attention SP hinges on efficiently managing communication and harnessing the inherent computational advantages of linear attention, leading to more efficient and scalable training of large language models. 

#### LASP-2 Algorithm
The LASP-2 algorithm presents a refined approach to sequence parallelism (SP) in linear attention models.  **Its core innovation lies in rethinking minimal communication requirements**, moving from a ring-style communication to a single all-gather collective communication operation. This shift dramatically improves both communication and computation parallelism, especially for longer sequences.  The algorithm's efficiency stems from its **independent sequence length memory states** for the all-gather operation and an **optimized workflow** that minimizes redundant computation and improves communication-computation overlap. LASP-2's extension to hybrid models (LASP-2H) further enhances its applicability by applying the same efficient communication strategy to standard attention layers, offering a **unified and efficient solution for blended models**.  **Key advantages** include reduced communication costs, superior throughput, and improved scalability compared to previous methods. The algorithm's design considers both autoregressive and bidirectional tasks, handling masking effectively for each.

#### Hybrid Model SP
The concept of 'Hybrid Model SP' in the context of large language models (LLMs) and sequence parallelism (SP) refers to **optimizing parallel processing techniques for models that combine both linear and standard attention mechanisms**.  Linear attention offers advantages in terms of speed and memory efficiency over the quadratic complexity of standard attention, but it may struggle with certain tasks.  Standard attention, while computationally expensive, excels in tasks demanding high recall.  A hybrid model leverages the strengths of both approaches.  The challenge in 'Hybrid Model SP' lies in efficiently parallelizing the distinct computational workflows of linear and standard attention.  **LASP-2H, as described in the paper, attempts to resolve this by using a unified all-gather communication strategy for both**. This approach aims to minimize communication overhead and maximize overlap between communication and computation, leading to significant speed improvements in training compared to traditional methods such as ring-based communication.  **The effectiveness of this unified approach hinges on the ability to seamlessly integrate the communication patterns of both attention types**, thereby avoiding performance bottlenecks in either linear or standard components.  The success of this strategy will determine the efficacy of 'Hybrid Model SP' as a practical method for scaling long-context LLMs.

#### Scalability Analysis
A robust scalability analysis of a large language model (LLM) should go beyond simply reporting throughput numbers.  It must delve into the **trade-offs between throughput, memory usage per GPU, and the number of GPUs used**.  The analysis needs to explore how the model's performance changes as these factors are scaled.  For example, it's crucial to investigate whether the improvements in throughput are linear or sublinear with increasing GPU count, and what the corresponding memory footprint implications are.  A strong analysis would also consider the **communication overhead** inherent in distributed training, examining its impact on overall scalability.   Investigating how the communication cost scales with the sequence length and the number of GPUs is essential for understanding the true scalability limitations.  Furthermore, the **impact of different attention mechanisms** on scalability should be assessed.  The analysis should discuss whether linear attention, compared to standard attention, exhibits superior scalability, and if so, under which conditions. Finally, the analysis should evaluate the **stability and reliability of the scaling** across different hardware and software configurations, emphasizing any potential bottlenecks or limitations.

#### Future Directions
Future research directions stemming from the LASP-2 paper could explore several promising avenues.  **Extending LASP-2H to more complex hybrid architectures** that incorporate diverse attention mechanisms beyond standard and linear attention is crucial.  This would involve investigating the optimal interplay between different attention types for various tasks and sequence lengths.  **A detailed empirical study comparing LASP-2's performance across different hardware platforms and network topologies** would enhance its practical applicability and reveal potential bottlenecks.  **Investigating adaptive or dynamic sequence partitioning strategies** within LASP-2, adjusting chunk sizes based on the sequence's inherent properties or computational demands, could further improve efficiency.  Finally, exploring the **integration of LASP-2 with other optimization techniques**, such as quantization and pruning, promises significant performance gains. These advancements will solidify LASP-2's position as a leading technology for large-scale sequence processing and will enable more computationally intensive tasks in various domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.07563/x2.png)

> 🔼 Figure 2 illustrates the LASP-2H approach applied to a hybrid model containing both linear and standard attention layers.  The diagram showcases two dimensions of parallelism: Tensor Parallelism (TP) and Sequence Parallelism (SP), each split into two parts.  Communication patterns, whether all-gather (AG), reduce-scatter (RS), or no-operation (No-op), are indicated for both forward and backward passes.  The key difference highlighted is that Sequence Parallelism in linear attention layers operates on memory states (Mt) of dimensions d x d, whereas in standard attention, it operates on key (Kt) and value (Vt) states of dimensions C x d.  The colors yellow and green distinguish between TP and SP communication operations respectively.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visualization of LASP-2H on Linear Attention and Standard Attention hybrid model. We exemplify LASP-2H on the hybrid layers of linear attention and standard attention modules with both TP and SP (both have a dimension of 2). The communication operations colored in yellow and green are for TP and SP, respectively. AG/RS: all-gather in forward and reduce-scatter in backward, and vice versa. AG/No: all-gather in forward and no-op in backward, and vice versa. Note that the SP communication operations for linear attention operate on the memory state 𝐌t∈ℝd×dsubscript𝐌𝑡superscriptℝ𝑑𝑑\mathbf{M}_{t}\in\mathbb{R}^{d\times d}bold_M start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ∈ blackboard_R start_POSTSUPERSCRIPT italic_d × italic_d end_POSTSUPERSCRIPT, while for standard attention, they operate on states 𝐊t,𝐕t∈ℝC×dsubscript𝐊𝑡subscript𝐕𝑡superscriptℝ𝐶𝑑\mathbf{K}_{t},\mathbf{V}_{t}\in\mathbb{R}^{C\times d}bold_K start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , bold_V start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ∈ blackboard_R start_POSTSUPERSCRIPT italic_C × italic_d end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2502.07563/x3.png)

> 🔼 Figure 3 presents a performance comparison of different sequence parallelism (SP) methods for training a large language model (LLM).  The experiment uses a Linear-Llama3-1B model, a variant of the Llama3 model where standard attention is replaced with basic linear attention, making the training time linear with sequence length. A total of 64 A100 GPUs were used in parallel to accelerate training. The SP size (T) was set to 64, and to enable training with very-long sequences (up to 2048K tokens), the batch size was maintained at 1. The plot displays the throughput (tokens/second) of LASP-2 against other methods such as Megatron-SP, Ring Attention, and LASP-1, across a range of sequence lengths.  The results demonstrate the superior speed and scalability of LASP-2, particularly as sequence lengths increase beyond 64K tokens.
> <details>
> <summary>read the caption</summary>
> Figure 3: Speed Comparison (tokens/s). Experiments were carried out on a pure Linear-Llama3-1B model, utilizing the basic linear attention module. A total of 64 A100 GPUs were employed, and the SP size T𝑇Titalic_T was also set to 64. To accommodate very-long sequence lengths, such as 2048K, the batch size was kept fixed at 1 throughout this experiment.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.3">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1" style="font-size:90%;">SP Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1" style="font-size:90%;">Attention Module</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1" style="font-size:90%;">Pure Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1">
<math alttext="1/4" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mn id="S4.T2.1.1.1.m1.1.1.2" mathsize="90%" xref="S4.T2.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S4.T2.1.1.1.m1.1.1.1" maxsize="90%" minsize="90%" stretchy="true" symmetric="true" xref="S4.T2.1.1.1.m1.1.1.1.cmml">/</mo><mn id="S4.T2.1.1.1.m1.1.1.3" mathsize="90%" xref="S4.T2.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><divide id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1.1"></divide><cn id="S4.T2.1.1.1.m1.1.1.2.cmml" type="integer" xref="S4.T2.1.1.1.m1.1.1.2">1</cn><cn id="S4.T2.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">1/4</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">1 / 4</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1" style="font-size:90%;"> Hybrid Model</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.1" style="font-size:90%;">Thpt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.2.1" style="font-size:90%;">Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.3.1" style="font-size:90%;">Thpt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.4.1" style="font-size:90%;">Loss</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.3.3"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;">Llama3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.3.4"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:90%;">Ring Attention</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.3.5"><span class="ltx_text" id="S4.T2.3.3.5.1" style="font-size:90%;">Standard Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.6"><span class="ltx_text" id="S4.T2.3.3.6.1" style="font-size:90%;">16549.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.7"><span class="ltx_text" id="S4.T2.3.3.7.1" style="font-size:90%;">2.759</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1"><math alttext="\backslash" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mo id="S4.T2.2.2.1.m1.1.1" mathsize="90%" xref="S4.T2.2.2.1.m1.1.1.cmml">\</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><ci id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1">\</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">\backslash</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">\</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.2"><math alttext="\backslash" class="ltx_Math" display="inline" id="S4.T2.3.3.2.m1.1"><semantics id="S4.T2.3.3.2.m1.1a"><mo id="S4.T2.3.3.2.m1.1.1" mathsize="90%" xref="S4.T2.3.3.2.m1.1.1.cmml">\</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.2.m1.1b"><ci id="S4.T2.3.3.2.m1.1.1.cmml" xref="S4.T2.3.3.2.m1.1.1">\</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.2.m1.1c">\backslash</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.2.m1.1d">\</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.3.5.1" rowspan="6"><span class="ltx_text" id="S4.T2.3.5.1.1" style="font-size:90%;"><span class="ltx_text" id="S4.T2.3.5.1.1.1"></span> <span class="ltx_text" id="S4.T2.3.5.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.3.5.1.1.2.1">
<span class="ltx_tr" id="S4.T2.3.5.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.5.1.1.2.1.1.1">Linear-Llama3</span></span>
</span></span> <span class="ltx_text" id="S4.T2.3.5.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.3.5.2" rowspan="6"><span class="ltx_text" id="S4.T2.3.5.2.1" style="font-size:90%;"><span class="ltx_text" id="S4.T2.3.5.2.1.1"></span> <span class="ltx_text" id="S4.T2.3.5.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.3.5.2.1.2.1">
<span class="ltx_tr" id="S4.T2.3.5.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.5.2.1.2.1.1.1">LASP-2(H)</span></span>
</span></span> <span class="ltx_text" id="S4.T2.3.5.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.3.5.3"><span class="ltx_text" id="S4.T2.3.5.3.1" style="font-size:90%;">Basic Linear Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.4"><span class="ltx_text" id="S4.T2.3.5.4.1" style="font-size:90%;">17834.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.5"><span class="ltx_text" id="S4.T2.3.5.5.1" style="font-size:90%;">2.892</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.6"><span class="ltx_text" id="S4.T2.3.5.6.1" style="font-size:90%;">17394.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.7"><span class="ltx_text" id="S4.T2.3.5.7.1" style="font-size:90%;">2.824</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6">
<td class="ltx_td ltx_align_left" id="S4.T2.3.6.1"><span class="ltx_text" id="S4.T2.3.6.1.1" style="font-size:90%;">Lightning Attention</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.2"><span class="ltx_text" id="S4.T2.3.6.2.1" style="font-size:90%;">17926.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3"><span class="ltx_text" id="S4.T2.3.6.3.1" style="font-size:90%;">2.862</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.4"><span class="ltx_text" id="S4.T2.3.6.4.1" style="font-size:90%;">17384.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5"><span class="ltx_text" id="S4.T2.3.6.5.1" style="font-size:90%;">2.758</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7">
<td class="ltx_td ltx_align_left" id="S4.T2.3.7.1"><span class="ltx_text" id="S4.T2.3.7.1.1" style="font-size:90%;">Retention</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.2"><span class="ltx_text" id="S4.T2.3.7.2.1" style="font-size:90%;">17859.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.3"><span class="ltx_text" id="S4.T2.3.7.3.1" style="font-size:90%;">2.867</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4"><span class="ltx_text" id="S4.T2.3.7.4.1" style="font-size:90%;">17352.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.5"><span class="ltx_text" id="S4.T2.3.7.5.1" style="font-size:90%;">2.759</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8">
<td class="ltx_td ltx_align_left" id="S4.T2.3.8.1"><span class="ltx_text" id="S4.T2.3.8.1.1" style="font-size:90%;">GLA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.2"><span class="ltx_text" id="S4.T2.3.8.2.1" style="font-size:90%;">17785.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.3"><span class="ltx_text" id="S4.T2.3.8.3.1" style="font-size:90%;">2.845</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.4"><span class="ltx_text" id="S4.T2.3.8.4.1" style="font-size:90%;">17273.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5"><span class="ltx_text" id="S4.T2.3.8.5.1" style="font-size:90%;">2.754</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.9">
<td class="ltx_td ltx_align_left" id="S4.T2.3.9.1"><span class="ltx_text" id="S4.T2.3.9.1.1" style="font-size:90%;">Based</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.2"><span class="ltx_text" id="S4.T2.3.9.2.1" style="font-size:90%;">17946.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.3"><span class="ltx_text" id="S4.T2.3.9.3.1" style="font-size:90%;">2.754</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.4"><span class="ltx_text" id="S4.T2.3.9.4.1" style="font-size:90%;">17462.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.5"><span class="ltx_text" id="S4.T2.3.9.5.1" style="font-size:90%;">2.751</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.10.1"><span class="ltx_text" id="S4.T2.3.10.1.1" style="font-size:90%;">Rebased</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.2"><span class="ltx_text" id="S4.T2.3.10.2.1" style="font-size:90%;">17896.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.3"><span class="ltx_text" id="S4.T2.3.10.3.1" style="font-size:90%;">2.845</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.4"><span class="ltx_text" id="S4.T2.3.10.4.1" style="font-size:90%;">17284.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.5"><span class="ltx_text" id="S4.T2.3.10.5.1" style="font-size:90%;">2.787</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the convergence performance results of different models trained using various sequence parallelism methods.  The models were trained on 50 billion tokens from the SlimPajama corpus using 8 A100 GPUs, a sequence length of 16,000 tokens, and a batch size of 8. The table compares the throughput (tokens per second) and loss for pure linear models and 1/4 hybrid models (combining linear and standard attention layers) using different attention mechanisms and sequence parallelism methods.  The results show the training efficiency and convergence properties of each configuration.
> <details>
> <summary>read the caption</summary>
> Table 2: Convergence Performance Results. All experiments used 8 A100 GPUs, sequence length of 16K, and batch size of 8, trained on 50B tokens from the SlimPajama corpus.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.5">
<tr class="ltx_tr" id="A1.T3.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.5.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.5.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.2.1" style="font-size:90%;">Training Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.5.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.5.1.3.1" style="font-size:90%;">Validation Loss</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.5.2.1"><span class="ltx_text" id="A1.T3.5.2.1.1" style="font-size:90%;">RoBERTa Baseline (Ring Attention)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.2.2"><span class="ltx_text" id="A1.T3.5.2.2.1" style="font-size:90%;">1.815</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.5.2.3"><span class="ltx_text" id="A1.T3.5.2.3.1" style="font-size:90%;">1.957</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.5.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T3.5.3.1"><span class="ltx_text" id="A1.T3.5.3.1.1" style="font-size:90%;">RoBERTa with Basic Linear Attention (LASP-2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.3.2"><span class="ltx_text" id="A1.T3.5.3.2.1" style="font-size:90%;">1.813</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.5.3.3"><span class="ltx_text" id="A1.T3.5.3.3.1" style="font-size:90%;">1.957</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the training and validation loss values achieved during bidirectional language modeling experiments using different model configurations.  The results demonstrate the performance of the ROBERTa baseline model (with Ring Attention) compared to a model employing the Basic Linear Attention mechanism and the LASP-2 technique.
> <details>
> <summary>read the caption</summary>
> Table 3: Convergence Performance on Bidirectional Language Modeling Task. Both training and validation loss values are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.5">
<tr class="ltx_tr" id="A1.T4.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.5.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.5.1.1.1" style="font-size:90%;">Linear Sequence Modeling Module</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.5.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.5.1.2.1" style="font-size:90%;">0 Hybrid (Pure Linear Model)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.5.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.5.1.3.1" style="font-size:90%;">1/8 Hybrid</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.5.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.5.1.4.1" style="font-size:90%;">1/4 Hybrid</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.5.1.5"><span class="ltx_text ltx_font_bold" id="A1.T4.5.1.5.1" style="font-size:90%;">1/2 Hybrid</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.5.2.1"><span class="ltx_text" id="A1.T4.5.2.1.1" style="font-size:90%;">Basic Linear Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.2.2"><span class="ltx_text" id="A1.T4.5.2.2.1" style="font-size:90%;">2.892</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.2.3"><span class="ltx_text" id="A1.T4.5.2.3.1" style="font-size:90%;">2.826</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.2.4"><span class="ltx_text" id="A1.T4.5.2.4.1" style="font-size:90%;">2.824</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.2.5"><span class="ltx_text" id="A1.T4.5.2.5.1" style="font-size:90%;">2.775</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.5.3.1"><span class="ltx_text" id="A1.T4.5.3.1.1" style="font-size:90%;">Lightning Attention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.3.2"><span class="ltx_text" id="A1.T4.5.3.2.1" style="font-size:90%;">2.848</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.3.3"><span class="ltx_text" id="A1.T4.5.3.3.1" style="font-size:90%;">2.756</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.3.4"><span class="ltx_text" id="A1.T4.5.3.4.1" style="font-size:90%;">2.750</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.3.5"><span class="ltx_text" id="A1.T4.5.3.5.1" style="font-size:90%;">2.742</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.5.4.1"><span class="ltx_text" id="A1.T4.5.4.1.1" style="font-size:90%;">Retention</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.4.2"><span class="ltx_text" id="A1.T4.5.4.2.1" style="font-size:90%;">2.855</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.4.3"><span class="ltx_text" id="A1.T4.5.4.3.1" style="font-size:90%;">2.757</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.4.4"><span class="ltx_text" id="A1.T4.5.4.4.1" style="font-size:90%;">2.758</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.4.5"><span class="ltx_text" id="A1.T4.5.4.5.1" style="font-size:90%;">2.748</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T4.5.5.1"><span class="ltx_text" id="A1.T4.5.5.1.1" style="font-size:90%;">GLA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.5.5.2"><span class="ltx_text" id="A1.T4.5.5.2.1" style="font-size:90%;">2.845</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.5.5.3"><span class="ltx_text" id="A1.T4.5.5.3.1" style="font-size:90%;">2.751</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.5.5.4"><span class="ltx_text" id="A1.T4.5.5.4.1" style="font-size:90%;">2.754</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.5.5.5"><span class="ltx_text" id="A1.T4.5.5.5.1" style="font-size:90%;">2.753</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of varying the ratio of linear and standard attention layers in hybrid models.  The study measures the loss values achieved by different model configurations.  Specifically, it compares models with various ratios of linear to standard attention layers (0%, 12.5%, 25%, and 50%). The performance is analyzed for different linear attention mechanisms (Basic Linear Attention, Lightning Attention, Retention, and GLA). Note that pure linear models (0% hybrid ratio) use the LASP-2 algorithm for sequence parallelism, while hybrid models utilize the LASP-2H algorithm.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation Study on Hybrid Ratio in Hybrid Models. Loss values are reported in the Table. Note that pure linear models use LASP-2, while hybrid models use LASP-2H.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.5">
<tr class="ltx_tr" id="A1.T5.5.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.5.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.5.1.1.1" style="font-size:90%;">Split Size of Gathering</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.5.1.2"><span class="ltx_text" id="A1.T5.5.1.2.1" style="font-size:90%;">2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.5.1.3"><span class="ltx_text" id="A1.T5.5.1.3.1" style="font-size:90%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.5.1.4"><span class="ltx_text" id="A1.T5.5.1.4.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.5.1.5"><span class="ltx_text" id="A1.T5.5.1.5.1" style="font-size:90%;">32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.5.2.1"><span class="ltx_text ltx_font_bold" id="A1.T5.5.2.1.1" style="font-size:90%;">Number of Splits</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.2.2"><span class="ltx_text" id="A1.T5.5.2.2.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.2.3"><span class="ltx_text" id="A1.T5.5.2.3.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.2.4"><span class="ltx_text" id="A1.T5.5.2.4.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.2.5"><span class="ltx_text" id="A1.T5.5.2.5.1" style="font-size:90%;">64</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T5.5.3.1"><span class="ltx_text ltx_font_bold" id="A1.T5.5.3.1.1" style="font-size:90%;">Throughput</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.5.3.2"><span class="ltx_text" id="A1.T5.5.3.2.1" style="font-size:90%;">486183</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.5.3.3"><span class="ltx_text" id="A1.T5.5.3.3.1" style="font-size:90%;">486166</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.5.3.4"><span class="ltx_text" id="A1.T5.5.3.4.1" style="font-size:90%;">486169</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.5.3.5"><span class="ltx_text" id="A1.T5.5.3.5.1" style="font-size:90%;">486158</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the throughput (tokens per second) achieved by LASP-2 on the Linear-Llama3-1B model with varying split sizes for gathering memory states.  The experiment uses a model with 16 attention heads and a hidden dimension of 2048. Different split sizes correspond to different numbers of parallel operations during the all-gather communication. The results showcase the impact of altering the parallelism level on the overall model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Throughput Results (tokens/sec) on Varying Split Sizes of Gathering. Linear-Llama3-1B model (with 16 heads and hidden dimension of 2048) is used.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.5">
<tr class="ltx_tr" id="A1.T6.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.5.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.5.1.1.1" style="font-size:90%;">Sequence Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.5.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.5.1.2.1" style="font-size:90%;">Number of GPUs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.5.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.5.1.3.1" style="font-size:90%;">Throughput</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.5.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.1.4.1" style="font-size:90%;">Memory Usage Per GPU</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.2.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.2.1.1" style="font-size:90%;">2K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.2.2"><span class="ltx_text" id="A1.T6.5.2.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.2.3"><span class="ltx_text" id="A1.T6.5.2.3.1" style="font-size:90%;">1254</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.2.4"><span class="ltx_text" id="A1.T6.5.2.4.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.3">
<td class="ltx_td ltx_align_center" id="A1.T6.5.3.1"><span class="ltx_text" id="A1.T6.5.3.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.3.2"><span class="ltx_text" id="A1.T6.5.3.2.1" style="font-size:90%;">1209</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.3.3"><span class="ltx_text" id="A1.T6.5.3.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.4">
<td class="ltx_td ltx_align_center" id="A1.T6.5.4.1"><span class="ltx_text" id="A1.T6.5.4.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.4.2"><span class="ltx_text" id="A1.T6.5.4.2.1" style="font-size:90%;">1285</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.4.3"><span class="ltx_text" id="A1.T6.5.4.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5">
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.1"><span class="ltx_text" id="A1.T6.5.5.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.2"><span class="ltx_text" id="A1.T6.5.5.2.1" style="font-size:90%;">1205</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.3"><span class="ltx_text" id="A1.T6.5.5.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.6.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.6.1.1" style="font-size:90%;">4K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.6.2"><span class="ltx_text" id="A1.T6.5.6.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.6.3"><span class="ltx_text" id="A1.T6.5.6.3.1" style="font-size:90%;">2478</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.6.4"><span class="ltx_text" id="A1.T6.5.6.4.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.7">
<td class="ltx_td ltx_align_center" id="A1.T6.5.7.1"><span class="ltx_text" id="A1.T6.5.7.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.7.2"><span class="ltx_text" id="A1.T6.5.7.2.1" style="font-size:90%;">2446</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.7.3"><span class="ltx_text" id="A1.T6.5.7.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.8">
<td class="ltx_td ltx_align_center" id="A1.T6.5.8.1"><span class="ltx_text" id="A1.T6.5.8.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.8.2"><span class="ltx_text" id="A1.T6.5.8.2.1" style="font-size:90%;">2327</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.8.3"><span class="ltx_text" id="A1.T6.5.8.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.9">
<td class="ltx_td ltx_align_center" id="A1.T6.5.9.1"><span class="ltx_text" id="A1.T6.5.9.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.9.2"><span class="ltx_text" id="A1.T6.5.9.2.1" style="font-size:90%;">2344</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.9.3"><span class="ltx_text" id="A1.T6.5.9.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.10.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.10.1.1" style="font-size:90%;">8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.10.2"><span class="ltx_text" id="A1.T6.5.10.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.10.3"><span class="ltx_text" id="A1.T6.5.10.3.1" style="font-size:90%;">4835</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.10.4"><span class="ltx_text" id="A1.T6.5.10.4.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.11">
<td class="ltx_td ltx_align_center" id="A1.T6.5.11.1"><span class="ltx_text" id="A1.T6.5.11.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.11.2"><span class="ltx_text" id="A1.T6.5.11.2.1" style="font-size:90%;">4784</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.11.3"><span class="ltx_text" id="A1.T6.5.11.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.12">
<td class="ltx_td ltx_align_center" id="A1.T6.5.12.1"><span class="ltx_text" id="A1.T6.5.12.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.12.2"><span class="ltx_text" id="A1.T6.5.12.2.1" style="font-size:90%;">4693</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.12.3"><span class="ltx_text" id="A1.T6.5.12.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.13">
<td class="ltx_td ltx_align_center" id="A1.T6.5.13.1"><span class="ltx_text" id="A1.T6.5.13.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.13.2"><span class="ltx_text" id="A1.T6.5.13.2.1" style="font-size:90%;">4678</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.13.3"><span class="ltx_text" id="A1.T6.5.13.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.14.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.14.1.1" style="font-size:90%;">16K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.14.2"><span class="ltx_text" id="A1.T6.5.14.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.14.3"><span class="ltx_text" id="A1.T6.5.14.3.1" style="font-size:90%;">9530</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.14.4"><span class="ltx_text" id="A1.T6.5.14.4.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.15">
<td class="ltx_td ltx_align_center" id="A1.T6.5.15.1"><span class="ltx_text" id="A1.T6.5.15.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.15.2"><span class="ltx_text" id="A1.T6.5.15.2.1" style="font-size:90%;">9494</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.15.3"><span class="ltx_text" id="A1.T6.5.15.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.16">
<td class="ltx_td ltx_align_center" id="A1.T6.5.16.1"><span class="ltx_text" id="A1.T6.5.16.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.16.2"><span class="ltx_text" id="A1.T6.5.16.2.1" style="font-size:90%;">9305</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.16.3"><span class="ltx_text" id="A1.T6.5.16.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.17">
<td class="ltx_td ltx_align_center" id="A1.T6.5.17.1"><span class="ltx_text" id="A1.T6.5.17.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.17.2"><span class="ltx_text" id="A1.T6.5.17.2.1" style="font-size:90%;">9313</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.17.3"><span class="ltx_text" id="A1.T6.5.17.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.18.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.18.1.1" style="font-size:90%;">32K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.18.2"><span class="ltx_text" id="A1.T6.5.18.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.18.3"><span class="ltx_text" id="A1.T6.5.18.3.1" style="font-size:90%;">18105</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.18.4"><span class="ltx_text" id="A1.T6.5.18.4.1" style="font-size:90%;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.19">
<td class="ltx_td ltx_align_center" id="A1.T6.5.19.1"><span class="ltx_text" id="A1.T6.5.19.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.19.2"><span class="ltx_text" id="A1.T6.5.19.2.1" style="font-size:90%;">17755</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.19.3"><span class="ltx_text" id="A1.T6.5.19.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.20">
<td class="ltx_td ltx_align_center" id="A1.T6.5.20.1"><span class="ltx_text" id="A1.T6.5.20.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.20.2"><span class="ltx_text" id="A1.T6.5.20.2.1" style="font-size:90%;">17835</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.20.3"><span class="ltx_text" id="A1.T6.5.20.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.21">
<td class="ltx_td ltx_align_center" id="A1.T6.5.21.1"><span class="ltx_text" id="A1.T6.5.21.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.21.2"><span class="ltx_text" id="A1.T6.5.21.2.1" style="font-size:90%;">17807</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.21.3"><span class="ltx_text" id="A1.T6.5.21.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.22">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.22.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.22.1.1" style="font-size:90%;">64K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.22.2"><span class="ltx_text" id="A1.T6.5.22.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.22.3"><span class="ltx_text" id="A1.T6.5.22.3.1" style="font-size:90%;">35507</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.22.4"><span class="ltx_text" id="A1.T6.5.22.4.1" style="font-size:90%;">33.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.23">
<td class="ltx_td ltx_align_center" id="A1.T6.5.23.1"><span class="ltx_text" id="A1.T6.5.23.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.23.2"><span class="ltx_text" id="A1.T6.5.23.2.1" style="font-size:90%;">34240</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.23.3"><span class="ltx_text" id="A1.T6.5.23.3.1" style="font-size:90%;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.24">
<td class="ltx_td ltx_align_center" id="A1.T6.5.24.1"><span class="ltx_text" id="A1.T6.5.24.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.24.2"><span class="ltx_text" id="A1.T6.5.24.2.1" style="font-size:90%;">34118</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.24.3"><span class="ltx_text" id="A1.T6.5.24.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.25">
<td class="ltx_td ltx_align_center" id="A1.T6.5.25.1"><span class="ltx_text" id="A1.T6.5.25.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.25.2"><span class="ltx_text" id="A1.T6.5.25.2.1" style="font-size:90%;">33344</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.25.3"><span class="ltx_text" id="A1.T6.5.25.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.26">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.26.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.26.1.1" style="font-size:90%;">128K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.26.2"><span class="ltx_text" id="A1.T6.5.26.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.26.3"><span class="ltx_text" id="A1.T6.5.26.3.1" style="font-size:90%;">68406</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.26.4"><span class="ltx_text" id="A1.T6.5.26.4.1" style="font-size:90%;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.27">
<td class="ltx_td ltx_align_center" id="A1.T6.5.27.1"><span class="ltx_text" id="A1.T6.5.27.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.27.2"><span class="ltx_text" id="A1.T6.5.27.2.1" style="font-size:90%;">68545</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.27.3"><span class="ltx_text" id="A1.T6.5.27.3.1" style="font-size:90%;">33.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.28">
<td class="ltx_td ltx_align_center" id="A1.T6.5.28.1"><span class="ltx_text" id="A1.T6.5.28.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.28.2"><span class="ltx_text" id="A1.T6.5.28.2.1" style="font-size:90%;">67344</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.28.3"><span class="ltx_text" id="A1.T6.5.28.3.1" style="font-size:90%;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.29">
<td class="ltx_td ltx_align_center" id="A1.T6.5.29.1"><span class="ltx_text" id="A1.T6.5.29.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.29.2"><span class="ltx_text" id="A1.T6.5.29.2.1" style="font-size:90%;">66811</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.29.3"><span class="ltx_text" id="A1.T6.5.29.3.1" style="font-size:90%;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.30">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.30.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.30.1.1" style="font-size:90%;">256K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.30.2"><span class="ltx_text" id="A1.T6.5.30.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.30.3"><span class="ltx_text" id="A1.T6.5.30.3.1" style="font-size:90%;">135635</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.30.4"><span class="ltx_text" id="A1.T6.5.30.4.1" style="font-size:90%;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.31">
<td class="ltx_td ltx_align_center" id="A1.T6.5.31.1"><span class="ltx_text" id="A1.T6.5.31.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.31.2"><span class="ltx_text" id="A1.T6.5.31.2.1" style="font-size:90%;">132605</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.31.3"><span class="ltx_text" id="A1.T6.5.31.3.1" style="font-size:90%;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.32">
<td class="ltx_td ltx_align_center" id="A1.T6.5.32.1"><span class="ltx_text" id="A1.T6.5.32.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.32.2"><span class="ltx_text" id="A1.T6.5.32.2.1" style="font-size:90%;">130215</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.32.3"><span class="ltx_text" id="A1.T6.5.32.3.1" style="font-size:90%;">33.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.33">
<td class="ltx_td ltx_align_center" id="A1.T6.5.33.1"><span class="ltx_text" id="A1.T6.5.33.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.33.2"><span class="ltx_text" id="A1.T6.5.33.2.1" style="font-size:90%;">131550</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.33.3"><span class="ltx_text" id="A1.T6.5.33.3.1" style="font-size:90%;">28.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.34">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.34.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.34.1.1" style="font-size:90%;">512K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.34.2"><span class="ltx_text" id="A1.T6.5.34.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.34.3"><span class="ltx_text" id="A1.T6.5.34.3.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.34.4"><span class="ltx_text" id="A1.T6.5.34.4.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.35">
<td class="ltx_td ltx_align_center" id="A1.T6.5.35.1"><span class="ltx_text" id="A1.T6.5.35.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.35.2"><span class="ltx_text" id="A1.T6.5.35.2.1" style="font-size:90%;">250586</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.35.3"><span class="ltx_text" id="A1.T6.5.35.3.1" style="font-size:90%;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.36">
<td class="ltx_td ltx_align_center" id="A1.T6.5.36.1"><span class="ltx_text" id="A1.T6.5.36.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.36.2"><span class="ltx_text" id="A1.T6.5.36.2.1" style="font-size:90%;">245353</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.36.3"><span class="ltx_text" id="A1.T6.5.36.3.1" style="font-size:90%;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.37">
<td class="ltx_td ltx_align_center" id="A1.T6.5.37.1"><span class="ltx_text" id="A1.T6.5.37.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.37.2"><span class="ltx_text" id="A1.T6.5.37.2.1" style="font-size:90%;">233442</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.37.3"><span class="ltx_text" id="A1.T6.5.37.3.1" style="font-size:90%;">33.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.38">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.38.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.38.1.1" style="font-size:90%;">1024K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.38.2"><span class="ltx_text" id="A1.T6.5.38.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.38.3"><span class="ltx_text" id="A1.T6.5.38.3.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.38.4"><span class="ltx_text" id="A1.T6.5.38.4.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.39">
<td class="ltx_td ltx_align_center" id="A1.T6.5.39.1"><span class="ltx_text" id="A1.T6.5.39.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.39.2"><span class="ltx_text" id="A1.T6.5.39.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.39.3"><span class="ltx_text" id="A1.T6.5.39.3.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.40">
<td class="ltx_td ltx_align_center" id="A1.T6.5.40.1"><span class="ltx_text" id="A1.T6.5.40.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.40.2"><span class="ltx_text" id="A1.T6.5.40.2.1" style="font-size:90%;">442221</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.40.3"><span class="ltx_text" id="A1.T6.5.40.3.1" style="font-size:90%;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.41">
<td class="ltx_td ltx_align_center" id="A1.T6.5.41.1"><span class="ltx_text" id="A1.T6.5.41.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.41.2"><span class="ltx_text" id="A1.T6.5.41.2.1" style="font-size:90%;">416465</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.41.3"><span class="ltx_text" id="A1.T6.5.41.3.1" style="font-size:90%;">40.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.42">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.42.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.42.1.1" style="font-size:90%;">2048K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.42.2"><span class="ltx_text" id="A1.T6.5.42.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.42.3"><span class="ltx_text" id="A1.T6.5.42.3.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.42.4"><span class="ltx_text" id="A1.T6.5.42.4.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.43">
<td class="ltx_td ltx_align_center" id="A1.T6.5.43.1"><span class="ltx_text" id="A1.T6.5.43.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.43.2"><span class="ltx_text" id="A1.T6.5.43.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.43.3"><span class="ltx_text" id="A1.T6.5.43.3.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.44">
<td class="ltx_td ltx_align_center" id="A1.T6.5.44.1"><span class="ltx_text" id="A1.T6.5.44.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.44.2"><span class="ltx_text" id="A1.T6.5.44.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.44.3"><span class="ltx_text" id="A1.T6.5.44.3.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.45">
<td class="ltx_td ltx_align_center" id="A1.T6.5.45.1"><span class="ltx_text" id="A1.T6.5.45.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.45.2"><span class="ltx_text" id="A1.T6.5.45.2.1" style="font-size:90%;">769030</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.45.3"><span class="ltx_text" id="A1.T6.5.45.3.1" style="font-size:90%;">57.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.46">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.5.46.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T6.5.46.1.1" style="font-size:90%;">4096K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.46.2"><span class="ltx_text" id="A1.T6.5.46.2.1" style="font-size:90%;">16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.46.3"><span class="ltx_text" id="A1.T6.5.46.3.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.46.4"><span class="ltx_text" id="A1.T6.5.46.4.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.47">
<td class="ltx_td ltx_align_center" id="A1.T6.5.47.1"><span class="ltx_text" id="A1.T6.5.47.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.47.2"><span class="ltx_text" id="A1.T6.5.47.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.47.3"><span class="ltx_text" id="A1.T6.5.47.3.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.48">
<td class="ltx_td ltx_align_center" id="A1.T6.5.48.1"><span class="ltx_text" id="A1.T6.5.48.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.48.2"><span class="ltx_text" id="A1.T6.5.48.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.48.3"><span class="ltx_text" id="A1.T6.5.48.3.1" style="font-size:90%;">OOM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.49">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.5.49.1"><span class="ltx_text" id="A1.T6.5.49.1.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.5.49.2"><span class="ltx_text" id="A1.T6.5.49.2.1" style="font-size:90%;">OOM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.5.49.3"><span class="ltx_text" id="A1.T6.5.49.3.1" style="font-size:90%;">OOM</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the scalability results of LASP-2, showing its throughput (tokens per second) and GPU memory usage (in GB) at various sequence lengths (from 2K to 4096K) and with different numbers of GPUs.  It demonstrates how the performance of LASP-2 scales with increased sequence length and GPU resources.  The results are based on the Linear-Llama3-1B model.
> <details>
> <summary>read the caption</summary>
> Table 6: Quantitative Scalability Results of LASP-2 on Throughput (tokens/sec) and Memory Usage Per GPU (GB). Experiments are performed on Linear-Llama3-1B, scaling sequence length from 2K to 4096K.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.07563/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07563/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}