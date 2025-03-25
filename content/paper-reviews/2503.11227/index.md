---
title: "GKG-LLM: A Unified Framework for Generalized Knowledge Graph Construction"
summary: "GKG-LLM: Unifying Knowledge Graph Construction with a novel 3-stage framework, empowering domain adaptation & resource efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Extraction", "🏢 Xi'an Jiaotong University",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11227 {{< /keyword >}}
{{< keyword icon="writer" >}} Jian Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11227" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11227" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11227/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Constructing Generalized Knowledge Graphs (GKG), including knowledge, event, and common-sense graphs, is vital for NLP.  Current methods build these graphs separately, missing holistic benefits. Challenges arise from task differences, impacting resource use. This paper tackles the issue by proposing a unified framework, aiming to streamline GKG construction and enhance resource efficiency. This involves gathering & categorizing data from 15 sub-tasks across the 3 types of graphs.



The proposed GKG-LLM uses a 3-stage curriculum learning fine-tuning, iteratively injecting knowledge from different graph types. It begins with KG, enhances with EKG, and generalizes with CKG. Experiments show GKG-LLM improves construction across in-domain, OOD, and counter-task data. This framework promotes parameter efficiency and leverages shared knowledge to advance GKG construction and facilitate more unified NLP workflows.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GKG-LLM is a novel three-stage curriculum learning framework for constructing generalized knowledge graphs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework effectively integrates knowledge from KG, EKG, and CKG, improving performance across diverse tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} GKG-LLM demonstrates strong generalization capabilities, even on out-of-distribution data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper addresses a critical need for a **unified approach to GKG construction**, offering a **resource-efficient and holistic solution**. The GKG-LLM framework's success in handling diverse graph types and datasets, including OOD data, highlights its **generalizability and potential for broader application**. This will influence future research towards more integrated and adaptable knowledge graph technologies.

------
#### Visual Insights



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/example.jpg)

> 🔼 Figure 1 illustrates the concept of a Generalized Knowledge Graph (GKG) and its constituent parts: Knowledge Graphs (KGs), Event Knowledge Graphs (EKGs), and Commonsense Knowledge Graphs (CKGs). The left side shows a visual representation of the GKG, highlighting its interconnected nature. The right side provides concrete examples of triples (subject, predicate, object) from each graph type, demonstrating how they build upon one another in terms of complexity and scope. KGs represent facts about entities and their relationships. EKGs extend this by modeling events and their temporal relationships. CKGs further generalize these concepts, focusing on abstract commonsense relationships.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of several triples and graphs. The left half shows a generalized knowledge graph. The right half includes specific examples of triples from KG, EKG, CKG and demonstrates their progressive relationship.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.5.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.5.5.6.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.6.1.1.1" style="font-size:80%;">Graphs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.6.1.2.1" style="font-size:80%;">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.5.5.6.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.6.1.3.1" style="font-size:80%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.4"><span class="ltx_text" id="S2.T1.5.5.6.1.4.1" style="font-size:80%;">GPT-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.5"><span class="ltx_text" id="S2.T1.5.5.6.1.5.1" style="font-size:80%;">Claude-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S2.T1.5.5.6.1.6"><span class="ltx_text" id="S2.T1.5.5.6.1.6.1" style="font-size:80%;">Gemini-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T1.5.5.6.1.7"><span class="ltx_text" id="S2.T1.5.5.6.1.7.1" style="font-size:80%;">LlaMA-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.8"><span class="ltx_text" id="S2.T1.5.5.6.1.8.1" style="font-size:80%;">Single-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.9"><span class="ltx_text" id="S2.T1.5.5.6.1.9.1" style="font-size:80%;">Integrated-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.6.1.10"><span class="ltx_text" id="S2.T1.5.5.6.1.10.1" style="font-size:80%;">GKG-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.7.2">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.1"><span class="ltx_text" id="S2.T1.5.5.7.2.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.2"><span class="ltx_text" id="S2.T1.5.5.7.2.2.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.7.2.3"><span class="ltx_text" id="S2.T1.5.5.7.2.3.1" style="font-size:80%;">1.5</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.4"><span class="ltx_text" id="S2.T1.5.5.7.2.4.1" style="font-size:80%;">2-GKG</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.5"><span class="ltx_text" id="S2.T1.5.5.7.2.5.1" style="font-size:80%;">3-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.6"><span class="ltx_text" id="S2.T1.5.5.7.2.6.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.7"><span class="ltx_text" id="S2.T1.5.5.7.2.7.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.7.2.8"><span class="ltx_text" id="S2.T1.5.5.7.2.8.1" style="font-size:80%;">LLM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.8.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.5.5.8.3.1" rowspan="6"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.8.3.1.1" style="font-size:80%;">KG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.2"><span class="ltx_text" id="S2.T1.5.5.8.3.2.1" style="font-size:80%;">SRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.8.3.3"><span class="ltx_text" id="S2.T1.5.5.8.3.3.1" style="font-size:80%;">NYT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.4"><span class="ltx_text" id="S2.T1.5.5.8.3.4.1" style="font-size:80%;">64.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.5"><span class="ltx_text" id="S2.T1.5.5.8.3.5.1" style="font-size:80%;">66.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.8.3.6"><span class="ltx_text" id="S2.T1.5.5.8.3.6.1" style="font-size:80%;">68.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.7"><span class="ltx_text" id="S2.T1.5.5.8.3.7.1" style="font-size:80%;">78.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.8"><span class="ltx_text" id="S2.T1.5.5.8.3.8.1" style="font-size:80%;">55.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.9"><span class="ltx_text" id="S2.T1.5.5.8.3.9.1" style="font-size:80%;">74.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.8.3.10.1" style="font-size:80%;">79.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.8.3.11"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.8.3.11.1" style="font-size:80%;">80.63</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.9.4">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.9.4.1.1" style="font-size:80%;">FRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.9.4.2"><span class="ltx_text" id="S2.T1.5.5.9.4.2.1" style="font-size:80%;">FewRel</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.3"><span class="ltx_text" id="S2.T1.5.5.9.4.3.1" style="font-size:80%;">26.28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.4"><span class="ltx_text" id="S2.T1.5.5.9.4.4.1" style="font-size:80%;">27.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.9.4.5"><span class="ltx_text" id="S2.T1.5.5.9.4.5.1" style="font-size:80%;">30.20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.9.4.6.1" style="font-size:80%;">89.45</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.7"><span class="ltx_text" id="S2.T1.5.5.9.4.7.1" style="font-size:80%;">22.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.8"><span class="ltx_text" id="S2.T1.5.5.9.4.8.1" style="font-size:80%;">78.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.9"><span class="ltx_text" id="S2.T1.5.5.9.4.9.1" style="font-size:80%;">86.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.9.4.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.9.4.10.1" style="font-size:80%;">90.48</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.10.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.10.5.1"><span class="ltx_text" id="S2.T1.5.5.10.5.1.1" style="font-size:80%;">TACRED</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.2"><span class="ltx_text" id="S2.T1.5.5.10.5.2.1" style="font-size:80%;">18.85</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.3"><span class="ltx_text" id="S2.T1.5.5.10.5.3.1" style="font-size:80%;">20.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.10.5.4"><span class="ltx_text" id="S2.T1.5.5.10.5.4.1" style="font-size:80%;">22.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.10.5.5.1" style="font-size:80%;">86.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.6"><span class="ltx_text" id="S2.T1.5.5.10.5.6.1" style="font-size:80%;">12.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.7"><span class="ltx_text" id="S2.T1.5.5.10.5.7.1" style="font-size:80%;">70.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.8"><span class="ltx_text" id="S2.T1.5.5.10.5.8.1" style="font-size:80%;">84.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.10.5.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.10.5.9.1" style="font-size:80%;">88.96</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.11.6">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.1"><span class="ltx_text" id="S2.T1.5.5.11.6.1.1" style="font-size:80%;">DRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.11.6.2"><span class="ltx_text" id="S2.T1.5.5.11.6.2.1" style="font-size:80%;">DOCRED</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.3"><span class="ltx_text" id="S2.T1.5.5.11.6.3.1" style="font-size:80%;">38.84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.4"><span class="ltx_text" id="S2.T1.5.5.11.6.4.1" style="font-size:80%;">36.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.11.6.5"><span class="ltx_text" id="S2.T1.5.5.11.6.5.1" style="font-size:80%;">42.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.6"><span class="ltx_text" id="S2.T1.5.5.11.6.6.1" style="font-size:80%;">83.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.7"><span class="ltx_text" id="S2.T1.5.5.11.6.7.1" style="font-size:80%;">34.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.8"><span class="ltx_text" id="S2.T1.5.5.11.6.8.1" style="font-size:80%;">74.53</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.11.6.9.1" style="font-size:80%;">83.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.11.6.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.11.6.10.1" style="font-size:80%;">85.71</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.12.7">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.12.7.1.1" style="font-size:80%;">JE&amp;RE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.12.7.2"><span class="ltx_text" id="S2.T1.5.5.12.7.2.1" style="font-size:80%;">FewRel</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.3"><span class="ltx_text" id="S2.T1.5.5.12.7.3.1" style="font-size:80%;">6.32</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.4"><span class="ltx_text" id="S2.T1.5.5.12.7.4.1" style="font-size:80%;">5.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.12.7.5"><span class="ltx_text" id="S2.T1.5.5.12.7.5.1" style="font-size:80%;">7.52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.6"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.12.7.6.1" style="font-size:80%;">42.05</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.7"><span class="ltx_text" id="S2.T1.5.5.12.7.7.1" style="font-size:80%;">3.20</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.8"><span class="ltx_text" id="S2.T1.5.5.12.7.8.1" style="font-size:80%;">26.76</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.9"><span class="ltx_text" id="S2.T1.5.5.12.7.9.1" style="font-size:80%;">30.56</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.12.7.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.12.7.10.1" style="font-size:80%;">34.32</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.13.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.13.8.1"><span class="ltx_text" id="S2.T1.5.5.13.8.1.1" style="font-size:80%;">NYT</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.2"><span class="ltx_text" id="S2.T1.5.5.13.8.2.1" style="font-size:80%;">6.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.3"><span class="ltx_text" id="S2.T1.5.5.13.8.3.1" style="font-size:80%;">5.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.13.8.4"><span class="ltx_text" id="S2.T1.5.5.13.8.4.1" style="font-size:80%;">8.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.5"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.13.8.5.1" style="font-size:80%;">53.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.6"><span class="ltx_text" id="S2.T1.5.5.13.8.6.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.7"><span class="ltx_text" id="S2.T1.5.5.13.8.7.1" style="font-size:80%;">40.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.8"><span class="ltx_text" id="S2.T1.5.5.13.8.8.1" style="font-size:80%;">48.66</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.13.8.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.13.8.9.1" style="font-size:80%;">52.27</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.14.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.5.5.14.9.1" rowspan="15"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.14.9.1.1" style="font-size:80%;">EKG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.2"><span class="ltx_text" id="S2.T1.5.5.14.9.2.1" style="font-size:80%;">SED</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.14.9.3"><span class="ltx_text" id="S2.T1.5.5.14.9.3.1" style="font-size:80%;">ACE2005</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.4"><span class="ltx_text" id="S2.T1.5.5.14.9.4.1" style="font-size:80%;">17.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.5"><span class="ltx_text" id="S2.T1.5.5.14.9.5.1" style="font-size:80%;">8.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.14.9.6"><span class="ltx_text" id="S2.T1.5.5.14.9.6.1" style="font-size:80%;">22.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.7"><span class="ltx_text" id="S2.T1.5.5.14.9.7.1" style="font-size:80%;">32.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.8"><span class="ltx_text" id="S2.T1.5.5.14.9.8.1" style="font-size:80%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.9"><span class="ltx_text" id="S2.T1.5.5.14.9.9.1" style="font-size:80%;">22.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.14.9.10.1" style="font-size:80%;">34.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.14.9.11"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.14.9.11.1" style="font-size:80%;">80.63</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.15.10">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.1"><span class="ltx_text" id="S2.T1.5.5.15.10.1.1" style="font-size:80%;">DED</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.15.10.2"><span class="ltx_text" id="S2.T1.5.5.15.10.2.1" style="font-size:80%;">WIKIEVENTS</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.3"><span class="ltx_text" id="S2.T1.5.5.15.10.3.1" style="font-size:80%;">16.54</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.4"><span class="ltx_text" id="S2.T1.5.5.15.10.4.1" style="font-size:80%;">9.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.15.10.5"><span class="ltx_text" id="S2.T1.5.5.15.10.5.1" style="font-size:80%;">14.87</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.6"><span class="ltx_text" id="S2.T1.5.5.15.10.6.1" style="font-size:80%;">24.87</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.7"><span class="ltx_text" id="S2.T1.5.5.15.10.7.1" style="font-size:80%;">18.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.15.10.8.1" style="font-size:80%;">29.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.9"><span class="ltx_text" id="S2.T1.5.5.15.10.9.1" style="font-size:80%;">23.84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.15.10.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.15.10.10.1" style="font-size:80%;">39.86</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.16.11">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.16.11.1.1" style="font-size:80%;">DEAE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.16.11.2"><span class="ltx_text" id="S2.T1.5.5.16.11.2.1" style="font-size:80%;">WIKIEVENTS</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.3"><span class="ltx_text" id="S2.T1.5.5.16.11.3.1" style="font-size:80%;">42.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.4"><span class="ltx_text" id="S2.T1.5.5.16.11.4.1" style="font-size:80%;">53.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.16.11.5"><span class="ltx_text" id="S2.T1.5.5.16.11.5.1" style="font-size:80%;">47.69</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.16.11.6.1" style="font-size:80%;">70.46</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.7"><span class="ltx_text" id="S2.T1.5.5.16.11.7.1" style="font-size:80%;">41.76</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.8"><span class="ltx_text" id="S2.T1.5.5.16.11.8.1" style="font-size:80%;">63.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.9"><span class="ltx_text" id="S2.T1.5.5.16.11.9.1" style="font-size:80%;">69.30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.16.11.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.16.11.10.1" style="font-size:80%;">75.22</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.17.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.17.12.1"><span class="ltx_text" id="S2.T1.5.5.17.12.1.1" style="font-size:80%;">RAMS</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.2"><span class="ltx_text" id="S2.T1.5.5.17.12.2.1" style="font-size:80%;">13.84</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.3"><span class="ltx_text" id="S2.T1.5.5.17.12.3.1" style="font-size:80%;">5.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.17.12.4"><span class="ltx_text" id="S2.T1.5.5.17.12.4.1" style="font-size:80%;">38.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.5"><span class="ltx_text" id="S2.T1.5.5.17.12.5.1" style="font-size:80%;">48.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.6"><span class="ltx_text" id="S2.T1.5.5.17.12.6.1" style="font-size:80%;">30.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.17.12.7.1" style="font-size:80%;">53.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.8"><span class="ltx_text" id="S2.T1.5.5.17.12.8.1" style="font-size:80%;">52.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.17.12.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.17.12.9.1" style="font-size:80%;">63.62</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.18.13">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.1" rowspan="6"><span class="ltx_text" id="S2.T1.5.5.18.13.1.1" style="font-size:80%;">ETRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.18.13.2"><span class="ltx_text" id="S2.T1.5.5.18.13.2.1" style="font-size:80%;">MATRES</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.3"><span class="ltx_text" id="S2.T1.5.5.18.13.3.1" style="font-size:80%;">39.97</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.4"><span class="ltx_text" id="S2.T1.5.5.18.13.4.1" style="font-size:80%;">36.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.18.13.5"><span class="ltx_text" id="S2.T1.5.5.18.13.5.1" style="font-size:80%;">38.51</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.18.13.6.1" style="font-size:80%;">62.94</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.7"><span class="ltx_text" id="S2.T1.5.5.18.13.7.1" style="font-size:80%;">22.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.8"><span class="ltx_text" id="S2.T1.5.5.18.13.8.1" style="font-size:80%;">37.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.9"><span class="ltx_text" id="S2.T1.5.5.18.13.9.1" style="font-size:80%;">44.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.18.13.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.18.13.10.1" style="font-size:80%;">71.51</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.19.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.19.14.1"><span class="ltx_text" id="S2.T1.5.5.19.14.1.1" style="font-size:80%;">ESL</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.2"><span class="ltx_text" id="S2.T1.5.5.19.14.2.1" style="font-size:80%;">64.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.3"><span class="ltx_text" id="S2.T1.5.5.19.14.3.1" style="font-size:80%;">47.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.19.14.4"><span class="ltx_text" id="S2.T1.5.5.19.14.4.1" style="font-size:80%;">42.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.5"><span class="ltx_text" id="S2.T1.5.5.19.14.5.1" style="font-size:80%;">68.96</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.6"><span class="ltx_text" id="S2.T1.5.5.19.14.6.1" style="font-size:80%;">21.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.19.14.7.1" style="font-size:80%;">74.06</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.8"><span class="ltx_text" id="S2.T1.5.5.19.14.8.1" style="font-size:80%;">67.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.19.14.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.19.14.9.1" style="font-size:80%;">75.33</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.20.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.20.15.1"><span class="ltx_text" id="S2.T1.5.5.20.15.1.1" style="font-size:80%;">TB-Dense</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.2"><span class="ltx_text" id="S2.T1.5.5.20.15.2.1" style="font-size:80%;">43.73</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.3"><span class="ltx_text" id="S2.T1.5.5.20.15.3.1" style="font-size:80%;">36.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.20.15.4"><span class="ltx_text" id="S2.T1.5.5.20.15.4.1" style="font-size:80%;">42.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.20.15.5.1" style="font-size:80%;">52.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.6"><span class="ltx_text" id="S2.T1.5.5.20.15.6.1" style="font-size:80%;">36.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.7"><span class="ltx_text" id="S2.T1.5.5.20.15.7.1" style="font-size:80%;">49.30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.8"><span class="ltx_text" id="S2.T1.5.5.20.15.8.1" style="font-size:80%;">51.23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.20.15.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.20.15.9.1" style="font-size:80%;">53.54</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.21.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.21.16.1"><span class="ltx_text" id="S2.T1.5.5.21.16.1.1" style="font-size:80%;">Causal-TB</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.2"><span class="ltx_text" id="S2.T1.5.5.21.16.2.1" style="font-size:80%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.3"><span class="ltx_text" id="S2.T1.5.5.21.16.3.1" style="font-size:80%;">8.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.21.16.4"><span class="ltx_text" id="S2.T1.5.5.21.16.4.1" style="font-size:80%;">8.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.5"><span class="ltx_text" id="S2.T1.5.5.21.16.5.1" style="font-size:80%;">42.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.6"><span class="ltx_text" id="S2.T1.5.5.21.16.6.1" style="font-size:80%;">16.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.7"><span class="ltx_text" id="S2.T1.5.5.21.16.7.1" style="font-size:80%;">37.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.8"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.21.16.8.1" style="font-size:80%;">49.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.21.16.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.21.16.9.1" style="font-size:80%;">45.26</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.22.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.22.17.1"><span class="ltx_text" id="S2.T1.5.5.22.17.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.2"><span class="ltx_text" id="S2.T1.5.5.22.17.2.1" style="font-size:80%;">43.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.3"><span class="ltx_text" id="S2.T1.5.5.22.17.3.1" style="font-size:80%;">21.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.22.17.4"><span class="ltx_text" id="S2.T1.5.5.22.17.4.1" style="font-size:80%;">42.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.5"><span class="ltx_text" id="S2.T1.5.5.22.17.5.1" style="font-size:80%;">71.55</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.6"><span class="ltx_text" id="S2.T1.5.5.22.17.6.1" style="font-size:80%;">40.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.7"><span class="ltx_text" id="S2.T1.5.5.22.17.7.1" style="font-size:80%;">37.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.22.17.8.1" style="font-size:80%;">75.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.22.17.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.22.17.9.1" style="font-size:80%;">81.95</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.1.1">
<span class="ltx_text" id="S2.T1.1.1.1.1.1" style="font-size:80%;">TCR</span><sup class="ltx_sup" id="S2.T1.1.1.1.1.2"><span class="ltx_text" id="S2.T1.1.1.1.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.2"><span class="ltx_text" id="S2.T1.1.1.1.2.1" style="font-size:80%;">15.43</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.3"><span class="ltx_text" id="S2.T1.1.1.1.3.1" style="font-size:80%;">18.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.1.4.1" style="font-size:80%;">25.34</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.5"><span class="ltx_text" id="S2.T1.1.1.1.5.1" style="font-size:80%;">24.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.6"><span class="ltx_text" id="S2.T1.1.1.1.6.1" style="font-size:80%;">24.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.7"><span class="ltx_text" id="S2.T1.1.1.1.7.1" style="font-size:80%;">20.68</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.8"><span class="ltx_text" id="S2.T1.1.1.1.8.1" style="font-size:80%;">22.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1" style="font-size:80%;">26.45</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.23.18">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.1" rowspan="3"><span class="ltx_text" id="S2.T1.5.5.23.18.1.1" style="font-size:80%;">ECRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.23.18.2"><span class="ltx_text" id="S2.T1.5.5.23.18.2.1" style="font-size:80%;">ESL</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.3"><span class="ltx_text" id="S2.T1.5.5.23.18.3.1" style="font-size:80%;">28.57</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.4"><span class="ltx_text" id="S2.T1.5.5.23.18.4.1" style="font-size:80%;">19.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.23.18.5"><span class="ltx_text" id="S2.T1.5.5.23.18.5.1" style="font-size:80%;">55.21</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.6"><span class="ltx_text" id="S2.T1.5.5.23.18.6.1" style="font-size:80%;">75.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.7"><span class="ltx_text" id="S2.T1.5.5.23.18.7.1" style="font-size:80%;">26.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.8"><span class="ltx_text" id="S2.T1.5.5.23.18.8.1" style="font-size:80%;">62.92</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.23.18.9.1" style="font-size:80%;">78.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.23.18.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.23.18.10.1" style="font-size:80%;">84.89</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.24.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.24.19.1"><span class="ltx_text" id="S2.T1.5.5.24.19.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.2"><span class="ltx_text" id="S2.T1.5.5.24.19.2.1" style="font-size:80%;">51.98</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.3"><span class="ltx_text" id="S2.T1.5.5.24.19.3.1" style="font-size:80%;">11.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.24.19.4"><span class="ltx_text" id="S2.T1.5.5.24.19.4.1" style="font-size:80%;">43.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.5"><span class="ltx_text" id="S2.T1.5.5.24.19.5.1" style="font-size:80%;">76.48</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.6"><span class="ltx_text" id="S2.T1.5.5.24.19.6.1" style="font-size:80%;">13.37</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.7"><span class="ltx_text" id="S2.T1.5.5.24.19.7.1" style="font-size:80%;">78.91</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.24.19.8.1" style="font-size:80%;">88.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.24.19.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.24.19.9.1" style="font-size:80%;">90.18</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.2.2.1">
<span class="ltx_text" id="S2.T1.2.2.2.1.1" style="font-size:80%;">Causal-TB</span><sup class="ltx_sup" id="S2.T1.2.2.2.1.2"><span class="ltx_text" id="S2.T1.2.2.2.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.2"><span class="ltx_text" id="S2.T1.2.2.2.2.1" style="font-size:80%;">39.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.3"><span class="ltx_text" id="S2.T1.2.2.2.3.1" style="font-size:80%;">41.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.2.2.2.4"><span class="ltx_text" id="S2.T1.2.2.2.4.1" style="font-size:80%;">43.44</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.5"><span class="ltx_text" id="S2.T1.2.2.2.5.1" style="font-size:80%;">33.94</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.6"><span class="ltx_text" id="S2.T1.2.2.2.6.1" style="font-size:80%;">30.02</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.7"><span class="ltx_text" id="S2.T1.2.2.2.7.1" style="font-size:80%;">48.41</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.2.2.2.8.1" style="font-size:80%;">48.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.2.9"><span class="ltx_text ltx_font_bold" id="S2.T1.2.2.2.9.1" style="font-size:80%;">55.79</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.25.20">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.25.20.1.1" style="font-size:80%;">ESRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.25.20.2"><span class="ltx_text" id="S2.T1.5.5.25.20.2.1" style="font-size:80%;">HiEve</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.3"><span class="ltx_text" id="S2.T1.5.5.25.20.3.1" style="font-size:80%;">38.81</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.4"><span class="ltx_text" id="S2.T1.5.5.25.20.4.1" style="font-size:80%;">30.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.25.20.5"><span class="ltx_text" id="S2.T1.5.5.25.20.5.1" style="font-size:80%;">48.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.6"><span class="ltx_text" id="S2.T1.5.5.25.20.6.1" style="font-size:80%;">55.60</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.7"><span class="ltx_text" id="S2.T1.5.5.25.20.7.1" style="font-size:80%;">48.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.8"><span class="ltx_text" id="S2.T1.5.5.25.20.8.1" style="font-size:80%;">57.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.25.20.9.1" style="font-size:80%;">58.01</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.25.20.10"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.25.20.10.1" style="font-size:80%;">58.61</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.26.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.26.21.1"><span class="ltx_text" id="S2.T1.5.5.26.21.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.2"><span class="ltx_text" id="S2.T1.5.5.26.21.2.1" style="font-size:80%;">40.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.3"><span class="ltx_text" id="S2.T1.5.5.26.21.3.1" style="font-size:80%;">13.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.26.21.4"><span class="ltx_text" id="S2.T1.5.5.26.21.4.1" style="font-size:80%;">38.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.26.21.5.1" style="font-size:80%;">44.37</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.6"><span class="ltx_text" id="S2.T1.5.5.26.21.6.1" style="font-size:80%;">33.49</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.7"><span class="ltx_text" id="S2.T1.5.5.26.21.7.1" style="font-size:80%;">39.11</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.8"><span class="ltx_text" id="S2.T1.5.5.26.21.8.1" style="font-size:80%;">37.30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.26.21.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.26.21.9.1" style="font-size:80%;">48.49</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.27.22">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.5.5.27.22.1" rowspan="7"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.27.22.1.1" style="font-size:80%;">CKG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.2"><span class="ltx_text" id="S2.T1.5.5.27.22.2.1" style="font-size:80%;">NER</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.27.22.3"><span class="ltx_text" id="S2.T1.5.5.27.22.3.1" style="font-size:80%;">CoNLL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.4"><span class="ltx_text" id="S2.T1.5.5.27.22.4.1" style="font-size:80%;">15.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.5"><span class="ltx_text" id="S2.T1.5.5.27.22.5.1" style="font-size:80%;">14.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.27.22.6"><span class="ltx_text" id="S2.T1.5.5.27.22.6.1" style="font-size:80%;">18.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.27.22.7.1" style="font-size:80%;">77.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.8"><span class="ltx_text" id="S2.T1.5.5.27.22.8.1" style="font-size:80%;">15.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.9"><span class="ltx_text" id="S2.T1.5.5.27.22.9.1" style="font-size:80%;">64.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.10"><span class="ltx_text" id="S2.T1.5.5.27.22.10.1" style="font-size:80%;">70.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.27.22.11"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.27.22.11.1" style="font-size:80%;">82.30</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.3.3.3">
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.1" rowspan="2">
<span class="ltx_text" id="S2.T1.3.3.3.1.1" style="font-size:80%;">AG</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S2.T1.3.3.3.1.m1.1"><semantics id="S2.T1.3.3.3.1.m1.1a"><mo id="S2.T1.3.3.3.1.m1.1.1" mathsize="80%" xref="S2.T1.3.3.3.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.1.m1.1b"><ci id="S2.T1.3.3.3.1.m1.1.1.cmml" xref="S2.T1.3.3.3.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.3.3.3.2"><span class="ltx_text" id="S2.T1.3.3.3.2.1" style="font-size:80%;">CNNDM</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.3"><span class="ltx_text" id="S2.T1.3.3.3.3.1" style="font-size:80%;">30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.4"><span class="ltx_text" id="S2.T1.3.3.3.4.1" style="font-size:80%;">28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.3.3.3.5"><span class="ltx_text" id="S2.T1.3.3.3.5.1" style="font-size:80%;">22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.3.3.3.6.1" style="font-size:80%;">36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.7"><span class="ltx_text" id="S2.T1.3.3.3.7.1" style="font-size:80%;">18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.8"><span class="ltx_text" id="S2.T1.3.3.3.8.1" style="font-size:80%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.9"><span class="ltx_text" id="S2.T1.3.3.3.9.1" style="font-size:80%;">35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.3.3.3.10"><span class="ltx_text ltx_font_bold" id="S2.T1.3.3.3.10.1" style="font-size:80%;">45</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.28.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.28.23.1"><span class="ltx_text" id="S2.T1.5.5.28.23.1.1" style="font-size:80%;">XSum</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.28.23.2.1" style="font-size:80%;">33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.3"><span class="ltx_text" id="S2.T1.5.5.28.23.3.1" style="font-size:80%;">26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.28.23.4"><span class="ltx_text" id="S2.T1.5.5.28.23.4.1" style="font-size:80%;">29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.5"><span class="ltx_text" id="S2.T1.5.5.28.23.5.1" style="font-size:80%;">28</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.6"><span class="ltx_text" id="S2.T1.5.5.28.23.6.1" style="font-size:80%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.7"><span class="ltx_text" id="S2.T1.5.5.28.23.7.1" style="font-size:80%;">24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.8"><span class="ltx_text" id="S2.T1.5.5.28.23.8.1" style="font-size:80%;">30</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.28.23.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.28.23.9.1" style="font-size:80%;">38</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.29.24">
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.1" rowspan="2"><span class="ltx_text" id="S2.T1.5.5.29.24.1.1" style="font-size:80%;">LI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.29.24.2"><span class="ltx_text" id="S2.T1.5.5.29.24.2.1" style="font-size:80%;">SNLI</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.3"><span class="ltx_text" id="S2.T1.5.5.29.24.3.1" style="font-size:80%;">51.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.4"><span class="ltx_text" id="S2.T1.5.5.29.24.4.1" style="font-size:80%;">47.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.29.24.5"><span class="ltx_text" id="S2.T1.5.5.29.24.5.1" style="font-size:80%;">60.38</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.6"><span class="ltx_text" id="S2.T1.5.5.29.24.6.1" style="font-size:80%;">69.51</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.7"><span class="ltx_text" id="S2.T1.5.5.29.24.7.1" style="font-size:80%;">44.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.8"><span class="ltx_text" id="S2.T1.5.5.29.24.8.1" style="font-size:80%;">87.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.29.24.9.1" style="font-size:80%;">89.35</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.29.24.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.29.24.10.1" style="font-size:80%;">89.03</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.30.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.30.25.1"><span class="ltx_text" id="S2.T1.5.5.30.25.1.1" style="font-size:80%;">MNLI</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.2"><span class="ltx_text" id="S2.T1.5.5.30.25.2.1" style="font-size:80%;">81.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.3"><span class="ltx_text" id="S2.T1.5.5.30.25.3.1" style="font-size:80%;">39.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.30.25.4"><span class="ltx_text" id="S2.T1.5.5.30.25.4.1" style="font-size:80%;">48.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.5"><span class="ltx_text" id="S2.T1.5.5.30.25.5.1" style="font-size:80%;">58.97</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.6"><span class="ltx_text" id="S2.T1.5.5.30.25.6.1" style="font-size:80%;">53.70</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.7"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.30.25.7.1" style="font-size:80%;">86.78</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.8"><span class="ltx_text" id="S2.T1.5.5.30.25.8.1" style="font-size:80%;">84.62</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.30.25.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.30.25.9.1" style="font-size:80%;">86.35</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.4.4.4">
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.2" rowspan="2"><span class="ltx_text" id="S2.T1.4.4.4.2.1" style="font-size:80%;">TC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.4.1">
<span class="ltx_text" id="S2.T1.4.4.4.1.1" style="font-size:80%;">R8</span><sup class="ltx_sup" id="S2.T1.4.4.4.1.2"><span class="ltx_text" id="S2.T1.4.4.4.1.2.1" style="font-size:80%;">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.3"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.4.3.1" style="font-size:80%;">72.26</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.4"><span class="ltx_text" id="S2.T1.4.4.4.4.1" style="font-size:80%;">36.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.4.4.4.5"><span class="ltx_text" id="S2.T1.4.4.4.5.1" style="font-size:80%;">66.58</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.6"><span class="ltx_text" id="S2.T1.4.4.4.6.1" style="font-size:80%;">65.27</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.7"><span class="ltx_text" id="S2.T1.4.4.4.7.1" style="font-size:80%;">58.89</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.8"><span class="ltx_text" id="S2.T1.4.4.4.8.1" style="font-size:80%;">28.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.9"><span class="ltx_text" id="S2.T1.4.4.4.9.1" style="font-size:80%;">58.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.4.4.4.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.4.4.4.10.1" style="font-size:80%;">69.33</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.31.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.31.26.1"><span class="ltx_text" id="S2.T1.5.5.31.26.1.1" style="font-size:80%;">R52</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.2"><span class="ltx_text" id="S2.T1.5.5.31.26.2.1" style="font-size:80%;">82.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.3"><span class="ltx_text" id="S2.T1.5.5.31.26.3.1" style="font-size:80%;">83.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.5.5.31.26.4"><span class="ltx_text" id="S2.T1.5.5.31.26.4.1" style="font-size:80%;">80.63</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.5"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.31.26.5.1" style="font-size:80%;">94.16</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.6"><span class="ltx_text" id="S2.T1.5.5.31.26.6.1" style="font-size:80%;">29.68</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.7"><span class="ltx_text" id="S2.T1.5.5.31.26.7.1" style="font-size:80%;">89.02</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.8"><span class="ltx_text" id="S2.T1.5.5.31.26.8.1" style="font-size:80%;">88.81</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.5.5.31.26.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.31.26.9.1" style="font-size:80%;">90.34</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.5.5.5.2"><span class="ltx_text ltx_font_italic" id="S2.T1.5.5.5.2.1" style="font-size:80%;">Counter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.1">
<span class="ltx_text" id="S2.T1.5.5.5.1.1" style="font-size:80%;">NLG</span><math alttext="\dagger" class="ltx_Math" display="inline" id="S2.T1.5.5.5.1.m1.1"><semantics id="S2.T1.5.5.5.1.m1.1a"><mo id="S2.T1.5.5.5.1.m1.1.1" mathsize="80%" xref="S2.T1.5.5.5.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.5.1.m1.1b"><ci id="S2.T1.5.5.5.1.m1.1.1.cmml" xref="S2.T1.5.5.5.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.5.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.5.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.5.3"><span class="ltx_text" id="S2.T1.5.5.5.3.1" style="font-size:80%;">WebNLG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.4"><span class="ltx_text" id="S2.T1.5.5.5.4.1" style="font-size:80%;">78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.5"><span class="ltx_text" id="S2.T1.5.5.5.5.1" style="font-size:80%;">65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.5.5.5.6"><span class="ltx_text" id="S2.T1.5.5.5.6.1" style="font-size:80%;">76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.5.7.1" style="font-size:80%;">83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.8"><span class="ltx_text" id="S2.T1.5.5.5.8.1" style="font-size:80%;">15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.9"><span class="ltx_text" id="S2.T1.5.5.5.9.1" style="font-size:80%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.10"><span class="ltx_text" id="S2.T1.5.5.5.10.1" style="font-size:80%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.5.5.5.11"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.5.11.1" style="font-size:80%;">85</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.5.5.32.27" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" colspan="3" id="S2.T1.5.5.32.27.1"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.32.27.1.1" style="font-size:80%;background-color:#E6E6E6;">Average Performance</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.2"><span class="ltx_text" id="S2.T1.5.5.32.27.2.1" style="font-size:80%;background-color:#E6E6E6;">38.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.3"><span class="ltx_text" id="S2.T1.5.5.32.27.3.1" style="font-size:80%;background-color:#E6E6E6;">29.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.5.5.32.27.4"><span class="ltx_text" id="S2.T1.5.5.32.27.4.1" style="font-size:80%;background-color:#E6E6E6;">39.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.5"><span class="ltx_text" id="S2.T1.5.5.32.27.5.1" style="font-size:80%;background-color:#E6E6E6;">59.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.6"><span class="ltx_text" id="S2.T1.5.5.32.27.6.1" style="font-size:80%;background-color:#E6E6E6;">26.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.7"><span class="ltx_text" id="S2.T1.5.5.32.27.7.1" style="font-size:80%;background-color:#E6E6E6;">52.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.5.5.32.27.8.1" style="font-size:80%;background-color:#E6E6E6;">60.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.5.5.32.27.9"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.32.27.9.1" style="font-size:80%;background-color:#E6E6E6;">67.90</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different large language models (LLMs) on various knowledge graph (KG) construction sub-tasks.  It shows the performance of several LLMs (GPT-4, Claude-3, Gemini, Llama-2, Llama-3) and several methods developed by the authors (Single-SFT, Integrated-SFT, GKG-LLM) across different KG sub-task datasets.  The best and second-best results for each sub-task are highlighted. The table also indicates which datasets are out-of-distribution (OOD) and notes that the Rough-L metric (percentage) is used for certain tasks instead of the standard F1-score.  The GKG-LLM column presents the results of the authors' proposed three-stage fine-tuning method.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various datasets and tasks. The best result for each sub-task is highlighted in bold, while the second-best result is underlined. The OOD datasets are starred by *. ††\dagger† means the task is evaluated by metric Rough-L of percentage. The results for GPT-4, Claude-3, and Gemini-1.5 are obtained via their respective APIs. LlaMA-2-GKG, LlaMA-3-Instruct, Single-SFT, and Integrated-SFT are implemented by us. The GKG-LLM column represents the final model obtained after three-stage tuning.
> </details>





### In-depth insights


#### Unified GKG-LLM
The 'Unified GKG-LLM' concept, as presented, embodies a significant advancement in knowledge representation and utilization. The core idea is to **integrate Knowledge Graphs (KG), Event Knowledge Graphs (EKG), and Commonsense Knowledge Graphs (CKG) into a single framework**. This unification promises to address the limitations of constructing these graphs independently, which often leads to redundant resource consumption and a failure to leverage inherent interconnections. By creating a **generalized knowledge graph (GKG)** and a Large Language Model (LLM) based around it, this framework offers a more holistic approach to knowledge acquisition and application. One key advantage lies in the potential for **improved parameter efficiency**, as shared knowledge across KG, EKG, and CKG can be jointly learned. Moreover, the GKG facilitates **better knowledge transfer**, enabling insights from one graph type to enhance the construction and reasoning capabilities of others. The challenge, however, lies in managing the task-specific differences that initially led to the separate development of these graphs.

#### Curriculum Tuning
**Curriculum tuning** is a key method for refining large language models (LLMs). It is a gradual training strategy. **Starts with basic tasks, then introduces harder ones.** Three types of graphs: KG, EKG, and CKG. KG builds **foundational skills**, EKG enhances **specific abilities**, CKG achieves **generalization**. Datasets are key. LLMs enhance real-world use. **Diversity in instructions improves tasks**

#### GKG Data Fusion
**GKG Data Fusion** is an exciting area, offering ways to combine different knowledge sources.  It tackles challenges like **data heterogeneity** and **semantic inconsistencies** to create a richer understanding.  Fusion methods could involve **entity resolution**, **relation alignment**, and **reasoning integration**. Potential benefits includes more accurate **knowledge inference** and **improved downstream task** performance. Challenges remain in scaling these techniques to large and noisy datasets and ensuring the **interpretability** of fused knowledge graphs.

#### LoRA+ Tuning
The research paper utilizes **LoRA+ tuning,** a refined version of LoRA, for efficient model fine-tuning within the GKG framework. LoRA+ accelerates convergence and enables adaptive GKG sub-task handling. The study explores the impact of varying the learning rates(ηΑ and ηΒ) associated with low-rank matrices. Findings highlight the significance of **carefully tuning ηΑ and ηΒ values to optimize model performance**. The results reveals that selecting the appropriate ηΑ and ηΒ values is crucial for **maximizing model performance** by efficiently fine-tuning large language models. This approach leverages low-rank adaptation techniques.

#### GKG: Future AI
**GKG (Generalized Knowledge Graph) has a strong potential for future AI.** GKG facilitates a more **holistic representation of knowledge**, integrating diverse sources like knowledge graphs, event knowledge graphs, and common sense knowledge graphs. This unified framework enables AI systems to reason across different domains, improving decision-making and problem-solving. GKG's ability to capture relationships between entities, events, and concepts, combined with advancements in large language models (LLMs), creates opportunities for developing more robust and adaptable AI systems. The development of GKG-LLMs are helping **enhance knowledge extraction and representation capabilities of foundation models** in specialized domains, especially in healthcare and other specialized areas.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/data_dis.png)

> 🔼 Figure 2 shows the distribution of the datasets used for training and evaluating the Generalized Knowledge Graph (GKG) construction task. It visually represents the various sub-tasks involved in constructing three types of graphs: Knowledge Graphs (KGs), Event Knowledge Graphs (EKGs), and Commonsense Knowledge Graphs (CKGs). Each sub-task is associated with one or more datasets, indicating the data sources utilized for that specific task. This figure provides a comprehensive overview of the data utilized for training and testing in the study, highlighting the diverse range of tasks and datasets involved in the GKG construction process.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration of the data distribution for all GKG sub-tasks.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/structure3.png)

> 🔼 This figure illustrates the three-stage curriculum learning framework used to train the GKG-LLM model.  The top section shows the unified GKG dataset (𝒟G) comprising data from KG, EKG, and CKG sub-tasks, as well as a counter task dataset. The bottom section details the three training stages: 1) KG Empowerment: foundational skills are built using KG datasets; 2) EKG Enhancement: specific capabilities are enhanced using EKG datasets; and 3) CKG Generalization: generalization is achieved using CKG and counter task datasets. Thick arrows indicate the transfer of model parameters between stages, starting from a base model to create the G-Micro, G-Mid, and finally, the GKG-LLM model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Three-stage curriculum learning tuning framework of GKG-LLM. The upper part represents the GKG dataset 𝒟Gsubscript𝒟𝐺\mathcal{D}_{G}caligraphic_D start_POSTSUBSCRIPT italic_G end_POSTSUBSCRIPT, consisting of the unified datasets. The lower part shows the three stages of GKG training: the KG empowerment stage using the KG datasets to build foundational skills, the EKG enhancement stage using the EKG datasets to enhance specific capabilities, and the CKG generalization stage using the CKG datasets and the counter task dataset to achieve generalization of the GKG-LLM capabilities. The thick arrows between the stages represent the delivery of model parameters from base model to each version of GKG-LLM.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/2.png)

> 🔼 This figure displays the average performance across all tasks for three different fine-tuning orders: K-E-C (KG, EKG, then CKG), K-C-E (KG, CKG, then EKG), E-K-C (EKG, KG, then CKG), E-C-K (EKG, CKG, then KG), C-K-E (CKG, KG, then EKG), and C-E-K (CKG, EKG, then KG).  The results show varying performance across the different sequences, demonstrating the impact of the chosen order on overall model performance.  The K-E-C sequence used in the main study demonstrates the best overall performance, supporting the study's methodology and indicating that a progressive training approach, starting with simpler knowledge graphs and progressing to more complex ones, yields the best results. 
> <details>
> <summary>read the caption</summary>
> Figure 4: Results of different fine-tuning orders. “K-E-C” means the fine-tuning order is KG, EKG and CKG. The following sets of experiments are similar to this one.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/1.png)

> 🔼 Figure 5 displays the performance comparison between using a single type of graph for fine-tuning and the three-stage fine-tuning approach of GKG-LLM.  The graph shows performance across KG, EKG, and CKG sub-tasks. It demonstrates that the three-stage curriculum learning process (KG empowerment, EKG enhancement, CKG generalization) progressively improves the model's capability across all three graph types, significantly outperforming the single-graph fine-tuning method.
> <details>
> <summary>read the caption</summary>
> Figure 5: Fine-tuning with a single type of graph and performance of different intermediate version in the GKG-LLM.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/datascaling1.png)

> 🔼 This figure displays the impact of varying training dataset sizes on the model's performance.  The x-axis represents the percentage of the complete dataset used for training (10%, 20%, 40%, 60%, 80%, and 100%). The y-axis shows the average F1 score achieved across all tasks.  The figure demonstrates the relationship between the amount of training data and the model's performance across three types of knowledge graph sub-tasks (KG, EKG, CKG), and an overall GKG average.  It helps illustrate the point of diminishing returns in terms of performance gain as training data increases.
> <details>
> <summary>read the caption</summary>
> Figure 6: Results of training with different proportions of complete data.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/OOD.png)

> 🔼 Figure 7 presents the average performance of various models on out-of-distribution (OOD) datasets.  The OOD datasets used are TCR, Causal-TB, and R8, each representing a distinct and challenging test scenario.  The figure displays the average F1 score (or other relevant metric) achieved by each model on these three datasets, allowing for a direct comparison of their robustness and generalization capabilities in handling unseen data.
> <details>
> <summary>read the caption</summary>
> Figure 7: The average performance on OOD datasets, consisting TCR, Causal-TB and R8 datasets.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/dataFormat2.jpg)

> 🔼 Figure 8 shows an example data entry from the WIKIEVENTS dataset, illustrating the standardized format used throughout the paper.  Each data entry consists of five key fields:  'ID' uniquely identifies the specific data point; 'instruction' provides the task instructions given to the model; 'few-shot/zero-shot' indicates whether few-shot learning examples were provided; 'input' contains the input data given to the model for processing; and 'output' shows the expected output or ground truth. This standardized format enables the unified processing of diverse sub-tasks within the generalized knowledge graph (GKG) construction framework.
> <details>
> <summary>read the caption</summary>
> Figure 8: An example from the WIKEVENTS dataset. It consists of five fields I⁢D𝐼𝐷IDitalic_I italic_D, instruction sisubscript𝑠𝑖s_{i}italic_s start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, few-shot f⁢s𝑓𝑠fsitalic_f italic_s / zero-shot z⁢s𝑧𝑠zsitalic_z italic_s , input xisubscript𝑥𝑖x_{i}italic_x start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, and output yisubscript𝑦𝑖y_{i}italic_y start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/stageGeneralization2.png)

> 🔼 Figure 9 displays a bar chart comparing the performance of three different model training strategies against the performance of the GKG-LLM model. The three strategies represent progressively more complex training approaches.  The chart shows the average F1 scores achieved on three different types of knowledge graph sub-tasks (KG, EKG, CKG) for each model.  This helps visualize how a three-stage curriculum learning approach enhances the model's ability to handle various tasks compared to single-stage training methods.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison of Results by different settings and GKG-LLM.
> </details>



![](https://arxiv.org/html/2503.11227/extracted/6285883/figures/hyperparameters1.png)

> 🔼 This heatmap visualizes the performance of the GKG-LLM model under different hyperparameter settings for the LoRA+ fine-tuning technique.  The x-axis represents the value of ηB (eta_B), and the y-axis represents the value of ηA (eta_A). Each cell in the heatmap shows the model's performance (likely F1-score or accuracy) on the GKG construction task under the corresponding ηA and ηB values. The color intensity represents the performance level, with darker colors indicating better performance. This figure is crucial for determining the optimal hyperparameter combination to maximize the model's effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 10: Heatmap of Scores for Different ηAsubscript𝜂𝐴\eta_{A}italic_η start_POSTSUBSCRIPT italic_A end_POSTSUBSCRIPT and ηBsubscript𝜂𝐵\eta_{B}italic_η start_POSTSUBSCRIPT italic_B end_POSTSUBSCRIPT Values for our training strategy.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.7.8.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.7.8.1.1.1" style="font-size:90%;">Variation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.8.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.7.8.1.2.1" style="font-size:90%;">KG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.8.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.7.8.1.3.1" style="font-size:90%;">EKG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.8.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.7.8.1.4.1" style="font-size:90%;">CKG</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.7.8.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.7.8.1.5.1" style="font-size:90%;">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.1.1.1"><math alttext="\mathcal{P}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T2.1.1.1.m1.1.1" mathsize="90%" xref="S4.T2.1.1.1.m1.1.1.cmml">𝒫</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">𝒫</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\mathcal{P}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">caligraphic_P</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.2"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:90%;">72.06</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.3"><span class="ltx_text" id="S4.T2.1.1.3.1" style="font-size:90%;">63.42</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.4"><span class="ltx_text" id="S4.T2.1.1.4.1" style="font-size:90%;">71.48</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.5"><span class="ltx_text" id="S4.T2.1.1.5.1" style="font-size:90%;">67.90</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.1"><math alttext="\mathcal{P}_{\text{si}}" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><msub id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.2.2.1.m1.1.1.2" mathsize="90%" xref="S4.T2.2.2.1.m1.1.1.2.cmml">𝒫</mi><mtext id="S4.T2.2.2.1.m1.1.1.3" mathsize="90%" xref="S4.T2.2.2.1.m1.1.1.3a.cmml">si</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><apply id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T2.2.2.1.m1.1.1.2.cmml" xref="S4.T2.2.2.1.m1.1.1.2">𝒫</ci><ci id="S4.T2.2.2.1.m1.1.1.3a.cmml" xref="S4.T2.2.2.1.m1.1.1.3"><mtext id="S4.T2.2.2.1.m1.1.1.3.cmml" mathsize="63%" xref="S4.T2.2.2.1.m1.1.1.3">si</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">\mathcal{P}_{\text{si}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">caligraphic_P start_POSTSUBSCRIPT si end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">68.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3"><span class="ltx_text" id="S4.T2.2.2.3.1" style="font-size:90%;">59.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4"><span class="ltx_text" id="S4.T2.2.2.4.1" style="font-size:90%;">69.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.5"><span class="ltx_text" id="S4.T2.2.2.5.1" style="font-size:90%;">64.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mi id="S4.T2.3.3.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T2.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><ci id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.2"><span class="ltx_text" id="S4.T2.3.3.2.1" style="font-size:90%;color:#008000;">(-3.60)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:90%;color:#008000;">(-4.08)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.4"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:90%;color:#008000;">(-2.38)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.5"><span class="ltx_text" id="S4.T2.3.3.5.1" style="font-size:90%;color:#008000;">(-3.57)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.1"><math alttext="\mathcal{P}_{\text{zs}}" class="ltx_Math" display="inline" id="S4.T2.4.4.1.m1.1"><semantics id="S4.T2.4.4.1.m1.1a"><msub id="S4.T2.4.4.1.m1.1.1" xref="S4.T2.4.4.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.4.4.1.m1.1.1.2" mathsize="90%" xref="S4.T2.4.4.1.m1.1.1.2.cmml">𝒫</mi><mtext id="S4.T2.4.4.1.m1.1.1.3" mathsize="90%" xref="S4.T2.4.4.1.m1.1.1.3a.cmml">zs</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.m1.1b"><apply id="S4.T2.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1">subscript</csymbol><ci id="S4.T2.4.4.1.m1.1.1.2.cmml" xref="S4.T2.4.4.1.m1.1.1.2">𝒫</ci><ci id="S4.T2.4.4.1.m1.1.1.3a.cmml" xref="S4.T2.4.4.1.m1.1.1.3"><mtext id="S4.T2.4.4.1.m1.1.1.3.cmml" mathsize="63%" xref="S4.T2.4.4.1.m1.1.1.3">zs</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.m1.1c">\mathcal{P}_{\text{zs}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.m1.1d">caligraphic_P start_POSTSUBSCRIPT zs end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.2"><span class="ltx_text" id="S4.T2.4.4.2.1" style="font-size:90%;">65.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.3"><span class="ltx_text" id="S4.T2.4.4.3.1" style="font-size:90%;">55.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4"><span class="ltx_text" id="S4.T2.4.4.4.1" style="font-size:90%;">66.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.5"><span class="ltx_text" id="S4.T2.4.4.5.1" style="font-size:90%;">60.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.5.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.5.5.1.m1.1"><semantics id="S4.T2.5.5.1.m1.1a"><mi id="S4.T2.5.5.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T2.5.5.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.1.m1.1b"><ci id="S4.T2.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.2"><span class="ltx_text" id="S4.T2.5.5.2.1" style="font-size:90%;color:#008000;">(-6.89)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.3"><span class="ltx_text" id="S4.T2.5.5.3.1" style="font-size:90%;color:#008000;">(-8.33)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.4"><span class="ltx_text" id="S4.T2.5.5.4.1" style="font-size:90%;color:#008000;">(-5.43)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5"><span class="ltx_text" id="S4.T2.5.5.5.1" style="font-size:90%;color:#008000;">(-7.84)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.6.6.1"><math alttext="\mathcal{P}_{\text{si+zs}}" class="ltx_Math" display="inline" id="S4.T2.6.6.1.m1.1"><semantics id="S4.T2.6.6.1.m1.1a"><msub id="S4.T2.6.6.1.m1.1.1" xref="S4.T2.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.6.6.1.m1.1.1.2" mathsize="90%" xref="S4.T2.6.6.1.m1.1.1.2.cmml">𝒫</mi><mtext id="S4.T2.6.6.1.m1.1.1.3" mathsize="90%" xref="S4.T2.6.6.1.m1.1.1.3a.cmml">si+zs</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.1.m1.1b"><apply id="S4.T2.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.6.6.1.m1.1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1">subscript</csymbol><ci id="S4.T2.6.6.1.m1.1.1.2.cmml" xref="S4.T2.6.6.1.m1.1.1.2">𝒫</ci><ci id="S4.T2.6.6.1.m1.1.1.3a.cmml" xref="S4.T2.6.6.1.m1.1.1.3"><mtext id="S4.T2.6.6.1.m1.1.1.3.cmml" mathsize="63%" xref="S4.T2.6.6.1.m1.1.1.3">si+zs</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.1.m1.1c">\mathcal{P}_{\text{si+zs}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.1.m1.1d">caligraphic_P start_POSTSUBSCRIPT si+zs end_POSTSUBSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.2"><span class="ltx_text" id="S4.T2.6.6.2.1" style="font-size:90%;">62.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.3"><span class="ltx_text" id="S4.T2.6.6.3.1" style="font-size:90%;">52.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.4"><span class="ltx_text" id="S4.T2.6.6.4.1" style="font-size:90%;">64.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.5"><span class="ltx_text" id="S4.T2.6.6.5.1" style="font-size:90%;">58.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.7.7.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.7.7.1.m1.1"><semantics id="S4.T2.7.7.1.m1.1a"><mi id="S4.T2.7.7.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="S4.T2.7.7.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.1.m1.1b"><ci id="S4.T2.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.1.m1.1d">roman_Δ</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.2"><span class="ltx_text" id="S4.T2.7.7.2.1" style="font-size:90%;color:#008000;">(-9.62)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.3"><span class="ltx_text" id="S4.T2.7.7.3.1" style="font-size:90%;color:#008000;">(-11.16)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.4"><span class="ltx_text" id="S4.T2.7.7.4.1" style="font-size:90%;color:#008000;">(-6.82)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.7.7.5"><span class="ltx_text" id="S4.T2.7.7.5.1" style="font-size:90%;color:#008000;">(-9.75)</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of four different prompting strategies on various tasks.  The strategies are: using full prompts (𝒫), a single instruction regardless of diversity (𝒫si), zero-shot prompting only (𝒫zs), and combining a single instruction with zero-shot prompting (𝒫si+zs). The results are presented in terms of evaluation metrics (specified elsewhere in the paper) for each prompt strategy, showing how different instruction methods impact model performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of different prompt strategies on the evaluation metrics. 𝒫𝒫\mathcal{P}caligraphic_P denotes full prompts, 𝒫sisubscript𝒫si\mathcal{P}_{\text{si}}caligraphic_P start_POSTSUBSCRIPT si end_POSTSUBSCRIPT refers to a single instruction regardless of diversity, 𝒫zssubscript𝒫zs\mathcal{P}_{\text{zs}}caligraphic_P start_POSTSUBSCRIPT zs end_POSTSUBSCRIPT represents zero-shot only, and 𝒫si+zssubscript𝒫si+zs\mathcal{P}_{\text{si+zs}}caligraphic_P start_POSTSUBSCRIPT si+zs end_POSTSUBSCRIPT combines single instruction with zero-shot prompting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1.1" style="font-size:80%;">Graphs</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.2.1" style="font-size:80%;">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.3.1" style="font-size:80%;">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.4.1" style="font-size:80%;"># Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.5.1" style="font-size:80%;"># Test</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.6.1" style="font-size:80%;">sampled?</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.7"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T3.1.1.1.1.7.1" style="font-size:80%;">held-out?</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.8.1" style="font-size:80%;">Original Source</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.2.1" rowspan="6"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.2.2.1.1" style="font-size:80%;">KG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.2"><span class="ltx_text" id="A1.T3.1.1.2.2.2.1" style="font-size:80%;">SRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.2.2.3"><span class="ltx_text" id="A1.T3.1.1.2.2.3.1" style="font-size:80%;">NYT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.4"><span class="ltx_text" id="A1.T3.1.1.2.2.4.1" style="font-size:80%;">96,229</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.5"><span class="ltx_text" id="A1.T3.1.1.2.2.5.1" style="font-size:80%;">8,110</span></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.2.2.6"></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.2.2.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2.8"><cite class="ltx_cite ltx_citemacro_cite">Paulus <span class="ltx_text" id="A1.T3.1.1.2.2.8.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib33" title="">2017</a><span class="ltx_text" id="A1.T3.1.1.2.2.8.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.3">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.3.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.3.3.1.1" style="font-size:80%;">FRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.3.3.2"><span class="ltx_text" id="A1.T3.1.1.3.3.2.1" style="font-size:80%;">FewRel</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.3.3"><span class="ltx_text" id="A1.T3.1.1.3.3.3.1" style="font-size:80%;">56,576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.3.4"><span class="ltx_text" id="A1.T3.1.1.3.3.4.1" style="font-size:80%;">11,775</span></td>
<td class="ltx_td" id="A1.T3.1.1.3.3.5"></td>
<td class="ltx_td" id="A1.T3.1.1.3.3.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.3.7"><cite class="ltx_cite ltx_citemacro_cite">Han <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.3.3.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib15" title="">2018</a><span class="ltx_text" id="A1.T3.1.1.3.3.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.4.4.1"><span class="ltx_text" id="A1.T3.1.1.4.4.1.1" style="font-size:80%;">TACRED</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.4.2"><span class="ltx_text" id="A1.T3.1.1.4.4.2.1" style="font-size:80%;">18,448</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.4.3"><span class="ltx_text" id="A1.T3.1.1.4.4.3.1" style="font-size:80%;">3,325</span></td>
<td class="ltx_td" id="A1.T3.1.1.4.4.4"></td>
<td class="ltx_td" id="A1.T3.1.1.4.4.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.4.6"><cite class="ltx_cite ltx_citemacro_cite">Alt <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.4.4.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib2" title="">2020</a><span class="ltx_text" id="A1.T3.1.1.4.4.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.5">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.5.1"><span class="ltx_text" id="A1.T3.1.1.5.5.1.1" style="font-size:80%;">DRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.5.5.2"><span class="ltx_text" id="A1.T3.1.1.5.5.2.1" style="font-size:80%;">DOCRED</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.5.3"><span class="ltx_text" id="A1.T3.1.1.5.5.3.1" style="font-size:80%;">61,380</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.5.4"><span class="ltx_text" id="A1.T3.1.1.5.5.4.1" style="font-size:80%;">6,137</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.5.5"><span class="ltx_text" id="A1.T3.1.1.5.5.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.5.5.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.5.7"><cite class="ltx_cite ltx_citemacro_cite">Yao <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.5.5.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib45" title="">2019</a><span class="ltx_text" id="A1.T3.1.1.5.5.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.6">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.6.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.6.6.1.1" style="font-size:80%;">JE&amp;RE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.6.6.2"><span class="ltx_text" id="A1.T3.1.1.6.6.2.1" style="font-size:80%;">FewRel</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.6.3"><span class="ltx_text" id="A1.T3.1.1.6.6.3.1" style="font-size:80%;">28,288</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.6.4"><span class="ltx_text" id="A1.T3.1.1.6.6.4.1" style="font-size:80%;">11,775</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.6.5"><span class="ltx_text" id="A1.T3.1.1.6.6.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.6.6.6"></td>
<td class="ltx_td" id="A1.T3.1.1.6.6.7"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.7.7.1"><span class="ltx_text" id="A1.T3.1.1.7.7.1.1" style="font-size:80%;">NYT</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.2"><span class="ltx_text" id="A1.T3.1.1.7.7.2.1" style="font-size:80%;">48,114</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.3"><span class="ltx_text" id="A1.T3.1.1.7.7.3.1" style="font-size:80%;">8,110</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.7.4"><span class="ltx_text" id="A1.T3.1.1.7.7.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.7.7.5"></td>
<td class="ltx_td" id="A1.T3.1.1.7.7.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.8.8.1" rowspan="15"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.8.8.1.1" style="font-size:80%;">EKG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.8.8.2"><span class="ltx_text" id="A1.T3.1.1.8.8.2.1" style="font-size:80%;">SED</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.8.8.3"><span class="ltx_text" id="A1.T3.1.1.8.8.3.1" style="font-size:80%;">ACE2005</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.8.8.4"><span class="ltx_text" id="A1.T3.1.1.8.8.4.1" style="font-size:80%;">3,681</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.8.8.5"><span class="ltx_text" id="A1.T3.1.1.8.8.5.1" style="font-size:80%;">409</span></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.8.8.6"></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.8.8.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.8.8.8"><cite class="ltx_cite ltx_citemacro_cite">Grishman <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.8.8.8.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib13" title="">2005</a><span class="ltx_text" id="A1.T3.1.1.8.8.8.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.9">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.1"><span class="ltx_text" id="A1.T3.1.1.9.9.1.1" style="font-size:80%;">DED</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.9.9.2"><span class="ltx_text" id="A1.T3.1.1.9.9.2.1" style="font-size:80%;">WIKIEVENTS</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.3"><span class="ltx_text" id="A1.T3.1.1.9.9.3.1" style="font-size:80%;">3,586</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.4"><span class="ltx_text" id="A1.T3.1.1.9.9.4.1" style="font-size:80%;">365</span></td>
<td class="ltx_td" id="A1.T3.1.1.9.9.5"></td>
<td class="ltx_td" id="A1.T3.1.1.9.9.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.9.7"><cite class="ltx_cite ltx_citemacro_cite">Li <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.9.9.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib26" title="">2021</a><span class="ltx_text" id="A1.T3.1.1.9.9.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.10">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.10.10.1.1" style="font-size:80%;">DEAE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.10.10.2"><span class="ltx_text" id="A1.T3.1.1.10.10.2.1" style="font-size:80%;">WIKIEVENTS</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.3"><span class="ltx_text" id="A1.T3.1.1.10.10.3.1" style="font-size:80%;">3,586</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.10.4"><span class="ltx_text" id="A1.T3.1.1.10.10.4.1" style="font-size:80%;">365</span></td>
<td class="ltx_td" id="A1.T3.1.1.10.10.5"></td>
<td class="ltx_td" id="A1.T3.1.1.10.10.6"></td>
<td class="ltx_td" id="A1.T3.1.1.10.10.7"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.11.11.1"><span class="ltx_text" id="A1.T3.1.1.11.11.1.1" style="font-size:80%;">RAMS</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.11.11.2"><span class="ltx_text" id="A1.T3.1.1.11.11.2.1" style="font-size:80%;">7,339</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.11.11.3"><span class="ltx_text" id="A1.T3.1.1.11.11.3.1" style="font-size:80%;">761</span></td>
<td class="ltx_td" id="A1.T3.1.1.11.11.4"></td>
<td class="ltx_td" id="A1.T3.1.1.11.11.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.11.11.6"><cite class="ltx_cite ltx_citemacro_cite">Ebner <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.11.11.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib7" title="">2020</a><span class="ltx_text" id="A1.T3.1.1.11.11.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.12.12">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.12.1" rowspan="6"><span class="ltx_text" id="A1.T3.1.1.12.12.1.1" style="font-size:80%;">ETRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.12.12.2"><span class="ltx_text" id="A1.T3.1.1.12.12.2.1" style="font-size:80%;">MATRES</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.12.3"><span class="ltx_text" id="A1.T3.1.1.12.12.3.1" style="font-size:80%;">12,216</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.12.4"><span class="ltx_text" id="A1.T3.1.1.12.12.4.1" style="font-size:80%;">1,361</span></td>
<td class="ltx_td" id="A1.T3.1.1.12.12.5"></td>
<td class="ltx_td" id="A1.T3.1.1.12.12.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.12.12.7"><cite class="ltx_cite ltx_citemacro_cite">Ning <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.12.12.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib32" title="">2019</a><span class="ltx_text" id="A1.T3.1.1.12.12.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.13.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.13.13.1"><span class="ltx_text" id="A1.T3.1.1.13.13.1.1" style="font-size:80%;">ESL</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.2"><span class="ltx_text" id="A1.T3.1.1.13.13.2.1" style="font-size:80%;">7,652</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.13.13.3"><span class="ltx_text" id="A1.T3.1.1.13.13.3.1" style="font-size:80%;">852</span></td>
<td class="ltx_td" id="A1.T3.1.1.13.13.4"></td>
<td class="ltx_td" id="A1.T3.1.1.13.13.5"></td>
<td class="ltx_td" id="A1.T3.1.1.13.13.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.14.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.14.14.1"><span class="ltx_text" id="A1.T3.1.1.14.14.1.1" style="font-size:80%;">TB-Dense</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.2"><span class="ltx_text" id="A1.T3.1.1.14.14.2.1" style="font-size:80%;">9,257</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.3"><span class="ltx_text" id="A1.T3.1.1.14.14.3.1" style="font-size:80%;">2,639</span></td>
<td class="ltx_td" id="A1.T3.1.1.14.14.4"></td>
<td class="ltx_td" id="A1.T3.1.1.14.14.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.14.14.6"><cite class="ltx_cite ltx_citemacro_cite">Han <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.14.14.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib16" title="">2019</a><span class="ltx_text" id="A1.T3.1.1.14.14.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.15.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.15.15.1"><span class="ltx_text" id="A1.T3.1.1.15.15.1.1" style="font-size:80%;">Causal-TB</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.2"><span class="ltx_text" id="A1.T3.1.1.15.15.2.1" style="font-size:80%;">5,427</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.3"><span class="ltx_text" id="A1.T3.1.1.15.15.3.1" style="font-size:80%;">603</span></td>
<td class="ltx_td" id="A1.T3.1.1.15.15.4"></td>
<td class="ltx_td" id="A1.T3.1.1.15.15.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.15.15.6"><cite class="ltx_cite ltx_citemacro_cite">Mirza and Tonelli <span class="ltx_text" id="A1.T3.1.1.15.15.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib31" title="">2016</a><span class="ltx_text" id="A1.T3.1.1.15.15.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.16.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.16.16.1"><span class="ltx_text" id="A1.T3.1.1.16.16.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.2"><span class="ltx_text" id="A1.T3.1.1.16.16.2.1" style="font-size:80%;">80,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.3"><span class="ltx_text" id="A1.T3.1.1.16.16.3.1" style="font-size:80%;">5,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.4"><span class="ltx_text" id="A1.T3.1.1.16.16.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.16.16.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.16.16.6"><cite class="ltx_cite ltx_citemacro_cite">Wang <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.16.16.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib41" title="">2022</a><span class="ltx_text" id="A1.T3.1.1.16.16.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.17.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.17.17.1"><span class="ltx_text" id="A1.T3.1.1.17.17.1.1" style="font-size:80%;">TCR</span></td>
<td class="ltx_td" id="A1.T3.1.1.17.17.2"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.17.17.3"><span class="ltx_text" id="A1.T3.1.1.17.17.3.1" style="font-size:80%;">3,515</span></td>
<td class="ltx_td" id="A1.T3.1.1.17.17.4"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.17.17.5"><span class="ltx_text" id="A1.T3.1.1.17.17.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.17.17.6"><cite class="ltx_cite ltx_citemacro_cite">Han <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.17.17.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib16" title="">2019</a><span class="ltx_text" id="A1.T3.1.1.17.17.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.18.18">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.18.18.1" rowspan="3"><span class="ltx_text" id="A1.T3.1.1.18.18.1.1" style="font-size:80%;">ECRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.18.18.2"><span class="ltx_text" id="A1.T3.1.1.18.18.2.1" style="font-size:80%;">ESL</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.18.18.3"><span class="ltx_text" id="A1.T3.1.1.18.18.3.1" style="font-size:80%;">3,196</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.18.18.4"><span class="ltx_text" id="A1.T3.1.1.18.18.4.1" style="font-size:80%;">356</span></td>
<td class="ltx_td" id="A1.T3.1.1.18.18.5"></td>
<td class="ltx_td" id="A1.T3.1.1.18.18.6"></td>
<td class="ltx_td" id="A1.T3.1.1.18.18.7"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.19.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.19.19.1"><span class="ltx_text" id="A1.T3.1.1.19.19.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.2"><span class="ltx_text" id="A1.T3.1.1.19.19.2.1" style="font-size:80%;">63,980</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.3"><span class="ltx_text" id="A1.T3.1.1.19.19.3.1" style="font-size:80%;">7,330</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.19.19.4"><span class="ltx_text" id="A1.T3.1.1.19.19.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.19.19.5"></td>
<td class="ltx_td" id="A1.T3.1.1.19.19.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.20.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.20.20.1"><span class="ltx_text" id="A1.T3.1.1.20.20.1.1" style="font-size:80%;">Causal-TB</span></td>
<td class="ltx_td" id="A1.T3.1.1.20.20.2"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.3"><span class="ltx_text" id="A1.T3.1.1.20.20.3.1" style="font-size:80%;">318</span></td>
<td class="ltx_td" id="A1.T3.1.1.20.20.4"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.20.20.5"><span class="ltx_text" id="A1.T3.1.1.20.20.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.20.20.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.21.21">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.21.21.1.1" style="font-size:80%;">ESRE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.21.21.2"><span class="ltx_text" id="A1.T3.1.1.21.21.2.1" style="font-size:80%;">HiEve</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.3"><span class="ltx_text" id="A1.T3.1.1.21.21.3.1" style="font-size:80%;">12,107</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.4"><span class="ltx_text" id="A1.T3.1.1.21.21.4.1" style="font-size:80%;">1,348</span></td>
<td class="ltx_td" id="A1.T3.1.1.21.21.5"></td>
<td class="ltx_td" id="A1.T3.1.1.21.21.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.21.21.7"><cite class="ltx_cite ltx_citemacro_cite">Glavaš <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.21.21.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib12" title="">2014</a><span class="ltx_text" id="A1.T3.1.1.21.21.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.22.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.22.22.1"><span class="ltx_text" id="A1.T3.1.1.22.22.1.1" style="font-size:80%;">MAVEN-ERE</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.2"><span class="ltx_text" id="A1.T3.1.1.22.22.2.1" style="font-size:80%;">31,365</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.22.22.3"><span class="ltx_text" id="A1.T3.1.1.22.22.3.1" style="font-size:80%;">4,244</span></td>
<td class="ltx_td" id="A1.T3.1.1.22.22.4"></td>
<td class="ltx_td" id="A1.T3.1.1.22.22.5"></td>
<td class="ltx_td" id="A1.T3.1.1.22.22.6"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.23.23.1" rowspan="7"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.23.23.1.1" style="font-size:80%;">CKG</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.23.23.2"><span class="ltx_text" id="A1.T3.1.1.23.23.2.1" style="font-size:80%;">NER</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.1.1.23.23.3"><span class="ltx_text" id="A1.T3.1.1.23.23.3.1" style="font-size:80%;">CoNLL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.23.23.4"><span class="ltx_text" id="A1.T3.1.1.23.23.4.1" style="font-size:80%;">17,293</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.23.23.5"><span class="ltx_text" id="A1.T3.1.1.23.23.5.1" style="font-size:80%;">3,454</span></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.23.23.6"></td>
<td class="ltx_td ltx_border_t" id="A1.T3.1.1.23.23.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.23.23.8"><cite class="ltx_cite ltx_citemacro_cite">Sang and De Meulder <span class="ltx_text" id="A1.T3.1.1.23.23.8.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib36" title="">2003</a><span class="ltx_text" id="A1.T3.1.1.23.23.8.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.24.24">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.24.24.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.24.24.1.1" style="font-size:80%;">AG</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.24.24.2"><span class="ltx_text" id="A1.T3.1.1.24.24.2.1" style="font-size:80%;">CNNDM</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.24.24.3"><span class="ltx_text" id="A1.T3.1.1.24.24.3.1" style="font-size:80%;">51,684</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.24.24.4"><span class="ltx_text" id="A1.T3.1.1.24.24.4.1" style="font-size:80%;">11,490</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.24.24.5"><span class="ltx_text" id="A1.T3.1.1.24.24.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.24.24.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.24.24.7"><cite class="ltx_cite ltx_citemacro_cite">Chen <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.24.24.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib5" title="">2021</a><span class="ltx_text" id="A1.T3.1.1.24.24.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.25.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.25.25.1"><span class="ltx_text" id="A1.T3.1.1.25.25.1.1" style="font-size:80%;">XSum</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.2"><span class="ltx_text" id="A1.T3.1.1.25.25.2.1" style="font-size:80%;">50,666</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.3"><span class="ltx_text" id="A1.T3.1.1.25.25.3.1" style="font-size:80%;">11,334</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.4"><span class="ltx_text" id="A1.T3.1.1.25.25.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.25.25.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.25.25.6"><cite class="ltx_cite ltx_citemacro_cite">Hasan <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.25.25.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib17" title="">2021</a><span class="ltx_text" id="A1.T3.1.1.25.25.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.26.26">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.26.26.1.1" style="font-size:80%;">LI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.26.26.2"><span class="ltx_text" id="A1.T3.1.1.26.26.2.1" style="font-size:80%;">SNLI</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.3"><span class="ltx_text" id="A1.T3.1.1.26.26.3.1" style="font-size:80%;">50,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.4"><span class="ltx_text" id="A1.T3.1.1.26.26.4.1" style="font-size:80%;">10,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.5"><span class="ltx_text" id="A1.T3.1.1.26.26.5.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.26.26.6"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.26.26.7"><cite class="ltx_cite ltx_citemacro_cite">Camburu <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.26.26.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib3" title="">2018</a><span class="ltx_text" id="A1.T3.1.1.26.26.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.27.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.27.27.1"><span class="ltx_text" id="A1.T3.1.1.27.27.1.1" style="font-size:80%;">MNLI</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.2"><span class="ltx_text" id="A1.T3.1.1.27.27.2.1" style="font-size:80%;">50,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.3"><span class="ltx_text" id="A1.T3.1.1.27.27.3.1" style="font-size:80%;">10,000</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.4"><span class="ltx_text" id="A1.T3.1.1.27.27.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.27.27.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.27.27.6"><cite class="ltx_cite ltx_citemacro_cite">Hu <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.27.27.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib22" title="">2020</a><span class="ltx_text" id="A1.T3.1.1.27.27.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.28.28">
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.28.28.1" rowspan="2"><span class="ltx_text" id="A1.T3.1.1.28.28.1.1" style="font-size:80%;">TC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.28.28.2"><span class="ltx_text" id="A1.T3.1.1.28.28.2.1" style="font-size:80%;">R8</span></td>
<td class="ltx_td" id="A1.T3.1.1.28.28.3"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.28.28.4"><span class="ltx_text" id="A1.T3.1.1.28.28.4.1" style="font-size:80%;">7,674</span></td>
<td class="ltx_td" id="A1.T3.1.1.28.28.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.28.28.6"><span class="ltx_text" id="A1.T3.1.1.28.28.6.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.28.28.7"><cite class="ltx_cite ltx_citemacro_cite">Yamada and Shindo <span class="ltx_text" id="A1.T3.1.1.28.28.7.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib44" title="">2019</a><span class="ltx_text" id="A1.T3.1.1.28.28.7.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.29.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T3.1.1.29.29.1"><span class="ltx_text" id="A1.T3.1.1.29.29.1.1" style="font-size:80%;">R52</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.29.29.2"><span class="ltx_text" id="A1.T3.1.1.29.29.2.1" style="font-size:80%;">7,816</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.29.29.3"><span class="ltx_text" id="A1.T3.1.1.29.29.3.1" style="font-size:80%;">1,284</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.29.29.4"><span class="ltx_text" id="A1.T3.1.1.29.29.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T3.1.1.29.29.5"></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.29.29.6"><cite class="ltx_cite ltx_citemacro_cite">Ge and Moh <span class="ltx_text" id="A1.T3.1.1.29.29.6.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib11" title="">2017</a><span class="ltx_text" id="A1.T3.1.1.29.29.6.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.30.30">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.1"><span class="ltx_text ltx_font_italic" id="A1.T3.1.1.30.30.1.1" style="font-size:80%;">Counter</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.2"><span class="ltx_text" id="A1.T3.1.1.30.30.2.1" style="font-size:80%;">NLG</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.1.1.30.30.3"><span class="ltx_text" id="A1.T3.1.1.30.30.3.1" style="font-size:80%;">WebNLG</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.4"><span class="ltx_text" id="A1.T3.1.1.30.30.4.1" style="font-size:80%;">26,302</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.5"><span class="ltx_text" id="A1.T3.1.1.30.30.5.1" style="font-size:80%;">6,513</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.6"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.1.1.30.30.8"><cite class="ltx_cite ltx_citemacro_cite">Gardent <span class="ltx_text ltx_font_italic">et al.</span> <span class="ltx_text" id="A1.T3.1.1.30.30.8.1.1.1.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11227v2#bib.bib10" title="">2017</a><span class="ltx_text" id="A1.T3.1.1.30.30.8.2.2.2.1" style="font-size:80%;">]</span></cite></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used in the paper, categorized by graph type (KG, EKG, CKG) and sub-task.  It shows the number of training and testing samples for each dataset, whether the dataset was sampled to balance the data, whether it was held out (not used during training), and the original source of the dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Detailed illustrations of 15 sub-task types across 29 datasets, categorized within three types of graphs, along with a counter dataset—WebNLG. # Train and # Test represent the number of training and testing samples, respectively. Sampled? indicates whether the dataset is sampled from the original to achieve data balancing. Held-out? specifies whether the dataset is used during the training phase. Original Source refers to the citation of the original paper.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11227/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11227/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}