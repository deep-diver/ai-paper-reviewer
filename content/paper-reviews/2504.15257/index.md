---
title: "FlowReasoner: Reinforcing Query-Level Meta-Agents"
summary: "FlowReasoner automates multi-agent system design via query-level adaptation, surpassing existing methods in code benchmarks with a 10.52% accuracy boost."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Sea AI Lab",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15257 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongcheng Gao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15257" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15257" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15257/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Most multi-agent systems are designed manually, increasing resource costs and limiting scalability. Early automatic methods optimize prompts or hyperparameters but still rely on fixed workflows, requiring human effort for each scenario. Graph-based methods automate workflow designs but face scalability limits. State-of-the-art methods use programming codes and prompt performant LLMs as meta-agents, but they generate single task-specific systems lacking adaptability for individual user queries. 



This paper proposes **FlowReasoner**, a query-level meta-agent that automates the design of query-specific multi-agent systems. It incentivizes a reasoning-based meta-agent via external execution feedback. By distilling DeepSeek R1, FlowReasoner gains reasoning ability and is enhanced via reinforcement learning (RL). A multi-purpose reward guides RL training, considering performance, complexity, and efficiency. Experiments demonstrate FlowReasoner's superiority on engineering and competition code benchmarks. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FlowReasoner enhances multi-agent system adaptability by generating systems specific to individual user queries. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Reinforcement learning with external execution feedback is used to optimize multi-agent system performance, complexity, and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show FlowReasoner outperforms existing methods in code generation benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new approach to automatically designing multi-agent systems tailored to individual user queries. This work may inspire new research on more adaptive and efficient AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15257/x1.png)

> 🔼 This figure compares task-level and query-level meta-agents in multi-agent system design.  A task-level meta-agent creates a single system for a category of tasks (e.g., code generation). A query-level meta-agent, on the other hand, generates a separate, customized system for each individual user query.  The figure illustrates how these approaches differ at inference time, showing how task-level agents use a single system for all queries of a given task type and query-level agents create a unique system for every query.
> <details>
> <summary>read the caption</summary>
> Figure 1: Task-Level Meta-Agents vs. Query-Level Meta-Agents at Inference Time. q𝑞qitalic_q denotes a user query, e.g., build a 2048 game. t∼P⁢(q)similar-to𝑡𝑃𝑞t\sim P(q)italic_t ∼ italic_P ( italic_q ) denotes one kind of task, e.g., code generation task, which is a distribution of user queries. Given t𝑡titalic_t, previous task-level meta-agent 𝒜meta_tasksubscript𝒜meta_task\mathcal{A}_{\text{meta\_task}}caligraphic_A start_POSTSUBSCRIPT meta_task end_POSTSUBSCRIPT aims to search a task-specific multi-agent system 𝒮tasksubscript𝒮task\mathcal{S}_{\text{task}}caligraphic_S start_POSTSUBSCRIPT task end_POSTSUBSCRIPT to solve all queries sampled from t𝑡titalic_t, i.e., one system per task. Differently, given one user query q(i)superscript𝑞𝑖q^{(i)}italic_q start_POSTSUPERSCRIPT ( italic_i ) end_POSTSUPERSCRIPT, our query-level meta-agent 𝒜meta_querysubscript𝒜meta_query\mathcal{A}_{\text{meta\_query}}caligraphic_A start_POSTSUBSCRIPT meta_query end_POSTSUBSCRIPT conducts reasoning and output a query-specific multi-agent system 𝒮query(i)superscriptsubscript𝒮query𝑖\mathcal{S}_{\text{query}}^{(i)}caligraphic_S start_POSTSUBSCRIPT query end_POSTSUBSCRIPT start_POSTSUPERSCRIPT ( italic_i ) end_POSTSUPERSCRIPT for q(i)superscript𝑞𝑖q^{(i)}italic_q start_POSTSUPERSCRIPT ( italic_i ) end_POSTSUPERSCRIPT, i.e., one system per query.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.1">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.3.1">BigCodeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.4.1">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.5.1">MBPP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.6.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.1" rowspan="2"><span class="ltx_text" id="S4.T1.6.1.2.1.1">Vanilla</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2">o1-mini</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.3">57.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.4">95.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.5">74.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.6">71.37</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.3">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.1">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.2">56.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3">88.55</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.4">71.73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.5">68.60</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.1" rowspan="6"><span class="ltx_text" id="S4.T1.6.1.4.1.1">Manual</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.2">Self-Refine (4o-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib34" title="">34</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.3">54.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.4">89.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.5">69.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.4.6">67.29</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.5">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.1">LLM-Debate (4o-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.2">56.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.3">91.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.4">70.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5">68.69</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.6">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.1">LLM-Blender (4o-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.2">57.46</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.3">89.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.4">76.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.5">71.25</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.7">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.1">Self-Refine (o1-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib34" title="">34</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.2">56.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.3">94.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.4">73.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.5">70.63</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.8">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.1">LLM-Debate (o1-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib10" title="">10</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.2">57.25</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.3">95.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.4">74.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.5">71.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.9">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.1">LLM-Blender (o1-mini) <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib20" title="">20</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.2">59.51</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.3">96.37</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.4">78.65</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.5">74.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.1" rowspan="4"><span class="ltx_text" id="S4.T1.6.1.10.1.1">Auto</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.2">AutoAgents <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib5" title="">5</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.3">56.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.4">88.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.5">72.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.10.6">68.92</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.11">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.1">ADAS <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib18" title="">18</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.2">53.87</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.3">84.26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.4">68.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.5">65.48</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.12">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.1">Aflow <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib58" title="">58</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.2">59.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.3">94.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.4">82.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.5">75.63</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.13">
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.1">MaAS <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2504.15257v1#bib.bib57" title="">57</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.2">60.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.3">95.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.4">84.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.13.5">76.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.1" style="background-color:#DFDFDF;"><span class="ltx_text" id="S4.T1.6.1.14.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.2" style="background-color:#DFDFDF;"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.6.1.14.2.1" style="background-color:#DFDFDF;">FlowReasoner<span class="ltx_text ltx_font_upright" id="S4.T1.6.1.14.2.1.1">-14B</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.3" style="background-color:#DFDFDF;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.3.1" style="background-color:#DFDFDF;">63.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.4" style="background-color:#DFDFDF;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.4.1" style="background-color:#DFDFDF;">97.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.5" style="background-color:#DFDFDF;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.5.1" style="background-color:#DFDFDF;">92.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.6.1.14.6" style="background-color:#DFDFDF;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.6.1" style="background-color:#DFDFDF;">81.89</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a performance comparison of different methods for code generation across three benchmarks: BigCodeBench, HumanEval, and MBPP.  It compares three categories of methods: individual language models used directly, manually designed workflows using language models as workers, and automated workflow methods.  The table shows the accuracy of each method on each benchmark and provides an overall accuracy score.  It also highlights the performance of the authors' proposed method, FlowReasoner-14B, and indicates the specific language model used as a worker for each manual method.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance Evaluation. Accuracy comparison across three code benchmarks for three categories of baselines - individual models, manual workflows, and automated workflow methods - alongside our FlowReasoner-14B. For manual methods, model names in parentheses indicate the worker model used.
> </details>





### In-depth insights


#### Query-Level Meta
The concept of a "query-level meta-agent," as presented in this research paper, represents a significant advancement in the field of multi-agent systems. It shifts the focus from creating task-specific agents to designing **personalized agents that adapt to individual user queries**. This approach addresses the limitations of traditional one-size-fits-all systems, which often lack the flexibility to cater to the nuanced needs of different users. By leveraging a meta-agent that reasons about the specific requirements of each query, the system can generate **tailored multi-agent workflows** that are optimized for performance, complexity, and efficiency. This allows for a more dynamic allocation of resources and a more effective solution to the user's specific problem. The use of external execution feedback in training the meta-agent is also crucial, as it allows the system to learn from its mistakes and improve its reasoning capabilities over time. This approach is particularly promising for complex tasks where the optimal solution is not immediately obvious, and where a degree of experimentation and refinement is required. Ultimately, the query-level meta-agent represents a step toward creating more **intelligent and adaptable multi-agent systems** that can better serve the needs of individual users.

#### Reasoning-Driven RL
**Reasoning-Driven RL** enhances traditional reinforcement learning by incorporating explicit reasoning processes, enabling agents to make more informed decisions. This approach typically involves integrating a reasoning module, such as a knowledge graph or logical inference engine, into the RL framework. **Agents can leverage this reasoning module to understand the environment better, plan actions more effectively, and generalize to new situations**. By explicitly modeling the relationships between states, actions, and rewards, reasoning-driven RL can lead to more sample-efficient learning and improved performance, particularly in complex or partially observable environments. **Moreover, it allows for better interpretability and explainability of the agent's behavior**, which is crucial for building trust and understanding in AI systems. **The challenge lies in designing effective reasoning modules and seamlessly integrating them with the RL components**, ensuring that the reasoning process does not become a bottleneck in terms of computational cost or scalability. Successful implementations often involve hybrid approaches that combine symbolic reasoning with neural networks, striking a balance between expressiveness and efficiency.

#### Code Gen Workflow
The 'Code Gen Workflow' presents a systematic approach to automated code creation. It likely involves several key stages. First, **problem understanding** aims to clarify requirements, possibly using techniques like parsing specifications. Next, **code generation** utilizes a model to produce initial code. **Testing and validation** are essential to ensure accuracy. If errors are detected, **debugging and refinement** come into play, leveraging error analysis to improve the code. The process might also incorporate **optimization** for efficiency and adherence to coding standards. Finally, **integration and deployment** seamlessly incorporate the code into existing systems. The workflow may employ iterative loops for continuous enhancement and self-correction via feedback loops, possibly guided by reinforcement learning. The effectiveness hinges on model quality, prompt engineering, and robust evaluation metrics, achieving higher-quality, reliable, and maintainable code.

#### O1-Mini Superiority
The concept of "o1-mini superiority," though not explicitly present in the provided research paper, can be discussed in the context of smaller, more efficient models outperforming larger ones under specific conditions. **Smaller models like o1-mini might exhibit superior performance in scenarios with limited computational resources or when real-time responses are crucial.** This can be attributed to their lower latency and reduced memory footprint, making them ideal for edge computing or mobile applications. Furthermore, o1-mini, potentially, could be fine-tuned to excel in particular tasks or domains, achieving higher accuracy or efficiency compared to larger, more general-purpose models. 

However, the "superiority" of o1-mini is not universal. Larger models, due to their increased capacity, typically have a broader understanding of language and are better equipped to handle complex, nuanced queries. **Therefore, the choice between o1-mini and larger models depends heavily on the specific application requirements, considering factors such as computational constraints, response time, and the complexity of the tasks at hand.** It's also important to note that the performance gap between smaller and larger models can be narrowed through techniques like knowledge distillation or model compression, where knowledge from a larger model is transferred to a smaller one, enhancing its capabilities while maintaining its efficiency.

#### Adaptive Systems
Adaptive systems represent a paradigm shift towards creating solutions that can dynamically adjust to changing conditions and user needs. **Unlike static systems, adaptive systems learn from experience**, constantly refining their behavior to optimize performance in evolving environments. The key lies in the ability to sense changes, reason about their impact, and then modify the system's parameters or structure. **Reinforcement learning and feedback loops are crucial components**, enabling the system to improve its decision-making over time. Furthermore, successful adaptive systems often incorporate **elements of self-organization and emergence**, where complex behavior arises from the interaction of simpler components. **Scalability and robustness are essential considerations**, ensuring the system can handle increased complexity and recover from unexpected disruptions. These systems offer tremendous potential for personalization and efficiency, enabling us to create solutions that are more responsive and effective in real-world scenarios. Potential challenges include stability and interpretability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15257/x2.png)

> 🔼 Figure 2 illustrates three different approaches to building multi-agent systems.  (a) shows the traditional, manually-designed method, where human experts define both the agents and their workflow. This approach is labor-intensive and lacks scalability. (b) presents a search-based automated approach, using a meta-agent (often an LLM) to explore various system designs and a search algorithm to find the optimal configuration. This method is more efficient than manual design but still relies on a pre-defined search space and algorithm. Finally, (c) depicts a reasoning-based automated approach, using a reasoning-driven meta-agent (FLOWREASONER) that generates the system through reasoning and learns from external execution feedback.  This approach is adaptive and query-specific, which offers greater adaptability than the previous two methods.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architectural Comparison of Three Multi-Agent Systems. (a) Manually-designed Multi-agent System, (b) Search-based Automatic Multi-agent System, and (c) Reasoning-based Automatic Multi-agent System.
> </details>



![](https://arxiv.org/html/2504.15257/x3.png)

> 🔼 The figure illustrates the training pipeline of the FlowReasoner model, which consists of three main stages.  The first stage, Reasoning Data Distillation, involves distilling knowledge from a large language model (LLM) to create a dataset for training FlowReasoner's reasoning capabilities. This stage focuses on generating high-quality reasoning data that accurately reflects the complexities of workflow generation for multi-agent systems. The second stage, Reasoning SFT Warmup, leverages supervised fine-tuning (SFT) on this dataset to equip FlowReasoner with basic reasoning abilities for multi-agent system generation. The final stage, Reinforce Reasoning from external execution feedback, employs reinforcement learning (RL) to further refine the model's reasoning abilities. This stage uses external execution feedback from deploying the generated multi-agent systems in a real-world environment, allowing FlowReasoner to learn and adapt its workflow generation based on the performance of those systems.
> <details>
> <summary>read the caption</summary>
> Figure 3: Training Pipeline of FlowReasoner. It consists of (1) Reasoning Data Distillation, (2) Reasoning SFT Warmup, (3) Reinforce Reasoning from external execution feedback.
> </details>



![](https://arxiv.org/html/2504.15257/x4.png)

> 🔼 This figure shows the ablation study on different meta-agents.  The accuracy of various meta-agents is compared using o1-mini as workers across three different benchmarks.  This helps determine the impact of the choice of meta-agent on the overall performance of the system.  Different meta-agents are tested (e.g., Deepseek-R1-7B, Qwen2.5-7B, etc.), and their accuracies are shown in a bar chart for comparison against the baseline (o1-mini).
> <details>
> <summary>read the caption</summary>
> (a) Ablation of Meta-agent
> </details>



![](https://arxiv.org/html/2504.15257/x5.png)

> 🔼 The bar chart displays the accuracy results of different worker models when used with the o1-mini meta-agent.  It compares the performance of various LLMs (large language models) in a multi-agent system setting, demonstrating how the choice of the worker model affects the overall accuracy. The goal is to illustrate the impact of different worker models on the effectiveness of the generated workflow.
> <details>
> <summary>read the caption</summary>
> (b) Ablation of Workers
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.5.1">
<tr class="ltx_tr" id="S5.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.1.1">Stage</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.3.1">BigCodeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.4.1">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.5.1">MBPP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.5.1.1.6.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.3">61.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.4">96.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.5">87.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.1.2.6">78.89</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1.3">
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.1">SFT+RL</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.2">7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.3">62.78</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.4">96.95</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.5">89.86</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.3.6">80.53</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1.4">
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.3">62.83</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.4">97.18</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.5">91.91</td>
<td class="ltx_td ltx_align_center" id="S5.T2.5.1.4.6">81.50</td>
</tr>
<tr class="ltx_tr" id="S5.T2.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.1">SFT+RL</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.2">14B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.3">63.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.4">97.26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.5">92.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.5.1.5.6">81.89</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of model size (7B vs. 14B parameters) and training stages (Supervised Fine-Tuning (SFT) only vs. SFT combined with Reinforcement Learning (SFT+RL)) on the performance of the FLOWREASONER model.  The performance is measured by accuracy (%) across three code generation benchmarks: BigCodeBench, HumanEval, and MBPP.  The table shows the accuracy achieved by each model configuration on each benchmark, allowing for a comparison of the effects of model size and training approach on overall performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation Study on Model Sizes and Training Stages. Accuracy(%) comparison across three code benchmarks for models of different sizes (7B/14B) at both the Supervised Fine-Tuning (SFT) stage and the combined SFT with Reinforcement Learning (SFT+RL) stage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.6.1">
<tr class="ltx_tr" id="S5.T3.6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.6.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.1.1.1">Worker/Meta-agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T3.6.1.1.2"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T3.6.1.1.2.1">FlowReasoner<span class="ltx_text ltx_font_upright" id="S5.T3.6.1.1.2.1.1">-7B (SFT+RL)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T3.6.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T3.6.1.1.3.1">FlowReasoner<span class="ltx_text ltx_font_upright" id="S5.T3.6.1.1.3.1.1">-14B (SFT+RL)</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.1.1">BigCodeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.2.1">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.3.1">MBPP</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.4.1">BigCodeBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.5"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.5.1">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.2.6"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.2.6.1">MBPP</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.3.1.1">o1-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.2">62.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.3">96.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.4">89.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.5">63.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.6">97.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.3.7">92.15</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.4.1.1">Qwen2.5Coder-32b</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.2">50.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.3">92.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.4">80.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.5">52.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.6">93.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.1.4.7">78.90</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.5">
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.5.1.1">Claude3.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.2">60.67</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.3">96.07</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.4">87.63</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.5">61.12</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.6">96.52</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.1.5.7">89.82</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.1"><span class="ltx_text ltx_font_bold" id="S5.T3.6.1.6.1.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.2">59.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.3">94.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.4">82.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.5">59.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.6">94.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.1.6.7">82.27</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the generalization capabilities of the trained FlowReasoner meta-agent (both 7B and 14B versions).  It shows how well FlowReasoner performs when paired with different large language models (LLMs) as 'workers'—specifically, Qwen2.5 Coder, Claude, and GPT-40-mini. The accuracy of the generated multi-agent systems is evaluated across three benchmarks: BigCodeBench, HumanEval, and MBPP, demonstrating the robustness and adaptability of FlowReasoner to various underlying LLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: Generalization Evaluation. Accuracy of our trained meta-agent FlowReasoner-7B/14B when paired with alternative workers including Qwen2.5 Coder, Claude, and GPT4o-mini.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15257/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15257/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}