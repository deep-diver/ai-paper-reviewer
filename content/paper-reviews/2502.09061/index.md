---
title: "CRANE: Reasoning with constrained LLM generation"
summary: "CRANE: A novel constrained decoding algorithm boosts LLM reasoning accuracy by strategically alternating between unconstrained reasoning and constrained generation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09061 {{< /keyword >}}
{{< keyword icon="writer" >}} Debangshu Banerjee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09061" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09061" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09061/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are increasingly used for tasks requiring formally correct outputs (e.g., code generation, symbolic math).  However, enforcing strict grammatical constraints during LLM generation often reduces their reasoning ability, a problem that current constrained decoding methods struggle to resolve. This paper investigates the theoretical reasons behind this accuracy decrease. 

The researchers propose CRANE, a novel algorithm that addresses this limitation. **CRANE cleverly interleaves unconstrained generation for reasoning steps with constrained generation for ensuring syntactical correctness.**  Experimental results show that CRANE substantially improves accuracy compared to both standard unconstrained and state-of-the-art constrained decoding methods across multiple LLMs and datasets, highlighting its effectiveness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Constrained LLM generation can hinder reasoning capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CRANE effectively balances correctness with flexibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CRANE outperforms existing methods on various benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with LLMs because it directly addresses the critical challenge of balancing accuracy and reasoning capabilities under constrained generation. The proposed CRANE algorithm offers a practical solution to improve the performance of LLMs on complex tasks involving formal constraints, opening new avenues for research and applications.  **Its theoretical analysis of the limitations of constrained decoding and the introduction of a novel, cost-effective approach are significant contributions to the field**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09061/extracted/6200562/figures/example.png)

> 🔼 The figure illustrates a comparison of different LLM decoding methods on a symbolic math problem from the GSM-symbolic dataset.  The problem involves calculating a cost based on rental hours, free hours, and cost per hour. The unconstrained method produces a syntactically incorrect answer (a Python expression with a syntax error). A constrained method produces a syntactically correct but numerically incorrect answer.  CRANE, the proposed method, generates both a syntactically correct and numerically correct answer, demonstrating its ability to balance correctness and reasoning capability.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example from the GSM-symbolic dataset (variables in blue) where unconstrained generation produces syntactically incorrect output, while constrained generation provides a syntactically valid but incorrect answer. CRANE, however, generates a correct answer.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.5.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.5.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.1.1.3.1">Acc. (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.5.1.1.4.1">Parse (%)</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.5.1.1.5.1">Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.5.2.1">
<td class="ltx_td ltx_border_t" id="S5.T1.5.2.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.2.1.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.2.1.3">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.2.1.4">97</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.2.1.5">23.34</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.3.2">
<td class="ltx_td" id="S5.T1.5.3.2.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.3.2.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.3.2.3">22</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.3.2.4">97</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.3.2.5">25.29</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.4.3">
<td class="ltx_td ltx_align_left" id="S5.T1.5.4.3.1">Qwen2.5-1.5B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.4.3.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.4.3.3">26</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.4.3.4">90</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.4.3.5">128.97</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5.4">
<td class="ltx_td" id="S5.T1.5.5.4.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.5.4.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.5.4.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.5.4.3.1">31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.4.4">100</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.5.4.5">131.3</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.6.5">
<td class="ltx_td ltx_border_t" id="S5.T1.5.6.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.6.5.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.6.5.3">36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.6.5.4">94</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.6.5.5">17.92</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.7.6">
<td class="ltx_td" id="S5.T1.5.7.6.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.7.6.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.7.6.3">35</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.7.6.4">99</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.7.6.5">25.28</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.8.7">
<td class="ltx_td ltx_align_left" id="S5.T1.5.8.7.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.8.7.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.8.7.3">37</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.8.7.4">88</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.8.7.5">138.38</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.9.8">
<td class="ltx_td" id="S5.T1.5.9.8.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.9.8.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.9.8.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.9.8.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.9.8.3.1">39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.9.8.4">94</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.9.8.5">155.32</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.10.9">
<td class="ltx_td ltx_border_t" id="S5.T1.5.10.9.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.10.9.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.10.9.3">27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.10.9.4">89</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.10.9.5">25.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.11.10">
<td class="ltx_td" id="S5.T1.5.11.10.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.11.10.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.11.10.3">29</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.11.10.4">99</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.11.10.5">26.81</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.12.11">
<td class="ltx_td ltx_align_left" id="S5.T1.5.12.11.1">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.12.11.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.12.11.3">29</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.12.11.4">82</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.12.11.5">155.26</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.13.12">
<td class="ltx_td" id="S5.T1.5.13.12.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.13.12.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.13.12.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.13.12.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.13.12.3.1">38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.13.12.4">94</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.13.12.5">158.86</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.14.13">
<td class="ltx_td ltx_border_t" id="S5.T1.5.14.13.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.14.13.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.14.13.3">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.14.13.4">73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.14.13.5">128.38</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.15.14">
<td class="ltx_td" id="S5.T1.5.15.14.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.15.14.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.15.14.3">26</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.15.14.4">98</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.15.14.5">35.97</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.16.15">
<td class="ltx_td ltx_align_left" id="S5.T1.5.16.15.1">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.16.15.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.16.15.3">30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.16.15.4">95</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.16.15.5">163.55</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.17.16">
<td class="ltx_td" id="S5.T1.5.17.16.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.17.16.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.17.16.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.17.16.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.17.16.3.1">33</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.17.16.4">95</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.17.16.5">170.22</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.18.17">
<td class="ltx_td ltx_border_t" id="S5.T1.5.18.17.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.18.17.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.18.17.3">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.18.17.4">89</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.18.17.5">21.64</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.19.18">
<td class="ltx_td" id="S5.T1.5.19.18.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.19.18.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.19.18.3">20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.19.18.4">99</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.19.18.5">17.21</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.20.19">
<td class="ltx_td ltx_align_left" id="S5.T1.5.20.19.1">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.20.19.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.20.19.3">24</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.20.19.4">89</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.20.19.5">212.24</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.21.20">
<td class="ltx_td" id="S5.T1.5.21.20.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.21.20.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.21.20.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.21.20.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.21.20.3.1">29</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.21.20.4">92</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.21.20.5">235.78</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.22.21">
<td class="ltx_td ltx_border_t" id="S5.T1.5.22.21.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.5.22.21.2">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.22.21.3">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.22.21.4">77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S5.T1.5.22.21.5">29.2</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.23.22">
<td class="ltx_td" id="S5.T1.5.23.22.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.23.22.2">Constrained</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.23.22.3">13</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.23.22.4">96</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.23.22.5">16.89</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.24.23">
<td class="ltx_td ltx_align_left" id="S5.T1.5.24.23.1">DeepSeek-R1-Distill-Llama-8B</td>
<td class="ltx_td ltx_align_left" id="S5.T1.5.24.23.2">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.24.23.3">21</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.24.23.4">87</td>
<td class="ltx_td ltx_align_right" id="S5.T1.5.24.23.5">250.83</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.25.24">
<td class="ltx_td ltx_border_bb" id="S5.T1.5.25.24.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.5.25.24.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T1.5.25.24.2.1">CRANE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.5.25.24.3"><span class="ltx_text ltx_font_bold" id="S5.T1.5.25.24.3.1">31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.5.25.24.4">92</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T1.5.25.24.5">268.82</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of the CRANE algorithm against several baseline methods on the GSM-Symbolic benchmark.  The baseline methods include unconstrained generation without chain-of-thought prompting, unconstrained generation with chain-of-thought prompting, and a state-of-the-art constrained decoding method. The table shows the accuracy (percentage of functionally correct expressions), parse rate (percentage of syntactically correct expressions), and the average number of tokens generated by each method for different large language models (LLMs). This allows for a comprehensive evaluation of CRANE's effectiveness in balancing accuracy and syntactic correctness.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of CRANE and baselines with different models on GSM-Symbolic.
> </details>





### In-depth insights


#### Constrained LLM Limits
The heading 'Constrained LLM Limits' suggests an exploration of the inherent boundaries and shortcomings when imposing constraints on large language models (LLMs).  A thoughtful analysis would likely investigate how restrictive grammars, while improving syntactic correctness, can severely **limit the reasoning capabilities** of LLMs.  This limitation arises because overly strict constraints may prevent the model from exploring the necessary intermediate reasoning steps required to solve complex problems.  The discussion would likely delve into the trade-off between ensuring syntactically valid outputs and preserving the model's problem-solving abilities.  **Formal proofs or theoretical arguments** might be presented to demonstrate this reduced expressivity under constrained decoding.  The analysis would probably explore the relationship between the complexity of the problem, the restrictiveness of the grammar, and the LLM's capacity to find solutions.  Ultimately, a key insight would likely be that a balance is needed—carefully designed constraints can enhance output quality while avoiding a significant reduction in reasoning power.  The authors might propose solutions or suggest alternative methods to mitigate these constraints-induced limitations.

#### CRANE Algorithm
The CRANE algorithm section details a novel decoding strategy that intelligently balances the benefits of constrained and unconstrained LLM generation.  **CRANE addresses the shortcomings of existing methods that either compromise reasoning capabilities by enforcing strict grammatical constraints or sacrifice syntactic correctness with unconstrained generation.** The algorithm cleverly incorporates delimiters to signal transitions between constrained and unconstrained modes. This adaptive approach allows the LLM to freely explore reasoning steps during unconstrained phases, while maintaining grammatical adherence during the constrained phases.  **The key insight is that selectively applying constraints, rather than imposing them throughout the generation process, preserves the model's reasoning abilities while ensuring syntactically and semantically correct outputs.** This approach results in a decoding algorithm that is both efficient and effective, demonstrated by significant improvements over existing techniques in experimental evaluations. The formal definition of the algorithm and its integration with different LLMs and decoding strategies are also important components, highlighting CRANE’s versatility and adaptability.

#### Expressivity Analysis
An expressivity analysis in a research paper would deeply investigate the limitations of language models (LLMs) when constrained.  It would likely begin by formally defining expressivity in the context of LLMs, perhaps relating it to the complexity classes of problems solvable by the model with and without constraints.  **A key component would be demonstrating a theoretical link between restrictive grammars and reduced problem-solving capabilities**.  This could involve proving that enforcing highly restrictive grammars limits the LLM to a lower complexity class than it would otherwise be capable of achieving.  The analysis should also consider the impact of grammar augmentation.  **A well-structured analysis would show how carefully designed additions to the grammar can restore, or at least mitigate, the loss of expressivity**, allowing the LLM to perform complex reasoning while ensuring syntactic correctness. The analysis should ideally extend beyond specific LLMs or problem domains to offer generalizable results applicable across various language models and tasks. Finally, the study may suggest optimal decoding strategies that balance constraint enforcement with the preservation of expressive power and reasoning capabilities.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper would ideally present a thorough evaluation of the proposed method against established baselines.  This would involve using multiple, well-recognized datasets to assess performance across various aspects such as **accuracy, efficiency, and robustness**.  The results should be clearly presented using tables and graphs that compare the proposed approach's performance with the baselines.  **Statistical significance tests**, such as t-tests or ANOVA, should be used to verify whether any performance differences are statistically significant.   Furthermore, an analysis of the results should be included, discussing any unexpected findings and offering potential explanations for observed strengths and weaknesses.  A key consideration is the **reproducibility of the experiments**, with detailed descriptions of the experimental setup and the specific versions of any software or datasets used to enable others to independently validate the findings. Finally, the results should be interpreted within the broader context of the research questions, highlighting the overall implications of the findings for the field.

#### Future Directions
Future research could explore **extending CRANE's adaptability** to a wider array of LLMs and decoding strategies, potentially improving efficiency and performance.  Investigating the theoretical limits of CRANE's expressivity with non-finite output grammars is another crucial area.  **Developing more sophisticated methods for dynamically determining the transition points** between constrained and unconstrained generation could further refine CRANE's effectiveness.  A deeper analysis of the trade-offs between reasoning capabilities and syntactic correctness under various constraint levels is needed to enhance the algorithm's robustness.  **Exploring the application of CRANE to other challenging tasks**, such as program synthesis or theorem proving, would demonstrate its broader applicability and potential impact.  Finally, investigating the impact of CRANE on different LLM architectures and sizes would provide valuable insights into scaling and optimization.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09061/extracted/6200562/figures/crane.png)

> 🔼 The figure illustrates how CRANE, a novel decoding algorithm, dynamically switches between constrained and unconstrained large language model (LLM) generation.  The transition between modes is controlled by start and end delimiters (e.g., << and >>).  When the model encounters a start delimiter, CRANE enters constrained generation mode, ensuring the output adheres to specific grammatical constraints. The constrained generation is highlighted visually.  When the end delimiter is encountered, the model returns to unconstrained generation, allowing for more flexible reasoning.  This adaptive approach enables CRANE to balance the benefits of both constrained and unconstrained decoding.
> <details>
> <summary>read the caption</summary>
> Figure 2:  CRANE adaptively switches between constrained LLM generation and unconstrained LLM generation based on start and end delimiters (in this example << and >>). Using these delimiters, CRANE dynamically tracks which windows (highlighted in the figure) of the LLM generation constraints should be applied to.
> </details>



![](https://arxiv.org/html/2502.09061/extracted/6200562/figures/k_accuracy_Qwen2.5-Math-7B-Instruct.png)

> 🔼 This figure shows the accuracy of the Qwen2.5-Math-7B-Instruct language model on the GSM-Symbolic benchmark across different methods (unconstrained, constrained, unconstrained with Chain-of-Thought prompting, and CRANE) and varying numbers of few-shot examples provided during training.  It visualizes the impact of both the decoding method and the amount of training data on the model's performance in solving symbolic math word problems.
> <details>
> <summary>read the caption</summary>
> Figure 3: Accuracy (%) of Qwen2.5-Math-7B-Instruct By Method and Number of Shots on GSM-Symbolic
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.3.1">Acc. (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.4.1">Compiles (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.5.1">Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.5.2.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.2.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.2.1.2">Unconstrained CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.3">18.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.4">54.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.2.1.5">629.59</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.3.2.1">Qwen2.5-Math-7B-Instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.3.2.2">Constrained</th>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.3">28.08</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.4">76.85</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.3.2.5">679.44</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.4.3">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.5.4.3.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.4.3.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T2.5.4.3.2.1">CRANE</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.4.3.3.1">31.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.3.4">75.86</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.4.3.5">690.17</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.5.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.5.4.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.5.4.2">Unconstrained CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.5.4.3">36.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.5.4.4">70.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.5.4.5">350.64</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.6.5.1">Qwen2.5-7B-Instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.6.5.2">Constrained</th>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.5.3">37.44</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.5.4">87.68</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.6.5.5">775.62</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.7.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.5.7.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.7.6.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T2.5.7.6.2.1">CRANE</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.6.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.7.6.3.1">42.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.6.4">87.68</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.7.6.5">726.88</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.8.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.8.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.5.8.7.2">Unconstrained CoT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.8.7.3">32.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.8.7.4">57.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.8.7.5">371.52</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.9.8.1">Llama-3.1-8B-Instruct</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.5.9.8.2">Constrained</th>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.8.3">39.41</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.8.4">86.21</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.9.8.5">549.75</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.10.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T2.5.10.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.5.10.9.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T2.5.10.9.2.1">CRANE</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.10.9.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.10.9.3.1">46.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.10.9.4">85.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.10.9.5">449.77</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CRANE against several baseline methods on the FOLIO benchmark.  The baseline methods include unconstrained generation with Chain-of-Thought prompting, constrained generation, and CRANE itself.  The table shows the accuracy (percentage of correct answers), the compile rate (percentage of generated first-order logic formulas that are syntactically valid and successfully compiled by the Prover9 theorem prover), and the average number of tokens generated for each model and method.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of CRANE and baselines with various models on FOLIO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T3.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.2.1">k</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.3.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.4.1">Acc. (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.5.1">Parse (%)</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A3.T3.5.1.1.6"><span class="ltx_text ltx_font_bold" id="A3.T3.5.1.1.6.1">Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T3.5.2.1">
<td class="ltx_td ltx_border_t" id="A3.T3.5.2.1.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.2.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.1.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.1.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.2.1.5">98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.2.1.6">18.23</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.3.2">
<td class="ltx_td" id="A3.T3.5.3.2.1"></td>
<td class="ltx_td" id="A3.T3.5.3.2.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.2.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.2.4">21</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.3.2.5">95</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.3.2.6">34.28</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.4.3">
<td class="ltx_td ltx_align_left" id="A3.T3.5.4.3.1">Qwen2.5-1.5B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.4.3.2">2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.3.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.3.4">22</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.4.3.5">90</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.4.3.6">130.74</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.5.4">
<td class="ltx_td" id="A3.T3.5.5.4.1"></td>
<td class="ltx_td" id="A3.T3.5.5.4.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.4.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.5.4.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.4.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.5.4.4.1">28</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.5.4.5">96</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.5.4.6">140.52</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.6.5">
<td class="ltx_td ltx_border_t" id="A3.T3.5.6.5.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.6.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.5.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.5.4">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.6.5.5">95</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.6.5.6">18.23</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.7.6">
<td class="ltx_td" id="A3.T3.5.7.6.1"></td>
<td class="ltx_td" id="A3.T3.5.7.6.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.6.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.6.4">18</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.7.6.5">96</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.7.6.6">34.28</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.8.7">
<td class="ltx_td ltx_align_left" id="A3.T3.5.8.7.1">Qwen2.5-1.5B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.8.7.2">4</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.7.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.7.4">24</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.8.7.5">94</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.8.7.6">130.74</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.9.8">
<td class="ltx_td" id="A3.T3.5.9.8.1"></td>
<td class="ltx_td" id="A3.T3.5.9.8.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.8.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.9.8.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.8.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.9.8.4.1">30</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.9.8.5">98</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.9.8.6">140.52</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.10.9">
<td class="ltx_td ltx_border_t" id="A3.T3.5.10.9.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.10.9.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.9.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.9.4">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.10.9.5">97</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.10.9.6">23.34</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.11.10">
<td class="ltx_td" id="A3.T3.5.11.10.1"></td>
<td class="ltx_td" id="A3.T3.5.11.10.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.10.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.10.4">22</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.11.10.5">97</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.11.10.6">25.29</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.12.11">
<td class="ltx_td ltx_align_left" id="A3.T3.5.12.11.1">Qwen2.5-1.5B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.12.11.2">8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.11.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.11.4">26</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.12.11.5">90</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.12.11.6">128.97</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.13.12">
<td class="ltx_td" id="A3.T3.5.13.12.1"></td>
<td class="ltx_td" id="A3.T3.5.13.12.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.12.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.13.12.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.12.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.13.12.4.1">31</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.13.12.5">100</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.13.12.6">131.3</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.14.13">
<td class="ltx_td ltx_border_t" id="A3.T3.5.14.13.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.14.13.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.13.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.13.4">37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.14.13.5">96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.14.13.6">17.22</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.15.14">
<td class="ltx_td" id="A3.T3.5.15.14.1"></td>
<td class="ltx_td" id="A3.T3.5.15.14.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.14.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.14.4">36</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.15.14.5">99</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.15.14.6">18.61</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.16.15">
<td class="ltx_td ltx_align_left" id="A3.T3.5.16.15.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.16.15.2">2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.15.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.15.4">32</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.16.15.5">84</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.16.15.6">148.87</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.17.16">
<td class="ltx_td" id="A3.T3.5.17.16.1"></td>
<td class="ltx_td" id="A3.T3.5.17.16.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.16.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.17.16.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.16.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.17.16.4.1">37</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.17.16.5">96</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.17.16.6">155.65</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.18.17">
<td class="ltx_td ltx_border_t" id="A3.T3.5.18.17.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.18.17.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.17.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.17.4">36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.18.17.5">96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.18.17.6">16.89</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.19.18">
<td class="ltx_td" id="A3.T3.5.19.18.1"></td>
<td class="ltx_td" id="A3.T3.5.19.18.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.18.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.18.4">36</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.19.18.5">100</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.19.18.6">18.81</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.20.19">
<td class="ltx_td ltx_align_left" id="A3.T3.5.20.19.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.20.19.2">4</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.19.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.19.4">35</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.20.19.5">89</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.20.19.6">151.29</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.21.20">
<td class="ltx_td" id="A3.T3.5.21.20.1"></td>
<td class="ltx_td" id="A3.T3.5.21.20.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.20.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.21.20.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.20.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.21.20.4.1">37</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.21.20.5">97</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.21.20.6">163.21</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.22.21">
<td class="ltx_td ltx_border_t" id="A3.T3.5.22.21.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.22.21.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.21.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.21.4">36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.22.21.5">94</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.22.21.6">17.92</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.23.22">
<td class="ltx_td" id="A3.T3.5.23.22.1"></td>
<td class="ltx_td" id="A3.T3.5.23.22.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.22.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.22.4">35</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.23.22.5">99</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.23.22.6">25.28</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.24.23">
<td class="ltx_td ltx_align_left" id="A3.T3.5.24.23.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.24.23.2">8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.23.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.23.4">37</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.24.23.5">88</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.24.23.6">138.38</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.25.24">
<td class="ltx_td" id="A3.T3.5.25.24.1"></td>
<td class="ltx_td" id="A3.T3.5.25.24.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.25.24.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.25.24.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.25.24.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.25.24.4.1">39</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.25.24.5">94</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.25.24.6">155.32</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.26.25">
<td class="ltx_td ltx_border_t" id="A3.T3.5.26.25.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.26.25.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.26.25.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.26.25.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.26.25.5">66</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.26.25.6">115.22</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.27.26">
<td class="ltx_td" id="A3.T3.5.27.26.1"></td>
<td class="ltx_td" id="A3.T3.5.27.26.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.27.26.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.27.26.4">26</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.27.26.5">95</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.27.26.6">26.99</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.28.27">
<td class="ltx_td ltx_align_left" id="A3.T3.5.28.27.1">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.28.27.2">2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.28.27.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.28.27.4">28</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.28.27.5">72</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.28.27.6">190.51</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.29.28">
<td class="ltx_td" id="A3.T3.5.29.28.1"></td>
<td class="ltx_td" id="A3.T3.5.29.28.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.29.28.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.29.28.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.29.28.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.29.28.4.1">32</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.29.28.5">89</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.29.28.6">195.65</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.30.29">
<td class="ltx_td ltx_border_t" id="A3.T3.5.30.29.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.30.29.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.30.29.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.30.29.4">22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.30.29.5">83</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.30.29.6">47</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.31.30">
<td class="ltx_td" id="A3.T3.5.31.30.1"></td>
<td class="ltx_td" id="A3.T3.5.31.30.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.31.30.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.31.30.4">29</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.31.30.5">98</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.31.30.6">27.08</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.32.31">
<td class="ltx_td ltx_align_left" id="A3.T3.5.32.31.1">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.32.31.2">4</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.32.31.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.32.31.4">28</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.32.31.5">76</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.32.31.6">184.35</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.33.32">
<td class="ltx_td" id="A3.T3.5.33.32.1"></td>
<td class="ltx_td" id="A3.T3.5.33.32.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.33.32.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.33.32.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.33.32.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.33.32.4.1">37</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.33.32.5">88</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.33.32.6">194.77</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.34.33">
<td class="ltx_td ltx_border_t" id="A3.T3.5.34.33.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.34.33.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.34.33.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.34.33.4">27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.34.33.5">89</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.34.33.6">25.7</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.35.34">
<td class="ltx_td" id="A3.T3.5.35.34.1"></td>
<td class="ltx_td" id="A3.T3.5.35.34.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.35.34.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.35.34.4">29</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.35.34.5">99</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.35.34.6">26.81</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.36.35">
<td class="ltx_td ltx_align_left" id="A3.T3.5.36.35.1">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.36.35.2">8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.36.35.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.36.35.4">29</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.36.35.5">82</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.36.35.6">155.26</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.37.36">
<td class="ltx_td" id="A3.T3.5.37.36.1"></td>
<td class="ltx_td" id="A3.T3.5.37.36.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.37.36.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.37.36.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.37.36.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.37.36.4.1">38</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.37.36.5">94</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.37.36.6">158.86</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.38.37">
<td class="ltx_td ltx_border_t" id="A3.T3.5.38.37.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.38.37.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.38.37.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.38.37.4">19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.38.37.5">61</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.38.37.6">157.36</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.39.38">
<td class="ltx_td" id="A3.T3.5.39.38.1"></td>
<td class="ltx_td" id="A3.T3.5.39.38.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.39.38.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.39.38.4">23</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.39.38.5">95</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.39.38.6">45.58</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.40.39">
<td class="ltx_td ltx_align_left" id="A3.T3.5.40.39.1">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.40.39.2">2</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.40.39.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.40.39.4">29</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.40.39.5">84</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.40.39.6">198.64</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.41.40">
<td class="ltx_td" id="A3.T3.5.41.40.1"></td>
<td class="ltx_td" id="A3.T3.5.41.40.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.41.40.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.41.40.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.41.40.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.41.40.4.1">35</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.41.40.5">94</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.41.40.6">206.85</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.42.41">
<td class="ltx_td ltx_border_t" id="A3.T3.5.42.41.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.42.41.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.42.41.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.42.41.4">18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.42.41.5">68</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.42.41.6">131.5</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.43.42">
<td class="ltx_td" id="A3.T3.5.43.42.1"></td>
<td class="ltx_td" id="A3.T3.5.43.42.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.43.42.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.43.42.4">24</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.43.42.5">96</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.43.42.6">37.38</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.44.43">
<td class="ltx_td ltx_align_left" id="A3.T3.5.44.43.1">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.44.43.2">4</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.44.43.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.44.43.4">26</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.44.43.5">92</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.44.43.6">172.21</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.45.44">
<td class="ltx_td" id="A3.T3.5.45.44.1"></td>
<td class="ltx_td" id="A3.T3.5.45.44.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.45.44.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.45.44.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.45.44.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.45.44.4.1">30</span></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.45.44.5">97</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.45.44.6">179.95</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.46.45">
<td class="ltx_td ltx_border_t" id="A3.T3.5.46.45.1"></td>
<td class="ltx_td ltx_border_t" id="A3.T3.5.46.45.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.46.45.3">Unconstrained w/o CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.46.45.4">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T3.5.46.45.5">73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T3.5.46.45.6">128.38</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.47.46">
<td class="ltx_td" id="A3.T3.5.47.46.1"></td>
<td class="ltx_td" id="A3.T3.5.47.46.2"></td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.47.46.3">Constrained</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.47.46.4">26</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.47.46.5">98</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.47.46.6">35.97</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.48.47">
<td class="ltx_td ltx_align_left" id="A3.T3.5.48.47.1">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A3.T3.5.48.47.2">8</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.48.47.3">Unconstrained CoT</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.48.47.4">30</td>
<td class="ltx_td ltx_align_center" id="A3.T3.5.48.47.5">95</td>
<td class="ltx_td ltx_align_right" id="A3.T3.5.48.47.6">163.55</td>
</tr>
<tr class="ltx_tr" id="A3.T3.5.49.48">
<td class="ltx_td ltx_border_bb" id="A3.T3.5.49.48.1"></td>
<td class="ltx_td ltx_border_bb" id="A3.T3.5.49.48.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.5.49.48.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T3.5.49.48.3.1">CRANE</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.5.49.48.4"><span class="ltx_text ltx_font_bold" id="A3.T3.5.49.48.4.1">33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T3.5.49.48.5">95</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T3.5.49.48.6">170.22</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of CRANE's performance against various baseline methods on the GSM-Symbolic benchmark.  It shows the accuracy (percentage of correctly generated symbolic expressions), the parse rate (percentage of syntactically valid expressions), the average number of tokens generated, and the average inference time for different models (Qwen-2.5, Llama, DeepSeek-R1) and varying numbers of few-shot examples (2, 4, and 8). The baselines include unconstrained generation without chain-of-thought prompting, unconstrained generation with chain-of-thought prompting, and standard constrained decoding.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of CRANE and baselines with various models on GSM-Symbolic based on accuracy, number of tokens, and average time.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T4.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T4.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T4.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.7.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T4.7.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T4.7.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T4.7.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T4.7.1.1.3.1" style="font-size:90%;">pass@1/2/3 (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T4.7.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T4.7.1.1.4.1" style="font-size:90%;">Parse (%)</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A3.T4.7.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T4.7.1.1.5.1" style="font-size:90%;">Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T4.7.2.1">
<td class="ltx_td ltx_border_t" id="A3.T4.7.2.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.7.2.1.2"><span class="ltx_text" id="A3.T4.7.2.1.2.1" style="font-size:90%;">Unconstrained w/o CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.7.2.1.3"><span class="ltx_text" id="A3.T4.7.2.1.3.1" style="font-size:90%;">21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.7.2.1.4"><span class="ltx_text" id="A3.T4.7.2.1.4.1" style="font-size:90%;">97</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T4.7.2.1.5"><span class="ltx_text" id="A3.T4.7.2.1.5.1" style="font-size:90%;">23.34</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.3.2">
<td class="ltx_td" id="A3.T4.7.3.2.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.3.2.2"><span class="ltx_text" id="A3.T4.7.3.2.2.1" style="font-size:90%;">Unconstrained w/o CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.3.2.3"><span class="ltx_text" id="A3.T4.7.3.2.3.1" style="font-size:90%;">15/19/22</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.3.2.4"><span class="ltx_text" id="A3.T4.7.3.2.4.1" style="font-size:90%;">88/96/98</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.3.2.5"><span class="ltx_text" id="A3.T4.7.3.2.5.1" style="font-size:90%;">20.19/39.76/60.57</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.4.3">
<td class="ltx_td" id="A3.T4.7.4.3.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.4.3.2"><span class="ltx_text" id="A3.T4.7.4.3.2.1" style="font-size:90%;">Constrained (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.4.3.3"><span class="ltx_text" id="A3.T4.7.4.3.3.1" style="font-size:90%;">22</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.4.3.4"><span class="ltx_text" id="A3.T4.7.4.3.4.1" style="font-size:90%;">97</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.4.3.5"><span class="ltx_text" id="A3.T4.7.4.3.5.1" style="font-size:90%;">25.29</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.5.4">
<td class="ltx_td ltx_align_left" id="A3.T4.7.5.4.1"><span class="ltx_text" id="A3.T4.7.5.4.1.1" style="font-size:90%;">Qwen2.5-1.5B-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.5.4.2"><span class="ltx_text" id="A3.T4.7.5.4.2.1" style="font-size:90%;">Unconstrained CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.5.4.3"><span class="ltx_text" id="A3.T4.7.5.4.3.1" style="font-size:90%;">26</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.5.4.4"><span class="ltx_text" id="A3.T4.7.5.4.4.1" style="font-size:90%;">90</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.5.4.5"><span class="ltx_text" id="A3.T4.7.5.4.5.1" style="font-size:90%;">128.97</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.6.5">
<td class="ltx_td" id="A3.T4.7.6.5.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.6.5.2"><span class="ltx_text" id="A3.T4.7.6.5.2.1" style="font-size:90%;">Unconstrained CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.6.5.3"><span class="ltx_text" id="A3.T4.7.6.5.3.1" style="font-size:90%;">21/25/30</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.6.5.4"><span class="ltx_text" id="A3.T4.7.6.5.4.1" style="font-size:90%;">78/91/96</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.6.5.5"><span class="ltx_text" id="A3.T4.7.6.5.5.1" style="font-size:90%;">146.22/292.96/444.61</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.7.6">
<td class="ltx_td" id="A3.T4.7.7.6.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.7.6.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T4.7.7.6.2.1" style="font-size:90%;">CRANE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.7.6.3"><span class="ltx_text ltx_font_bold" id="A3.T4.7.7.6.3.1" style="font-size:90%;">31</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.7.6.4"><span class="ltx_text" id="A3.T4.7.7.6.4.1" style="font-size:90%;">100</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.7.6.5"><span class="ltx_text" id="A3.T4.7.7.6.5.1" style="font-size:90%;">131.3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.8.7">
<td class="ltx_td ltx_border_t" id="A3.T4.7.8.7.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.7.8.7.2"><span class="ltx_text" id="A3.T4.7.8.7.2.1" style="font-size:90%;">Unconstrained w/o CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.7.8.7.3"><span class="ltx_text" id="A3.T4.7.8.7.3.1" style="font-size:90%;">21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.7.8.7.4"><span class="ltx_text" id="A3.T4.7.8.7.4.1" style="font-size:90%;">73</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T4.7.8.7.5"><span class="ltx_text" id="A3.T4.7.8.7.5.1" style="font-size:90%;">128.38</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.9.8">
<td class="ltx_td" id="A3.T4.7.9.8.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.9.8.2"><span class="ltx_text" id="A3.T4.7.9.8.2.1" style="font-size:90%;">Unconstrained w/o CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.9.8.3"><span class="ltx_text" id="A3.T4.7.9.8.3.1" style="font-size:90%;">15/21/25</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.9.8.4"><span class="ltx_text" id="A3.T4.7.9.8.4.1" style="font-size:90%;">51/74/84</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.9.8.5"><span class="ltx_text" id="A3.T4.7.9.8.5.1" style="font-size:90%;">106.88/232.75/369.86</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.10.9">
<td class="ltx_td" id="A3.T4.7.10.9.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.10.9.2"><span class="ltx_text" id="A3.T4.7.10.9.2.1" style="font-size:90%;">Constrained (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.10.9.3"><span class="ltx_text" id="A3.T4.7.10.9.3.1" style="font-size:90%;">26</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.10.9.4"><span class="ltx_text" id="A3.T4.7.10.9.4.1" style="font-size:90%;">98</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.10.9.5"><span class="ltx_text" id="A3.T4.7.10.9.5.1" style="font-size:90%;">35.97</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.11.10">
<td class="ltx_td ltx_align_left" id="A3.T4.7.11.10.1"><span class="ltx_text" id="A3.T4.7.11.10.1.1" style="font-size:90%;">Llama-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.11.10.2"><span class="ltx_text" id="A3.T4.7.11.10.2.1" style="font-size:90%;">Unconstrained CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.11.10.3"><span class="ltx_text" id="A3.T4.7.11.10.3.1" style="font-size:90%;">30</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.11.10.4"><span class="ltx_text" id="A3.T4.7.11.10.4.1" style="font-size:90%;">95</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.11.10.5"><span class="ltx_text" id="A3.T4.7.11.10.5.1" style="font-size:90%;">163.55</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.12.11">
<td class="ltx_td" id="A3.T4.7.12.11.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.12.11.2"><span class="ltx_text" id="A3.T4.7.12.11.2.1" style="font-size:90%;">Unconstrained CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.12.11.3">
<span class="ltx_text" id="A3.T4.7.12.11.3.1" style="font-size:90%;">24/29/</span><span class="ltx_text ltx_font_bold" id="A3.T4.7.12.11.3.2" style="font-size:90%;">35</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T4.7.12.11.4"><span class="ltx_text" id="A3.T4.7.12.11.4.1" style="font-size:90%;">89/98/98</span></td>
<td class="ltx_td ltx_align_right" id="A3.T4.7.12.11.5"><span class="ltx_text" id="A3.T4.7.12.11.5.1" style="font-size:90%;">196.01/403.68/607.7</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.13.12">
<td class="ltx_td ltx_border_bb" id="A3.T4.7.13.12.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.7.13.12.2">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T4.7.13.12.2.1" style="font-size:90%;">CRANE</span><span class="ltx_text" id="A3.T4.7.13.12.2.2" style="font-size:90%;"> (Greedy)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.7.13.12.3"><span class="ltx_text" id="A3.T4.7.13.12.3.1" style="font-size:90%;">33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.7.13.12.4"><span class="ltx_text" id="A3.T4.7.13.12.4.1" style="font-size:90%;">95</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T4.7.13.12.5"><span class="ltx_text" id="A3.T4.7.13.12.5.1" style="font-size:90%;">170.22</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CRANE against several baselines on the GSM-Symbolic benchmark.  The baselines include unconstrained generation without chain-of-thought prompting (using greedy decoding and temperature sampling), constrained generation (using greedy decoding), and unconstrained generation with chain-of-thought prompting (using greedy decoding and temperature sampling). The table shows the accuracy, the percentage of syntactically valid expressions (Parse %), and the average number of tokens generated for each method and model.  The temperature sampling results show pass@1/2/3, indicating the percentage of times the model generated a correct answer within 1, 2, or 3 samples.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of CRANE and greedy and sampling baselines with different models on GSM-Symbolic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T5.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T5.7.1.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T5.7.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.7.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.7.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.7.1.1.3.1" style="font-size:90%;">pass@1/2/3 (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.7.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T5.7.1.1.4.1" style="font-size:90%;">Compile (%)</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A3.T5.7.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T5.7.1.1.5.1" style="font-size:90%;">Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.7.2.1">
<td class="ltx_td ltx_border_t" id="A3.T5.7.2.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.7.2.1.2"><span class="ltx_text" id="A3.T5.7.2.1.2.1" style="font-size:90%;">Unconstrained CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.7.2.1.3"><span class="ltx_text" id="A3.T5.7.2.1.3.1" style="font-size:90%;">36.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.7.2.1.4"><span class="ltx_text" id="A3.T5.7.2.1.4.1" style="font-size:90%;">70.94</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T5.7.2.1.5"><span class="ltx_text" id="A3.T5.7.2.1.5.1" style="font-size:90%;">350.64</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.3.2">
<td class="ltx_td" id="A3.T5.7.3.2.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T5.7.3.2.2"><span class="ltx_text" id="A3.T5.7.3.2.2.1" style="font-size:90%;">Unconstrained CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.3.2.3"><span class="ltx_text" id="A3.T5.7.3.2.3.1" style="font-size:90%;">16.75/28.57/34.98</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.3.2.4"><span class="ltx_text" id="A3.T5.7.3.2.4.1" style="font-size:90%;">35.96/55.67/68.47</span></td>
<td class="ltx_td ltx_align_right" id="A3.T5.7.3.2.5"><span class="ltx_text" id="A3.T5.7.3.2.5.1" style="font-size:90%;">401.5/800.19/1219.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.4.3">
<td class="ltx_td ltx_align_left" id="A3.T5.7.4.3.1"><span class="ltx_text" id="A3.T5.7.4.3.1.1" style="font-size:90%;">Qwen2.5-7B-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.7.4.3.2"><span class="ltx_text" id="A3.T5.7.4.3.2.1" style="font-size:90%;">Constrained (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.4.3.3"><span class="ltx_text" id="A3.T5.7.4.3.3.1" style="font-size:90%;">37.44</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.4.3.4"><span class="ltx_text" id="A3.T5.7.4.3.4.1" style="font-size:90%;">87.68</span></td>
<td class="ltx_td ltx_align_right" id="A3.T5.7.4.3.5"><span class="ltx_text" id="A3.T5.7.4.3.5.1" style="font-size:90%;">775.62</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.5.4">
<td class="ltx_td" id="A3.T5.7.5.4.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T5.7.5.4.2">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T5.7.5.4.2.1" style="font-size:90%;">CRANE</span><span class="ltx_text" id="A3.T5.7.5.4.2.2" style="font-size:90%;"> (Greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.5.4.3"><span class="ltx_text ltx_font_bold" id="A3.T5.7.5.4.3.1" style="font-size:90%;">42.36</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.5.4.4"><span class="ltx_text" id="A3.T5.7.5.4.4.1" style="font-size:90%;">87.68</span></td>
<td class="ltx_td ltx_align_right" id="A3.T5.7.5.4.5"><span class="ltx_text" id="A3.T5.7.5.4.5.1" style="font-size:90%;">726.88</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.6.5">
<td class="ltx_td ltx_border_t" id="A3.T5.7.6.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.7.6.5.2"><span class="ltx_text" id="A3.T5.7.6.5.2.1" style="font-size:90%;">Unconstrained CoT (Greedy)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.7.6.5.3"><span class="ltx_text" id="A3.T5.7.6.5.3.1" style="font-size:90%;">32.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.7.6.5.4"><span class="ltx_text" id="A3.T5.7.6.5.4.1" style="font-size:90%;">57.14</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T5.7.6.5.5"><span class="ltx_text" id="A3.T5.7.6.5.5.1" style="font-size:90%;">371.52</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.7.6">
<td class="ltx_td" id="A3.T5.7.7.6.1"></td>
<td class="ltx_td ltx_align_left" id="A3.T5.7.7.6.2"><span class="ltx_text" id="A3.T5.7.7.6.2.1" style="font-size:90%;">Unconstrained CoT (t = 0.7)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.6.3"><span class="ltx_text" id="A3.T5.7.7.6.3.1" style="font-size:90%;">14.29/22.66/29.06</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.6.4"><span class="ltx_text" id="A3.T5.7.7.6.4.1" style="font-size:90%;">33.99/46.8/57.64</span></td>
<td class="ltx_td ltx_align_right" id="A3.T5.7.7.6.5"><span class="ltx_text" id="A3.T5.7.7.6.5.1" style="font-size:90%;">435.35/877.33/1307.45</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.8.7">
<td class="ltx_td ltx_align_left" id="A3.T5.7.8.7.1"><span class="ltx_text" id="A3.T5.7.8.7.1.1" style="font-size:90%;">Llama-3.1-8B-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.7.8.7.2"><span class="ltx_text" id="A3.T5.7.8.7.2.1" style="font-size:90%;">Constrained (Greedy)</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.8.7.3"><span class="ltx_text" id="A3.T5.7.8.7.3.1" style="font-size:90%;">39.41</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.8.7.4"><span class="ltx_text" id="A3.T5.7.8.7.4.1" style="font-size:90%;">86.21</span></td>
<td class="ltx_td ltx_align_right" id="A3.T5.7.8.7.5"><span class="ltx_text" id="A3.T5.7.8.7.5.1" style="font-size:90%;">549.75</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.9.8">
<td class="ltx_td ltx_border_bb" id="A3.T5.7.9.8.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.7.9.8.2">
<span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="A3.T5.7.9.8.2.1" style="font-size:90%;">CRANE</span><span class="ltx_text" id="A3.T5.7.9.8.2.2" style="font-size:90%;"> (Greedy)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.7.9.8.3"><span class="ltx_text ltx_font_bold" id="A3.T5.7.9.8.3.1" style="font-size:90%;">46.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.7.9.8.4"><span class="ltx_text" id="A3.T5.7.9.8.4.1" style="font-size:90%;">85.71</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T5.7.9.8.5"><span class="ltx_text" id="A3.T5.7.9.8.5.1" style="font-size:90%;">449.77</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CRANE against greedy decoding and sampling baselines on the FOLIO dataset.  The comparison considers different language models and evaluates the accuracy (percentage of functionally correct FOL translations), the percentage of generated FOL formulas that compile successfully, and the average number of tokens generated for each method.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of CRANE and greedy and sampling baselines with different models on FOLIO.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09061/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09061/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}