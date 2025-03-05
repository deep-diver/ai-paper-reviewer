---
title: "FR-Spec: Accelerating Large-Vocabulary Language Models via Frequency-Ranked Speculative Sampling"
summary: "FR-Spec: Frequency-Ranked Speculative Sampling accelerates LLMs by optimizing vocabulary space compression, achieving 1.12x speedup over EAGLE-2."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14856 {{< /keyword >}}
{{< keyword icon="writer" >}} Weilin Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14856" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14856" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14856/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) with expanded vocabularies face efficiency challenges in speculative sampling, a technique used to accelerate the generation process. Existing methods struggle with the computational overhead of large vocabulary sizes, particularly in the Language Modeling (LM) Head, which becomes a bottleneck. Current solutions are also hindered by suboptimal implementation frameworks, obscuring the true impact of vocabulary size on performance.



To tackle these challenges, this paper introduces a novel approach called FR-Spec. FR-Spec optimizes the selection of draft candidates by compressing the vocabulary space, focusing on high-frequency tokens. This reduces the computational burden on the LM Head while ensuring the final output distribution remains consistent. The method involves detailed profiling to identify bottlenecks and an optimized implementation framework to ensure accurate evaluation. The results demonstrate that FR-Spec achieves significant speedups over existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FR-Spec optimizes the drafting process in speculative sampling by using a frequency-ranked subset of the vocabulary, reducing LM Head computation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Detailed profiling reveals the LM Head as a key bottleneck in drafting for large-vocabulary LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FR-Spec maintains output distribution equivalence and is compatible with existing speculative sampling techniques. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **FR-Spec, a novel method to accelerate LLMs, particularly in large-vocabulary scenarios**. It offers a practical solution to a growing challenge and shows a way for future research in optimizing language model efficiency without compromising performance. The insights from the detailed profiling analysis are valuable for system-level optimizations in LLM deployment.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14856/x1.png)

> 🔼 This figure compares the time spent on drafting and verification stages of the EAGLE-2 speculative sampling algorithm across three different implementations (Huggingface, SGLang, and an optimized implementation developed by the authors).  The comparison is shown for two different vocabulary sizes: 32k (representing the Llama-2-7B model) and 128k (representing the Llama-3-8B model). The figure visually illustrates how the drafting and verification times change depending on the implementation and the vocabulary size of the language model. This helps to understand the computational bottlenecks and the effectiveness of the authors' optimized implementation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of the drafting and verification times of EAGLE-2 implemented by three frameworks (Huggingface, SGLang, and our optimized implementation) for two vocabulary sizes: 32k (Llama-2-7B) and 128k (Llama-3-8B).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;">Configuration</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">MT.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">Conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.6" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.6.1">QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.7" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.7.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.8" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.8.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.9" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1" style="padding-left:10.0pt;padding-right:10.0pt;">Full Vocab (128k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.3" style="padding-left:10.0pt;padding-right:10.0pt;">4.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.4" style="padding-left:10.0pt;padding-right:10.0pt;">4.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.68</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.89 (100%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.3.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 64k (ShareGPT)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3" style="padding-left:10.0pt;padding-right:10.0pt;">4.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.56</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.3.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.77 (96.9%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.4.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 32k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.57 (91.8%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.5.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 16k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.03</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.74</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.40</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.32 (85.3%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.6.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 8k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.2" style="padding-left:10.0pt;padding-right:10.0pt;">2.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.42</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4" style="padding-left:10.0pt;padding-right:10.0pt;">2.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6" style="padding-left:10.0pt;padding-right:10.0pt;">2.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.7" style="padding-left:10.0pt;padding-right:10.0pt;">2.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.6.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.19</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.06 (78.7%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 64k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.3" style="padding-left:10.0pt;padding-right:10.0pt;">4.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.65</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.7.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.80 (97.7%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.8.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 32k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.85</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.5" style="padding-left:10.0pt;padding-right:10.0pt;">4.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.8.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.63 (93.3%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.1.9.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 16k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.2" style="padding-left:10.0pt;padding-right:10.0pt;">3.20</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.6" style="padding-left:10.0pt;padding-right:10.0pt;">3.19</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.7" style="padding-left:10.0pt;padding-right:10.0pt;">3.28</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.9.8" style="padding-left:10.0pt;padding-right:10.0pt;">3.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.40 (87.4%)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.1.1.10.1" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 8k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.2" style="padding-left:10.0pt;padding-right:10.0pt;">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.3" style="padding-left:10.0pt;padding-right:10.0pt;">3.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.4" style="padding-left:10.0pt;padding-right:10.0pt;">3.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.5" style="padding-left:10.0pt;padding-right:10.0pt;">3.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.6" style="padding-left:10.0pt;padding-right:10.0pt;">2.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.7" style="padding-left:10.0pt;padding-right:10.0pt;">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.10.8" style="padding-left:10.0pt;padding-right:10.0pt;">2.86</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.10.9" style="padding-left:10.0pt;padding-right:10.0pt;">3.13 (80.5%)</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the average accepted length achieved by the FR-Spec model across various configurations with different vocabulary sizes.  The results are shown for the Llama-3-8B language model and are broken down across seven tasks: Machine Translation (MT.), multi-turn conversation (Conv.), retrieval-augmented generation (RAG), arithmetic reasoning (Math), question answering (QA), document summarization (Summ.), and code generation (Code).  Each row represents a different experiment with a varying number of high-frequency tokens used in the drafting process (indicated by +FR and the size of the vocabulary).  The numbers in parentheses show the percentage of the average accepted length relative to the baseline using the full vocabulary. This allows for direct comparison across different vocabulary sizes and evaluation of the trade-off between reduced vocabulary size and maintained model performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Average accepted length for Llama-3-8B under different FR-Spec configurations. The numbers in parentheses (97.7%) indicate the ratio achieved compared to the full vocabulary baseline.
> </details>





### In-depth insights


#### LM Head Bottleneck
The **LM Head bottleneck** refers to the computational burden imposed by the Language Modeling (LM) Head in neural networks, especially within the context of speculative sampling. This bottleneck arises primarily due to the large vocabulary size of modern LLMs, where the LM Head projects the model's hidden states into the vocabulary space. The computational cost of this projection, coupled with the subsequent softmax operation to obtain token probabilities, scales linearly with the vocabulary size. This can become a significant bottleneck, overshadowing the computational cost of the transformer layers themselves. The bottleneck is **exacerbated in speculative sampling** where the draft model, which is designed to be lightweight, often has a 1:1 ratio of transformer layers to LM Heads and is now the larger part of computational load. **Optimizations** for alleviating this bottleneck include vocabulary space compression techniques, such as frequency-ranked sampling, which reduce the vocabulary subset.

#### FR-Spec Design
While the paper does not explicitly use the heading 'FR-Spec Design,' we can infer the design principles from the proposed 'frequency-ranked speculative sampling' framework (FR-Spec). The core idea revolves around **optimizing draft candidate selection by compressing the vocabulary space**. This is achieved by focusing the draft model on a **frequency-prioritized subset of tokens**, effectively reducing the computational overhead associated with the LM Head, especially crucial for large-vocabulary LLMs. The design ensures **mathematical equivalence in the verification process**, guaranteeing the final output distribution remains unaltered compared to standard speculative sampling. The design also includes a plug-and-play nature to ensure that it can be easily used with existing speculative sampling frameworks. In short, it uses frequency distribution for selecting the sub-vocabulary and preserving distribution.

#### C/CUDA EAGLE-2
While the paper doesn't explicitly have a section titled 'C/CUDA EAGLE-2', it details a significant reimplementation of the EAGLE-2 speculative sampling method in C and CUDA. The original EAGLE-2 relied on Python's PyTorch, introducing overhead due to dynamic typing and interpretation. **Switching to C/CUDA** allowed for **direct memory management, preallocation, and optimized operator implementations**, notably modified FlashAttention for tree attention masks. This shift **significantly reduced latency**, streamlining execution, and facilitated a more accurate profiling of bottlenecks. The transition to C/CUDA exposed the LM Head as the primary bottleneck, a finding obscured by Python overhead in the original implementation, highlighting the importance of low-level optimization in analyzing and improving LLM inference.

#### SlimPajama > GPT
While "SlimPajama > GPT" isn't a direct heading from the paper, it sparks interesting thoughts. It suggests comparing the SlimPajama dataset, used for token frequency analysis, with the datasets used to train OpenAI's GPT models. SlimPajama, being a cleaned and deduplicated version of RedPajama, likely offers a more **controlled** and **potentially higher-quality** dataset for pre-training or fine-tuning language models, as seen in the paper. The implication is that models trained on SlimPajama or similar datasets might exhibit improved characteristics compared to those trained on GPT datasets, particularly in terms of **reducing biases** or **improving generalization**. The paper leverages SlimPajama to guide vocabulary selection, impacting efficiency; this highlights the significance of dataset composition. The comparison also prompts questions about the trade-offs between data size and data quality. While GPT datasets are vast, SlimPajama demonstrates the power of carefully curated data in achieving effective results within specific constraints. It underscores the **importance of dataset engineering** in the LLM landscape.

#### No Adaptability
**Lack of adaptability** in language models can significantly hinder their performance across diverse tasks and evolving environments. Models trained on specific datasets or tasks often struggle to generalize to new scenarios, requiring extensive fine-tuning or retraining. This inflexibility can be attributed to the **static nature of their learned representations**, which fail to capture the dynamic nuances of language and context. Moreover, the absence of **efficient mechanisms for incorporating new knowledge** or adapting to shifting user preferences limits their real-world applicability. Overcoming this limitation necessitates the development of more **flexible and adaptive architectures** that can seamlessly integrate new information and adjust their behavior based on evolving contexts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14856/x2.png)

> 🔼 This figure shows the distribution of token frequencies in the Llama-3-8B vocabulary.  The data was obtained by analyzing one billion tokens randomly selected from the SlimPajama-627B dataset. The distribution exhibits a long-tail effect, meaning that a small percentage of tokens (25%) account for most (95%) of the token occurrences in the dataset, while the vast majority of tokens (75%) are very rarely used. This uneven distribution highlights the sparsity in the vocabulary.
> <details>
> <summary>read the caption</summary>
> Figure 2: Token frequency distribution, statistically analyzed using the tokenizer of Llama-3-8B on a subset of 1B tokens randomly sampled from the SlimPajama-627B dataset Soboleva et al. (2023). As shown in the figure, 75% of the vocabulary tokens account for less than 5% of all token occurrences in the dataset, presenting a “Long Tail” effect.
> </details>



![](https://arxiv.org/html/2502.14856/x3.png)

> 🔼 Figure 3 illustrates the drafting processes of both EAGLE-2 and FR-Spec.  The left panel shows EAGLE-2's drafting process with a prompt of 'It', a beam width of 2, and a search depth of 3.  The model generates a draft tree by selecting the top 8 most probable tokens (shown in purple).  The right panel displays FR-Spec's modification to this process. FR-Spec optimizes the drafting process by removing the LM Head (Language Model Head), thereby reducing computational cost while maintaining the beam search methodology unchanged from EAGLE-2. The verification process remains identical between both methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Left) The drafting process of EAGLE-2 when promptP=𝑃absent~{}P=italic_P =“It”, beam w⁢i⁢d⁢t⁢h=2𝑤𝑖𝑑𝑡ℎ2width=2italic_w italic_i italic_d italic_t italic_h = 2 and search d⁢e⁢p⁢t⁢h=3𝑑𝑒𝑝𝑡ℎ3depth=3italic_d italic_e italic_p italic_t italic_h = 3. It picks out the top K=8𝐾8K=8italic_K = 8 probability tokens (purple) as the draft tree. (Right) The drafting process of FR-Spec, where the LM Head is cropped during the drafting process while the beam search procedure remains the same.
> </details>



![](https://arxiv.org/html/2502.14856/x4.png)

> 🔼 This figure illustrates the verification process used in both EAGLE-2 and FR-Spec.  It shows how the target LLM (the full model) verifies the candidate token sequences generated by the draft model (a smaller, faster model) during speculative sampling. The key difference is that FR-Spec uses a reduced vocabulary in its draft model, impacting the drafting process's speed and efficiency without changing the verification process. The figure visually demonstrates how an attention mask is used to selectively attend to the valid draft tokens. This mask helps direct the LLM's attention, ensuring the mathematical equivalence of the output distribution to the original method and enabling the verification process to be consistent across methods. 
> <details>
> <summary>read the caption</summary>
> Figure 4: The illustration of the verification process for EAGLE-2 and FR-Spec, given the draft in Figure 3. FR-Spec solely modifies the drafting process while the verification process remains consistent with EAGLE-2.
> </details>



![](https://arxiv.org/html/2502.14856/x5.png)

> 🔼 This figure compares the performance of Python-based and C-based implementations for three short-duration computational tasks (labeled X, Y, and Z) within the speculative sampling framework.  It highlights the performance overhead introduced by Python's interpreted nature, showcasing the significant speed improvements achieved through native C and CUDA implementations. This is done to isolate the core algorithmic performance from the implementation-related overhead in order to get accurate performance analysis of speculative sampling.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of Python-based implementation and C-based implementation. X, Y, and Z represent three different short-duration computational tasks.
> </details>



![](https://arxiv.org/html/2502.14856/x6.png)

> 🔼 This figure shows a breakdown of the time spent during the drafting process in the EAGLE-2 speculative sampling method.  It compares the time spent on different components of the model for two different LLMs: Llama-2-7B (with a 32k vocabulary) and Llama-3-8B (with a 128k vocabulary). The breakdown shows the proportion of time spent on embedding, the transformer layers, and the LM head (including softmax).  It highlights how the computational bottleneck shifts from the transformer layers in Llama-2-7B to the LM Head in Llama-3-8B as the vocabulary size increases, emphasizing the impact of vocabulary size on the drafting process efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Time breakdown of the drafting process of EAGLE-2. We profile the EAGLE-2 trained on Llama-2-7B (32k vocabulary) and the EAGLE-2 trained on Llama-3-8B (128k vocabulary).
> </details>



![](https://arxiv.org/html/2502.14856/x7.png)

> 🔼 This figure compares the decoding speed, measured in tokens per second, of the FR-Spec method and the EAGLE-2 baseline when used with Llama-3-8B, a large language model. The comparison is done across different implementation frameworks: Hugging Face, SGLang, and a custom-optimized implementation.  The results show the significant speed improvements achieved by FR-Spec in all three frameworks, demonstrating the effectiveness of the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 7: Decoding speed (token/s) of FR-Spec and EAGLE-2 for Llama-3-8B under different frameworks.
> </details>



![](https://arxiv.org/html/2502.14856/x8.png)

> 🔼 This figure compares the decoding speed, measured in tokens per second, of the FR-Spec model and the baseline EAGLE-2 model for the Llama-3.2-1B language model.  The comparison is made across three different implementation frameworks: Huggingface, SGLang, and a custom optimized implementation developed by the authors. The chart visually represents the performance gains achieved by FR-Spec over EAGLE-2 within each framework, illustrating the impact of different implementation choices on speed improvements.  It showcases FR-Spec's significant speedup, especially when compared to the Huggingface and SGLang implementations of EAGLE-2.
> <details>
> <summary>read the caption</summary>
> Figure 8: Decoding speed (token/s) of FR-Spec and EAGLE-2 for Llama-3.2-1B under different implementation framework.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.6.6">
<tr class="ltx_tr" id="S3.T2.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.6.6.7.1" style="padding-left:10.0pt;padding-right:10.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.2.1">MT.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.3.1">Conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.4.1">RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.5.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.6" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.6.1">QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.7" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.7.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.6.6.7.8" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.8.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.7.9" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.7.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.1.1.1.2" style="padding-left:10.0pt;padding-right:10.0pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.3" style="padding-left:10.0pt;padding-right:10.0pt;">90.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.4" style="padding-left:10.0pt;padding-right:10.0pt;">90.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.5" style="padding-left:10.0pt;padding-right:10.0pt;">83.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.6" style="padding-left:10.0pt;padding-right:10.0pt;">91.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.7" style="padding-left:10.0pt;padding-right:10.0pt;">91.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.8" style="padding-left:10.0pt;padding-right:10.0pt;">86.63</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.1.1.9" style="padding-left:10.0pt;padding-right:10.0pt;">90.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1" style="padding-left:10.0pt;padding-right:10.0pt;">89.11 (1.00<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><times id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.2.2.2" style="padding-left:10.0pt;padding-right:10.0pt;">EAGLE-2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.3" style="padding-left:10.0pt;padding-right:10.0pt;">176.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.4" style="padding-left:10.0pt;padding-right:10.0pt;">203.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.5" style="padding-left:10.0pt;padding-right:10.0pt;">168.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.6" style="padding-left:10.0pt;padding-right:10.0pt;">209.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.7" style="padding-left:10.0pt;padding-right:10.0pt;">166.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.8" style="padding-left:10.0pt;padding-right:10.0pt;">167.12</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.2.2.9" style="padding-left:10.0pt;padding-right:10.0pt;">175.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.1" style="padding-left:10.0pt;padding-right:10.0pt;">180.99 (2.03<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.m1.1"><semantics id="S3.T2.2.2.2.1.m1.1a"><mo id="S3.T2.2.2.2.1.m1.1.1" xref="S3.T2.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.m1.1b"><times id="S3.T2.2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.3.3.3.2" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 64k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.3" style="padding-left:10.0pt;padding-right:10.0pt;">192.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.4" style="padding-left:10.0pt;padding-right:10.0pt;">224.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.5" style="padding-left:10.0pt;padding-right:10.0pt;">178.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.6" style="padding-left:10.0pt;padding-right:10.0pt;">231.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.7" style="padding-left:10.0pt;padding-right:10.0pt;">183.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.8" style="padding-left:10.0pt;padding-right:10.0pt;">183.86</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.3.3.9" style="padding-left:10.0pt;padding-right:10.0pt;">183.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.1" style="padding-left:10.0pt;padding-right:10.0pt;">196.86 (2.21<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.m1.1"><semantics id="S3.T2.3.3.3.1.m1.1a"><mo id="S3.T2.3.3.3.1.m1.1.1" xref="S3.T2.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.m1.1b"><times id="S3.T2.3.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.4.4.4.2" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.2.1">+FR 32k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.3" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.3.1">195.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.4" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.4.1">227.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.5" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.5.1">184.85</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.6" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.6.1">243.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.7" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.7.1">190.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.8" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.8.1">188.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.4.9" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.9.1">183.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.4.1" style="padding-left:10.0pt;padding-right:10.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.1.1">201.87 (2.27<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.4.4.4.1.1.m1.1"><semantics id="S3.T2.4.4.4.1.1.m1.1a"><mo id="S3.T2.4.4.4.1.1.m1.1.1" xref="S3.T2.4.4.4.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.1.1.m1.1b"><times id="S3.T2.4.4.4.1.1.m1.1.1.cmml" xref="S3.T2.4.4.4.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.1.1.m1.1d">×</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.5.5.5.2" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 16k</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.3" style="padding-left:10.0pt;padding-right:10.0pt;">194.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.4" style="padding-left:10.0pt;padding-right:10.0pt;">223.32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.5" style="padding-left:10.0pt;padding-right:10.0pt;">178.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.6" style="padding-left:10.0pt;padding-right:10.0pt;">233.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.7" style="padding-left:10.0pt;padding-right:10.0pt;">188.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.8" style="padding-left:10.0pt;padding-right:10.0pt;">182.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.5.5.9" style="padding-left:10.0pt;padding-right:10.0pt;">176.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5.1" style="padding-left:10.0pt;padding-right:10.0pt;">196.69 (2.21<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.5.5.5.1.m1.1"><semantics id="S3.T2.5.5.5.1.m1.1a"><mo id="S3.T2.5.5.5.1.m1.1.1" xref="S3.T2.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.1.m1.1b"><times id="S3.T2.5.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.6.6.6.2" style="padding-left:10.0pt;padding-right:10.0pt;">+FR 8k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.3" style="padding-left:10.0pt;padding-right:10.0pt;">185.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.4" style="padding-left:10.0pt;padding-right:10.0pt;">210.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.5" style="padding-left:10.0pt;padding-right:10.0pt;">167.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.6" style="padding-left:10.0pt;padding-right:10.0pt;">218.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.7" style="padding-left:10.0pt;padding-right:10.0pt;">180.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.8" style="padding-left:10.0pt;padding-right:10.0pt;">170.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.6.6.6.9" style="padding-left:10.0pt;padding-right:10.0pt;">167.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.6.6.1" style="padding-left:10.0pt;padding-right:10.0pt;">185.98 (2.09<math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.6.6.6.1.m1.1"><semantics id="S3.T2.6.6.6.1.m1.1a"><mo id="S3.T2.6.6.6.1.m1.1.1" xref="S3.T2.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.1.m1.1b"><times id="S3.T2.6.6.6.1.m1.1.1.cmml" xref="S3.T2.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the decoding speed, measured in tokens per second, for different methods on the Llama-3-8B language model.  The methods compared include a vanilla autoregressive decoding approach, EAGLE-2 (a state-of-the-art speculative sampling method), and EAGLE-2 enhanced with FR-Spec (the proposed frequency-ranked speculative sampling method) at various vocabulary sizes.  The speed is evaluated using temperature=0. The table shows the speedup factor achieved by each method compared to the vanilla autoregressive decoding. The speedup factors indicate how much faster the methods are compared to the standard vanilla approach.
> <details>
> <summary>read the caption</summary>
> Table 2: Decoding speed (token/s) of FR-Spec and baselines on Llama-3-8B under our implementation framework using temperature=0. The numbers in parentheses (2.27×\times×) indicate the speedup compared to the baseline (Vanilla).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.16.16">
<tr class="ltx_tr" id="S4.T3.16.16.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.16.16.17.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.16.16.17.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.16.16.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T3.16.16.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">EAGLE-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.16.16.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">EAGLE-2(+FR 32k)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.16.16.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">Speedup</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">Speedup</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">MT.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">171.03</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.89<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><times id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.6.1">188.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">2.09<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><times id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">Conv.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">89.85</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">187.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">2.09<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><times id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.6.1">212.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.2.1">2.36<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.4.4.4.2.1.m1.1"><semantics id="S4.T3.4.4.4.2.1.m1.1a"><mo id="S4.T3.4.4.4.2.1.m1.1.1" xref="S4.T3.4.4.4.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.2.1.m1.1b"><times id="S4.T3.4.4.4.2.1.m1.1.1.cmml" xref="S4.T3.4.4.4.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">159.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.92<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><times id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.1">178.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.2.1">2.15<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.6.6.6.2.1.m1.1"><semantics id="S4.T3.6.6.6.2.1.m1.1a"><mo id="S4.T3.6.6.6.2.1.m1.1.1" xref="S4.T3.6.6.6.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.2.1.m1.1b"><times id="S4.T3.6.6.6.2.1.m1.1.1.cmml" xref="S4.T3.6.6.6.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">Math</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">89.75</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">196.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">2.19<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.1.m1.1.1" xref="S4.T3.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><times id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.6.1">237.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.2.1">2.65<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.1.m1.1"><semantics id="S4.T3.8.8.8.2.1.m1.1a"><mo id="S4.T3.8.8.8.2.1.m1.1.1" xref="S4.T3.8.8.8.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.1.m1.1b"><times id="S4.T3.8.8.8.2.1.m1.1.1.cmml" xref="S4.T3.8.8.8.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.10.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">QA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.10.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">155.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.71<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mo id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><times id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.10.6.1">182.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.10.2.1">2.02<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.1.m1.1"><semantics id="S4.T3.10.10.10.2.1.m1.1a"><mo id="S4.T3.10.10.10.2.1.m1.1.1" xref="S4.T3.10.10.10.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.1.m1.1b"><times id="S4.T3.10.10.10.2.1.m1.1.1.cmml" xref="S4.T3.10.10.10.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.12.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">Summ.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.12.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">87.41</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">158.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.82<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.11.11.11.1.m1.1"><semantics id="S4.T3.11.11.11.1.m1.1a"><mo id="S4.T3.11.11.11.1.m1.1.1" xref="S4.T3.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.1.m1.1b"><times id="S4.T3.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.6.1">182.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.2.1">2.09<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.12.12.12.2.1.m1.1"><semantics id="S4.T3.12.12.12.2.1.m1.1a"><mo id="S4.T3.12.12.12.2.1.m1.1.1" xref="S4.T3.12.12.12.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.2.1.m1.1b"><times id="S4.T3.12.12.12.2.1.m1.1.1.cmml" xref="S4.T3.12.12.12.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.14.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">Code</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">89.77</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">180.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">2.01<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.1.m1.1a"><mo id="S4.T3.13.13.13.1.m1.1.1" xref="S4.T3.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.m1.1b"><times id="S4.T3.13.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.14.6.1">183.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.14.2.1">2.04<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.1.m1.1"><semantics id="S4.T3.14.14.14.2.1.m1.1a"><mo id="S4.T3.14.14.14.2.1.m1.1.1" xref="S4.T3.14.14.14.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.1.m1.1b"><times id="S4.T3.14.14.14.2.1.m1.1.1.cmml" xref="S4.T3.14.14.14.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.16.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.16.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">88.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.16.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">172.74</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.95<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.15.15.15.1.m1.1"><semantics id="S4.T3.15.15.15.1.m1.1a"><mo id="S4.T3.15.15.15.1.m1.1.1" xref="S4.T3.15.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.1.m1.1b"><times id="S4.T3.15.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.16.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.16.6.1">195.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.16.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.16.2.1">2.20<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.16.16.16.2.1.m1.1"><semantics id="S4.T3.16.16.16.2.1.m1.1a"><mo id="S4.T3.16.16.16.2.1.m1.1.1" xref="S4.T3.16.16.16.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.2.1.m1.1b"><times id="S4.T3.16.16.16.2.1.m1.1.1.cmml" xref="S4.T3.16.16.16.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the decoding speed, measured in tokens per second, for the Llama-3-8B language model under different conditions.  It compares the vanilla autoregressive decoding method against EAGLE-2 and FR-Spec (integrated with EAGLE-2), using both our optimized implementation and the Huggingface and SGLang frameworks.  The results are shown for several tasks and using a temperature of 1 during generation, highlighting the speed improvements achieved by the speculative sampling methods, particularly FR-Spec, across different implementations.
> <details>
> <summary>read the caption</summary>
> Table 3: Decoding speed (token/s) of Llama-3-8B using temperature=1 under our implementation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.8.8">
<tr class="ltx_tr" id="S4.T4.8.8.9">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.8.8.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.8.8.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">Huggingface</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.8.8.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">Our Implementation</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8.10">
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Benchmark</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.8.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">Temp</td>
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">Vanilla</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.8.8.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">EAGLE-2</td>
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">Vanilla</td>
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">FR-Spec</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.11.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.8.8.11.1.1">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.8.8.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">54.9</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.8.8.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">54.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">57.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">58.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">51.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">±</annotation></semantics></math>1.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">50.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T4.2.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">±</annotation></semantics></math>3.1</td>
<td class="ltx_td ltx_align_left" id="S4.T4.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">51.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.3.m1.1.1" xref="S4.T4.3.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S4.T4.3.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">±</annotation></semantics></math>1.2</td>
<td class="ltx_td ltx_align_left" id="S4.T4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">51.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.m1.1b"><csymbol cd="latexml" id="S4.T4.4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.m1.1d">±</annotation></semantics></math>1.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.8.8.12.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.8.8.12.1.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.8.8.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.8.8.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">77.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.8.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">76.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">1</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">70.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.1.m1.1.1" xref="S4.T4.5.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">±</annotation></semantics></math>2.0</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">66.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.6.6.6.2.m1.1"><semantics id="S4.T4.6.6.6.2.m1.1a"><mo id="S4.T4.6.6.6.2.m1.1.1" xref="S4.T4.6.6.6.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.2.m1.1b"><csymbol cd="latexml" id="S4.T4.6.6.6.2.m1.1.1.cmml" xref="S4.T4.6.6.6.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.2.m1.1d">±</annotation></semantics></math>2.9</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.7.7.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">65.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.7.7.7.3.m1.1"><semantics id="S4.T4.7.7.7.3.m1.1a"><mo id="S4.T4.7.7.7.3.m1.1.1" xref="S4.T4.7.7.7.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.3.m1.1b"><csymbol cd="latexml" id="S4.T4.7.7.7.3.m1.1.1.cmml" xref="S4.T4.7.7.7.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.3.m1.1d">±</annotation></semantics></math>1.8</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">67.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T4.8.8.8.4.m1.1"><semantics id="S4.T4.8.8.8.4.m1.1a"><mo id="S4.T4.8.8.8.4.m1.1.1" xref="S4.T4.8.8.8.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.4.m1.1b"><csymbol cd="latexml" id="S4.T4.8.8.8.4.m1.1.1.cmml" xref="S4.T4.8.8.8.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.4.m1.1d">±</annotation></semantics></math>0.8</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of Llama-3-8B model across two different implementations (Huggingface and the authors' optimized implementation) on two tasks: math reasoning (GSM8K) and code generation (HumanEval).  The results are shown for both greedy decoding (temperature=0) and random sampling (temperature=1). Due to the inherent randomness of random sampling, the average score and variance (across 5 different runs with different random seeds) are reported for temperature=1, while the single deterministic result is presented for temperature=0.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of the Llama-3-8B model on math reasoning and code generation tasks across two implementation frameworks. Due to variability in results with temperature=1, we report the average scores and variance across five different random seeds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.16.16">
<tr class="ltx_tr" id="S4.T5.16.16.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T5.16.16.17.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T5.16.16.17.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.16.16.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.16.16.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">Medusa</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.16.16.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">Medusa (+FR 32k)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.16.16.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.16.16.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.16.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.16.16.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">Speedup</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.16.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">token/s</td>
<td class="ltx_td ltx_align_center" id="S4.T5.16.16.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">Speedup</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">MT.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">146.42</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.61<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><times id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.6.1">157.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.2.1">1.73<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.1.m1.1"><semantics id="S4.T5.2.2.2.2.1.m1.1a"><mo id="S4.T5.2.2.2.2.1.m1.1.1" xref="S4.T5.2.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.1.m1.1b"><times id="S4.T5.2.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">Conv.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.43</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">157.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.75<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.3.3.3.1.m1.1"><semantics id="S4.T5.3.3.3.1.m1.1a"><mo id="S4.T5.3.3.3.1.m1.1.1" xref="S4.T5.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.1.m1.1b"><times id="S4.T5.3.3.3.1.m1.1.1.cmml" xref="S4.T5.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.6.1">169.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.4.2.1">1.87<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.4.4.4.2.1.m1.1"><semantics id="S4.T5.4.4.4.2.1.m1.1a"><mo id="S4.T5.4.4.4.2.1.m1.1.1" xref="S4.T5.4.4.4.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.2.1.m1.1b"><times id="S4.T5.4.4.4.2.1.m1.1.1.cmml" xref="S4.T5.4.4.4.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.6.6.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">RAG</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.43</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">130.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.56<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.5.5.5.1.m1.1"><semantics id="S4.T5.5.5.5.1.m1.1a"><mo id="S4.T5.5.5.5.1.m1.1.1" xref="S4.T5.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.1.m1.1b"><times id="S4.T5.5.5.5.1.m1.1.1.cmml" xref="S4.T5.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.6.1">139.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.6.6.2.1">1.67<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.6.6.6.2.1.m1.1"><semantics id="S4.T5.6.6.6.2.1.m1.1a"><mo id="S4.T5.6.6.6.2.1.m1.1.1" xref="S4.T5.6.6.6.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.2.1.m1.1b"><times id="S4.T5.6.6.6.2.1.m1.1.1.cmml" xref="S4.T5.6.6.6.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.8.8.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">Math</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.8.8.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">91.16</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">160.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.77<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.7.7.7.1.m1.1"><semantics id="S4.T5.7.7.7.1.m1.1a"><mo id="S4.T5.7.7.7.1.m1.1.1" xref="S4.T5.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.7.7.7.1.m1.1b"><times id="S4.T5.7.7.7.1.m1.1.1.cmml" xref="S4.T5.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.7.7.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.8.8.8.6.1">174.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.8.8.8.2.1">1.91<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.8.8.8.2.1.m1.1"><semantics id="S4.T5.8.8.8.2.1.m1.1a"><mo id="S4.T5.8.8.8.2.1.m1.1.1" xref="S4.T5.8.8.8.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.8.8.2.1.m1.1b"><times id="S4.T5.8.8.8.2.1.m1.1.1.cmml" xref="S4.T5.8.8.8.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.8.8.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.8.8.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.10.10.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">QA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.10.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">91.05</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">138.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.53<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.9.9.9.1.m1.1"><semantics id="S4.T5.9.9.9.1.m1.1a"><mo id="S4.T5.9.9.9.1.m1.1.1" xref="S4.T5.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.9.9.9.1.m1.1b"><times id="S4.T5.9.9.9.1.m1.1.1.cmml" xref="S4.T5.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.9.9.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.10.6.1">151.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.10.10.10.2.1">1.66<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.10.10.10.2.1.m1.1"><semantics id="S4.T5.10.10.10.2.1.m1.1a"><mo id="S4.T5.10.10.10.2.1.m1.1.1" xref="S4.T5.10.10.10.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.10.10.2.1.m1.1b"><times id="S4.T5.10.10.10.2.1.m1.1.1.cmml" xref="S4.T5.10.10.10.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.10.10.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.10.10.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.12.12.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">Summ.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.12.12.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">86.63</td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.12.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">130.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.50<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.11.11.11.1.m1.1"><semantics id="S4.T5.11.11.11.1.m1.1a"><mo id="S4.T5.11.11.11.1.m1.1.1" xref="S4.T5.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.11.11.11.1.m1.1b"><times id="S4.T5.11.11.11.1.m1.1.1.cmml" xref="S4.T5.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.11.11.11.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.12.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.12.6.1">141.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.12.12.12.2.1">1.63<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.12.12.12.2.1.m1.1"><semantics id="S4.T5.12.12.12.2.1.m1.1a"><mo id="S4.T5.12.12.12.2.1.m1.1.1" xref="S4.T5.12.12.12.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.12.12.12.2.1.m1.1b"><times id="S4.T5.12.12.12.2.1.m1.1.1.cmml" xref="S4.T5.12.12.12.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.12.12.12.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.12.12.12.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.14.14.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">Code</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.14.14.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">90.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">152.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.13.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.69<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.13.13.13.1.m1.1"><semantics id="S4.T5.13.13.13.1.m1.1a"><mo id="S4.T5.13.13.13.1.m1.1.1" xref="S4.T5.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.13.13.13.1.m1.1b"><times id="S4.T5.13.13.13.1.m1.1.1.cmml" xref="S4.T5.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.13.13.13.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.14.14.14.6.1">161.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.14.14.14.2.1">1.79<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.14.14.14.2.1.m1.1"><semantics id="S4.T5.14.14.14.2.1.m1.1a"><mo id="S4.T5.14.14.14.2.1.m1.1.1" xref="S4.T5.14.14.14.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.14.14.14.2.1.m1.1b"><times id="S4.T5.14.14.14.2.1.m1.1.1.cmml" xref="S4.T5.14.14.14.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.14.14.14.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.14.14.14.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.16.16.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">Average</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.16.16.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">89.11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.16.16.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">145.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">1.63<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.15.15.15.1.m1.1"><semantics id="S4.T5.15.15.15.1.m1.1a"><mo id="S4.T5.15.15.15.1.m1.1.1" xref="S4.T5.15.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.15.15.15.1.m1.1b"><times id="S4.T5.15.15.15.1.m1.1.1.cmml" xref="S4.T5.15.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.15.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.15.15.15.1.m1.1d">×</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.16.16.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.16.16.16.6.1">156.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.16.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.16.16.16.2.1">1.76<math alttext="\times" class="ltx_Math" display="inline" id="S4.T5.16.16.16.2.1.m1.1"><semantics id="S4.T5.16.16.16.2.1.m1.1a"><mo id="S4.T5.16.16.16.2.1.m1.1.1" xref="S4.T5.16.16.16.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T5.16.16.16.2.1.m1.1b"><times id="S4.T5.16.16.16.2.1.m1.1.1.cmml" xref="S4.T5.16.16.16.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.16.16.16.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T5.16.16.16.2.1.m1.1d">×</annotation></semantics></math></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the decoding speed, measured in tokens per second, for the Llama-3-8B language model using the Medusa speculative sampling method with temperature set to 0.  The results show the decoding speed under different configurations, demonstrating the performance improvement achieved by integrating the FR-Spec optimization into the Medusa framework. The benchmarks include various tasks such as machine translation (MT), conversation (Conv), retrieval-augmented generation (RAG), mathematical reasoning (Math), question answering (QA), summarization (Summ.), and code generation (Code).
> <details>
> <summary>read the caption</summary>
> Table 5: Decoding speed (token/s) of Llama-3-8B using temperature=0 under our implemented Medusa.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.1.1">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.1">Configuration</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">MT.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">Conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.4.1">RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.5.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.6.1">QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.7.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.8.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.2.1">Full Vocab (152k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.2">2.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.3">4.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.4">3.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.5">4.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.6">3.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.7">3.74</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.2.8">4.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.9">3.74 (100%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.3.1">+FR 64k (ShareGPT)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.2">2.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.3">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.4">3.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.5">4.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.6">3.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.7">3.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.3.8">4.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.3.9">3.68 (98.6%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.4.1">+FR 32k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.2">2.76</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3">3.90</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.4">3.42</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.5">4.10</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.6">3.24</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.7">3.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.4.8">3.98</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.9">3.54 (94.8%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.5.1">+FR 16k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.2">2.62</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.3">3.64</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.4">3.20</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.5">3.85</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.6">2.99</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.7">3.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.5.8">3.71</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.5.9">3.30 (88.3%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.6.1">+FR 8k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.2">2.45</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.3">3.39</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.4">3.01</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.5">3.60</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.6">2.48</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.7">2.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.6.8">3.41</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.6.9">3.02 (80.9%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.7.1">+FR 64k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.2">2.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.3">3.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.4">3.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.5">4.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.6">3.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.7">3.73</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.7.8">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.7.9">3.69 (98.6%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.8.1">+FR 32k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.2">2.83</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.3">3.73</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.4">3.53</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.5">4.20</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.6">3.39</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.7">3.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.8.8">3.71</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.8.9">3.57 (95.4%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.9.1">+FR 16k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.2">2.67</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.3">3.50</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.4">3.33</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.5">3.95</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.6">3.25</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.7">3.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.9.8">3.40</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.9.9">3.35 (89.7%)</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T6.1.1.10.1">+FR 8k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.2">2.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.3">3.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.4">3.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.5">3.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.6">2.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.7">3.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.1.1.10.8">3.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.10.9">3.10 (83.0%)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average accepted lengths achieved using different FR-Spec configurations on the Qwen-2-7B language model.  The accepted length represents the average number of draft tokens that are ultimately accepted as correct during the speculative sampling process.  Different configurations utilize varying sizes of high-frequency vocabulary subsets (8k, 16k, 32k, and 64k tokens), obtained from both the ShareGPT and SlimPajama datasets, to assess the impact on the generation process's accuracy and efficiency.  Comparing these results against the full vocabulary (152k tokens) provides insights into the trade-off between vocabulary size reduction and maintaining accurate generations.
> <details>
> <summary>read the caption</summary>
> Table 6: Average accepted length for Qwen-2-7B on under different FR-Spec configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T7.1.1.1.1">Configuration</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">MT.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">Conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.5.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.6.1">QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.7.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T7.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.8.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.2.1">Full Vocab (128k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.2">2.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.3">2.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.4">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.5">3.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.6">2.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.7">2.62</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.2.8">3.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.2.9">2.81 (100%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.3.1">+FR 64k (ShareGPT)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.2">2.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.3">2.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.4">2.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.5">3.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.6">2.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.7">2.58</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.8">2.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.9">2.77 (98.6%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.4.1">+FR 32k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.2">2.39</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3">2.90</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.4">2.65</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.5">2.98</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.6">2.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.7">2.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.4.8">2.85</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.9">2.69 (95.7%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.5.1">+FR 16k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.2">2.34</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.3">2.78</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.4">2.56</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.5">2.88</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.6">2.42</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.7">2.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.5.8">2.75</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.9">2.59 (92.3%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.6.1">+FR 8k (ShareGPT)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.2">2.25</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.3">2.66</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.4">2.44</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.5">2.76</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.6">2.35</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.7">2.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.6.8">2.65</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.6.9">2.49 (88.6%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.7.1">+FR 64k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.2">2.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.3">2.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.4">2.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.5">3.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.6">2.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.7">2.61</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.7.8">2.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.7.9">2.77 (98.7%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.8.1">+FR 32k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.2">2.43</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.3">2.82</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.4">2.69</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.5">3.04</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.6">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.7">2.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.8.8">2.70</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.8.9">2.69 (95.8%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.9.1">+FR 16k (SlimPajama)</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.2">2.38</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.3">2.72</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.4">2.62</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.5">2.91</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.6">2.51</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.7">2.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.9.8">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.9.9">2.60 (92.6%)</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.1.1.10.1">+FR 8k (SlimPajama)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.2">2.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.3">2.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.4">2.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.5">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.6">2.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.7">2.39</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.1.1.10.8">2.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.1.1.10.9">2.49 (88.5%)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average accepted length achieved by the Llama-3.2-1B language model under various FR-Spec configurations.  The accepted length represents the average number of draft tokens that are verified as correct during each iteration of the speculative sampling process.  Different configurations use varying sizes of high-frequency vocabulary subsets (8k, 16k, 32k, and 64k tokens) during drafting, while maintaining the full vocabulary for verification. The table compares these results to a baseline using the full 128k vocabulary.  The results show the effect of reducing the vocabulary size for drafting on the average number of accepted tokens.
> <details>
> <summary>read the caption</summary>
> Table 7: Average accepted length for Llama-3.2-1B on under different FR-Spec configurations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.6.6">
<tr class="ltx_tr" id="A1.T8.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T8.6.6.7.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.2"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.2.1">MT.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.3"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.3.1">Conv.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.4"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.4.1">RAG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.5"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.5.1">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.6"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.6.1">QA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.7"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.7.1">Summ.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T8.6.6.7.8"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.8.1">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.6.6.7.9"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.7.9.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T8.1.1.1.2">Vanilla</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.3">259.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.4">255.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.5">220.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.6">263.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.7">260.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.8">248.15</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.1.1.1.9">256.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.1">252.03 (1.00<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.1.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.1.m1.1a"><mo id="A1.T8.1.1.1.1.m1.1.1" xref="A1.T8.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.1.m1.1b"><times id="A1.T8.1.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T8.2.2.2.2">EAGLE-2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.3">306.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.4">358.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.5">266.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.6">372.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.7">305.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.8">294.82</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.2.2.2.9">360.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.1">323.51 (1.28<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.2.2.2.1.m1.1"><semantics id="A1.T8.2.2.2.1.m1.1a"><mo id="A1.T8.2.2.2.1.m1.1.1" xref="A1.T8.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.2.1.m1.1b"><times id="A1.T8.2.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.2.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T8.3.3.3.2">+FR 64k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.3">349.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.4">406.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.5">297.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.6">427.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.7">350.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.8">338.81</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.3.3.3.9">390.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.1">365.67 (1.45<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.3.3.3.1.m1.1"><semantics id="A1.T8.3.3.3.1.m1.1a"><mo id="A1.T8.3.3.3.1.m1.1.1" xref="A1.T8.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.3.1.m1.1b"><times id="A1.T8.3.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.3.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.4.4.4.2">+FR 32k</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.3">378.90</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.4">428.75</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.5">317.68</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.6">467.53</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.7">378.39</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.8">363.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.4.9">395.95</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.1">390.13 (1.55<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.4.4.4.1.m1.1"><semantics id="A1.T8.4.4.4.1.m1.1a"><mo id="A1.T8.4.4.4.1.m1.1.1" xref="A1.T8.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.4.1.m1.1b"><times id="A1.T8.4.4.4.1.m1.1.1.cmml" xref="A1.T8.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.4.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.5.5.5.2"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.2.1">+FR 16k</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.3"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.3.1">394.81</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.4"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.4.1">443.00</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.5"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.5.1">326.75</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.6"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.6.1">476.47</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.7"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.7.1">394.47</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.8"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.8.1">375.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.5.9"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.9.1">402.07</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.1"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.5.1.1">401.90 (1.59<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.5.5.5.1.1.m1.1"><semantics id="A1.T8.5.5.5.1.1.m1.1a"><mo id="A1.T8.5.5.5.1.1.m1.1.1" xref="A1.T8.5.5.5.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.5.1.1.m1.1b"><times id="A1.T8.5.5.5.1.1.m1.1.1.cmml" xref="A1.T8.5.5.5.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.5.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.5.1.1.m1.1d">×</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T8.6.6.6.2">+FR 8k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.3">386.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.4">428.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.5">319.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.6">462.98</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.7">382.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.8">363.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.6.6.6.9">392.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.6.6.6.1">391.01 (1.55<math alttext="\times" class="ltx_Math" display="inline" id="A1.T8.6.6.6.1.m1.1"><semantics id="A1.T8.6.6.6.1.m1.1a"><mo id="A1.T8.6.6.6.1.m1.1.1" xref="A1.T8.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T8.6.6.6.1.m1.1b"><times id="A1.T8.6.6.6.1.m1.1.1.cmml" xref="A1.T8.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T8.6.6.6.1.m1.1d">×</annotation></semantics></math>)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents the decoding speed, measured in tokens per second, achieved by various methods on the Llama-3.2-1B language model.  The methods compared include a vanilla autoregressive decoding approach, the EAGLE-2 speculative sampling method, and EAGLE-2 enhanced with FR-Spec (Frequency-Ranked Speculative Sampling) using different vocabulary subset sizes. The experiment employed a temperature of 0 and used token frequency statistics from the SlimPajama dataset.  The speedup factors shown in parentheses represent the improvement relative to the vanilla autoregressive decoding baseline.
> <details>
> <summary>read the caption</summary>
> Table 8: Decoding speed (token/s) of FR-Spec and other baselines on Llama-3.2-1B under our implementation using temperature=0 and SlimPajama token-frequency statistics. The numbers in parentheses (1.59×\times×) indicate the speedup compared to the baseline (Vanilla).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14856/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14856/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}