---
title: "R1-Searcher: Incentivizing the Search Capability in LLMs via Reinforcement Learning"
summary: "R1-Searcher: RL enhances LLMs by incentivizing autonomous search, outperforming RAG methods, even GPT-4o-mini!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Renmin University of China",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05592 {{< /keyword >}}
{{< keyword icon="writer" >}} Huatong Song et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05592" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05592" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05592/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing Large Reasoning Models often struggle with open-ended tasks due to their reliance on internal knowledge, leading to inaccuracies. To address this, the paper proposed a two-stage outcome-based Reinforcement Learning approach designed to enhance the search capabilities of Large Language Models. This allows LLMs to autonomously invoke external search systems to access additional knowledge during the reasoning process. 



The framework uses Retrieve-Reward to incentivize retrieval operations and Answer-Reward to encourage models to utilize external systems effectively. The **R1-Searcher significantly outperforms** previous methods, even compared to GPT-4o-mini. It demonstrated great results on the HotpotQA and 2Wiki datasets. Also, the model achieves great generalization on the Bamboogle dataset compared to the Search-o1.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} R1-Searcher, a two-stage RL framework, empowers LLMs to autonomously invoke external search during reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method achieves state-of-the-art performance on multi-hop QA benchmarks, surpassing existing RAG techniques. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach demonstrates strong generalization capabilities to out-of-domain datasets and online search scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel RL framework to **enhance LLMs' search capabilities**, addressing limitations in knowledge-intensive tasks. The **significant performance gains** over existing methods, including closed-source models, highlight the **potential of RL for improving RAG systems** and opening new research avenues.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05592/x1.png)

> 🔼 Figure 1 presents a bar chart comparing the performance of R1-Searcher against several other methods across four distinct multi-hop question answering (QA) benchmark datasets: HotpotQA, 2WikiMultiHopQA, Bamboogle, and Musique.  The chart displays the accuracy or percentile achieved by each method on each dataset.  R1-Searcher consistently outperforms the other models, demonstrating its state-of-the-art performance on all four benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance comparisons between R1-Searcher and other methods on four multi-hop QA benchmarks. R1-Searcher achieves state-of-the-art performance on each dataset.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1" style="font-size:90%;">Stage</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1" style="font-size:90%;">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.4.1" style="font-size:90%;">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.5.1" style="font-size:90%;">Difficult</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.1.1" style="font-size:90%;">Stage-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2"><span class="ltx_text" id="S2.T1.1.2.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.3"><span class="ltx_text" id="S2.T1.1.2.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.4"><span class="ltx_text" id="S2.T1.1.2.4.1" style="font-size:90%;">200</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.5"><span class="ltx_text" id="S2.T1.1.2.5.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.1"><span class="ltx_text" id="S2.T1.1.3.1.1" style="font-size:90%;">2WikiMultiHopQA</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2"><span class="ltx_text" id="S2.T1.1.3.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3"><span class="ltx_text" id="S2.T1.1.3.3.1" style="font-size:90%;">150</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.4"><span class="ltx_text" id="S2.T1.1.3.4.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.4.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.4.1.1" style="font-size:90%;">Stage-2</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.2"><span class="ltx_text" id="S2.T1.1.4.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3"><span class="ltx_text" id="S2.T1.1.4.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4"><span class="ltx_text" id="S2.T1.1.4.4.1" style="font-size:90%;">2561</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.5"><span class="ltx_text" id="S2.T1.1.4.5.1" style="font-size:90%;">2000</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.5.1"><span class="ltx_text" id="S2.T1.1.5.1.1" style="font-size:90%;">2WikiMultiHopQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.5.2"><span class="ltx_text" id="S2.T1.1.5.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.5.3"><span class="ltx_text" id="S2.T1.1.5.3.1" style="font-size:90%;">1087</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.5.4"><span class="ltx_text" id="S2.T1.1.5.4.1" style="font-size:90%;">2500</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the dataset used for training the R1-Searcher model. It shows the breakdown of the data by stage (Stage-1 and Stage-2), dataset (HotpotQA and 2WikiMultiHopQA), and difficulty level (Easy, Medium, Difficult).  The number of samples for each category in each stage is detailed, providing a complete overview of the training data distribution across difficulty levels and datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: The information of the data used during RL training.
> </details>





### In-depth insights


#### RL for Search
**Reinforcement Learning (RL) for Search** presents a promising avenue for enhancing the capabilities of Language Models (LLMs), particularly in scenarios demanding external knowledge integration. This approach addresses limitations of LLMs that primarily rely on internal knowledge. By incentivizing LLMs to **autonomously engage external search systems**, RL offers a pathway to overcome inaccuracies and hallucinations, crucial for time-sensitive and knowledge-intensive tasks. The key is to train LLMs to effectively use the search tool and integrate it into the reasoning. By carefully design the **reward function** we can progressively enable the model to invoke the external retrieval system and integrate retrieved documents into reasoning.

#### R1-Searcher
**R1-Searcher** is presented as a novel two-stage outcome-based reinforcement learning (RL) approach designed to enhance search capabilities in Large Language Models (LLMs). It addresses the challenge of LLMs relying heavily on internal knowledge, which can lead to inaccuracies, especially in time-sensitive or knowledge-intensive tasks. **The framework enables LLMs to autonomously invoke external search systems** to access additional knowledge during reasoning. A key feature is its reliance exclusively on RL, eliminating the need for process rewards or distillation for a cold start, potentially streamlining the training process and improving efficiency. **The two-stage approach likely involves an initial phase focused on learning the mechanics of external search integration**, followed by a refinement stage that optimizes the use of retrieved information for accurate problem-solving, it represents a significant step towards more deliberative reasoning in LLMs. The method significantly outperforms previous strong RAG methods.

#### Two-Stage RL
**Two-stage RL** is a crucial strategy for complex problem-solving. It allows for a phased approach, where initial stages focus on exploration and learning basic skills, and subsequent stages refine these skills towards a specific goal. This mimics human learning, starting with broad understanding and moving towards specialized expertise. The first stage could involve pre-training, imitation learning, or unsupervised exploration to establish a foundational policy. The second stage involves finetuning with reinforcement learning, guiding the policy towards optimal performance. This approach prevents premature convergence to suboptimal policies and improves sample efficiency. The design of the reward function is critical, as it will influence the model to take certain actions based on the reward it gets. Moreover, it can be designed so that the model may consider a different reward at different stages. 

#### RAG-based Rollout
**RAG-based rollout** aims to improve how language models use external knowledge. By strategically inserting special tags like <begin_of_query> and <end_of_query>, the model is prompted to use the search tool during generation. When the model generates the <end_of_query> tag, the process pauses so that the query can be extracted and used for retrieval. The retrieved documents, surrounded by <begin_of_documents> and <end_of_documents> tags, are then incorporated into the model’s reasoning process.  This method helps ensure that retrieval is a seamless part of the reasoning, enabling the model to make decisions based on retrieved knowledge without disrupting its flow.

#### Online Search
**Online search** represents a crucial frontier for enhancing LLMs, moving beyond static knowledge to real-time information access. Integrating LLMs with online search capabilities holds the potential to address knowledge-intensive tasks, time-sensitive queries, and personalized information needs more effectively. **A key challenge** lies in enabling LLMs to formulate effective search queries, understand the retrieved information, and synthesize it into coherent and accurate responses. **Another challenge** is to design training methodologies that allow LLMs to effectively leverage online search without overfitting or memorizing specific search results. There is also a **need to ensure** the ethical use of online search within LLMs, mitigating the risk of biased information and promoting reliable answers.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05592/extracted/6261303/figures/1.png)

> 🔼 This figure compares the performance of two reinforcement learning algorithms, GRPO and Reinforce++, when training the Llama-3.1-8B-Instruct large language model.  It shows the log of the reward, the length of the generated response, and the number of retrievals performed during training for each algorithm.  This allows for a visual comparison of the training process and the impact of each algorithm on different aspects of the model's behavior.
> <details>
> <summary>read the caption</summary>
> Figure 2: The log of reward, response length, and retrieval numbers for Llama-3.1-8B-Instruct comparison between using GRPO and Reinforce++.
> </details>



![](https://arxiv.org/html/2503.05592/extracted/6261303/figures/4.png)

> 🔼 This figure displays three graphs showing the training progress of the Qwen-2.5-7B-Base language model using different reward metrics for outcome-supervised reinforcement learning.  Each graph plots a different aspect of the training process against the training step: the first shows the log of the reward received, the second shows the length of the model's generated responses, and the third shows the number of retrievals performed. Different line colors represent different reward metrics: EM (Exact Match), CEM (Cover Exact Match), and F1 (F1-score). Analyzing these graphs allows one to see how the choice of reward metric impacts training efficiency and the model's behavior.
> <details>
> <summary>read the caption</summary>
> Figure 3: The log of reward, response length, and retrieval numbers for the Qwen-2.5-7B-Base model utilizing different metrics for outcome-supervised reward calculation.
> </details>



![](https://arxiv.org/html/2503.05592/extracted/6261303/figures/5.png)

> 🔼 This figure displays three graphs showing the training process of the Qwen-2.5-7B-Base language model using reinforcement learning. The graphs track the log of reward, response length, and retrieval numbers over training steps. Two different training datasets are used: one with varying difficulty levels (w. Difficult), and another without the most difficult questions (w/o Difficult).  The figure aims to illustrate how the difficulty of the training data influences the model's learning behavior and its reliance on external search (retrieval).
> <details>
> <summary>read the caption</summary>
> Figure 4: The log of reward, response length, and retrieval numbers for the Qwen-2.5-7B-Base model, trained on datasets of varying difficulty levels.
> </details>



![](https://arxiv.org/html/2503.05592/extracted/6261303/figures/6.png)

> 🔼 This figure presents a comparison of training results for the Qwen-2.5-7B-Base language model using three different training datasets: HotpotQA, 2Wiki, and a mixture of both.  It displays graphs showing the change in training reward, response length (number of tokens in the model's output), and retrieval count (number of times external knowledge was accessed) over the course of training. This visualization allows for the analysis of how different data sources impact the training dynamics and the model's performance. Differences in reward curves, response length, and retrieval counts across the three datasets indicate varying learning behavior and model efficiency under different conditions.
> <details>
> <summary>read the caption</summary>
> Figure 5: The log of reward, response length, and retrieval numbers for the Qwen-2.5-7B-Base model trained on different datasets.
> </details>



![](https://arxiv.org/html/2503.05592/x2.png)

> 🔼 Figure 6 presents a performance comparison on the Bamboogle dataset between models using local search (R1-Searcher with different LLMs as backbones and other baselines) and online search (R1-Searcher and Search-01).  The graph displays the accuracy or percentile achieved by each method on the Bamboogle dataset. This comparison highlights the generalization capability of R1-Searcher when adapting to different search environments (local vs. online). Search-01, a strong baseline, is included in the comparison to showcase R1-Searcher's performance relative to a model specifically designed for online search.
> <details>
> <summary>read the caption</summary>
> Figure 6: Preference comparison of our models that utilize local search and online search and the baselines on the Bamboogle dataset. Search-o1 utilizes online search, and all other baselines employ local search.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.8.8">
<tr class="ltx_tr" id="S3.T2.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.8.8.9.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.9.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.2.1">Types</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.8.8.9.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.3.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.8.8.9.4"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.4.1">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.8.8.9.5"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.5.1">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.8.8.9.6"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.6.1">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.8.8.9.7"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.9.7.1">Musique</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1"><math alttext="\text{ACC}_{R}" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><msub id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml"><mtext id="S3.T2.1.1.1.1.m1.1.1.2" xref="S3.T2.1.1.1.1.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.m1.1.1.3.cmml">R</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.1.1.1.1.m1.1.1.2a.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2"><mtext id="S3.T2.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.1.1.1.1.m1.1.1.3.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3">𝑅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\text{ACC}_{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">ACC start_POSTSUBSCRIPT italic_R end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.2"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><msub id="S3.T2.2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.cmml"><mtext id="S3.T2.2.2.2.2.m1.1.1.2" xref="S3.T2.2.2.2.2.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.2.2.2.2.m1.1.1.3" xref="S3.T2.2.2.2.2.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.2.2.2.2.m1.1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S3.T2.2.2.2.2.m1.1.1.2a.cmml" xref="S3.T2.2.2.2.2.m1.1.1.2"><mtext id="S3.T2.2.2.2.2.m1.1.1.2.cmml" xref="S3.T2.2.2.2.2.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.2.2.2.2.m1.1.1.3.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.3"><math alttext="\text{ACC}_{R}" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><msub id="S3.T2.3.3.3.3.m1.1.1" xref="S3.T2.3.3.3.3.m1.1.1.cmml"><mtext id="S3.T2.3.3.3.3.m1.1.1.2" xref="S3.T2.3.3.3.3.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.3.3.3.3.m1.1.1.3" xref="S3.T2.3.3.3.3.m1.1.1.3.cmml">R</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.3.3.3.3.m1.1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S3.T2.3.3.3.3.m1.1.1.2a.cmml" xref="S3.T2.3.3.3.3.m1.1.1.2"><mtext id="S3.T2.3.3.3.3.m1.1.1.2.cmml" xref="S3.T2.3.3.3.3.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.3.3.3.3.m1.1.1.3.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3">𝑅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\text{ACC}_{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">ACC start_POSTSUBSCRIPT italic_R end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.4.4"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><msub id="S3.T2.4.4.4.4.m1.1.1" xref="S3.T2.4.4.4.4.m1.1.1.cmml"><mtext id="S3.T2.4.4.4.4.m1.1.1.2" xref="S3.T2.4.4.4.4.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.4.4.4.4.m1.1.1.3" xref="S3.T2.4.4.4.4.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><apply id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.4.4.4.4.m1.1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S3.T2.4.4.4.4.m1.1.1.2a.cmml" xref="S3.T2.4.4.4.4.m1.1.1.2"><mtext id="S3.T2.4.4.4.4.m1.1.1.2.cmml" xref="S3.T2.4.4.4.4.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.4.4.4.4.m1.1.1.3.cmml" xref="S3.T2.4.4.4.4.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5"><math alttext="\text{ACC}_{R}" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><msub id="S3.T2.5.5.5.5.m1.1.1" xref="S3.T2.5.5.5.5.m1.1.1.cmml"><mtext id="S3.T2.5.5.5.5.m1.1.1.2" xref="S3.T2.5.5.5.5.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.5.5.5.5.m1.1.1.3" xref="S3.T2.5.5.5.5.m1.1.1.3.cmml">R</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><apply id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.5.5.5.5.m1.1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S3.T2.5.5.5.5.m1.1.1.2a.cmml" xref="S3.T2.5.5.5.5.m1.1.1.2"><mtext id="S3.T2.5.5.5.5.m1.1.1.2.cmml" xref="S3.T2.5.5.5.5.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.5.5.5.5.m1.1.1.3.cmml" xref="S3.T2.5.5.5.5.m1.1.1.3">𝑅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\text{ACC}_{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">ACC start_POSTSUBSCRIPT italic_R end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.6"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><msub id="S3.T2.6.6.6.6.m1.1.1" xref="S3.T2.6.6.6.6.m1.1.1.cmml"><mtext id="S3.T2.6.6.6.6.m1.1.1.2" xref="S3.T2.6.6.6.6.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.6.6.6.6.m1.1.1.3" xref="S3.T2.6.6.6.6.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><apply id="S3.T2.6.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.6.6.6.6.m1.1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1">subscript</csymbol><ci id="S3.T2.6.6.6.6.m1.1.1.2a.cmml" xref="S3.T2.6.6.6.6.m1.1.1.2"><mtext id="S3.T2.6.6.6.6.m1.1.1.2.cmml" xref="S3.T2.6.6.6.6.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.6.6.6.6.m1.1.1.3.cmml" xref="S3.T2.6.6.6.6.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.7.7"><math alttext="\text{ACC}_{R}" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.7.m1.1a"><msub id="S3.T2.7.7.7.7.m1.1.1" xref="S3.T2.7.7.7.7.m1.1.1.cmml"><mtext id="S3.T2.7.7.7.7.m1.1.1.2" xref="S3.T2.7.7.7.7.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.7.7.7.7.m1.1.1.3" xref="S3.T2.7.7.7.7.m1.1.1.3.cmml">R</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.m1.1b"><apply id="S3.T2.7.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.7.7.7.7.m1.1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S3.T2.7.7.7.7.m1.1.1.2a.cmml" xref="S3.T2.7.7.7.7.m1.1.1.2"><mtext id="S3.T2.7.7.7.7.m1.1.1.2.cmml" xref="S3.T2.7.7.7.7.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.7.7.7.7.m1.1.1.3.cmml" xref="S3.T2.7.7.7.7.m1.1.1.3">𝑅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.m1.1c">\text{ACC}_{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.m1.1d">ACC start_POSTSUBSCRIPT italic_R end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.8.8"><math alttext="\text{ACC}_{L}" class="ltx_Math" display="inline" id="S3.T2.8.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.8.m1.1a"><msub id="S3.T2.8.8.8.8.m1.1.1" xref="S3.T2.8.8.8.8.m1.1.1.cmml"><mtext id="S3.T2.8.8.8.8.m1.1.1.2" xref="S3.T2.8.8.8.8.m1.1.1.2a.cmml">ACC</mtext><mi id="S3.T2.8.8.8.8.m1.1.1.3" xref="S3.T2.8.8.8.8.m1.1.1.3.cmml">L</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.8.m1.1b"><apply id="S3.T2.8.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.8.8.8.8.m1.1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1">subscript</csymbol><ci id="S3.T2.8.8.8.8.m1.1.1.2a.cmml" xref="S3.T2.8.8.8.8.m1.1.1.2"><mtext id="S3.T2.8.8.8.8.m1.1.1.2.cmml" xref="S3.T2.8.8.8.8.m1.1.1.2">ACC</mtext></ci><ci id="S3.T2.8.8.8.8.m1.1.1.3.cmml" xref="S3.T2.8.8.8.8.m1.1.1.3">𝐿</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.8.m1.1c">\text{ACC}_{L}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.8.m1.1d">ACC start_POSTSUBSCRIPT italic_L end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.10.1" rowspan="13"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.10.1.1">GPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.10.2.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.10.3">Naive Generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.4">0.324</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.5">0.404</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.6">0.348</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.7">0.346</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.8">0.240</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.9">0.280</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.10">0.134</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.10.11">0.170</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.11">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.11.1">Standard RAG</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2">0.342</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.3">0.450</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.4">0.344</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.5">0.292</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.6">0.272</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.7">0.328</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.8">0.172</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.9">0.188</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.12">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.12.1.1">Branching</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.12.2">SuRe</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.3">0.270</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.4">0.380</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.5">0.244</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.6">0.264</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.7">0.168</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.8">0.208</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.9">0.128</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.12.10">0.146</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.13">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.13.1">REPLUG</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.2">0.350</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.3">0.428</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.4">0.296</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.5">0.254</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.6">0.224</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.7">0.256</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.8">0.132</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.13.9">0.138</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.14">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.14.1.1">Summary</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.14.2">LongLLMLingua</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.3">0.358</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.4">0.450</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.5">0.324</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.6">0.316</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.7">0.248</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.8">0.288</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.9">0.150</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.14.10">0.172</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.15">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.15.1">RECOMP</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.2">0.332</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.3">0.398</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.4">0.298</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.5">0.306</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.6">0.136</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.7">0.176</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.8">0.118</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.15.9">0.134</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.16">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.16.1">Selective-Context</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.2">0.366</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.3">0.442</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.4">0.350</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.5">0.290</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.6">0.240</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.7">0.288</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.8">0.152</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.16.9">0.172</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.17">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.17.1.1">Adaptive</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.17.2">SKR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.3">0.360</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.4">0.454</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.5">0.364</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.6">0.314</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.7">0.248</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.8">0.288</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.9">0.162</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.17.10">0.174</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.18">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.18.1.1">RAG-CoT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.18.2">Self-Ask</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.3">0.392</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.4">0.462</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.5">0.336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.6">0.478</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.7">0.336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.8">0.416</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.9">0.260</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.18.10">0.270</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.19">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.19.1">Iter-RetGen</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.2">0.374</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.3">0.456</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.4">0.326</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.5">0.270</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.6">0.232</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.7">0.256</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.8">0.178</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.19.9">0.188</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.20">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.20.1">IRCoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.2">0.434</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.3">0.308</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.4">0.492</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.5">0.114</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.6">0.272</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.7">0.184</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.8">0.192</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.20.9">0.214</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.21">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.21.1.1">Test-Time</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.21.2">CR-Planner</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.3">0.404</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.4">0.416</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.5">0.520</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.6">0.478</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.7">0.488</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.8">0.524</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.9">0.272</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.21.10">0.262</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.22">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.22.1">ReARTeR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.2">0.468</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.3">0.506</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.4">0.554</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.5">0.534</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.6">0.496</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.7">0.544</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.8"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.22.8.1">0.296</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.22.9">0.302</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.23.1" rowspan="15"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.23.1.1">Llama</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.23.2.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.23.3">Naive Generation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.4">0.208</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.5">0.268</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.6">0.326</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.7">0.254</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.8">0.144</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.9">0.168</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.10">0.068</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.23.11">0.096</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.24">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.24.1">Standard RAG</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.2">0.334</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.3">0.398</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.4">0.336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.5">0.212</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.6">0.168</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.7">0.216</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.8">0.104</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.24.9">0.098</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.25">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.25.1.1">Branching</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.25.2">SuRe</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.3">0.266</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.4">0.346</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.5">0.122</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.6">0.262</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.7">0.160</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.8">0.192</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.9">0.106</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.25.10">0.144</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.26">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.26.1">REPLUG</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.2">0.290</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.3">0.348</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.4">0.334</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.5">0.204</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.6">0.168</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.7">0.232</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.8">0.078</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.26.9">0.090</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.27">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.27.1.1">Summary</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.27.2">LongLLMLingua</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.3">0.314</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.4">0.382</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.5">0.304</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.6">0.294</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.7">0.168</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.8">0.216</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.9">0.088</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.27.10">0.100</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.28">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.28.1">RECOMP</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.2">0.318</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.3">0.380</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.4">0.324</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.5">0.322</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.6">0.104</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.7">0.160</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.8">0.112</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.28.9">0.126</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.29">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.29.1">Selective-Context</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.2">0.296</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.3">0.358</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.4">0.266</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.5">0.204</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.6">0.144</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.7">0.200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.8">0.092</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.29.9">0.104</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.30">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.30.1.1">Adaptive</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.30.2">SKR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.3">0.300</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.4">0.372</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.5">0.336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.6">0.212</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.7">0.176</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.8">0.208</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.9">0.100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.30.10">0.112</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.31">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.31.1.1">RAG-CoT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.31.2">Self-Ask</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.3">0.316</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.4">0.408</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.5">0.306</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.6">0.322</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.7">0.360</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.8">0.432</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.9">0.222</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.31.10">0.226</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.32">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.32.1">Iter-RetGen</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.2">0.302</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.3">0.362</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.4">0.310</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.5">0.224</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.6">0.144</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.7">0.176</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.8">0.084</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.32.9">0.084</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.33">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.33.1">IRCoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.2">0.210</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.3">0.146</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.4">0.338</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.5">0.312</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.6">0.120</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.7">0.104</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.8">0.060</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.33.9">0.042</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.34">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.34.1.1">Test-Time</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.34.2">CR-Planer</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.3">0.332</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.4">0.350</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.5">0.420</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.6">0.350</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.7">0.304</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.8">0.336</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.9">0.144</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.34.10">0.098</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.35">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.35.1">ReARTeR</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.2">0.424</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.3">0.434</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.4">0.470</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.5">0.364</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.6">0.438</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.7">0.484</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.8">0.244</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.35.9">0.252</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.36">
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.36.1.1">Reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.36.2">Marco-o1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.3">0.352</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.4">0.348</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.5">0.442</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.6">0.184</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.7">0.224</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.8">0.200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.9">0.134</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.36.10">0.104</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.37">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.37.1">Skywork-o1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.2">0.306</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.3">0.256</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.4">0.344</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.5">0.190</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.6">0.176</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.7">0.160</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.8">0.092</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.37.9">0.060</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.38">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.8.8.38.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.38.1.1">Llama</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.38.2.1">RL</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.8.8.38.3" rowspan="2"><span class="ltx_text" id="S3.T2.8.8.38.3.1">R1-Searcher</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.4">0.648</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.5">0.746</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.6">0.594</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.7">0.628</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.8">0.504</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.9"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.38.9.1">0.544</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.10">0.254</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.38.11">0.282</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.39">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.8.8.39.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.1.1">Qwen</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.2"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.2.1">RL-Zero</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.3"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.3.1">0.654</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.4"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.4.1">0.750</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.5"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.5.1">0.636</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.6"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.6.1">0.650</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.7"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.7.1">0.528</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.8"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.8.1">0.544</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.9">0.282</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.39.10"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.39.10.1">0.314</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of the R1-Searcher model against various baselines on four distinct multi-hop question answering (QA) benchmarks.  The results are shown in terms of accuracy metrics (Cover Exact Match (ACC_R) and LLM-as-Judge (ACC_L)).  Baselines include zero-shot methods, retrieval-augmented generation (RAG) methods using different techniques, and test-time scaling methods.  The table highlights the superior performance of R1-Searcher across all benchmarks, demonstrating the effectiveness of its approach in enhancing the search capabilities of large language models (LLMs).  The abbreviations GPT, Qwen, and Llama refer to specific LLMs used in the baselines.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparisons between R1-Searcher and the baselines on four multi-hop QA benchmarks. The boldface indicates the best performance. GPT, Qwen, and Llama are the abbreviations of GPT-4o-mini, Qwen-2.5-7B-Base, and Llama-3.1-8B-Instruct, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.9">
<tr class="ltx_tr" id="S4.T3.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.9.10.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T3.9.10.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.9.10.3.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T3.9.10.4.1" style="font-size:90%;">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.9.10.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.9.10.5.1" style="font-size:90%;">Avg (CEM)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1"><span class="ltx_text ltx_markedasmath" id="S4.T3.1.1.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2"><span class="ltx_text ltx_markedasmath" id="S4.T3.2.2.2.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3"><span class="ltx_text ltx_markedasmath" id="S4.T3.3.3.3.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4"><span class="ltx_text ltx_markedasmath" id="S4.T3.4.4.4.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5"><span class="ltx_text ltx_markedasmath" id="S4.T3.5.5.5.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.6"><span class="ltx_text ltx_markedasmath" id="S4.T3.6.6.6.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.7.7"><span class="ltx_text ltx_markedasmath" id="S4.T3.7.7.7.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.8"><span class="ltx_text ltx_markedasmath" id="S4.T3.8.8.8.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9"><span class="ltx_text ltx_markedasmath" id="S4.T3.9.9.9.1" style="font-size:90%;">F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.9.11.1"><span class="ltx_text" id="S4.T3.9.11.1.1" style="font-size:90%;">GRPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.2"><span class="ltx_text" id="S4.T3.9.11.2.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.3"><span class="ltx_text" id="S4.T3.9.11.3.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.4"><span class="ltx_text" id="S4.T3.9.11.4.1" style="font-size:90%;">68.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.5"><span class="ltx_text" id="S4.T3.9.11.5.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.6"><span class="ltx_text" id="S4.T3.9.11.6.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.7"><span class="ltx_text" id="S4.T3.9.11.7.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.8"><span class="ltx_text" id="S4.T3.9.11.8.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.9"><span class="ltx_text" id="S4.T3.9.11.9.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.10"><span class="ltx_text" id="S4.T3.9.11.10.1" style="font-size:90%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.11.11"><span class="ltx_text" id="S4.T3.9.11.11.1" style="font-size:90%;">59.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.9.12.1"><span class="ltx_text" id="S4.T3.9.12.1.1" style="font-size:90%;">Reinforce++</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.2"><span class="ltx_text" id="S4.T3.9.12.2.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.3"><span class="ltx_text" id="S4.T3.9.12.3.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.4"><span class="ltx_text" id="S4.T3.9.12.4.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.5"><span class="ltx_text" id="S4.T3.9.12.5.1" style="font-size:90%;">57.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.6"><span class="ltx_text" id="S4.T3.9.12.6.1" style="font-size:90%;">61.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.7"><span class="ltx_text" id="S4.T3.9.12.7.1" style="font-size:90%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.8"><span class="ltx_text" id="S4.T3.9.12.8.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.9"><span class="ltx_text" id="S4.T3.9.12.9.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.10"><span class="ltx_text" id="S4.T3.9.12.10.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.12.11"><span class="ltx_text" id="S4.T3.9.12.11.1" style="font-size:90%;">58.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance achieved by two different reinforcement learning algorithms, GRPO and Reinforce++, when used to train the Llama-3.1-8B-Instruct language model on three distinct multi-hop question answering (QA) benchmark datasets.  It evaluates the effectiveness of each algorithm in improving the model's ability to answer complex, multi-step questions, showcasing differences in performance metrics across the chosen benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 3:  Performance comparison of Llama-3.1-8B-Instruct trained using GRPO and Reinforce++ on three multi-hop QA benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.9">
<tr class="ltx_tr" id="S4.T4.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.10.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T4.9.10.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T4.9.10.3.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T4.9.10.4.1" style="font-size:90%;">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.9.10.5" rowspan="2"><span class="ltx_text" id="S4.T4.9.10.5.1" style="font-size:90%;"><span class="ltx_text" id="S4.T4.9.10.5.1.1"></span><span class="ltx_text ltx_font_bold" id="S4.T4.9.10.5.1.2"> <span class="ltx_text" id="S4.T4.9.10.5.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.9.10.5.1.2.1.1">
<span class="ltx_tr" id="S4.T4.9.10.5.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.9.10.5.1.2.1.1.1.1">Avg</span></span>
<span class="ltx_tr" id="S4.T4.9.10.5.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.9.10.5.1.2.1.1.2.1">(CEM)</span></span>
</span></span> <span class="ltx_text" id="S4.T4.9.10.5.1.2.2"></span></span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1"><span class="ltx_text ltx_markedasmath" id="S4.T4.1.1.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2"><span class="ltx_text ltx_markedasmath" id="S4.T4.2.2.2.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3"><span class="ltx_text ltx_markedasmath" id="S4.T4.3.3.3.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.4.4"><span class="ltx_text ltx_markedasmath" id="S4.T4.4.4.4.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5"><span class="ltx_text ltx_markedasmath" id="S4.T4.5.5.5.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6"><span class="ltx_text ltx_markedasmath" id="S4.T4.6.6.6.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.7.7"><span class="ltx_text ltx_markedasmath" id="S4.T4.7.7.7.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.8.8"><span class="ltx_text ltx_markedasmath" id="S4.T4.8.8.8.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.9"><span class="ltx_text ltx_markedasmath" id="S4.T4.9.9.9.1" style="font-size:90%;">F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.9.11.1"><span class="ltx_text" id="S4.T4.9.11.1.1" style="font-size:90%;">Qwen-Base-RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.2"><span class="ltx_text" id="S4.T4.9.11.2.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.3"><span class="ltx_text" id="S4.T4.9.11.3.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.4"><span class="ltx_text" id="S4.T4.9.11.4.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.5"><span class="ltx_text" id="S4.T4.9.11.5.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.6"><span class="ltx_text" id="S4.T4.9.11.6.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.7"><span class="ltx_text" id="S4.T4.9.11.7.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.8"><span class="ltx_text" id="S4.T4.9.11.8.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.9"><span class="ltx_text" id="S4.T4.9.11.9.1" style="font-size:90%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.10"><span class="ltx_text" id="S4.T4.9.11.10.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.11.11"><span class="ltx_text" id="S4.T4.9.11.11.1" style="font-size:90%;">60.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.12">
<td class="ltx_td ltx_align_left" id="S4.T4.9.12.1"><span class="ltx_text" id="S4.T4.9.12.1.1" style="font-size:90%;">Qwen-Base-SFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.2"><span class="ltx_text" id="S4.T4.9.12.2.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.3"><span class="ltx_text" id="S4.T4.9.12.3.1" style="font-size:90%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.4"><span class="ltx_text" id="S4.T4.9.12.4.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.5"><span class="ltx_text" id="S4.T4.9.12.5.1" style="font-size:90%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.6"><span class="ltx_text" id="S4.T4.9.12.6.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.7"><span class="ltx_text" id="S4.T4.9.12.7.1" style="font-size:90%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.8"><span class="ltx_text" id="S4.T4.9.12.8.1" style="font-size:90%;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.9"><span class="ltx_text" id="S4.T4.9.12.9.1" style="font-size:90%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.10"><span class="ltx_text" id="S4.T4.9.12.10.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.12.11"><span class="ltx_text" id="S4.T4.9.12.11.1" style="font-size:90%;">50.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.13">
<td class="ltx_td ltx_align_left" id="S4.T4.9.13.1"><span class="ltx_text" id="S4.T4.9.13.1.1" style="font-size:90%;">Llama-Instruct-RL</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.2"><span class="ltx_text" id="S4.T4.9.13.2.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.3"><span class="ltx_text" id="S4.T4.9.13.3.1" style="font-size:90%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.4"><span class="ltx_text" id="S4.T4.9.13.4.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.5"><span class="ltx_text" id="S4.T4.9.13.5.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.6"><span class="ltx_text" id="S4.T4.9.13.6.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.7"><span class="ltx_text" id="S4.T4.9.13.7.1" style="font-size:90%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.8"><span class="ltx_text" id="S4.T4.9.13.8.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.9"><span class="ltx_text" id="S4.T4.9.13.9.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.10"><span class="ltx_text" id="S4.T4.9.13.10.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.13.11"><span class="ltx_text" id="S4.T4.9.13.11.1" style="font-size:90%;">58.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.9.14.1"><span class="ltx_text" id="S4.T4.9.14.1.1" style="font-size:90%;">Llama-Instruct-SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.2"><span class="ltx_text" id="S4.T4.9.14.2.1" style="font-size:90%;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.3"><span class="ltx_text" id="S4.T4.9.14.3.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.4"><span class="ltx_text" id="S4.T4.9.14.4.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.5"><span class="ltx_text" id="S4.T4.9.14.5.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.6"><span class="ltx_text" id="S4.T4.9.14.6.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.7"><span class="ltx_text" id="S4.T4.9.14.7.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.8"><span class="ltx_text" id="S4.T4.9.14.8.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.9"><span class="ltx_text" id="S4.T4.9.14.9.1" style="font-size:90%;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.10"><span class="ltx_text" id="S4.T4.9.14.10.1" style="font-size:90%;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.9.14.11"><span class="ltx_text" id="S4.T4.9.14.11.1" style="font-size:90%;">48.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between models trained using Reinforcement Learning (RL) and Supervised Fine-tuning (SFT).  It shows the results of both Qwen-2.5-7B-Base and Llama-3.1-8B-Instruct models on three multi-hop question answering (QA) benchmarks: HotpotQA, 2Wiki, and Bamboogle. The metrics used to evaluate performance are Exact Match (EM), Cover Exact Match (CEM), and F1 score.  The table highlights the superior performance of RL-trained models, demonstrating better generalization and retrieval capabilities compared to SFT-trained models.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of Qwen-2.5-7B-Base and Llama-3.1-8B-Instruct trained using RL and SFT on three multi-hop QA benchmarks. Qwen-Base and Llama-Instruct are the abbreviations of Qwen-2.5-7B-Base and Llama-3.1-8B-Instruct, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.9">
<tr class="ltx_tr" id="S4.T5.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.9.10.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T5.9.10.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T5.9.10.3.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T5.9.10.4.1" style="font-size:90%;">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.9.10.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.9.10.5.1" style="font-size:90%;">Avg (CEM)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1"><span class="ltx_text ltx_markedasmath" id="S4.T5.1.1.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2"><span class="ltx_text ltx_markedasmath" id="S4.T5.2.2.2.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.3"><span class="ltx_text ltx_markedasmath" id="S4.T5.3.3.3.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4"><span class="ltx_text ltx_markedasmath" id="S4.T5.4.4.4.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.5"><span class="ltx_text ltx_markedasmath" id="S4.T5.5.5.5.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.6.6"><span class="ltx_text ltx_markedasmath" id="S4.T5.6.6.6.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.7.7.7"><span class="ltx_text ltx_markedasmath" id="S4.T5.7.7.7.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.8.8"><span class="ltx_text ltx_markedasmath" id="S4.T5.8.8.8.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.9.9"><span class="ltx_text ltx_markedasmath" id="S4.T5.9.9.9.1" style="font-size:90%;">F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.9.11.1"><span class="ltx_text" id="S4.T5.9.11.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.2"><span class="ltx_text" id="S4.T5.9.11.2.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.3"><span class="ltx_text" id="S4.T5.9.11.3.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.4"><span class="ltx_text" id="S4.T5.9.11.4.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.5"><span class="ltx_text" id="S4.T5.9.11.5.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.6"><span class="ltx_text" id="S4.T5.9.11.6.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.7"><span class="ltx_text" id="S4.T5.9.11.7.1" style="font-size:90%;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.8"><span class="ltx_text" id="S4.T5.9.11.8.1" style="font-size:90%;">24.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.9"><span class="ltx_text" id="S4.T5.9.11.9.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.10"><span class="ltx_text" id="S4.T5.9.11.10.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.9.11.11"><span class="ltx_text" id="S4.T5.9.11.11.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.12">
<td class="ltx_td ltx_align_left" id="S4.T5.9.12.1"><span class="ltx_text" id="S4.T5.9.12.1.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.2"><span class="ltx_text" id="S4.T5.9.12.2.1" style="font-size:90%;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.3"><span class="ltx_text" id="S4.T5.9.12.3.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.4"><span class="ltx_text" id="S4.T5.9.12.4.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.5"><span class="ltx_text" id="S4.T5.9.12.5.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.6"><span class="ltx_text" id="S4.T5.9.12.6.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.7"><span class="ltx_text" id="S4.T5.9.12.7.1" style="font-size:90%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.8"><span class="ltx_text" id="S4.T5.9.12.8.1" style="font-size:90%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.9"><span class="ltx_text" id="S4.T5.9.12.9.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.10"><span class="ltx_text" id="S4.T5.9.12.10.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.12.11"><span class="ltx_text" id="S4.T5.9.12.11.1" style="font-size:90%;">59.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.9.13.1"><span class="ltx_text" id="S4.T5.9.13.1.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.2"><span class="ltx_text" id="S4.T5.9.13.2.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.3"><span class="ltx_text" id="S4.T5.9.13.3.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.4"><span class="ltx_text" id="S4.T5.9.13.4.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.5"><span class="ltx_text" id="S4.T5.9.13.5.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.6"><span class="ltx_text" id="S4.T5.9.13.6.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.7"><span class="ltx_text" id="S4.T5.9.13.7.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.8"><span class="ltx_text" id="S4.T5.9.13.8.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.9"><span class="ltx_text" id="S4.T5.9.13.9.1" style="font-size:90%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.10"><span class="ltx_text" id="S4.T5.9.13.10.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.9.13.11"><span class="ltx_text" id="S4.T5.9.13.11.1" style="font-size:90%;">60.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the Qwen-2.5-7B-Base language model trained using reinforcement learning with different reward metrics for outcome supervision. The reward metrics compared are Exact Match (EM), Cover Exact Match (CEM), and F1 score, which are common evaluation metrics in question answering tasks. The performance is evaluated on three multi-hop question answering (QA) benchmarks: HotpotQA, 2Wiki, and Bamboogle.  The table shows the performance of the model in terms of EM, CEM, and F1 scores on each benchmark. This allows for an assessment of how different reward functions influence the model's ability to generate accurate answers and the effect they have on various metrics.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of the Qwen-2.5-7B-Base model utilizing different metrics for outcome-supervised reward calculation on three mutil-hop QA benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.9">
<tr class="ltx_tr" id="S4.T6.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.10.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.10.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T6.9.10.3.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T6.9.10.4.1" style="font-size:90%;">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.9.10.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T6.9.10.5.1" style="font-size:90%;">Avg (CEM)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1"><span class="ltx_text ltx_markedasmath" id="S4.T6.1.1.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2"><span class="ltx_text ltx_markedasmath" id="S4.T6.2.2.2.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.3.3"><span class="ltx_text ltx_markedasmath" id="S4.T6.3.3.3.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.4.4"><span class="ltx_text ltx_markedasmath" id="S4.T6.4.4.4.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.5.5"><span class="ltx_text ltx_markedasmath" id="S4.T6.5.5.5.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.6"><span class="ltx_text ltx_markedasmath" id="S4.T6.6.6.6.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.7.7.7"><span class="ltx_text ltx_markedasmath" id="S4.T6.7.7.7.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.8.8.8"><span class="ltx_text ltx_markedasmath" id="S4.T6.8.8.8.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.9.9"><span class="ltx_text ltx_markedasmath" id="S4.T6.9.9.9.1" style="font-size:90%;">F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.9.11.1"><span class="ltx_text" id="S4.T6.9.11.1.1" style="font-size:90%;">w/o Difficult</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.2"><span class="ltx_text" id="S4.T6.9.11.2.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.3"><span class="ltx_text" id="S4.T6.9.11.3.1" style="font-size:90%;">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.4"><span class="ltx_text" id="S4.T6.9.11.4.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.5"><span class="ltx_text" id="S4.T6.9.11.5.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.6"><span class="ltx_text" id="S4.T6.9.11.6.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.7"><span class="ltx_text" id="S4.T6.9.11.7.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.8"><span class="ltx_text" id="S4.T6.9.11.8.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.9"><span class="ltx_text" id="S4.T6.9.11.9.1" style="font-size:90%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.10"><span class="ltx_text" id="S4.T6.9.11.10.1" style="font-size:90%;">56.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.9.11.11"><span class="ltx_text" id="S4.T6.9.11.11.1" style="font-size:90%;">58.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.9.12.1"><span class="ltx_text" id="S4.T6.9.12.1.1" style="font-size:90%;">w. Difficult</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.2"><span class="ltx_text" id="S4.T6.9.12.2.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.3"><span class="ltx_text" id="S4.T6.9.12.3.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.4"><span class="ltx_text" id="S4.T6.9.12.4.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.5"><span class="ltx_text" id="S4.T6.9.12.5.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.6"><span class="ltx_text" id="S4.T6.9.12.6.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.7"><span class="ltx_text" id="S4.T6.9.12.7.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.8"><span class="ltx_text" id="S4.T6.9.12.8.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.9"><span class="ltx_text" id="S4.T6.9.12.9.1" style="font-size:90%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.10"><span class="ltx_text" id="S4.T6.9.12.10.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.9.12.11"><span class="ltx_text" id="S4.T6.9.12.11.1" style="font-size:90%;">60.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of the Qwen-2.5-7B-Base language model trained on datasets with varying difficulty levels.  It assesses the model's performance on three multi-hop question answering benchmarks (HotpotQA, 2Wiki, and Bamboogle).  The comparison focuses on evaluating the impact of training data difficulty (easy, medium, hard questions) on the model's ability to answer complex questions across different datasets.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison of the Qwen-2.5-7B-Base model trained on datasets of different difficulty levels on three mutil-hop QA benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.9">
<tr class="ltx_tr" id="S4.T7.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.9.10.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T7.9.10.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T7.9.10.2"><span class="ltx_text ltx_font_bold" id="S4.T7.9.10.2.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T7.9.10.3"><span class="ltx_text ltx_font_bold" id="S4.T7.9.10.3.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T7.9.10.4"><span class="ltx_text ltx_font_bold" id="S4.T7.9.10.4.1" style="font-size:90%;">Bamboogle</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.9.10.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T7.9.10.5.1" style="font-size:90%;">Avg (CEM)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.1.1"><span class="ltx_text ltx_markedasmath" id="S4.T7.1.1.1.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2"><span class="ltx_text ltx_markedasmath" id="S4.T7.2.2.2.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.3.3.3"><span class="ltx_text ltx_markedasmath" id="S4.T7.3.3.3.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4"><span class="ltx_text ltx_markedasmath" id="S4.T7.4.4.4.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.5.5.5"><span class="ltx_text ltx_markedasmath" id="S4.T7.5.5.5.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.6.6.6"><span class="ltx_text ltx_markedasmath" id="S4.T7.6.6.6.1" style="font-size:90%;">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.7.7.7"><span class="ltx_text ltx_markedasmath" id="S4.T7.7.7.7.1" style="font-size:90%;">EM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.8.8.8"><span class="ltx_text ltx_markedasmath" id="S4.T7.8.8.8.1" style="font-size:90%;">CEM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.9.9"><span class="ltx_text ltx_markedasmath" id="S4.T7.9.9.9.1" style="font-size:90%;">F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T7.9.11.1"><span class="ltx_text" id="S4.T7.9.11.1.1" style="font-size:90%;">HotpotQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.2"><span class="ltx_text" id="S4.T7.9.11.2.1" style="font-size:90%;">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.3"><span class="ltx_text" id="S4.T7.9.11.3.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.4"><span class="ltx_text" id="S4.T7.9.11.4.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.5"><span class="ltx_text" id="S4.T7.9.11.5.1" style="font-size:90%;">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.6"><span class="ltx_text" id="S4.T7.9.11.6.1" style="font-size:90%;">54.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.7"><span class="ltx_text" id="S4.T7.9.11.7.1" style="font-size:90%;">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.8"><span class="ltx_text" id="S4.T7.9.11.8.1" style="font-size:90%;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.9"><span class="ltx_text" id="S4.T7.9.11.9.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.10"><span class="ltx_text" id="S4.T7.9.11.10.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.9.11.11"><span class="ltx_text" id="S4.T7.9.11.11.1" style="font-size:90%;">54.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.12">
<td class="ltx_td ltx_align_left" id="S4.T7.9.12.1"><span class="ltx_text" id="S4.T7.9.12.1.1" style="font-size:90%;">2Wiki</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.2"><span class="ltx_text" id="S4.T7.9.12.2.1" style="font-size:90%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.3"><span class="ltx_text" id="S4.T7.9.12.3.1" style="font-size:90%;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.4"><span class="ltx_text" id="S4.T7.9.12.4.1" style="font-size:90%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.5"><span class="ltx_text" id="S4.T7.9.12.5.1" style="font-size:90%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.6"><span class="ltx_text" id="S4.T7.9.12.6.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.7"><span class="ltx_text" id="S4.T7.9.12.7.1" style="font-size:90%;">48.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.8"><span class="ltx_text" id="S4.T7.9.12.8.1" style="font-size:90%;">31.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.9"><span class="ltx_text" id="S4.T7.9.12.9.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.10"><span class="ltx_text" id="S4.T7.9.12.10.1" style="font-size:90%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.9.12.11"><span class="ltx_text" id="S4.T7.9.12.11.1" style="font-size:90%;">43.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T7.9.13.1"><span class="ltx_text" id="S4.T7.9.13.1.1" style="font-size:90%;">Mixture</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.2"><span class="ltx_text" id="S4.T7.9.13.2.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.3"><span class="ltx_text" id="S4.T7.9.13.3.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.4"><span class="ltx_text" id="S4.T7.9.13.4.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.5"><span class="ltx_text" id="S4.T7.9.13.5.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.6"><span class="ltx_text" id="S4.T7.9.13.6.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.7"><span class="ltx_text" id="S4.T7.9.13.7.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.8"><span class="ltx_text" id="S4.T7.9.13.8.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.9"><span class="ltx_text" id="S4.T7.9.13.9.1" style="font-size:90%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.10"><span class="ltx_text" id="S4.T7.9.13.10.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.9.13.11"><span class="ltx_text" id="S4.T7.9.13.11.1" style="font-size:90%;">60.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of the Qwen-2.5-7B-Base language model trained using reinforcement learning (RL) on different datasets.  It shows the impact of data diversity and difficulty on the model's performance across three multi-hop question answering benchmarks: HotpotQA, 2WikiMultiHopQA, and Bamboogle. The table compares the model's performance using different training dataset configurations: trained on HotpotQA only, 2WikiMultiHopQA only, and a mixture of both datasets.  The performance metrics used are Exact Match (EM), Cover Exact Match (CEM), and F1 score, providing a comprehensive evaluation of the model's accuracy and ability to retrieve relevant information.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison of the Qwen-2.5-7B-Base model trained on different datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T8.1">
<tr class="ltx_tr" id="S5.T8.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T8.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.1.1.1">
<span class="ltx_p" id="S5.T8.1.1.1.1.1" style="width:369.9pt;">Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T8.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.2.1.1">
<span class="ltx_p" id="S5.T8.1.2.1.1.1" style="width:369.9pt;">When did the last king from Britain’s House of Hanover die?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T8.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.3.1.1">
<span class="ltx_p" id="S5.T8.1.3.1.1.1" style="width:369.9pt;">Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T8.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.4.1.1">
<span class="ltx_p" id="S5.T8.1.4.1.1.1" style="width:369.9pt;">20 June 1837</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T8.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.5.1.1">
<span class="ltx_p" id="S5.T8.1.5.1.1.1" style="width:369.9pt;">Response (RL) <span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T8.1.5.1.1.1.1" style="color:#00FF00;"> (True)</span>:</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.2">To solve this question, I need to find out when the last king from Britain’s House of Hanover died.</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.3">Step 1: Identify the name of the last king from the House of Hanover.
Step 2: Determine the date of the last king’s death.</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.4">**Step 1: Identify the name of the last king from the House of Hanover.**</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.5">I’ll use a search query to find out:</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.6">&lt;|begin_of_query|&gt; last king from Britain’s House of Hanover&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.7">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.5.1.1.8">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T8.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.6.1.1">
<span class="ltx_p" id="S5.T8.1.6.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.2">From the search results, I can see that the last British monarch who reigned in Hanover was William IV.</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.3">**Step 2: Determine the date of the last king’s death.**</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.4">I’ll use a search query to find out when William IV died:</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.5">&lt;|begin_of_query|&gt; William IV of Hanover death date&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.6">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.6.1.1.7">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T8.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.7.1.1">
<span class="ltx_p" id="S5.T8.1.7.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.7.1.1.2">From the search results, I can see that William IV died on 20 June 1837.</span>
<span class="ltx_p" id="S5.T8.1.7.1.1.3">Therefore, the last king from Britain’s House of Hanover died on 20 June 1837.&lt;/think&gt;</span>
<span class="ltx_p" id="S5.T8.1.7.1.1.4">&lt;answer&gt; 20 June 1837 &lt;/answer&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T8.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.8.1.1">
<span class="ltx_p" id="S5.T8.1.8.1.1.1" style="width:369.9pt;">Response (SFT) <span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T8.1.8.1.1.1.1" style="color:#FF0000;"> (False)</span>:</span>
<span class="ltx_p" id="S5.T8.1.8.1.1.2">To answer this question, I need to recall the British monarchs who belonged to the House of Hanover and identify the last one. The House of Hanover includes kings like George I, George II, and George III. I need to find out when George III, the last Hanoverian king, passed away.</span>
<span class="ltx_p" id="S5.T8.1.8.1.1.3">George III ruled from 1760 to 1820. After his death, the throne passed to his son, George IV, who was from the House of Hanover’s successor, the House of Saxe-Coburg and Gotha.</span>
<span class="ltx_p" id="S5.T8.1.8.1.1.4">I will verify the date of George III’s death to provide the correct answer.
&lt;|begin_of_query|&gt; George III death date&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T8.1.8.1.1.5">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.8.1.1.6">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="S5.T8.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T8.1.9.1.1">
<span class="ltx_p" id="S5.T8.1.9.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T8.1.9.1.1.2">George III died on 29 January 1820. This confirms that he was the last king from Britain’s House of Hanover, and there was no Hanoverian king after him.</span>
<span class="ltx_p" id="S5.T8.1.9.1.1.3">The answer is 29 January 1820.
&lt;/think&gt; &lt;answer&gt; 29 January 1820 &lt;/answer&gt;</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a case study using the Bamboogle dataset to compare the performance of two Qwen-2.5-7B-Instruct models trained using reinforcement learning (RL) and supervised fine-tuning (SFT).  It highlights the differences in their reasoning processes and ability to answer complex, multi-hop questions requiring external information retrieval. The example question, answer, and the reasoning processes of both models are provided, illustrating how the RL-trained model effectively decomposes the question into subproblems, retrieves relevant information, and arrives at the correct answer, while the SFT-trained model struggles with similar processes, relying more heavily on internal knowledge and potentially resulting in an incorrect answer.
> <details>
> <summary>read the caption</summary>
> Table 8: Case study from the Bamboogle dataset comparing Qwen-2.5-7B-Instruct models trained with RL and SFT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T9.1">
<tr class="ltx_tr" id="S5.T9.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T9.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.1.1.1">
<span class="ltx_p" id="S5.T9.1.1.1.1.1" style="width:369.9pt;">Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.2.1.1">
<span class="ltx_p" id="S5.T9.1.2.1.1.1" style="width:369.9pt;">Who was president of the United States in the year that Citibank was founded?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.3.1.1">
<span class="ltx_p" id="S5.T9.1.3.1.1.1" style="width:369.9pt;">Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.4.1.1">
<span class="ltx_p" id="S5.T9.1.4.1.1.1" style="width:369.9pt;">james madison</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T9.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.5.1.1">
<span class="ltx_p" id="S5.T9.1.5.1.1.1" style="width:369.9pt;">Response (Qwen-2.5-7B-Base) <span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T9.1.5.1.1.1.1" style="color:#00FF00;"> (True)</span>:</span>
<span class="ltx_p" id="S5.T9.1.5.1.1.2">To solve this question, I need to find out who the president of the United States was in the year that Citibank was founded and then identify that president.</span>
<span class="ltx_p" id="S5.T9.1.5.1.1.3">Step 1: Determine the year Citibank was founded.
I’ll use a search query to find out:</span>
<span class="ltx_p" id="S5.T9.1.5.1.1.4">&lt;|begin_of_query|&gt; Citibank founding year&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T9.1.5.1.1.5">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.5.1.1.6">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.6.1.1">
<span class="ltx_p" id="S5.T9.1.6.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.6.1.1.2">From the search results, I can see that Citibank was founded in 1812.</span>
<span class="ltx_p" id="S5.T9.1.6.1.1.3">Step 2: Identify the president of the United States in 1812.
I’ll use a search query to find out:</span>
<span class="ltx_p" id="S5.T9.1.6.1.1.4">&lt;|begin_of_query|&gt; president of the United States in 1812&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T9.1.6.1.1.5">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.6.1.1.6">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.7.1.1">
<span class="ltx_p" id="S5.T9.1.7.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.7.1.1.2">The search results mention that James Madison was the President of the United States in 1812.</span>
<span class="ltx_p" id="S5.T9.1.7.1.1.3">Therefore, the president of the United States in the year that Citibank was founded was James Madison.&lt;/think&gt;</span>
<span class="ltx_p" id="S5.T9.1.7.1.1.4">&lt;answer&gt; James Madison &lt;/answer&gt;</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T9.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.8.1.1">
<span class="ltx_p" id="S5.T9.1.8.1.1.1" style="width:369.9pt;">Response (Llama-3.1-8B-Instruct) <span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T9.1.8.1.1.1.1" style="color:#00FF00;"> (True)</span>:</span>
<span class="ltx_p" id="S5.T9.1.8.1.1.2">Given the information, I don’t have specific knowledge about the president of the United States in the year Citibank was founded. I will perform a search to find the required information. The query to search for is "&lt;|begin_of_query|&gt; president of united states citibank founded&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T9.1.8.1.1.3">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.8.1.1.4">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T9.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.9.1.1">
<span class="ltx_p" id="S5.T9.1.9.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.9.1.1.2">Based on the search results, I found that Citibank was founded in 1812, and I couldn’t find specific information about the president of the United States in that year. I will perform another search to find the required information. The query to search for is "&lt;|begin_of_query|&gt; president united states 1812&lt;|end_of_query|&gt;</span>
<span class="ltx_p" id="S5.T9.1.9.1.1.3">&lt;|begin_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.9.1.1.4">…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T9.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T9.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T9.1.10.1.1">
<span class="ltx_p" id="S5.T9.1.10.1.1.1" style="width:369.9pt;">&lt;|end_of_documents|&gt;</span>
<span class="ltx_p" id="S5.T9.1.10.1.1.2">Based on the search results, I found that the president of the United States in 1812 was James Madison.&lt;/think&gt;</span>
<span class="ltx_p" id="S5.T9.1.10.1.1.3">&lt;answer&gt;James Madison&lt;/answer&gt;</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative case study of two large language models (LLMs), Qwen-2.5-7B-Instruct and Llama-3.1-8B-Instruct, both trained using reinforcement learning (RL).  The models are evaluated on their ability to answer a complex question from the Bamboogle dataset. The table shows the different reasoning processes employed by each model, along with the final answers, highlighting the differences in their approaches to problem-solving and demonstrating how RL affects their ability to decompose complex tasks, access external information through search, and arrive at a correct solution.
> <details>
> <summary>read the caption</summary>
> Table 9: Case study from the Bamboogle dataset comparing Qwen-2.5-7B-Instruct and Llama-3.1-8B-Instruct models trained with RL.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05592/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05592/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}