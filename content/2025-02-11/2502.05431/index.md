---
title: "APE: Faster and Longer Context-Augmented Generation via Adaptive Parallel Encoding"
summary: "APE: a novel method significantly speeds up context-augmented generation (CAG).  By using adaptive parallel encoding, APE achieves a 4.5x speedup and maintains high accuracy even with 128K length cont..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-02-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05431 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05431" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05431" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05431/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current context-augmented generation (CAG) methods face challenges in handling long sequences due to the computational burden of re-encoding all contexts for every query.  This issue restricts the use of large contexts, limiting performance.  Many existing attempts rely on computationally expensive and less effective fine-tuning. 



The paper introduces Adaptive Parallel Encoding (APE), a novel method that pre-computes and caches context embeddings, enabling efficient retrieval and integration.  By incorporating shared prefixes, adjusting temperature, and applying a scaling factor, APE aligns parallel encoding's distribution with sequential encoding, achieving a substantial 4.5x speedup for a 128K-length context while maintaining high accuracy. APE outperforms previous methods in both RAG and ICL tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Adaptive Parallel Encoding (APE) significantly accelerates context-augmented generation (CAG). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} APE maintains high accuracy while improving efficiency, especially for long contexts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} APE scales effectively to many-shot CAG scenarios, handling hundreds of contexts in parallel. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial** for researchers working on context-augmented generation because it introduces a novel technique that significantly improves the efficiency and scalability of existing methods. The proposed approach, Adaptive Parallel Encoding (APE), addresses a major bottleneck in current CAG systems, opening new avenues for research in handling long-context inputs and many-shot learning scenarios.  The **speedup achieved** makes long-context applications more practical, and the findings are relevant to a wide range of fields using LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05431/x2.png)

> 🔼 Figure 1 illustrates the core concept of Adaptive Parallel Encoding (APE) and its advantages over traditional methods in context-augmented generation (CAG).  It highlights three key approaches: sequential encoding (encoding all contexts as a single sequence, leading to high latency and limited accuracy due to context window limitations), parallel encoding (independently pre-computing contexts, leading to faster inference but lower accuracy due to misalignments in attention), and APE (the proposed method that uses a shared prefix, attention temperature, and scaling factor to align parallel encoding with sequential encoding, achieving both speed and accuracy improvements).  The figure visually represents the workflow of each method, contrasting their performance in terms of inference speed and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Overview of Our Approach. Context-augmented generation leverages additional contexts to improve LLM response quality to user queries. Sequential encoding prefills selected context chunks as a long sequence during inference, leading to high latency from on-the-fly re-encoding and low accuracy due to context window limitations. Parallel encoding offers an alternative method to pre-compute more and longer contexts within the same positional range but results in worse performance. To address these challenges, we propose Adaptive Parallel Encoding (APE) to re-align the attention weight distribution of parallel encoding with sequential encoding via three training-free steps: shared prefix, scaling factor, and adaptive temperature, leading to fast and accurate CAG systems in real-world applications.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.3.3.4.1.1" style="padding-left:8.5pt;padding-right:8.5pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.2" style="padding-left:8.5pt;padding-right:8.5pt;">INSCIT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.3" style="padding-left:8.5pt;padding-right:8.5pt;">Doc2Dial</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.4" style="padding-left:8.5pt;padding-right:8.5pt;">TopicCQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.5" style="padding-left:8.5pt;padding-right:8.5pt;">Qrecc</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.6" style="padding-left:8.5pt;padding-right:8.5pt;">QuAC</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.3.3.4.1.7" style="padding-left:8.5pt;padding-right:8.5pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.3.5.2.1" style="padding-left:8.5pt;padding-right:8.5pt;">Contriever, Sequential</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.2" style="padding-left:8.5pt;padding-right:8.5pt;">19.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.3" style="padding-left:8.5pt;padding-right:8.5pt;">23.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.4" style="padding-left:8.5pt;padding-right:8.5pt;">30.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.5" style="padding-left:8.5pt;padding-right:8.5pt;">46.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.6" style="padding-left:8.5pt;padding-right:8.5pt;">26.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.5.2.7" style="padding-left:8.5pt;padding-right:8.5pt;">29.53</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.6.3.1" style="padding-left:8.5pt;padding-right:8.5pt;">Contriever, APE</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.2" style="padding-left:8.5pt;padding-right:8.5pt;">19.88</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.3" style="padding-left:8.5pt;padding-right:8.5pt;">23.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.4" style="padding-left:8.5pt;padding-right:8.5pt;">28.84</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.5" style="padding-left:8.5pt;padding-right:8.5pt;">46.28</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.6" style="padding-left:8.5pt;padding-right:8.5pt;">26.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.6.3.7" style="padding-left:8.5pt;padding-right:8.5pt;">29.02</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.1.1.1.1" style="padding-left:8.5pt;padding-right:8.5pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mi id="S5.T1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T1.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.2.1" style="color:#0000FF;">-0.09</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.3.1" style="color:#0000FF;">-0.57</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.4" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.4.1" style="color:#0000FF;">-1.65</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.5.1" style="color:#0000FF;">-0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.6" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.6.1" style="color:#FF0000;">+0.23</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.1.7" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.1.1.1.7.1" style="color:#0000FF;">-0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.3.7.4.1" style="padding-left:8.5pt;padding-right:8.5pt;">GTE-base, Sequential</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.2" style="padding-left:8.5pt;padding-right:8.5pt;">21.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.3" style="padding-left:8.5pt;padding-right:8.5pt;">32.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.4" style="padding-left:8.5pt;padding-right:8.5pt;">33.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.5" style="padding-left:8.5pt;padding-right:8.5pt;">46.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.6" style="padding-left:8.5pt;padding-right:8.5pt;">30.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.7.4.7" style="padding-left:8.5pt;padding-right:8.5pt;">32.91</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.8.5.1" style="padding-left:8.5pt;padding-right:8.5pt;">GTE-base, APE</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.2" style="padding-left:8.5pt;padding-right:8.5pt;">20.85</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.3" style="padding-left:8.5pt;padding-right:8.5pt;">30.99</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.4" style="padding-left:8.5pt;padding-right:8.5pt;">31.92</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.5" style="padding-left:8.5pt;padding-right:8.5pt;">45.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.6" style="padding-left:8.5pt;padding-right:8.5pt;">30.35</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.8.5.7" style="padding-left:8.5pt;padding-right:8.5pt;">31.99</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.2.2.1" style="padding-left:8.5pt;padding-right:8.5pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.m1.1"><semantics id="S5.T1.2.2.2.1.m1.1a"><mi id="S5.T1.2.2.2.1.m1.1.1" mathvariant="normal" xref="S5.T1.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.m1.1b"><ci id="S5.T1.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.2.1" style="color:#0000FF;">-0.73</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.3.1" style="color:#0000FF;">-1.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.4" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.4.1" style="color:#0000FF;">-1.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.5.1" style="color:#0000FF;">-0.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.6" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.6.1" style="color:#0000FF;">-0.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.7" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.2.2.2.7.1" style="color:#0000FF;">-0.92</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.3.3.9.6.1" style="padding-left:8.5pt;padding-right:8.5pt;">Dragon-multiturn, Sequential</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.2" style="padding-left:8.5pt;padding-right:8.5pt;">25.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.3" style="padding-left:8.5pt;padding-right:8.5pt;">36.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.4" style="padding-left:8.5pt;padding-right:8.5pt;">36.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.5" style="padding-left:8.5pt;padding-right:8.5pt;">49.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.6" style="padding-left:8.5pt;padding-right:8.5pt;">35.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.9.6.7" style="padding-left:8.5pt;padding-right:8.5pt;">36.38</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.10.7.1" style="padding-left:8.5pt;padding-right:8.5pt;">Dragon-multiturn, APE</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.2" style="padding-left:8.5pt;padding-right:8.5pt;">23.84</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.3" style="padding-left:8.5pt;padding-right:8.5pt;">34.93</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.4" style="padding-left:8.5pt;padding-right:8.5pt;">33.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.5" style="padding-left:8.5pt;padding-right:8.5pt;">48.70</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.6" style="padding-left:8.5pt;padding-right:8.5pt;">34.92</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.10.7.7" style="padding-left:8.5pt;padding-right:8.5pt;">35.24</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.3.1" style="padding-left:8.5pt;padding-right:8.5pt;"><math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T1.3.3.3.1.m1.1"><semantics id="S5.T1.3.3.3.1.m1.1a"><mi id="S5.T1.3.3.3.1.m1.1.1" mathvariant="normal" xref="S5.T1.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.1.m1.1b"><ci id="S5.T1.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.2.1" style="color:#0000FF;">-1.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.3.1" style="color:#0000FF;">-1.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.4" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.4.1" style="color:#0000FF;">-2.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.5.1" style="color:#0000FF;">-0.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.6" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.6.1" style="color:#0000FF;">-0.20</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.7" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text" id="S5.T1.3.3.3.7.1" style="color:#0000FF;">-1.14</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.3.3.11.8.1" style="padding-left:8.5pt;padding-right:8.5pt;">All texts, APE</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.11.8.2.1">27.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.3" style="padding-left:8.5pt;padding-right:8.5pt;">36.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.4" style="padding-left:8.5pt;padding-right:8.5pt;">35.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.11.8.5.1">49.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.6" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.11.8.6.1">35.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.3.3.11.8.7" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.11.8.7.1">36.78</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of Adaptive Parallel Encoding (APE) against sequential encoding methods on the ChatRAG-Bench benchmark.  The comparison uses three different retrievers (Contriever, GTE-base, and Dragon-multiturn) to retrieve relevant information for generating answers. For each retriever, the table shows the average F1 scores across various subtasks (INSCIT, Doc2Dial, TopicCQA, Qrecc, QuAC), and the overall average across all tasks.  The differences between APE and sequential encoding are highlighted, demonstrating APE's performance gains or losses for each retriever.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between APE and sequential encoding using three retrievers on ChatRAG-Bench.
> </details>





### In-depth insights


#### Adaptive Parallel Encoding
The concept of "Adaptive Parallel Encoding" presented in the research paper addresses the computational bottleneck in context-augmented generation (CAG) methods like RAG and ICL.  Traditional approaches suffer from high latency due to the sequential encoding of multiple contexts for each query.  **Adaptive Parallel Encoding (APE) tackles this by independently pre-computing and caching the key-value (KV) states of each context.** This allows for the direct loading of cached states during inference, significantly speeding up the process.  However, a naive parallel encoding approach leads to accuracy drops. Therefore, **APE introduces three key innovations:** a shared prefix to handle misalignments in the attention distribution, an adaptive temperature to sharpen attention, and a scaling factor to correct for magnitude discrepancies.  The results demonstrate that **APE successfully preserves a high percentage of sequential encoding's performance while significantly outperforming traditional parallel encoding** across multiple tasks and demonstrating scalability to handle many-shot CAG scenarios. The overall efficiency improvements, including a substantial reduction in context prefilling time, make APE a promising technique for improving the practical applicability of CAG in real-world deployments.

#### Long context efficiency
Long context efficiency in large language models (LLMs) is a critical area of research, focusing on enabling LLMs to process and generate coherent outputs from significantly larger input contexts than previously possible.  **The core challenge lies in the computational cost of encoding and attending to these extended contexts.**  Approaches like retrieval augmented generation (RAG) attempt to mitigate this by retrieving only the most relevant information, but this introduces complexities in retrieval and selection.  **Adaptive Parallel Encoding (APE) in this paper addresses the efficiency bottleneck of encoding long contexts by pre-computing and caching each context's key-value (KV) states.** This reduces the computational burden at inference time, enabling much faster response generation.  However, simply parallelizing the encoding process can lead to performance degradation; therefore, APE introduces techniques like shared prefix, attention temperature, and scaling factor to mitigate this, significantly improving accuracy while maintaining speed.  **The overall goal is to unlock the full potential of LLMs by allowing them to leverage the wealth of information available in long contexts while maintaining practical efficiency.** This involves balancing the increased model capacity needed to process long contexts with optimization strategies that prevent latency from becoming a major limitation.  APE's effectiveness in achieving this balance is highlighted by significant speed improvements and a minimal accuracy trade-off.  Future research may focus on exploring further optimization techniques to minimize memory usage while maximizing long-context performance.

#### Attention alignment
Attention alignment in the context of large language models (LLMs) and context-augmented generation (CAG) is crucial for performance.  **Misalignments between parallel and sequential encoding of contexts lead to accuracy drops**, as observed in the paper.  The core of the problem lies in the differing attention weight distributions produced by these two methods.  **Techniques like shared prefixes, adjusted attention temperatures, and scaling factors are proposed to mitigate these differences**. By subtly altering the attention distribution during parallel encoding, these methods aim to bring it closer to the distribution obtained with sequential encoding. The success of these methods demonstrates the importance of **carefully managing attention mechanisms to leverage the efficiency of parallel processing while preserving the accuracy of sequential models**.  **Future work could explore more sophisticated alignment techniques** that go beyond these simple heuristics, perhaps leveraging learned models or more nuanced analysis of attention patterns to optimize alignment dynamically based on context characteristics.

#### Many-shot scalability
The many-shot scalability of APE is a crucial aspect of its effectiveness for real-world applications.  The paper demonstrates that APE maintains high accuracy even when handling hundreds of contexts, **significantly outperforming traditional parallel encoding methods and approaching the accuracy of sequential encoding**. This is achieved without the need for further training, thus highlighting APE's efficiency and practicality.  The ability to effectively manage many-shot scenarios is a **major advantage over existing methods**, particularly for tasks involving extensive contextual information. This scalability stems from APE's ability to pre-compute and cache KV states effectively, allowing for the efficient loading of relevant information at inference time. **The efficient pre-computation drastically reduces the bottleneck in the context prefilling process**, which is often a major constraint in traditional CAG methods. The results show **substantial speed improvements** and **maintains accuracy, highlighting the effectiveness of APE's approach in handling complex, long-context tasks**.  While the paper focuses on RAG and ICL tasks, the findings suggest that APE's many-shot scalability could be generalized to other applications requiring the efficient integration of diverse and extensive contextual information.

#### APE limitations
The heading 'APE limitations' would ideally discuss the shortcomings of the Adaptive Parallel Encoding (APE) method presented in the research paper.  A thoughtful analysis would likely highlight that while APE offers significant speed improvements for context-augmented generation, it's not without its drawbacks.  **One key limitation is APE's sensitivity to hyperparameter tuning**. The optimal settings for attention temperature and scaling factor might vary considerably across different tasks and datasets, necessitating careful experimentation and potentially limiting the method's ease of use and generalizability.  Furthermore, **the effectiveness of APE's alignment strategies could be affected by the variability in context length, quantity, and content found in real-world applications**. In scenarios with highly diverse contexts, maintaining an accurate and efficient alignment between parallel and sequential encoding could pose a challenge.  Additionally, **the reliance on pre-computed KV states**, although accelerating inference, introduces memory and storage requirements, which might become substantial with a large number of contexts.  Finally, a thorough limitations section should **acknowledge the relatively simpler nature of the experiments conducted**, suggesting the need for further evaluation on more complex tasks and larger-scale datasets to fully assess the robustness and practical applicability of the APE technique.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05431/x3.png)

> 🔼 This figure shows the performance comparison of three different context encoding methods (sequential encoding, parallel encoding, and CEPED) on several retrieval-augmented generation (RAG) tasks.  The x-axis represents different RAG tasks, and the y-axis represents the F1 score.  Sequential encoding shows the best performance, while parallel encoding and CEPED both underperform significantly, particularly on tasks that require complex reasoning abilities.
> <details>
> <summary>read the caption</summary>
> (a) Retrieval-augmented Generation
> </details>



![](https://arxiv.org/html/2502.05431/x4.png)

> 🔼 This figure displays the results of in-context learning experiments.  It compares the performance of sequential encoding, parallel encoding, and a fine-tuned model (CEPED) across various tasks.  The performance is measured using F1 score and accuracy, enabling a comparison of the different methods' abilities to generalize to various ICL tasks of differing complexity.
> <details>
> <summary>read the caption</summary>
> (b) In-context Learning
> </details>



![](https://arxiv.org/html/2502.05431/x5.png)

> 🔼 This figure compares the performance of three different context encoding methods: sequential encoding, parallel encoding, and CEPE-Distilled (CEPED), across various retrieval-augmented generation (RAG) and in-context learning (ICL) tasks.  The results show that while parallel encoding offers faster inference times by encoding contexts separately, it significantly reduces accuracy compared to sequential encoding. CEPED, a trainable approach, also underperforms sequential encoding, particularly on tasks requiring complex reasoning, such as GSM8K.  The figure highlights the limitations of parallel encoding and trainable methods in achieving both efficiency and accuracy in context-augmented generation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of sequential encoding, parallel encoding, and CEPED in RAG and ICL scenarios. Parallel encoding and CEPED degrades performance, especially on tasks such as GSM8K that requires reasoning ability.
> </details>



![](https://arxiv.org/html/2502.05431/x6.png)

> 🔼 Figure 3 analyzes the distribution of key and value states in LLMs, specifically focusing on the impact of the attention sink.  The top row shows that the initial key states from different samples have a high cosine similarity (above 0.9) for both LLaMA-3-8B-Instruct and Mistral-7B-Instruct-v0.3. The top right demonstrates that initial key states share similar negative values with those from other positions. The bottom row shows that value states exhibit patterns consistent with the observations made for key states.  This analysis uses a logarithmic scale for the x-axis (position of key/value states).  Further analysis for additional LLMs is provided in Appendix B.
> <details>
> <summary>read the caption</summary>
> Figure 3: Top Left: Both LLaMA-3-8B-Instruct (a) and Mistral-7B-Instruct-v0.3 (b) exhibit a cosine similarity larger than 0.9 for the key states from distinct initial tokens. Top Right: Initial token’s key states show similar negative values to those from other positions for LLaMA-3-8B-Instruct (c) and Mistral-7B-Instruct-v0.3 (d) models. Bottom: Value states exhibit patterns similar to those observed in key states. The X-axis shows positions of key and value states on a logarithmic scale. Visualizations and analyses for more base models are provided in Appendix 11.
> </details>



![](https://arxiv.org/html/2502.05431/x7.png)

> 🔼 This figure visualizes the cosine similarity between query and key states across different layers and positions. The x-axis represents the position of key states (log scale), while the y-axis shows the cosine similarity.  Different colored lines correspond to different layers in the model. The figure helps to understand how the similarity changes with respect to position. A high similarity indicates strong attention.
> <details>
> <summary>read the caption</summary>
> (a) Query-Key Similarity
> </details>



![](https://arxiv.org/html/2502.05431/x8.png)

> 🔼 This figure visualizes the magnitude of key states across different layers of the model and positions within the context.  It shows how the magnitude of key states changes as the position in the sequence increases. This visualization helps to understand the impact of position on the attention mechanism and provides insights into the distribution of attention weights across different parts of the context.
> <details>
> <summary>read the caption</summary>
> (b) Key Magnitude
> </details>



![](https://arxiv.org/html/2502.05431/x9.png)

> 🔼 This figure visualizes the magnitude of value states across different layers and positions within the attention mechanism.  It shows how the magnitude of value states changes as the position in the context sequence increases. This is important because the magnitude of value states influences their contribution to the final attention weights, and thus the generation of the model's output.  The plot likely shows a trend or pattern in the value state magnitudes, possibly highlighting areas where the magnitudes are unusually high or low. This could indicate important information or potential areas of misalignment that the authors might analyze further in the paper.
> <details>
> <summary>read the caption</summary>
> (c) Value Magnitude
> </details>



![](https://arxiv.org/html/2502.05431/x10.png)

> 🔼 This figure visualizes the dot product between query and key states across different layers and positions. It shows that the dot products are generally low except for the initial and recent positions, indicating that the attention mechanism focuses more on tokens at the beginning and end of the context. The X-axis represents the position of key states, and the Y-axis represents the query-key dot product.
> <details>
> <summary>read the caption</summary>
> (d) Query-Key Product
> </details>



![](https://arxiv.org/html/2502.05431/x11.png)

> 🔼 Figure 4 analyzes the attention mechanism's behavior in LLMs.  Panel (a) shows that the cosine similarity between query and key states is higher for closer positions, indicating stronger attention between nearby tokens. Panel (b) illustrates a gradual increase in the magnitude of key states as position advances.  Panel (c) demonstrates that the magnitudes of value states remain relatively stable across all positions. Panel (d) reveals that the query-key dot products generally remain low, with notable exceptions at the beginning and end of the sequence. The red dashed line highlights the first two tokens, which exhibit atypical behavior. The x-axis represents the position of key/value states on a logarithmic scale, and the results are from the LLAMA-3-8B-Instruct model. Appendix B expands on similar visualizations and analysis for other models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of Different Components in Attention. (a) The cosine similarity between query and key states increases as the distance between their positions decreases. (b) The magnitudes of key states show a slowly upward trend as position increases. (c) The magnitude of value states remain constant across positions. (d) Query-key dot products keep consistently low values except at initial and recent positions. A red dashed line marks the anomalous region for the first two tokens in all figures. The X-axis shows positions of KV states on a log scale. Results are measured with the LLaMA-3-8B-Instruct model. Visualizations and analyses for more base models are provided in Appendix 11.
> </details>



![](https://arxiv.org/html/2502.05431/x12.png)

> 🔼 This figure visually demonstrates the geometric relationships between key states (vectors) from different contexts in the model.  It shows how the angle between key states from different contexts is significantly larger than the angle between an initial key state and its subsequent states within the same context. This observation helps explain why the attention mechanism in LLMs can naturally create alignments between contexts even when they are processed independently in parallel. The similarity in angles indicates that the key states are not randomly oriented but exhibit a directional consistency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Geometry of Key States.
> </details>



![](https://arxiv.org/html/2502.05431/x13.png)

> 🔼 This figure shows the impact of rotating the initial token's key states on the model's performance in both sequential and parallel encoding settings.  Different rotation degrees (around random axes) were applied to the initial key states. The x-axis represents the rotation degree, and the y-axis represents the F1 score achieved by the model.  The 'Sequential Encoding' line serves as a baseline, illustrating the model's performance without any rotation.  The 'Parallel Encoding; Same Axis' line shows the results when all contexts use the same rotation axis, while 'Parallel Encoding; Different Axes' shows results when each context gets a unique rotation axis.  The figure demonstrates that while sequential encoding is robust to rotation, parallel encoding exhibits a significant decrease in performance as the rotation degree increases, indicating a greater sensitivity to changes in initial key state orientation. This highlights the potential misalignment issues in parallel encoding, which APE aims to address.
> <details>
> <summary>read the caption</summary>
> Figure 6: Rotation Analysis on the First Token
> </details>



![](https://arxiv.org/html/2502.05431/x14.png)

> 🔼 This figure shows the attention weight distribution within contexts for sequential encoding.  Sequential encoding allocates high attention scores to tokens that are close together in the input sequence, demonstrating the model's sensitivity to the immediate context.  The x-axis shows the position of tokens. This visualization helps to illustrate the typical behavior of attention mechanisms in sequential models, providing a baseline for comparison with other encoding methods shown in subsequent parts of the figure.
> <details>
> <summary>read the caption</summary>
> (a) Sequential
> </details>



![](https://arxiv.org/html/2502.05431/x15.png)

> 🔼 Figure 7(b) displays the attention weight distribution within contexts when using parallel encoding with a temperature (T) of 1.0.  It illustrates how the attention scores are distributed across tokens within each context. This visualization helps to understand the impact of temperature on the attention mechanism and the differences between sequential and parallel encoding.
> <details>
> <summary>read the caption</summary>
> (b) Parallel (T = 1.0)
> </details>



![](https://arxiv.org/html/2502.05431/x16.png)

> 🔼 This figure shows the distribution of attention weights within contexts when using parallel encoding with an attention temperature (T) of 0.2.  It visually compares this distribution to those shown in Figures 7a and 7b (sequential encoding and parallel encoding with T=1.0, respectively). The x-axis represents the token positions, and the y-axis shows the attention weights. Lowering the temperature (T) to 0.2 makes the distribution sparser, focusing attention on the most relevant tokens. This plot helps to illustrate the effect of adjusting the attention temperature as a step in the Adaptive Parallel Encoding (APE) method to align the attention distribution of parallel encoding with sequential encoding.
> <details>
> <summary>read the caption</summary>
> (c) Parallel (T = 0.2)
> </details>



![](https://arxiv.org/html/2502.05431/x17.png)

> 🔼 This figure compares the attention weight distribution within contexts between parallel and sequential encoding methods.  It shows how the parallel encoding, with its inherent distribution of attention scores among neighboring tokens from all contexts, contrasts with the more focused attention distribution of sequential encoding. In particular, it visualizes how adjusting the temperature in parallel encoding (from T=1.0 to T=0.2) can lead to a more sparse distribution, making it closer to that of sequential encoding.
> <details>
> <summary>read the caption</summary>
> (d) Parallel vs. Sequential
> </details>



![](https://arxiv.org/html/2502.05431/x18.png)

> 🔼 Figure 7 demonstrates the effects of different encoding methods and temperature adjustments on the distribution of attention weights within contexts. Panel (a) shows that sequential encoding concentrates attention on nearby tokens. In contrast, panel (b) illustrates that parallel encoding distributes attention more uniformly across neighboring tokens from all contexts.  Panel (c) demonstrates how lowering the temperature parameter (T) makes the attention distribution sparser. Finally, panel (d) shows that after temperature adjustment, the attention weight distribution in parallel encoding closely resembles that of sequential encoding. The horizontal axis of all subplots represents the position of the tokens.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of Attention Weight Distribution within Contexts. (a) Sequential encoding allocates high attention scores to neighboring tokens. (b) Parallel encoding distributes attention scores more uniform across neighboring tokens from all contexts. (c) Adjusting the temperature T𝑇Titalic_T sparsifies the distribution. (d) After adjustment, the distribution in parallel encoding becomes similar to sequential encoding. The X-axis represents token positions.
> </details>



![](https://arxiv.org/html/2502.05431/x19.png)

> 🔼 This figure visualizes the effect of different attention temperatures (T) on the LogSumExp value, a key component in the attention mechanism of the Adaptive Parallel Encoding (APE) model.  It illustrates how changing the temperature impacts the distribution of attention weights across various layers of the model, specifically showing how the LogSumExp value changes as the temperature parameter is varied from 1.0 to 0.1.  Different curves represent the results for distinct layers within the model.
> <details>
> <summary>read the caption</summary>
> Figure 8: Parallel w/ Different T𝑇Titalic_T.
> </details>



![](https://arxiv.org/html/2502.05431/x20.png)

> 🔼 This figure (Figure 11 in the paper) displays the cosine similarity between key states from different samples in each position across various layers for four different language models. The X-axis represents the positions of key states on a logarithmic scale.  The purpose is to visualize the alignment and misalignment between parallel encoding and sequential encoding, highlighting the similarity of key states across different samples, especially in later layers, for LLAMA-3-8B-INSTRUCT, LLAMA-3.1-8B-INSTRUCT, and MISTRAL-7B-INSTRUCT-V0.3. This similarity is strong evidence that parallel encoding can work because of the inherent alignments between KV states from different positions in independent contexts.
> <details>
> <summary>read the caption</summary>
> (a) Llama-3-8B-Instruct
> </details>



![](https://arxiv.org/html/2502.05431/x21.png)

> 🔼 The figure is a visualization of the cosine similarity between key states from distinct initial tokens in the LLAMA-3.1-8B-Instruct model.  The cosine similarity is measured for each layer of the model and plotted against various positions.  This graph helps to show the degree of similarity between different samples across positions within the model. This is part of the analysis on how parallel encoding and sequential encoding differ.
> <details>
> <summary>read the caption</summary>
> (b) Llama-3.1-8B-Instruct
> </details>



![](https://arxiv.org/html/2502.05431/x22.png)

> 🔼 Figure 11 shows the cosine similarity between key states from different initial tokens across various layers for the Mistral-7B-Instruct-v0.3 model.  The x-axis represents the position of key states on a logarithmic scale. The high cosine similarity values, particularly above 0.8, demonstrate a strong alignment between key states from different initial tokens for most layers and positions, especially in the later layers. This indicates the key states of independent contexts are quite similar, which provides evidence supporting the effectiveness of parallel encoding in this model.
> <details>
> <summary>read the caption</summary>
> (c) Mistral-7B-Instruct-v0.3
> </details>



![](https://arxiv.org/html/2502.05431/x23.png)

> 🔼 Figure 11(d) presents a visualization of cosine similarity between key states from different samples in each position for the GEMMA-2-9B-IT language model.  The figure shows a graph plotting cosine similarity against position (log scale).  The graph displays the results for eight different layers in the model.  This visualization aims to highlight the degree of similarity between key state vectors from different model instances, providing insights into the stability and consistency of these vectors at various positions within the sequence. The similarity between key states across various model instances shows how well the parallel encoding method maintains the positional information during the pre-computation of KV states.
> <details>
> <summary>read the caption</summary>
> (d) Gemma-2-9b-it
> </details>



![](https://arxiv.org/html/2502.05431/x24.png)

> 🔼 This figure presents a comparison of the performance of three different context encoding methods on In-Context Learning (ICL) tasks.  The methods compared are Adaptive Parallel Encoding (APE), parallel encoding, and sequential encoding. The performance is evaluated across multiple ICL tasks using different language models (LLaMA-3-8B-INSTRUCT, LLaMA-3.1-8B-INSTRUCT, MISTRAL-7B-INSTRUCT-v0.3, and GEMMA-2-9B-IT) and varying numbers of shots (1-shot, half-shot, and full-shot). The results are displayed in terms of accuracy, highlighting the relative strengths and weaknesses of each encoding method in different ICL scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 9: Performance comparison of APE, parallel encoding, and sequential encoding on ICL tasks.
> </details>



![](https://arxiv.org/html/2502.05431/x25.png)

> 🔼 This figure shows the time taken to pre-process (prefill) the context for a given model before generating text.  The experiment is run with a batch size of 1. The x-axis represents the length of context (in tokens), ranging from 4K to 128K. The y-axis represents the prefilling time in seconds.  Multiple lines represent different methods used for pre-processing: Sequential Encoding, MInference, and APE (Adaptive Parallel Encoding). Comparing the lines shows how APE performs against these other methods in terms of speed of context pre-processing.
> <details>
> <summary>read the caption</summary>
> (a) Prefill Time (bsz=1)
> </details>



![](https://arxiv.org/html/2502.05431/x26.png)

> 🔼 This figure shows the prefilling time taken for different context lengths (4K, 8K, 16K, 32K, 64K, and 128K tokens) using a batch size of 4.  The prefilling time is the time it takes to prepare the context (key-value states) before the model can start generating text in response to a user query. The figure compares the prefilling times of three different encoding methods: Sequential encoding, MInference, and APE (Adaptive Parallel Encoding).  By comparing these methods across various context lengths, we can understand the efficiency gains of APE, particularly for longer contexts.
> <details>
> <summary>read the caption</summary>
> (b) Prefill Time (bsz=4)
> </details>



![](https://arxiv.org/html/2502.05431/x27.png)

> 🔼 This figure shows the total inference time taken for different context lengths using a batch size of 1.  The total time encompasses both the time to pre-fill the context and the time to generate the response.  It compares the performance of sequential encoding, MInference, and APE (Adaptive Parallel Encoding).  The x-axis represents the context length, and the y-axis represents the total inference time in seconds.
> <details>
> <summary>read the caption</summary>
> (c) Total Time (bsz=1)
> </details>



![](https://arxiv.org/html/2502.05431/x28.png)

> 🔼 This figure displays the total inference time taken for different context lengths (4K, 8K, 16K, 32K, 64K, and 128K tokens) when using a batch size of 4.  The total time includes both the time to prefill the context and the time to generate the response.  It compares the performance of sequential encoding, MInference, and APE, illustrating the time efficiency gains achieved by APE across varying context lengths.
> <details>
> <summary>read the caption</summary>
> (d) Total Time (bsz=4)
> </details>



![](https://arxiv.org/html/2502.05431/x29.png)

> 🔼 This figure presents a performance comparison of different context encoding methods on the task of generating text from a long context.  Specifically, it shows the time taken for context pre-filling (preparing the necessary context information) and the total inference time (time to generate the text after pre-filling) for sequential encoding (the traditional method), MInference (an optimized method), and APE (the proposed method). The experiments were run on a H100 GPU with batch sizes of 1 and 4, and various context lengths are tested. The results show that APE significantly reduces both pre-filling time and total inference time compared to sequential encoding and MInference, demonstrating the effectiveness of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 10: Latency on H100 GPU: prefill and total inference time (s). The gray text in brackets is batch size.
> </details>



![](https://arxiv.org/html/2502.05431/x30.png)

> 🔼 This figure displays the cosine similarity between key states from different initial tokens across various layers and positions within the model.  A high cosine similarity indicates that the key states from different samples have similar directions in vector space.  The observation that cosine similarity is higher for initial tokens compared to later tokens within the same layer suggests a consistent attention pattern.  LLaMA models show near-perfect similarity (approaching 1.0), while other models exhibit strong but not as high similarity (ranging from 0.8 to 0.9).  The x-axis displays the position of the key states on a logarithmic scale, allowing a clear visualization of the similarity patterns across various positions.
> <details>
> <summary>read the caption</summary>
> Figure 11: For all base models, key states from distinct inital tokens exhibit a large cosine similarity than the following positions, where the LLaMA family even approaches 1. The X-axis shows positions of key states on a logarithmic scale.
> </details>



![](https://arxiv.org/html/2502.05431/x31.png)

> 🔼 This figure visualizes the cosine similarity between value states from different initial tokens across various layers and positions within four large language models (LLMs): LLAMA-3-8B-Instruct, LLAMA-3.1-8B-Instruct, Mistral-7B-Instruct-v0.3, and Gemma-2-9B-it.  The x-axis represents the position of value states on a logarithmic scale, illustrating how the similarity changes as the position moves away from the initial token. Notably, the plot shows that the cosine similarity between value states of distinct initial tokens is generally high across various layers, except for the first layer and the Gemma-2-9B-it model, indicating a strong similarity in direction and magnitude of value states from different contexts. This observation supports the claim that value states from different contexts can be effectively combined without substantial loss of information.
> <details>
> <summary>read the caption</summary>
> Figure 12: Among four models, value states from distinct inital tokens exhibit a large cosine similarity than the following positions, except the first layer and Gemma-2-9b-it. The X-axis shows positions of value states on a logarithmic scale.
> </details>



![](https://arxiv.org/html/2502.05431/x32.png)

> 🔼 This figure displays the cosine similarity between the initial key state and subsequent key states across various positions for four different large language models (LLMs).  The cosine similarity is calculated to measure the similarity in direction and magnitude of the key states across different positions within the same context.  The x-axis represents position on a logarithmic scale, illustrating how quickly the similarity stabilizes for each model, which indicates the consistency of the key state directions within a context.  The y-axis represents the cosine similarity value.
> <details>
> <summary>read the caption</summary>
> Figure 13: For all base models, the similarity between the initial key state and subsequent key states stabilizes as the position increases. The X-axis shows positions of key states on a logarithmic scale.
> </details>



![](https://arxiv.org/html/2502.05431/x33.png)

> 🔼 This figure visualizes the cosine similarity between the initial value state and subsequent value states across different positions within a sequence for four large language models (LLMs).  The x-axis represents the position of the value state on a logarithmic scale, while the y-axis represents the cosine similarity.  The results show that across all four models, this cosine similarity converges to a nearly constant value after approximately ten tokens. The figure helps demonstrate the stability and consistency of value state representations in LLMs, particularly after the initial few states which exhibit more variation.
> <details>
> <summary>read the caption</summary>
> Figure 14: For all base models, the similarity between the initial value state and subsequent value states stabilizes as the position increases. The X-axis shows positions of value states on a logarithmic scale.
> </details>



![](https://arxiv.org/html/2502.05431/x34.png)

> 🔼 This figure visualizes the cosine similarity between the query state and previous key states across different layers and base models. The x-axis represents the positions of key states, plotted on a logarithmic scale.  The results show that cosine similarity generally stabilizes for most positions. However, there are notable exceptions at the initial and most recent positions, indicating that these positions have higher attention weights compared to other positions.
> <details>
> <summary>read the caption</summary>
> Figure 15: For all base models, the cosine similarity between the query state and past key states stabilizes for most positions, except for the initial and recent key states. The X-axis shows positions of key states on a logarithmic scale.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.15.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.15.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.15.1.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.1.1" style="font-size:90%;">Model</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.2.1" style="font-size:90%;">MuSiQue</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.3.1" style="font-size:90%;">Qasper</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.4.1" style="font-size:90%;">2WikiMQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.5.1" style="font-size:90%;">DuRead</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.6.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.7.1" style="font-size:90%;">NarratQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.8.1" style="font-size:90%;">MFQA_zh</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.9.1" style="font-size:90%;">MFQA_en</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.15.1.1.1.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.1.1.10.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.15.1.2.2.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.1.2.2.1.1" style="font-size:90%;">LLaMA-3-8B-Instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.2.1" style="font-size:90%;">20.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.3.1" style="font-size:90%;">41.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.4.1" style="font-size:90%;">30.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.5.1" style="font-size:90%;">9.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.6.1" style="font-size:90%;">45.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.7.1" style="font-size:90%;">20.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.2.2.8.1" style="font-size:90%;">58.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.9.1" style="font-size:90%;">45.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.2.2.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.2.2.10.1" style="font-size:90%;">33.97</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.3.3.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.1.1" style="font-size:90%;">C200×20, Sequential</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.3.3.2.1" style="font-size:90%;">27.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.3.3.3.1" style="font-size:90%;">42.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.4.1" style="font-size:90%;">38.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.5.1" style="font-size:90%;">12.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.6.1" style="font-size:90%;">49.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.7.1" style="font-size:90%;">22.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.8.1" style="font-size:90%;">57.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.3.3.9.1" style="font-size:90%;">48.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.3.3.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.3.3.10.1" style="font-size:90%;">37.60</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.4.4.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.1.1" style="font-size:90%;">C4000×20, PCW</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.2.1" style="font-size:90%;">18.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.3.1" style="font-size:90%;">42.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.4.1" style="font-size:90%;">40.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.5.1" style="font-size:90%;">21.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.6.1" style="font-size:90%;">47.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.7.1" style="font-size:90%;">23.29</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.8.1" style="font-size:90%;">54.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.9.1" style="font-size:90%;">45.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.4.4.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.4.4.10.1" style="font-size:90%;">36.73</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.5.5" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.5.5.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.5.5.1.1" style="font-size:90%;background-color:#E6FFFF;">C4000×20, APE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.5.5.2.1" style="font-size:90%;background-color:#E6FFFF;">26.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.5.5.3.1" style="font-size:90%;background-color:#E6FFFF;">42.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.5.5.4.1" style="font-size:90%;background-color:#E6FFFF;">44.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.5.5.5.1" style="font-size:90%;background-color:#E6FFFF;">23.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.5.5.6.1" style="font-size:90%;background-color:#E6FFFF;">49.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.5.5.7.1" style="font-size:90%;background-color:#E6FFFF;">30.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.5.5.8.1" style="font-size:90%;background-color:#E6FFFF;">55.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.5.5.9.1" style="font-size:90%;background-color:#E6FFFF;">45.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.5.5.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.5.5.10.1" style="font-size:90%;background-color:#E6FFFF;">39.62</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.15.1.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.1.6.6.1.1" style="font-size:90%;">Mistral-7B-Instruct-v0.3</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.2.1" style="font-size:90%;">10.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.3.1" style="font-size:90%;">31.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.4.1" style="font-size:90%;">22.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.5.1" style="font-size:90%;">17.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.6.1" style="font-size:90%;">32.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.7.1" style="font-size:90%;">19.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.8.1" style="font-size:90%;">32.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.9.1" style="font-size:90%;">40.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.6.6.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.6.6.10.1" style="font-size:90%;">25.64</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.7.7.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.1.1" style="font-size:90%;">C200×20, Sequential</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.2.1" style="font-size:90%;">11.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.3.1" style="font-size:90%;">21.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.4.1" style="font-size:90%;">24.44</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.5.1" style="font-size:90%;">20.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.6.1" style="font-size:90%;">32.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.7.1" style="font-size:90%;">16.06</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.8.1" style="font-size:90%;">34.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.9.1" style="font-size:90%;">38.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.7.7.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.7.7.10.1" style="font-size:90%;">25.06</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.8.8.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.1.1" style="font-size:90%;">C4000×20, PCW</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.2.1" style="font-size:90%;">17.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.3.1" style="font-size:90%;">35.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.4.1" style="font-size:90%;">32.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.5.1" style="font-size:90%;">18.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.6.1" style="font-size:90%;">37.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.7.1" style="font-size:90%;">14.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.8.1" style="font-size:90%;">34.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.9.1" style="font-size:90%;">40.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.8.8.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.8.8.10.1" style="font-size:90%;">28.85</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.9.9" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.9.9.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.9.9.1.1" style="font-size:90%;background-color:#E6FFFF;">C4000×20, APE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.2.1" style="font-size:90%;background-color:#E6FFFF;">20.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.3.1" style="font-size:90%;background-color:#E6FFFF;">36.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.4.1" style="font-size:90%;background-color:#E6FFFF;">34.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.5.1" style="font-size:90%;background-color:#E6FFFF;">21.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.6.1" style="font-size:90%;background-color:#E6FFFF;">42.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.7.1" style="font-size:90%;background-color:#E6FFFF;">20.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.8.1" style="font-size:90%;background-color:#E6FFFF;">40.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.9.1" style="font-size:90%;background-color:#E6FFFF;">44.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.9.9.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.9.9.10.1" style="font-size:90%;background-color:#E6FFFF;">32.55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.15.1.10.10.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.1.10.10.1.1" style="font-size:90%;">Gemma-2-9b-it</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.2.1" style="font-size:90%;">22.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.3.1" style="font-size:90%;">39.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.4.1" style="font-size:90%;">48.06</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.5.1" style="font-size:90%;">27.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.6.1" style="font-size:90%;">47.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.7.1" style="font-size:90%;">23.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.8.1" style="font-size:90%;">50.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.9.1" style="font-size:90%;">45.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.10.10.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.10.10.10.1" style="font-size:90%;">38.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.11.11.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.1.1" style="font-size:90%;">C200×10, Sequential</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.2.1" style="font-size:90%;">30.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.3.1" style="font-size:90%;">42.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.11.11.4.1" style="font-size:90%;">53.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.5.1" style="font-size:90%;">28.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.6.1" style="font-size:90%;">52.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.7.1" style="font-size:90%;">24.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.8.1" style="font-size:90%;">50.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.9.1" style="font-size:90%;">48.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.11.11.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.11.11.10.1" style="font-size:90%;">41.28</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.12.12.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.1.1" style="font-size:90%;">C2000×20, PCW</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.2.1" style="font-size:90%;">26.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.3.1" style="font-size:90%;">46.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.4.1" style="font-size:90%;">47.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.5.1" style="font-size:90%;">23.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.6.1" style="font-size:90%;">48.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.7.1" style="font-size:90%;">27.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.12.12.8.1" style="font-size:90%;">56.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.9.1" style="font-size:90%;">49.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.12.12.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.12.12.10.1" style="font-size:90%;">40.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.13.13" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.13.13.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.13.13.1.1" style="font-size:90%;background-color:#E6FFFF;">C2000×20, APE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.2.1" style="font-size:90%;background-color:#E6FFFF;">33.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.3.1" style="font-size:90%;background-color:#E6FFFF;">47.72</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.13.13.4.1" style="font-size:90%;background-color:#E6FFFF;">49.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.5.1" style="font-size:90%;background-color:#E6FFFF;">28.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.6.1" style="font-size:90%;background-color:#E6FFFF;">56.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.7.1" style="font-size:90%;background-color:#E6FFFF;">30.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.13.13.8.1" style="font-size:90%;background-color:#E6FFFF;">56.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.9.1" style="font-size:90%;background-color:#E6FFFF;">50.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.13.13.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.13.13.10.1" style="font-size:90%;background-color:#E6FFFF;">44.18</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.15.1.14.14.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.1.14.14.1.1" style="font-size:90%;">LLaMA-3.1-8B-Instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.2.1" style="font-size:90%;">22.18</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.14.14.3.1" style="font-size:90%;">46.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.4.1" style="font-size:90%;">40.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.14.14.5.1" style="font-size:90%;">34.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.6.1" style="font-size:90%;">43.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.7.1" style="font-size:90%;">23.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.8.1" style="font-size:90%;">61.60</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.9.1" style="font-size:90%;">51.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.15.1.14.14.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.14.14.10.1" style="font-size:90%;">38.98</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.15.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.15.15.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.1.1" style="font-size:90%;color:#9F9F9F;">128K, Sequential</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.2.1" style="font-size:90%;color:#9F9F9F;">28.35</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.3.1" style="font-size:90%;color:#9F9F9F;">47.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.4.1" style="font-size:90%;color:#9F9F9F;">40.81</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.5.1" style="font-size:90%;color:#9F9F9F;">33.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.6.1" style="font-size:90%;color:#9F9F9F;">53.46</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.7.1" style="font-size:90%;color:#9F9F9F;">30.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.8.1" style="font-size:90%;color:#9F9F9F;">61.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.9.1" style="font-size:90%;color:#9F9F9F;">53.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.15.15.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.15.15.10.1" style="font-size:90%;color:#9F9F9F;">42.24</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.16.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.16.16.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.1.1" style="font-size:90%;">C200×20, Sequential</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.16.16.2.1" style="font-size:90%;">30.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.3.1" style="font-size:90%;">42.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.4.1" style="font-size:90%;">44.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.5.1" style="font-size:90%;">33.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.6.1" style="font-size:90%;">49.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.7.1" style="font-size:90%;">23.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.8.1" style="font-size:90%;">56.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.16.16.9.1" style="font-size:90%;">55.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.16.16.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.16.16.10.1" style="font-size:90%;">40.22</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.17.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.15.1.17.17.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.1.1" style="font-size:90%;">C4000×20, PCW</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.2.1" style="font-size:90%;">21.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.3.1" style="font-size:90%;">41.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.4.1" style="font-size:90%;">44.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.5.1" style="font-size:90%;">31.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.6.1" style="font-size:90%;">49.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.7.1" style="font-size:90%;">19.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.8.1" style="font-size:90%;">60.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.9.1" style="font-size:90%;">51.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.15.1.17.17.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.17.17.10.1" style="font-size:90%;">38.44</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.1.18.18" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.15.1.18.18.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.18.18.1.1" style="font-size:90%;background-color:#E6FFFF;">C4000×20, APE</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.18.18.2.1" style="font-size:90%;background-color:#E6FFFF;">26.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.18.18.3.1" style="font-size:90%;background-color:#E6FFFF;">43.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.18.18.4.1" style="font-size:90%;background-color:#E6FFFF;">50.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.18.18.5.1" style="font-size:90%;background-color:#E6FFFF;">32.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.18.18.6.1" style="font-size:90%;background-color:#E6FFFF;">55.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.18.18.7.1" style="font-size:90%;background-color:#E6FFFF;">30.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.8" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.18.18.8.1" style="font-size:90%;background-color:#E6FFFF;">62.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.9" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text" id="S5.T2.15.1.18.18.9.1" style="font-size:90%;background-color:#E6FFFF;">52.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.15.1.18.18.10" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.15.1.18.18.10.1" style="font-size:90%;background-color:#E6FFFF;">42.86</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of APE's performance against various baselines on the LongBench benchmark.  The experiment uses Retrieval Augmented Generation (RAG) with different models. The table shows results for different numbers of retrieved contexts (M) and the top N retrieved contexts.  The baselines include sequential encoding (without RAG), parallel context windows (PCW), and APE. The performance is evaluated across several different tasks within the LongBench benchmark. Each task's results are shown for each model, along with the average performance across all models.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison between APE and baselines on LongBench across different models using RAG. C denotes Contriever, and M×N𝑀𝑁M\times Nitalic_M × italic_N indicates retrieval of the top-N𝑁Nitalic_N chunks, each containing M𝑀Mitalic_M words.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.5.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.5.1.1.1.1" style="padding-left:5.7pt;padding-right:5.7pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S5.T3.5.1.1.1.2" style="padding-left:5.7pt;padding-right:5.7pt;">Retrieval-augmented Generation</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T3.5.1.1.1.3" style="padding-left:5.7pt;padding-right:5.7pt;">In-context Learning</th>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.1.2.2.1" style="padding-left:5.7pt;padding-right:5.7pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.2" style="padding-left:5.7pt;padding-right:5.7pt;">ArguAna</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.3" style="padding-left:5.7pt;padding-right:5.7pt;">FEVER</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.4" style="padding-left:5.7pt;padding-right:5.7pt;">NQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S5.T3.5.1.2.2.5" style="padding-left:5.7pt;padding-right:5.7pt;">SciFact</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.6" style="padding-left:5.7pt;padding-right:5.7pt;">Date</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.7" style="padding-left:5.7pt;padding-right:5.7pt;">Salient</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.5.1.2.2.8" style="padding-left:5.7pt;padding-right:5.7pt;">Tracking7</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.5.1.2.2.9" style="padding-left:5.7pt;padding-right:5.7pt;">Web</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.5.1.3.1.1" style="padding-left:5.7pt;padding-right:5.7pt;">Sequential, Zero-shot</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.2" style="padding-left:5.7pt;padding-right:5.7pt;">11.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.3" style="padding-left:5.7pt;padding-right:5.7pt;">7.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.4" style="padding-left:5.7pt;padding-right:5.7pt;">17.78</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.5.1.3.1.5" style="padding-left:5.7pt;padding-right:5.7pt;">7.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.6" style="padding-left:5.7pt;padding-right:5.7pt;">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.7" style="padding-left:5.7pt;padding-right:5.7pt;">8.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.8" style="padding-left:5.7pt;padding-right:5.7pt;">1.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.3.1.9" style="padding-left:5.7pt;padding-right:5.7pt;">8.89</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.1.4.2.1" style="padding-left:5.7pt;padding-right:5.7pt;">Sequential, Few-shot</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.2" style="padding-left:5.7pt;padding-right:5.7pt;">11.20</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.3" style="padding-left:5.7pt;padding-right:5.7pt;">9.78</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.4" style="padding-left:5.7pt;padding-right:5.7pt;">17.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.1.4.2.5" style="padding-left:5.7pt;padding-right:5.7pt;">9.49</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.6" style="padding-left:5.7pt;padding-right:5.7pt;">36.64</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.7" style="padding-left:5.7pt;padding-right:5.7pt;">38.89</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.8" style="padding-left:5.7pt;padding-right:5.7pt;">6.67</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.4.2.9" style="padding-left:5.7pt;padding-right:5.7pt;">38.89</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.1.5.3.1" style="padding-left:5.7pt;padding-right:5.7pt;">Sequential, Half-shot</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.2" style="padding-left:5.7pt;padding-right:5.7pt;">15.34</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.3" style="padding-left:5.7pt;padding-right:5.7pt;">13.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.4" style="padding-left:5.7pt;padding-right:5.7pt;">19.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.1.5.3.5" style="padding-left:5.7pt;padding-right:5.7pt;">16.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.6" style="padding-left:5.7pt;padding-right:5.7pt;">45.55</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.7" style="padding-left:5.7pt;padding-right:5.7pt;">42.22</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.8" style="padding-left:5.7pt;padding-right:5.7pt;">8.89</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.5.3.9" style="padding-left:5.7pt;padding-right:5.7pt;">55.56</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.5.1.6.4.1" style="padding-left:5.7pt;padding-right:5.7pt;">Sequential, Full-shot</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.2" style="padding-left:5.7pt;padding-right:5.7pt;">12.84</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.3" style="padding-left:5.7pt;padding-right:5.7pt;">14.19</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.4.1">24.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.5.1.6.4.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.5.1">16.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.6.1">46.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.7" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.7.1">46.67</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.8" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.8.1">8.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.1.6.4.9" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.6.4.9.1">58.89</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.7.5" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.5.1.7.5.1" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T3.5.1.7.5.1.1" style="background-color:#E6FFFF;">APE, Full-shot</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.2" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.7.5.2.1" style="background-color:#E6FFFF;">16.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.3" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.7.5.3.1" style="background-color:#E6FFFF;">14.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.4" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T3.5.1.7.5.4.1" style="background-color:#E6FFFF;">21.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.5.1.7.5.5" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T3.5.1.7.5.5.1" style="background-color:#E6FFFF;">15.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.6" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T3.5.1.7.5.6.1" style="background-color:#E6FFFF;">43.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.7" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text" id="S5.T3.5.1.7.5.7.1" style="background-color:#E6FFFF;">45.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.8" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.7.5.8.1" style="background-color:#E6FFFF;">8.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.5.1.7.5.9" style="padding-left:5.7pt;padding-right:5.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.7.5.9.1" style="background-color:#E6FFFF;">58.89</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Adaptive Parallel Encoding (APE) against sequential encoding in various scenarios involving many contexts for both Retrieval Augmented Generation (RAG) and In-context Learning (ICL).  It shows how APE handles multiple contexts in parallel and compares its accuracy to the standard method, offering insights into its effectiveness in diverse, complex tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison between APE and sequential encoding in various many-shot RAG and ICL tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.2.1" style="font-size:90%;">Task</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.3.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.4.1" style="font-size:90%;">Latency (ms)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.5.1" style="font-size:90%;">Accuracy (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.6.1" style="font-size:90%;">Hallucination</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.1.7.1" style="font-size:90%;">Missing</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_text" id="S6.T4.1.1.1.1.1" style="font-size:90%;">Score</span><sub class="ltx_sub" id="S6.T4.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S6.T4.1.1.1.1.2.1" style="font-size:90%;">a</span></sub>
</th>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.1.1.2.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.1.1" style="font-size:90%;">LLM only</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.1.1.2.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.1.1.2.1.2.1" style="font-size:90%;">Llama-3-8B-Instruct</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.1.1.2.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.3.1" style="font-size:90%;">682</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.1.2.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.4.1" style="font-size:90%;">22.14</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.1.2.1.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.5.1" style="font-size:90%;">48.97</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.1.2.1.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.6.1" style="font-size:90%;">28.90</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.1.2.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.2.1.7.1" style="font-size:90%;">-26.83</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.1.3.1.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.1.1" style="font-size:90%;">Task 1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.1.3.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.1.1.3.1.2.1" style="font-size:90%;">Llama-3-8B-Instruct</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.1.3.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.3.1" style="font-size:90%;">1140</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.3.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.4.1" style="font-size:90%;">23.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.3.1.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.5.1" style="font-size:90%;">29.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.3.1.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.6.1" style="font-size:90%;">47.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.3.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.3.1.7.1" style="font-size:90%;">-6.21</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.1.4.2.1" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.4.2.1.1" style="font-size:90%;background-color:#E6FFFF;">+APE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T4.1.1.4.2.2" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.4.2.2.1" style="font-size:90%;background-color:#E6FFFF;">1054</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.4.2.3" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.4.2.3.1" style="font-size:90%;background-color:#E6FFFF;">25.53</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.4.2.4" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.4.2.4.1" style="font-size:90%;background-color:#E6FFFF;">21.30</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.4.2.5" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.4.2.5.1" style="font-size:90%;background-color:#E6FFFF;">37.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.4.2.6" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.4.2.6.1" style="font-size:90%;background-color:#E6FFFF;">-0.41</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T4.1.1.5.3.1" rowspan="2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.1.1" style="font-size:90%;">Task 2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.1.5.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.1.1.5.3.2.1" style="font-size:90%;">Llama-3-8B-Instruct</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.1.5.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.3.1" style="font-size:90%;">1830</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.5.3.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.4.1" style="font-size:90%;">24.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.5.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.5.1" style="font-size:90%;">28.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.5.3.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.6.1" style="font-size:90%;">47.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.1.5.3.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.5.3.7.1" style="font-size:90%;">-3.92</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.1.1.6.4.1" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.6.4.1.1" style="font-size:90%;background-color:#E6FFFF;">+APE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S6.T4.1.1.6.4.2" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T4.1.1.6.4.2.1" style="font-size:90%;background-color:#E6FFFF;">1672</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.1.6.4.3" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.6.4.3.1" style="font-size:90%;background-color:#E6FFFF;">27.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.1.6.4.4" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.6.4.4.1" style="font-size:90%;background-color:#E6FFFF;">18.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.1.6.4.5" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.6.4.5.1" style="font-size:90%;background-color:#E6FFFF;">37.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.1.6.4.6" style="background-color:#E6FFFF;padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.6.4.6.1" style="font-size:90%;background-color:#E6FFFF;">2.16</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of performance and latency between the Llama-3-8B-Instruct model alone and when augmented with APE on the CRAG benchmark.  It shows the accuracy, hallucination rate, and missing score for two different tasks. Task 1 uses only webpages as additional context, while Task 2 incorporates both webpages and a knowledge graph. The table aims to demonstrate APE's ability to improve performance and reduce latency in real-world RAG applications.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance and latency comparison using the Llama-3-8B-Instruct model on CRAG benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T5.9.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.9.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.7.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><math alttext="P" class="ltx_Math" display="inline" id="S6.T5.7.1.1.1.m1.1"><semantics id="S6.T5.7.1.1.1.m1.1a"><mi id="S6.T5.7.1.1.1.m1.1.1" xref="S6.T5.7.1.1.1.m1.1.1.cmml">P</mi><annotation-xml encoding="MathML-Content" id="S6.T5.7.1.1.1.m1.1b"><ci id="S6.T5.7.1.1.1.m1.1.1.cmml" xref="S6.T5.7.1.1.1.m1.1.1">𝑃</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.7.1.1.1.m1.1c">P</annotation><annotation encoding="application/x-llamapun" id="S6.T5.7.1.1.1.m1.1d">italic_P</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.8.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><math alttext="T" class="ltx_Math" display="inline" id="S6.T5.8.2.2.2.m1.1"><semantics id="S6.T5.8.2.2.2.m1.1a"><mi id="S6.T5.8.2.2.2.m1.1.1" xref="S6.T5.8.2.2.2.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S6.T5.8.2.2.2.m1.1b"><ci id="S6.T5.8.2.2.2.m1.1.1.cmml" xref="S6.T5.8.2.2.2.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.8.2.2.2.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="S6.T5.8.2.2.2.m1.1d">italic_T</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S6.T5.9.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><math alttext="S" class="ltx_Math" display="inline" id="S6.T5.9.3.3.3.m1.1"><semantics id="S6.T5.9.3.3.3.m1.1a"><mi id="S6.T5.9.3.3.3.m1.1.1" xref="S6.T5.9.3.3.3.m1.1.1.cmml">S</mi><annotation-xml encoding="MathML-Content" id="S6.T5.9.3.3.3.m1.1b"><ci id="S6.T5.9.3.3.3.m1.1.1.cmml" xref="S6.T5.9.3.3.3.m1.1.1">𝑆</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T5.9.3.3.3.m1.1c">S</annotation><annotation encoding="application/x-llamapun" id="S6.T5.9.3.3.3.m1.1d">italic_S</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.9.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.9.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;">TriviaQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.9.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;">MMLU</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.9.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S6.T5.9.3.4.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"></th>
<td class="ltx_td ltx_border_t" id="S6.T5.9.3.4.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S6.T5.9.3.4.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S6.T5.9.3.4.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">38.25%</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.9.3.4.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">67.99%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.9.3.4.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">63.09%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.9.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T5.9.3.5.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">✓</th>
<td class="ltx_td" id="S6.T5.9.3.5.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<td class="ltx_td ltx_border_r" id="S6.T5.9.3.5.2.3" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T5.9.3.5.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">50.42%</th>
<td class="ltx_td ltx_align_center" id="S6.T5.9.3.5.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">70.76%</td>
<td class="ltx_td ltx_align_center" id="S6.T5.9.3.5.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">63.70%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.9.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T5.9.3.6.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">✓</th>
<td class="ltx_td ltx_align_center" id="S6.T5.9.3.6.3.2" style="padding-left:2.8pt;padding-right:2.8pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S6.T5.9.3.6.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T5.9.3.6.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">51.15%</th>
<td class="ltx_td ltx_align_center" id="S6.T5.9.3.6.3.5" style="padding-left:2.8pt;padding-right:2.8pt;">71.03%</td>
<td class="ltx_td ltx_align_center" id="S6.T5.9.3.6.3.6" style="padding-left:2.8pt;padding-right:2.8pt;">64.49%</td>
</tr>
<tr class="ltx_tr" id="S6.T5.9.3.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T5.9.3.7.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">✓</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T5.9.3.7.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S6.T5.9.3.7.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">✓</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T5.9.3.7.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.9.3.7.4.4.1">53.62%</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T5.9.3.7.4.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.9.3.7.4.5.1">72.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T5.9.3.7.4.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T5.9.3.7.4.6.1">66.62%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of each component in the Adaptive Parallel Encoding (APE) method on the performance of in-context learning (ICL) tasks.  It shows the effectiveness of the shared prefix (P), attention temperature (T), and scaling factor (S) individually and in combination, demonstrating their contribution to the overall accuracy improvement achieved by APE.  The results are presented as average performance across multiple ICL tasks and multiple base models, facilitating a clear understanding of the relative significance of each component.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study of APE components on ICL tasks. P𝑃Pitalic_P: shared prefix, T𝑇Titalic_T: attention temperature, S𝑆Sitalic_S: scaling factor.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T6.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T6.5.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">NarratQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">Qasper</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">MultiFQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">GovReport</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">QMSum</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;">LCC</td>
</tr>
<tr class="ltx_tr" id="S6.T6.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T6.5.1.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T6.5.1.2.2.1.1">LLaMA-3-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">19.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">32.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">43.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">27.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">22.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.2.2.7" style="padding-left:2.8pt;padding-right:2.8pt;">53.22</td>
</tr>
<tr class="ltx_tr" id="S6.T6.5.1.3.3" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T6.5.1.3.3.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T6.5.1.3.3.1.1" style="background-color:#E6FFFF;">+APE</span></th>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.2.1" style="background-color:#E6FFFF;">26.87</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.3.1" style="background-color:#E6FFFF;">39.14</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.4.1" style="background-color:#E6FFFF;">59.12</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.5.1" style="background-color:#E6FFFF;">29.10</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.6.1" style="background-color:#E6FFFF;">23.08</span></td>
<td class="ltx_td ltx_align_center" id="S6.T6.5.1.3.3.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.3.3.7.1" style="background-color:#E6FFFF;">66.09</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T6.5.1.4.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">RepoBench-P</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">2WikiMQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">MuSiQue</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">MultiNews</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.5.1.4.4.7" style="padding-left:2.8pt;padding-right:2.8pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S6.T6.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T6.5.1.5.5.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T6.5.1.5.5.1.1">LLaMA-3-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.2" style="padding-left:2.8pt;padding-right:2.8pt;">38.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.3" style="padding-left:2.8pt;padding-right:2.8pt;">44.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.4" style="padding-left:2.8pt;padding-right:2.8pt;">21.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.5" style="padding-left:2.8pt;padding-right:2.8pt;">20.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.5.5.6.1">23.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.5.1.5.5.7" style="padding-left:2.8pt;padding-right:2.8pt;">31.50</td>
</tr>
<tr class="ltx_tr" id="S6.T6.5.1.6.6" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T6.5.1.6.6.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T6.5.1.6.6.1.1" style="background-color:#E6FFFF;">+APE</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.6.6.2.1" style="background-color:#E6FFFF;">49.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.6.6.3.1" style="background-color:#E6FFFF;">50.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.6.6.4.1" style="background-color:#E6FFFF;">28.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.6.6.5.1" style="background-color:#E6FFFF;">25.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T6.5.1.6.6.6.1" style="background-color:#E6FFFF;">22.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.5.1.6.6.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T6.5.1.6.6.7.1" style="background-color:#E6FFFF;">38.11</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of APE against various baselines on LongBench, a benchmark dataset for evaluating long-context capabilities in large language models.  The results are shown across eleven different tasks, indicating the accuracy achieved by each method on each task.  The baselines include sequential encoding, and other competitive approaches. This allows for a comprehensive assessment of APE's effectiveness in handling long-context inputs.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison across different long-context tasks on LongBench (Bai et al., 2023).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S13.T7.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S13.T7.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S13.T7.5.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">NarratQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">Qasper</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">MultiFQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;">GovReport</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">QMSum</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;">LCC</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S13.T7.5.1.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S13.T7.5.1.2.2.1.1">LLaMA-3-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">19.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">32.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">43.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">27.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">22.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.2.2.7" style="padding-left:2.8pt;padding-right:2.8pt;">53.22</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.3.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">LLMLingua2</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.2" style="padding-left:2.8pt;padding-right:2.8pt;">21.00</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">25.78</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">48.92</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;">27.09</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;">22.34</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.3.3.7" style="padding-left:2.8pt;padding-right:2.8pt;">16.41</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.4.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">StreamingLLM</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">16.99</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">28.94</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">11.99</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">25.65</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">19.91</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.4.4.7" style="padding-left:2.8pt;padding-right:2.8pt;">40.02</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.5.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">Long-context FT</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.2" style="padding-left:2.8pt;padding-right:2.8pt;">14.88</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.3" style="padding-left:2.8pt;padding-right:2.8pt;">21.70</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.4" style="padding-left:2.8pt;padding-right:2.8pt;">47.79</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.5.5.5.1">32.65</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.5.5.6.1">24.76</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.5.5.7" style="padding-left:2.8pt;padding-right:2.8pt;">55.12</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.6.6.1" style="padding-left:2.8pt;padding-right:2.8pt;">Self-Extend</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.2" style="padding-left:2.8pt;padding-right:2.8pt;">24.82</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.3" style="padding-left:2.8pt;padding-right:2.8pt;">37.94</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.4" style="padding-left:2.8pt;padding-right:2.8pt;">50.99</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.5" style="padding-left:2.8pt;padding-right:2.8pt;">30.48</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.6" style="padding-left:2.8pt;padding-right:2.8pt;">23.36</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.6.6.7" style="padding-left:2.8pt;padding-right:2.8pt;">58.01</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.7.7" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.7.7.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.7.7.1.1" style="background-color:#E6FFFF;">+APE</span></th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.7.7.2.1" style="background-color:#E6FFFF;">26.87</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.7.7.3.1" style="background-color:#E6FFFF;">39.14</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.7.7.4.1" style="background-color:#E6FFFF;">59.12</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.7.7.5.1" style="background-color:#E6FFFF;">29.10</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.7.7.6.1" style="background-color:#E6FFFF;">23.08</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.7.7.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.7.7.7.1" style="background-color:#E6FFFF;">66.09</span></td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S13.T7.5.1.8.8.1" style="padding-left:2.8pt;padding-right:2.8pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.2" style="padding-left:2.8pt;padding-right:2.8pt;">RepoBench-P</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.3" style="padding-left:2.8pt;padding-right:2.8pt;">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.4" style="padding-left:2.8pt;padding-right:2.8pt;">2WikiMQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.5" style="padding-left:2.8pt;padding-right:2.8pt;">MuSiQue</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.6" style="padding-left:2.8pt;padding-right:2.8pt;">MultiNews</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S13.T7.5.1.8.8.7" style="padding-left:2.8pt;padding-right:2.8pt;">Average</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S13.T7.5.1.9.9.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_smallcaps" id="S13.T7.5.1.9.9.1.1">LLaMA-3-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.2" style="padding-left:2.8pt;padding-right:2.8pt;">38.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.3" style="padding-left:2.8pt;padding-right:2.8pt;">44.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.4" style="padding-left:2.8pt;padding-right:2.8pt;">21.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.5" style="padding-left:2.8pt;padding-right:2.8pt;">20.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.6" style="padding-left:2.8pt;padding-right:2.8pt;">23.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S13.T7.5.1.9.9.7" style="padding-left:2.8pt;padding-right:2.8pt;">31.50</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.10.10.1" style="padding-left:2.8pt;padding-right:2.8pt;">LLMLingua2</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.2" style="padding-left:2.8pt;padding-right:2.8pt;">20.56</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.3" style="padding-left:2.8pt;padding-right:2.8pt;">40.16</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.4" style="padding-left:2.8pt;padding-right:2.8pt;">24.72</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.5" style="padding-left:2.8pt;padding-right:2.8pt;">20.85</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.6" style="padding-left:2.8pt;padding-right:2.8pt;">21.34</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.10.10.7" style="padding-left:2.8pt;padding-right:2.8pt;">26.29</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.11.11.1" style="padding-left:2.8pt;padding-right:2.8pt;">StreamingLLM</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.2" style="padding-left:2.8pt;padding-right:2.8pt;">26.16</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.3" style="padding-left:2.8pt;padding-right:2.8pt;">32.76</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.4" style="padding-left:2.8pt;padding-right:2.8pt;">20.12</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.5" style="padding-left:2.8pt;padding-right:2.8pt;">17.32</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.6" style="padding-left:2.8pt;padding-right:2.8pt;">21.49</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.11.11.7" style="padding-left:2.8pt;padding-right:2.8pt;">23.76</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.12.12.1" style="padding-left:2.8pt;padding-right:2.8pt;">Long-context FT</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.2" style="padding-left:2.8pt;padding-right:2.8pt;">43.05</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.3" style="padding-left:2.8pt;padding-right:2.8pt;">15.89</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.4" style="padding-left:2.8pt;padding-right:2.8pt;">10.49</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.5" style="padding-left:2.8pt;padding-right:2.8pt;">8.74</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.6" style="padding-left:2.8pt;padding-right:2.8pt;">24.28</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.12.12.7" style="padding-left:2.8pt;padding-right:2.8pt;">27.21</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S13.T7.5.1.13.13.1" style="padding-left:2.8pt;padding-right:2.8pt;">Self-Extend</th>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.2" style="padding-left:2.8pt;padding-right:2.8pt;">41.83</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.13.13.3.1">51.09</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.4" style="padding-left:2.8pt;padding-right:2.8pt;">24.17</td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.13.13.5.1">28.73</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.13.13.6.1">24.11</span></td>
<td class="ltx_td ltx_align_center" id="S13.T7.5.1.13.13.7" style="padding-left:2.8pt;padding-right:2.8pt;">35.96</td>
</tr>
<tr class="ltx_tr" id="S13.T7.5.1.14.14" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S13.T7.5.1.14.14.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.14.14.1.1" style="background-color:#E6FFFF;">+APE</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.14.14.2.1" style="background-color:#E6FFFF;">49.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.14.14.3.1" style="background-color:#E6FFFF;">50.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.14.14.4.1" style="background-color:#E6FFFF;">28.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.14.14.5.1" style="background-color:#E6FFFF;">25.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S13.T7.5.1.14.14.6.1" style="background-color:#E6FFFF;">22.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S13.T7.5.1.14.14.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S13.T7.5.1.14.14.7.1" style="background-color:#E6FFFF;">38.11</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between the proposed Adaptive Parallel Encoding (APE) method and several existing long-context Large Language Models (LLMs) on the LongBench benchmark dataset.  The comparison is done across multiple tasks, illustrating APE's performance relative to methods that address long context limitations through different techniques (such as truncation, KV caching, and fine-tuning).  Metrics used likely include accuracy or F1 scores on the various LongBench tasks. The aim is to demonstrate APE's competitiveness and potential advantages.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison between APE and long-context LLMs on LongBench (Bai et al., 2023).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05431/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05431/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}