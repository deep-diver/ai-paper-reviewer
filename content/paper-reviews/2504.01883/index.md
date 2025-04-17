---
title: "CoRAG: Collaborative Retrieval-Augmented Generation"
summary: "CoRAG: Collaborative RAG for improved few-shot learning via shared knowledge, balancing relevant, irrelevant, & negative passages."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01883 {{< /keyword >}}
{{< keyword icon="writer" >}} Aashiq Muhamed et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01883" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01883" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01883/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Retrieval-Augmented Generation (RAG)** models are effective in knowledge-intensive tasks, especially with limited data. However, current approaches mainly focus on centralized settings where a single entity controls the model and data. The potential of RAG in collaborative learning, where multiple clients jointly train a shared model without directly exchanging their data, remains largely unexplored. This leads to missed opportunities for leveraging diverse knowledge and resources in a decentralized manner. 



This paper introduces **CoRAG, a framework for collaborative RAG**, enabling multiple clients to jointly train a shared model using a collaborative passage store. To evaluate CoRAG, the paper introduces **CRAB, a new benchmark for collaborative open-domain question answering**. Experiments demonstrate that CoRAG consistently outperforms both parametric collaborative learning methods and locally trained RAG models in low-resource scenarios. The research further analyzes the impact of passage composition (relevant, irrelevant, and hard-negative passages) on model performance, providing valuable insights for designing effective collaborative RAG systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CoRAG framework enables collaborative RAG with improved few-shot performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Relevant passages are crucial, while irrelevant passages can surprisingly be beneficial. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Careful curation of the collaborative store is essential, minimizing hard negatives. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **CoRAG, a novel framework for collaborative RAG**, addressing the need for effective knowledge sharing and model training in decentralized environments. The **CRAB benchmark** and insights into passage composition offer researchers valuable tools and guidance for developing and evaluating collaborative RAG systems, fostering advancements in few-shot learning, knowledge-intensive tasks, and privacy-preserving machine learning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01883/extracted/6331296/figures/few-shot-final.png)

> 🔼 This figure compares the performance of three different models on the CRAB benchmark: Flan-T5 (a strong parametric model), RAG (Local) which uses only local data, and CoRAG (the proposed collaborative model).  The x-axis shows the number of training examples per client (16, 32, or 64), representing different few-shot learning settings. The y-axis displays the Exact Match score, a metric evaluating the accuracy of the models' question answering. The bars illustrate that CoRAG consistently achieves better performance than Flan-T5 across all training data sizes.  Furthermore, the advantage of CoRAG over the baselines becomes more significant when fewer training examples are available per client.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance of Flan-T5, RAG (Local), and CoRAG on CRAB. CoRAG consistently outperforms Flan-T5 across training configurations. Performance gap between CoRAG and baselines widens as training samples per client decreases.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1">Passage Store <math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">→</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.2">REL</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3">IRR</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.4">REL-1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T1.1.1.5">SPLIT</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.2.1">RAG (Local)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.2">28.088</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.3">25.944</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.4">26.597</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T1.1.2.5">34.694</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.3.1">CoRAG</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.3.2">33.011</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.3.3">30.444</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.3.4">30.944</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T1.1.3.5">40.056</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the average Exact Match (EM) scores achieved by CoRAG and RAG (Local) models across different passage store configurations.  The passage stores are categorized into four types: REL (containing all relevant passages), IRR (containing only irrelevant passages), REL-1 (where only one client has relevant passages), and SPLIT (where relevant passages are distributed among clients).  The results show that CoRAG consistently outperforms RAG (Local) across all configurations.  Furthermore, the presence of relevant passages significantly boosts performance (REL > IRR), and concentrating relevant passages within a single store further improves performance (SPLIT > REL). This demonstrates the impact of passage store composition on both model performance and the effectiveness of the CoRAG collaborative training framework.
> <details>
> <summary>read the caption</summary>
> Table 1:  Average EM under various passage store options. CoRAG outperforms RAG (Local). REL outperforms IRR, highlighting the importance of relevant passages. SPLIT outperforms REL, showing the benefit of passage concentration.
> </details>





### In-depth insights


#### Collab. RAG Intro
The introduction of Collaborative Retrieval-Augmented Generation (CoRAG) marks a significant advancement, especially in knowledge-intensive tasks under limited data conditions. **CoRAG facilitates joint model training among multiple clients using a shared, collaboratively built passage store**, offering a distinct advantage over traditional centralized RAG systems where a single entity controls both the model and data. By allowing clients to pool resources without direct data exchange, CoRAG addresses privacy and strategic concerns, as illustrated by the example of competing businesses sharing market research. **The core innovation lies in enabling more effective model training in low-resource settings**, where individual clients' datasets may be insufficient. This framework, however, introduces unique challenges related to the composition and management of the shared passage store, particularly in balancing relevant, irrelevant, and hard-negative passages to optimize model performance and generalization. **This balance is crucial, as the quality of the shared knowledge base directly impacts the effectiveness of the collaboratively trained RAG model.**

#### CoRAG Framework
The CoRAG framework **integrates collaborative learning with Retrieval-Augmented Generation (RAG)**. It enables clients to train a shared model using a collaborative passage store, improving performance in low-resource settings. Clients access a broader knowledge base, **improving learning and generalization**. CoRAG consists of pre-training, collaborative learning, and inference phases. **Unique challenges arise from the dynamics of the shared store**. The composition of the store, including relevant, irrelevant, and hard-negative passages, significantly impacts model performance and generalization. **Relevant passages are crucial, hard negatives can be detrimental, and irrelevant passages can be beneficial**.

#### CRAB Benchmark
The **CRAB benchmark** is introduced to evaluate collaborative RAG. It's a **homogeneous** (identically distributed) **open-domain QA benchmark**, derived from NaturalQuestions. CRAB includes train, test, and dev splits across 8 clients. CRAB aims to simulate real-world scenarios where knowledge changes over time, by having **distinct passage stores** for training and testing, with **no overlap** between them. CRAB consists of Wikipedia passages with the objective of collaborative homogeneous open-domain question answering. It is used to investigate passage composition in CoRAG. 

#### Store Impact
The impact of the store composition is explored. The authors categorized passages retrieved using BM25 as **relevant, hard negatives, and irrelevant**. Results indicate that having **relevant passages** significantly improves model performance over not having them. Surprisingly, concentrating relevant passages in a single client yields marginal improvements. Having a mixture of relevant and irrelevant passages showed performance improvements in model generalization. One of the interesting findings that the paper reports is that having **hard negatives** during the training phase negatively affected performance and that **irrelevant passages** can improve the performance of the RAG models. This suggests that hard negatives mislead the retriever while irrelevant passages help the retriever learn to discriminate between relevant and irrelevant information more effectively. 

#### Client Incentives
Client incentives are crucial for fostering active participation and ensuring the long-term success of collaborative learning systems. A key challenge lies in aligning individual goals with the collective benefit. Clients must perceive a direct advantage in contributing their resources. The incentive structure needs to carefully balance rewards for high-quality contributions with equitable participation, ensuring that no client is unfairly disadvantaged. Potential incentives include reputation systems, where clients earn recognition and influence based on their contributions, and tiered access levels, granting greater access to shared resources to those who contribute more. Also, introducing reward function is a method where it incentivize clients to contribute high-quality passages. The design of effective client incentives should also consider the risk of free-riding, where some clients benefit from the shared knowledge base without making substantial contributions. To mitigate this risk, incentives could be structured to reward not only the quantity but also the quality and uniqueness of contributions.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1">Train Passage Store Composition</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1">Exact Match</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.1">Only relevant</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.2">29.111</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.1.3.1">Only hard neg + irrelevant</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2">25.222</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.1.4.1">Only relevant + hard neg</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.2">25.778</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.1.5.1">Only relevant + irrelevant</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.2.1">32.667</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.1.6.1">Only top-1 relevant + irrelevant</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.6.2">31.556</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment investigating how different compositions of the training passage store affect the performance of a local Retrieval-Augmented Generation (RAG) model.  The passage store was manipulated to include only relevant passages, only irrelevant passages, only hard negatives, combinations of these, and a control condition.  The experiment was conducted across eight clients, and the average exact match score across those clients is reported for each condition.  The findings demonstrate that the inclusion of hard negatives negatively impacts performance, while surprisingly, the inclusion of irrelevant passages has a positive effect on performance.
> <details>
> <summary>read the caption</summary>
> Table 2:  Effect of training passage store composition on RAG (local) test performance averaged across 8 clients. Hard negatives hurt performance, while irrelevant passages are surprisingly beneficial.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T3.60">
<tr class="ltx_tr" id="A4.T3.60.61">
<td class="ltx_td ltx_border_tt" id="A4.T3.60.61.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.60.61.2">T5-base</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.60.61.3">Flan-T5-base</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T3.60.61.4">RAG</td>
</tr>
<tr class="ltx_tr" id="A4.T3.6.6">
<td class="ltx_td" id="A4.T3.6.6.7"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.1.1.1">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.1.1.1.m1.1"><semantics id="A4.T3.1.1.1.m1.1a"><mo id="A4.T3.1.1.1.m1.1.1" stretchy="false" xref="A4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.1.1.1.m1.1b"><ci id="A4.T3.1.1.1.m1.1.1.cmml" xref="A4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.2.2.2">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.2.2.2.m1.1"><semantics id="A4.T3.2.2.2.m1.1a"><mo id="A4.T3.2.2.2.m1.1.1" stretchy="false" xref="A4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.2.2.2.m1.1b"><ci id="A4.T3.2.2.2.m1.1.1.cmml" xref="A4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.3.3.3">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.3.3.3.m1.1"><semantics id="A4.T3.3.3.3.m1.1a"><mo id="A4.T3.3.3.3.m1.1.1" stretchy="false" xref="A4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.3.3.3.m1.1b"><ci id="A4.T3.3.3.3.m1.1.1.cmml" xref="A4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.4.4.4">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.4.4.4.m1.1"><semantics id="A4.T3.4.4.4.m1.1a"><mo id="A4.T3.4.4.4.m1.1.1" stretchy="false" xref="A4.T3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.4.4.4.m1.1b"><ci id="A4.T3.4.4.4.m1.1.1.cmml" xref="A4.T3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.5.5.5">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.5.5.5.m1.1"><semantics id="A4.T3.5.5.5.m1.1a"><mo id="A4.T3.5.5.5.m1.1.1" stretchy="false" xref="A4.T3.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.5.5.5.m1.1b"><ci id="A4.T3.5.5.5.m1.1.1.cmml" xref="A4.T3.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.6.6.6">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T3.6.6.6.m1.1"><semantics id="A4.T3.6.6.6.m1.1a"><mo id="A4.T3.6.6.6.m1.1.1" stretchy="false" xref="A4.T3.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T3.6.6.6.m1.1b"><ci id="A4.T3.6.6.6.m1.1.1.cmml" xref="A4.T3.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T3.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T3.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.12.12.7">Centralized (64-shot)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.7.7.1"><math alttext="3.340" class="ltx_Math" display="inline" id="A4.T3.7.7.1.m1.1"><semantics id="A4.T3.7.7.1.m1.1a"><mn id="A4.T3.7.7.1.m1.1.1" xref="A4.T3.7.7.1.m1.1.1.cmml">3.340</mn><annotation-xml encoding="MathML-Content" id="A4.T3.7.7.1.m1.1b"><cn id="A4.T3.7.7.1.m1.1.1.cmml" type="float" xref="A4.T3.7.7.1.m1.1.1">3.340</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.7.7.1.m1.1c">3.340</annotation><annotation encoding="application/x-llamapun" id="A4.T3.7.7.1.m1.1d">3.340</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.8.8.2"><math alttext="6.892" class="ltx_Math" display="inline" id="A4.T3.8.8.2.m1.1"><semantics id="A4.T3.8.8.2.m1.1a"><mn id="A4.T3.8.8.2.m1.1.1" xref="A4.T3.8.8.2.m1.1.1.cmml">6.892</mn><annotation-xml encoding="MathML-Content" id="A4.T3.8.8.2.m1.1b"><cn id="A4.T3.8.8.2.m1.1.1.cmml" type="float" xref="A4.T3.8.8.2.m1.1.1">6.892</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.8.8.2.m1.1c">6.892</annotation><annotation encoding="application/x-llamapun" id="A4.T3.8.8.2.m1.1d">6.892</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.9.9.3"><math alttext="4.810" class="ltx_Math" display="inline" id="A4.T3.9.9.3.m1.1"><semantics id="A4.T3.9.9.3.m1.1a"><mn id="A4.T3.9.9.3.m1.1.1" xref="A4.T3.9.9.3.m1.1.1.cmml">4.810</mn><annotation-xml encoding="MathML-Content" id="A4.T3.9.9.3.m1.1b"><cn id="A4.T3.9.9.3.m1.1.1.cmml" type="float" xref="A4.T3.9.9.3.m1.1.1">4.810</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.9.9.3.m1.1c">4.810</annotation><annotation encoding="application/x-llamapun" id="A4.T3.9.9.3.m1.1d">4.810</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.10.10.4"><math alttext="8.678" class="ltx_Math" display="inline" id="A4.T3.10.10.4.m1.1"><semantics id="A4.T3.10.10.4.m1.1a"><mn id="A4.T3.10.10.4.m1.1.1" xref="A4.T3.10.10.4.m1.1.1.cmml">8.678</mn><annotation-xml encoding="MathML-Content" id="A4.T3.10.10.4.m1.1b"><cn id="A4.T3.10.10.4.m1.1.1.cmml" type="float" xref="A4.T3.10.10.4.m1.1.1">8.678</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.10.10.4.m1.1c">8.678</annotation><annotation encoding="application/x-llamapun" id="A4.T3.10.10.4.m1.1d">8.678</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.11.11.5"><math alttext="32.556" class="ltx_Math" display="inline" id="A4.T3.11.11.5.m1.1"><semantics id="A4.T3.11.11.5.m1.1a"><mn id="A4.T3.11.11.5.m1.1.1" xref="A4.T3.11.11.5.m1.1.1.cmml">32.556</mn><annotation-xml encoding="MathML-Content" id="A4.T3.11.11.5.m1.1b"><cn id="A4.T3.11.11.5.m1.1.1.cmml" type="float" xref="A4.T3.11.11.5.m1.1.1">32.556</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.11.11.5.m1.1c">32.556</annotation><annotation encoding="application/x-llamapun" id="A4.T3.11.11.5.m1.1d">32.556</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.12.12.6"><math alttext="41.071" class="ltx_Math" display="inline" id="A4.T3.12.12.6.m1.1"><semantics id="A4.T3.12.12.6.m1.1a"><mn id="A4.T3.12.12.6.m1.1.1" xref="A4.T3.12.12.6.m1.1.1.cmml">41.071</mn><annotation-xml encoding="MathML-Content" id="A4.T3.12.12.6.m1.1b"><cn id="A4.T3.12.12.6.m1.1.1.cmml" type="float" xref="A4.T3.12.12.6.m1.1.1">41.071</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.12.12.6.m1.1c">41.071</annotation><annotation encoding="application/x-llamapun" id="A4.T3.12.12.6.m1.1d">41.071</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.18.18">
<td class="ltx_td ltx_align_left" id="A4.T3.18.18.7">Local (64-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.13.13.1"><math alttext="3.084" class="ltx_Math" display="inline" id="A4.T3.13.13.1.m1.1"><semantics id="A4.T3.13.13.1.m1.1a"><mn id="A4.T3.13.13.1.m1.1.1" xref="A4.T3.13.13.1.m1.1.1.cmml">3.084</mn><annotation-xml encoding="MathML-Content" id="A4.T3.13.13.1.m1.1b"><cn id="A4.T3.13.13.1.m1.1.1.cmml" type="float" xref="A4.T3.13.13.1.m1.1.1">3.084</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.13.13.1.m1.1c">3.084</annotation><annotation encoding="application/x-llamapun" id="A4.T3.13.13.1.m1.1d">3.084</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.14.14.2"><math alttext="6.531" class="ltx_Math" display="inline" id="A4.T3.14.14.2.m1.1"><semantics id="A4.T3.14.14.2.m1.1a"><mn id="A4.T3.14.14.2.m1.1.1" xref="A4.T3.14.14.2.m1.1.1.cmml">6.531</mn><annotation-xml encoding="MathML-Content" id="A4.T3.14.14.2.m1.1b"><cn id="A4.T3.14.14.2.m1.1.1.cmml" type="float" xref="A4.T3.14.14.2.m1.1.1">6.531</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.14.14.2.m1.1c">6.531</annotation><annotation encoding="application/x-llamapun" id="A4.T3.14.14.2.m1.1d">6.531</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.15.15.3"><math alttext="4.584" class="ltx_Math" display="inline" id="A4.T3.15.15.3.m1.1"><semantics id="A4.T3.15.15.3.m1.1a"><mn id="A4.T3.15.15.3.m1.1.1" xref="A4.T3.15.15.3.m1.1.1.cmml">4.584</mn><annotation-xml encoding="MathML-Content" id="A4.T3.15.15.3.m1.1b"><cn id="A4.T3.15.15.3.m1.1.1.cmml" type="float" xref="A4.T3.15.15.3.m1.1.1">4.584</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.15.15.3.m1.1c">4.584</annotation><annotation encoding="application/x-llamapun" id="A4.T3.15.15.3.m1.1d">4.584</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.16.16.4"><math alttext="8.350" class="ltx_Math" display="inline" id="A4.T3.16.16.4.m1.1"><semantics id="A4.T3.16.16.4.m1.1a"><mn id="A4.T3.16.16.4.m1.1.1" xref="A4.T3.16.16.4.m1.1.1.cmml">8.350</mn><annotation-xml encoding="MathML-Content" id="A4.T3.16.16.4.m1.1b"><cn id="A4.T3.16.16.4.m1.1.1.cmml" type="float" xref="A4.T3.16.16.4.m1.1.1">8.350</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.16.16.4.m1.1c">8.350</annotation><annotation encoding="application/x-llamapun" id="A4.T3.16.16.4.m1.1d">8.350</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.17.17.5"><math alttext="28.639" class="ltx_Math" display="inline" id="A4.T3.17.17.5.m1.1"><semantics id="A4.T3.17.17.5.m1.1a"><mn id="A4.T3.17.17.5.m1.1.1" xref="A4.T3.17.17.5.m1.1.1.cmml">28.639</mn><annotation-xml encoding="MathML-Content" id="A4.T3.17.17.5.m1.1b"><cn id="A4.T3.17.17.5.m1.1.1.cmml" type="float" xref="A4.T3.17.17.5.m1.1.1">28.639</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.17.17.5.m1.1c">28.639</annotation><annotation encoding="application/x-llamapun" id="A4.T3.17.17.5.m1.1d">28.639</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.18.18.6"><math alttext="36.178" class="ltx_Math" display="inline" id="A4.T3.18.18.6.m1.1"><semantics id="A4.T3.18.18.6.m1.1a"><mn id="A4.T3.18.18.6.m1.1.1" xref="A4.T3.18.18.6.m1.1.1.cmml">36.178</mn><annotation-xml encoding="MathML-Content" id="A4.T3.18.18.6.m1.1b"><cn id="A4.T3.18.18.6.m1.1.1.cmml" type="float" xref="A4.T3.18.18.6.m1.1.1">36.178</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.18.18.6.m1.1c">36.178</annotation><annotation encoding="application/x-llamapun" id="A4.T3.18.18.6.m1.1d">36.178</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.24.24">
<td class="ltx_td ltx_align_left" id="A4.T3.24.24.7">Collaborative (64-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.19.19.1"><math alttext="3.627" class="ltx_Math" display="inline" id="A4.T3.19.19.1.m1.1"><semantics id="A4.T3.19.19.1.m1.1a"><mn id="A4.T3.19.19.1.m1.1.1" xref="A4.T3.19.19.1.m1.1.1.cmml">3.627</mn><annotation-xml encoding="MathML-Content" id="A4.T3.19.19.1.m1.1b"><cn id="A4.T3.19.19.1.m1.1.1.cmml" type="float" xref="A4.T3.19.19.1.m1.1.1">3.627</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.19.19.1.m1.1c">3.627</annotation><annotation encoding="application/x-llamapun" id="A4.T3.19.19.1.m1.1d">3.627</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.20.20.2"><math alttext="7.199" class="ltx_Math" display="inline" id="A4.T3.20.20.2.m1.1"><semantics id="A4.T3.20.20.2.m1.1a"><mn id="A4.T3.20.20.2.m1.1.1" xref="A4.T3.20.20.2.m1.1.1.cmml">7.199</mn><annotation-xml encoding="MathML-Content" id="A4.T3.20.20.2.m1.1b"><cn id="A4.T3.20.20.2.m1.1.1.cmml" type="float" xref="A4.T3.20.20.2.m1.1.1">7.199</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.20.20.2.m1.1c">7.199</annotation><annotation encoding="application/x-llamapun" id="A4.T3.20.20.2.m1.1d">7.199</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.21.21.3"><math alttext="4.944" class="ltx_Math" display="inline" id="A4.T3.21.21.3.m1.1"><semantics id="A4.T3.21.21.3.m1.1a"><mn id="A4.T3.21.21.3.m1.1.1" xref="A4.T3.21.21.3.m1.1.1.cmml">4.944</mn><annotation-xml encoding="MathML-Content" id="A4.T3.21.21.3.m1.1b"><cn id="A4.T3.21.21.3.m1.1.1.cmml" type="float" xref="A4.T3.21.21.3.m1.1.1">4.944</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.21.21.3.m1.1c">4.944</annotation><annotation encoding="application/x-llamapun" id="A4.T3.21.21.3.m1.1d">4.944</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.22.22.4"><math alttext="8.770" class="ltx_Math" display="inline" id="A4.T3.22.22.4.m1.1"><semantics id="A4.T3.22.22.4.m1.1a"><mn id="A4.T3.22.22.4.m1.1.1" xref="A4.T3.22.22.4.m1.1.1.cmml">8.770</mn><annotation-xml encoding="MathML-Content" id="A4.T3.22.22.4.m1.1b"><cn id="A4.T3.22.22.4.m1.1.1.cmml" type="float" xref="A4.T3.22.22.4.m1.1.1">8.770</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.22.22.4.m1.1c">8.770</annotation><annotation encoding="application/x-llamapun" id="A4.T3.22.22.4.m1.1d">8.770</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.23.23.5"><math alttext="31.639" class="ltx_Math" display="inline" id="A4.T3.23.23.5.m1.1"><semantics id="A4.T3.23.23.5.m1.1a"><mn id="A4.T3.23.23.5.m1.1.1" xref="A4.T3.23.23.5.m1.1.1.cmml">31.639</mn><annotation-xml encoding="MathML-Content" id="A4.T3.23.23.5.m1.1b"><cn id="A4.T3.23.23.5.m1.1.1.cmml" type="float" xref="A4.T3.23.23.5.m1.1.1">31.639</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.23.23.5.m1.1c">31.639</annotation><annotation encoding="application/x-llamapun" id="A4.T3.23.23.5.m1.1d">31.639</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.24.24.6"><math alttext="39.900" class="ltx_Math" display="inline" id="A4.T3.24.24.6.m1.1"><semantics id="A4.T3.24.24.6.m1.1a"><mn id="A4.T3.24.24.6.m1.1.1" xref="A4.T3.24.24.6.m1.1.1.cmml">39.900</mn><annotation-xml encoding="MathML-Content" id="A4.T3.24.24.6.m1.1b"><cn id="A4.T3.24.24.6.m1.1.1.cmml" type="float" xref="A4.T3.24.24.6.m1.1.1">39.900</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.24.24.6.m1.1c">39.900</annotation><annotation encoding="application/x-llamapun" id="A4.T3.24.24.6.m1.1d">39.900</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.30.30">
<td class="ltx_td ltx_align_left" id="A4.T3.30.30.7">Centralized (32-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.25.25.1"><math alttext="2.880" class="ltx_Math" display="inline" id="A4.T3.25.25.1.m1.1"><semantics id="A4.T3.25.25.1.m1.1a"><mn id="A4.T3.25.25.1.m1.1.1" xref="A4.T3.25.25.1.m1.1.1.cmml">2.880</mn><annotation-xml encoding="MathML-Content" id="A4.T3.25.25.1.m1.1b"><cn id="A4.T3.25.25.1.m1.1.1.cmml" type="float" xref="A4.T3.25.25.1.m1.1.1">2.880</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.25.25.1.m1.1c">2.880</annotation><annotation encoding="application/x-llamapun" id="A4.T3.25.25.1.m1.1d">2.880</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.26.26.2"><math alttext="6.292" class="ltx_Math" display="inline" id="A4.T3.26.26.2.m1.1"><semantics id="A4.T3.26.26.2.m1.1a"><mn id="A4.T3.26.26.2.m1.1.1" xref="A4.T3.26.26.2.m1.1.1.cmml">6.292</mn><annotation-xml encoding="MathML-Content" id="A4.T3.26.26.2.m1.1b"><cn id="A4.T3.26.26.2.m1.1.1.cmml" type="float" xref="A4.T3.26.26.2.m1.1.1">6.292</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.26.26.2.m1.1c">6.292</annotation><annotation encoding="application/x-llamapun" id="A4.T3.26.26.2.m1.1d">6.292</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.27.27.3"><math alttext="4.011" class="ltx_Math" display="inline" id="A4.T3.27.27.3.m1.1"><semantics id="A4.T3.27.27.3.m1.1a"><mn id="A4.T3.27.27.3.m1.1.1" xref="A4.T3.27.27.3.m1.1.1.cmml">4.011</mn><annotation-xml encoding="MathML-Content" id="A4.T3.27.27.3.m1.1b"><cn id="A4.T3.27.27.3.m1.1.1.cmml" type="float" xref="A4.T3.27.27.3.m1.1.1">4.011</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.27.27.3.m1.1c">4.011</annotation><annotation encoding="application/x-llamapun" id="A4.T3.27.27.3.m1.1d">4.011</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.28.28.4"><math alttext="7.933" class="ltx_Math" display="inline" id="A4.T3.28.28.4.m1.1"><semantics id="A4.T3.28.28.4.m1.1a"><mn id="A4.T3.28.28.4.m1.1.1" xref="A4.T3.28.28.4.m1.1.1.cmml">7.933</mn><annotation-xml encoding="MathML-Content" id="A4.T3.28.28.4.m1.1b"><cn id="A4.T3.28.28.4.m1.1.1.cmml" type="float" xref="A4.T3.28.28.4.m1.1.1">7.933</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.28.28.4.m1.1c">7.933</annotation><annotation encoding="application/x-llamapun" id="A4.T3.28.28.4.m1.1d">7.933</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.29.29.5"><math alttext="31.324" class="ltx_Math" display="inline" id="A4.T3.29.29.5.m1.1"><semantics id="A4.T3.29.29.5.m1.1a"><mn id="A4.T3.29.29.5.m1.1.1" xref="A4.T3.29.29.5.m1.1.1.cmml">31.324</mn><annotation-xml encoding="MathML-Content" id="A4.T3.29.29.5.m1.1b"><cn id="A4.T3.29.29.5.m1.1.1.cmml" type="float" xref="A4.T3.29.29.5.m1.1.1">31.324</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.29.29.5.m1.1c">31.324</annotation><annotation encoding="application/x-llamapun" id="A4.T3.29.29.5.m1.1d">31.324</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.30.30.6"><math alttext="39.250" class="ltx_Math" display="inline" id="A4.T3.30.30.6.m1.1"><semantics id="A4.T3.30.30.6.m1.1a"><mn id="A4.T3.30.30.6.m1.1.1" xref="A4.T3.30.30.6.m1.1.1.cmml">39.250</mn><annotation-xml encoding="MathML-Content" id="A4.T3.30.30.6.m1.1b"><cn id="A4.T3.30.30.6.m1.1.1.cmml" type="float" xref="A4.T3.30.30.6.m1.1.1">39.250</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.30.30.6.m1.1c">39.250</annotation><annotation encoding="application/x-llamapun" id="A4.T3.30.30.6.m1.1d">39.250</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.36.36">
<td class="ltx_td ltx_align_left" id="A4.T3.36.36.7">Local (32-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.31.31.1"><math alttext="2.572" class="ltx_Math" display="inline" id="A4.T3.31.31.1.m1.1"><semantics id="A4.T3.31.31.1.m1.1a"><mn id="A4.T3.31.31.1.m1.1.1" xref="A4.T3.31.31.1.m1.1.1.cmml">2.572</mn><annotation-xml encoding="MathML-Content" id="A4.T3.31.31.1.m1.1b"><cn id="A4.T3.31.31.1.m1.1.1.cmml" type="float" xref="A4.T3.31.31.1.m1.1.1">2.572</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.31.31.1.m1.1c">2.572</annotation><annotation encoding="application/x-llamapun" id="A4.T3.31.31.1.m1.1d">2.572</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.32.32.2"><math alttext="5.938" class="ltx_Math" display="inline" id="A4.T3.32.32.2.m1.1"><semantics id="A4.T3.32.32.2.m1.1a"><mn id="A4.T3.32.32.2.m1.1.1" xref="A4.T3.32.32.2.m1.1.1.cmml">5.938</mn><annotation-xml encoding="MathML-Content" id="A4.T3.32.32.2.m1.1b"><cn id="A4.T3.32.32.2.m1.1.1.cmml" type="float" xref="A4.T3.32.32.2.m1.1.1">5.938</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.32.32.2.m1.1c">5.938</annotation><annotation encoding="application/x-llamapun" id="A4.T3.32.32.2.m1.1d">5.938</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.33.33.3"><math alttext="4.138" class="ltx_Math" display="inline" id="A4.T3.33.33.3.m1.1"><semantics id="A4.T3.33.33.3.m1.1a"><mn id="A4.T3.33.33.3.m1.1.1" xref="A4.T3.33.33.3.m1.1.1.cmml">4.138</mn><annotation-xml encoding="MathML-Content" id="A4.T3.33.33.3.m1.1b"><cn id="A4.T3.33.33.3.m1.1.1.cmml" type="float" xref="A4.T3.33.33.3.m1.1.1">4.138</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.33.33.3.m1.1c">4.138</annotation><annotation encoding="application/x-llamapun" id="A4.T3.33.33.3.m1.1d">4.138</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.34.34.4"><math alttext="8.175" class="ltx_Math" display="inline" id="A4.T3.34.34.4.m1.1"><semantics id="A4.T3.34.34.4.m1.1a"><mn id="A4.T3.34.34.4.m1.1.1" xref="A4.T3.34.34.4.m1.1.1.cmml">8.175</mn><annotation-xml encoding="MathML-Content" id="A4.T3.34.34.4.m1.1b"><cn id="A4.T3.34.34.4.m1.1.1.cmml" type="float" xref="A4.T3.34.34.4.m1.1.1">8.175</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.34.34.4.m1.1c">8.175</annotation><annotation encoding="application/x-llamapun" id="A4.T3.34.34.4.m1.1d">8.175</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.35.35.5"><math alttext="25.722" class="ltx_Math" display="inline" id="A4.T3.35.35.5.m1.1"><semantics id="A4.T3.35.35.5.m1.1a"><mn id="A4.T3.35.35.5.m1.1.1" xref="A4.T3.35.35.5.m1.1.1.cmml">25.722</mn><annotation-xml encoding="MathML-Content" id="A4.T3.35.35.5.m1.1b"><cn id="A4.T3.35.35.5.m1.1.1.cmml" type="float" xref="A4.T3.35.35.5.m1.1.1">25.722</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.35.35.5.m1.1c">25.722</annotation><annotation encoding="application/x-llamapun" id="A4.T3.35.35.5.m1.1d">25.722</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.36.36.6"><math alttext="33.630" class="ltx_Math" display="inline" id="A4.T3.36.36.6.m1.1"><semantics id="A4.T3.36.36.6.m1.1a"><mn id="A4.T3.36.36.6.m1.1.1" xref="A4.T3.36.36.6.m1.1.1.cmml">33.630</mn><annotation-xml encoding="MathML-Content" id="A4.T3.36.36.6.m1.1b"><cn id="A4.T3.36.36.6.m1.1.1.cmml" type="float" xref="A4.T3.36.36.6.m1.1.1">33.630</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.36.36.6.m1.1c">33.630</annotation><annotation encoding="application/x-llamapun" id="A4.T3.36.36.6.m1.1d">33.630</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.42.42">
<td class="ltx_td ltx_align_left" id="A4.T3.42.42.7">Collaborative (32-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.37.37.1"><math alttext="2.910" class="ltx_Math" display="inline" id="A4.T3.37.37.1.m1.1"><semantics id="A4.T3.37.37.1.m1.1a"><mn id="A4.T3.37.37.1.m1.1.1" xref="A4.T3.37.37.1.m1.1.1.cmml">2.910</mn><annotation-xml encoding="MathML-Content" id="A4.T3.37.37.1.m1.1b"><cn id="A4.T3.37.37.1.m1.1.1.cmml" type="float" xref="A4.T3.37.37.1.m1.1.1">2.910</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.37.37.1.m1.1c">2.910</annotation><annotation encoding="application/x-llamapun" id="A4.T3.37.37.1.m1.1d">2.910</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.38.38.2"><math alttext="6.410" class="ltx_Math" display="inline" id="A4.T3.38.38.2.m1.1"><semantics id="A4.T3.38.38.2.m1.1a"><mn id="A4.T3.38.38.2.m1.1.1" xref="A4.T3.38.38.2.m1.1.1.cmml">6.410</mn><annotation-xml encoding="MathML-Content" id="A4.T3.38.38.2.m1.1b"><cn id="A4.T3.38.38.2.m1.1.1.cmml" type="float" xref="A4.T3.38.38.2.m1.1.1">6.410</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.38.38.2.m1.1c">6.410</annotation><annotation encoding="application/x-llamapun" id="A4.T3.38.38.2.m1.1d">6.410</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.39.39.3"><math alttext="4.038" class="ltx_Math" display="inline" id="A4.T3.39.39.3.m1.1"><semantics id="A4.T3.39.39.3.m1.1a"><mn id="A4.T3.39.39.3.m1.1.1" xref="A4.T3.39.39.3.m1.1.1.cmml">4.038</mn><annotation-xml encoding="MathML-Content" id="A4.T3.39.39.3.m1.1b"><cn id="A4.T3.39.39.3.m1.1.1.cmml" type="float" xref="A4.T3.39.39.3.m1.1.1">4.038</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.39.39.3.m1.1c">4.038</annotation><annotation encoding="application/x-llamapun" id="A4.T3.39.39.3.m1.1d">4.038</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.40.40.4"><math alttext="8.010" class="ltx_Math" display="inline" id="A4.T3.40.40.4.m1.1"><semantics id="A4.T3.40.40.4.m1.1a"><mn id="A4.T3.40.40.4.m1.1.1" xref="A4.T3.40.40.4.m1.1.1.cmml">8.010</mn><annotation-xml encoding="MathML-Content" id="A4.T3.40.40.4.m1.1b"><cn id="A4.T3.40.40.4.m1.1.1.cmml" type="float" xref="A4.T3.40.40.4.m1.1.1">8.010</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.40.40.4.m1.1c">8.010</annotation><annotation encoding="application/x-llamapun" id="A4.T3.40.40.4.m1.1d">8.010</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.41.41.5"><math alttext="31.472" class="ltx_Math" display="inline" id="A4.T3.41.41.5.m1.1"><semantics id="A4.T3.41.41.5.m1.1a"><mn id="A4.T3.41.41.5.m1.1.1" xref="A4.T3.41.41.5.m1.1.1.cmml">31.472</mn><annotation-xml encoding="MathML-Content" id="A4.T3.41.41.5.m1.1b"><cn id="A4.T3.41.41.5.m1.1.1.cmml" type="float" xref="A4.T3.41.41.5.m1.1.1">31.472</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.41.41.5.m1.1c">31.472</annotation><annotation encoding="application/x-llamapun" id="A4.T3.41.41.5.m1.1d">31.472</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.42.42.6"><math alttext="39.439" class="ltx_Math" display="inline" id="A4.T3.42.42.6.m1.1"><semantics id="A4.T3.42.42.6.m1.1a"><mn id="A4.T3.42.42.6.m1.1.1" xref="A4.T3.42.42.6.m1.1.1.cmml">39.439</mn><annotation-xml encoding="MathML-Content" id="A4.T3.42.42.6.m1.1b"><cn id="A4.T3.42.42.6.m1.1.1.cmml" type="float" xref="A4.T3.42.42.6.m1.1.1">39.439</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.42.42.6.m1.1c">39.439</annotation><annotation encoding="application/x-llamapun" id="A4.T3.42.42.6.m1.1d">39.439</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.48.48">
<td class="ltx_td ltx_align_left" id="A4.T3.48.48.7">Centralized (16-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.43.43.1"><math alttext="2.810" class="ltx_Math" display="inline" id="A4.T3.43.43.1.m1.1"><semantics id="A4.T3.43.43.1.m1.1a"><mn id="A4.T3.43.43.1.m1.1.1" xref="A4.T3.43.43.1.m1.1.1.cmml">2.810</mn><annotation-xml encoding="MathML-Content" id="A4.T3.43.43.1.m1.1b"><cn id="A4.T3.43.43.1.m1.1.1.cmml" type="float" xref="A4.T3.43.43.1.m1.1.1">2.810</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.43.43.1.m1.1c">2.810</annotation><annotation encoding="application/x-llamapun" id="A4.T3.43.43.1.m1.1d">2.810</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.44.44.2"><math alttext="5.810" class="ltx_Math" display="inline" id="A4.T3.44.44.2.m1.1"><semantics id="A4.T3.44.44.2.m1.1a"><mn id="A4.T3.44.44.2.m1.1.1" xref="A4.T3.44.44.2.m1.1.1.cmml">5.810</mn><annotation-xml encoding="MathML-Content" id="A4.T3.44.44.2.m1.1b"><cn id="A4.T3.44.44.2.m1.1.1.cmml" type="float" xref="A4.T3.44.44.2.m1.1.1">5.810</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.44.44.2.m1.1c">5.810</annotation><annotation encoding="application/x-llamapun" id="A4.T3.44.44.2.m1.1d">5.810</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.45.45.3"><math alttext="4.033" class="ltx_Math" display="inline" id="A4.T3.45.45.3.m1.1"><semantics id="A4.T3.45.45.3.m1.1a"><mn id="A4.T3.45.45.3.m1.1.1" xref="A4.T3.45.45.3.m1.1.1.cmml">4.033</mn><annotation-xml encoding="MathML-Content" id="A4.T3.45.45.3.m1.1b"><cn id="A4.T3.45.45.3.m1.1.1.cmml" type="float" xref="A4.T3.45.45.3.m1.1.1">4.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.45.45.3.m1.1c">4.033</annotation><annotation encoding="application/x-llamapun" id="A4.T3.45.45.3.m1.1d">4.033</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.46.46.4"><math alttext="7.650" class="ltx_Math" display="inline" id="A4.T3.46.46.4.m1.1"><semantics id="A4.T3.46.46.4.m1.1a"><mn id="A4.T3.46.46.4.m1.1.1" xref="A4.T3.46.46.4.m1.1.1.cmml">7.650</mn><annotation-xml encoding="MathML-Content" id="A4.T3.46.46.4.m1.1b"><cn id="A4.T3.46.46.4.m1.1.1.cmml" type="float" xref="A4.T3.46.46.4.m1.1.1">7.650</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.46.46.4.m1.1c">7.650</annotation><annotation encoding="application/x-llamapun" id="A4.T3.46.46.4.m1.1d">7.650</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.47.47.5"><math alttext="30.320" class="ltx_Math" display="inline" id="A4.T3.47.47.5.m1.1"><semantics id="A4.T3.47.47.5.m1.1a"><mn id="A4.T3.47.47.5.m1.1.1" xref="A4.T3.47.47.5.m1.1.1.cmml">30.320</mn><annotation-xml encoding="MathML-Content" id="A4.T3.47.47.5.m1.1b"><cn id="A4.T3.47.47.5.m1.1.1.cmml" type="float" xref="A4.T3.47.47.5.m1.1.1">30.320</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.47.47.5.m1.1c">30.320</annotation><annotation encoding="application/x-llamapun" id="A4.T3.47.47.5.m1.1d">30.320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.48.48.6"><math alttext="38.164" class="ltx_Math" display="inline" id="A4.T3.48.48.6.m1.1"><semantics id="A4.T3.48.48.6.m1.1a"><mn id="A4.T3.48.48.6.m1.1.1" xref="A4.T3.48.48.6.m1.1.1.cmml">38.164</mn><annotation-xml encoding="MathML-Content" id="A4.T3.48.48.6.m1.1b"><cn id="A4.T3.48.48.6.m1.1.1.cmml" type="float" xref="A4.T3.48.48.6.m1.1.1">38.164</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.48.48.6.m1.1c">38.164</annotation><annotation encoding="application/x-llamapun" id="A4.T3.48.48.6.m1.1d">38.164</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.54.54">
<td class="ltx_td ltx_align_left" id="A4.T3.54.54.7">Local (16-shot)</td>
<td class="ltx_td ltx_align_left" id="A4.T3.49.49.1"><math alttext="2.610" class="ltx_Math" display="inline" id="A4.T3.49.49.1.m1.1"><semantics id="A4.T3.49.49.1.m1.1a"><mn id="A4.T3.49.49.1.m1.1.1" xref="A4.T3.49.49.1.m1.1.1.cmml">2.610</mn><annotation-xml encoding="MathML-Content" id="A4.T3.49.49.1.m1.1b"><cn id="A4.T3.49.49.1.m1.1.1.cmml" type="float" xref="A4.T3.49.49.1.m1.1.1">2.610</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.49.49.1.m1.1c">2.610</annotation><annotation encoding="application/x-llamapun" id="A4.T3.49.49.1.m1.1d">2.610</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.50.50.2"><math alttext="5.456" class="ltx_Math" display="inline" id="A4.T3.50.50.2.m1.1"><semantics id="A4.T3.50.50.2.m1.1a"><mn id="A4.T3.50.50.2.m1.1.1" xref="A4.T3.50.50.2.m1.1.1.cmml">5.456</mn><annotation-xml encoding="MathML-Content" id="A4.T3.50.50.2.m1.1b"><cn id="A4.T3.50.50.2.m1.1.1.cmml" type="float" xref="A4.T3.50.50.2.m1.1.1">5.456</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.50.50.2.m1.1c">5.456</annotation><annotation encoding="application/x-llamapun" id="A4.T3.50.50.2.m1.1d">5.456</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.51.51.3"><math alttext="3.916" class="ltx_Math" display="inline" id="A4.T3.51.51.3.m1.1"><semantics id="A4.T3.51.51.3.m1.1a"><mn id="A4.T3.51.51.3.m1.1.1" xref="A4.T3.51.51.3.m1.1.1.cmml">3.916</mn><annotation-xml encoding="MathML-Content" id="A4.T3.51.51.3.m1.1b"><cn id="A4.T3.51.51.3.m1.1.1.cmml" type="float" xref="A4.T3.51.51.3.m1.1.1">3.916</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.51.51.3.m1.1c">3.916</annotation><annotation encoding="application/x-llamapun" id="A4.T3.51.51.3.m1.1d">3.916</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.52.52.4"><math alttext="7.388" class="ltx_Math" display="inline" id="A4.T3.52.52.4.m1.1"><semantics id="A4.T3.52.52.4.m1.1a"><mn id="A4.T3.52.52.4.m1.1.1" xref="A4.T3.52.52.4.m1.1.1.cmml">7.388</mn><annotation-xml encoding="MathML-Content" id="A4.T3.52.52.4.m1.1b"><cn id="A4.T3.52.52.4.m1.1.1.cmml" type="float" xref="A4.T3.52.52.4.m1.1.1">7.388</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.52.52.4.m1.1c">7.388</annotation><annotation encoding="application/x-llamapun" id="A4.T3.52.52.4.m1.1d">7.388</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.53.53.5"><math alttext="22.722" class="ltx_Math" display="inline" id="A4.T3.53.53.5.m1.1"><semantics id="A4.T3.53.53.5.m1.1a"><mn id="A4.T3.53.53.5.m1.1.1" xref="A4.T3.53.53.5.m1.1.1.cmml">22.722</mn><annotation-xml encoding="MathML-Content" id="A4.T3.53.53.5.m1.1b"><cn id="A4.T3.53.53.5.m1.1.1.cmml" type="float" xref="A4.T3.53.53.5.m1.1.1">22.722</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.53.53.5.m1.1c">22.722</annotation><annotation encoding="application/x-llamapun" id="A4.T3.53.53.5.m1.1d">22.722</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T3.54.54.6"><math alttext="30.256" class="ltx_Math" display="inline" id="A4.T3.54.54.6.m1.1"><semantics id="A4.T3.54.54.6.m1.1a"><mn id="A4.T3.54.54.6.m1.1.1" xref="A4.T3.54.54.6.m1.1.1.cmml">30.256</mn><annotation-xml encoding="MathML-Content" id="A4.T3.54.54.6.m1.1b"><cn id="A4.T3.54.54.6.m1.1.1.cmml" type="float" xref="A4.T3.54.54.6.m1.1.1">30.256</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.54.54.6.m1.1c">30.256</annotation><annotation encoding="application/x-llamapun" id="A4.T3.54.54.6.m1.1d">30.256</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T3.60.60">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.60.60.7">Collaborative (16-shot)</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.55.55.1"><math alttext="2.890" class="ltx_Math" display="inline" id="A4.T3.55.55.1.m1.1"><semantics id="A4.T3.55.55.1.m1.1a"><mn id="A4.T3.55.55.1.m1.1.1" xref="A4.T3.55.55.1.m1.1.1.cmml">2.890</mn><annotation-xml encoding="MathML-Content" id="A4.T3.55.55.1.m1.1b"><cn id="A4.T3.55.55.1.m1.1.1.cmml" type="float" xref="A4.T3.55.55.1.m1.1.1">2.890</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.55.55.1.m1.1c">2.890</annotation><annotation encoding="application/x-llamapun" id="A4.T3.55.55.1.m1.1d">2.890</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.56.56.2"><math alttext="6.099" class="ltx_Math" display="inline" id="A4.T3.56.56.2.m1.1"><semantics id="A4.T3.56.56.2.m1.1a"><mn id="A4.T3.56.56.2.m1.1.1" xref="A4.T3.56.56.2.m1.1.1.cmml">6.099</mn><annotation-xml encoding="MathML-Content" id="A4.T3.56.56.2.m1.1b"><cn id="A4.T3.56.56.2.m1.1.1.cmml" type="float" xref="A4.T3.56.56.2.m1.1.1">6.099</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.56.56.2.m1.1c">6.099</annotation><annotation encoding="application/x-llamapun" id="A4.T3.56.56.2.m1.1d">6.099</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.57.57.3"><math alttext="4.021" class="ltx_Math" display="inline" id="A4.T3.57.57.3.m1.1"><semantics id="A4.T3.57.57.3.m1.1a"><mn id="A4.T3.57.57.3.m1.1.1" xref="A4.T3.57.57.3.m1.1.1.cmml">4.021</mn><annotation-xml encoding="MathML-Content" id="A4.T3.57.57.3.m1.1b"><cn id="A4.T3.57.57.3.m1.1.1.cmml" type="float" xref="A4.T3.57.57.3.m1.1.1">4.021</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.57.57.3.m1.1c">4.021</annotation><annotation encoding="application/x-llamapun" id="A4.T3.57.57.3.m1.1d">4.021</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.58.58.4"><math alttext="7.820" class="ltx_Math" display="inline" id="A4.T3.58.58.4.m1.1"><semantics id="A4.T3.58.58.4.m1.1a"><mn id="A4.T3.58.58.4.m1.1.1" xref="A4.T3.58.58.4.m1.1.1.cmml">7.820</mn><annotation-xml encoding="MathML-Content" id="A4.T3.58.58.4.m1.1b"><cn id="A4.T3.58.58.4.m1.1.1.cmml" type="float" xref="A4.T3.58.58.4.m1.1.1">7.820</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.58.58.4.m1.1c">7.820</annotation><annotation encoding="application/x-llamapun" id="A4.T3.58.58.4.m1.1d">7.820</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.59.59.5"><math alttext="30.416" class="ltx_Math" display="inline" id="A4.T3.59.59.5.m1.1"><semantics id="A4.T3.59.59.5.m1.1a"><mn id="A4.T3.59.59.5.m1.1.1" xref="A4.T3.59.59.5.m1.1.1.cmml">30.416</mn><annotation-xml encoding="MathML-Content" id="A4.T3.59.59.5.m1.1b"><cn id="A4.T3.59.59.5.m1.1.1.cmml" type="float" xref="A4.T3.59.59.5.m1.1.1">30.416</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.59.59.5.m1.1c">30.416</annotation><annotation encoding="application/x-llamapun" id="A4.T3.59.59.5.m1.1d">30.416</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.60.60.6"><math alttext="38.218" class="ltx_Math" display="inline" id="A4.T3.60.60.6.m1.1"><semantics id="A4.T3.60.60.6.m1.1a"><mn id="A4.T3.60.60.6.m1.1.1" xref="A4.T3.60.60.6.m1.1.1.cmml">38.218</mn><annotation-xml encoding="MathML-Content" id="A4.T3.60.60.6.m1.1b"><cn id="A4.T3.60.60.6.m1.1.1.cmml" type="float" xref="A4.T3.60.60.6.m1.1.1">38.218</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T3.60.60.6.m1.1c">38.218</annotation><annotation encoding="application/x-llamapun" id="A4.T3.60.60.6.m1.1d">38.218</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the few-shot learning performance comparison of different models on the CRAB benchmark.  The models compared include T5-base, Flan-T5-base (both parametric models), RAG with local training, and CoRAG (collaborative RAG). The performance is evaluated using exact match (EM) and F1 scores across three different shot levels (16, 32, and 64 training examples per client).  The results demonstrate that CoRAG consistently outperforms both parametric models, especially as the number of training examples decreases.  The table also highlights that collaborative training provides significantly larger performance improvements for RAG compared to the parametric models.
> <details>
> <summary>read the caption</summary>
> Table 3: Few-shot test performance of RAG and parametric models (T5-base and Flan-T5-base) on the CRAB benchmark across different training strategies and shot levels. CoRAG (RAG Collaborative) consistently outperforms parametric models. Collaborative training yields more substantial improvements for RAG than for parametric models, with the performance gap widening as the number of training samples decreases.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T4.24">
<tr class="ltx_tr" id="A4.T4.24.25">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T4.24.25.1">Model name</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T4.24.25.2">Centralized</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T4.24.25.3">Local</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T4.24.25.4">Collaborative</td>
</tr>
<tr class="ltx_tr" id="A4.T4.6.6">
<td class="ltx_td" id="A4.T4.6.6.7"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.1.1.1">Exact Match <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.1.1.1.m1.1"><semantics id="A4.T4.1.1.1.m1.1a"><mo id="A4.T4.1.1.1.m1.1.1" stretchy="false" xref="A4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.1.1.1.m1.1b"><ci id="A4.T4.1.1.1.m1.1.1.cmml" xref="A4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.2.2.2">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.2.2.2.m1.1"><semantics id="A4.T4.2.2.2.m1.1a"><mo id="A4.T4.2.2.2.m1.1.1" stretchy="false" xref="A4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.2.2.2.m1.1b"><ci id="A4.T4.2.2.2.m1.1.1.cmml" xref="A4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.3.3.3">Exact Match <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.3.3.3.m1.1"><semantics id="A4.T4.3.3.3.m1.1a"><mo id="A4.T4.3.3.3.m1.1.1" stretchy="false" xref="A4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.3.3.3.m1.1b"><ci id="A4.T4.3.3.3.m1.1.1.cmml" xref="A4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.4.4.4">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.4.4.4.m1.1"><semantics id="A4.T4.4.4.4.m1.1a"><mo id="A4.T4.4.4.4.m1.1.1" stretchy="false" xref="A4.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.4.4.4.m1.1b"><ci id="A4.T4.4.4.4.m1.1.1.cmml" xref="A4.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.5.5.5">Exact Match <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.5.5.5.m1.1"><semantics id="A4.T4.5.5.5.m1.1a"><mo id="A4.T4.5.5.5.m1.1.1" stretchy="false" xref="A4.T4.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.5.5.5.m1.1b"><ci id="A4.T4.5.5.5.m1.1.1.cmml" xref="A4.T4.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.6.6.6">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T4.6.6.6.m1.1"><semantics id="A4.T4.6.6.6.m1.1a"><mo id="A4.T4.6.6.6.m1.1.1" stretchy="false" xref="A4.T4.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T4.6.6.6.m1.1b"><ci id="A4.T4.6.6.6.m1.1.1.cmml" xref="A4.T4.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T4.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T4.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.12.12.7">T5-base</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.7.7.1"><math alttext="1.862" class="ltx_Math" display="inline" id="A4.T4.7.7.1.m1.1"><semantics id="A4.T4.7.7.1.m1.1a"><mn id="A4.T4.7.7.1.m1.1.1" xref="A4.T4.7.7.1.m1.1.1.cmml">1.862</mn><annotation-xml encoding="MathML-Content" id="A4.T4.7.7.1.m1.1b"><cn id="A4.T4.7.7.1.m1.1.1.cmml" type="float" xref="A4.T4.7.7.1.m1.1.1">1.862</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.7.7.1.m1.1c">1.862</annotation><annotation encoding="application/x-llamapun" id="A4.T4.7.7.1.m1.1d">1.862</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.8.8.2"><math alttext="4.986" class="ltx_Math" display="inline" id="A4.T4.8.8.2.m1.1"><semantics id="A4.T4.8.8.2.m1.1a"><mn id="A4.T4.8.8.2.m1.1.1" xref="A4.T4.8.8.2.m1.1.1.cmml">4.986</mn><annotation-xml encoding="MathML-Content" id="A4.T4.8.8.2.m1.1b"><cn id="A4.T4.8.8.2.m1.1.1.cmml" type="float" xref="A4.T4.8.8.2.m1.1.1">4.986</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.8.8.2.m1.1c">4.986</annotation><annotation encoding="application/x-llamapun" id="A4.T4.8.8.2.m1.1d">4.986</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.9.9.3"><math alttext="1.302" class="ltx_Math" display="inline" id="A4.T4.9.9.3.m1.1"><semantics id="A4.T4.9.9.3.m1.1a"><mn id="A4.T4.9.9.3.m1.1.1" xref="A4.T4.9.9.3.m1.1.1.cmml">1.302</mn><annotation-xml encoding="MathML-Content" id="A4.T4.9.9.3.m1.1b"><cn id="A4.T4.9.9.3.m1.1.1.cmml" type="float" xref="A4.T4.9.9.3.m1.1.1">1.302</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.9.9.3.m1.1c">1.302</annotation><annotation encoding="application/x-llamapun" id="A4.T4.9.9.3.m1.1d">1.302</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.10.10.4"><math alttext="3.814" class="ltx_Math" display="inline" id="A4.T4.10.10.4.m1.1"><semantics id="A4.T4.10.10.4.m1.1a"><mn id="A4.T4.10.10.4.m1.1.1" xref="A4.T4.10.10.4.m1.1.1.cmml">3.814</mn><annotation-xml encoding="MathML-Content" id="A4.T4.10.10.4.m1.1b"><cn id="A4.T4.10.10.4.m1.1.1.cmml" type="float" xref="A4.T4.10.10.4.m1.1.1">3.814</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.10.10.4.m1.1c">3.814</annotation><annotation encoding="application/x-llamapun" id="A4.T4.10.10.4.m1.1d">3.814</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.11.11.5"><math alttext="2.057" class="ltx_Math" display="inline" id="A4.T4.11.11.5.m1.1"><semantics id="A4.T4.11.11.5.m1.1a"><mn id="A4.T4.11.11.5.m1.1.1" xref="A4.T4.11.11.5.m1.1.1.cmml">2.057</mn><annotation-xml encoding="MathML-Content" id="A4.T4.11.11.5.m1.1b"><cn id="A4.T4.11.11.5.m1.1.1.cmml" type="float" xref="A4.T4.11.11.5.m1.1.1">2.057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.11.11.5.m1.1c">2.057</annotation><annotation encoding="application/x-llamapun" id="A4.T4.11.11.5.m1.1d">2.057</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.12.12.6"><math alttext="5.343" class="ltx_Math" display="inline" id="A4.T4.12.12.6.m1.1"><semantics id="A4.T4.12.12.6.m1.1a"><mn id="A4.T4.12.12.6.m1.1.1" xref="A4.T4.12.12.6.m1.1.1.cmml">5.343</mn><annotation-xml encoding="MathML-Content" id="A4.T4.12.12.6.m1.1b"><cn id="A4.T4.12.12.6.m1.1.1.cmml" type="float" xref="A4.T4.12.12.6.m1.1.1">5.343</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.12.12.6.m1.1c">5.343</annotation><annotation encoding="application/x-llamapun" id="A4.T4.12.12.6.m1.1d">5.343</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T4.18.18">
<td class="ltx_td ltx_align_left" id="A4.T4.18.18.7">Flan-T5-base</td>
<td class="ltx_td ltx_align_left" id="A4.T4.13.13.1"><math alttext="3.142" class="ltx_Math" display="inline" id="A4.T4.13.13.1.m1.1"><semantics id="A4.T4.13.13.1.m1.1a"><mn id="A4.T4.13.13.1.m1.1.1" xref="A4.T4.13.13.1.m1.1.1.cmml">3.142</mn><annotation-xml encoding="MathML-Content" id="A4.T4.13.13.1.m1.1b"><cn id="A4.T4.13.13.1.m1.1.1.cmml" type="float" xref="A4.T4.13.13.1.m1.1.1">3.142</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.13.13.1.m1.1c">3.142</annotation><annotation encoding="application/x-llamapun" id="A4.T4.13.13.1.m1.1d">3.142</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T4.14.14.2"><math alttext="7.069" class="ltx_Math" display="inline" id="A4.T4.14.14.2.m1.1"><semantics id="A4.T4.14.14.2.m1.1a"><mn id="A4.T4.14.14.2.m1.1.1" xref="A4.T4.14.14.2.m1.1.1.cmml">7.069</mn><annotation-xml encoding="MathML-Content" id="A4.T4.14.14.2.m1.1b"><cn id="A4.T4.14.14.2.m1.1.1.cmml" type="float" xref="A4.T4.14.14.2.m1.1.1">7.069</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.14.14.2.m1.1c">7.069</annotation><annotation encoding="application/x-llamapun" id="A4.T4.14.14.2.m1.1d">7.069</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T4.15.15.3"><math alttext="2.959" class="ltx_Math" display="inline" id="A4.T4.15.15.3.m1.1"><semantics id="A4.T4.15.15.3.m1.1a"><mn id="A4.T4.15.15.3.m1.1.1" xref="A4.T4.15.15.3.m1.1.1.cmml">2.959</mn><annotation-xml encoding="MathML-Content" id="A4.T4.15.15.3.m1.1b"><cn id="A4.T4.15.15.3.m1.1.1.cmml" type="float" xref="A4.T4.15.15.3.m1.1.1">2.959</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.15.15.3.m1.1c">2.959</annotation><annotation encoding="application/x-llamapun" id="A4.T4.15.15.3.m1.1d">2.959</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T4.16.16.4"><math alttext="6.852" class="ltx_Math" display="inline" id="A4.T4.16.16.4.m1.1"><semantics id="A4.T4.16.16.4.m1.1a"><mn id="A4.T4.16.16.4.m1.1.1" xref="A4.T4.16.16.4.m1.1.1.cmml">6.852</mn><annotation-xml encoding="MathML-Content" id="A4.T4.16.16.4.m1.1b"><cn id="A4.T4.16.16.4.m1.1.1.cmml" type="float" xref="A4.T4.16.16.4.m1.1.1">6.852</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.16.16.4.m1.1c">6.852</annotation><annotation encoding="application/x-llamapun" id="A4.T4.16.16.4.m1.1d">6.852</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T4.17.17.5"><math alttext="3.736" class="ltx_Math" display="inline" id="A4.T4.17.17.5.m1.1"><semantics id="A4.T4.17.17.5.m1.1a"><mn id="A4.T4.17.17.5.m1.1.1" xref="A4.T4.17.17.5.m1.1.1.cmml">3.736</mn><annotation-xml encoding="MathML-Content" id="A4.T4.17.17.5.m1.1b"><cn id="A4.T4.17.17.5.m1.1.1.cmml" type="float" xref="A4.T4.17.17.5.m1.1.1">3.736</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.17.17.5.m1.1c">3.736</annotation><annotation encoding="application/x-llamapun" id="A4.T4.17.17.5.m1.1d">3.736</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A4.T4.18.18.6"><math alttext="7.956" class="ltx_Math" display="inline" id="A4.T4.18.18.6.m1.1"><semantics id="A4.T4.18.18.6.m1.1a"><mn id="A4.T4.18.18.6.m1.1.1" xref="A4.T4.18.18.6.m1.1.1.cmml">7.956</mn><annotation-xml encoding="MathML-Content" id="A4.T4.18.18.6.m1.1b"><cn id="A4.T4.18.18.6.m1.1.1.cmml" type="float" xref="A4.T4.18.18.6.m1.1.1">7.956</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.18.18.6.m1.1c">7.956</annotation><annotation encoding="application/x-llamapun" id="A4.T4.18.18.6.m1.1d">7.956</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T4.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.24.24.7">RAG</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.19.19.1"><math alttext="32.735" class="ltx_Math" display="inline" id="A4.T4.19.19.1.m1.1"><semantics id="A4.T4.19.19.1.m1.1a"><mn id="A4.T4.19.19.1.m1.1.1" xref="A4.T4.19.19.1.m1.1.1.cmml">32.735</mn><annotation-xml encoding="MathML-Content" id="A4.T4.19.19.1.m1.1b"><cn id="A4.T4.19.19.1.m1.1.1.cmml" type="float" xref="A4.T4.19.19.1.m1.1.1">32.735</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.19.19.1.m1.1c">32.735</annotation><annotation encoding="application/x-llamapun" id="A4.T4.19.19.1.m1.1d">32.735</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.20.20.2"><math alttext="41.594" class="ltx_Math" display="inline" id="A4.T4.20.20.2.m1.1"><semantics id="A4.T4.20.20.2.m1.1a"><mn id="A4.T4.20.20.2.m1.1.1" xref="A4.T4.20.20.2.m1.1.1.cmml">41.594</mn><annotation-xml encoding="MathML-Content" id="A4.T4.20.20.2.m1.1b"><cn id="A4.T4.20.20.2.m1.1.1.cmml" type="float" xref="A4.T4.20.20.2.m1.1.1">41.594</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.20.20.2.m1.1c">41.594</annotation><annotation encoding="application/x-llamapun" id="A4.T4.20.20.2.m1.1d">41.594</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.21.21.3"><math alttext="28.222" class="ltx_Math" display="inline" id="A4.T4.21.21.3.m1.1"><semantics id="A4.T4.21.21.3.m1.1a"><mn id="A4.T4.21.21.3.m1.1.1" xref="A4.T4.21.21.3.m1.1.1.cmml">28.222</mn><annotation-xml encoding="MathML-Content" id="A4.T4.21.21.3.m1.1b"><cn id="A4.T4.21.21.3.m1.1.1.cmml" type="float" xref="A4.T4.21.21.3.m1.1.1">28.222</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.21.21.3.m1.1c">28.222</annotation><annotation encoding="application/x-llamapun" id="A4.T4.21.21.3.m1.1d">28.222</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.22.22.4"><math alttext="37.219" class="ltx_Math" display="inline" id="A4.T4.22.22.4.m1.1"><semantics id="A4.T4.22.22.4.m1.1a"><mn id="A4.T4.22.22.4.m1.1.1" xref="A4.T4.22.22.4.m1.1.1.cmml">37.219</mn><annotation-xml encoding="MathML-Content" id="A4.T4.22.22.4.m1.1b"><cn id="A4.T4.22.22.4.m1.1.1.cmml" type="float" xref="A4.T4.22.22.4.m1.1.1">37.219</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.22.22.4.m1.1c">37.219</annotation><annotation encoding="application/x-llamapun" id="A4.T4.22.22.4.m1.1d">37.219</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.23.23.5"><math alttext="31.936" class="ltx_Math" display="inline" id="A4.T4.23.23.5.m1.1"><semantics id="A4.T4.23.23.5.m1.1a"><mn id="A4.T4.23.23.5.m1.1.1" xref="A4.T4.23.23.5.m1.1.1.cmml">31.936</mn><annotation-xml encoding="MathML-Content" id="A4.T4.23.23.5.m1.1b"><cn id="A4.T4.23.23.5.m1.1.1.cmml" type="float" xref="A4.T4.23.23.5.m1.1.1">31.936</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.23.23.5.m1.1c">31.936</annotation><annotation encoding="application/x-llamapun" id="A4.T4.23.23.5.m1.1d">31.936</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T4.24.24.6"><math alttext="41.125" class="ltx_Math" display="inline" id="A4.T4.24.24.6.m1.1"><semantics id="A4.T4.24.24.6.m1.1a"><mn id="A4.T4.24.24.6.m1.1.1" xref="A4.T4.24.24.6.m1.1.1.cmml">41.125</mn><annotation-xml encoding="MathML-Content" id="A4.T4.24.24.6.m1.1b"><cn id="A4.T4.24.24.6.m1.1.1.cmml" type="float" xref="A4.T4.24.24.6.m1.1.1">41.125</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T4.24.24.6.m1.1c">41.125</annotation><annotation encoding="application/x-llamapun" id="A4.T4.24.24.6.m1.1d">41.125</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models on the CRAB development set, a benchmark for collaborative retrieval-augmented generation.  It compares the performance of two parametric models (T5-base and Flan-T5-base), which are traditional language models, against a retrieval-augmented generation (RAG) model in three settings: Centralized (all client data combined), Local (individual client data), and Collaborative (CoRAG - using a collaborative approach). The results show the Exact Match and F1 scores for each model and setting, demonstrating CoRAG's consistent superiority over the parametric models, particularly in the collaborative training scenario.
> <details>
> <summary>read the caption</summary>
> Table 4: Few-shot performance of parametric models and RAG on the CRAB development set. CoRAG (RAG Collaborative) consistently outperforms the parametric models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T5.4">
<tr class="ltx_tr" id="A5.T5.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T5.4.5.1"><span class="ltx_text ltx_font_bold" id="A5.T5.4.5.1.1">Passage Store Composition</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A5.T5.4.5.2"><span class="ltx_text ltx_font_bold" id="A5.T5.4.5.2.1">Test Store Only</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A5.T5.4.5.3"><span class="ltx_text ltx_font_bold" id="A5.T5.4.5.3.1">Test+Train Store</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.4">
<td class="ltx_td" id="A5.T5.4.4.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T5.1.1.1.1">Exact Match <math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T5.1.1.1.1.m1.1"><semantics id="A5.T5.1.1.1.1.m1.1a"><mo id="A5.T5.1.1.1.1.m1.1.1" stretchy="false" xref="A5.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T5.1.1.1.1.m1.1b"><ci id="A5.T5.1.1.1.1.m1.1.1.cmml" xref="A5.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T5.2.2.2"><span class="ltx_text ltx_font_bold" id="A5.T5.2.2.2.1">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T5.2.2.2.1.m1.1"><semantics id="A5.T5.2.2.2.1.m1.1a"><mo id="A5.T5.2.2.2.1.m1.1.1" stretchy="false" xref="A5.T5.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T5.2.2.2.1.m1.1b"><ci id="A5.T5.2.2.2.1.m1.1.1.cmml" xref="A5.T5.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T5.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.3.3.3"><span class="ltx_text ltx_font_bold" id="A5.T5.3.3.3.1">Exact Match <math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T5.3.3.3.1.m1.1"><semantics id="A5.T5.3.3.3.1.m1.1a"><mo id="A5.T5.3.3.3.1.m1.1.1" stretchy="false" xref="A5.T5.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T5.3.3.3.1.m1.1b"><ci id="A5.T5.3.3.3.1.m1.1.1.cmml" xref="A5.T5.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T5.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T5.4.4.4"><span class="ltx_text ltx_font_bold" id="A5.T5.4.4.4.1">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A5.T5.4.4.4.1.m1.1"><semantics id="A5.T5.4.4.4.1.m1.1a"><mo id="A5.T5.4.4.4.1.m1.1.1" stretchy="false" xref="A5.T5.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A5.T5.4.4.4.1.m1.1b"><ci id="A5.T5.4.4.4.1.m1.1.1.cmml" xref="A5.T5.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A5.T5.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T5.4.6.1">100% store</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.4.6.2">31.111</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T5.4.6.3">39.760</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.4.6.4">29.333</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A5.T5.4.6.5">37.249</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.7">
<td class="ltx_td ltx_align_left" id="A5.T5.4.7.1">80% store (relevant + others)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.7.2">30.222</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.7.3">38.685</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.7.4">28.667</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.7.5">35.525</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.8">
<td class="ltx_td ltx_align_left" id="A5.T5.4.8.1">50% store (relevant + others)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.8.2">31.111</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.8.3">39.015</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.8.4">29.333</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.8.5">37.034</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.9">
<td class="ltx_td ltx_align_left" id="A5.T5.4.9.1">20% store (relevant + others)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.9.2">31.778</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.9.3">40.835</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.9.4">28.444</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.9.5">35.647</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.10">
<td class="ltx_td ltx_align_left" id="A5.T5.4.10.1">10% store (relevant + others)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.10.2">31.111</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.10.3">38.969</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.10.4">30.222</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.10.5">37.503</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.11">
<td class="ltx_td ltx_align_left" id="A5.T5.4.11.1">1% store (relevant + others)</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.11.2">29.333</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.11.3">37.418</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.11.4">30.889</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.11.5">39.233</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.12">
<td class="ltx_td ltx_align_left" id="A5.T5.4.12.1">0% store</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.12.2">23.778</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.12.3">29.689</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.12.4">20.889</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.12.5">26.712</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.13">
<td class="ltx_td ltx_align_left" id="A5.T5.4.13.1">Only relevant</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.13.2">29.111</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.13.3">36.467</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.13.4">28.667</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.13.5">38.597</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.14">
<td class="ltx_td ltx_align_left" id="A5.T5.4.14.1">Only hard neg + irrelevant</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.14.2">25.222</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.14.3">32.046</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.14.4">25.556</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.14.5">32.063</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.15">
<td class="ltx_td ltx_align_left" id="A5.T5.4.15.1">Only relevant + hard neg</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.15.2">25.778</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.15.3">32.093</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.15.4">27.111</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.15.5">33.441</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.16">
<td class="ltx_td ltx_align_left" id="A5.T5.4.16.1">Only relevant + irrelevant</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.16.2">32.667</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A5.T5.4.16.3">40.569</td>
<td class="ltx_td ltx_align_center" id="A5.T5.4.16.4">30.111</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A5.T5.4.16.5">36.969</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T5.4.17.1">Only top-1 relevant + irrelevant</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.4.17.2">31.556</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A5.T5.4.17.3">40.890</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.4.17.4">30.333</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A5.T5.4.17.5">37.703</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows how different compositions of the training data passage store affect the performance of a local Retrieval Augmented Generation (RAG) model.  The performance is measured using two metrics: Exact Match and F1 score. The experiment tests two scenarios: using only the local test data, and using a combined test and training data set.  Eight clients' average scores are reported for each training data composition scenario.  The compositions vary in the percentage and type of passages included (relevant, irrelevant, and hard negatives).
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of RAG (local) across various training store compositions. We assess the impact on Exact Match and F1 scores at test time, using the local test store (Itestsubscript𝐼testI_{\text{test}}italic_I start_POSTSUBSCRIPT test end_POSTSUBSCRIPT) only and the combined test and train stores (Itestsubscript𝐼testI_{\text{test}}italic_I start_POSTSUBSCRIPT test end_POSTSUBSCRIPT + Itrainsubscript𝐼trainI_{\text{train}}italic_I start_POSTSUBSCRIPT train end_POSTSUBSCRIPT ). Scores are averaged across 8 clients.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T6.16.16">
<tr class="ltx_tr" id="A6.T6.16.16.17">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T6.16.16.17.1"><span class="ltx_text ltx_font_bold" id="A6.T6.16.16.17.1.1">Passage Store</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.2">Client 1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.3">Client 2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.4">Client 3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.5">Client 4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.6">Client 5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.7">Client 6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.8">Client 7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A6.T6.16.16.17.9">Client 8</td>
</tr>
<tr class="ltx_tr" id="A6.T6.16.16.16">
<td class="ltx_td" id="A6.T6.16.16.16.17"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.1.1.1.1">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.1.1.1.1.m1.1"><semantics id="A6.T6.1.1.1.1.m1.1a"><mo id="A6.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A6.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.1.1.1.1.m1.1b"><ci id="A6.T6.1.1.1.1.m1.1.1.cmml" xref="A6.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.2.2">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.2.2.2.2.m1.1"><semantics id="A6.T6.2.2.2.2.m1.1a"><mo id="A6.T6.2.2.2.2.m1.1.1" stretchy="false" xref="A6.T6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.2.2.2.2.m1.1b"><ci id="A6.T6.2.2.2.2.m1.1.1.cmml" xref="A6.T6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.3.3.3.3">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.3.3.3.3.m1.1"><semantics id="A6.T6.3.3.3.3.m1.1a"><mo id="A6.T6.3.3.3.3.m1.1.1" stretchy="false" xref="A6.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.3.3.3.3.m1.1b"><ci id="A6.T6.3.3.3.3.m1.1.1.cmml" xref="A6.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.4.4.4.4">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.4.4.4.4.m1.1"><semantics id="A6.T6.4.4.4.4.m1.1a"><mo id="A6.T6.4.4.4.4.m1.1.1" stretchy="false" xref="A6.T6.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.4.4.4.4.m1.1b"><ci id="A6.T6.4.4.4.4.m1.1.1.cmml" xref="A6.T6.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.5.5.5.5">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.5.5.5.5.m1.1"><semantics id="A6.T6.5.5.5.5.m1.1a"><mo id="A6.T6.5.5.5.5.m1.1.1" stretchy="false" xref="A6.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.5.5.5.5.m1.1b"><ci id="A6.T6.5.5.5.5.m1.1.1.cmml" xref="A6.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.6.6.6.6">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.6.6.6.6.m1.1"><semantics id="A6.T6.6.6.6.6.m1.1a"><mo id="A6.T6.6.6.6.6.m1.1.1" stretchy="false" xref="A6.T6.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.6.6.6.6.m1.1b"><ci id="A6.T6.6.6.6.6.m1.1.1.cmml" xref="A6.T6.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.7.7.7.7">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.7.7.7.7.m1.1"><semantics id="A6.T6.7.7.7.7.m1.1a"><mo id="A6.T6.7.7.7.7.m1.1.1" stretchy="false" xref="A6.T6.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.7.7.7.7.m1.1b"><ci id="A6.T6.7.7.7.7.m1.1.1.cmml" xref="A6.T6.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.8.8.8.8">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.8.8.8.8.m1.1"><semantics id="A6.T6.8.8.8.8.m1.1a"><mo id="A6.T6.8.8.8.8.m1.1.1" stretchy="false" xref="A6.T6.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.8.8.8.8.m1.1b"><ci id="A6.T6.8.8.8.8.m1.1.1.cmml" xref="A6.T6.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.9.9.9.9">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.9.9.9.9.m1.1"><semantics id="A6.T6.9.9.9.9.m1.1a"><mo id="A6.T6.9.9.9.9.m1.1.1" stretchy="false" xref="A6.T6.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.9.9.9.9.m1.1b"><ci id="A6.T6.9.9.9.9.m1.1.1.cmml" xref="A6.T6.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.10.10.10.10">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.10.10.10.10.m1.1"><semantics id="A6.T6.10.10.10.10.m1.1a"><mo id="A6.T6.10.10.10.10.m1.1.1" stretchy="false" xref="A6.T6.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.10.10.10.10.m1.1b"><ci id="A6.T6.10.10.10.10.m1.1.1.cmml" xref="A6.T6.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.11.11.11.11">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.11.11.11.11.m1.1"><semantics id="A6.T6.11.11.11.11.m1.1a"><mo id="A6.T6.11.11.11.11.m1.1.1" stretchy="false" xref="A6.T6.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.11.11.11.11.m1.1b"><ci id="A6.T6.11.11.11.11.m1.1.1.cmml" xref="A6.T6.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.12.12.12.12">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.12.12.12.12.m1.1"><semantics id="A6.T6.12.12.12.12.m1.1a"><mo id="A6.T6.12.12.12.12.m1.1.1" stretchy="false" xref="A6.T6.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.12.12.12.12.m1.1b"><ci id="A6.T6.12.12.12.12.m1.1.1.cmml" xref="A6.T6.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.13.13.13.13">EM <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.13.13.13.13.m1.1"><semantics id="A6.T6.13.13.13.13.m1.1a"><mo id="A6.T6.13.13.13.13.m1.1.1" stretchy="false" xref="A6.T6.13.13.13.13.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.13.13.13.13.m1.1b"><ci id="A6.T6.13.13.13.13.m1.1.1.cmml" xref="A6.T6.13.13.13.13.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.13.13.13.13.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.13.13.13.13.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.14.14.14.14">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.14.14.14.14.m1.1"><semantics id="A6.T6.14.14.14.14.m1.1a"><mo id="A6.T6.14.14.14.14.m1.1.1" stretchy="false" xref="A6.T6.14.14.14.14.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.14.14.14.14.m1.1b"><ci id="A6.T6.14.14.14.14.m1.1.1.cmml" xref="A6.T6.14.14.14.14.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.14.14.14.14.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.14.14.14.14.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.15.15.15.15">EM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.15.15.15.15.m1.1"><semantics id="A6.T6.15.15.15.15.m1.1a"><mo id="A6.T6.15.15.15.15.m1.1.1" stretchy="false" xref="A6.T6.15.15.15.15.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.15.15.15.15.m1.1b"><ci id="A6.T6.15.15.15.15.m1.1.1.cmml" xref="A6.T6.15.15.15.15.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.15.15.15.15.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.15.15.15.15.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A6.T6.16.16.16.16">F1 <math alttext="\uparrow" class="ltx_Math" display="inline" id="A6.T6.16.16.16.16.m1.1"><semantics id="A6.T6.16.16.16.16.m1.1a"><mo id="A6.T6.16.16.16.16.m1.1.1" stretchy="false" xref="A6.T6.16.16.16.16.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A6.T6.16.16.16.16.m1.1b"><ci id="A6.T6.16.16.16.16.m1.1.1.cmml" xref="A6.T6.16.16.16.16.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.16.16.16.16.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A6.T6.16.16.16.16.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.16.16.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.16.16.18.1">REL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.2">3.778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.3">4.684</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.4">6.666</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.5">7.470</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.6">5.999</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.7">6.628</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.8">5.111</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.9">6.571</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.10">2.889</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.11">3.656</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.12">3.999</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.13">3.424</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.14">7.555</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.15">7.519</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.16.16.18.16">6.444</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A6.T6.16.16.18.17">6.451</td>
</tr>
<tr class="ltx_tr" id="A6.T6.16.16.19">
<td class="ltx_td ltx_align_left" id="A6.T6.16.16.19.1">IRR</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.2">2.445</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.3">4.812</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.4">6.000</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.5">6.562</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.6">6.222</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.7">7.427</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.8">2.889</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.9">4.671</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.10">2.000</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.11">4.476</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.12">5.778</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.13">5.895</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.14">4.889</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.15">6.466</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.19.16">5.778</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T6.16.16.19.17">6.866</td>
</tr>
<tr class="ltx_tr" id="A6.T6.16.16.20">
<td class="ltx_td ltx_align_left" id="A6.T6.16.16.20.1">REL-1</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.2">2.667</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.3">4.459</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.4">8.444</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.5">9.465</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.6">3.333</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.7">4.018</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.8">4.222</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.9">4.786</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.10">5.334</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.11">6.104</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.12">5.555</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.13">6.261</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.14">5.778</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.15">5.515</td>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.20.16">1.445</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T6.16.16.20.17">0.943</td>
</tr>
<tr class="ltx_tr" id="A6.T6.16.16.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T6.16.16.21.1">SPLIT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.2">4.222</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.3">5.248</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.4">6.222</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.5">7.045</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.6">7.112</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.7">6.315</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.8">6.445</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.9">6.063</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.10">11.111</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.11">11.244</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.12">10.000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.13">9.460</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.14">7.556</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.15">5.700</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.16">5.111</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A6.T6.16.16.21.17">5.182</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance improvements achieved by CoRAG (Collaborative Retrieval-Augmented Generation) compared to a local RAG model across eight different clients.  The improvements are measured using Exact Match (EM) and F1 scores, key metrics in question answering.  Results are shown for various passage store configurations, illustrating how different compositions of the training data impact the effectiveness of the collaborative approach.  This allows for analysis of how the collaboration benefits each client individually, showing the contribution of various passages in the shared store.
> <details>
> <summary>read the caption</summary>
> Table 6: Client-specific performance gains (EM and F1) of CoRAG over RAG (Local) for various passage store configurations in the CRAB benchmark.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01883/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01883/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}