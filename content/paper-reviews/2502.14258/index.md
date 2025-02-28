---
title: "Does Time Have Its Place? Temporal Heads: Where Language Models Recall Time-specific Information"
summary: "LLMs have 'Temporal Heads' that process time-specific facts!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Korea University",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14258 {{< /keyword >}}
{{< keyword icon="writer" >}} Yein Park et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14258" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14258" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14258/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

This research addresses the underexplored area of how language models handle facts that change over time. It introduces the concept of **Temporal Heads**, which are specific attention heads within language models primarily responsible for processing temporal knowledge. Through circuit analysis, the study confirms the presence of these heads across multiple models. Disabling these heads impairs the model's ability to recall time-specific information. 



The paper demonstrates that Temporal Heads are activated by both numeric and textual temporal cues, indicating a deeper encoding of time beyond simple numerical representation. Moreover, the study shows that temporal knowledge can be edited by manipulating the values of these heads. The finding highlights **Temporal Heads** as key components for encoding and modifying time-sensitive knowledge.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Temporal Heads are specific attention heads responsible for processing temporal knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Ablating Temporal Heads degrades the model's ability to recall time-specific knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Temporal knowledge can be edited by adjusting the values of Temporal Heads. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Temporal Heads, a crucial component for LLMs to process time-specific information. This research opens new avenues for enhancing LLMs' ability to reason about dynamically changing facts, improving their reliability in real-world applications. Findings inspires future works on better temporal aware LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14258/x1.png)

> 🔼 Figure 1 illustrates the concept of 'Temporal Heads' within a neural network model.  The figure shows how these specialized attention heads are responsible for processing time-specific information. It demonstrates that these Temporal Heads are present across various temporal knowledge circuits (TKCs) at different time points (T<sub>k</sub>).  When these Temporal Heads are deactivated (ablated), the model's ability to correctly identify time-sensitive information is significantly impaired, leading to incorrect outputs, highlighting the importance of these heads for maintaining accurate temporal alignment.
> <details>
> <summary>read the caption</summary>
> Figure 1: Temporal Heads exist within various TKCs at different times Tksubscript𝑇𝑘T_{k}italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT. Ablating them disrupts the model’s temporal alignment, yielding incorrect objects.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S3.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Knowledge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">#Node</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">#Edge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">CRS</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S3.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.1.1.2.2.1.1">Temporal</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.1">Sports</td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.1.3.3.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.3">Nicolas Anelka</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.4">29</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.5">37</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.3.6">74.14</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<td class="ltx_td" id="S3.T1.1.1.4.4.1"></td>
<td class="ltx_td" id="S3.T1.1.1.4.4.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.3">David Beckham</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.4">43</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.5">80</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.6">39.53</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.1">Presidents</td>
<td class="ltx_td" id="S3.T1.1.1.5.5.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.3">Argentina</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.4">42</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.5">102</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.6">60.97</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<td class="ltx_td" id="S3.T1.1.1.6.6.1"></td>
<td class="ltx_td" id="S3.T1.1.1.6.6.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.3">South Korea</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.4">46</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.5">110</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.6">65.55</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.1">CEO</td>
<td class="ltx_td" id="S3.T1.1.1.7.7.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.3">Hewlett-Packard</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.4">52</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.5">115</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.6">53.49</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<td class="ltx_td" id="S3.T1.1.1.8.8.1"></td>
<td class="ltx_td" id="S3.T1.1.1.8.8.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.3">Chrysler</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.4">51</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.5">97</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.6">57.10</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.1">Defense</td>
<td class="ltx_td" id="S3.T1.1.1.9.9.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.3">United States</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.4">50</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.5">137</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.6">48.08</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<td class="ltx_td" id="S3.T1.1.1.10.10.1"></td>
<td class="ltx_td" id="S3.T1.1.1.10.10.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.3">China</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.4">19</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.5">19</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.6">37.62</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S3.T1.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.2.1">42</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.3.1">87</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.11.11.4.1">54.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S3.T1.1.1.12.12.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.1.1.12.12.1.1">Time-Invariant</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.13.13.1">CommonSense</td>
<td class="ltx_td ltx_border_t" id="S3.T1.1.1.13.13.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.13.13.3">Object Superclass</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.13.13.4">43</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.13.13.5">56</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.13.13.6">44.47</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.14">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.1">Conditional CS</td>
<td class="ltx_td" id="S3.T1.1.1.14.14.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.3">Fruit Inside Color</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.4">76</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.5">131</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.6">53.08</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15.15">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.1">Num in Obj</td>
<td class="ltx_td" id="S3.T1.1.1.15.15.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.3">Geometric Shape</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.4">52</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.5">118</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.6">76.09</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.1">Num in Sub</td>
<td class="ltx_td" id="S3.T1.1.1.16.16.2"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.3">Roman Numerals</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.4">43</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.5">135</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.6">95.70</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" colspan="3" id="S3.T1.1.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.17.17.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.2.1">54</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.3.1">110</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.17.17.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.17.17.4.1">67.33</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical analysis of knowledge circuits within the Llama2 language model, categorized into temporal and time-invariant types.  For temporal knowledge, data from three distinct years (1999, 2004, and 2009) are used to construct circuits, and the table shows the average number of nodes and edges in these circuits, along with their Circuit Reproduction Score (CRS). Time-invariant knowledge is analyzed using similar metrics.  The CRS indicates how well a pruned circuit (a simplified subgraph representing a specific computation) reproduces the full model's behavior.  A higher CRS suggests better replication.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of temporal knowledge circuits for Llama2, both temporal and time-invariant knowledge. For temporal knowledge, each type of knowledge is reproduced with three selected years: 1999, 2004, and 2009. The numbers of nodes, edges and CRS is the average of each knowledge’s yearly circuits.
> </details>





### In-depth insights


#### Temporal Heads
The research paper introduces **'Temporal Heads' as specific attention heads** within language models that primarily process temporal knowledge. Through circuit analysis, the paper confirms these heads exist across various models, though their locations vary. These heads are activated by both numeric and textual temporal cues, indicating a broader encoding of time. **Disabling these heads degrades the model's ability to recall time-specific facts**, while maintaining general capabilities. Furthermore, adjusting their values enables editing of temporal knowledge. The identification of temporal heads provides **valuable insights into how language models encode and utilize time-sensitive information**, potentially inspiring future approaches for time-aware model alignment and precise temporal updates.

#### Circuit Analysis
Circuit analysis, in the context of this paper, is presented as a crucial method for **understanding how language models process and represent knowledge**. The analysis treats a transformer network as a directed acyclic graph, where nodes represent components like attention heads and MLP layers, and edges signify the flow of activations. This approach is significant because it allows researchers to **decompose the complex computations** of a language model into more manageable and interpretable units. By identifying which nodes and edges are most critical for a specific task, such as recalling factual information, we can gain insights into the model's internal mechanisms for knowledge storage and retrieval. Moreover, the techniques of **ablating specific components** (e.g., attention heads) and observing the resulting changes in the model's output are central. This reveals the causal roles of different parts of the network and highlight the specific circuits responsible for various aspects of the model's behavior.

#### EAP-IG Pruning
**EAP-IG Pruning** seems like a critical step in dissecting the model's knowledge representation. It helps to identify the most relevant connections for a given task and removes the less important ones. This is an integral process, as directly analyzing the raw model parameters would be extremely difficult. By ablating candidate edges (connections between nodes) and observing the impact on prediction accuracy, **EAP-IG identifies the minimal subgraph** responsible for eliciting specific knowledge, in this case, related to temporal facts. It is important to note that **EAP-IG is extended to make it aware of the time component**, making it able to generate circuits dependent of time. The process of ablation and measuring the effect of that is how the pruning is done, retaining only edges with scores exceeding a threshold, ultimately revealing key pathways for encoding and retrieving time-sensitive knowledge.

#### QA Unaffected
The concept of "QA Unaffected" within the context of language model analysis refers to maintaining or even improving performance on general question-answering tasks when manipulating specific components responsible for temporal knowledge. The paper's findings suggest that **temporal heads,** the identified attention heads crucial for processing time-specific information, can be ablated (removed) or edited without significantly hindering the model's ability to answer general questions. This implies a degree of **specialization and modularity** within the model's architecture, where temporal knowledge is handled by dedicated components while broader knowledge and reasoning capabilities remain intact. In essence, the manipulation does not negatively impact the circuits responsible for general knowledge as these circuits remain functional as they are untouched.

#### Editing TKC
**Editing Temporal Knowledge Circuits (TKCs)** suggests a methodology to directly manipulate a language model's understanding of time-specific facts. Instead of relying on prompting techniques or external knowledge retrieval, it proposes interventions within the model's architecture to alter temporal knowledge.  The approach potentially involves identifying specific components, likely attention heads, that are responsible for processing temporal information. By modifying the weights or activations of these components, the model's output for a time-dependent query can be directly influenced. Such editing could involve selectively amplifying the correct temporal associations or suppressing incorrect ones. This level of control offers advantages in correcting errors or biases in the model's knowledge base, allowing for more targeted interventions than retraining or fine-tuning.  It would be crucial to maintain the model's general capabilities while editing specific temporal facts to avoid unintended side effects on other knowledge domains or reasoning abilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14258/x2.png)

> 🔼 Figure 2 illustrates the process of temporal knowledge circuit analysis.  Panel (A) shows the construction of Temporal Knowledge Circuits (TKCs) for time-specific knowledge and compares them to general Knowledge Circuits (KCs) built using time-invariant knowledge.  The circuits trace the flow of information through the model's layers, focusing on 'time', 'subject', and 'relation' elements to identify which parts of the model process temporal information.  Panel (B) provides a simplified example of a TKC, highlighting the 'Temporal Heads' within the overall circuit.  Panel (C) displays the attention maps of these Temporal Heads, showing how their attention weights are distributed across input tokens. Darker colors represent stronger attention, indicating the importance of certain tokens for temporal understanding.  The results of this analysis are further detailed in Figures 7-8 and 9-11.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of temporal knowledge circuit analysis. (A): Construct temporal knowledge circuits (TKCs), and compare it with general knowledge circuits (KCs) using time-invariant knowledge. Circuits reproduce residual streams for time T, subject S and relation R. This verifies temporal heads only found in each different TKCs of various year Tksubscript𝑇𝑘T_{k}italic_T start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT. (B): Example of simplified TKC. Here, basic knowledge nodes is colored violet, (common in both), while Temporal Heads is highlited. (C): Attention map for temporal heads. a15.h0 means the 15th layer’s first attention head. Each head’s attention pattern is represented as the output logits of the hean by mapping to vocabulary space. Queries are input tokens focusing on others, while keys are the tokens being focused on. Values represent attention weights, indicating the strength of this focus. Total results are in Figures 7–8 and 9–11.
> </details>



![](https://arxiv.org/html/2502.14258/x3.png)

> 🔼 Figure 3 visualizes the impact of ablating temporal attention heads on the model's ability to recall time-specific knowledge.  Part (A) displays, for each year between 1999 and 2009, the probability distribution of correct (green) versus incorrect (red) predictions when specific heads are ablated.  The x-axis shows probability, and the y-axis separates target (correct) from non-target (incorrect) predictions.  Different years show varying degrees of sensitivity to ablation. Part (B) provides a summary, showing the average performance degradation across years. The shaded area between the two lines represents the magnitude of the performance drop, which is highlighted by red arrows that increase in size with greater performance loss. The background shows the changes in the president of South Korea over the 1999-2009 period.
> <details>
> <summary>read the caption</summary>
> Figure 3: Log probability results with temporal knowledge; In XXXX, the president of South Korea was. (A) shows prediction probability change among results of Llama2. The effect of head ablation reacts differently for each selected year with the same prompt. Each subplot in (A) represents the probability distribution of correct (green) and incorrect (red) predictions, where the x-axis denotes probability values and the y-axis differentiates between target and non-target responses. Total results for each model are in Figures 12–13 in Appendix. (B) illustrates the performance degradation trends across various years. As averaging the result of ablation, the gray space between two line plots represent degradation level pointed out by red arrows (which becomes darker and bigger when the gap is wider). The background shows how objects were changed in the time range between 1999 to 2009.
> </details>



![](https://arxiv.org/html/2502.14258/x4.png)

> 🔼 This figure displays the results of ablating temporal heads in three different large language models (LLMs) on various knowledge tasks.  The left side shows the performance on tasks involving temporal knowledge (knowledge that changes over time), while the right side shows performance on time-invariant knowledge (knowledge that doesn't change over time). Ablation refers to setting the weights of the temporal heads to zero, effectively removing their contribution to the model's processing.  The graph compares the baseline performance (before ablation) to the performance after ablating the temporal heads.  Each bar represents the performance change (average score) for specific categories of temporal or time-invariant knowledge.  The results illustrate that although the magnitude of performance degradation varies across models, the overall trend consistently indicates the crucial role of temporal heads in processing and reasoning about time-dependent information.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Head ablation effect across various knowledge types. Three selcted model shows distinct differentiation for temporal knowledge (left side) and time invariant knowledge (right side). The change of performance is calculated with the average score of baseline (non-ablation) and modified (ablated result), using model specific temporal head information. While degrees of degradation is different among models, overall tendency reflects the importance of temporal head to inference temporal knowledge.
> </details>



![](https://arxiv.org/html/2502.14258/x5.png)

> 🔼 This figure demonstrates the concept of temporal knowledge editing.  The researchers identified specific attention heads within a language model (LLM) that are primarily responsible for processing time-sensitive information. These heads are referred to as 'Temporal Heads.' By manipulating the activation values of these Temporal Heads (specifically head a18.h3 in this example), the researchers can change the model's output for temporally-dependent facts, correcting inaccurate responses without retraining the entire model. The heatmap visually displays the success rate of this editing process across different layers and attention heads within the LLM, showing that a18.h3 and other heads like a20.h17 are the most effective for this task. This technique proves the existence of specialized components within LLMs for handling temporal knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example Of Temporal Knowledge Editing. From the source prompt, we catch the specific attention value of model’s head, for example, a18.h3. By simply adding it to target prompt, the model’s output is changed into temporally correct answer from temporally wrong answer. The headmap below denotes the number of success in editing for every combination of layers and heads. The most successful case in here is temporal heads a18.h3 as highlighted, following other heads such as backup temporal heads a20.h17.
> </details>



![](https://arxiv.org/html/2502.14258/x9.png)

> 🔼 Figure 6 presents the results of causal tracing experiments, which aim to pinpoint which parts of a language model are responsible for accurate recall of time-specific information.  The experiments focus on three different parts of a knowledge triplet: subject, relation, and object.  Heatmaps visualize the impact of restoring different layers (or groups of layers) of the model after introducing temporal corruption (incorrect year information). Each row shows results for a particular layer type (single layers, MLP intervals, and attention intervals).  The results indicate that restoring subject and year information in middle layers strongly affects prediction accuracy, producing noticeable differences in the heatmaps. In contrast, restoring relation or object information with the incorrect year results in minimal changes in accuracy, showing a much weaker connection to the temporal aspect.
> <details>
> <summary>read the caption</summary>
> Figure 6: Results of Causal Tracing for all position(subject, relation, object), six plots for each cases from the top to middle and bottom. The restoring part is set to each temporal conditioning, in two different age: 1999 and 2004. (Illustrative) Causal tracing heatmaps showing how restoring different layers (x-axis) after temporal corruption affects p⁢(New)pNew\mathrm{p}(\text{New})roman_p ( New ) or p⁢(Barcelona)pBarcelona\mathrm{p}(\text{Barcelona})roman_p ( Barcelona ). For the object position, we set a simulated [Object] for the place holder. Each figure’s left column represents single-layer restoration; the center and right columns reflect MLP vs. attention intervals. Restoring subject+year at mid layers yields pronounced differences (dark regions). On the other hand, restoring relation+year or object+year yields trivial differences as their range is overlap significantly.
> </details>



![](https://arxiv.org/html/2502.14258/x12.png)

> 🔼 This figure shows a simplified version of the Llama2 model's knowledge circuit, focusing specifically on the parts involved in retrieving temporal knowledge. The circuit is a directed acyclic graph (DAG) where nodes represent components of the model (attention heads, MLP modules, etc.) and edges show the flow of information.  The simplification was achieved using circuit analysis with a threshold (τ = 0.1) to filter out less important nodes and edges, leaving only those that significantly contribute to retrieving temporal information.  The color-coding of nodes likely indicates different functional components in the processing of time-related information.
> <details>
> <summary>read the caption</summary>
> Figure 7: Temporal knowledge circuit of Llama2. It is simplified version of total circuit by its importance of each nodes using τ=0.1𝜏0.1\tau=0.1italic_τ = 0.1 as threshold.
> </details>



![](https://arxiv.org/html/2502.14258/x13.png)

> 🔼 This figure shows the temporal knowledge circuits for the Qwen-1.5 7B Chat and Phi-3 mini 4K Instruct models.  These circuits illustrate the pathways within the models that are specifically activated when processing information that changes over time. The circuits are simplified versions of the complete models, retaining only the nodes and edges deemed most crucial for handling temporal information, as determined by a threshold of 0.1. This simplification makes it easier to visualize the key components involved in processing time-dependent knowledge.  The circuits are generated using circuit analysis, which pinpoints which model components are responsible for processing specific knowledge tasks. Different colors and shapes represent different model components (such as attention heads, MLP layers, and input/output nodes).  The detailed connections within each circuit reveal how information flows through the model when it processes time-sensitive data. 
> <details>
> <summary>read the caption</summary>
> Figure 8: Temporal knowledge circuit of Qwen 1.5 and Phi 3 mini. Those are simplified version of total circuit according to each nodes and edges’ importance of using same τ=0.1𝜏0.1\tau=0.1italic_τ = 0.1 as threshold.
> </details>



![](https://arxiv.org/html/2502.14258/x14.png)

> 🔼 This figure displays the attention maps for both Temporal Heads and Backup Temporal Heads in the Llama2-7b-chat-hf language model.  The attention maps visualize how strongly each head attends to different input tokens. The left half shows the attention patterns of the primary Temporal Heads, while the right half displays the attention patterns of the Backup Temporal Heads. The color intensity in each cell indicates the strength of attention; brighter colors signify stronger attention.  This visualization helps to understand how these specific heads process temporal information within the model architecture during inference.
> <details>
> <summary>read the caption</summary>
> Figure 9: Total map of attention with Llama2-7b-chat-hf, for each temporal heads and backup temporal heads. The left side of border line is the attention map of Temporal Heads, and the other side is the result of Backup Temporal Heads.
> </details>



![](https://arxiv.org/html/2502.14258/x15.png)

> 🔼 This figure visualizes the attention weights of Qwen-1.5-7B-Chat's attention heads, specifically focusing on those identified as 'Temporal Heads' and 'Backup Temporal Heads'.  The attention maps show which tokens the model focuses on when processing time-sensitive information. The left half displays the attention patterns for the primary 'Temporal Heads', highlighting their attention to temporal cues in the input text. The right half shows the attention patterns for the 'Backup Temporal Heads', which are activated when the primary 'Temporal Heads' are unavailable or insufficient. The differences between the two maps illustrate the model's internal mechanisms for handling temporal information, showing the different roles of the primary and backup temporal heads.
> <details>
> <summary>read the caption</summary>
> Figure 10: Total map of attention with Qwen1.5-7B-Chat, for each temporal heads and backup temporal heads. The left side of border line is the attention map of Temporal Heads, and the other side is the result of Backup Temporal Heads.
> </details>



![](https://arxiv.org/html/2502.14258/x16.png)

> 🔼 This figure visualizes the attention maps of both Temporal Heads and Backup Temporal Heads within the Phi-3-mini-4k-instruct language model.  The attention mechanism is crucial for understanding how the model processes information;  it shows which parts of the input the model focuses on when making predictions. The visualization is divided into two parts by a border line. The left side displays the attention patterns of the Temporal Heads, which are specifically responsible for processing time-related information. The right side shows the attention patterns of the Backup Temporal Heads, which act as a sort of backup or secondary mechanism that activates when the primary Temporal Heads are unable to fully process temporal information.
> <details>
> <summary>read the caption</summary>
> Figure 11: Total map of attention with Phi-3-mini-4k-instruct, for each temporal heads and backup temporal heads. The left side of border line is the attention map of Temporal Heads, and the other side is the result of Backup Temporal Heads.
> </details>



![](https://arxiv.org/html/2502.14258/x19.png)

> 🔼 This figure visualizes the results of head ablation inference experiments conducted on the Llama2-7b-chat-hf language model.  It shows the impact of ablating specific attention heads on the model's ability to predict the correct answer for questions with temporal contexts.  For each year (1999-2009), and for three different ablations (one head, the other head, and both heads ablated), the figure displays the log probabilities of both the correct answer (Target) and incorrect answers (Non-Target). The visualization helps to understand the relative importance of specific attention heads in processing temporal information and how their removal affects the model's accuracy over time.
> <details>
> <summary>read the caption</summary>
> Figure 12: Total results of Llama2-7b-chat-hf, head ablation inference with log probability.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.9.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.1.1">THs</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.9.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.2.1">Settings</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.9.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.3.1">Temporal (%)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.9.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.4.1">Invariant (%)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.8.8.9.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.5.1">QA (F1)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.10.2" style="background-color:#BFD9EC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" colspan="5" id="S4.T2.8.8.10.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.8.8.10.2.1.1" style="background-color:#BFD9EC;">Llama-2-7b-chat-hf</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.8.8.11.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.11.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.8.8.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.1.1.1.1">a18.h3</span>, <span class="ltx_text ltx_font_bold" id="S4.T2.8.8.11.1.1.1.2">a15.h0</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.11.1.2">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.11.1.3">29.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.11.1.4">61.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.11.1.5">55.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.4">Ablation</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.1.1">25.6 <math alttext="\Downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">⇓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">⇓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\Downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">⇓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.2.2.2.2">61.7 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.3">54.9 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.12.2" style="background-color:#D4BFE1;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S4.T2.8.8.12.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.8.8.12.2.1.1" style="background-color:#D4BFE1;">Qwen1.5-7B-Chat</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.13.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.13.3.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.13.3.1.1">a17.h15</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.13.3.2">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.13.3.3">22.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.13.3.4">62.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.13.3.5">49.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.6.4">Ablation</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.4.1">19.8 <math alttext="\Downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">⇓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">⇓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\Downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">⇓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.5.2">62.6 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.2.m1.1"><semantics id="S4.T2.5.5.5.2.m1.1a"><mo id="S4.T2.5.5.5.2.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.2.m1.1b"><ci id="S4.T2.5.5.5.2.m1.1.1.cmml" xref="S4.T2.5.5.5.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.6.3">49.5 <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.3.m1.1"><semantics id="S4.T2.6.6.6.3.m1.1a"><mo id="S4.T2.6.6.6.3.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.3.m1.1b"><ci id="S4.T2.6.6.6.3.m1.1.1.cmml" xref="S4.T2.6.6.6.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.3.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.14.4" style="background-color:#8EDB8A;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="5" id="S4.T2.8.8.14.4.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.8.8.14.4.1.1" style="background-color:#8EDB8A;">Phi-3-mini-4k-instruct</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.15.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.8.8.15.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.15.5.1.1">a10.h13</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.15.5.2">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.15.5.3">35.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.15.5.4">59.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.8.8.15.5.5">46.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.8.8.8.3">Ablation</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.7.7.7.1">26.0 <math alttext="\Downarrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mo id="S4.T2.7.7.7.1.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.7.7.7.1.m1.1.1.cmml">⇓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><ci id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1">⇓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">\Downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">⇓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.8.8.8.2">60.6 <math alttext="\Uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.2.m1.1"><semantics id="S4.T2.8.8.8.2.m1.1a"><mo id="S4.T2.8.8.8.2.m1.1.1" mathcolor="#00FF00" stretchy="false" xref="S4.T2.8.8.8.2.m1.1.1.cmml">⇑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.2.m1.1b"><ci id="S4.T2.8.8.8.2.m1.1.1.cmml" xref="S4.T2.8.8.8.2.m1.1.1">⇑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.2.m1.1c">\Uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.2.m1.1d">⇑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.8.8.8.4">46.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of three different Large Language Models (LLMs) when specific attention heads, termed 'Temporal Heads,' are ablated.  The Temporal Heads are hypothesized to be crucial for processing time-sensitive information. The table shows the performance of each LLM across three types of tasks: temporal knowledge questions (requiring time-specific information), time-invariant knowledge questions (not requiring time-specific information), and TriviaQA (a general question answering benchmark).  For each task and LLM, performance is evaluated under two conditions: baseline (with Temporal Heads intact) and ablation (with Temporal Heads removed).  Performance is measured as probability or F1 score, reflecting the accuracy of the LLM's responses. The results reveal that removing Temporal Heads significantly impairs performance on temporal knowledge tasks (a 3-9% drop), while performance on time-invariant knowledge and TriviaQA tasks remains relatively stable or even slightly improves in some cases. This suggests that these heads play a specialized role in handling temporal information.
> <details>
> <summary>read the caption</summary>
> Table 2: Temporal Heads (THs) across different LLMs. The scores besides each heads are evaluated in three cases (temporal knowledge, time-invariant knowledge, and TriviaQA) with two settings (baseline inference and ablation inference). Scores are checked with the average performance for each tasks, measured in probability (%) or f1 score. While performance in temporal knowledge drops significantly (3 to 9%), time-invariant and general QA remain relatively stable or even goes up.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T3.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T3.3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.T3.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.1.1.2.1">Knowledge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T3.3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.1.1.3.1">#Node</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T3.3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.1.1.4.1">#Edge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T3.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.1.1.5.1">CRS</span></td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S8.T3.3.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.3.1.2.2.1.1">Temporal</span></td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.3.3.1">Sports</td>
<td class="ltx_td ltx_border_t" id="S8.T3.3.1.3.3.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.3.3.3">Nicolas Anelka</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.3.3.4">27</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.3.3.5">26</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.3.3.6">88.81</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.4.4">
<td class="ltx_td" id="S8.T3.3.1.4.4.1"></td>
<td class="ltx_td" id="S8.T3.3.1.4.4.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.4.4.3">David Beckham</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.4.4.4">42</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.4.4.5">59</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.4.4.6">26.50</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.5.5">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.5.5.1">Presidents</td>
<td class="ltx_td" id="S8.T3.3.1.5.5.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.5.5.3">Argentina</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.5.5.4">38</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.5.5.5">64</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.5.5.6">43.99</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.6.6">
<td class="ltx_td" id="S8.T3.3.1.6.6.1"></td>
<td class="ltx_td" id="S8.T3.3.1.6.6.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.6.6.3">South Korea</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.6.6.4">51</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.6.6.5">104</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.6.6.6">53.18</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.7.7">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.7.7.1">CEO</td>
<td class="ltx_td" id="S8.T3.3.1.7.7.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.7.7.3">Hewlett-Packard</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.7.7.4">31</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.7.7.5">34</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.7.7.6">40.36</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.8.8">
<td class="ltx_td" id="S8.T3.3.1.8.8.1"></td>
<td class="ltx_td" id="S8.T3.3.1.8.8.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.8.8.3">Chrysler</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.8.8.4">26</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.8.8.5">22</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.8.8.6">28.14</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.9.9">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.9.9.1">Defense</td>
<td class="ltx_td" id="S8.T3.3.1.9.9.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.9.9.3">United States</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.9.9.4">8</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.9.9.5">5</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.9.9.6">25.60</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.10.10">
<td class="ltx_td" id="S8.T3.3.1.10.10.1"></td>
<td class="ltx_td" id="S8.T3.3.1.10.10.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.10.10.3">China</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.10.10.4">13</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.10.10.5">9</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.10.10.6">25.82</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S8.T3.3.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.11.11.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.11.11.2.1">30</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.11.11.3.1">40</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.11.11.4.1">41.44</span></td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S8.T3.3.1.12.12.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T3.3.1.12.12.1.1">Time-Invariant</span></td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.13.13.1">CommonSense</td>
<td class="ltx_td ltx_border_t" id="S8.T3.3.1.13.13.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.13.13.3">Object Superclass</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.13.13.4">72</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.13.13.5">127</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T3.3.1.13.13.6">42.61</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.14.14">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.14.14.1">Conditional CS</td>
<td class="ltx_td" id="S8.T3.3.1.14.14.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.14.14.3">Fruit Inside Color</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.14.14.4">43</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.14.14.5">49</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.14.14.6">64.83</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.15.15">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.15.15.1">Num in Obj</td>
<td class="ltx_td" id="S8.T3.3.1.15.15.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.15.15.3">Geometric Shape</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.15.15.4">60</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.15.15.5">127</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.15.15.6">62.94</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.16.16">
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.16.16.1">Num in Sub</td>
<td class="ltx_td" id="S8.T3.3.1.16.16.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.16.16.3">Roman Numerals</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.16.16.4">57</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.16.16.5">108</td>
<td class="ltx_td ltx_align_left" id="S8.T3.3.1.16.16.6">71.18</td>
</tr>
<tr class="ltx_tr" id="S8.T3.3.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" colspan="3" id="S8.T3.3.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.17.17.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T3.3.1.17.17.2"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.17.17.2.1">58</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T3.3.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.17.17.3.1">103</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T3.3.1.17.17.4"><span class="ltx_text ltx_font_bold" id="S8.T3.3.1.17.17.4.1">60.39</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of knowledge circuits within the Qwen 1.5 large language model (LLM).  It breaks down the structure of these circuits, specifically focusing on those related to temporal (time-varying) and time-invariant (static) knowledge. For temporal knowledge, the analysis is conducted across three specific years (1999, 2004, and 2009), averaging the results for each knowledge type within each year.  The key metrics provided are the number of nodes and edges in each circuit, and the Circuit Reproduction Score (CRS).  The CRS value indicates how well a simplified circuit reproduces the behavior of the complete model, with a higher score indicating better reproduction.  A threshold of τ=0.1 was used to simplify the circuits, which is consistent with the approach used for Llama2 analysis in the paper.
> <details>
> <summary>read the caption</summary>
> Table 3: Statistics of temporal knowledge circuits for Qwen 1.5, both temporal and time-invariant knowledge. For temporal knowledge, each type of knowledge is reproduced with three selected years: 1999, 2004, and 2009. The numbers of nodes, edges and CRS is the average of each knowledge’s yearly circuits. We simplified total circuits with τ=0.1𝜏0.1\tau=0.1italic_τ = 0.1, same as Llama2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T4.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T4.5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="S8.T4.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T4.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.1.1.2.1">Knowledge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T4.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.1.1.3.1">#Node</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T4.5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.1.1.4.1">#Edge</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T4.5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.1.1.5.1">CRS</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S8.T4.5.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T4.5.1.2.2.1.1">Temporal</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.3.3.1">Sports</td>
<td class="ltx_td ltx_border_t" id="S8.T4.5.1.3.3.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.3.3.3">Nicolas Anelka</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.3.3.4">5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.3.3.5">3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.3.3.6">64.51</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.4.4">
<td class="ltx_td" id="S8.T4.5.1.4.4.1"></td>
<td class="ltx_td" id="S8.T4.5.1.4.4.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.4.4.3">David Beckham</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.4.4.4">22</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.4.4.5">22</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.4.4.6">42.24</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.5.5">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.5.5.1">Presidents</td>
<td class="ltx_td" id="S8.T4.5.1.5.5.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.5.5.3">Argentina</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.5.5.4">53</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.5.5.5">127</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.5.5.6">91.19</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.6.6">
<td class="ltx_td" id="S8.T4.5.1.6.6.1"></td>
<td class="ltx_td" id="S8.T4.5.1.6.6.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.6.6.3">South Korea</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.6.6.4">55</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.6.6.5">142</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.6.6.6">81.47</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.7.7">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.7.7.1">CEO</td>
<td class="ltx_td" id="S8.T4.5.1.7.7.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.7.7.3">Hewlett-Packard</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.7.7.4">12</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.7.7.5">9</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.7.7.6">35.55</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.8.8">
<td class="ltx_td" id="S8.T4.5.1.8.8.1"></td>
<td class="ltx_td" id="S8.T4.5.1.8.8.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.8.8.3">Chrysler</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.8.8.4">9</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.8.8.5">7</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.8.8.6">73.98</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.9.9">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.9.9.1">Defense</td>
<td class="ltx_td" id="S8.T4.5.1.9.9.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.9.9.3">United States*</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.9.9.4">3</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.9.9.5">1</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.9.9.6">73.03</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.10.10">
<td class="ltx_td" id="S8.T4.5.1.10.10.1"></td>
<td class="ltx_td" id="S8.T4.5.1.10.10.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.10.10.3">China*</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.10.10.4">2</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.10.10.5">1</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.10.10.6">72.85</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S8.T4.5.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.11.11.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.11.11.2.1">20</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.11.11.3"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.11.11.3.1">39</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.11.11.4"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.11.11.4.1">66.85</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S8.T4.5.1.12.12.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T4.5.1.12.12.1.1">Time-Invariant</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.13.13.1">CommonSense</td>
<td class="ltx_td ltx_border_t" id="S8.T4.5.1.13.13.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.13.13.3">Object Superclass</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.13.13.4">73</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.13.13.5">135</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T4.5.1.13.13.6">61.49</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.14.14">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.14.14.1">Conditional CS</td>
<td class="ltx_td" id="S8.T4.5.1.14.14.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.14.14.3">Fruit Inside Color</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.14.14.4">24</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.14.14.5">44</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.14.14.6">49.48</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.15.15">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.15.15.1">Num in Obj</td>
<td class="ltx_td" id="S8.T4.5.1.15.15.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.15.15.3">Geometric Shape</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.15.15.4">16</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.15.15.5">20</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.15.15.6">39.98</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.16.16">
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.16.16.1">Num in Sub</td>
<td class="ltx_td" id="S8.T4.5.1.16.16.2"></td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.16.16.3">Roman Numerals</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.16.16.4">78</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.16.16.5">153</td>
<td class="ltx_td ltx_align_left" id="S8.T4.5.1.16.16.6">74.04</td>
</tr>
<tr class="ltx_tr" id="S8.T4.5.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" colspan="3" id="S8.T4.5.1.17.17.1"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.17.17.1.1">Avg</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T4.5.1.17.17.2"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.17.17.2.1">48</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T4.5.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.17.17.3.1">88</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S8.T4.5.1.17.17.4"><span class="ltx_text ltx_font_bold" id="S8.T4.5.1.17.17.4.1">56.25</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of knowledge circuits within the Phi-3 mini language model. It compares the model's performance in representing both temporal (time-varying) and time-invariant knowledge using a metric called the Circuit Reproduction Score (CRS).  For temporal knowledge, the analysis is performed on data spanning three years: 1999, 2004, and 2009, with the CRS, number of nodes, and number of edges averaged across the three years.  A notable observation is that the model's performance (CRS) on temporal knowledge was higher than its performance on time-invariant knowledge. The table also indicates that the circuits for temporal knowledge were smaller (fewer nodes and edges) than those for time-invariant knowledge. The threshold for determining significant circuit components (τ) was set to 0.1, with an exception made for the 'Defense' category, where a lower threshold was used.  This adjustment reflects the need for more strict criteria in evaluating knowledge circuits within this particular category.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistics of temporal knowledge circuits for Phi 3 mini, both temporal and time-invariant knowledge. For temporal knowledge, each type of knowledge is reproduced with three selected years: 1999, 2004, and 2009. The numbers of nodes, edges and CRS is the average of each knowledge’s yearly circuits. We simplified total circuits with τ=0.1𝜏0.1\tau=0.1italic_τ = 0.1, same as Llama2, except knowledge in Defense where at least 30% lower τ𝜏\tauitalic_τ is needed. Interestingly, Phi 3 mini shows better CRS of temporal knowledge than time-invariant ones, though their overall simplified nodes and edges are less than same cases of other models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T5.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S8.T5.1.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T5.1.1.1.1.2.1">Time Range</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T5.1.1.1.1.3.1"># of Cases</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S8.T5.1.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T5.1.1.2.2.1.1">Temporal Knowledge <cite class="ltx_cite ltx_citemacro_citep">(Vrandečić and Krötzsch, <a class="ltx_ref" href="https://arxiv.org/html/2502.14258v1#bib.bib52" title="">2014</a>)</cite></span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.3.3.1">Sports</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.3.3.2">1996-2020</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.3.3.3">81</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.4.4.1">Presidents</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.4.4.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.4.4.3">65</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.5.5.1">CEO</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.5.5.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.5.5.3">65</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.6.6.1">Defense</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.6.6.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.6.6.3">77</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.7.7.1">Movies</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.7.7.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.7.7.3">33</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.8.8.1">GDP</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.8.8.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.8.8.3">33</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.9.9.1">Inflations</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.9.9.2">1999-2009</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.9.9.3">33</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="S8.T5.1.1.10.10.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T5.1.1.10.10.1.1">Time Invariant Knowledge <cite class="ltx_cite ltx_citemacro_citep">(Hernandez et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.14258v1#bib.bib16" title="">2024</a>)</cite></span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.11.11.1">Object Superclass</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.11.11.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T5.1.1.11.11.3">36</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.12.12.1">Fruit Inside Color</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.12.12.2">-</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.12.12.3">76</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.13.13.1">Geometric Shape</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.13.13.2">-</td>
<td class="ltx_td ltx_align_left" id="S8.T5.1.1.13.13.3">28</td>
</tr>
<tr class="ltx_tr" id="S8.T5.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T5.1.1.14.14.1">Roman Numerals</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T5.1.1.14.14.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T5.1.1.14.14.3">31</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the datasets utilized for constructing and analyzing knowledge circuits within the study.  It categorizes the data into 'Temporal Knowledge' and 'Time-Invariant Knowledge', providing the time range covered and the number of data points for each category.  The temporal knowledge section further subdivides the data into specific types, such as sports, presidents, CEOs, defense budgets, movies, GDP, and inflation rates, with each type specifying a time range and the associated number of cases. The Time-Invariant Knowledge section covers categories such as object superclasses, fruit inside color, geometric shapes, and Roman numerals, also including the number of cases for each.
> <details>
> <summary>read the caption</summary>
> Table 5: Statistics of dataset used for circuits.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S8.T6.1.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T6.1.1.1.1.2.1">Format</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T6.1.1.1.1.3.1">Test</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S8.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S8.T6.1.1.1.1.4.1">Source</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T6.1.1.2.1.1">TriviaQA</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T6.1.1.2.1.2">MCQA</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T6.1.1.2.1.3">11,313</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T6.1.1.2.1.4"><cite class="ltx_cite ltx_citemacro_citep">Joshi et al.,<a class="ltx_ref" href="https://arxiv.org/html/2502.14258v1#bib.bib18" title="">2017</a></cite></td>
</tr>
<tr class="ltx_tr" id="S8.T6.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T6.1.1.3.2.1">Math ChroKnowledge</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T6.1.1.3.2.2">MCQA</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T6.1.1.3.2.3">2,585</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T6.1.1.3.2.4"><cite class="ltx_cite ltx_citemacro_citep">Wang,<a class="ltx_ref" href="https://arxiv.org/html/2502.14258v1#bib.bib53" title="">2022</a>; Park et al.,<a class="ltx_ref" href="https://arxiv.org/html/2502.14258v1#bib.bib41" title="">2025</a></cite></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents statistics for the datasets used in the general question answering (QA) portion of the study.  It shows the dataset name, the format of the questions (Multiple Choice QA or MCQA), the number of test instances in each dataset, and the source or reference for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 6: Statistics of dataset used general QA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T7.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T7.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.1.1.1.1">Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S8.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.1.1.2.1">Temporal Knowledge (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T7.1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.1.1.3.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.1.1">Sports</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.2.1">Presidents</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.3.1">CEO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.4.1">Defense</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.5.1">Movies</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.6.1">GDP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S8.T7.1.1.2.2.7.1">Inflations</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.3.3" style="background-color:#BFD9EC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S8.T7.1.1.3.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T7.1.1.3.3.1.1" style="background-color:#BFD9EC;">Llama-2-7b-chat-hf - a18,h3, a15.h0</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.2">41.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.3">80.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.4">27.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.5">13.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.6">23.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.7">10.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.8">10.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.4.4.9">29.7</td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.1">Ablation</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.2"><span class="ltx_text" id="S8.T7.1.1.5.5.2.1" style="color:#FF0000;">40.0</span></td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.3">75.6</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.4"><span class="ltx_text" id="S8.T7.1.1.5.5.4.1" style="color:#FF0000;">21.3</span></td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.5">13.3</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.6"><span class="ltx_text" id="S8.T7.1.1.5.5.6.1" style="color:#FF0000;">9.37</span></td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.7">10.7</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.8">9.34</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.5.5.9">25.6</td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.6.6" style="background-color:#D4BFE1;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S8.T7.1.1.6.6.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T7.1.1.6.6.1.1" style="background-color:#D4BFE1;">Qwen1.5-7B-Chat - a17.h15</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.2">32.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.3">57.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.4">19.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.5">11.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.6">16.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.7">9.58</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.8">10.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.7.7.9">22.4</td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.1">Ablation</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.2">32.0</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.3"><span class="ltx_text" id="S8.T7.1.1.8.8.3.1" style="color:#FF0000;">49.4</span></td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.4">16.6</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.5">10.3</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.6">10.8</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.7">9.50</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.8">10.3</td>
<td class="ltx_td ltx_align_left" id="S8.T7.1.1.8.8.9">19.8</td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.9.9" style="background-color:#8EDB8A;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S8.T7.1.1.9.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T7.1.1.9.9.1.1" style="background-color:#8EDB8A;">Phi-3-mini-4k-instruct - a10.h13</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.2">24.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.3">72.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.4">30.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.5">73.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.6">21.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.7">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.8">13.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.1.1.10.10.9">35.4</td>
</tr>
<tr class="ltx_tr" id="S8.T7.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.1">Ablation</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.2">24.8</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.3">69.6</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.4">30.7</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.5"><span class="ltx_text" id="S8.T7.1.1.11.11.5.1" style="color:#FF0000;">11.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.6">21.6</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.7"><span class="ltx_text" id="S8.T7.1.1.11.11.7.1" style="color:#FF0000;">11.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.8"><span class="ltx_text" id="S8.T7.1.1.11.11.8.1" style="color:#FF0000;">11.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.1.1.11.11.9"><span class="ltx_text" id="S8.T7.1.1.11.11.9.1" style="color:#FF0000;">26.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of three different large language models (LLMs) on tasks involving temporal knowledge, specifically focusing on the accuracy of their responses to questions requiring time-specific information.  The results show the average probability of correct answers across several categories of temporal knowledge (Sports, Presidents, CEO, Defense, Movies, GDP, and Inflation) after ablating (deactivating) specific attention heads within the LLMs. The baseline performance (without ablation) is compared to the performance after ablation, allowing for assessment of the importance of those attention heads in processing temporal information.  The lowest probability (most significant performance drop) for each category after ablating the specified heads is highlighted in red.
> <details>
> <summary>read the caption</summary>
> Table 7: Total results of temporal knowledge across multiple models. Each scores were measured in probability (%) with averaging effect of multiple heads ablation results. The most dropped score for each column is colored red.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T8.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T8.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T8.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.1.1.1.1">Settings</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S8.T8.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.1.1.2.1">Time Invariant Knowledge (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S8.T8.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.1.1.3.1">General QA (F1 &amp; %)</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.1.1">Obj-Super</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.2.1">Fruit In-Color</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.3.1">Geo-Shape</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.4.1">Roman-Num</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.5.1">Average</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.6.1">TriviaQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T8.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S8.T8.1.1.2.2.7.1">Math</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.3.3" style="background-color:#BFD9EC;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S8.T8.1.1.3.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T8.1.1.3.3.1.1" style="background-color:#BFD9EC;">Llama-2-7b-chat-hf - a18,h3, a15.h0</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.2">49.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.3">75.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.4">68.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.5">53.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.6">61.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.7">55.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.4.4.8">45.4</td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.1">Ablation</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.2">50.2</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.3">75.6</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.4">68.1</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.5">53.0</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.6">61.7</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.7">54.9</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.5.5.8">45.3</td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.6.6" style="background-color:#D4BFE1;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S8.T8.1.1.6.6.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T8.1.1.6.6.1.1" style="background-color:#D4BFE1;">Qwen1.5-7B-Chat - a17.h15</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.2">48.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.3">72.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.4">69.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.5">61.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.6">62.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.7">49.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.7.7.8">77.0</td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.1">Ablation</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.2">47.8</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.3">72.0</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.4">69.3</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.5">61.1</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.6">62.6</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.7">49.5</td>
<td class="ltx_td ltx_align_left" id="S8.T8.1.1.8.8.8">77.0</td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.9.9" style="background-color:#8EDB8A;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S8.T8.1.1.9.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S8.T8.1.1.9.9.1.1" style="background-color:#8EDB8A;">Phi-3-mini-4k-instruct - a10.h13</span></td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.1">Baseline</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.2">21.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.3">76.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.4">68.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.5">73.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.6">59.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.7">46.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T8.1.1.10.10.8">80.8</td>
</tr>
<tr class="ltx_tr" id="S8.T8.1.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.1">Ablation</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.2">23.2</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.3">76.4</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.4">69.1</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.5">73.7</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.6">60.6</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.7">46.2</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T8.1.1.11.11.8">81.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of three different large language models (LLMs) on time-invariant knowledge tasks and general question answering (QA) after ablating their temporal attention heads.  The results are shown as percentages for time-invariant knowledge tasks (Object Superclass, Fruit Inside Color, Geometric Shape, Roman Numerals) and F1 scores and percentages for TriviaQA (a general QA dataset with 11,313 instances).  The scores represent the average performance after ablating multiple temporal heads, showcasing the models' robustness in the absence of temporal information. Notably, in many cases the performance remains stable or even slightly improves, even without the temporal information provided by the temporal heads.
> <details>
> <summary>read the caption</summary>
> Table 8: Total results of time invariant knowledge and general QA across multiple models. For TriviaQA, we test the unfiltered, no-context validation set (11.3k). Each scores were measured in probability (%) or f1 score with averaging effect of multiple heads ablation results. Most of cases, the scores remain stable or even goes up such as Object Superposition.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14258/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14258/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}