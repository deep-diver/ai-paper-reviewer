---
title: "PaSa: An LLM Agent for Comprehensive Academic Paper Search"
summary: "PaSa: An LLM agent autonomously performs comprehensive academic paper searches, outperforming existing methods by efficiently combining search tools, paper reading, and citation analysis, optimized vi..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-01-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.10120 {{< /keyword >}}
{{< keyword icon="writer" >}} Yichen He et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.10120" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.10120" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.10120/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Academic paper search is challenging due to long-tail queries and the need for comprehensive surveys. Existing tools often fall short, causing researchers to spend considerable time conducting literature reviews. This paper introduces PaSa, an AI-powered paper search agent that can autonomously manage multiple tasks such as invoking search tools, reading papers, and selecting relevant references. This is achieved by using Large Language Models (LLMs) and optimizing it with reinforcement learning. 

PaSa is trained using a new synthetic dataset, AutoScholarQuery, and then evaluated using a real-world benchmark dataset, RealScholarQuery.  The results show PaSa significantly outperforms existing baselines in terms of recall and precision, demonstrating its effectiveness in addressing complex scholarly queries.  The method includes a Crawler LLM agent that automatically invokes search tools and extracts citations, and a Selector LLM agent that carefully reads each paper to assess its relevance.  The study also provides both datasets and code for reproducibility, making it a valuable contribution to the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PaSa, a novel LLM-powered agent, autonomously performs comprehensive academic paper searches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PaSa significantly outperforms existing baselines like Google Scholar, achieving substantial improvements in recall and precision. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PaSa utilizes reinforcement learning with newly created high-quality datasets (AutoScholarQuery and RealScholarQuery) for effective training and evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers seeking to improve academic literature searches.  **PaSa's autonomous approach to literature review**, using LLMs to refine queries, read papers, and navigate citations, is highly relevant to current research trends and offers a significant improvement over existing methods.  The study also provides valuable **datasets (AutoScholarQuery and RealScholarQuery)** that can benefit the wider research community.  It paves the way for future work developing more sophisticated AI-powered research tools.

------
#### Visual Insights



![](https://arxiv.org/html/2501.10120/x2.png)

> 🔼 PaSa's architecture centers around two large language model (LLM) agents: the Crawler and the Selector.  The Crawler starts by processing a user's research query. It then autonomously interacts with search engines, retrieves papers, and expands its search by following citations.  All retrieved papers are added to a queue. The Selector then takes each paper from the queue and evaluates whether it matches the user's query criteria, effectively filtering results based on relevance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Architecture of PaSa. The system consists of two LLM agents, Crawler and Selector. The Crawler processes the user query and can access papers from the paper queue. It can autonomously invoke the search tool, expand citations, or stop processing of the current paper. All papers collected by the Crawler are appended to the paper queue. The Selector reads each paper in the paper queue to determine whether it meets the criteria specified in the user query.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1" style="width:542.0pt;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1.1.1.1.1">
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1.1.1.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1.1.1.1.1.1.1">Query:</span> Could you provide me some studies that proposed hierarchical neural models to capture spatiotemporal features in sign videos?</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1.1.2.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1.1.2.1.1.1.1">Query Date:</span> 2023-05-02</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1.1.3.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1.1.3.1.1.1.1">Answer Papers:</span></span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1.1.4.1.1.1" style="width:542.0pt;">[1] TSPNet: Hierarchical Feature Learning via Temporal Semantic Pyramid for Sign Language Translation</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1.1.5.1.1.1" style="width:542.0pt;">[2] Sign Language Translation with Hierarchical Spatio-Temporal Graph Neural Network</span>
</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="S3.T1.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.2.2.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1.1.1">Source:</span> SLTUnet: A Simple Unified Model for Sign Language Translation, ICLR 2023</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1" style="width:542.0pt;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.3.3.1.1.1.1">
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.1.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1.1.1.1.1.1.1.1">Query:</span> Which studies have focused on nonstationary RL using value-based methods, specifically Upper Confidence Bound (UCB) based algorithms?</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.2.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1.1.1.2.1.1.1.1">Query Date:</span> 2023-08-10</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.3.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1.1.1.3.1.1.1.1">Answer Papers:</span></span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.4.1.1.1" style="width:542.0pt;">[1] Reinforcement Learning for Non-Stationary Markov Decision Processes: The Blessing of (More) Optimism</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.5.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.5.1.1.1" style="width:542.0pt;">[2] Efficient Learning in Non-Stationary Linear Markov Decision Processes</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.6">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.6.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.6.1.1.1" style="width:542.0pt;">[3] Nonstationary Reinforcement Learning with Linear Function Approximation</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.3.3.1.1.1.1.7">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.3.1.1.1.1.7.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.3.1.1.1.1.7.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1.1.1.7.1.1.1.1">Source:</span> Provably Efficient Algorithm for Nonstationary Low-Rank MDPs, NeurIPS 2023</span>
</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.1.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1" style="width:542.0pt;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.4.4.1.1.1.1">
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.1.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1.1.1.1.1.1.1.1">Query:</span> Which studies have been conducted in long-form text generation, specifically in story generation?</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.2.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1.1.1.2.1.1.1.1">Query Date:</span> 2024-01-26</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.3.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1.1.1.3.1.1.1.1">Answer Papers:</span></span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.4.1.1.1" style="width:542.0pt;">[1] Strategies for Structuring Story Generation</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.5.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.5.1.1.1" style="width:542.0pt;">[2] MEGATRON-CNTRL: Controllable Story Generation with External Knowledge Using Large-Scale Language Models</span>
</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.4.4.1.1.1.1.6">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.4.1.1.1.1.6.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.4.1.1.1.1.6.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1.1.1.6.1.1.1.1">Source:</span> ProxyQA: An Alternative Framework for Evaluating Long-Form Text Generation with Large Language Models, ACL 2024</span>
</span></span></span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents example queries from the AutoScholarQuery dataset and their corresponding papers.  Each row shows a sample scholarly query, the date the query was generated, and a list of papers identified as relevant to the query.  The purpose is to illustrate the complexity and nuance of academic research queries and the level of detail captured in the dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of queries and corresponding papers in AutoScholarQuery.
> </details>





### In-depth insights


#### LLM-Agent Design
Designing an effective LLM-agent for academic paper search involves careful consideration of several key aspects.  **Modular Design** is crucial, separating functionalities like query generation, search execution, paper selection, and citation analysis into distinct modules. This allows for easier development, testing, and potential future expansion.  **Agent Interaction** needs to be clearly defined. How do the different modules communicate and exchange information?  A robust **state management system** is vital to track the agent's progress and maintain context across multiple steps. The agent should efficiently store and retrieve information on processed papers, search results, and discovered citations.  **Reinforcement learning** is likely essential for optimization, allowing the agent to learn effective strategies through trial and error based on a well-defined reward function.  **Data efficiency** must be prioritized; the agent should ideally learn effectively with limited data, reducing the need for massive training datasets.  Finally, **evaluation metrics** beyond simple recall and precision must be developed to comprehensively assess the agent's performance in handling complex research queries and navigating nuanced citation networks.

#### RL Training
The section on "RL Training" would detail the reinforcement learning process used to optimize the PaSa agent.  This would involve describing the chosen RL algorithm (likely Proximal Policy Optimization or a variant), the reward function design which is crucial for guiding the agent's learning towards desired behavior, the specifics of the training environment (likely involving synthetic and real-world academic query datasets), and any challenges encountered during training.  **Key aspects to look for include how the sparse reward problem was addressed**, given the inherent difficulty in automatically evaluating the relevance of papers to complex queries, and **how the long trajectories characteristic of academic research were handled**. The description should also cover the training setup, including computational resources and the implementation details such as the use of session-level training and imitation learning to enhance learning efficiency and stability.  **The evaluation metrics used to monitor the training process**, such as recall, precision, and potentially custom metrics tailored to the specific task of academic paper search would also be critical to understanding the effectiveness of the RL approach. Finally, the authors would ideally discuss the convergence of the training process and the final performance achieved by the trained agent on benchmark datasets.

#### Benchmark Datasets
Benchmark datasets are crucial for evaluating the performance of any academic paper search agent.  A well-constructed benchmark should reflect real-world search scenarios, including diverse query types and complexities, and incorporate a range of relevant and irrelevant papers. **Synthetic datasets** can offer controlled environments for initial model training and validation, but **real-world datasets** are essential for assessing generalizability and robustness.  The ideal benchmark balances the benefits of controlled, high-quality synthetic data with the realistic challenges of real-world queries.  Ideally, a dataset includes a clear methodology for data collection, annotation, and evaluation metrics.  **Careful consideration** of dataset bias and limitations is necessary for fair comparison and to avoid misleading conclusions.  Furthermore, the process of creating a comprehensive benchmark is iterative, and datasets should be updated regularly to reflect the evolution of research and the dynamics of information retrieval.

#### Ablation Studies
Ablation studies systematically remove components of a model to assess their individual contributions.  In a research paper, this section would detail experiments where aspects of the proposed method (e.g., specific modules, training techniques, or data augmentation strategies) are selectively omitted.  The results, often presented as performance metrics, reveal the impact of each removed component.  **A well-executed ablation study demonstrates the importance of each element, justifying design choices and supporting the overall claims of the paper.**  It is crucial to carefully select which elements to ablate to address the central research questions.  **The interpretation of results requires a nuanced understanding**, acknowledging potential interactions between components and the limitations of the experimental setup.  **Inconsistencies or unexpected results may highlight areas for future investigation and refinement.**  The value of an ablation study lies in its ability to dissect a complex system, isolating the effects of individual parts and providing deeper insights into the model's inner workings.  It offers more than just validation – **it reveals the *why* behind the model's effectiveness.** The clarity and thoroughness of the ablation study contribute significantly to the paper's scientific credibility and its broader impact.

#### Future Research
Future research directions stemming from this paper could fruitfully explore several avenues.  **Firstly**, a deeper investigation into the limitations of current LLM architectures for complex academic search is warranted. This would include analyzing the impact of different LLM sizes and architectural designs on the accuracy and efficiency of the search process, potentially identifying bottlenecks or areas for optimization. **Secondly**, the development of more sophisticated evaluation metrics beyond recall and precision is crucial to fully assess the performance of these systems.  Existing benchmarks may not capture the nuances of complex, nuanced academic queries and retrieval.  **Thirdly**, expanding the scope of the datasets used to train and evaluate these models, incorporating additional domains and query types, would enhance the robustness and generalizability of the system.  **Finally,** integrating user feedback mechanisms could lead to models capable of adapting dynamically to individual user needs and search styles, creating truly personalized and intuitive academic research tools.  The current work provides a strong foundation, and these research directions will contribute to improved search capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.10120/x3.png)

> 🔼 The figure illustrates the PaSa system's workflow, focusing on the Crawler agent's actions. The Crawler uses multiple search queries (diverse and complementary) to retrieve papers. It also assesses the long-term impact of its actions and explores citation networks deeply to find relevant papers, even if some intermediate papers aren't directly related to the user's query.
> <details>
> <summary>read the caption</summary>
> Figure 2: An example of the PaSa workflow. The Crawler runs multiple [Search] using diverse and complementary queries. In addition, the Crawler can evaluate the long-term value of its actions. Notably, it discovers many relevant papers as it explores deeper on the citation network, even when intermediate papers along the path do not align with the user query.
> </details>



![](https://arxiv.org/html/2501.10120/x4.png)

> 🔼 This figure displays the return and value function loss curves throughout the Proximal Policy Optimization (PPO) training process.  The curves are smoothed using an exponential moving average (EMA) method, with a smoothing weight of 0.95, consistent with the smoothing technique used in TensorBoard.  The x-axis represents training steps, while the y-axis shows the return and value function loss.
> <details>
> <summary>read the caption</summary>
> Figure 3: Return and value function loss curves during the PPO training process. The smoothing method of the curve in the figures is the exponential moving average(EMA) formula that aligns with the one used in TensorBoard, and the smoothing weight is set to 0.95.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T2.7.7.7.8">Conference</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1"><math alttext="|P|" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mrow id="S3.T2.1.1.1.1.m1.1.2.2" xref="S3.T2.1.1.1.1.m1.1.2.1.cmml"><mo id="S3.T2.1.1.1.1.m1.1.2.2.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.2.1.1.cmml">|</mo><mi id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml">P</mi><mo id="S3.T2.1.1.1.1.m1.1.2.2.2" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.2.1.1.cmml">|</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.2.1.cmml" xref="S3.T2.1.1.1.1.m1.1.2.2"><abs id="S3.T2.1.1.1.1.m1.1.2.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.2.2.1"></abs><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">|P|</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">| italic_P |</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.2.2.2.2"><math alttext="|Q|" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mrow id="S3.T2.2.2.2.2.m1.1.2.2" xref="S3.T2.2.2.2.2.m1.1.2.1.cmml"><mo id="S3.T2.2.2.2.2.m1.1.2.2.1" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.2.1.1.cmml">|</mo><mi id="S3.T2.2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.cmml">Q</mi><mo id="S3.T2.2.2.2.2.m1.1.2.2.2" stretchy="false" xref="S3.T2.2.2.2.2.m1.1.2.1.1.cmml">|</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.m1.1.2.1.cmml" xref="S3.T2.2.2.2.2.m1.1.2.2"><abs id="S3.T2.2.2.2.2.m1.1.2.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.2.2.1"></abs><ci id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">𝑄</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">|Q|</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">| italic_Q |</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.3.3.3"><math alttext="Ans(/Q)" class="ltx_math_unparsed" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mrow id="S3.T2.3.3.3.3.m1.1b"><mi id="S3.T2.3.3.3.3.m1.1.1">A</mi><mi id="S3.T2.3.3.3.3.m1.1.2">n</mi><mi id="S3.T2.3.3.3.3.m1.1.3">s</mi><mrow id="S3.T2.3.3.3.3.m1.1.4"><mo id="S3.T2.3.3.3.3.m1.1.4.1" stretchy="false">(</mo><mo id="S3.T2.3.3.3.3.m1.1.4.2" lspace="0em">/</mo><mi id="S3.T2.3.3.3.3.m1.1.4.3">Q</mi><mo id="S3.T2.3.3.3.3.m1.1.4.4" stretchy="false">)</mo></mrow></mrow><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">Ans(/Q)</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">italic_A italic_n italic_s ( / italic_Q )</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.5.5.5">
<math alttext="Ans" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mrow id="S3.T2.4.4.4.4.m1.1.1" xref="S3.T2.4.4.4.4.m1.1.1.cmml"><mi id="S3.T2.4.4.4.4.m1.1.1.2" xref="S3.T2.4.4.4.4.m1.1.1.2.cmml">A</mi><mo id="S3.T2.4.4.4.4.m1.1.1.1" xref="S3.T2.4.4.4.4.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.4.4.4.4.m1.1.1.3" xref="S3.T2.4.4.4.4.m1.1.1.3.cmml">n</mi><mo id="S3.T2.4.4.4.4.m1.1.1.1a" xref="S3.T2.4.4.4.4.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.4.4.4.4.m1.1.1.4" xref="S3.T2.4.4.4.4.m1.1.1.4.cmml">s</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><apply id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1"><times id="S3.T2.4.4.4.4.m1.1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1.1"></times><ci id="S3.T2.4.4.4.4.m1.1.1.2.cmml" xref="S3.T2.4.4.4.4.m1.1.1.2">𝐴</ci><ci id="S3.T2.4.4.4.4.m1.1.1.3.cmml" xref="S3.T2.4.4.4.4.m1.1.1.3">𝑛</ci><ci id="S3.T2.4.4.4.4.m1.1.1.4.cmml" xref="S3.T2.4.4.4.4.m1.1.1.4">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">Ans</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">italic_A italic_n italic_s</annotation></semantics></math>-<math alttext="50" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m2.1"><semantics id="S3.T2.5.5.5.5.m2.1a"><mn id="S3.T2.5.5.5.5.m2.1.1" xref="S3.T2.5.5.5.5.m2.1.1.cmml">50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m2.1b"><cn id="S3.T2.5.5.5.5.m2.1.1.cmml" type="integer" xref="S3.T2.5.5.5.5.m2.1.1">50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m2.1c">50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m2.1d">50</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.7.7.7.7">
<math alttext="Ans" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><mrow id="S3.T2.6.6.6.6.m1.1.1" xref="S3.T2.6.6.6.6.m1.1.1.cmml"><mi id="S3.T2.6.6.6.6.m1.1.1.2" xref="S3.T2.6.6.6.6.m1.1.1.2.cmml">A</mi><mo id="S3.T2.6.6.6.6.m1.1.1.1" xref="S3.T2.6.6.6.6.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.6.6.6.6.m1.1.1.3" xref="S3.T2.6.6.6.6.m1.1.1.3.cmml">n</mi><mo id="S3.T2.6.6.6.6.m1.1.1.1a" xref="S3.T2.6.6.6.6.m1.1.1.1.cmml">⁢</mo><mi id="S3.T2.6.6.6.6.m1.1.1.4" xref="S3.T2.6.6.6.6.m1.1.1.4.cmml">s</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><apply id="S3.T2.6.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1"><times id="S3.T2.6.6.6.6.m1.1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1.1"></times><ci id="S3.T2.6.6.6.6.m1.1.1.2.cmml" xref="S3.T2.6.6.6.6.m1.1.1.2">𝐴</ci><ci id="S3.T2.6.6.6.6.m1.1.1.3.cmml" xref="S3.T2.6.6.6.6.m1.1.1.3">𝑛</ci><ci id="S3.T2.6.6.6.6.m1.1.1.4.cmml" xref="S3.T2.6.6.6.6.m1.1.1.4">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">Ans</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">italic_A italic_n italic_s</annotation></semantics></math>-<math alttext="90" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.m2.1"><semantics id="S3.T2.7.7.7.7.m2.1a"><mn id="S3.T2.7.7.7.7.m2.1.1" xref="S3.T2.7.7.7.7.m2.1.1.cmml">90</mn><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.m2.1b"><cn id="S3.T2.7.7.7.7.m2.1.1.cmml" type="integer" xref="S3.T2.7.7.7.7.m2.1.1">90</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.m2.1c">90</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.m2.1d">90</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.7.7.8.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.7.7.8.1.1">ICLR 2023</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.8.1.2">888</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.8.1.3">5204</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.8.1.4">2.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.8.1.5">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.8.1.6">5.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.9.2">
<td class="ltx_td ltx_align_left" id="S3.T2.7.7.9.2.1">ICML 2023</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2.2">981</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2.3">5743</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2.4">2.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2.5">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.9.2.6">5.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.10.3">
<td class="ltx_td ltx_align_left" id="S3.T2.7.7.10.3.1">NeurIPS 2023</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3.2">1948</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3.3">11761</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3.4">2.59</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3.5">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.10.3.6">5.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.11.4">
<td class="ltx_td ltx_align_left" id="S3.T2.7.7.11.4.1">CVPR 2024</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.4.2">1336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.4.3">9528</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.4.4">2.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.4.5">2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.11.4.6">6.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7.12.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.7.7.12.5.1">ACL 2024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.12.5.2">485</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.12.5.3">3315</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.12.5.4">2.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.12.5.5">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.7.12.5.6">4.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents statistics for the AutoScholarQuery dataset, which is a collection of academic search queries and their corresponding papers.  The columns detail the total number of papers (|P|) and queries (|Q|) from each of the five AI conferences used to create the dataset (ICLR 2023, ICML 2023, NeurIPS 2023, ACL 2024, and CVPR 2024).  Additionally, it shows the average number of relevant papers per query (Ans(/Q)), and the 50th and 90th percentiles of the number of answers per query (Ans-50 and Ans-90) providing insight into the distribution of answer counts.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistics of AutoScholarQuery. |P|𝑃|P|| italic_P | and |Q|𝑄|Q|| italic_Q | represent the total number of papers and queries collected for each conference. Ans(/Q)Ans(/Q)italic_A italic_n italic_s ( / italic_Q ) denotes the average number of answer papers per query. A⁢n⁢s𝐴𝑛𝑠Ansitalic_A italic_n italic_s-50505050 and A⁢n⁢s𝐴𝑛𝑠Ansitalic_A italic_n italic_s-90909090 refers to the 50th and 90th percentiles of answer paper counts per query.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Implementation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.2.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.2.1.2">Generate a search query and invoke</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.3.2.1"><span class="ltx_text ltx_font_typewriter" id="S4.T3.1.1.3.2.1.1">[Search]</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.3.2.2">the search tool. Append all resulting</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<td class="ltx_td" id="S4.T3.1.1.4.3.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.3.2">papers to the paper queue.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.4">
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.5.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.5.4.2">Generate a subsection name, then</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.5.1"><span class="ltx_text ltx_font_typewriter" id="S4.T3.1.1.6.5.1.1">[Expand]</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.5.2">add all referenced papers in the sub-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.6">
<td class="ltx_td" id="S4.T3.1.1.7.6.1"></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.6.2">section to the paper queue.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T3.1.1.8.7.1" rowspan="2"><span class="ltx_text ltx_font_typewriter" id="S4.T3.1.1.8.7.1.1">[Stop]</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.8.7.2">Reset the context to the user query and</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.9.8.1">the next paper in the paper queue.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the three primary functions of the Crawler, a key component of the PaSa system.  The Crawler is an LLM agent responsible for autonomously searching for and collecting relevant papers. Each function involves different actions and interactions with the system, such as searching using online tools, expanding the search based on citations, or stopping the search process when enough information has been gathered. The descriptions provide a high-level understanding of how the Crawler uses these functions to manage the search process.
> <details>
> <summary>read the caption</summary>
> Table 3: Functions of the Crawler.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.9.9.10.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T4.9.9.10.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.10.1.1.1">Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.9.9.10.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.9.9.10.1.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.1.1"><math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">italic_α</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.1.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E1" title="In Reward Design ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">1</span></a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.1.3">1.5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.1"><math alttext="c(\text{[Search]})" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mrow id="S5.T4.2.2.2.1.m1.1.2" xref="S5.T4.2.2.2.1.m1.1.2.cmml"><mi id="S5.T4.2.2.2.1.m1.1.2.2" xref="S5.T4.2.2.2.1.m1.1.2.2.cmml">c</mi><mo id="S5.T4.2.2.2.1.m1.1.2.1" xref="S5.T4.2.2.2.1.m1.1.2.1.cmml">⁢</mo><mrow id="S5.T4.2.2.2.1.m1.1.2.3.2" xref="S5.T4.2.2.2.1.m1.1.1a.cmml"><mo id="S5.T4.2.2.2.1.m1.1.2.3.2.1" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1a.cmml">(</mo><mtext id="S5.T4.2.2.2.1.m1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.cmml">[Search]</mtext><mo id="S5.T4.2.2.2.1.m1.1.2.3.2.2" stretchy="false" xref="S5.T4.2.2.2.1.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><apply id="S5.T4.2.2.2.1.m1.1.2.cmml" xref="S5.T4.2.2.2.1.m1.1.2"><times id="S5.T4.2.2.2.1.m1.1.2.1.cmml" xref="S5.T4.2.2.2.1.m1.1.2.1"></times><ci id="S5.T4.2.2.2.1.m1.1.2.2.cmml" xref="S5.T4.2.2.2.1.m1.1.2.2">𝑐</ci><ci id="S5.T4.2.2.2.1.m1.1.1a.cmml" xref="S5.T4.2.2.2.1.m1.1.2.3.2"><mtext id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1">[Search]</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">c(\text{[Search]})</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">italic_c ( [Search] )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E1" title="In Reward Design ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">1</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.3">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.3.1"><math alttext="c(\text{[Expand]})" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mrow id="S5.T4.3.3.3.1.m1.1.2" xref="S5.T4.3.3.3.1.m1.1.2.cmml"><mi id="S5.T4.3.3.3.1.m1.1.2.2" xref="S5.T4.3.3.3.1.m1.1.2.2.cmml">c</mi><mo id="S5.T4.3.3.3.1.m1.1.2.1" xref="S5.T4.3.3.3.1.m1.1.2.1.cmml">⁢</mo><mrow id="S5.T4.3.3.3.1.m1.1.2.3.2" xref="S5.T4.3.3.3.1.m1.1.1a.cmml"><mo id="S5.T4.3.3.3.1.m1.1.2.3.2.1" stretchy="false" xref="S5.T4.3.3.3.1.m1.1.1a.cmml">(</mo><mtext id="S5.T4.3.3.3.1.m1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.cmml">[Expand]</mtext><mo id="S5.T4.3.3.3.1.m1.1.2.3.2.2" stretchy="false" xref="S5.T4.3.3.3.1.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><apply id="S5.T4.3.3.3.1.m1.1.2.cmml" xref="S5.T4.3.3.3.1.m1.1.2"><times id="S5.T4.3.3.3.1.m1.1.2.1.cmml" xref="S5.T4.3.3.3.1.m1.1.2.1"></times><ci id="S5.T4.3.3.3.1.m1.1.2.2.cmml" xref="S5.T4.3.3.3.1.m1.1.2.2">𝑐</ci><ci id="S5.T4.3.3.3.1.m1.1.1a.cmml" xref="S5.T4.3.3.3.1.m1.1.2.3.2"><mtext id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1">[Expand]</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">c(\text{[Expand]})</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">italic_c ( [Expand] )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.3.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E1" title="In Reward Design ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">1</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.3.3">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.1"><math alttext="c(\text{[Stop]})" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mrow id="S5.T4.4.4.4.1.m1.1.2" xref="S5.T4.4.4.4.1.m1.1.2.cmml"><mi id="S5.T4.4.4.4.1.m1.1.2.2" xref="S5.T4.4.4.4.1.m1.1.2.2.cmml">c</mi><mo id="S5.T4.4.4.4.1.m1.1.2.1" xref="S5.T4.4.4.4.1.m1.1.2.1.cmml">⁢</mo><mrow id="S5.T4.4.4.4.1.m1.1.2.3.2" xref="S5.T4.4.4.4.1.m1.1.1a.cmml"><mo id="S5.T4.4.4.4.1.m1.1.2.3.2.1" stretchy="false" xref="S5.T4.4.4.4.1.m1.1.1a.cmml">(</mo><mtext id="S5.T4.4.4.4.1.m1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.cmml">[Stop]</mtext><mo id="S5.T4.4.4.4.1.m1.1.2.3.2.2" stretchy="false" xref="S5.T4.4.4.4.1.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><apply id="S5.T4.4.4.4.1.m1.1.2.cmml" xref="S5.T4.4.4.4.1.m1.1.2"><times id="S5.T4.4.4.4.1.m1.1.2.1.cmml" xref="S5.T4.4.4.4.1.m1.1.2.1"></times><ci id="S5.T4.4.4.4.1.m1.1.2.2.cmml" xref="S5.T4.4.4.4.1.m1.1.2.2">𝑐</ci><ci id="S5.T4.4.4.4.1.m1.1.1a.cmml" xref="S5.T4.4.4.4.1.m1.1.2.3.2"><mtext id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1">[Stop]</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">c(\text{[Stop]})</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">italic_c ( [Stop] )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E1" title="In Reward Design ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">1</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.3">0.0</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5.5">
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.1"><math alttext="\gamma_{0}" class="ltx_Math" display="inline" id="S5.T4.5.5.5.1.m1.1"><semantics id="S5.T4.5.5.5.1.m1.1a"><msub id="S5.T4.5.5.5.1.m1.1.1" xref="S5.T4.5.5.5.1.m1.1.1.cmml"><mi id="S5.T4.5.5.5.1.m1.1.1.2" xref="S5.T4.5.5.5.1.m1.1.1.2.cmml">γ</mi><mn id="S5.T4.5.5.5.1.m1.1.1.3" xref="S5.T4.5.5.5.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.1.m1.1b"><apply id="S5.T4.5.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.5.5.5.1.m1.1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S5.T4.5.5.5.1.m1.1.1.2.cmml" xref="S5.T4.5.5.5.1.m1.1.1.2">𝛾</ci><cn id="S5.T4.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.5.5.5.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.1.m1.1c">\gamma_{0}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.1.m1.1d">italic_γ start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.Ex1" title="RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">4.2</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.5.5.5.3">1.0</td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6">
<td class="ltx_td ltx_align_left" id="S5.T4.6.6.6.1"><math alttext="\gamma_{1}" class="ltx_Math" display="inline" id="S5.T4.6.6.6.1.m1.1"><semantics id="S5.T4.6.6.6.1.m1.1a"><msub id="S5.T4.6.6.6.1.m1.1.1" xref="S5.T4.6.6.6.1.m1.1.1.cmml"><mi id="S5.T4.6.6.6.1.m1.1.1.2" xref="S5.T4.6.6.6.1.m1.1.1.2.cmml">γ</mi><mn id="S5.T4.6.6.6.1.m1.1.1.3" xref="S5.T4.6.6.6.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.1.m1.1b"><apply id="S5.T4.6.6.6.1.m1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T4.6.6.6.1.m1.1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1">subscript</csymbol><ci id="S5.T4.6.6.6.1.m1.1.1.2.cmml" xref="S5.T4.6.6.6.1.m1.1.1.2">𝛾</ci><cn id="S5.T4.6.6.6.1.m1.1.1.3.cmml" type="integer" xref="S5.T4.6.6.6.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.1.m1.1c">\gamma_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.1.m1.1d">italic_γ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.6.6.6.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.Ex1" title="RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">4.2</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.6.6.6.3">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.7.7">
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.1"><math alttext="\beta" class="ltx_Math" display="inline" id="S5.T4.7.7.7.1.m1.1"><semantics id="S5.T4.7.7.7.1.m1.1a"><mi id="S5.T4.7.7.7.1.m1.1.1" xref="S5.T4.7.7.7.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.7.1.m1.1b"><ci id="S5.T4.7.7.7.1.m1.1.1.cmml" xref="S5.T4.7.7.7.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.7.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.7.1.m1.1d">italic_β</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.Ex1" title="RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">4.2</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.7.7.7.3">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8.8">
<td class="ltx_td ltx_align_left" id="S5.T4.8.8.8.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="S5.T4.8.8.8.1.m1.1"><semantics id="S5.T4.8.8.8.1.m1.1a"><mi id="S5.T4.8.8.8.1.m1.1.1" xref="S5.T4.8.8.8.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.8.1.m1.1b"><ci id="S5.T4.8.8.8.1.m1.1.1.cmml" xref="S5.T4.8.8.8.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.8.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.8.1.m1.1d">italic_ϵ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.8.8.8.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E5" title="In RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">5</span></a>, Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.Ex3" title="RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">4.2</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.8.8.8.3">0.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.9">
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.9.1"><math alttext="\eta" class="ltx_Math" display="inline" id="S5.T4.9.9.9.1.m1.1"><semantics id="S5.T4.9.9.9.1.m1.1a"><mi id="S5.T4.9.9.9.1.m1.1.1" xref="S5.T4.9.9.9.1.m1.1.1.cmml">η</mi><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.9.1.m1.1b"><ci id="S5.T4.9.9.9.1.m1.1.1.cmml" xref="S5.T4.9.9.9.1.m1.1.1">𝜂</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.9.1.m1.1c">\eta</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.9.1.m1.1d">italic_η</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.9.2">(Equation <a class="ltx_ref" href="https://arxiv.org/html/2501.10120v1#S4.E8" title="In RL Training ‣ 4.2 Crawler ‣ 4 Methodology ‣ PaSa: An LLM Agent for Comprehensive Academic Paper Search"><span class="ltx_text ltx_ref_tag">8</span></a>)</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.9.3">10</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.11.2">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.11.2.1">learning rate</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.11.2.2">1e-6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.12.3">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.12.3.1">epoch per step</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.12.3.2">2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.13.4">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.13.4.1">forward batch size</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.13.4.2">1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.14.5">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.14.5.1">accumulate batch size</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.14.5.2">16</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.15.6">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.15.6.1">NVIDIA H100 GPU</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.15.6.2">16</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.16.7">
<td class="ltx_td ltx_align_left" colspan="2" id="S5.T4.9.9.16.7.1">policy freezing step</td>
<td class="ltx_td ltx_align_left" id="S5.T4.9.9.16.7.2">50</td>
</tr>
<tr class="ltx_tr" id="S5.T4.9.9.17.8">
<td class="ltx_td ltx_align_left ltx_border_bb" colspan="2" id="S5.T4.9.9.17.8.1">total step</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.9.9.17.8.2">250</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the Proximal Policy Optimization (PPO) training phase of the Crawler, one of the two main components of the PaSa system.  The hyperparameters control aspects of the training process, such as reward scaling, action costs, discount factors, learning rates, batch sizes, and the number of training steps.  Understanding these settings is crucial to interpreting the performance of the PaSa model and its training process.
> <details>
> <summary>read the caption</summary>
> Table 4: The hyperparameters used in PPO training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.2.1">Crawler Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.3.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.4.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.5.1">Recall@100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.6.1">Recall@50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.7.1">Recall@20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.2.2.1">Google</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.5">0.2015</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.6">0.1891</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.7">0.1568</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.3.3.1">Google Scholar</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.5">0.1130</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.6">0.0970</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3.7">0.0609</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.4.4.1">Google with GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.5">0.2683</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.6">0.2450</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4.7">0.1921</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.5.5.1">ChatGPT</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.3">0.0507</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.4">0.3046</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.6.6.1">GPT-o1</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.3">0.0413</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.4">0.1925</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.7.7.1">PaSa-GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.2">0.7565</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.3">0.1457</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.4">0.3873</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.8.8.1">PaSa-7b</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.2">0.7931</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.3">0.1448</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.4">0.4834</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.5">0.6947</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.6">0.6334</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.8.8.7">0.5301</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T5.1.1.9.9.1">PaSa-7b-ensemble</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.2">0.8265</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.3">0.1410</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.4">0.4985</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.5">0.7099</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.6">0.6386</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.9.9.7">0.5326</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various methods on the AutoScholarQuery test set, a benchmark dataset for academic paper search.  It compares the recall and precision of different approaches, including Google, Google Scholar, Google with GPT-40, ChatGPT, GPT-01, PaSa-GPT-40, and PaSa-7B. The metrics are evaluated at different recall thresholds (@20, @50, @100), providing a comprehensive assessment of each method's ability to retrieve relevant papers.
> <details>
> <summary>read the caption</summary>
> Table 5: Results on AutoScholarQuery test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.2.1">Crawler Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.3.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.4.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.5.1">Recall@100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.6.1">Recall@50</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.7.1">Recall@20</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.1.2.2.1">Google</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.5">0.2535</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.6">0.2342</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2.7">0.1834</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.1.3.3.1">Google Scholar</th>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.5">0.2809</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.6">0.2155</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3.7">0.1514</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.1.4.4.1">Google with GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.5">0.2946</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.6">0.2573</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.4.7">0.2020</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.1.5.5.1">ChatGPT</th>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.3">0.2280</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.4">0.2007</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.5.5.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.1.6.6.1">GPT-o1</th>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.3">0.058</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.4">0.0134</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.6.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T6.1.1.7.7.1">PaSa-GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.2">0.5494</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.3">0.4721</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.4">0.3075</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.7.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.1.1.8.8.1">PaSa-7b</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.2">0.7071</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.3">0.5146</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.4">0.6111</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.5">0.6929</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.6">0.6563</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.8.8.7">0.5798</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T6.1.1.9.9.1">PaSa-7b-ensemble</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.2">0.7503</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.3">0.4938</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.4">0.6488</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.5">0.7281</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.6">0.6877</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.9.9.7">0.5986</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the PaSa-7B model and several baseline models on the RealScholarQuery dataset.  RealScholarQuery consists of 50 real-world academic search queries with annotated relevant papers, designed to evaluate the performance in realistic scenarios. The table shows the recall, precision, and recall@k (where k=20, 50, 100) for each model.  It demonstrates how PaSa-7B compares against baselines such as Google search, Google Scholar, Google search paired with GPT-40 for paraphrased queries, ChatGPT, GPT-01, and PaSa implemented with GPT-40.  The performance metrics offer a comprehensive comparison of PaSa-7B's effectiveness compared to existing search methods for complex academic research queries.
> <details>
> <summary>read the caption</summary>
> Table 6: Results on RealScholarQuery.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1.2.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T7.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1.3.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T7.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1.4.1">F1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.1.1.2.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.1.2">0.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.1.3">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.1.2.1.4">0.80</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.3.2.1">Qwen-2.5-7b</th>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.2.2">1.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.2.3">0.38</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.3.2.4">0.55</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.4.3.1">PaSa-7b-Selector</th>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.3.2">0.95</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.3.3">0.78</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.1.4.3.4">0.85</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T7.1.1.5.4.1">PaSa-7b-Selector (Reason First)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.5.4.2">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.5.4.3">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.1.5.4.4">0.84</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the performance of the Selector model, a crucial component of the PaSa system.  The evaluation compares the F1 score, precision, and recall of the PaSa-7b Selector against two baseline models: GPT-40 and Qwen-2.5-7b.  It also shows a comparison with a variant of the PaSa-7b Selector where the reasoning is generated before the decision.
> <details>
> <summary>read the caption</summary>
> Table 7: Selector Evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T8.1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T8.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.1.1.2.1">AutoScholarQuery</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T8.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.1.1.3.1">RealScholarQuery</span></th>
</tr>
<tr class="ltx_tr" id="S5.T8.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.1.1">Crawler Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.2.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.3.1">Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.4.1">Crawler Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.5.1">Precision</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T8.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T8.1.1.2.2.6.1">Recall</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T8.1.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T8.1.1.3.1.1">w/o <span class="ltx_text ltx_font_typewriter" id="S5.T8.1.1.3.1.1.1">[Expand]</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.2">0.3355</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.3">0.1445</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.4">0.2536</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.5">0.3359</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.6">0.6738</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.1.1.3.1.7">0.2890</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T8.1.1.4.2.1">w/o RL training</th>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.2">0.6556</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.3">0.1476</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.4">0.4210</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.5">0.4847</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.6">0.5155</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.4.2.7">0.4115</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T8.1.1.5.3.1">w/o Selector as RM</th>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.2">0.7041</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.3">0.1535</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.4">0.4458</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.5">0.5994</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.6">0.5489</td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.5.3.7">0.5148</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.1">PaSa-7b</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.2">0.7931</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.3">0.1448</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.4">0.4834</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.5">0.7071</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.6">0.5146</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T8.1.1.6.4.7">0.6111</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to analyze the impact of different components of the PaSa model on its performance.  It shows the recall, precision, and other metrics achieved by PaSa on both the AutoScholarQuery test set (a synthetic dataset) and the RealScholarQuery dataset (a real-world dataset). The ablation study involves removing key elements such as the Crawler's ability to explore citations ([Expand] action), the reinforcement learning (RL) training process, and the Selector (used as an auxiliary reward model). By comparing the performance of these variations against the full PaSa model, the study investigates the importance of each component to the overall search effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation study results on AutoScholarQuery test set and RealScholarQuery.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T9.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T9.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T9.1.1.1.1"><math alttext="\alpha" class="ltx_Math" display="inline" id="S5.T9.1.1.1.1.m1.1"><semantics id="S5.T9.1.1.1.1.m1.1a"><mi id="S5.T9.1.1.1.1.m1.1.1" xref="S5.T9.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S5.T9.1.1.1.1.m1.1b"><ci id="S5.T9.1.1.1.1.m1.1.1.cmml" xref="S5.T9.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T9.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S5.T9.1.1.1.1.m1.1d">italic_α</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T9.1.1.1.2.1">Crawler Recall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T9.1.1.1.3.1">Crawler Actions</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T9.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T9.1.1.2.1.1">0.5</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.1.1.2.1.2">0.7227</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.1.1.2.1.3">175.9</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T9.1.1.3.2.1">1.0</th>
<td class="ltx_td ltx_align_center" id="S5.T9.1.1.3.2.2">0.7708</td>
<td class="ltx_td ltx_align_center" id="S5.T9.1.1.3.2.3">319.8</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T9.1.1.4.3.1">1.5</th>
<td class="ltx_td ltx_align_center" id="S5.T9.1.1.4.3.2">0.7931</td>
<td class="ltx_td ltx_align_center" id="S5.T9.1.1.4.3.3">382.4</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T9.1.1.5.4.1">2.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.1.1.5.4.2">0.8063</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T9.1.1.5.4.3">785.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Crawler model, a key component of the PaSa system, trained with different reward coefficients (alpha).  It shows how varying the alpha value impacts the Crawler's recall (the proportion of relevant papers retrieved) and the number of actions it takes during the search process.  This helps to analyze the impact of reward shaping on the Crawler's efficiency and effectiveness in retrieving relevant documents within the AutoScholarQuery test dataset.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance of the Crawler trained on different reward coefficient α𝛼\alphaitalic_α on AutoScholarQuery test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T10.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T10.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.1.1.1.1.1">
<span class="ltx_p" id="A1.T10.1.1.1.1.1.1.1" style="width:540.6pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1.1.1.1">The prompt for search query generation.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T10.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.1.1.2.2.1.1">
<span class="ltx_p" id="A1.T10.1.1.2.2.1.1.1" style="width:540.6pt;">You are an elite researcher in the field of AI, please generate some mutually exclusive queries in a list to search the relevant papers according to the User Query. Searching for a survey paper would be better.</span>
<span class="ltx_p" id="A1.T10.1.1.2.2.1.1.2">User Query: {user_query}</span>
<span class="ltx_p" id="A1.T10.1.1.2.2.1.1.3">The semantics between generated queries are not mutually inclusive. The format of the list is: [“query1”, “query2”, …]</span>
<span class="ltx_p" id="A1.T10.1.1.2.2.1.1.4">Queries:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt used to instruct GPT-40 to generate a series of search queries based on a given user query.  The goal is to obtain a list of relevant search queries for use in an academic paper search.
> <details>
> <summary>read the caption</summary>
> Table 10: The prompt for GPT-4o to generate search queries from the user query.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T11.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T11.2.2.2">
<td class="ltx_td ltx_align_top ltx_border_tt" id="A1.T11.2.2.2.3"></td>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T11.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.1.1.1.1.1">
<span class="ltx_p" id="A1.T11.1.1.1.1.1.1" style="width:216.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.1.1.1">Search Session starting from <math alttext="S_{q}" class="ltx_Math" display="inline" id="A1.T11.1.1.1.1.1.1.1.m1.1"><semantics id="A1.T11.1.1.1.1.1.1.1.m1.1a"><msub id="A1.T11.1.1.1.1.1.1.1.m1.1.1" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T11.1.1.1.1.1.1.1.m1.1.1.2" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1.2.cmml">S</mi><mi id="A1.T11.1.1.1.1.1.1.1.m1.1.1.3" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1.3.cmml">q</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T11.1.1.1.1.1.1.1.m1.1b"><apply id="A1.T11.1.1.1.1.1.1.1.m1.1.1.cmml" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T11.1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T11.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1.2">𝑆</ci><ci id="A1.T11.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T11.1.1.1.1.1.1.1.m1.1.1.3">𝑞</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.1.1.1.1.1.1.1.m1.1c">S_{q}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.1.1.1.1.1.1.1.m1.1d">italic_S start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT</annotation></semantics></math></span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T11.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.2.2.1">
<span class="ltx_p" id="A1.T11.2.2.2.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.2.2.2.2.1.1.1">Expand Session starting from <math alttext="S_{q+p}" class="ltx_Math" display="inline" id="A1.T11.2.2.2.2.1.1.1.m1.1"><semantics id="A1.T11.2.2.2.2.1.1.1.m1.1a"><msub id="A1.T11.2.2.2.2.1.1.1.m1.1.1" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.cmml"><mi id="A1.T11.2.2.2.2.1.1.1.m1.1.1.2" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.2.cmml">S</mi><mrow id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.cmml"><mi id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.2" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.2.cmml">q</mi><mo id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.1" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.1.cmml">+</mo><mi id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.3" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.3.cmml">p</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T11.2.2.2.2.1.1.1.m1.1b"><apply id="A1.T11.2.2.2.2.1.1.1.m1.1.1.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T11.2.2.2.2.1.1.1.m1.1.1.1.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T11.2.2.2.2.1.1.1.m1.1.1.2.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.2">𝑆</ci><apply id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3"><plus id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.1.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.1"></plus><ci id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.2.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.2">𝑞</ci><ci id="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.3.cmml" xref="A1.T11.2.2.2.2.1.1.1.m1.1.1.3.3">𝑝</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.2.2.2.2.1.1.1.m1.1c">S_{q+p}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.2.2.2.2.1.1.1.m1.1d">italic_S start_POSTSUBSCRIPT italic_q + italic_p end_POSTSUBSCRIPT</annotation></semantics></math></span></span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T11.2.2.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T11.2.2.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.3.1.1.1">
<span class="ltx_p" id="A1.T11.2.2.3.1.1.1.1" style="width:39.8pt;">prompt</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T11.2.2.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.3.1.2.1">
<span class="ltx_p" id="A1.T11.2.2.3.1.2.1.1" style="width:216.2pt;">Please, generate some mutually exclusive queries in a list to search the relevant papers according to the User Query. Searching for survey papers would be better.</span>
<span class="ltx_p" id="A1.T11.2.2.3.1.2.1.2">User Query: {user_query}</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T11.2.2.3.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.3.1.3.1">
<span class="ltx_p" id="A1.T11.2.2.3.1.3.1.1" style="width:284.5pt;">You are conducting research on '{user_query}'. You need to predict which sections to look at to get more relevant papers.</span>
<span class="ltx_p" id="A1.T11.2.2.3.1.3.1.2">Title: {title}</span>
<span class="ltx_p" id="A1.T11.2.2.3.1.3.1.3">Abstract: {abstract}</span>
<span class="ltx_p" id="A1.T11.2.2.3.1.3.1.4">Sections: {sections}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.2.2.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T11.2.2.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.4.2.1.1">
<span class="ltx_p" id="A1.T11.2.2.4.2.1.1.1" style="width:39.8pt;">response</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T11.2.2.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.4.2.2.1">
<span class="ltx_p" id="A1.T11.2.2.4.2.2.1.1" style="width:216.2pt;">[Search] {query 1}</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.2.1.2">[Search] {query 2}</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.2.1.3">…</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.2.1.4">[Stop]</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T11.2.2.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T11.2.2.4.2.3.1">
<span class="ltx_p" id="A1.T11.2.2.4.2.3.1.1" style="width:284.5pt;">[Expand] {section 1}</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.3.1.2">[Expand] {section 2}</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.3.1.3">…</span>
<span class="ltx_p" id="A1.T11.2.2.4.2.3.1.4">[Stop]</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the templates used by the Crawler agent in the PaSa system. It shows how the Crawler generates its trajectories, which involve sequences of actions such as searching using online tools, expanding on citations, and stopping to examine a paper to determine whether it is relevant to the user's query. The templates guide the Crawler's decision-making process during training and inference, which involves exploring a graph of papers via search and expansion steps and stopping.
> <details>
> <summary>read the caption</summary>
> Table 11: The session trajectory templates of the Crawler.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T12.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T12.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A4.T12.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1" style="width:542.0pt;">
<span class="ltx_tabular ltx_align_middle" id="A4.T12.1.1.1.1.1.1.1.1">
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.1.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.1.1.1.1.1.1.1.1.1.1.1.1.1">Query:</span> Give me papers about how to rank search results by the use of LLM</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.2.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.1.1.1.1.1.1.1.1.2.1.1.1.1">Query Date:</span> 2024-10-01</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.3.1.1.1" style="width:542.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.1.1.1.1.1.1.1.1.3.1.1.1.1">Answer Papers:</span></span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.4.1.1.1" style="width:542.0pt;">[0] Instruction Distillation Makes Large Language Models Efficient Zero-shot Rankers</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.5">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.5.1.1.1" style="width:542.0pt;">[1] Beyond Yes and No: Improving Zero-Shot LLM Rankers via Scoring Fine-Grained Relevance Labels</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.6">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.6.1.1.1" style="width:542.0pt;">[2] Large Language Models are Effective Text Rankers with Pairwise Ranking Prompting</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.7">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.7.1.1.1" style="width:542.0pt;">[3] A Setwise Approach for Effective and Highly Efficient Zero-shot Ranking with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.8">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.8.1.1.1" style="width:542.0pt;">[4] RankVicuna: Zero-Shot Listwise Document Reranking with Open-Source Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.9">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.9.1.1.1" style="width:542.0pt;">[5] PaRaDe: Passage Ranking using Demonstrations with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.10">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.10.1.1.1" style="width:542.0pt;">[6] Is ChatGPT Good at Search? Investigating Large Language Models as Re-Ranking Agents</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.11">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.11.1.1.1" style="width:542.0pt;">[7] Large Language Models are Zero-Shot Rankers for Recommender Systems</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.12">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.12.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.12.1.1.1" style="width:542.0pt;">[8] TourRank: Utilizing Large Language Models for Documents Ranking with a Tournament-Inspired Strategy</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.13">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.13.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.13.1.1.1" style="width:542.0pt;">[9] ExaRanker: Explanation-Augmented Neural Ranker</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.14">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.14.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.14.1.1.1" style="width:542.0pt;">[10] RankRAG: Unifying Context Ranking with Retrieval-Augmented Generation in LLMs</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.15">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.15.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.15.1.1.1" style="width:542.0pt;">[11] Make Large Language Model a Better Ranker</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.16">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.16.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.16.1.1.1" style="width:542.0pt;">[12] LLM-RankFusion: Mitigating Intrinsic Inconsistency in LLM-based Ranking</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.17">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.17.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.17.1.1.1" style="width:542.0pt;">[13] Improving Zero-shot LLM Re-Ranker with Risk Minimization</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.18">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.18.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.18.1.1.1" style="width:542.0pt;">[14] Zero-Shot Listwise Document Reranking with a Large Language Model</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.19">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.19.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.19.1.1.1" style="width:542.0pt;">[15] Consolidating Ranking and Relevance Predictions of Large Language Models through Post-Processing</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.20">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.20.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.20.1.1.1" style="width:542.0pt;">[16] Re-Ranking Step by Step: Investigating Pre-Filtering for Re-Ranking with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.21">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.21.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.21.1.1.1" style="width:542.0pt;">[17] Large Language Models for Relevance Judgment in Product Search</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.22">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.22.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.22.1.1.1" style="width:542.0pt;">[18] PromptReps: Prompting Large Language Models to Generate Dense and Sparse Representations for Zero-Shot Document Retrieval</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.23">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.23.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.23.1.1.1" style="width:542.0pt;">[19] Passage-specific Prompt Tuning for Passage Reranking in Question Answering with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.24">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.24.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.24.1.1.1" style="width:542.0pt;">[20] When Search Engine Services meet Large Language Models: Visions and Challenges</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.25">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.25.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.25.1.1.1" style="width:542.0pt;">[21] RankZephyr: Effective and Robust Zero-Shot Listwise Reranking is a Breeze!</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.26">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.26.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.26.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.26.1.1.1" style="width:542.0pt;">[22] Rank-without-GPT: Building GPT-Independent Listwise Rerankers on Open-Source Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.27">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.27.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.27.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.27.1.1.1" style="width:542.0pt;">[23] MuGI: Enhancing Information Retrieval through Multi-Text Generation Integration with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.28">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.28.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.28.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.28.1.1.1" style="width:542.0pt;">[24] Discrete Prompt Optimization via Constrained Generation for Zero-shot Re-ranker</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.29">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.29.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.29.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.29.1.1.1" style="width:542.0pt;">[25] REAR: A Relevance-Aware Retrieval-Augmented Framework for Open-Domain Question Answering</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.30">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.30.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.30.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.30.1.1.1" style="width:542.0pt;">[26] Agent4Ranking: Semantic Robust Ranking via Personalized Query Rewriting Using Multi-agent LLM</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.31">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.31.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.31.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.31.1.1.1" style="width:542.0pt;">[27] FIRST: Faster Improved Listwise Reranking with Single Token Decoding</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.32">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.32.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.32.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.32.1.1.1" style="width:542.0pt;">[28] Leveraging LLMs for Unsupervised Dense Retriever Ranking</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.33">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.33.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.33.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.33.1.1.1" style="width:542.0pt;">[29] Unsupervised Contrast-Consistent Ranking with Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.34">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.34.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.34.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.34.1.1.1" style="width:542.0pt;">[30] Enhancing Legal Document Retrieval: A Multi-Phase Approach with Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.35">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.35.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.35.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.35.1.1.1" style="width:542.0pt;">[31] Found in the Middle: Permutation Self-Consistency Improves Listwise Ranking in Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.36">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.36.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.36.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.36.1.1.1" style="width:542.0pt;">[32] Fine-Tuning LLaMA for Multi-Stage Text Retrieval</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.37">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.37.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.37.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.37.1.1.1" style="width:542.0pt;">[33] Zero-shot Audio Topic Reranking using Large Language Models</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.38">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.38.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.38.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.38.1.1.1" style="width:542.0pt;">[34] Uncovering ChatGPT’s Capabilities in Recommender Systems</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.39">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.39.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.39.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.39.1.1.1" style="width:542.0pt;">[35] Cognitive Personalized Search Integrating Large Language Models with an Efficient Memory Mechanism</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.40">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.40.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.40.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.40.1.1.1" style="width:542.0pt;">[36] Towards More Relevant Product Search Ranking Via Large Language Models: An Empirical Study</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.41">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.41.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.41.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.41.1.1.1" style="width:542.0pt;">[37] Pretrained Language Model based Web Search Ranking: From Relevance to Satisfaction</span>
</span></span></span>
<span class="ltx_tr" id="A4.T12.1.1.1.1.1.1.1.1.42">
<span class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.42.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T12.1.1.1.1.1.1.1.1.42.1.1">
<span class="ltx_p" id="A4.T12.1.1.1.1.1.1.1.1.42.1.1.1" style="width:542.0pt;">[38] Open-source large language models are strong zero-shot query likelihood models for document ranking</span>
</span></span></span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents sample queries from the RealScholarQuery dataset, a benchmark of real-world academic search queries, and their corresponding relevant papers.  It highlights the complexity and diversity of actual research questions and the associated publications needed to answer them effectively, illustrating the challenges addressed by the PaSa system.
> <details>
> <summary>read the caption</summary>
> Table 12: Examples of queries and corresponding papers in RealScholarQuery.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T13.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T13.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T13.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.1.1.1.1.1">
<span class="ltx_p" id="A5.T13.1.1.1.1.1.1.1" style="width:540.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T13.1.1.1.1.1.1.1.1">The prompt for search query paraphrase.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T13.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.1.2.2.1.1">
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.1" style="width:540.6pt;">Generate a search query suitable for Google based on the given academic paper-related query. Here’s the structure and requirements for generating the search query:</span>
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.2">Understand the Query: Read and understand the given specific academic query.</span>
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.3">Identify Key Elements: Extract the main research field and the specific approaches or topics mentioned in the query.</span>
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.4">Formulate the Search Query: Combine these elements into a concise query that includes terms indicating academic sources.
Do not add any site limitations to your query.</span>
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.5">[User’s Query]: {user_query}</span>
<span class="ltx_p" id="A5.T13.1.1.2.2.1.1.6">[Generated Search Query]:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the prompt template used to instruct GPT-40 to paraphrase a user's academic search query into a format suitable for Google search.  The prompt guides GPT-40 to understand the user's query, identify key elements (research field and approaches), and formulate a concise, academically-focused query for improved search results. The output should be a single search query string.
> <details>
> <summary>read the caption</summary>
> Table 13: The prompt for search query paraphrase.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T14.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T14.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T14.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.1.1.1.1.1">
<span class="ltx_p" id="A5.T14.1.1.1.1.1.1.1" style="width:540.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T14.1.1.1.1.1.1.1.1">The prompt for ChatGPT (search-enabled GPT-4o).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T14.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.1.2.2.1.1">
<span class="ltx_p" id="A5.T14.1.1.2.2.1.1.1" style="width:540.6pt;">[User’s Query]</span>
<span class="ltx_p" id="A5.T14.1.1.2.2.1.1.2">You should return the Arxiv papers. You should provide more than 10 papers you searched in JSON format:</span>
<span class="ltx_p" id="A5.T14.1.1.2.2.1.1.3">{"paper_1": {"title": , ’authors’: , ’link’: }, "paper_2": {"title": , ’authors’: , ’link’: }}</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used to instruct ChatGPT (a search-enabled version of GPT-4) to conduct a scholarly search and return results in a specific JSON format.  The prompt specifies that the response should include relevant Arxiv papers and should return more than 10 papers in a structured JSON format, containing the title, authors, and link for each paper.
> <details>
> <summary>read the caption</summary>
> Table 14: The prompt for Chatgpt (search-enabled GPT-4o).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T15.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T15.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T15.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T15.1.1.1.1.1.1">
<span class="ltx_p" id="A5.T15.1.1.1.1.1.1.1" style="width:540.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T15.1.1.1.1.1.1.1.1">The prompt for paper selection.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T15.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T15.1.1.2.2.1.1">
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.1" style="width:540.6pt;">You are an elite researcher in the field of AI, conducting research on {user_query}. Evaluate whether the following paper fully satisfies the detailed requirements of the user query and provide your reasoning. Ensure that your decision and reasoning are consistent.</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.2">Searched Paper:</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.3">Title: {title}</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.4">Abstract: {abstract}</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.5">User Query: {user_query}</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.6">Output format: Decision: True/False</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.7">Reason:…</span>
<span class="ltx_p" id="A5.T15.1.1.2.2.1.1.8">Decision:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table describes the prompt used to evaluate whether a given research paper satisfies a user's query. The prompt provides the paper's title and abstract, the user query, and requests a boolean decision (True/False) along with a rationale explaining the decision.
> <details>
> <summary>read the caption</summary>
> Table 15: The prompt used with pasa selector or GPT-4o to judge the selection of the paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A5.T16.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T16.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T16.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T16.1.1.1.1.1.1">
<span class="ltx_p" id="A5.T16.1.1.1.1.1.1.1" style="width:540.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T16.1.1.1.1.1.1.1.1">The prompt for AutoScholarQuery generation.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T16.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T16.1.1.2.2.1.1">
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.1" style="width:540.6pt;">You are provided a ‘Related Work’ section of a research paper. The researcher reviewed the relevant work, conducted a literature survey, and cited corresponding references in this text (enclosed by ‘\cite’ tags with IDs). Can you guess what research questions the researcher might have posed when preparing this text? The answers to these questions should be the references cited in this passage. Please list questions and provide the corresponding answers.</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.2">[Requirements:]</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.3">1. Craft questions similar to those a researcher would pose when reviewing related works, such as “Which paper studied …?”, “Any works about…?”, “Could you provide me some works…?”</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.4">2. Construct the question-answer pairs based on [Section from A Research Paper]. The answer should be the cited papers in [Section from A Research Paper].</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.5">3. Do not ask questions including "or" or "and" that may involve more than one condition.</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.6">4. Clarity: Formulate questions clearly and unambiguously to prevent confusion.</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.7">5. Contextual Definitions: Include explanations or definitions for specialized terms and concepts used in the questions.</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.8">6. Format the output as a JSON array containing five objects corresponding to the three question-answer pairs.</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.9">Here are some examples:</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.10">[Begin of examples]</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.11">{Section from A Research Paper-1}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.12">{OUTPUT-1}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.13">{Section from A Research Paper-2}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.14">{OUTPUT-2}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.15">{Section from A Research Paper-3}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.16">{OUTPUT-3}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.17">[End of examples]</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.18">{Section from A Research Paper}</span>
<span class="ltx_p" id="A5.T16.1.1.2.2.1.1.19">[OUTPUT]:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt used to instruct GPT-40 in automatically generating the AutoScholarQuery dataset.  The prompt guides GPT-40 to extract relevant research questions and their corresponding answers from the 'Related Work' sections of research papers. It emphasizes the importance of clear, unambiguous questions with contextual definitions for specialized terms. The output is formatted as a JSON array, with each object representing a question-answer pair.
> <details>
> <summary>read the caption</summary>
> Table 16: The prompt used with GPT-4o to automatically generate AutoScholarQuery.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.10120/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10120/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}