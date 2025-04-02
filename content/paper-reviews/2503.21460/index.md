---
title: "Large Language Model Agent: A Survey on Methodology, Applications and Challenges"
summary: "This survey presents a methodology-centered taxonomy of LLM agent systems, linking design principles to emergent behaviors and identifying future research directions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21460 {{< /keyword >}}
{{< keyword icon="writer" >}} Junyu Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21460" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21460" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21460/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**LLM agents**, powered by large language models, are intelligent entities that can perceive environments, reason about goals, and execute actions. Unlike traditional AI, they actively engage through continuous learning & adaptation, marking a technological leap & reimagining human-machine relationships. However, challenges remain to construct high-quality multi-agent system. Therefore, existing research can be fragmented and lack of organized taxonomy, while others examine components separately. 

To address these challenges, this survey systematically deconstructs **LLM agent systems** through construction, collaboration, and evolution. It offers a comprehensive perspective on how agents are built, interact, and evolve, while addressing evaluation, tools, real-world challenges, and applications. The study highlights fundamental connections between agent design principles and emergent behaviors, providing a unified architectural view and identifying promising research directions. The collection is available in github.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLM agents represent a critical pathway toward artificial general intelligence, exhibiting goal-driven behaviors and dynamic adaptation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The survey systematically deconstructs LLM agent systems through three interconnected dimensions: construction, collaboration, and evolution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research identifies emerging patterns and offers a structured taxonomy for understanding LLM agents, facilitating future research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey is important for researchers to **navigate the rapidly evolving landscape of LLM agents**. It provides a **structured taxonomy for understanding agent architectures**, identifies **key challenges**, and **suggests directions for future research**. The survey could inspire researchers to **develop more robust, reliable, and ethically aligned agent systems**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21460/x1.png)

> 🔼 This figure presents a comprehensive overview of the Large Language Model (LLM) agent ecosystem.  It's structured around four interconnected dimensions: Agent Methodology (construction, collaboration, and evolution), Evaluation and Tools (benchmarks, assessment frameworks, development tools), Real-World Issues (security, privacy, and social impact), and Applications (diverse domains of LLM agent deployment). This framework helps in understanding the entire lifecycle of modern LLM-based agent systems, from their initial design and development to their real-world application and the challenges they present.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of the LLM agent ecosystem organized into four interconnected dimensions: ❶ Agent Methodology, covering the foundational aspects of construction, collaboration, and evolution; ❷ Evaluation and Tools, presenting benchmarks, assessment frameworks, and development tools; ❸ Real-World Issues, addressing critical concerns around security, privacy, and social impact; and ❹ Applications, highlighting diverse domains where LLM agents are being deployed. We provide a structured framework for understanding the complete lifecycle of modern LLM-based agent systems.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.3.1">Key Contribution</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.2.2.1" rowspan="6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.1.1">Centralized Control</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.2.2.2">Coscientist <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib73" title="">73</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.2.2.3">Human-centralized experimental control</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.3.3.1">LLM-Blender <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.3.3.2">Cross-attention response fusion</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.4.4.1">MetaGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib27" title="">27</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.4.4.2">Role-specialized workflow management</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.5.5.1">AutoAct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib75" title="">75</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.5.5.2">Triple-agent task differentiation</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.6.6.1">Meta-Prompting <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib76" title="">76</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.6.6.2">Meta-prompt task decomposition</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.7.7.1">WJudge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib77" title="">77</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.7.7.2">Weak-discriminator validation</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.8.8.1" rowspan="8"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.8.8.1.1">Decentralized Collaboration</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.8.8.2">MedAgents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib78" title="">78</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.8.8.3">Expert voting consensus</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.9.9.1">ReConcile <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib79" title="">79</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.9.9.2">Multi-agent answer refinement</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.10.10.1">METAL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib115" title="">115</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.10.10.2">Domain-specific revision agents</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.11.11.1">DS-Agent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib116" title="">116</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.11.11.2">Database-driven revision</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.12.12.1">MAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib80" title="">80</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.12.12.2">Structured anti-degeneration protocols</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.13.13.1">MADR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib81" title="">81</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.13.13.2">Verifiable fact-checking critiques</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.14.14">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.14.14.1">MDebate <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib82" title="">82</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.14.14.2">Stubborn-collaborative consensus</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.15.15">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.15.15.1">AutoGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib26" title="">26</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.15.15.2">Group-chat iterative debates</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.1.1.16.16.1" rowspan="6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.16.16.1.1">Hybrid Architecture</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.16.16.2">CAMEL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib25" title="">25</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.16.16.3">Grouped role-play coordination</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.17.17">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.17.17.1">AFlow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib29" title="">29</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.17.17.2">Three-tier hybrid planning</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.18.18">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.18.18.1">EoT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib117" title="">117</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.18.18.2">Multi-topology collaboration patterns</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.19.19">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.19.19.1">DiscoGraph <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib118" title="">118</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.19.19.2">Pose-aware distillation</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.20.20">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.20.20.1">DyLAN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib119" title="">119</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.20.20.2">Importance-aware topology</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.1.21.21.1">MDAgents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib120" title="">120</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.1.21.21.2">Complexity-aware routing</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table categorizes and summarizes various Large Language Model (LLM) agent collaboration methods, contrasting centralized control, decentralized collaboration, and hybrid approaches.  Each method is listed with a key contribution, illustrating the different ways LLM agents can interact and work together to achieve a shared goal.
> <details>
> <summary>read the caption</summary>
> TABLE I: A summary of agent collaboration methods.
> </details>





### In-depth insights


#### Agent Lifecycle
While the provided paper doesn't explicitly use the term 'Agent Lifecycle,' its content allows us to infer the key stages. The **construction phase** defines the agent's architecture, integrating memory, planning, and action execution. **Collaboration** dictates interaction with other agents or humans, using centralized, decentralized, or hybrid approaches. Finally, **evolution** focuses on adaptation through self-learning, multi-agent co-evolution, or external knowledge incorporation. This lifecycle underscores the dynamic nature of LLM agents, moving beyond static systems to entities that learn, adapt, and improve over time. **Evaluation at every stage is critical**.

#### RAG as Memory
**RAG (Retrieval-Augmented Generation) as memory** enhances LLMs by integrating external knowledge, **overcoming training data limitations.** This paradigm encompasses static knowledge grounding via text corpora or knowledge graphs, interactive retrieval that uses agent dialogues for external queries, and reasoning-integrated retrieval, exemplified by interleaving step-by-step reasoning with dynamic knowledge acquisition. **Advanced methods** like KG-RAR construct task-specific subgraphs, and DeepRAG balances parametric knowledge with external evidence. These architectures maintain contextual relevance and are **critical for scalable memory systems**.

#### Multi-Agent Collab
Multi-agent collaboration enables LLMs to extend problem-solving beyond individual reasoning. **Effective collaboration leverages distributed intelligence**, coordinates actions, and refines decisions through multi-agent interactions. Centralized architectures employ a hierarchical coordination mechanism where a **central controller organizes agent activities** through task allocation and decision integration, while other sub-agents can only communicate with the controller. In decentralized architectures, collaboration enables direct node-to-node interaction through self-organizing protocols. Finally, hybrid architectures strategically combine centralized coordination and decentralized collaboration to **balance controllability with flexibility** and adapt to heterogeneous task requirements.

#### Dataset Genesis
**Dataset genesis** in LLM agent research focuses on how datasets are created and utilized. This involves exploring methodologies for constructing datasets that effectively train and evaluate LLM agents. A core aspect is the creation of diverse datasets covering various tasks and environments. **The method involves the creation of new datasets by multiple agents**. Constructing datasets with high-quality labels and annotations is a key challenge, which involves the creation of custom tools. Efficient dataset management practices are crucial to ensure scalability and accessibility. These methods are employed to create realistic testing scenarios to enhance agent robustness. Datasets are also actively curated to improve agent adaptability. Data collection and synthesis is also crucial, to have higher fidelity and trustworthiness for the agents in use.

#### LLM Privacy
**LLM Privacy** is a pressing concern. The inherent memory capabilities of LLMs, while enabling sophisticated interactions, also create vulnerabilities. **Data breaches** can expose sensitive information learned during training or interaction.  **Mitigating strategies** are vital, focusing on techniques like differential privacy to inject noise during training, thereby obscuring individual data points. Another approach is knowledge distillation, which transfers learned representations from a private model to a public one, minimizing the risk of memorization. Moreover, strict **data governance policies** and user controls are essential to manage access and retention. The goal is to establish a balance between functionality and responsible handling of private data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21460/x2.png)

> 🔼 This figure presents a taxonomy that categorizes the methodologies used in creating large language model (LLM) agents. It's structured into three main sections: Agent Construction, Agent Collaboration, and Agent Evolution.  Each section further breaks down into sub-categories detailing different approaches and techniques used within each stage of agent development. This taxonomy helps to illustrate the different paths researchers and developers take when designing LLM agents, from basic profile definitions to sophisticated multi-agent collaboration mechanisms and strategies for long-term adaptation and improvement.
> <details>
> <summary>read the caption</summary>
> Figure 2: A taxonomy of large language model agent methodologies.
> </details>



![](https://arxiv.org/html/2503.21460/x3.png)

> 🔼 Figure 3 provides a comprehensive overview of the evaluation methods and tools used for Large Language Model (LLM) agents. The figure is divided into two main sections. The left section categorizes various evaluation frameworks based on their scope and focus, including general assessment, domain-specific evaluations, and collaboration-based evaluations. This helps researchers and practitioners understand the different aspects of LLM agent performance and choose the most suitable methods for their specific needs. The right section showcases the various types of tools involved in the LLM agent ecosystem. These include tools utilized by LLM agents during task execution, tools created by LLM agents to extend functionality, and tools required for deploying, managing, and maintaining LLM agents in practical applications.
> <details>
> <summary>read the caption</summary>
> Figure 3: An overview of evaluation benchmarks and tools for LLM agents. The left side shows various evaluation frameworks categorized by general assessment, domain-specific evaluation, and collaboration evaluation. The right side illustrates tools used by LLM agents, tools created by agents, and tools for deploying agents.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.3.1">Key Contribution</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.2.2.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.2.1.1">Self-Supervised Learning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.2.2.2">SE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib86" title="">86</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.2.2.3">Adaptive token masking for pretraining</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.3.3.1">Evolutionary Optimization <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib87" title="">87</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.3.3.2">Efficient model merging and adaptation</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.4.4">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.4.4.1">DiverseEvol <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib88" title="">88</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.4.4.2">Improved instruction tuning via diverse data</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.5.5.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.5.5.1.1">Self-Reflection &amp; Self-Correction</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.5.5.2">SELF-REFINE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib89" title="">89</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.5.5.3">Iterative self-feedback for refinement</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.6.6">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.6.6.1">STaR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib90" title="">90</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.6.6.2">Bootstrapping reasoning with few rationales</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.7.7.1">V-STaR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib91" title="">91</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.7.7.2">Training a verifier using DPO</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.8.8.1">Self-Verification <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib92" title="">92</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.8.8.2">Backward verification for correction</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.9.9.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.9.9.1.1">Self-Rewarding &amp; RL</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.9.9.2">Self-Rewarding <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib93" title="">93</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.9.9.3">LLM-as-a-Judge for self-rewarding</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.10.10.1">RLCD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib94" title="">94</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.10.10.2">Contrastive distillation for alignment</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.11.11.1">RLC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib95" title="">95</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.11.11.2">Evaluation-generation gap for optimization</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.12.12.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.12.12.1.1">Cooperative Co-Evolution</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.12.12.2">ProAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib96" title="">96</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.12.12.3">Intent inference for teamwork</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.13.13.1">CORY <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib97" title="">97</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.13.13.2">Multi-agent RL fine-tuning</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.14.14">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.14.14.1">CAMEL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib25" title="">25</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.14.14.2">Role-playing framework for cooperation</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.15.15.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.15.15.1.1">Competitive Co-Evolution</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.15.15.2">Red-Team LLMs <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib98" title="">98</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.15.15.3">Adversarial robustness training</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.16.16">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.16.16.1">Multi-Agent Debate <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib82" title="">82</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.16.16.2">Iterative critique for refinement</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.17.17">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.17.17.1">MAD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib99" title="">99</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.17.17.2">Debate-driven divergent thinking</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.18.18.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.18.18.1.1">Knowledge-Enhanced Evolution</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.18.18.2">KnowAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib83" title="">83</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.18.18.3">Action knowledge for planning</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.19.19">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.19.19.1">WKM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib84" title="">84</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.19.19.2">Synthesizing prior and dynamic knowledge</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T2.1.1.20.20.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.20.20.1.1">Feedback-Driven Evolution</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.20.20.2">CRITIC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib100" title="">100</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.1.20.20.3">Tool-assisted self-correction</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.21.21">
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.21.21.1">STE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib101" title="">101</a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.1.21.21.2">Simulated trial-and-error for tool learning</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.1.1.22.22.1">SelfEvolve <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib102" title="">102</a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.1.1.22.22.2">Automated debugging and refinement</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive summary of different agent evolution methods categorized by their approach (such as self-supervised learning, self-reflection, and co-evolution). For each method, it lists the key contributions and provides a reference to the relevant research paper. This allows readers to easily compare various techniques used for enhancing LLM agents' capabilities over time.
> <details>
> <summary>read the caption</summary>
> TABLE II: A summary of agent evolution methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Reference</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T3.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.1.1">Adversarial Attacks and Defense</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.3.3.1">Mo et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib177" title="">177</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.3.3.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.3.2.1">Attack:</span> Adversarial attack benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.4.4.1">AgentDojo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib178" title="">178</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.4.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.4.2.1">Attack:</span> Adversarial attack framework</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.5.1">ARE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib179" title="">179</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.5.5.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.2.1">Attack:</span> Adversarial attack evaluation for multimodal agents</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.6.6.1">GIGA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib181" title="">181</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.6.6.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.6.2.1">Attack:</span> Generalizable infectious gradient attacks</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.7.7.1">CheatAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib180" title="">180</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.7.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.7.2.1">Attack:</span> Adversarial attack agent for recommender systems</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.8.8.1">LLAMOS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib182" title="">182</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.8.8.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.8.8.2.1">Defense:</span> Purifying adversarial attack input</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.9.9.1">Chern et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib183" title="">183</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.9.9.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.9.9.2.1">Defense:</span> Defense via multi-agent debate</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T3.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.10.10.1.1">Jailbreaking Attacks and Defense</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.11.11.1">RLTA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib184" title="">184</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.11.11.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.11.2.1">Attack:</span> Produce jailbreaking prompts via reinforcement learning</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.12.12.1">Atlas <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib185" title="">185</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.12.12.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.12.12.2.1">Attack:</span> Jailbreaks text-to-image models with safety filters</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.13.13.1">RLbreaker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib186" title="">186</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.13.13.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.13.13.2.1">Attack:</span> Model jailbreaking as a search problem</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.14.14.1">PathSeeker <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib187" title="">187</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.14.14.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.14.14.2.1">Attack:</span> Use multi-agent reinforcement learning to jailbreak</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.15.15.1">AutoDefense <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib188" title="">188</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.15.15.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.15.15.2.1">Defense:</span> Multi-agent defense to filter harmful responses</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.16.16.1">Guardians <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib189" title="">189</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.16.16.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.16.16.2.1">Defense:</span> Detect rogue agents to counter jailbreaking attacks.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.17.17.1">ShieldLearner <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib190" title="">190</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.17.17.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.17.17.2.1">Defense:</span> Learn attack jailbreaking patterns.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T3.1.1.18.18.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.18.18.1.1">Backdoor Attacks and Defense</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.19.19.1">DemonAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib191" title="">191</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.19.19.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.19.19.2.1">Attack:</span> Encrypted muti-backdoor implantation attack</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.20.20.1">Yang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib192" title="">192</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.20.20.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.20.20.2.1">Attack:</span> Backdoor attacks evaluations on LLM-based agents</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.21.21.1">BadAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib193" title="">193</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.21.21.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.21.21.2.1">Attack:</span> Inputs or environment cues as backdoors</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.22.22.1">BadJudge <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib194" title="">194</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.22.22.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.22.22.2.1">Attack:</span> Backdoor to the LLM-as-a-judge agent system</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.23.23.1">DarkMind <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib195" title="">195</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.23.23.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.23.23.2.1">Attack:</span> latent backdoor attack to customized LLM agents</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.24.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T3.1.1.24.24.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.24.24.1.1">Agent Collaboration Attacks and Defense</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.25.25.1">CORBA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib196" title="">196</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.25.25.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.25.25.2.1">Attack:</span> Multi-agent attack via multi-agent</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.26.26.1">AiTM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib197" title="">197</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.26.26.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.26.26.2.1">Attack:</span> Intercepte and manipulate inter-agent messages</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.27.27.1">Netsafe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib198" title="">198</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.27.27.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.27.27.2.1">Defense:</span> Identify critical safety phenomena in multi-agent networks</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.28.28.1">G-Safeguard <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib199" title="">199</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.28.28.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.28.28.2.1">Defense:</span> leverages graph neural networks to detect anomalies</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.29.29.1">Trustagent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib200" title="">200</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.29.29.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.29.29.2.1">Defense:</span> Agent constitution in task planning.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.30.30.1">PsySafe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib201" title="">201</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.30.30.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.30.30.2.1">Defense:</span> Mitigate safety risks via agent psychology</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive summary of various agent-centric attacks and their corresponding defenses in Large Language Model (LLM) agents.  It categorizes attacks by type (Adversarial, Jailbreaking, Backdoor, Model Collaboration) and includes the specific method used for the attack, a description of that attack, and a reference to the source publication. For each attack, the table may also include information about defenses against it.
> <details>
> <summary>read the caption</summary>
> TABLE III: Summary of agent-centric attacks and defense in LLM agents.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1.1">Reference</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T4.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.2.1.1">External Data Attacks and Security</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.3.3.1">Li et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib204" title="">204</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.3.3.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.3.2.1">Attack:</span> Malicious prefix injection</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.4.4.1">Psysafe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib201" title="">201</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.4.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.4.2.1">Attack:</span> A dark psychological injection benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.5.1">Tian et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib210" title="">210</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.5.5.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.5.2.1">Attack:</span> Guide agents into specific role-playing states</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.6.6.1">InjectAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib205" title="">205</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.6.6.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.6.2.1">Attack:</span> A prompting injection benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.7.7.1">Agentdojo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib203" title="">203</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.7.7.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.7.2.1">Attack:</span> A user injection benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.8.8.1">AgentPoison <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib216" title="">216</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.8.8.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.8.2.1">Attack:</span> Poisoning samples in knowledge databases</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.9.9.1">Nakash et al.<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib215" title="">215</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.9.9.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.9.9.2.1">Attack:</span> Indirect prompt injection through FITD attack</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.10.10.1">WIPI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib214" title="">214</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.10.10.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.10.10.2.1">Attack:</span> control agents through a public web page</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.11.11.1">ASB <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib176" title="">176</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.11.11.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.11.2.1">Attack:</span> A multi-type attack benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.12.12.1">AgentHarm <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib223" title="">223</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.12.12.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.12.12.2.1">Attack:</span> A multi-type attack benchmark</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.13.13.1">Mantis <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib206" title="">206</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.13.13.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.13.2.1">Defense:</span> Hacking back to attackers</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.14.14.1">Chern et al.<cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib183" title="">183</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.14.14.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.14.2.1">Defense:</span> Employ multi-agent debate to verify external knowledge</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.15.15.1">RTBAS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib208" title="">208</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.15.15.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.15.15.2.1">Defense:</span> Check every step of agent information flow</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.16.16.1">TaskShield <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib209" title="">209</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.16.16.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.16.16.2.1">Defense:</span> Check every step of agent process</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.17.17.1">Zhang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib201" title="">201</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.17.17.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.17.17.2.1">Defense:</span> Doctor and police agents guard the healthy psychology</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T4.1.1.18.18.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.18.18.1.1">Interaction Attacks and Security</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.19.19.1">Wang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib217" title="">217</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.19.19.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.19.19.2.1">Attack:</span> Private memory extraction attack</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.20.20.1">CORBA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib196" title="">196</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.20.20.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.20.20.2.1">Attack:</span> Disrupt the communications among agents</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.21.21.1">AgentSmith <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib220" title="">220</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.21.21.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.21.21.2.1">Attack:</span> Poison one agent to infectious other agents</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.22.22.1">Lee et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib221" title="">221</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.22.22.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.22.22.2.1">Attack:</span> Conduct injections to self-replicate among agents</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.23.23.1">He et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib197" title="">197</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.23.23.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.23.23.2.1">Attack:</span> Inject semantic disruptions to agent communications</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.24.24.1">BlockAgents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib222" title="">222</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.24.24.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.24.24.2.1">Defense:</span> Incorporate blockchain and PoT against byzantine attacks</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.1.25.25.1">Abdelnabi et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib207" title="">207</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.1.25.25.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.25.25.2.1">Defense:</span> A multi-layer agent firewall</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table summarizes various data-centric attacks and defense mechanisms targeting Large Language Model (LLM) agents.  Data-centric attacks focus on manipulating the input data provided to the LLM agents to cause undesirable outputs or behaviors, rather than directly targeting the model's internal structure. The table categorizes these attacks based on their approach (external data falsification vs. interaction attacks), and also includes defenses against each type of attack.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Summary of data-centric attack and defense in LLM agents.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1">Reference</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.2.1">Description</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T5.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.2.2.1.1">LM Memorization Vulnerabilities</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.1.3.3.1">Carlini et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib224" title="">224</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.1.1.3.3.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.3.3.2.1">Attack:</span> Data Extraction</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.4.4.1">Huang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib226" title="">226</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.4.4.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.4.2.1">Attack:</span> Data Extraction on Pretrained LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.5.5.1">Mireshghallah et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib227" title="">227</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.5.5.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.5.2.1">Attack:</span> Membership Inference on Fine-Tuned LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.6.6.1">Fu et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib228" title="">228</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.6.6.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.6.2.1">Attack:</span> Self-Calibrated Membership Inference</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.7.7.1">Pan et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib231" title="">231</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.7.7.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.7.2.1">Attack:</span> Attribute Inference in General-Purpose LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.8.8.1">Wang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib232" title="">232</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.8.8.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.8.2.1">Attack:</span> Property Existence Inference in Generative Models</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.9.9.1">Kandpal et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib233" title="">233</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.9.9.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.9.9.2.1">Defense:</span> Data Sanitization to Mitigate Memorization</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.10.10.1">Hoory et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib229" title="">229</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.10.10.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.10.2.1">Defense:</span> Differential Privacy for Pre-Trained LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.11.11.1">Kang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib230" title="">230</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.11.11.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.11.11.2.1">Defense:</span> Knowledge Distillation for Privacy Preservation</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.12.12.1">Kim et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib234" title="">234</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.12.12.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.12.2.1">Defense:</span> Privacy Leakage Assessment Tool</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T5.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.13.13.1.1">LM Intellectual Property Exploitation</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.1.14.14.1">Krishna et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib235" title="">235</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.1.1.14.14.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.14.2.1">Attack:</span> Model Stealing via Query APIs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.15.15.1">Naseh et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib236" title="">236</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.15.15.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.15.15.2.1">Attack:</span> Stealing Decoding Algorithms of LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.16.16.1">Li et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib237" title="">237</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.16.16.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.16.16.2.1">Attack:</span> Extracting Specialized Code Abilities from LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.17.17.1">Shen et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib240" title="">240</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.17.17.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.17.17.2.1">Attack:</span> Prompt Stealing in Text-to-Image Models</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.18.18.1">Sha et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib241" title="">241</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.18.18.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.18.18.2.1">Attack:</span> Prompt Stealing in LLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.19.19.1">Hui et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib242" title="">242</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.19.19.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.19.19.2.1">Attack:</span> Closed-Box Prompt Extraction</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.1.20.20.1">Kirchenbauer et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib238" title="">238</a>]</cite>
</th>
<td class="ltx_td ltx_align_left" id="S4.T5.1.1.20.20.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.20.20.2.1">Defense:</span> Model Watermarking for IP Protection</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T5.1.1.21.21.1">Lin et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib239" title="">239</a>]</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.1.1.21.21.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.21.21.2.1">Defense:</span> Blockchain for IP Verification</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table summarizes various privacy threats associated with Large Language Model (LLM) agents and the corresponding countermeasures.  It categorizes privacy threats into two main areas: LLM Memorization Vulnerabilities (data extraction attacks, membership inference attacks, attribute inference attacks) and LLM Intellectual Property Exploitation (model stealing attacks, prompt stealing attacks). For each type of threat, the table lists specific attack methods and relevant references to research papers, along with countermeasures to mitigate these privacy concerns. The countermeasures include techniques like data sanitization, differential privacy, knowledge distillation, model watermarking, and blockchain-based IP protection.
> <details>
> <summary>read the caption</summary>
> TABLE V: Summary of privacy threats and countermeasures in LLM agents.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1.1">Impact</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.2.1">Reference</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T6.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.2.2.1.1">Benefits to Society</span></th>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.3.3.1">Automation Enhancement</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.1.1.3.3.2">Foundation Models <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib243" title="">243</a>]</cite>, GPT-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib244" title="">244</a>]</cite>, LLaMA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib245" title="">245</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.4.4.1">Workforce Transformation</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.4.4.2">Foundation Models <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib243" title="">243</a>]</cite>, Redefining Work <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib246" title="">246</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.5.5.1">Enhance Information Distribution</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.5.5.2">GPT-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib244" title="">244</a>]</cite>, LLaMa <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib245" title="">245</a>]</cite>, Empower Online Education <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib247" title="">247</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S4.T6.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.6.6.1.1">Ethical Concerns</span></th>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.1.1.7.7.1">Bias and Discrimination</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.1.1.7.7.2">Fair Use <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib249" title="">249</a>]</cite>, Fair Learning <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib250" title="">250</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.8.8.1">Accountability</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.8.8.2">Stochastic Parrots <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib252" title="">252</a>]</cite>, Governance <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib253" title="">253</a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib254" title="">254</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.9.9.1">Copyright</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.9.9.2">Fair Learning <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib250" title="">250</a>]</cite>, Ethics of LLMs <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib255" title="">255</a>]</cite>, AI collapse <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib256" title="">256</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.10.10.1">Data Privacy</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.10.10.2">Foundation Models <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib243" title="">243</a>]</cite>, Ethical and Social Risks <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib257" title="">257</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.1.1.11.11.1">Manipulation &amp; Misinformation</th>
<td class="ltx_td ltx_align_left" id="S4.T6.1.1.11.11.2">Data-Poisoning Attacks <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib259" title="">259</a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.1.1.12.12.1">Others</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.1.1.12.12.2">Overreliance <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib244" title="">244</a>]</cite>, Alignment <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib261" title="">261</a>]</cite>, Carbon Footprint <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib262" title="">262</a>]</cite>, Expenses <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib263" title="">263</a>]</cite>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of the societal impacts and ethical considerations associated with the use of Large Language Model (LLM) agents. It categorizes the effects into benefits and ethical concerns, providing specific examples and references for each category. The benefits include automation enhancement, workforce transformation, and improved information distribution. The ethical concerns encompass bias and discrimination, accountability issues, copyright implications, data privacy risks, potential for manipulation and misinformation, and other emerging concerns.  This detailed breakdown helps to provide a balanced perspective on the significant influence of LLM agents on society.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Overview of Social Impacts and Ethical Considerations in LLM Agents.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.1.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T7.1.1.2.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">Method</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T7.1.1.2.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">Domain</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T7.1.1.2.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">Core Idea</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T7.1.1.3.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.2.1.1">Scientific Discovery</span></th>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.1.1.4.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">SciAgents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib266" title="">266</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.4.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">General Sciences</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.4.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">Collaborative hypothesis generation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.5.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">Curie <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib267" title="">267</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.5.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">General Sciences</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.5.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">Automated experimentation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.6.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.6.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">ChemCrow <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib269" title="">269</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.6.5.2" style="padding-left:1.0pt;padding-right:1.0pt;">Chemistry</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.6.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">Tool-augmented synthesis planning</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.7.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.7.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">AtomAgents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib270" title="">270</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.7.6.2" style="padding-left:1.0pt;padding-right:1.0pt;">Materials Science</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.7.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">Physics-aware alloy design</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.8.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.8.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">D. Kostunin el al <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib271" title="">271</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.8.7.2" style="padding-left:1.0pt;padding-right:1.0pt;">Astronomy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.8.7.3" style="padding-left:1.0pt;padding-right:1.0pt;">Telescope configuration management</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.9.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.9.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">BioDiscoveryAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib273" title="">273</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.9.8.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.9.8.3" style="padding-left:1.0pt;padding-right:1.0pt;">Genetic perturbation design</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.10.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.10.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">GeneAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib274" title="">274</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.10.9.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.10.9.3" style="padding-left:1.0pt;padding-right:1.0pt;">Self-verifying gene association discovery</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.11.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.11.10.1" style="padding-left:1.0pt;padding-right:1.0pt;">RiGPS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib275" title="">275</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.11.10.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.11.10.3" style="padding-left:1.0pt;padding-right:1.0pt;">Biomarker identification</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.12.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.12.11.1" style="padding-left:1.0pt;padding-right:1.0pt;">BioRAG <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib211" title="">211</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.12.11.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.12.11.3" style="padding-left:1.0pt;padding-right:1.0pt;">Biology-focused retrieval augmentation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.13.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.13.12.1" style="padding-left:1.0pt;padding-right:1.0pt;">PathGen-1.6M <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib276" title="">276</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.13.12.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical Dataset</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.13.12.3" style="padding-left:1.0pt;padding-right:1.0pt;">Pathology image dataset generation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.14.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.14.13.1" style="padding-left:1.0pt;padding-right:1.0pt;">KALIN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib277" title="">277</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.14.13.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology Dataset</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.14.13.3" style="padding-left:1.0pt;padding-right:1.0pt;">Scientific question corpus generation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.15.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.15.14.1" style="padding-left:1.0pt;padding-right:1.0pt;">GeneSUM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib278" title="">278</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.15.14.2" style="padding-left:1.0pt;padding-right:1.0pt;">Biology Dataset</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.15.14.3" style="padding-left:1.0pt;padding-right:1.0pt;">Gene function knowledge maintenance</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.16.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.16.15.1" style="padding-left:1.0pt;padding-right:1.0pt;">AgentHospital <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib281" title="">281</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.16.15.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.16.15.3" style="padding-left:1.0pt;padding-right:1.0pt;">Virtual hospital simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.17.16">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.17.16.1" style="padding-left:1.0pt;padding-right:1.0pt;">ClinicalLab <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib282" title="">282</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.17.16.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.17.16.3" style="padding-left:1.0pt;padding-right:1.0pt;">Multi-department diagnostics</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.18.17">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.18.17.1" style="padding-left:1.0pt;padding-right:1.0pt;">AIPatient <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib283" title="">283</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.18.17.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.18.17.3" style="padding-left:1.0pt;padding-right:1.0pt;">Patient simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.19.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.19.18.1" style="padding-left:1.0pt;padding-right:1.0pt;">CXR-Agent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib284" title="">284</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.19.18.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.19.18.3" style="padding-left:1.0pt;padding-right:1.0pt;">Chest X-ray interpretation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.20.19">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.20.19.1" style="padding-left:1.0pt;padding-right:1.0pt;">MedRAX <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib285" title="">285</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.20.19.2" style="padding-left:1.0pt;padding-right:1.0pt;">Medical</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.20.19.3" style="padding-left:1.0pt;padding-right:1.0pt;">Multimodal medical reasoning</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.21.20">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T7.1.1.21.20.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.21.20.1.1">Gaming</span></th>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.22.21">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.1.1.22.21.1" style="padding-left:1.0pt;padding-right:1.0pt;">ReAct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib33" title="">33</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.22.21.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Playing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.22.21.3" style="padding-left:1.0pt;padding-right:1.0pt;">Reasoning and acting in text environments</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.23.22">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.23.22.1" style="padding-left:1.0pt;padding-right:1.0pt;">Voyager <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib35" title="">35</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.23.22.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Playing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.23.22.3" style="padding-left:1.0pt;padding-right:1.0pt;">Lifelong learning in Minecraft</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.24.23">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.24.23.1" style="padding-left:1.0pt;padding-right:1.0pt;">ChessGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib287" title="">287</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.24.23.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Playing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.24.23.3" style="padding-left:1.0pt;padding-right:1.0pt;">Chess gameplay evaluation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.25.24">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.25.24.1" style="padding-left:1.0pt;padding-right:1.0pt;">GLAM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib288" title="">288</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.25.24.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Playing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.25.24.3" style="padding-left:1.0pt;padding-right:1.0pt;">Reinforcement learning in text environments</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.26.25">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.26.25.1" style="padding-left:1.0pt;padding-right:1.0pt;">CALYPSO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib289" title="">289</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.26.25.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Generation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.26.25.3" style="padding-left:1.0pt;padding-right:1.0pt;">Narrative generation for D&amp;D</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.27.26">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.27.26.1" style="padding-left:1.0pt;padding-right:1.0pt;">GameGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib290" title="">290</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.27.26.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Generation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.27.26.3" style="padding-left:1.0pt;padding-right:1.0pt;">Automated game development</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.28.27">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.28.27.1" style="padding-left:1.0pt;padding-right:1.0pt;">Sun et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib291" title="">291</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.28.27.2" style="padding-left:1.0pt;padding-right:1.0pt;">Game Generation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.28.27.3" style="padding-left:1.0pt;padding-right:1.0pt;">Interactive storytelling experience</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.29.28">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T7.1.1.29.28.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.29.28.1.1">Social Science</span></th>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.30.29">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.1.1.30.29.1" style="padding-left:1.0pt;padding-right:1.0pt;">Econagent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib292" title="">292</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.30.29.2" style="padding-left:1.0pt;padding-right:1.0pt;">Economy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.30.29.3" style="padding-left:1.0pt;padding-right:1.0pt;">Economic decision simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.31.30">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.31.30.1" style="padding-left:1.0pt;padding-right:1.0pt;">TradingGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib293" title="">293</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.31.30.2" style="padding-left:1.0pt;padding-right:1.0pt;">Economy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.31.30.3" style="padding-left:1.0pt;padding-right:1.0pt;">Financial trading simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.32.31">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.32.31.1" style="padding-left:1.0pt;padding-right:1.0pt;">CompeteAI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib294" title="">294</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.32.31.2" style="padding-left:1.0pt;padding-right:1.0pt;">Economy</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.32.31.3" style="padding-left:1.0pt;padding-right:1.0pt;">Market competition modeling</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.33.32">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.33.32.1" style="padding-left:1.0pt;padding-right:1.0pt;">Ma et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib295" title="">295</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.33.32.2" style="padding-left:1.0pt;padding-right:1.0pt;">Psychology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.33.32.3" style="padding-left:1.0pt;padding-right:1.0pt;">Mental health support analysis</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.34.33">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.34.33.1" style="padding-left:1.0pt;padding-right:1.0pt;">Zhang et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib296" title="">296</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.34.33.2" style="padding-left:1.0pt;padding-right:1.0pt;">Psychology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.34.33.3" style="padding-left:1.0pt;padding-right:1.0pt;">Social behavior simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.35.34">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.35.34.1" style="padding-left:1.0pt;padding-right:1.0pt;">TE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib297" title="">297</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.35.34.2" style="padding-left:1.0pt;padding-right:1.0pt;">Psychology</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.35.34.3" style="padding-left:1.0pt;padding-right:1.0pt;">Psychological experiment simulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.36.35">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.36.35.1" style="padding-left:1.0pt;padding-right:1.0pt;">Generative agents <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib30" title="">30</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.36.35.2" style="padding-left:1.0pt;padding-right:1.0pt;">Social Simulation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.36.35.3" style="padding-left:1.0pt;padding-right:1.0pt;">Human behavior emulation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.37.36">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.37.36.1" style="padding-left:1.0pt;padding-right:1.0pt;">Liu et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib298" title="">298</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.37.36.2" style="padding-left:1.0pt;padding-right:1.0pt;">Social Simulation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.37.36.3" style="padding-left:1.0pt;padding-right:1.0pt;">Learning from social interactions</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">S<sup class="ltx_sup" id="S5.T7.1.1.1.1.1">3</sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib299" title="">299</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">Social Simulation</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">Social network behavior modeling</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.38.37">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T7.1.1.38.37.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.38.37.1.1">Productivity Tools</span></th>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.39.38">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T7.1.1.39.38.1" style="padding-left:1.0pt;padding-right:1.0pt;">SDM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib300" title="">300</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.39.38.2" style="padding-left:1.0pt;padding-right:1.0pt;">Software Development</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T7.1.1.39.38.3" style="padding-left:1.0pt;padding-right:1.0pt;">Self-collaboration for code generation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.40.39">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.40.39.1" style="padding-left:1.0pt;padding-right:1.0pt;">ChatDev <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib301" title="">301</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.40.39.2" style="padding-left:1.0pt;padding-right:1.0pt;">Software Development</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.40.39.3" style="padding-left:1.0pt;padding-right:1.0pt;">Chat-powered development framework</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.41.40">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.41.40.1" style="padding-left:1.0pt;padding-right:1.0pt;">MetaGPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib27" title="">27</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.41.40.2" style="padding-left:1.0pt;padding-right:1.0pt;">Software Development</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.41.40.3" style="padding-left:1.0pt;padding-right:1.0pt;">Meta-programming for collaboration</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.42.41">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.42.41.1" style="padding-left:1.0pt;padding-right:1.0pt;">Agent4Rec <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib302" title="">302</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.42.41.2" style="padding-left:1.0pt;padding-right:1.0pt;">Recommender Systems</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.42.41.3" style="padding-left:1.0pt;padding-right:1.0pt;">User behavior modeling</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.43.42">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.43.42.1" style="padding-left:1.0pt;padding-right:1.0pt;">AgentCF <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib303" title="">303</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.43.42.2" style="padding-left:1.0pt;padding-right:1.0pt;">Recommender Systems</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.43.42.3" style="padding-left:1.0pt;padding-right:1.0pt;">User-item interaction modeling</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.44.43">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T7.1.1.44.43.1" style="padding-left:1.0pt;padding-right:1.0pt;">MACRec <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib304" title="">304</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.44.43.2" style="padding-left:1.0pt;padding-right:1.0pt;">Recommender Systems</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T7.1.1.44.43.3" style="padding-left:1.0pt;padding-right:1.0pt;">Multi-agent recommendation</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.1.45.44">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T7.1.1.45.44.1" style="padding-left:1.0pt;padding-right:1.0pt;">RecMind <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21460v1#bib.bib305" title="">305</a>]</cite>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T7.1.1.45.44.2" style="padding-left:1.0pt;padding-right:1.0pt;">Recommender Systems</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T7.1.1.45.44.3" style="padding-left:1.0pt;padding-right:1.0pt;">Knowledge-enhanced recommendation</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of various real-world applications of Large Language Model (LLM) agents across diverse domains.  It categorizes applications by field (e.g., scientific discovery, gaming, social sciences, productivity tools) and details the core ideas and methodologies behind each example. This offers a broad perspective on the versatility and potential impact of LLM agents in various sectors.
> <details>
> <summary>read the caption</summary>
> TABLE VII: Overview of Applications in LLM Agents.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21460/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21460/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}