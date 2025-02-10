---
title: "Scaling up Test-Time Compute with Latent Reasoning: A Recurrent Depth Approach"
summary: "Boost LLM reasoning power at test time by recursively processing latent information, enabling dramatic performance gains with fewer parameters."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Maryland",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05171 {{< /keyword >}}
{{< keyword icon="writer" >}} Jonas Geiping et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05171" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05171" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05171/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current LLMs often struggle with complex reasoning tasks due to memory and computational constraints, particularly with approaches that rely on chain-of-thought prompting.  Existing reasoning models typically increase computational cost by generating more output tokens, requiring large context windows and extensive training data. This limitation hinders the ability to efficiently adjust reasoning depth based on the task's complexity.

This paper introduces a novel architecture that uses **latent recurrent depth** to scale test-time computation. The model iteratively refines its latent representation at test time without generating intermediate tokens. This approach does not need special training data, works with small context windows, and captures reasoning patterns not easily expressed verbally.  The results show significant performance improvements on reasoning benchmarks, often exceeding those of much larger models, demonstrating the efficiency and effectiveness of the method.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel LLM architecture that scales test-time computation by implicitly reasoning in latent space, unlike standard methods that scale up compute by producing more tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model improves performance on reasoning benchmarks by iterating a recurrent block at test-time, sometimes achieving results equivalent to models with far more parameters. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed architecture naturally supports several inference-time features (like per-token adaptive compute and self-speculative decoding) that are difficult to implement in standard LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on **large language models (LLMs)** and **test-time computation**. It introduces a novel approach to scaling LLM reasoning capabilities, offering a potential solution to the memory and computational limitations of existing methods. The findings also open up exciting new avenues for research into **latent space reasoning** and **adaptive computation**, with implications for both LLM efficiency and performance.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05171/x1.png)

> 🔼 This figure demonstrates the performance of a 3.5 billion parameter language model that utilizes depth recurrence.  Depth recurrence allows the model to iteratively process information in latent space during inference, increasing computation time and improving accuracy.  Unlike methods that rely on chain-of-thought prompting to extend reasoning, this model implicitly reasons in its latent space. The graph shows accuracy improvements across three reasoning benchmarks (ARC challenge, GSM8K Chain-of-Thought, and OpenBookQA) as a function of increasing test-time compute (controlled by the number of recurrent iterations).  OpenBookQA, a task requiring less complex reasoning, shows faster convergence to a peak accuracy than GSM8K, which benefits significantly from increased compute. This highlights the model's ability to leverage additional computation time for improved performance on more demanding reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: We train a 3.5B parameter language model with depth recurrence. At test time, the model can iterate longer to use more compute and improve its performance. Instead of scaling test-time reasoning by “verbalizing” in long Chains-of-Thought, the model improves entirely by reasoning in latent space. Tasks that require less reasoning like OpenBookQA converge quicker than tasks like GSM8k, which effectively make use of more compute.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.5.1.1">Model</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.2">Param</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.5.1.3">Tokens</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.4">ARC-E</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.5">ARC-C</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.6">HellaSwag</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.7">MMLU</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.8">OBQA</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.9">PiQA</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.10">SciQ</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.5.1.11">WinoGrande</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.4.6.2.1">random</th>
<td class="ltx_td ltx_border_tt" id="S4.T1.4.6.2.2"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T1.4.6.2.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.4">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.5">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.6">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.7">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.8">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.9">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.10">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.6.2.11">50.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.4.7.3.1">Amber</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.4.7.3.3">1.2T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.4">65.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.5">37.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.6">72.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.7">26.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.8">41.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.9">78.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.10">88.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.7.3.11">63.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.8.4.1">Pythia-2.8b</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.2">2.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.8.4.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.4">58.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.5">32.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.6">59.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.7">25.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.8">35.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.9">73.29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.10">83.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4.11">57.85</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.9.5.1">Pythia-6.9b</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.2">6.9B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.9.5.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.4">60.48</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.5">34.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.6">63.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.7">25.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.8">37.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.9">75.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.10">82.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5.11">61.40</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.10.6.1">Pythia-12b</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.2">12B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.10.6.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.4">63.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.5">34.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.6">66.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.7">24.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.8">35.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.9">75.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.10">84.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6.11">63.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.11.7.1">OLMo-1B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.2">1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.11.7.3">3T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.4">57.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.5">30.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.6">63.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.7">24.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.8">36.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.9">75.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.10">78.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.7.11">59.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.12.8.1">OLMo-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.12.8.3">2.5T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.4">68.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.5">40.27</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.6">75.52</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.7">28.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.8">42.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.9">80.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.10">88.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8.11">67.09</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.13.9.1">OLMo-7B-0424</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.13.9.3">2.05T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.4">75.13</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.5">45.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.6">77.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.7">47.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.8">41.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.9">80.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.10">96.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9.11">68.19</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.14.10.1">OLMo-7B-0724</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.14.10.3">2.75T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.4">74.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.5">43.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.6">77.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.7">50.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.8">41.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.9">80.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.10">95.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.10.11">67.17</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.4.15.11.1">OLMo-2-1124</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.15.11.3">4T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.4">82.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.5">57.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.6">80.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.7">60.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.8">46.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.9">81.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.10">96.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.11.11">74.74</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.1.1">Ours, (<math alttext="r=4" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.2.cmml">r</mi><mo id="S4.T1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><eq id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1"></eq><ci id="S4.T1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2">𝑟</ci><cn id="S4.T1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">r=4</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">italic_r = 4</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3">0.8T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4">57.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5">22.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6">36.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7">23.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.8">18.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.9">65.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.10">84.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11">55.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.2.1">Ours, (<math alttext="r=8" class="ltx_Math" display="inline" id="S4.T1.2.2.1.m1.1"><semantics id="S4.T1.2.2.1.m1.1a"><mrow id="S4.T1.2.2.1.m1.1.1" xref="S4.T1.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.1.m1.1.1.2" xref="S4.T1.2.2.1.m1.1.1.2.cmml">r</mi><mo id="S4.T1.2.2.1.m1.1.1.1" xref="S4.T1.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.2.2.1.m1.1.1.3" xref="S4.T1.2.2.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.1.m1.1b"><apply id="S4.T1.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.1.m1.1.1"><eq id="S4.T1.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.1.m1.1.1.1"></eq><ci id="S4.T1.2.2.1.m1.1.1.2.cmml" xref="S4.T1.2.2.1.m1.1.1.2">𝑟</ci><cn id="S4.T1.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.1.m1.1c">r=8</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.1.m1.1d">italic_r = 8</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.3">0.8T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4">66.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5">32.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6">45.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7">24.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8">22.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9">70.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.10">91. 5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.11">55.64</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.3.3.1">Ours, (<math alttext="r=16" class="ltx_Math" display="inline" id="S4.T1.3.3.1.m1.1"><semantics id="S4.T1.3.3.1.m1.1a"><mrow id="S4.T1.3.3.1.m1.1.1" xref="S4.T1.3.3.1.m1.1.1.cmml"><mi id="S4.T1.3.3.1.m1.1.1.2" xref="S4.T1.3.3.1.m1.1.1.2.cmml">r</mi><mo id="S4.T1.3.3.1.m1.1.1.1" xref="S4.T1.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.3.3.1.m1.1.1.3" xref="S4.T1.3.3.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.1.m1.1b"><apply id="S4.T1.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.1.m1.1.1"><eq id="S4.T1.3.3.1.m1.1.1.1.cmml" xref="S4.T1.3.3.1.m1.1.1.1"></eq><ci id="S4.T1.3.3.1.m1.1.1.2.cmml" xref="S4.T1.3.3.1.m1.1.1.2">𝑟</ci><cn id="S4.T1.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.3.3.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.1.m1.1c">r=16</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.1.m1.1d">italic_r = 16</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.2">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3">0.8T</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.4">68.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.5">34.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6">48.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7">29.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8">24.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9">73.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.10">93.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.11">57.77</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.4.4.1">Ours, (<math alttext="r=32" class="ltx_Math" display="inline" id="S4.T1.4.4.1.m1.1"><semantics id="S4.T1.4.4.1.m1.1a"><mrow id="S4.T1.4.4.1.m1.1.1" xref="S4.T1.4.4.1.m1.1.1.cmml"><mi id="S4.T1.4.4.1.m1.1.1.2" xref="S4.T1.4.4.1.m1.1.1.2.cmml">r</mi><mo id="S4.T1.4.4.1.m1.1.1.1" xref="S4.T1.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S4.T1.4.4.1.m1.1.1.3" xref="S4.T1.4.4.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.1.m1.1b"><apply id="S4.T1.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.1.m1.1.1"><eq id="S4.T1.4.4.1.m1.1.1.1.cmml" xref="S4.T1.4.4.1.m1.1.1.1"></eq><ci id="S4.T1.4.4.1.m1.1.1.2.cmml" xref="S4.T1.4.4.1.m1.1.1.2">𝑟</ci><cn id="S4.T1.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.4.4.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.2">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.4.4.3">0.8T</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4">69.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.5">38.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.6">65.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.7">31.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.8">38.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.9">76.22</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.10">93.50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.11">59.43</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a zero-shot evaluation of various open-source large language models (LLMs) on a range of benchmark tasks from the lm-eval-harness.  The tasks assess different aspects of language understanding and reasoning abilities, including common sense reasoning (HellaSwag), multiple-choice question answering (ARC, MMLU, OpenBookQA, PiQA, SciQ), and word sense disambiguation (WinoGrande). The table shows each model's performance (normalized accuracy) for each task.  It allows for comparison of models with varying parameter counts and training data sizes.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on lm-eval-harness tasks zero-shot without chat template across various open-source models. We show ARC (Clark et al., 2018), HellaSwag (Zellers et al., 2019), MMLU (Hendrycks et al., 2021b), OpenBookQA (Mihaylov et al., 2018), PiQA (Bisk et al., 2020), SciQ (Johannes Welbl, 2017), and WinoGrande (Sakaguchi et al., 2021). We report normalized accuracy when provided.
> </details>





### In-depth insights


#### Latent Reasoning
Latent reasoning, as explored in the context of this research paper, presents a novel approach to enhance language model capabilities.  Instead of relying on explicit, verbalized reasoning steps (like chain-of-thought), the model implicitly reasons within a continuous latent space. This is achieved by iterating a recurrent block during inference, allowing the model to "think" to an arbitrary depth without explicitly generating intermediate tokens. **The core idea is to leverage the model's internal representations directly, rather than forcing them into a surface-level linguistic format**. This latent reasoning approach proves advantageous because it doesn't need specialized training data and scales test-time computation by increasing the number of iterations of the recurrent block, rather than increasing the number of output tokens.  **This latent approach unlocks additional compute power and allows for handling complex reasoning tasks that are not easily expressed through verbalization.**  The effectiveness of latent reasoning is demonstrated by the model's ability to improve its performance on reasoning benchmarks, even outperforming models with significantly more parameters.

#### Recurrent Depth
The concept of "Recurrent Depth" in the context of large language models (LLMs) introduces a novel approach to scaling test-time computation.  Instead of relying on increased token generation (the typical scaling method), **recurrent depth models iteratively refine their reasoning within a latent space**. This allows for a variable depth of processing at inference time, potentially enhancing performance on complex reasoning tasks without the need for specialized training data or extremely long context windows.  **The core idea is to unroll a recurrent block multiple times during inference**, dynamically adjusting the computational budget based on task difficulty. This contrasts with methods like chain-of-thought prompting, which relies on verbalizing intermediate steps.  **The latent reasoning approach offers advantages in memory efficiency and potentially captures aspects of human reasoning that are difficult to verbalize**.

#### Test-Time Scaling
Test-time scaling in large language models (LLMs) is crucial for practical deployment.  **Traditional methods focus on increasing model size or training data, leading to high computational costs during training.**  However, this paper explores an innovative approach, **recurrence at test time**, allowing for increased computational load without extensive pre-training. The method relies on iterating a recurrent block, thereby dynamically increasing the depth of the model at test-time, and implicitly reasoning in latent space.  **This contrasts with methods that scale computation by generating more tokens, requiring specialized training data.**  This latent reasoning approach offers advantages such as compatibility with small context windows and the ability to capture reasoning patterns not easily expressed linguistically.  The authors demonstrate significant performance gains on reasoning benchmarks using this technique, effectively achieving computational load equivalent to much larger models. This approach is also shown to enable features like per-token adaptive compute and speculative decoding, making it a promising direction for enhancing LLM efficiency and capabilities.

#### Emergent Behavior
Emergent behavior in large language models (LLMs) is a fascinating area of research.  The paper highlights how complex, unexpected capabilities can arise from relatively simple underlying mechanisms.  **Scaling test-time computation through iterative processing in latent space**, rather than simply increasing the number of tokens generated, is a key finding. This demonstrates that **model architecture can significantly influence emergent reasoning abilities.** The study provides visual evidence of how latent space representations evolve through the iterative process, exhibiting interesting patterns like orbiting and sliding, which suggest the model is not simply memorizing but actively computing in a high-dimensional space.  **These emergent behaviors are not explicitly programmed** but emerge as a result of the interplay between model architecture, training data, and the scaling of compute. Further research in this direction promises valuable insights into how LLMs work and how to design more powerful and efficient models.

#### Future of LLMs
The future of LLMs hinges on addressing current limitations and exploring new capabilities.  **Scaling test-time compute** is crucial, moving beyond simply increasing model size or relying on chain-of-thought prompting.  **Latent reasoning**, as explored in this paper, offers a promising path, allowing models to perform complex computations within their latent space without explicit verbalization.  **Improved training data** and **more efficient architectures** are needed.  The development of adaptable compute, where the model's computational effort scales based on the difficulty of the task, will be key.  Furthermore, exploring the **integration of latent reasoning with other techniques**, such as diffusion models and mixture-of-experts, could significantly enhance LLM performance and efficiency.  **Addressing bias and safety concerns** remain paramount, necessitating ongoing research and development of mitigation strategies. Ultimately, the future of LLMs will depend on addressing these challenges while pushing the boundaries of what's possible.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05171/x2.png)

> 🔼 The figure illustrates the model's architecture, which is composed of three main blocks: a prelude, a recurrent block, and a coda.  The prelude block processes the input sequence and embeds it into a latent space.  The recurrent block is the core of the model, iterating multiple times (unrolling at test time) to perform latent reasoning. The number of iterations in the recurrent block is sampled during training and determines the test-time compute budget. Finally, the coda block decodes the final latent state generated by the recurrent block to produce the output sequence. Each block is further comprised of multiple sub-layers, typically transformer layers.  The figure highlights the flow of information through these blocks using color-coding to distinguish them visually. The recurrence allows for scaling test-time compute by increasing the number of iterations in the recurrent block, allowing the model to perform more reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 2: A visualization of the Architecture, as described in Section 3. Each block consists of a number of sub-layers. The blue prelude block embeds the inputs into latent space, where the green shared recurrent block is a block of layers that is repeated to compute the final latent state, which is decoded by the layers of the red coda block.
> </details>



![](https://arxiv.org/html/2502.05171/x3.png)

> 🔼 The figure shows the distribution of the number of recurrent iterations randomly sampled for each training step.  Instead of using a fixed number of iterations, the model is trained with a variable number of iterations drawn from a log-normal Poisson distribution. This approach helps the model learn to handle different computational loads at test time, by ensuring it can scale up the computation if needed without the need for specialized training data. The distribution's properties help balance between shorter and longer computation chains, promoting better generalization.
> <details>
> <summary>read the caption</summary>
> Figure 3: We use a log-normal Poisson Distribution to sample the number of recurrent iterations for each training step.
> </details>



![](https://arxiv.org/html/2502.05171/x4.png)

> 🔼 This figure shows a pie chart that breaks down the composition of the training dataset used for the language model.  The dataset is comprised of several different sources of text and code.  The largest portions of the data are generic web text (28.71%), code (25.36%), and scientific text (18.73%). Smaller portions are made up of synthetic text (8.14%), long-form text (7.5%), math (6.14%), generic instructions (2.09%), Q&A text (1.58%), math instructions (1.51%), writing instructions (0.12%), and miscellaneous reasoning data (0.11%).  This illustrates the diverse range of data types used to train the model, which is likely to contribute to its improved reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of data sources that are included during training. The majority of our data is comprised of generic web-text, scientific writing and code.
> </details>



![](https://arxiv.org/html/2502.05171/x5.png)

> 🔼 This figure displays training curves for three attempts to train the model. The left plot shows the pretraining loss, the middle plot shows the correlation between hidden states, and the right plot shows validation perplexity. The first two attempts failed, exhibiting hidden state collapse (where the model predicts the same hidden state for every token) and recurrence collapse (where the model's performance plateaus despite additional compute).  The final attempt successfully trained a recurrent model, highlighting the importance of the architecture and initialization in enabling successful recurrent training and preventing collapse. The differences in the curves highlight the significance of architectural design and initialization in achieving successful recurrent model training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Plots of the initial 10000 steps for the first two failed attempts and the final, successful run (“Main”). Note the hidden state collapse (middle) and collapse of the recurrence (right) in the first two failed runs, underlining the importance of our architecture and initialization in inducing a recurrent model and explain the underperformance of these runs in terms of pretraining loss (left).
> </details>



![](https://arxiv.org/html/2502.05171/x8.png)

> 🔼 This figure displays the training progress of a large language model.  The left panel shows the training loss, a measure of how well the model is learning during training.  The loss decreases gradually over 800 billion tokens processed. The right panel shows the validation perplexity (val ppl) for different model depths (1, 4, 8, 16, 32, 64).  Validation perplexity is a measure of how well the model performs on unseen data, similar to test data, so it assesses generalization ability.  Importantly, at all tested depths, the validation perplexity decreases as the model trains, indicating improvement in generalization performance across model depths.
> <details>
> <summary>read the caption</summary>
> Figure 6: Left: Plot of pretrain loss over the 800B tokens on the main run. Right: Plot of val ppl at recurrent depths 1, 4, 8, 16, 32, 64. During training, the model improves in perplexity on all levels of recurrence.
> </details>



![](https://arxiv.org/html/2502.05171/x12.png)

> 🔼 This table presents the results of several mathematical reasoning and understanding benchmarks.  The benchmarks used are GSM8K (both standard and Chain-of-Thought versions), Minerva Math, and MathQA.  For GSM8K and GSM8K CoT, the metrics reported are 'flexible extract' and 'strict extract' accuracy.  For Minerva Math, the metric is 'extract match' accuracy, and for MathQA, the metric is 'normalized accuracy'. The table allows for a comparison of the performance of different language models on these challenging tasks. Each row represents a different language model, and the columns show its performance on each benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2: Benchmarks of mathematical reasoning and understanding. We report flexible and strict extract for GSM8K and GSM8K CoT, extract match for Minerva Math, and acc norm. for MathQA.
> </details>



![](https://arxiv.org/html/2502.05171/x13.png)

> 🔼 This table presents the results of evaluating the performance of different language models on two prominent code-related benchmarks: MBPP (Massive Benchmarks for Program Synthesis) and HumanEval (a benchmark focusing on evaluating the code generation capabilities of large language models).  The 'pass@1' metric indicates the percentage of times the model successfully generated correct code on the first attempt.  The table allows for a comparison of various models, showing their relative strengths and weaknesses in terms of code generation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation on code benchmarks, MBPP and HumanEval. We report pass@1 for both datasets.
> </details>



![](https://arxiv.org/html/2502.05171/extracted/6187079/figures/convergence_chart_range_I_74_103.png)

> 🔼 Figure 7 presents a graph illustrating the performance of a recurrent language model on three distinct benchmarks: GSM8K CoT (both strict and flexible match conditions), HellaSwag (accuracy normalized), and HumanEval (pass@1).  The x-axis represents the number of recurrences (test-time compute) used by the model, while the y-axis shows the corresponding performance.  The graph demonstrates that increasing the test-time computation, by allowing more recurrences, generally leads to improved performance across all three benchmarks. Notably, the HellaSwag benchmark shows near peak performance with a relatively small number of recurrences (around 8), suggesting it doesn't require extensive reasoning. In contrast, the GSM8K CoT and HumanEval benchmarks exhibit performance gains even at higher recurrence levels, indicating their need for greater computational resources to solve the problems accurately.  This highlights the varying computational demands of different reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance on GSM8K CoT (strict match and flexible match), HellaSwag (acc norm.), and HumanEval (pass@1). As we increase compute, the performance on these benchmarks increases. HellaSwag only needs 8888 recurrences to achieve near peak performance while other benchmarks make use of more compute.
> </details>



![](https://arxiv.org/html/2502.05171/x17.png)

> 🔼 This figure displays the performance of a recurrent depth language model on three different tasks (GSM8K CoT, HellaSwag, and HumanEval) across various numbers of training tokens and recurrence levels at test time.  The GSM8K CoT results incorporate a chat template and 8-way few-shot learning in a multi-turn setting, while HellaSwag and HumanEval results are generated zero-shot, without a chat template. The graph highlights that the model's performance, particularly on more challenging tasks, shows an almost linear improvement as the training budget (tokens) increases, provided sufficient test-time compute (recurrence steps) is used.
> <details>
> <summary>read the caption</summary>
> Figure 8: GSM8K CoT, HellaSwag, and HumanEval performance over the training tokens with different recurrences at test-time. We evaluate GSM8K CoT with chat template and 8-way few shot as multiturn. HellaSwag and HumanEval are zero-shot with no chat template. Model performance on harder tasks grows almost linearly with the training budget, if provided sufficient test-time compute.
> </details>



![](https://arxiv.org/html/2502.05171/x22.png)

> 🔼 This figure displays the relationship between test-time compute (measured by the number of recurrences), the number of few-shot examples provided as context, and the model's accuracy on the ARC challenge set.  The x-axis represents the number of recurrences, which corresponds to the computational resources used at test time. The y-axis represents the model's accuracy. Different lines show the accuracy achieved when varying numbers of few-shot examples (additional context) are provided. The plot illustrates that when more context is provided, the model's accuracy increases with higher test-time compute (more recurrences) and requires more iterations to reach saturation. This shows that the model effectively uses additional computational time to process the extra information present in the few-shot examples to boost its performance. In other words, the model does not have a fixed limit on its computational budget but dynamically adapts its resource consumption based on the complexity of the task, represented here by the amount of context available.
> <details>
> <summary>read the caption</summary>
> Figure 9: The saturation point in un-normalized accuracy via test-time recurrence on the ARC challenge set is correlated with the number of few-shot examples. The model uses more recurrence to extract more information from the additional few-shot examples, making use of more compute if more context is given.
> </details>



![](https://arxiv.org/html/2502.05171/x23.png)

> 🔼 Figure 10 presents histograms illustrating the number of steps required for a language model to reach a convergence threshold during zero-shot per-token adaptive computation.  The model's task is answering questions from different categories within the MMLU benchmark.  Two scenarios are compared: with and without zero-shot continuous Chain-of-Thought (CoT).  The Kullback-Leibler (KL) divergence between successive steps serves as the convergence metric; convergence is declared when the KL divergence falls below 5e-4.  The histograms show the distribution of the number of steps until convergence for each question category.  Analysis reveals variations in convergence speed across different question categories, with faster convergence observed for questions related to high school mathematics compared to those concerning logical fallacies or moral scenarios.  Interestingly, the model demonstrates the ability to reuse latent states within its continuous CoT, particularly evident in philosophy questions, resulting in fewer steps to convergence for certain tokens within those specific questions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Histograms of zero-shot, per-token adaptive exits based on KL difference between steps for questions from MMLU categories, with and without zero-shot continuous CoT. The mean of each distribution is given in the legends. The exit threshold is fixed to 5×10−45E-45\text{\times}{10}^{-4}start_ARG 5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 4 end_ARG end_ARG. We see that the model converges quicker on high school mathematics than tasks such as logical fallacies or moral scenarios. On some tasks, such as philosophy, the model is able to effectively re-use states in its latent CoT and converge quickly on a subset of tokens, leading to fewer steps required overall.
> </details>



![](https://arxiv.org/html/2502.05171/x24.png)

> 🔼 Figure 11 visualizes the convergence of latent states within a recurrent language model.  The figure displays the distance of each latent state (at each time step of the recurrence) from a final converged state, calculated using 128 iterations.  Each row represents a token in a sentence (ordered from top to bottom). Each column shows a different iteration step of the model's recurrence (ordered from left to right). The input sentence is a question considered unsafe by human standards. The visualization reveals token-specific convergence rates, some converging much faster than others. This is notable because the model was trained with a fixed number of iterations for each entire sequence, not individual tokens.  The figure also shows that the model exhibits varied behaviors in latent space during inference, including oscillating patterns, especially evident for the word 'school'. The visualization demonstrates that even though the model was trained with a fixed recurrence depth, its latent representations can have varied convergence properties, highlighting the dynamic nature of its test-time computation.
> <details>
> <summary>read the caption</summary>
> Figure 11: Convergence of latent states for every token in a sequence (going top to bottom) and latent iterations (going left to right), plotting the distance a final iterate s∗superscript𝑠s^{*}italic_s start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT, which we set with r=128𝑟128r=128italic_r = 128. Shown is an unsafe question posed to the model. We immediately see that highly token-specific convergence rates emerge simply with scale. This is interesting, as the model is only trained with r𝑟ritalic_r fixed for whole sequences seen during training. We see that convergence is especially slow on the key part of the question, really wrong-ed.We further see that the model also learns different behaviors, we see an oscillating pattern in latent space, here most notably for the school token.
> </details>



![](https://arxiv.org/html/2502.05171/extracted/6187079/figures/convergence_chart_range_W_182_241.png)

> 🔼 This figure visualizes the latent space trajectories of selected tokens within a sequence.  The first six principal components (PCs) of the high-dimensional latent space are projected into 2D plots (three pairs of PCs). Each point in a trajectory represents the latent state of a given token at a particular time step during the recurrent process. A color gradient maps the progression of steps within the trajectory, with dark colors indicating early steps and bright colors indicating later steps. The centroid of each trajectory is marked in red.  The top row illustrates simple convergence behavior, where the latent state steadily approaches a fixed point. The middle row showcases the emergence of cyclic or orbital patterns in the latent space, suggesting a more complex, iterative reasoning process. The bottom row exemplifies a 'sliding' behavior along a specific direction in the latent space. These different behaviors demonstrate how the model uses latent space to represent and process various kinds of information, including arithmetic operations and complex deliberation.
> <details>
> <summary>read the caption</summary>
> Figure 12: Latent Space trajectories for select tokens. We show a small part of these high-dimensional trajectories by visualizing the first 6 PCA directions, computing the PCA over all latent state trajectories of all tokens in a sequence. The color gradient going from dark to bright represents steps in the trajectory. The center of mass is marked in red. While on many tokens, the state simply converges (top row), the model also learns to use orbits (middle row), and “sliders” (bottom row, middle) to represent and handle more advanced concepts, such as arithmetic or complicated deliberation.
> </details>



![](https://arxiv.org/html/2502.05171/extracted/6187079/figures/convergence_chart_range_C_19_40.png)

> 🔼 This figure expands on Figure 10 by displaying histograms of the number of steps required to reach a KL-based convergence threshold for various MMLU question categories.  Both zero-shot and continuous chain-of-thought (CoT) results are included for each category, enabling a comparison of convergence speeds under different conditions. The histograms show the distribution of steps needed, revealing differences in convergence behavior across different types of questions.  Faster convergence might indicate easier tasks for the model.
> <details>
> <summary>read the caption</summary>
> Figure 13: Additional categories for Figure 10 in the main body.
> </details>



![](https://arxiv.org/html/2502.05171/extracted/6187079/figures/convergence_chart_range_I_74_103.png)

> 🔼 This figure displays the results of an experiment testing the model's ability to perform multi-operand addition with varying difficulty levels. The experiment involved presenting the model with addition problems of different operand counts and digit counts, using a system prompt and conversational chat template. The results are presented in a heatmap (top left) showing the model's accuracy at 32 recurrences and line charts showing accuracy with varying numbers of recurrences for problems with 1, 2 and 3 digits.  The results suggest that the model's performance improves with increased test-time compute (recurrence) especially for more difficult problems.
> <details>
> <summary>read the caption</summary>
> Figure 14: Multi-Operand Arithmetic. Following a precedent of training recurrent architectures for algorithmic and arithmetic tasks (Schwarzschild et al., 2021b; Bansal et al., 2022; Schwarzschild et al., 2023; McLeish et al., 2024), we explore whether our model can leverage increased test-time compute via recurrence to solve verbalized addition problems of increased difficulty. For these problems we use the following system prompt ‘‘You are a helpful assistant that is capable of helping users with mathematical reasoning.’’ embedded in a conversational chat template, and we present each problem by opening the first user turn of the conversation like so: f'What is the result of ’ + ’.join(map(str, digits))?' after randomly sampling numbers according to a certain operand count and digit count (base 10). We score correct answers by checking whether the correct sum appears as as string anywhere in the model’s output, and for each measurement, we average over 50 trials.   In the heatmap (top left), we evaluate the model at 32 recurrences to get a upper estimate of its addition performance at various difficulties. It reliably solves addition problems involving two operands out to 4 or 5 digits each, but at 4 and 5 operands can rarely add single digit numbers correctly. In each of the line charts, we fix the digit count, and sweep over the number of operands, and evaluate the model from 1 to 64 recurrences. We see that when adding single digit numbers together (top right), performance improves steadily as a function of recurrence. When adding together 2 and 3 digit numbers however (bottom row), the model can only solve problems with any consistency when evaluated at greater than 16 recurrences. Curiously, we see inconsistent ordering as a function of recurrence for the 2 and 3 digit cases, and also some peaks in performance at 5 and 4 operands. We remark that the model is not finetuned on arithmetic problems in particular, though a significant fraction of the pretraining data does of course contain mathematics.
> </details>



![](https://arxiv.org/html/2502.05171/x28.png)

> 🔼 This figure visualizes the latent space trajectories of tokens in three different types of questions: a mathematical question, a trivia question, and an unsafe question.  The top two principal components (PCs) of the latent space are plotted against the token's position in the sequence. Darker colors represent the initial steps of the trajectory while lighter colors indicate later steps. The system prompt is clearly distinct when considering only the first two PCs. Detailed analysis of latent space trajectories, including those for individual tokens, can be found in later sections of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 15: Main directions in latent space, for a) a math question, 2) a trivia question and 3) an unsafe question, which will be described in more detail below. Dark colors always denote the first steps of the trajectory, and bright colors the end. Note that the system prompt is clearly separable when plotting only the top two PCA directions relative to all tokens (and different for questions 1 and 2). Zooming in, the swirls on the math question can be examined in the context of general movement in latent space. More detailed visualizations follow on later pages.
> </details>



![](https://arxiv.org/html/2502.05171/x29.png)

> 🔼 This figure visualizes the latent space trajectories of tokens within a language model processing a math word problem.  The model's internal reasoning is represented by the movement of token vectors through latent space.  The plot shows the trajectory of tokens over several iterations.  It's particularly noteworthy that the model's representation of the number '3' (central to the problem) follows a circular path, suggesting the model performs a form of rotation or cyclical computation to arrive at the solution. This 'rotation' pattern was only observed in mathematical problems; similar plots for other tasks (such as general knowledge questions) showed different, typically linear, trajectories.  The color intensity of the path indicates the progression of the computation, with lighter colors representing earlier steps and darker colors representing later steps.  The center of mass is shown in red.
> <details>
> <summary>read the caption</summary>
> Figure 16: Latent Space trajectories for a math question. The model is rotating the number three, on which the problem hinges. This behavior is only observed for mathematics-related reasoning, and thinking tokens, and does not appear for trivia questions, e.g. as above. The question is Claire makes a 3 egg omelet every morning for breakfast. How many dozens of eggs will she eat in 4 weeks? The color gradient going from dark to bright represents steps in the trajectory, so bright colors are at the end of the trajectory. The center of mass is marked in red.
> </details>



![](https://arxiv.org/html/2502.05171/x30.png)

> 🔼 This figure visualizes the latent space trajectories of tokens in a model's response to a standard trivia question.  The analysis focuses on the movement of token representations within the high-dimensional latent space as the model processes the question. Specifically, it examines how simple tokens (like the intermediate tokens in the word 'Goethe') converge towards a fixed point in the latent space, indicating a stable and predictable representation. The color gradient in the trajectory lines maps the progression of iterations, with dark colors representing early steps and bright colors indicating the end of the iterative process. The center of mass for each trajectory is marked in red.  This visualization offers insights into the model's internal reasoning process, demonstrating a characteristic behavior of convergence without complex patterns such as orbiting or cyclical movement.
> <details>
> <summary>read the caption</summary>
> Figure 17: Latent Space trajectories for a standard trivia question, What do you think of Goethe’s Faust?. Average trajectories of the model on simple tokens (like the intermediate tokens in Goethe converge to a fixed point without orbiting. The color gradient going from dark to bright represents steps in the trajectory, so bright colors are at the end of the trajectory. The center of mass is marked in red.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.2.2.2.3.1.1">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.3.1.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.3.1.3">GSM8k CoT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.3.1.4">Minerva MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.3.1.5">MathQA</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.2.2.4.2.1">Random</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.2">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.3">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.4.2.5">20.00</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.2.2.2.5.3.1">Amber</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5.3.2">3.94/4.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5.3.3">3.34/5.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5.3.4">1.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.2.2.5.3.5">25.26</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.6.4.1">Pythia-2.8b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6.4.2">1.59/2.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6.4.3">1.90/2.81</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6.4.4">1.96</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.6.4.5">24.52</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.7.5.1">Pythia-6.9b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.7.5.2">2.05/2.43</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.7.5.3">2.81/2.88</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.7.5.4">1.38</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.7.5.5">25.96</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.8.6.1">Pythia-12b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.8.6.2">3.49/4.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.8.6.3">3.34/4.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.8.6.4">2.56</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.8.6.5">25.80</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.9.7.1">OLMo-1B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.9.7.2">1.82/2.27</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.9.7.3">1.59/2.58</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.9.7.4">1.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.9.7.5">23.38</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.10.8.1">OLMo-7B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.10.8.2">4.02/4.09</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.10.8.3">6.07/7.28</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.10.8.4">2.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.10.8.5">25.26</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.11.9.1">OLMo-7B-0424</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.11.9.2">27.07/27.29</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.11.9.3">26.23/26.23</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.11.9.4">5.56</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.11.9.5">28.48</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.12.10.1">OLMo-7B-0724</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.12.10.2">28.66/28.73</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.12.10.3">28.89/28.89</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.12.10.4">5.62</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.12.10.5">27.84</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.2.2.2.13.11.1">OLMo-2-1124-7B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.13.11.2">66.72/66.79</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.13.11.3">61.94/66.19</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.13.11.4">19.08</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.13.11.5">37.59</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.1.1.1.1.1">Our w/o sys. prompt (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.1.m1.1.1.2" xref="S5.T3.1.1.1.1.1.m1.1.1.2.cmml">r</mi><mo id="S5.T3.1.1.1.1.1.m1.1.1.1" xref="S5.T3.1.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.1.1.1.1.1.m1.1.1.3" xref="S5.T3.1.1.1.1.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1"><eq id="S5.T3.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1.1"></eq><ci id="S5.T3.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1.2">𝑟</ci><cn id="S5.T3.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.1.1.1.1.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.2">28.05/28.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.3">32.60/34.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.4">12.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.5">26.60</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.2.2.2.2.1">Our w/ sys. prompt (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.2.1.m1.1a"><mrow id="S5.T3.2.2.2.2.1.m1.1.1" xref="S5.T3.2.2.2.2.1.m1.1.1.cmml"><mi id="S5.T3.2.2.2.2.1.m1.1.1.2" xref="S5.T3.2.2.2.2.1.m1.1.1.2.cmml">r</mi><mo id="S5.T3.2.2.2.2.1.m1.1.1.1" xref="S5.T3.2.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.2.2.2.2.1.m1.1.1.3" xref="S5.T3.2.2.2.2.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.1.m1.1b"><apply id="S5.T3.2.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.1.m1.1.1"><eq id="S5.T3.2.2.2.2.1.m1.1.1.1.cmml" xref="S5.T3.2.2.2.2.1.m1.1.1.1"></eq><ci id="S5.T3.2.2.2.2.1.m1.1.1.2.cmml" xref="S5.T3.2.2.2.2.1.m1.1.1.2">𝑟</ci><cn id="S5.T3.2.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.2.2.2.2.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.2.2.2.2">24.87/38.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.2.2.2.3">34.80/42.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.2.2.2.4">11.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.2.2.2.5">27.97</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of recurrent and non-recurrent language models trained on the same dataset and using the same training setup. The comparison highlights the performance difference on various benchmark tasks.  Specifically, it shows that even with a smaller number of tokens (180B), the recurrent model significantly outperforms the non-recurrent model on complex, reasoning-intensive tasks, indicating the benefit of recurrent depth in model architecture.
> <details>
> <summary>read the caption</summary>
> Table 4: Baseline comparison, recurrent versus non-recurrent model trained in the same training setup and data. Comparing the recurrent model with its non-recurrent baseline, we see that even at 180B tokens, the recurrent substantially outperforms on harder tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.3.1.1.2.1.1">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.1.2.1.2">Param</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.3.1.1.2.1.3">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.1.2.1.4">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.1.2.1.5">HumanEval</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.3.1.1.3.2.1">Random</th>
<td class="ltx_td ltx_border_t" id="S5.T3.3.1.1.3.2.2"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T3.3.1.1.3.2.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.3.2.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.3.2.5">0.00</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.3.1.1.4.3.1">starcoder2-3b</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.4.3.2">3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.3.1.1.4.3.3">3.3T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.4.3.4">43.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.4.3.5">31.09</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.5.4.1">starcoder2-7b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.5.4.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.5.4.3">3.7T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.5.4.4">43.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.5.4.5">31.70</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.3.1.1.6.5.1">Amber</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.6.5.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.3.1.1.6.5.3">1.2T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.6.5.4">19.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.1.1.6.5.5">13.41</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.7.6.1">Pythia-2.8b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.7.6.2">2.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.7.6.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.7.6.4">6.70</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.7.6.5">7.92</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.8.7.1">Pythia-6.9b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.8.7.2">6.9B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.8.7.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.8.7.4">7.92</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.8.7.5">5.60</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.9.8.1">Pythia-12b</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.9.8.2">12B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.9.8.3">0.3T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.9.8.4">5.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.9.8.5">9.14</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.10.9.1">OLMo-1B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.10.9.2">1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.10.9.3">3T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.10.9.4">0.00</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.10.9.5">4.87</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.11.10.1">OLMo-7B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.11.10.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.11.10.3">2.5T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.11.10.4">15.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.11.10.5">12.80</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.12.11.1">OLMo-7B-0424</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.12.11.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.12.11.3">2.05T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.12.11.4">21.20</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.12.11.5">16.46</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.13.12.1">OLMo-7B-0724</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.13.12.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.13.12.3">2.75T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.13.12.4">25.60</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.13.12.5">20.12</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T3.3.1.1.14.13.1">OLMo-2-1124-7B</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.14.13.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.1.1.14.13.3">4T</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.14.13.4">21.80</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.1.1.14.13.5">10.36</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.3.1.1.1.1">Ours (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T3.3.1.1.1.1.m1.1"><semantics id="S5.T3.3.1.1.1.1.m1.1a"><mrow id="S5.T3.3.1.1.1.1.m1.1.1" xref="S5.T3.3.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.3.1.1.1.1.m1.1.1.2" xref="S5.T3.3.1.1.1.1.m1.1.1.2.cmml">r</mi><mo id="S5.T3.3.1.1.1.1.m1.1.1.1" xref="S5.T3.3.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T3.3.1.1.1.1.m1.1.1.3" xref="S5.T3.3.1.1.1.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.3.1.1.1.1.m1.1b"><apply id="S5.T3.3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.3.1.1.1.1.m1.1.1"><eq id="S5.T3.3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.3.1.1.1.1.m1.1.1.1"></eq><ci id="S5.T3.3.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.3.1.1.1.1.m1.1.1.2">𝑟</ci><cn id="S5.T3.3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.3.1.1.1.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.1.1.1.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.1.1.1.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.1.1.2">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.3.1.1.1.3">0.8T</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.1.1.4">24.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.1.1.1.5">23.17</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several large language models on the OpenBookQA question answering benchmark.  The benchmark includes two question types: 'closed,' where only the question is given, and 'open,' where a relevant fact is provided before the question. The table shows the percentage accuracy achieved by each model on both question types, demonstrating the improvement in model performance under the 'open' condition.  The table highlights that the model developed by the authors, despite having fewer parameters, achieves performance competitive with larger models on the 'open' condition. This suggests the model is capable of reasoning, but has limited fact memorization compared to larger models.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of Open and Closed QA Performance (%) (Mihaylov et al., 2018). In the open exam, a relevant fact is provided before the question is asked. In this setting, our smaller model closes the gap to other open-source models, indicating that the model is capable, but has fewer facts memorized.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.4.4.5.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.4.4.5.1.2">Tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.3">ARC-E</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.4">ARC-C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.5">HellaSwag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.6">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.7">OBQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.8">PiQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.9">SciQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.10">WinoGrande</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.4.5.1.11">GSM8K CoT</th>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.4.4.6.2.1">Fixed-Depth Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.4.4.6.2.2">0.18T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.3">46.42</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.4">26.96</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.5">37.34</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.6">24.16</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.7">29.60</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.8">64.47</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.9">73.20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.10">51.78</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.4.4.6.2.11">1.82/2.20</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.1.1.1.1">Ours, early ckpt, (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml"><mi id="S5.T4.1.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.1.m1.1.1.2.cmml">r</mi><mo id="S5.T4.1.1.1.1.m1.1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S5.T4.1.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"><eq id="S5.T4.1.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1.1"></eq><ci id="S5.T4.1.1.1.1.m1.1.1.2.cmml" xref="S5.T4.1.1.1.1.m1.1.1.2">𝑟</ci><cn id="S5.T4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.1.1.1.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.1.1.1.2">0.18T</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.3">53.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.4">29.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.5">48.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.6">25.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.7">31.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.8">68.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.9">80.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.10">52.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.11">9.02/10.24</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.2.2.1">Ours, early ckpt, (<math alttext="r=1" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mrow id="S5.T4.2.2.2.1.m1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.cmml"><mi id="S5.T4.2.2.2.1.m1.1.1.2" xref="S5.T4.2.2.2.1.m1.1.1.2.cmml">r</mi><mo id="S5.T4.2.2.2.1.m1.1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S5.T4.2.2.2.1.m1.1.1.3" xref="S5.T4.2.2.2.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><apply id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1"><eq id="S5.T4.2.2.2.1.m1.1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1.1"></eq><ci id="S5.T4.2.2.2.1.m1.1.1.2.cmml" xref="S5.T4.2.2.2.1.m1.1.1.2">𝑟</ci><cn id="S5.T4.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.2.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">r=1</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">italic_r = 1</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T4.2.2.2.2">0.18T</th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.3">34.01</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.4">23.72</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.5">29.19</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.6">23.47</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.7">25.60</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.8">53.26</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.9">54.10</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.10">53.75</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.11">0.00/0.15</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.3.1">Ours, (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mrow id="S5.T4.3.3.3.1.m1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.cmml"><mi id="S5.T4.3.3.3.1.m1.1.1.2" xref="S5.T4.3.3.3.1.m1.1.1.2.cmml">r</mi><mo id="S5.T4.3.3.3.1.m1.1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S5.T4.3.3.3.1.m1.1.1.3" xref="S5.T4.3.3.3.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><apply id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1"><eq id="S5.T4.3.3.3.1.m1.1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1.1"></eq><ci id="S5.T4.3.3.3.1.m1.1.1.2.cmml" xref="S5.T4.3.3.3.1.m1.1.1.2">𝑟</ci><cn id="S5.T4.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.3.3.3.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.3.3.3.2">0.8T</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.3">69.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.4">38.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.5">65.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.6">31.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.7">38.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.8">76.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.9">93.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.10">59.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3.11">34.80/42.08</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.4.4.4.1">Ours, (<math alttext="r=1" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mrow id="S5.T4.4.4.4.1.m1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.cmml"><mi id="S5.T4.4.4.4.1.m1.1.1.2" xref="S5.T4.4.4.4.1.m1.1.1.2.cmml">r</mi><mo id="S5.T4.4.4.4.1.m1.1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S5.T4.4.4.4.1.m1.1.1.3" xref="S5.T4.4.4.4.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><apply id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1"><eq id="S5.T4.4.4.4.1.m1.1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1.1"></eq><ci id="S5.T4.4.4.4.1.m1.1.1.2.cmml" xref="S5.T4.4.4.4.1.m1.1.1.2">𝑟</ci><cn id="S5.T4.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.4.4.4.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">r=1</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">italic_r = 1</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.4.4.4.2">0.8T</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.3">34.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.4">24.06</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.5">29.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.6">23.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.7">26.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.8">55.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.9">47.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.10">49.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.4.4.11">0.00/0.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating different inference time schemes on the 1-turn MT-Bench benchmark.  The models tested all utilize the recurrent-depth architecture. The 'baseline' refers to a standard recurrent model without any modifications to the inference process. The other rows show results from applying several techniques, including modifications to caching, adaptive compute based on KL divergence, and different numbers of recurrences.  The results illustrate the impact of different inference time optimizations. Note that any differences between the different techniques and the baseline model were not statistically significant.
> <details>
> <summary>read the caption</summary>
> Table 6: First turn scores and standard errors on 1-turn MT-Bench for various inference time schemes that are native to the recurrent-depth model. Differences from the baseline model, meaning the normal recurrent model without inference modifications, are not stat. significant.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1">Closed</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.1">Open</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S5.T5.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.m1.1a"><mi id="S5.T5.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T5.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.2.3.1.1">Amber</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.1.2">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.1.3">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.3.1.4">+5.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.4.2.1">Pythia-2.8b</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.2.2">35.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.2.3">44.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.4.2.4">+9.4</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.5.3.1">Pythia-6.9b</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.3.2">37.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.3.3">44.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.5.3.4">+7.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.6.4.1">Pythia-12b</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.4.2">35.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.4.3">48.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.6.4.4">+12.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.7.5.1">OLMo-1B</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.5.2">36.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.5.3">43.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.7.5.4">+7.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.8.6.1">OLMo-7B</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.6.2">42.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.6.3">49.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.8.6.4">+7.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.9.7.1">OLMo-7B-0424</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.9.7.2">41.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.9.7.3">50.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.9.7.4">+9.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.10.8.1">OLMo-7B-0724</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.10.8.2">41.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.10.8.3">53.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.10.8.4">+11.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.11.9.1">OLMo-2-1124</th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.9.2">46.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.9.3">53.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.11.9.4">+7.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.2.2.1">Ours (<math alttext="r=32" class="ltx_Math" display="inline" id="S5.T5.2.2.1.m1.1"><semantics id="S5.T5.2.2.1.m1.1a"><mrow id="S5.T5.2.2.1.m1.1.1" xref="S5.T5.2.2.1.m1.1.1.cmml"><mi id="S5.T5.2.2.1.m1.1.1.2" xref="S5.T5.2.2.1.m1.1.1.2.cmml">r</mi><mo id="S5.T5.2.2.1.m1.1.1.1" xref="S5.T5.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S5.T5.2.2.1.m1.1.1.3" xref="S5.T5.2.2.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.1.m1.1b"><apply id="S5.T5.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.1.m1.1.1"><eq id="S5.T5.2.2.1.m1.1.1.1.cmml" xref="S5.T5.2.2.1.m1.1.1.1"></eq><ci id="S5.T5.2.2.1.m1.1.1.2.cmml" xref="S5.T5.2.2.1.m1.1.1.2">𝑟</ci><cn id="S5.T5.2.2.1.m1.1.1.3.cmml" type="integer" xref="S5.T5.2.2.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.1.m1.1c">r=32</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.1.m1.1d">italic_r = 32</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.2.2">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.2.3">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.2.2.4">+11.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used for pre-training the language model.  It details the dataset name, its source (address), license type, category of data (e.g., generic text, code), the weight assigned to it during training (W), whether it includes instruction data (MG, marked with 'X' for no instruction data and '✓' for instruction data), and the citation for the dataset.
> <details>
> <summary>read the caption</summary>
> Table 7: Datasets used for model pre-training (Part 1: Standard sources)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A0.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A0.T6.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A0.T6.4.5.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A0.T6.4.5.1.2">MT-Bench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A0.T6.4.5.1.3">Std. Error</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A0.T6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A0.T6.1.1.1">cache compression, <math alttext="s=4" class="ltx_Math" display="inline" id="A0.T6.1.1.1.m1.1"><semantics id="A0.T6.1.1.1.m1.1a"><mrow id="A0.T6.1.1.1.m1.1.1" xref="A0.T6.1.1.1.m1.1.1.cmml"><mi id="A0.T6.1.1.1.m1.1.1.2" xref="A0.T6.1.1.1.m1.1.1.2.cmml">s</mi><mo id="A0.T6.1.1.1.m1.1.1.1" xref="A0.T6.1.1.1.m1.1.1.1.cmml">=</mo><mn id="A0.T6.1.1.1.m1.1.1.3" xref="A0.T6.1.1.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A0.T6.1.1.1.m1.1b"><apply id="A0.T6.1.1.1.m1.1.1.cmml" xref="A0.T6.1.1.1.m1.1.1"><eq id="A0.T6.1.1.1.m1.1.1.1.cmml" xref="A0.T6.1.1.1.m1.1.1.1"></eq><ci id="A0.T6.1.1.1.m1.1.1.2.cmml" xref="A0.T6.1.1.1.m1.1.1.2">𝑠</ci><cn id="A0.T6.1.1.1.m1.1.1.3.cmml" type="integer" xref="A0.T6.1.1.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.1.1.1.m1.1c">s=4</annotation><annotation encoding="application/x-llamapun" id="A0.T6.1.1.1.m1.1d">italic_s = 4</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T6.1.1.2">5.856</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A0.T6.1.1.3">0.395</td>
</tr>
<tr class="ltx_tr" id="A0.T6.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.4.6.1.1">baseline, 64 iterations</th>
<td class="ltx_td ltx_align_center" id="A0.T6.4.6.1.2">5.693</td>
<td class="ltx_td ltx_align_center" id="A0.T6.4.6.1.3">0.386</td>
</tr>
<tr class="ltx_tr" id="A0.T6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.2.2.1">cache compression, <math alttext="s=16" class="ltx_Math" display="inline" id="A0.T6.2.2.1.m1.1"><semantics id="A0.T6.2.2.1.m1.1a"><mrow id="A0.T6.2.2.1.m1.1.1" xref="A0.T6.2.2.1.m1.1.1.cmml"><mi id="A0.T6.2.2.1.m1.1.1.2" xref="A0.T6.2.2.1.m1.1.1.2.cmml">s</mi><mo id="A0.T6.2.2.1.m1.1.1.1" xref="A0.T6.2.2.1.m1.1.1.1.cmml">=</mo><mn id="A0.T6.2.2.1.m1.1.1.3" xref="A0.T6.2.2.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A0.T6.2.2.1.m1.1b"><apply id="A0.T6.2.2.1.m1.1.1.cmml" xref="A0.T6.2.2.1.m1.1.1"><eq id="A0.T6.2.2.1.m1.1.1.1.cmml" xref="A0.T6.2.2.1.m1.1.1.1"></eq><ci id="A0.T6.2.2.1.m1.1.1.2.cmml" xref="A0.T6.2.2.1.m1.1.1.2">𝑠</ci><cn id="A0.T6.2.2.1.m1.1.1.3.cmml" type="integer" xref="A0.T6.2.2.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.2.2.1.m1.1c">s=16</annotation><annotation encoding="application/x-llamapun" id="A0.T6.2.2.1.m1.1d">italic_s = 16</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A0.T6.2.2.2">5.687</td>
<td class="ltx_td ltx_align_center" id="A0.T6.2.2.3">0.402</td>
</tr>
<tr class="ltx_tr" id="A0.T6.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.4.7.2.1">baseline, 32 iterations</th>
<td class="ltx_td ltx_align_center" id="A0.T6.4.7.2.2">5.662</td>
<td class="ltx_td ltx_align_center" id="A0.T6.4.7.2.3">0.388</td>
</tr>
<tr class="ltx_tr" id="A0.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A0.T6.3.3.1">cache compression, <math alttext="s=8" class="ltx_Math" display="inline" id="A0.T6.3.3.1.m1.1"><semantics id="A0.T6.3.3.1.m1.1a"><mrow id="A0.T6.3.3.1.m1.1.1" xref="A0.T6.3.3.1.m1.1.1.cmml"><mi id="A0.T6.3.3.1.m1.1.1.2" xref="A0.T6.3.3.1.m1.1.1.2.cmml">s</mi><mo id="A0.T6.3.3.1.m1.1.1.1" xref="A0.T6.3.3.1.m1.1.1.1.cmml">=</mo><mn id="A0.T6.3.3.1.m1.1.1.3" xref="A0.T6.3.3.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="A0.T6.3.3.1.m1.1b"><apply id="A0.T6.3.3.1.m1.1.1.cmml" xref="A0.T6.3.3.1.m1.1.1"><eq id="A0.T6.3.3.1.m1.1.1.1.cmml" xref="A0.T6.3.3.1.m1.1.1.1"></eq><ci id="A0.T6.3.3.1.m1.1.1.2.cmml" xref="A0.T6.3.3.1.m1.1.1.2">𝑠</ci><cn id="A0.T6.3.3.1.m1.1.1.3.cmml" type="integer" xref="A0.T6.3.3.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.3.3.1.m1.1c">s=8</annotation><annotation encoding="application/x-llamapun" id="A0.T6.3.3.1.m1.1d">italic_s = 8</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A0.T6.3.3.2">5.631</td>
<td class="ltx_td ltx_align_center" id="A0.T6.3.3.3">0.384</td>
</tr>
<tr class="ltx_tr" id="A0.T6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A0.T6.4.4.1">KL exit, <math alttext="t=$5\text{\times}{10}^{-4}$" class="ltx_Math" display="inline" id="A0.T6.4.4.1.m1.1"><semantics id="A0.T6.4.4.1.m1.1a"><mrow id="A0.T6.4.4.1.m1.1.2" xref="A0.T6.4.4.1.m1.1.2.cmml"><mi id="A0.T6.4.4.1.m1.1.2.2" xref="A0.T6.4.4.1.m1.1.2.2.cmml">t</mi><mo id="A0.T6.4.4.1.m1.1.2.1" xref="A0.T6.4.4.1.m1.1.2.1.cmml">=</mo><mrow id="A0.T6.4.4.1.m1.1.1.m1.3.3.3" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml"><mn id="A0.T6.4.4.1.m1.1.1.m1.1.1.1.1.1.1.1" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml">5</mn><mtext id="A0.T6.4.4.1.m1.1.1.m1.2.2.2.2.2.2.2" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.3.3.3.3" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml"><mn id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.3.3.3.3.2" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml"><mo id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.3.3.3.3.3.2a" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml">−</mo><mn id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.3.3.3.3.3.2.2" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml">4</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A0.T6.4.4.1.m1.1b"><apply id="A0.T6.4.4.1.m1.1.2.cmml" xref="A0.T6.4.4.1.m1.1.2"><eq id="A0.T6.4.4.1.m1.1.2.1.cmml" xref="A0.T6.4.4.1.m1.1.2.1"></eq><ci id="A0.T6.4.4.1.m1.1.2.2.cmml" xref="A0.T6.4.4.1.m1.1.2.2">𝑡</ci><csymbol cd="latexml" id="A0.T6.4.4.1.m1.1.1.m1.3.3.3.cmml" xref="A0.T6.4.4.1.m1.1.1.m1.3.3.3">5E-4</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A0.T6.4.4.1.m1.1c">t=$5\text{\times}{10}^{-4}$</annotation><annotation encoding="application/x-llamapun" id="A0.T6.4.4.1.m1.1d">italic_t = start_ARG 5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 4 end_ARG end_ARG</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A0.T6.4.4.2">5.562</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A0.T6.4.4.3">0.389</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the datasets used for instruction tuning during the pre-training phase of the language model.  It provides details on each dataset, including its address (source), license, category (type of instruction data), weight (relative importance in the training mix), whether it is mixed with other data, and the citation. The dataset categories include generic instructions, math-specific instructions, writing instructions, and other miscellaneous instruction data. The weights indicate the proportion of each dataset used in the overall training data, offering insights into the model's exposure to different types of instructional data.
> <details>
> <summary>read the caption</summary>
> Table 8: Datasets used for model pre-training (Part 2: Instruction Data)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05171/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05171/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}