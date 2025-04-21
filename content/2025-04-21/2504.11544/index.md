---
title: "NodeRAG: Structuring Graph-based RAG with Heterogeneous Nodes"
summary: "NodeRAG: Structuring RAG with Heterogeneous Nodes"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Columbia University",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11544 {{< /keyword >}}
{{< keyword icon="writer" >}} Tianyang Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11544" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11544" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11544/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Graph-based RAG methods enhance LLMs by using knowledge graphs. However, many approaches lack focus on graph structure design. A poorly designed graph hinders the integration of various graph algorithms and leads to workflow issues and decreased performance. The paper addresses the above issue to unleash the potential of graphs for RAG. 



The paper proposes **NodeRAG**, a graph-centric framework with heterogeneous graph structures. This framework enables the seamless integration of graph-based methods in the RAG workflow. NodeRAG features improved graph structure, fine-grained retrieval, and unified-level information retrieval, leading to better question-answering performance and efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} NodeRAG introduces a novel graph-centric RAG framework with heterogeneous graph structures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} NodeRAG achieves superior question-answering performance and system efficiency compared to existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} NodeRAG offers a unified approach to information retrieval, enabling fine-grained and explainable results. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
NodeRAG enhances RAG by integrating graph structures into the workflow, yielding improved performance in multi-hop tasks, efficiency in indexing, query speed, and storage. It is relevant to current RAG research for its structural focus and unified data approach. It offers new research paths in graph structure optimization for RAG.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11544/x1.png)

> 🔼 This figure compares NodeRAG with four other RAG systems: NaïveRAG, HippoRAG, GraphRAG, and LightRAG.  NaïveRAG uses fragmented text chunks resulting in redundant information. HippoRAG employs knowledge graphs but lacks high-level summarization. GraphRAG retrieves community summaries but provides coarse-grained information. LightRAG incorporates one-hop neighbors, yet retrieves redundant nodes. In contrast, NodeRAG leverages a heterogeneous graph structure with multiple node types (high-level elements, semantic units, relationships) to achieve more precise, hierarchical retrieval, minimizing irrelevant information.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparsions between NodeRAG and other RAG systems. NaïveRAG retrieving fragmented text chunks, leads to redundant information. HippoRAG introduces knowledge graphs but lacks high-level summarization. GraphRAG retrieves community summaries but may still produce coarse-grained information. LightRAG incorporates one-hop neighbors but retrieves redundant nodes. In contrast, NodeRAG utilizes multiple node types, including high-level elements, semantic units, and relationships, enabling more precise, hierarchical retrieval while reducing irrelevant information.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.4.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.2.1">Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.3.1">Time (s)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.4.1">Tokens (k)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.5.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">NodeRAG (Ours)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">46.29%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.96</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.6.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">w/o HNSW</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">41.71%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.7.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">w/o Dual Search</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.57%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="4" id="S4.T2.3.8.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">w/o Cross Node</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">       Top-<math alttext="k=10" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.m1.1.1.2.cmml">k</mi><mo id="S4.T2.1.1.1.m1.1.1.1" xref="S4.T2.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><eq id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1.1"></eq><ci id="S4.T2.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.m1.1.1.2">𝑘</ci><cn id="S4.T2.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.1.1.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">k=10</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">italic_k = 10</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">41.71%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.15</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.27</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">       Top-<math alttext="k=20" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mrow id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml"><mi id="S4.T2.2.2.1.m1.1.1.2" xref="S4.T2.2.2.1.m1.1.1.2.cmml">k</mi><mo id="S4.T2.2.2.1.m1.1.1.1" xref="S4.T2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.2.2.1.m1.1.1.3" xref="S4.T2.2.2.1.m1.1.1.3.cmml">20</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><apply id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"><eq id="S4.T2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1.1"></eq><ci id="S4.T2.2.2.1.m1.1.1.2.cmml" xref="S4.T2.2.2.1.m1.1.1.2">𝑘</ci><cn id="S4.T2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.2.2.1.m1.1.1.3">20</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">k=20</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">italic_k = 20</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.43%</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.89</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">       Top-<math alttext="k=30" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mrow id="S4.T2.3.3.1.m1.1.1" xref="S4.T2.3.3.1.m1.1.1.cmml"><mi id="S4.T2.3.3.1.m1.1.1.2" xref="S4.T2.3.3.1.m1.1.1.2.cmml">k</mi><mo id="S4.T2.3.3.1.m1.1.1.1" xref="S4.T2.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T2.3.3.1.m1.1.1.3" xref="S4.T2.3.3.1.m1.1.1.3.cmml">30</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><apply id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"><eq id="S4.T2.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1.1"></eq><ci id="S4.T2.3.3.1.m1.1.1.2.cmml" xref="S4.T2.3.3.1.m1.1.1.2">𝑘</ci><cn id="S4.T2.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.3.3.1.m1.1.1.3">30</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">k=30</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">italic_k = 30</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">42.29%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">11.62</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of five RAG (Retrieval-Augmented Generation) models: NaiveRAG, HyDE, LightRAG, GraphRAG, and NodeRAG.  Part I assesses the models' performance on two benchmark datasets, HotpotQA and MuSique, using accuracy and the average number of retrieved tokens as metrics.  It also evaluates performance using Win/Tie/Loss ratios and average tokens on the Arena benchmark. Part II performs pairwise comparisons between all pairs of methods, showing the proportion of wins, ties, and losses for each pairwise comparison. Bold values indicate the best performance for each metric.
> <details>
> <summary>read the caption</summary>
> Table 1: Part I: General Comparisons evaluates NaiveRAG, HyDE, LightRAG, GraphRAG, and NodeRAG on HotpotQA and MuSiQue (accuracy and average tokens) and in the Arena using Win+Tie ratios and average tokens. Part II: Pairwise Comparisons shows the fraction of “wins' (Win(M1)), “ties' (Tie), and “losses' (Win(M2)) when comparing one RAG method against another (e.g., NodeRAG vs. GraphRAG). Bold values highlight the best performance.
> </details>





### In-depth insights


#### NodeRAG Graph
**NodeRAG Graph** likely refers to a novel approach in Retrieval-Augmented Generation (RAG) that structures information within a graph-based framework called NodeRAG. This suggests a focus on graph architecture for enhancing retrieval and question answering, moving beyond traditional methods. This could involve representing knowledge as a graph where nodes are entities, concepts, or text snippets, and edges represent relationships. A key aspect is the innovative use of heterogeneous nodes, which implies that the graph contains nodes of different types, allowing for the integration of diverse information sources and levels of abstraction. This is a promising way to enhance RAG.

#### Heterogeneous RAG
Heterogeneous RAG could significantly enhance retrieval by integrating diverse data types. **Different node structures** would allow for capturing information at varying granularities, improving both precision and recall. **Adaptive retrieval strategies** tailored to node types could further refine results. However, the complexity of managing and indexing heterogeneous data poses a challenge. Efficiently **embedding diverse node content** and designing effective cross-node relationships are crucial for realizing the full potential. Successfully implemented, this approach offers a pathway to more nuanced and context-aware RAG systems, leading to improved accuracy and relevance.

#### Graph Indexing
**Graph indexing** in retrieval-augmented generation (RAG) focuses on organizing knowledge graphs for efficient retrieval.  A key aspect involves selecting the **optimal graph structure** to represent information, impacting how effectively diverse graph algorithms are integrated.  Traditional graph-based RAG often overlooks structural design, resulting in inconsistencies and performance degradation. To address this, frameworks introduce heterogeneous graph structures, allowing for seamless integration of graph methodologies into the RAG workflow. This enables fine-grained information access and **improves retrieval precision** by aligning with LLM capabilities.  **Effective graph indexing enhances search capabilities** by leveraging structural information within the text corpus. 

#### Dual Node Search
**Dual search** is a retrieval technique that intelligently merges exact matching on structured nodes with vector similarity searches over rich informational nodes, balancing recall and precision. This hybrid approach effectively locates relevant information while mitigating issues caused by noisy or ambiguous queries by **selectively** using entry points.  Crucially, dual search utilizes graph-based expansion that promotes greater robustness, especially against query variations, and provides **scalability** for efficient processing in large scale data.

#### Efficient RAG
**Efficient RAG** demands a strategic approach to optimize retrieval speed, reduce computational costs, and minimize latency. Key areas include **indexing strategies**, such as employing vector databases and hierarchical structures for rapid similarity searches. **Compression techniques** can be employed to reduce the size of the knowledge base. **Optimizing query formulation** also plays a crucial role, ensuring relevant information is retrieved with minimal token usage. The use of **caching mechanisms** at multiple levels to store and reuse previously computed results and retrieved data can significantly improve the system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11544/x2.png)

> 🔼 This figure illustrates the three main steps involved in creating the NodeRAG heterograph: graph decomposition, graph augmentation, and graph enrichment.  Graph decomposition starts with raw text data that is processed to identify entities, relationships, and semantic units, which are represented as different node types in the graph. Graph augmentation enhances this initial graph by incorporating higher-level information derived from node importance and community detection analysis. This results in the addition of attribute and high-level element nodes to the graph. Finally, graph enrichment integrates the original text chunks, adds HNSW semantic edges and embedding nodes, further enriching the graph with context and improving search performance.  The final result is a comprehensive heterograph that is highly optimized for retrieval-augmented generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Main indexing workflow of NodeRAG. It illustrates the step-by-step construction of the heterograph, including the process of graph decomposition, graph augmentation, and graph enrichment
> </details>



![](https://arxiv.org/html/2504.11544/x3.png)

> 🔼 This figure illustrates the query processing steps within NodeRAG.  It begins by extracting entry points from the user's query. These entry points are then used to initiate a search within the heterograph, which is a knowledge graph containing various types of nodes (e.g., entities, relationships, semantic units). The search process identifies relevant nodes, including 'cross-nodes' – nodes closely related to entry points. Finally, these entry points and cross-nodes are filtered to return only the most relevant nodes for the final answer generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: This figure focuses on the querying process, where entry points are extracted from the original query, followed by searching for related nodes that need to be retrieved in the heterograph.
> </details>



![](https://arxiv.org/html/2504.11544/x4.png)

> 🔼 This ablation study analyzes the impact of varying the maximum number of iterations in the Personalized PageRank (PPR) algorithm on the overall performance of the NodeRAG system.  The figure shows the accuracy and average number of tokens retrieved, as well as the average processing time.  It illustrates how different iteration counts affect the system's ability to effectively retrieve relevant information and the computational cost associated with that retrieval process.  The optimal number of iterations balances accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 4: Ablation analysis on PPR iterations.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.1.1">Datasets</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.2.1">Corpus Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.3.1">Index Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A1.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.4.1">Storage Usage</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A1.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.5.1">Query Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A1.T3.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T3.1.1.1.1.6.1">Average Retrieval Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.2.1">
<td class="ltx_td" id="A1.T3.1.1.2.1.1"></td>
<th class="ltx_td ltx_th ltx_th_column" id="A1.T3.1.1.2.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.3">Graph</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.4">Light</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.5">Node</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.6">Graph</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.7">Light</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.8">Node</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.9">Graph-L</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.10">Graph-G</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.11">Light</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.12">Node</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.13">Graph-L</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.14">Graph-G</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.15">Light</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.1.1.2.1.16">Node</th>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.3.2.1">HotpotQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.2">1.93M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.3">66min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.4">39min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.5">21min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.6">227MB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.7">461MB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.8">214MB</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.9">2.66s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.10">26.69s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.11">5.58s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.12">3.98s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.13">6680.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.14">810529</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.15">7176.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.3.2.16">5079.40</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.4.3.1">Musique</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.2">1.84M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.3">76min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.4">90min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.5">25min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.6">255MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.7">492MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.8">250MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.9">2.94s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.10">22.65s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.11">6.53s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.12">4.05s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.13">6616.84</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.14">1111073</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.15">7458.34</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.4.3.16">5960.25</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.5.4.1">MultiHop</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.2">1.41M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.3">50min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.4">58min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.5">24min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.6">141MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.7">276MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.8">137MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.9">4.15s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.10">34.45s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.11">7.10s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.12">4.89s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.13">7367.54</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.14">920780</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.15">8920.00</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.5.4.16">5259.99</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.6.5.1">Arena-Fiqa</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.2">1.65M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.3">45min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.4">49min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.5">19min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.6">112MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.7">240MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.8">117MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.9">8.95s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.10">28.94s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.11">13.35s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.12">8.86s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.13">6819.45</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.14">713560</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.15">7721.73</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.6.5.16">3381.72</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.7.6.1">Arena-Lifestyle</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.2">1.64M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.3">52min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.4">59min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.5">18min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.6">138MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.7">278MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.8">125MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.9">7.54s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.10">33.09s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.11">10.43s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.12">6.79s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.13">6860.26</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.14">895964</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.15">6822.32</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.7.6.16">3350.35</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.8.7.1">Arena-Recreation</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.2">0.93M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.3">34min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.4">33min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.5">10min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.6">89MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.7">172MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.8">80MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.9">5.10s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.10">23.10s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.11">8.01s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.12">6.90s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.13">6669.95</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.14">564636</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.15">6249.31</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.8.7.16">3448.38</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.9.8.1">Arena-Science</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.2">1.43M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.3">43min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.4">46min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.5">17min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.6">116MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.7">236MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.8">111MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.9">8.05s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.10">35.79s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.11">14.28s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.12">8.85s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.13">6759.15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.14">778051</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.15">7111.80</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.9.8.16">4284.13</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.10.9.1">Arena-Tech</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.2">1.72M</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.3">54min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.4">54min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.5">14min</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.6">133MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.7">276MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.8">139MB</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.9">7.35s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.10">28.64s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.11">8.89s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.12">6.74s</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.13">6755.46</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.14">741690</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.15">6922.55</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.10.9.16">3821.78</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.11.10.1">Arena-Writing</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.2">1.82M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.3">50min</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.4">71min</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.5">13min</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.6">151MB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.7">309MB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.8">157MB</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.9">5.65s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.10">40.12s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.11">10.70s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.12">5.40s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.13">6477.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.14">877354</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.15">6364.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.11.10.16">3373.34</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on the NodeRAG model.  It shows the impact of removing or altering key components of the NodeRAG system on its performance. Specifically, it compares the accuracy, processing time, and number of tokens retrieved by NodeRAG with and without different components: the HNSW algorithm, the dual search mechanism, and the cross-node selection process.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of NodeRAG components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1.1">Datasets</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.2.1">Corpus Tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="7" id="A2.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.3.1">Type Statistics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A2.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.4.1">Graph Statistics</span></th>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T4.1.1.2.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A2.T4.1.1.2.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.3.1">T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.4.1">S</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.5.1">N</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.6.1">R</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.7.1">A</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.8"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.8.1">O</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.9"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.9.1">H</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.10"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.10.1">Nodes</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.11"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.11.1">Non-HNSW Edge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.12"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.12.1">HNSW Edge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.2.2.13"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.13.1">Edge</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.1.1.3.1.1">HotpotQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A2.T4.1.1.3.1.2">1.93M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.3">1985</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.4">15905</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.5">88863</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.6">56578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.7">684</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.8">4479</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.9">4479</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.10">172603</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.11">283543</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.12">487731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.1.13">759812</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.4.2.1">MuSiQue</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.4.2.2">1.84M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.3">1907</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.4">18714</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.5">99840</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.6">61964</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.7">795</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.8">5700</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.9">5700</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.10">193922</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.11">316029</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.12">583126</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2.13">888966</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.5.3.1">MultiHop-RAG</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.5.3.2">1.41M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.3">1532</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.4">10986</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.5">43184</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.6">29286</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.7">685</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.8">2289</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.9">2289</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.10">90144</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.11">171410</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.12">203199</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3.13">367486</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.6.4.1">Arena-Fiqa</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.6.4.2">1.65M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.3">1821</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.4">9027</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.5">32470</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.6">27422</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.7">508</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.8">1714</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.9">1714</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.10">74605</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.11">143916</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.12">154109</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.6.4.13">295165</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.7.5.1">Arena-Lifestyle</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.7.5.2">1.64M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.3">1794</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.4">9400</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.5">39464</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.6">27895</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.7">518</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.8">2221</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.9">2221</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.10">83461</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.11">149225</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.12">174461</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.7.5.13">318073</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.8.6.1">Arena-Recreation</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.8.6.2">0.93M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.3">1003</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.4">5542</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.5">26382</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.6">16938</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.7">413</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.8">1969</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.9">1969</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.10">54180</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.11">93228</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.12">117915</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.8.6.13">207449</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.9.7.1">Arena-Science</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.9.7.2">1.43M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.3">1583</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.4">8010</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.5">32232</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.6">23092</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.7">551</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.8">2515</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.9">2515</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.10">70425</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.11">127719</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.12">149424</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.9.7.13">276963</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.1.1.10.8.1">Arena-Tech</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A2.T4.1.1.10.8.2">1.72M</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.3">1910</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.4">10837</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.5">37724</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.6">29691</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.7">534</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.8">2633</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.9">2633</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.10">85888</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.11">167950</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.12">193159</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.10.8.13">354033</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T4.1.1.11.9.1">Arena-Writing</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A2.T4.1.1.11.9.2">1.82M</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.3">1937</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.4">11008</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.5">42723</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.6">29338</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.7">705</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.8">4435</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.9">4435</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.10">94259</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.11">149552</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.12">298565</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.11.9.13">442397</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed comparison of the performance of several Retrieval Augmented Generation (RAG) systems across various datasets.  The metrics considered are indexing time, storage space used, query processing time, and the number of tokens retrieved.  Three RAG systems are compared: GraphRAG (with both local and global modes), LightRAG (hybrid mode), and the proposed NodeRAG method. This table allows for a quantitative assessment of the efficiency and effectiveness of each RAG system.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance metrics for RAG methods, including Index Time, Storage Usage, Query Time, and Retrieval Tokens across various datasets. Graph denotes GraphRAG, with Graph-l representing its local mode and Graph-G its global mode. Light refers to LightRAG in hybrid mode, while Node represents our proposed method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T5.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1.2.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1.3.1">Avg. Processing Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1.4.1">Avg. Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.1.1.2.1.1">GraphRAG (default)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.2.1.2">37.14%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.2.1.3">4.82s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.2.1.4">10.4k</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.1.1.3.2.1">Graph-L</th>
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.3.2.2">41.71%</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.3.2.3">2.94s</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.1.3.2.4">6.6k</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.1.1.4.3.1">Graph-G</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.1.4.3.2">33.14%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.1.4.3.3">22.65s</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.1.1.4.3.4">1.11M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive overview of the datasets used in the study, providing detailed statistics on various aspects.  It breaks down the data into corpus size (total number of tokens), node type statistics (number of nodes for each type: Text (T), Semantic Unit (S), Entity (N), Relationship (R), Attribute (A), High-level Overview (O), and High-level Element (H)), and graph statistics (number of nodes, Non-HNSW edges, HNSW edges, and total edges). Each data point represents a key element for understanding and evaluating the graph-based document processing and retrieval methodologies employed in the research.
> <details>
> <summary>read the caption</summary>
> Table 4: Comprehensive dataset statistics, detailing corpus size, type statistics (T, S, N, R, A, O, H), and graph statistics. The graph statistics include the number of document compilation nodes, HNSW semantic edges, and total edges. Each value represents a key metric relevant to graph-based document processing and retrieval.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.7.7.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.7.7.8.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.7.7.8.1.1.1">Abbr.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.7.7.8.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.7.7.8.1.2.1">Full Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.7.7.8.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.7.7.8.1.3.1">Description</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.7.7.8.1.4"><span class="ltx_text ltx_font_bold" id="A3.T6.7.7.8.1.4.1">Function</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.7.7.8.1.5"><span class="ltx_text ltx_font_bold" id="A3.T6.7.7.8.1.5.1">Example</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.1.1.1"><math alttext="T" class="ltx_Math" display="inline" id="A3.T6.1.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.1.m1.1a"><mi id="A3.T6.1.1.1.1.m1.1.1" xref="A3.T6.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.1.m1.1b"><ci id="A3.T6.1.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.1.m1.1d">italic_T</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.1.1.1.2">Text</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.1.1.1.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.1.1.1.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.1.1.1.3.1.1">Full-text chunks from the original source. It contains rich detailed information, although it integrates a large amount of unrelated semantic information.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.1.1.1.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.1.1.1.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.1.1.1.4.1.1">Retrievable;</span>
<span class="ltx_p" id="A3.T6.1.1.1.4.1.2">Entry points from vector similarity</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.1.1.1.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.1.1.1.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.1.1.1.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.1.1.1.5.1.1.1">"Hinton was awarded the Nobel Prize in 2023 for his groundbreaking contributions to artificial intelligence, particularly in deep learning.
His pioneering work on backpropagation laid the foundation for modern neural networks, influencing both academia and industry.
The recognition came amid increasing discussions on the ethical implications of AI, with Hinton himself advocating for responsible AI development and regulation."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.2.2.2.1"><math alttext="S" class="ltx_Math" display="inline" id="A3.T6.2.2.2.1.m1.1"><semantics id="A3.T6.2.2.2.1.m1.1a"><mi id="A3.T6.2.2.2.1.m1.1.1" xref="A3.T6.2.2.2.1.m1.1.1.cmml">S</mi><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.1.m1.1b"><ci id="A3.T6.2.2.2.1.m1.1.1.cmml" xref="A3.T6.2.2.2.1.m1.1.1">𝑆</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.1.m1.1c">S</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.1.m1.1d">italic_S</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.2.2.2.2">Semantic Unit</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.2.2.2.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.2.2.2.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.2.2.2.3.1.1">Local summaries that are independent and meaningful events summarized from text chunks. They serve as a middle layer between text chunks and entities, acting as the basic units for graph augmentation and semantic analysis.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.2.2.2.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.2.2.2.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.2.2.2.4.1.1">Retrievable;</span>
<span class="ltx_p" id="A3.T6.2.2.2.4.1.2">Entry points from vector similarity.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.2.2.2.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.2.2.2.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.2.2.2.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.2.2.2.5.1.1.1">"Hinton was awarded the Nobel Prize for inventing backpropagation."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.3.3.3.1"><math alttext="A" class="ltx_Math" display="inline" id="A3.T6.3.3.3.1.m1.1"><semantics id="A3.T6.3.3.3.1.m1.1a"><mi id="A3.T6.3.3.3.1.m1.1.1" xref="A3.T6.3.3.3.1.m1.1.1.cmml">A</mi><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.1.m1.1b"><ci id="A3.T6.3.3.3.1.m1.1.1.cmml" xref="A3.T6.3.3.3.1.m1.1.1">𝐴</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.1.m1.1c">A</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.1.m1.1d">italic_A</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.3.3.3.2">Attribute</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.3.3.3.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.3.3.3.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.3.3.3.3.1.1">Attributes of key entities, derived from relationships and semantic units around important entities.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.3.3.3.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.3.3.3.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.3.3.3.4.1.1">Retrievable;</span>
<span class="ltx_p" id="A3.T6.3.3.3.4.1.2">Entry points from vector similarity.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.3.3.3.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.3.3.3.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.3.3.3.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.3.3.3.5.1.1.1">"Geoffrey Hinton, often referred to as the "Godfather of Deep Learning," is a pioneer in the field of artificial intelligence. In 2024, he was awarded the Nobel Prize for his contributions to AI and deep learning. "</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.4.4.1"><math alttext="H" class="ltx_Math" display="inline" id="A3.T6.4.4.4.1.m1.1"><semantics id="A3.T6.4.4.4.1.m1.1a"><mi id="A3.T6.4.4.4.1.m1.1.1" xref="A3.T6.4.4.4.1.m1.1.1.cmml">H</mi><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.4.1.m1.1b"><ci id="A3.T6.4.4.4.1.m1.1.1.cmml" xref="A3.T6.4.4.4.1.m1.1.1">𝐻</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.4.1.m1.1c">H</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.4.1.m1.1d">italic_H</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.4.4.4.2">High-Level Element</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.4.4.4.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.4.4.4.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.4.4.4.3.1.1">Insights summarizing graph communities. Encapsulates core information or any high level ideas from a community.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.4.4.4.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.4.4.4.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.4.4.4.4.1.1">Retrievable;</span>
<span class="ltx_p" id="A3.T6.4.4.4.4.1.2">Entry points from vector similarity.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.4.4.4.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.4.4.4.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.4.4.4.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.4.4.4.5.1.1.1">"Due to the increasing importance of AI, the Nobel Prize is awarded to scholars who have made tremendous contributions to the field of AI."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.5.5.5.1"><math alttext="O" class="ltx_Math" display="inline" id="A3.T6.5.5.5.1.m1.1"><semantics id="A3.T6.5.5.5.1.m1.1a"><mi id="A3.T6.5.5.5.1.m1.1.1" xref="A3.T6.5.5.5.1.m1.1.1.cmml">O</mi><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.5.1.m1.1b"><ci id="A3.T6.5.5.5.1.m1.1.1.cmml" xref="A3.T6.5.5.5.1.m1.1.1">𝑂</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.5.1.m1.1c">O</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.5.1.m1.1d">italic_O</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.5.5.5.2">High-Level Overview</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.5.5.5.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.5.5.5.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.5.5.5.3.1.1">Titles or keywords summarizing</span>
<span class="ltx_p" id="A3.T6.5.5.5.3.1.2">high-level elements.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.5.5.5.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.5.5.5.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.5.5.5.4.1.1">Non-Retrievable;</span>
<span class="ltx_p" id="A3.T6.5.5.5.4.1.2">Entry points from accurate search.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.5.5.5.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.5.5.5.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.5.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.5.5.5.5.1.1.1">"AI significance"</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.6.6.6.1"><math alttext="R" class="ltx_Math" display="inline" id="A3.T6.6.6.6.1.m1.1"><semantics id="A3.T6.6.6.6.1.m1.1a"><mi id="A3.T6.6.6.6.1.m1.1.1" xref="A3.T6.6.6.6.1.m1.1.1.cmml">R</mi><annotation-xml encoding="MathML-Content" id="A3.T6.6.6.6.1.m1.1b"><ci id="A3.T6.6.6.6.1.m1.1.1.cmml" xref="A3.T6.6.6.6.1.m1.1.1">𝑅</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.6.6.1.m1.1c">R</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.6.6.1.m1.1d">italic_R</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.6.6.6.2">Relationship</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.6.6.6.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.6.6.6.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.6.6.6.3.1.1">Connections between entities represented as nodes. Acts as connector nodes and secondary retrievable node.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.6.6.6.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.6.6.6.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.6.6.6.4.1.1">Retrievable;</span>
<span class="ltx_p" id="A3.T6.6.6.6.4.1.2">Non-Entry points</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T6.6.6.6.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.6.6.6.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.6.6.6.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.6.6.6.5.1.1.1">"Hinton received the Nobel Prize."</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.7.7.7.1"><math alttext="N" class="ltx_Math" display="inline" id="A3.T6.7.7.7.1.m1.1"><semantics id="A3.T6.7.7.7.1.m1.1a"><mi id="A3.T6.7.7.7.1.m1.1.1" xref="A3.T6.7.7.7.1.m1.1.1.cmml">N</mi><annotation-xml encoding="MathML-Content" id="A3.T6.7.7.7.1.m1.1b"><ci id="A3.T6.7.7.7.1.m1.1.1.cmml" xref="A3.T6.7.7.7.1.m1.1.1">𝑁</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.7.7.1.m1.1c">N</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.7.7.1.m1.1d">italic_N</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.7.7.7.2">Entity</th>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.7.7.7.3">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.7.7.7.3.1" style="width:128.0pt;">
<span class="ltx_p" id="A3.T6.7.7.7.3.1.1">Named entities such as people, places, or concepts.</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.7.7.7.4">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.7.7.7.4.1" style="width:99.6pt;">
<span class="ltx_p" id="A3.T6.7.7.7.4.1.1">Non-Retrievable;</span>
<span class="ltx_p" id="A3.T6.7.7.7.4.1.2">Entry points from accurate search..</span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.7.7.7.5">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A3.T6.7.7.7.5.1" style="width:136.6pt;">
<span class="ltx_p" id="A3.T6.7.7.7.5.1.1"><span class="ltx_text ltx_font_italic" id="A3.T6.7.7.7.5.1.1.1">"Hinton," "Nobel Prize"</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different GraphRAG variants.  The 'Default' column shows results using the original settings of GraphRAG. The 'Local' and 'Global' columns display results obtained by using a unified prompt and consistent hyperparameters but employing only local or both global and local retrieval methods respectively. The metrics used for comparison include accuracy and average processing time, as well as the average number of tokens retrieved.  This allows for analysis of how different retrieval strategies within GraphRAG impact its overall performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance Comparison of GraphRAG Variants. Default is the default setting. Local and global represent the local and global modes under unified prompt and hyperparameter settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A4.T7.1.1.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.1.1.1.1">
<span class="ltx_p" id="A4.T7.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.1.1.1">Question1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T7.1.1.1.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.1.1.2.1">
<span class="ltx_p" id="A4.T7.1.1.1.2.1.1">Why isn’t there public transport on Christmas day in the UK?</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T7.1.2.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.2.1.1.1">
<span class="ltx_p" id="A4.T7.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.1.1.1.1.1">NodeRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T7.1.2.1.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.2.1.2.1">
<span class="ltx_p" id="A4.T7.1.2.1.2.1.1">The absence of public transport on Christmas Day in the UK can be attributed to a combination of historical, cultural, and economic factors. <span class="ltx_text ltx_font_bold" id="A4.T7.1.2.1.2.1.1.1" style="color:#008B00;">Historically<span class="ltx_text ltx_font_medium" id="A4.T7.1.2.1.2.1.1.1.1">, public transport services were more prevalent on Christmas Day </span>before World War II<span class="ltx_text ltx_font_medium" id="A4.T7.1.2.1.2.1.1.1.2">,</span></span> as many people worked on that day and required transportation. However, over the years, societal norms have shifted, leading to a significant reduction in demand for public transport services on Christmas Day.</span>
<span class="ltx_p" id="A4.T7.1.2.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A4.T7.1.2.1.2.1.2.1" style="color:#008B00;">In contemporary society<span class="ltx_text ltx_font_medium" id="A4.T7.1.2.1.2.1.2.1.1">, Christmas is widely recognized as a time for family gatherings and celebrations, which diminishes the need for public transport.</span></span> Many people choose to spend the day at home or with relatives, resulting in a lower demand for transit services. Consequently, transport companies have adapted to this change by suspending services on Christmas Day, allowing transit workers to enjoy the holiday with their families as well.</span>
<span class="ltx_p" id="A4.T7.1.2.1.2.1.3">Additionally, <span class="ltx_text" id="A4.T7.1.2.1.2.1.3.1" style="color:#008B00;">the <span class="ltx_text ltx_font_bold" id="A4.T7.1.2.1.2.1.3.1.1">operational costs</span> associated with running public transport services on Christmas Day can be significant</span>. With minimal passenger demand, the financial viability of providing such services becomes questionable. Railways and other transport providers often use this time for maintenance and engineering work, taking advantage of the reduced disruption to carry out necessary improvements.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T7.1.3.2.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.3.2.1.1">
<span class="ltx_p" id="A4.T7.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.3.2.1.1.1.1">GraphRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T7.1.3.2.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.3.2.2.1">
<span class="ltx_p" id="A4.T7.1.3.2.2.1.1">Public transport in the UK is significantly limited on Christmas Day due to a combination of historical, cultural, and operational factors. Traditionally, Christmas Day is a public holiday in the UK, and many businesses, including public transport services, close to allow employees to spend time with their families and celebrate the holiday. This practice is rooted in the cultural significance of Christmas, which emphasizes family gatherings and community celebrations.</span>
<span class="ltx_p" id="A4.T7.1.3.2.2.1.2">The limited operation of public transport on Christmas Day is also influenced by the low demand for services. Historically, fewer people travel on this day compared to other holidays or weekends, as many individuals prefer to stay home or visit family. As a result, transport providers often find it economically unfeasible to run full services when the number of passengers is expected to be minimal.</span>
<span class="ltx_p" id="A4.T7.1.3.2.2.1.3">In recent years, some transport services have begun to offer limited services on Christmas Day, particularly in major cities like London, where there may be a demand for travel to events or gatherings. However, these services are typically not as extensive as those available on other public holidays or regular days. Overall, the combination of cultural practices, low demand, and operational considerations contributes to the lack of public transport on Christmas Day in the UK.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T7.1.4.3.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.4.3.1.1">
<span class="ltx_p" id="A4.T7.1.4.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.4.3.1.1.1.1">LightRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T7.1.4.3.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.4.3.2.1">
<span class="ltx_p" id="A4.T7.1.4.3.2.1.1">In most parts of the world, official or religious holidays are taken very seriously. On such days, employers typically have to pay higher rates to staff who are willing to work, but that effort often doesn’t pay off due to low customer turnout. Families tend to arrange their travel plans by Christmas Eve to avoid the need for transportation on Christmas Day. Christmas avoids unnecessary travel because it’s typically a day filled with home activities, and it allows workers in various roles to have a day off. The lack of public demand and the staff’s resistance contributed to the lack of services on Christmas Day. Christmas Day is also an opportune time to perform engineering work on railways with minimal disruption. The railroad industry is capable of completing extensive projects during this period, thanks to thorough planning and pre-staging.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A4.T7.1.5.4.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.5.4.1.1">
<span class="ltx_p" id="A4.T7.1.5.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T7.1.5.4.1.1.1.1">LLM 
<br class="ltx_break"/>Decision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" id="A4.T7.1.5.4.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.5.4.2.1">
<span class="ltx_p" id="A4.T7.1.5.4.2.1.1">ORDER: {“1": “GraphRAG", “2": “NodeRAG"}</span>
<span class="ltx_p" id="A4.T7.1.5.4.2.1.2">Both answers provide a comprehensive explanation, but <span class="ltx_text" id="A4.T7.1.5.4.2.1.2.1" style="color:#CDAD00;">answer 2 adds <span class="ltx_text ltx_font_bold" id="A4.T7.1.5.4.2.1.2.1.1">historical context</span> about public transport before World War II and mentions the use of the holiday for maintenance work, offering slightly <span class="ltx_text ltx_font_bold" id="A4.T7.1.5.4.2.1.2.1.2">more depth</span></span>.</span>
<span class="ltx_p" id="A4.T7.1.5.4.2.1.3">ORDER: {“1": “LightRAG", “2": “NodeRAG"}</span>
<span class="ltx_p" id="A4.T7.1.5.4.2.1.4">Both answers provide a comprehensive explanation, but <span class="ltx_text" id="A4.T7.1.5.4.2.1.4.1" style="color:#CDAD00;">answer 2 adds <span class="ltx_text ltx_font_bold" id="A4.T7.1.5.4.2.1.4.1.1">historical context</span> about the change in public transport services since World War II, which <span class="ltx_text ltx_font_bold" id="A4.T7.1.5.4.2.1.4.1.2">enriches the explanation</span>. Therefore, answer 2 is slightly better</span>.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the seven node types used to construct the heterograph in NodeRAG.  For each node type, it provides the abbreviation, full name, a description of the node's function within the graph, and an example. The node types represent different aspects of the information, enabling fine-grained and functional decomposition of data within the knowledge graph.
> <details>
> <summary>read the caption</summary>
> Table 6: Node Types in the heterograph
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A4.T8.1.1.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.1.1.1">
<span class="ltx_p" id="A4.T8.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1.1.1">Question2</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A4.T8.1.1.1.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.1.2.1">
<span class="ltx_p" id="A4.T8.1.1.1.2.1.1">What are rabbit hides used for in Minecraft?</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T8.1.2.1.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.1.1.1">
<span class="ltx_p" id="A4.T8.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.2.1.1.1.1.1">NodeRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T8.1.2.1.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.1.2.1">
<span class="ltx_p" id="A4.T8.1.2.1.2.1.1">In Minecraft, rabbit hides serve a couple of useful purposes, particularly in crafting and resource management. <span class="ltx_text" id="A4.T8.1.2.1.2.1.1.1" style="color:#008B00;">One of the primary uses of rabbit hides is to craft leather</span>. Players can combine four rabbit hides in a 2x2 crafting grid to create one piece of leather. This is especially beneficial in Survival Multiplayer (SMP) scenarios where finding other animals for leather can be challenging.</span>
<span class="ltx_p" id="A4.T8.1.2.1.2.1.2">Additionally, <span class="ltx_text" id="A4.T8.1.2.1.2.1.2.1" style="color:#008B00;">rabbits can drop a unique item known as the <span class="ltx_text ltx_font_bold" id="A4.T8.1.2.1.2.1.2.1.1">“rabbit’s foot"</span>, which is an important ingredient for brewing potions. The rabbit’s foot is specifically used in the crafting of the <span class="ltx_text ltx_font_bold" id="A4.T8.1.2.1.2.1.2.1.2">Potion of Leaping</span></span>, which grants players the ability to jump higher for a limited time. Thus, rabbit hides and their associated drops contribute significantly to crafting and potion-making in the game, enhancing the overall gameplay experience.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T8.1.3.2.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.2.1.1">
<span class="ltx_p" id="A4.T8.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.3.2.1.1.1.1">GraphRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T8.1.3.2.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.2.2.1">
<span class="ltx_p" id="A4.T8.1.3.2.2.1.1">In Minecraft, rabbit hides are primarily used to craft leather. Players can combine four rabbit hides in a 2x2 crafting grid to create one piece of leather. This crafting option is particularly useful for players who may not have access to cows, which are the traditional source of leather in the game.</span>
<span class="ltx_p" id="A4.T8.1.3.2.2.1.2">Additionally, rabbit hides can be beneficial in multiplayer servers that utilize entity clears, as finding animals can be challenging. By using rabbit hides to craft leather, players have an alternative method to obtain this valuable resource, which is essential for crafting various items, including armor and books.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A4.T8.1.4.3.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.3.1.1">
<span class="ltx_p" id="A4.T8.1.4.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.4.3.1.1.1.1">LightRAG</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A4.T8.1.4.3.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.3.2.1">
<span class="ltx_p" id="A4.T8.1.4.3.2.1.1">In Minecraft, Rabbit Hides are primarily used as a crafting resource. They can be combined with other materials to create leather, which is an essential item in the game. Leather is used for crafting various items, including armor (like leather armor), books, item frames, and more.</span>
<span class="ltx_p" id="A4.T8.1.4.3.2.1.2">The process of obtaining Rabbit Hides involves hunting rabbits, which can be found in various biomes. Once collected, players can use the hides in their crafting recipes to enhance their gameplay experience through resource management and item creation. This highlights the importance of Rabbit Hides within the broader crafting mechanics of Minecraft.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A4.T8.1.5.4.1" style="width:56.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.4.1.1">
<span class="ltx_p" id="A4.T8.1.5.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.5.4.1.1.1.1">LLM 
<br class="ltx_break"/>Decision</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" id="A4.T8.1.5.4.2" style="width:398.3pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.4.2.1">
<span class="ltx_p" id="A4.T8.1.5.4.2.1.1">ORDER: {“1": “TGRAG", “2": “GraphRAG"}</span>
<span class="ltx_p" id="A4.T8.1.5.4.2.1.2">Both answers are truthful, but <span class="ltx_text" id="A4.T8.1.5.4.2.1.2.1" style="color:#CDAD00;">answer 1 provides more <span class="ltx_text ltx_font_bold" id="A4.T8.1.5.4.2.1.2.1.1">detailed information</span> about the uses of rabbit hides, including the additional use of <span class="ltx_text ltx_font_bold" id="A4.T8.1.5.4.2.1.2.1.2">rabbit’s foot for potion-making</span> Therefore, answer 1 is better.</span></span>
<span class="ltx_p" id="A4.T8.1.5.4.2.1.3">ORDER: {“1": “TGRAG", “2": “LightRAG"}</span>
<span class="ltx_p" id="A4.T8.1.5.4.2.1.4">Both answers are truthful, but <span class="ltx_text" id="A4.T8.1.5.4.2.1.4.1" style="color:#CDAD00;">answer 1 provides more <span class="ltx_text ltx_font_bold" id="A4.T8.1.5.4.2.1.4.1.1">detailed information</span> about the uses of rabbit hides, including the crafting of leather and <span class="ltx_text ltx_font_bold" id="A4.T8.1.5.4.2.1.4.1.2">the rabbit’s foot for potions</span>. Therefore, answer 1 is better.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents two example questions and their corresponding answers generated by three different RAG systems: NodeRAG, GraphRAG, and LightRAG.  Each question is followed by the answers from each system, demonstrating their ability to answer complex, multi-hop queries. The table showcases qualitative differences in the depth and detail of the generated answers, highlighting the advantages and limitations of each method.  A final column indicates an LLM's judgment on which answer is superior for each question.
> <details>
> <summary>read the caption</summary>
> Table 7: Sample Table with Multi-line Text
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11544/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11544/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}