---
title: "DeepRAG: Thinking to Retrieval Step by Step for Large Language Models"
summary: "DeepRAG enhances LLM reasoning by strategically integrating retrieval, modeled as an MDP, improving accuracy by 21.99% and retrieval efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Chinese Information Processing Laboratory, Institute of Software, Chinese Academy of Sciences",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01142 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyan Guan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01142" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01142" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01142/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often produce inaccurate results due to limitations in their knowledge base.  Retrieval-Augmented Generation (RAG) aims to address this by incorporating external information, but current RAG methods suffer from inefficient retrieval and redundant information. This paper introduces DeepRAG, a new framework that addresses these issues.

DeepRAG models the retrieval process as a Markov Decision Process (MDP), allowing for strategic and adaptive retrieval.  It uses a binary tree search to explore different retrieval strategies, learning effective retrieval patterns through imitation learning and refining its decision-making through calibration. Experiments show that DeepRAG significantly outperforms existing methods in terms of accuracy and retrieval efficiency, demonstrating its potential for building more robust and reliable LLMs. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DeepRAG models retrieval-augmented reasoning as a Markov Decision Process (MDP), enabling strategic and adaptive retrieval. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DeepRAG improves retrieval efficiency and answer accuracy by 21.99% compared to existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DeepRAG effectively calibrates the LLM's understanding of its knowledge boundaries, leading to more effective retrieval decisions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it tackles the critical issue of **factual hallucination** in large language models (LLMs) by proposing a novel framework, DeepRAG.  DeepRAG improves upon existing retrieval-augmented generation (RAG) methods by incorporating **adaptive retrieval**, leading to more accurate and efficient reasoning.  This offers a significant advancement for researchers working on improving LLM reliability and reasoning capabilities, opening new avenues for research in adaptive information retrieval and efficient knowledge integration.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01142/x1.png)

> 🔼 This figure illustrates the parallel between human reasoning and DeepRAG's approach to retrieval-augmented generation.  The left side shows a human's thought process when answering a complex question: first understanding the question, then breaking it down into smaller, manageable parts, searching for relevant information as needed, and finally combining the gathered information to formulate a complete answer. DeepRAG mimics this process using two key components: the retrieval narrative (ensuring a well-structured and adaptive flow of subqueries, building upon previous retrieval results) and atomic decisions (strategically deciding at each step whether to use external information retrieval or rely only on the model's existing knowledge).  This systematic approach contrasts with less efficient methods that may retrieve excessive information.
> <details>
> <summary>read the caption</summary>
> Figure 1: Correspondence between human thinking processes and DeepRAG. Specifically, retrieval narrative ensures a structured and adaptive retrieval flow, generating subqueries informed by previously retrieved information, and atomic decisions dynamically determines whether to retrieve external knowledge or rely solely on the parametric knowledge for each subquery.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Types</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.1.1.1.1.3"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.1.3.1">in-distribution</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T1.1.1.1.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T1.1.1.1.1.5"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.1.5.1">out-of-distribution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.6" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.6.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.2.1">Hotpot QA</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.2.2">2WikiMultihopQA</td>
<td class="ltx_td" id="S4.T1.1.1.2.2.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.2.4">CAG</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.2.5">PopQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.2.6">Web Question</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.1">EM</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.2">F1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.3">EM</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.4">F1</td>
<td class="ltx_td" id="S4.T1.1.1.3.3.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.6">EM</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.7">F1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.8">EM</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.9">F1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.10">EM</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3.11">F1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="14" id="S4.T1.1.1.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.4.4.1.1" style="background-color:#E6E6E6;">Llama-3-8B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.5.5.1" rowspan="6"><span class="ltx_text" id="S4.T1.1.1.5.5.1.1">Reasoning</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.2">CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.3">27.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.4">37.75</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.5">28.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.6">34.85</td>
<td class="ltx_td" id="S4.T1.1.1.5.5.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.8">7.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.9">10.41</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.10">21.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.11">25.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.12">25.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.13">40.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.14">25.79</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.1">CoT-Retrieve</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.2">34.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.6.6.3.1">46.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.4">35.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.5">43.41</td>
<td class="ltx_td" id="S4.T1.1.1.6.6.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.6.7.1">55.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.6.8.1">64.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.9">32.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.10">45.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.11">22.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.12">39.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.13">42.13</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.1">CoT*</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.2">21.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.3">31.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.4">25.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.5">30.89</td>
<td class="ltx_td" id="S4.T1.1.1.7.7.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.7">5.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.8">7.58</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.9">23.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.10">25.31</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.11">26.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.12">40.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.13">23.83</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.1">CoT-Retrieve*</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.2">22.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.3">32.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.4">23.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.5">29.21</td>
<td class="ltx_td" id="S4.T1.1.1.8.8.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.7">44.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.8">55.69</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.9">38.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.10">45.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.11">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.12">29.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.13">33.93</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.9">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.1">IterDRAG</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.2">23.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.3">30.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.4">19.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.5">24.80</td>
<td class="ltx_td" id="S4.T1.1.1.9.9.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.7">38.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.8">46.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.9">22.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.10">34.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.11">15.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.12">26.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.13">28.30</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.10">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.1">Auto-RAG</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.2">25.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.3">36.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.4">23.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.5">30.09</td>
<td class="ltx_td" id="S4.T1.1.1.10.10.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.7">49.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.8">59.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.9">27.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.10">42.02</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.11">17.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.12">32.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.13">34.40</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.11.11.1" rowspan="4">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.11.11.1.1">\hdashline</span><span class="ltx_text" id="S4.T1.1.1.11.11.1.2">Adaptive</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.2">FLARE</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.3">23.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.4">32.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.5">30.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.6">37.45</td>
<td class="ltx_td" id="S4.T1.1.1.11.11.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.8">34.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.9">43.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.10">28.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.11">40.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.12">28.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.13">40.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.14">34.16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.12">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.1">DRAGIN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.2">27.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.3">38.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.4">29.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.5">35.68</td>
<td class="ltx_td" id="S4.T1.1.1.12.12.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.7">4.05</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.8">7.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.9">22.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.10">28.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.11">21.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.12">38.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.13">25.27</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13.13">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.1">UAR</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.2">29.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.3">40.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.4">34.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.5">42.40</td>
<td class="ltx_td" id="S4.T1.1.1.13.13.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.13.13.7.1">52.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.8">61.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.9">33.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.10">45.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.11">22.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.12">39.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.13">40.28</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14.14">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.1">TAARE</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.2">30.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.3">41.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.4">35.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.5">42.85</td>
<td class="ltx_td" id="S4.T1.1.1.14.14.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.14.14.7.1">52.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.8">61.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.9">33.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.10">46.01</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.11">23.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.12">39.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.13">40.68</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.15.15.1" rowspan="2">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.15.15.1.1">\hdashline</span><span class="ltx_text" id="S4.T1.1.1.15.15.1.2">Ours</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.2">DeepRAG-Imi</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.3.1">35.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.4">46.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.5.1">47.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.6.1">52.33</span></td>
<td class="ltx_td" id="S4.T1.1.1.15.15.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.8">50.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.9">59.55</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.15.10.1">43.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.11"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.15.11.1">48.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.12.1">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.13.1">41.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.14.1">45.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16.16">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.1">DeepRAG</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.2.1">40.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.3.1">51.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.4.1">48.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.5.1">53.25</span></td>
<td class="ltx_td" id="S4.T1.1.1.16.16.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.16.16.7.1">52.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.16.16.8.1">61.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.16.16.9.1">42.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.16.16.10.1">47.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.11"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.11.1">32.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.12"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.12.1">45.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.13"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.13.1">47.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17.17" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="14" id="S4.T1.1.1.17.17.1"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.17.17.1.1" style="background-color:#E6E6E6;">Qwen-2.5-7B</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.18.18.1" rowspan="5"><span class="ltx_text" id="S4.T1.1.1.18.18.1.1">Resaoning</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.2">CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.3">18.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.4">27.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.5">23.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.6">28.97</td>
<td class="ltx_td" id="S4.T1.1.1.18.18.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.8">3.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.9">5.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.10">15.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.11">19.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.12">18.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.13">34.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.14">19.55</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.19.19">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.1">CoT-Retreive</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.2">24.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.3">34.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.4">18.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.5">23.44</td>
<td class="ltx_td" id="S4.T1.1.1.19.19.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.7">41.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.8">51.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.9">27.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.19.19.10.1">41.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.11">15.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.12">29.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.19.19.13">30.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.20.20">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.1">CoT*</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.2">17.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.3">26.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.4">25.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.5">29.62</td>
<td class="ltx_td" id="S4.T1.1.1.20.20.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.7">3.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.8">5.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.9">7.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.10">11.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.11">15.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.12">32.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.20.20.13">17.42</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.21.21">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.1">CoT-Retrieve*</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.2">23.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.3">32.29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.4">22.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.5">27.51</td>
<td class="ltx_td" id="S4.T1.1.1.21.21.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.7">43.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.8">54.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.9">26.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.10">35.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.11">13.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.12">25.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.21.21.13">30.49</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.22.22">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.1">IterDRAG</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.2">13.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.3">26.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.4">9.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.5">20.47</td>
<td class="ltx_td" id="S4.T1.1.1.22.22.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.7">21.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.8">39.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.9">18.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.10">31.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.11">12.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.12">26.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.22.22.13">22.06</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.23.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T1.1.1.23.23.1" rowspan="4">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.23.23.1.1">\hdashline</span><span class="ltx_text" id="S4.T1.1.1.23.23.1.2">Adaptive</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.2">FLARE</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.3">23.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.4">32.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.5">21.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.6">26.51</td>
<td class="ltx_td" id="S4.T1.1.1.23.23.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.8">34.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.9">42.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.10">19.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.11">28.24</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.12">16.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.13">31.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.23.23.14">27.65</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.24.24">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.1">DRAGIN</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.2">16.70</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.3">24.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.4">12.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.5">16.76</td>
<td class="ltx_td" id="S4.T1.1.1.24.24.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.7">3.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.8">5.45</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.9">12.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.10">15.80</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.11">17.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.12">32.43</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.24.24.13">15.70</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.25.25">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.1">UAR</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.2">24.50</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.3">34.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.4">23.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.5">28.20</td>
<td class="ltx_td" id="S4.T1.1.1.25.25.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.7">34.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.8">43.92</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.9">27.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.10">40.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.11">16.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.12">32.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.25.25.13">30.60</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.26.26">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.1">TAARE</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.2">25.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.3">35.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.4">21.30</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.5">25.67</td>
<td class="ltx_td" id="S4.T1.1.1.26.26.6"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.7">40.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.8">50.78</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.9">27.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.10">40.92</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.11">18.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.12">33.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.26.26.13">31.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.27.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.27.27.1" rowspan="2">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.27.27.1.1">\hdashline</span><span class="ltx_text" id="S4.T1.1.1.27.27.1.2">Ours</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.2">DeepRAG-Imi</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.3.1">30.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.4.1">39.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.5.1">32.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.6.1">38.32</span></td>
<td class="ltx_td" id="S4.T1.1.1.27.27.7"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.8.1">47.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.9.1">56.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.10.1">37.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.11">40.72</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.12.1">23.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.13.1">38.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.27.27.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.27.27.14.1">38.59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.28.28">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.1">DeepRAG</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.2.1">32.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.3.1">41.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.4.1">40.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.5.1">44.87</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.1.1.28.28.6"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.7.1">51.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.8.1">59.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.9.1">40.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.10"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.10.1">43.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.11"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.11.1">24.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.12"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.12.1">38.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.28.28.13"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.28.28.13.1">41.62</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive comparison of DeepRAG's performance against several baseline models across five distinct question answering benchmarks.  The benchmarks encompass diverse question types and complexities, allowing for a thorough evaluation of the model's capabilities.  DeepRAG's performance is shown in two stages: DeepRAG-Imi (Stage I) represents the model's performance after imitation learning, while DeepRAG (Stage II) incorporates the chain of calibration step. The table highlights the best and second-best scores for each metric (EM and F1) in each dataset.  It demonstrates that DeepRAG significantly outperforms existing methods across all scenarios, showcasing improvements in both accuracy and retrieval efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: The overall experimental results of DeepRAG and other baselines on five benchmarks. The best/second best scores in each dataset are bolded/underlined. DeepRAG-Imi (Stage I) and DeepRAG (Stage II) both demonstrate superior performance compared to existing methods across all test scenarios.
> </details>





### In-depth insights


#### Adaptive RAG
Adaptive Retrieval Augmented Generation (RAG) methods aim to improve the efficiency and effectiveness of traditional RAG by dynamically deciding when and how to retrieve external knowledge.  **Strategies vary**, including classifier-based approaches that train models to predict retrieval needs, confidence-based methods that leverage uncertainty metrics, and LLM-based methods that utilize the generative capabilities of LLMs for decision-making.  A key challenge lies in accurately determining knowledge boundaries, as **inappropriate retrieval can introduce noise and reduce accuracy**.  Successful adaptive RAG systems must strike a balance between leveraging external knowledge and relying on the LLM's internal capabilities, effectively navigating the trade-off between recall and precision.  Furthermore, **adaptive strategies should consider the specific query characteristics**, the available knowledge sources, and the computational constraints, to optimize retrieval performance for varying contexts and information needs. The design of effective decision-making mechanisms remains a central area of ongoing research and development within this evolving field.

#### MDP for Retrieval
Modeling retrieval as a Markov Decision Process (MDP) offers a powerful framework for optimizing information access in complex scenarios.  **The state space would represent the current query state, encompassing the initial question and any accumulated information.** Actions would be choices like: retrieve information from an external source or attempt answering from existing knowledge.  **Reward functions would need careful design to balance retrieval efficiency against accuracy.**  A successful MDP approach would learn a policy to guide the retrieval process dynamically, leading to more efficient and accurate responses.  **Challenges involve designing a sufficiently rich yet manageable state and action space, as well as creating a reward function that appropriately incentivizes both retrieval accuracy and minimizing unnecessary retrieval actions.**  This necessitates careful consideration of computational costs and the trade-offs between potentially more accurate but expensive retrievals versus potentially less accurate, yet faster, responses based solely on existing knowledge. The effectiveness of such an MDP model ultimately hinges on the quality of the training data and the ability of the MDP algorithm to learn an optimal strategy that generalizes well to unseen situations.

#### Knowledge Boundary
The concept of "Knowledge Boundary" in large language models (LLMs) is crucial.  **LLMs struggle to reliably distinguish between known and unknown information**. This uncertainty leads to factual hallucinations and unreliable responses.  The research highlights how this boundary problem significantly impacts Retrieval-Augmented Generation (RAG) systems.  **Ineffective knowledge boundary awareness results in inefficient retrieval**,  as the model may unnecessarily retrieve external knowledge even when the answer is readily available within its internal parameters. Conversely, **failure to recognize knowledge limitations leads to hallucinations**, since the model fabricates answers instead of admitting its lack of knowledge.  DeepRAG directly addresses this by explicitly modeling the decision of whether to retrieve or rely on parametric reasoning as a key part of the process, allowing for a more strategic and effective approach to information seeking.  This is a vital area of research as it directly impacts the reliability and trustworthiness of LLMs and RAG systems.

#### Chain of Calibration
The "Chain of Calibration" section likely details a crucial refinement process in the DeepRAG model.  It addresses the challenge of **making accurate decisions** about when to retrieve external information versus relying on the model's internal knowledge. This is achieved by **iteratively refining the model's understanding** of its own knowledge boundaries.  The approach likely involves synthesizing data (e.g., preference pairs showing optimal retrieval choices), then using this data to fine-tune the model's ability to distinguish between situations where retrieval is necessary and those where internal reasoning suffices.  This calibration step is critical for **improving both the accuracy and efficiency** of the DeepRAG system. The process aims to reduce unnecessary retrievals, which can add computational cost and introduce noise, leading to improved performance and faster inference times.  **A key aspect** is likely the use of a loss function to guide the calibration process, focusing on the model’s accurate estimation of when to utilize external knowledge versus its existing knowledge base. The result should be a more informed and adaptive RAG model.

#### Retrieval Efficiency
Analyzing retrieval efficiency in a large language model (LLM) for question answering reveals crucial insights into its resource usage and performance.  **DeepRAG's strategic approach, combining parametric reasoning and external knowledge retrieval**, demonstrates significant improvements over existing methods.  The core idea is to dynamically decide when to retrieve, minimizing unnecessary searches and enhancing efficiency. This adaptive strategy contrasts with baseline methods exhibiting inconsistent retrieval behaviors or excessive retrieval operations.  **DeepRAG's ability to balance internal knowledge and external retrieval optimizes resource utilization**, ultimately leading to higher accuracy with fewer retrieval attempts.  This approach highlights the importance of a thoughtful balance between LLM's inherent reasoning capabilities and external information access for efficient and accurate question answering.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01142/x2.png)

> 🔼 DeepRAG is composed of three stages: Binary Tree Search, Imitation Learning, and Chain of Calibration.  First, a binary tree search method systematically explores different reasoning paths, combining retrieval and parametric knowledge. This generates training data that shows the model how to make decisions about when retrieval is necessary.  Then, Imitation Learning uses this data to teach the model effective retrieval strategies. Finally, Chain of Calibration further refines the model's ability to recognize its knowledge boundaries, leading to more accurate decisions about when to retrieve external information and improving the overall effectiveness of retrieval-augmented reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of DeepRAG, our framework comprises three steps: (1) Binary Tree Search, (2) Imitation Learning, and (3) Chain of Calibration. Given a dataset, we first employ binary tree search to synthesize data for imitation learning, enabling the model to learn retrieval patterns. Subsequently, we use binary tree search to construct preference data for further calibrating the LLM’s awareness of its knowledge boundaries.
> </details>



![](https://arxiv.org/html/2502.01142/x3.png)

> 🔼 This figure presents a visual representation of the distribution of subquery counts and retrieval attempts during the question-answering process using DeepRAG.  Panel (a) shows the number of subqueries generated for each question, indicating the complexity of question decomposition.  Panel (b) illustrates the number of retrieval attempts made for each question, reflecting the frequency of external knowledge retrieval within the DeepRAG framework.  This visualization helps to understand the efficiency and the extent of knowledge base utilization within DeepRAG's multi-step reasoning process.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Subquery Statistics. (b) Retrieval Statistics.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T2.1.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.1.1.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T2.1.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.1.1.1.1.3" rowspan="2"><span class="ltx_text" id="S5.T2.1.1.1.1.3.1">EM</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T2.1.1.1.1.4">Avg. Retrievals</th>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.1.1.2.2.1">All</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.1.1.2.2.2">Correct</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.1.1.2.2.3">Incorrect</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.3.1.1" rowspan="7"><span class="ltx_text" id="S5.T2.1.1.3.1.1.1">2WMQA</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.3.1.2">FLARE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.1.3">30.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.1.4">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.1.5">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.3.1.6">0.99</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.4.2.1">DRAGIN</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2.2">29.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2.3">1.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2.4">1.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2.5">1.03</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.5.3.1">UAR</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3.2">34.80</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3.3">0.81</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3.4">0.68</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3.5">0.89</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.6.4.1">TAARE</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4.2">35.20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4.3">0.93</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4.4">0.93</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.4.5">0.97</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.7.5.1">IterDRAG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.7.5.2">19.60</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.7.5.3">2.46</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.7.5.4">2.49</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.7.5.5">2.45</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.8.6.1">Auto-RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6.2">23.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6.3">6.26</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6.4">4.13</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6.5">1.81</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.9.7.1">DeepRAG-Imi</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.7.2">47.20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.7.3">1.13</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.7.4">0.95</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.7.5">1.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.10.8">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.1.1.10.8.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.10.8.2">DeepRAG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.8.3">48.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.8.4">1.09</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.8.5">0.92</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.8.6">1.25</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.11.9.1" rowspan="7"><span class="ltx_text" id="S5.T2.1.1.11.9.1.1">WQ</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.11.9.2">FLARE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.9.3">28.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.9.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.9.5">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.9.6">0.00</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.12.10.1">DRAGIN</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.10.2">21.20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.10.3">0.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.10.4">0.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.12.10.5">0.00</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.13.11.1">UAR</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.13.11.2">22.70</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.13.11.3">0.96</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.13.11.4">0.95</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.13.11.5">0.97</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.14.12.1">TAARE</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.14.12.2">23.40</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.14.12.3">0.66</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.14.12.4">0.65</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.14.12.5">0.66</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.15.13.1">IterDRAG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.13.2">15.90</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.13.3">2.25</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.13.4">2.16</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.13.5">2.27</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.16.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.16.14.1">Auto-RAG</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.14.2">17.40</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.14.3">4.52</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.14.4">3.03</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.14.5">2.35</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.17.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.1.1.17.15.1">DeepRAG-Imi</th>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.17.15.2">30.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.17.15.3">0.43</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.17.15.4">0.13</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.17.15.5">0.56</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.18.16">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S5.T2.1.1.18.16.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.1.1.18.16.2">DeepRAG</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.18.16.3">32.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.18.16.4">0.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.18.16.5">0.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.1.1.18.16.6">0.36</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of retrieval efficiency across various adaptive retrieval methods, specifically focusing on two datasets: 2WikiMultihopQA and WebQuestions.  It shows the average number of retrieval attempts made by each method, broken down into two categories: instances where the model generated correct answers and instances with incorrect answers. This analysis highlights the trade-off between retrieval efficiency and accuracy for different approaches.
> <details>
> <summary>read the caption</summary>
> Table 2:  Retrieval frequency analysis on 2WikiMultihopQA(2WMQA) and WebQuestions(WQ) across different adaptive retrieval methods. 'Correct' indicates the average number of retrievals for instances where the model produced correct answers, while 'Incorrect' represents the average retrievals for cases with incorrect answers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.2">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.3">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.4">Balanced Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.1.5">MCC</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.1">FLARE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.2">0.000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.3">0.718</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.4">0.500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.1.5">0.000</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.2">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.1">DRAGIN</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.2">0.007</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.3">0.709</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.4">0.495</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2.5">-0.045</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.3">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.1">UAR</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.2">0.481</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.3.3.1">0.756</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.4">0.648</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3.5">0.341</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.4">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.1">TAARE</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.2">0.127</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.3">0.712</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.4">0.518</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.5">0.078</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6.5">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.1">Iter-DRAG</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.2">0.000</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.3">0.718</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.4">0.500</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.5">0.000</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7.6">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.1">Auto-RAG</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.2">0.000</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.3">0.718</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.4">0.500</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.5">0.000</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8.7">
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.1">DeepRAG-Imi</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.2">0.580</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.3">0.732</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.4">0.709</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.5">0.393</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.9.8.1">DeepRAG</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.9.8.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.8.2.1">0.621</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.9.8.3">0.749</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.9.8.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.8.4.1">0.743</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.9.8.5"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.9.8.5.1">0.451</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of how effectively different adaptive retrieval methods utilize a model's internal knowledge before resorting to external retrieval.  It compares the performance of various methods on the 2WikiMultihopQA dataset, focusing on metrics that assess not only accuracy (F1 score, Accuracy) but also the balance of correct predictions across classes (Balanced Accuracy) and the overall correlation between predicted and actual retrieval needs (Matthews Correlation Coefficient).  The analysis aims to highlight which methods best identify when to leverage internal knowledge versus when external knowledge is necessary.
> <details>
> <summary>read the caption</summary>
> Table 3: Analysis of internal knowledge utilization across different adaptive retrieval methods on 2WikiMultihopQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.1.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.2">ID</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.3">CAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.4">PopQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.5">WebQuestion</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.6" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.1.1.6.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T4.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.2.2.2">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.2.2.3">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.2.2.4">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T4.1.1.2.2.5">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.3.1.1">DeepRAG-Imi</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.2.1">49.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.1.3">50.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.1.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.4.1">43.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.1.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.5.1">30.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.3.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.6.1">44.60</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T4.1.1.4.2.1">most</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2.2">47.31</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2.3">51.09</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2.4">31.30</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2.5">28.00</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.2.6">41.12</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S5.T4.1.1.5.3.1">random</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.3.2">44.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.3.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.3.3.1">51.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.3.4">34.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.3.5">27.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.5.3.6">40.56</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study focusing on the Imitation Learning stage of the DeepRAG model. The study investigates the impact of different data synthesis strategies on the model's performance.  It compares the default DeepRAG approach with two alternative strategies: using data generated from paths with maximum retrieval cost and a random selection of paths. The table shows the average F1 scores and Exact Match (EM) scores for the in-distribution datasets HotpotQA and 2WikiMultihopQA (indicated as 'ID'), and out-of-distribution datasets CAG, PopQA, and WebQuestions.  This allows for evaluation of both in-distribution and out-of-distribution generalization capabilities of the model trained under different data generation strategies.
> <details>
> <summary>read the caption</summary>
> Table 4: Experiment results of the ablation study on the Imitation Learning Stage. ID refers to the average score of two in-distribution dataset HotpotQA and 2WikiMultihopQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.1.1.1.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T5.1.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1.2">ID</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1.3">CAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1.4">PopQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1.5">WebQuestion</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.1.1.1.1.6" rowspan="2"><span class="ltx_text" id="S5.T5.1.1.1.1.6.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.2.2.2">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.2.2.3">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.2.2.4">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T5.1.1.2.2.5">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.3.1.1">DeepRAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.2.1">52.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.3.1">61.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.4.1">47.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.5.1">45.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.6.1">47.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S5.T5.1.1.4.2.1">all-node</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2.2">50.92</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2.3">50.47</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2.4">41.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2.5">32.70</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2.6">45.30</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S5.T5.1.1.5.3.1">sentence-wise</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3.2">30.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3.3">12.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3.4">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3.5">12.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.5.3.6">21.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study focusing on the Chain of Calibration stage within the DeepRAG model.  It compares the model's performance using three different strategies for constructing preference data during the calibration phase: the default DeepRAG approach, a method using all nodes in the binary tree, and a method utilizing only sentence-level pairs.  The performance is evaluated across multiple metrics on various datasets (HotpotQA, 2WMQA, CAG, PopQA, and WebQuestion) to assess the impact of the different calibration strategies on the model's accuracy and retrieval efficiency. The metrics include F1 score and exact match (EM) on each dataset, along with an average score across all datasets.
> <details>
> <summary>read the caption</summary>
> Table 5: Experiment results of the ablation study on the Chain of Calibration Stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T6.1.1.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.2">ID</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.3">CAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.4">PopQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.5">WQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1.6" rowspan="2"><span class="ltx_text" id="S5.T6.1.1.1.1.6.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.1.1.2.2.1">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.1.1.2.2.2">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.1.1.2.2.3">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T6.1.1.2.2.4">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.1.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.1">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.2">31.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.3">3.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.4">10.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.5">15.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.3.1.6">18.40</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4.2">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.1">gpt-4o-turbo</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.4.2.2.1">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.3">23.36</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.4">43.50</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.5">25.35</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2.6">42.68</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5.3">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.1">DeepRAG-qwen</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.2">43.00</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.3">51.09</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.4">40.60</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.5">24.20</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.3.6">40.38</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.1">DeepRAG-llama</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.2">52.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.6.4.3.1">52.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.6.4.4.1">42.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.5"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.6.4.5.1">32.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.6.4.6.1">46.59</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of DeepRAG's performance against two strong baseline large language models: QwQ-32B-preview and gpt-40-turbo.  The comparison is done across five datasets: two in-distribution datasets (HotpotQA and 2WikiMultihopQA) used for training, and three out-of-distribution datasets (CAG, PopQA, and WebQuestions) used for evaluation. The results show the F1 score and Exact Match (EM) scores for each model on each dataset, as well as an average score across all datasets.  This allows for an assessment of DeepRAG's generalizability and performance relative to state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance against strong baseline models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T7.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T7.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.2">HotpotQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.3">2WMQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.4">CAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.5">PopQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.6">WebQuestion</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T7.1.1.1.1.7" rowspan="2"><span class="ltx_text" id="A2.T7.1.1.1.1.7.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T7.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T7.1.1.2.2.2">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T7.1.1.2.2.3">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T7.1.1.2.2.4">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T7.1.1.2.2.5">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T7.1.1.2.2.6">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T7.1.1.3.1.1">DeepRAG-Imi</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.2">46.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.3.1.3.1">52.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.4">50.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.5"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.3.1.5.1">43.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.6"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.3.1.6.1">30.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.1.1.3.1.7"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.3.1.7.1">44.60</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="A2.T7.1.1.4.2.1">most</th>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.2"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.4.2.2.1">47.73</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.3">46.88</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.4">51.09</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.5">31.30</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.6">28.00</td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.4.2.7">41.12</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="A2.T7.1.1.5.3.1">random</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.2">46.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.3">42.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.4"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.5.3.4.1">51.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.5">34.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.6">27.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.1.1.5.3.7">40.56</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the ablation study conducted on the Imitation Learning stage of the DeepRAG model. It shows the performance (F1 score and Exact Match (EM) accuracy) achieved on five different datasets (HotpotQA, 2WikiMultihopQA, CAG, PopQA, and WebQuestions) when using three different strategies during the imitation learning process: the default strategy, a strategy that maximizes retrieval cost, and a random strategy.  The results allow for a comparison of the effectiveness of the different strategies in learning to generate effective retrieval narratives.
> <details>
> <summary>read the caption</summary>
> Table 7: Detailed Experiment results of the ablation study on the Imitation Learning Stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T8.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.2">HotpotQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.3">2WMQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.4">CAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.5">PopQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.6">WebQuestion</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.7" rowspan="2"><span class="ltx_text" id="A2.T8.1.1.1.1.7.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T8.1.1.2.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T8.1.1.2.2.2">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T8.1.1.2.2.3">F1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T8.1.1.2.2.4">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T8.1.1.2.2.5">EM</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A2.T8.1.1.2.2.6">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T8.1.1.3.1.1">DeepRAG</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.2.1">51.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.3.1">53.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.4"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.4.1">61.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.5"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.5.1">47.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.6"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.6.1">45.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.1.7"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.7.1">47.67</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="A2.T8.1.1.4.2.1">all-node</th>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.2">49.99</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.3">51.85</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.4">50.47</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.5">41.50</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.6">32.70</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2.7">45.30</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.5.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="A2.T8.1.1.5.3.1">sentence-wise</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.2">29.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.3">31.28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.4">12.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.5">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.6">12.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.5.3.7">21.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the ablation study conducted on the Chain of Calibration stage within the DeepRAG model. It shows the impact of different calibration strategies on the model's performance across multiple metrics and datasets. Specifically, it compares the performance of DeepRAG using the default calibration approach against two alternative methods: one that uses all nodes in the binary tree for calibration and another that uses sentence-level partial order pairs for calibration.  The results help to illustrate the effectiveness of the chosen calibration strategy and its contribution to DeepRAG's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Detailed experiment results of the ablation study on the Chain of Calibration Stage.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01142/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01142/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}