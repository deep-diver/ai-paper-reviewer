---
title: "Open Deep Search: Democratizing Search with Open-source Reasoning Agents"
summary: "Open Deep Search (ODS): Democratizing Search with Open-source Reasoning Agents."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 University of Washington",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20201 {{< /keyword >}}
{{< keyword icon="writer" >}} Salaheddin Alzubi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20201" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20201" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20201/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Proprietary search AI solutions dominate**, limiting transparency and innovation. To address this, the paper introduces Open Deep Search (ODS), aiming to bridge the gap with an open-source alternative. ODS seeks to encourage community-driven development in search AI, harnessing collective talent. It achieves performance matching or surpassing closed-source options in benchmark evaluations, offering a competitive, transparent solution. 



ODS augments open-source LLMs with **reasoning agents for web search**. It consists of Open Search Tool and Open Reasoning Agent. The Open Search Tool outperforms proprietary tools. Combined with LLMs like DeepSeek-R1, ODS nears or exceeds state-of-the-art baselines on SimpleQA and FRAMES. For instance, ODS improves FRAMES accuracy by 9.7% over GPT-4o Search Preview. This flexible framework enhances any LLM.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ODS, an open-source AI search solution, achieves state-of-the-art performance on benchmarks, rivaling closed-source alternatives. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Key innovations include Open Search Tool and Open Reasoning Agent. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ODS improves accuracy on FRAMES, even surpassing GPT-4o Search Preview. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for democratizing search AI. It provides an **open-source alternative that matches the state-of-the-art performance**, reducing reliance on closed solutions. This fosters innovation and opens new research directions in reasoning and search methodologies. ODS enables future work to **build upon a transparent**, high-performing search AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20201/x1.png)

> 🔼 The figure illustrates the architecture of Open Deep Search (ODS), an open-source framework that enhances Large Language Models (LLMs) with search and reasoning capabilities.  Users can select any LLM as a base model.  The core components are the Open Reasoning Agent and the Open Search Tool.  The Open Reasoning Agent receives user queries and uses a chain of thought to determine which tools are needed to best answer the query. The Open Search Tool is a key component, designed to retrieve high-quality context from multiple web sources.  The figure shows the flow of information, highlighting the interaction between the LLM, the reasoning agent, the search tool, and other auxiliary tools like a calculator or code interpreter. The example uses Llama3.1-70B and DeepSeek-R1 as base models.
> <details>
> <summary>read the caption</summary>
> Figure 1: A user can choose to plug in any base LLM of their choice and harness the benefits of the open-source framework of Open Deep Search (ODS), which consists of two components: Open Search Tool and Open Reasoning Agent. A query is first fed into Open Reasoning Agent which orchestrates the available set of tools to interpret and answer the query. The most important tool is the Open Search Tool that we design, which provides a high quality context from multiple retrieved sources from the web. In our experiments we use Llama3.1-70B and DeepSeek-R1 as our base model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S1.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.3.1">SimpleQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.1.1.4.1">FRAMES</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">Llama3.1-70B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">20.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">34.3</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">w/o access to the web</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">DeepSeek-R1</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">30.1</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.4.4.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">37.5</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">50.5</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.5.5.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T1.2.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">Perplexity <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib21" title="">21</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">42.4</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.6.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.6.6.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">Perplexity Sonar Reasoning Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib22" title="">22</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">85.8</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">44.4</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">with access to the web</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">GPT-4o Search Preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib17" title="">17</a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.7.7.3.1">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.8.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.8.8.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S1.T1.2.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">ODS-v1+DeepSeek-R1 (ours)</th>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">87.7</td>
<td class="ltx_td ltx_align_center" id="S1.T1.2.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">56.7</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.9.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S1.T1.2.9.9.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S1.T1.2.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">ODS-v2+DeepSeek-R1 (ours)</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T1.2.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S1.T1.2.9.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.9.9.4.1">75.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of the proposed Open Deep Search (ODS) framework, using the open-source DeepSeek-R1 language model, against several state-of-the-art closed-source search AI solutions (Perplexity, Perplexity Sonar Reasoning Pro, and GPT-4 Search Preview) on two benchmark datasets (FRAMES and SimpleQA).  It highlights ODS's performance exceeding those of the closed-source solutions, showing that ODS nearly matches and sometimes surpasses them.  The table also differentiates between two versions of ODS (ODS-v1 and ODS-v2), which use different reasoning agents (ReAct and CodeAct, respectively), and notes that ODS-v2 provides a significant improvement on the FRAMES benchmark compared to the GPT-40 Search Preview, although it performs slightly worse on SimpleQA.
> <details>
> <summary>read the caption</summary>
> Table 1: The proposed open-source search framework of ODS, when used with the open-source reasoning LLM of DeepSeek-R1 [4], achieves performance exceeding that of closed-source state-of-the-art search AI solutions of Perplexity [21], Perplexity Sonar Reasoning Pro [22] on the two popular factuality evaluation Benchmarks of FRAMES [8] and SimpleQA [30]. Compared to GPT-4o Search Preview, ODS-v2 has a significantly better FRAMES accuracy but a slightly worse SimpleQA accuracy. ODS-v1 uses a ReAct-based agent (Section 2.2.1) and ODS-v2 uses a CodeAct-based agent (Section 2.2.2)
> </details>





### In-depth insights


#### ODS: Open Search
Open Deep Search (ODS) is introduced as an **open-source** search solution aimed at bridging the gap between proprietary AI search tools and their open-source counterparts. The core innovation lies in augmenting open-source LLMs with reasoning agents capable of judiciously utilizing web search tools for query answering. ODS comprises two main components: the Open Search Tool and the Open Reasoning Agent, both designed to work with a user-selected base LLM. The Open Reasoning Agent interprets tasks and orchestrates actions, including calling upon the novel Open Search Tool. This new search tool outperforms proprietary tools in web searches, achieving strong performance with powerful open-source reasoning LLMs like DeepSeek-R1. ODS as a framework, is created to seamlessly augment any LLMs with search and reasoning capabilities, to achieve state-of-the-art performance in benchmarks like SimpleQA and FRAMES. This effort promotes transparency, fosters innovation, and empowers entrepreneurs in the search AI space.

#### Reasoning Agents
**Reasoning agents** are pivotal in augmenting LLMs for sophisticated search, as highlighted in the paper. They enable LLMs to surpass proprietary solutions by orchestrating sequences of actions involving tools like web search. The architecture involves interpreting queries, assessing context, and utilizing appropriate tools, enhancing overall performance. The paper explores both ReAct and CodeAct-based agents, showcasing versatility. Reasoning enhances the LLM's ability to understand complex prompts and perform multiple-step retrievals leading to better answers. The agents' adaptability allows them to handle varying tasks efficiently, contributing to the state-of-the-art performance achieved by the system. These agents also are responsible for tool selection for instance, choosing whether to use a calculator tool or continuing reasoning. 

#### Search Tooling
Search tools are indispensable for augmenting large language models (LLMs), providing real-time information access. **Closed-source solutions** dominate, hindering transparency. Open-source alternatives exist but face challenges in query processing, snippet relevance, and context extraction. Effective search tooling requires sophisticated query rephrasing, reliable source prioritization, and content filtering. **Agentic frameworks** can intelligently leverage search tools, adaptively selecting queries and integrating retrieved information. By promoting open-source development, we can foster innovation, democratize access, and mitigate the risks associated with proprietary systems. 

#### CodeAct Agents
The 'CodeAct Agents' section discusses employing executable Python code for tool calling. This method significantly enhances performance compared to JSON-based approaches. LLMs can compress the action-space using code, **making it naturally suited for action taking**. Code is composable, modularized, and generalized more easily than JSON, **simplifying complex tasks**. By using CodeAct Agents, Open Deep Search customizes tools such as SmolAgents to search the web. CodeAgent's search tool allows for seamless customization and distribution.

#### Dynamic Prompts
Dynamic few-shot learning with ReAct leverages demonstrative examples to guide reasoning. **The system optimizes prompt efficiency via vector similarity matching**, retrieving relevant examples and maintaining performance while reducing complexity. A community campaign designed 200 ReAct prompts, **incorporating diverse intuitions** resulting in substantially improved ReAct agent performance. Examples are included in Appendix B.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.2.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.2">Accuracy (%)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.2.1.1.3"># of web searches per query</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T2.2.2.2.1">ODS+base-model</th>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.2">SimpleQA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.2.2.3">FRAMES</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2.4">SimpleQA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.2.2.5">FRAMES</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.2.3.3.1">ODS-v1+Llama3.1-70B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.3.2">83.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.3.3.3">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.3.3.4">1.09</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.3.3.5">1.05</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.2.4.4.1">ODS-v1+DeepSeek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.4.2">87.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.4.4.3">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.4.4">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.4.4.5">1.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S3.T2.2.5.5.1">ODS-v2+DeepSeek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.2.5.5.2">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T2.2.5.5.3">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.2.5.5.4">1.45</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T2.2.5.5.5">3.39</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of web searches performed by the Open Deep Search (ODS) system for each query across two benchmark datasets: SimpleQA and FRAMES.  It highlights ODS's adaptive search strategy.  Instead of performing a fixed number of searches, ODS dynamically adjusts the number of searches based on the quality of the initial search results and the model's output. If the initial results and model's performance are satisfactory, ODS avoids additional searches.  However, if improvement is needed, ODS judiciously conducts further searches to enhance accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: How many times ODS searches the web, on average per query, for the two benchmarks. ODS adapts to the quality of the first search result and the model output to judiciously use the extra search only when deemed necessary.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.30.30">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.30.30.31.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T3.30.30.31.1.1">Search AI</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.30.30.31.1.2">SimpleQA (%)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.30.30.32.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S3.T3.30.30.32.2.1"><span class="ltx_text ltx_font_italic" id="S3.T3.30.30.32.2.1.1">Closed-source</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T3.1.1.1.2">o1-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.1.1"><math alttext="7.6" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mn id="S3.T3.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.m1.1.1.cmml">7.6</mn><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><cn id="S3.T3.1.1.1.1.m1.1.1.cmml" type="float" xref="S3.T3.1.1.1.1.m1.1.1">7.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">7.6</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">7.6</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.2.2.2.2">GPT-4o-mini-2024-07-18 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.2.2.1"><math alttext="9.5" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.1.m1.1a"><mn id="S3.T3.2.2.2.1.m1.1.1" xref="S3.T3.2.2.2.1.m1.1.1.cmml">9.5</mn><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><cn id="S3.T3.2.2.2.1.m1.1.1.cmml" type="float" xref="S3.T3.2.2.2.1.m1.1.1">9.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">9.5</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">9.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.3.3.3.2">o3-mini-low <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.3.3.1"><math alttext="13.0" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><mn id="S3.T3.3.3.3.1.m1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.cmml">13.0</mn><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><cn id="S3.T3.3.3.3.1.m1.1.1.cmml" type="float" xref="S3.T3.3.3.3.1.m1.1.1">13.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">13.0</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">13.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.4.4.4.2">o3-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.4.4.4.1"><math alttext="13.4" class="ltx_Math" display="inline" id="S3.T3.4.4.4.1.m1.1"><semantics id="S3.T3.4.4.4.1.m1.1a"><mn id="S3.T3.4.4.4.1.m1.1.1" xref="S3.T3.4.4.4.1.m1.1.1.cmml">13.4</mn><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.1.m1.1b"><cn id="S3.T3.4.4.4.1.m1.1.1.cmml" type="float" xref="S3.T3.4.4.4.1.m1.1.1">13.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.1.m1.1c">13.4</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.1.m1.1d">13.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.5.5.5.2">o3-mini-high <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.5.5.5.1"><math alttext="13.8" class="ltx_Math" display="inline" id="S3.T3.5.5.5.1.m1.1"><semantics id="S3.T3.5.5.5.1.m1.1a"><mn id="S3.T3.5.5.5.1.m1.1.1" xref="S3.T3.5.5.5.1.m1.1.1.cmml">13.8</mn><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.1.m1.1b"><cn id="S3.T3.5.5.5.1.m1.1.1.cmml" type="float" xref="S3.T3.5.5.5.1.m1.1.1">13.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.1.m1.1c">13.8</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.1.m1.1d">13.8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.6.6.6.2">Grok 3 Mini Beta <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.6.6.6.1"><math alttext="21.7" class="ltx_Math" display="inline" id="S3.T3.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.1.m1.1a"><mn id="S3.T3.6.6.6.1.m1.1.1" xref="S3.T3.6.6.6.1.m1.1.1.cmml">21.7</mn><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.1.m1.1b"><cn id="S3.T3.6.6.6.1.m1.1.1.cmml" type="float" xref="S3.T3.6.6.6.1.m1.1.1">21.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.1.m1.1c">21.7</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.1.m1.1d">21.7</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.7.7.7.2">Claude 3 Opus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.7.1"><math alttext="23.5" class="ltx_Math" display="inline" id="S3.T3.7.7.7.1.m1.1"><semantics id="S3.T3.7.7.7.1.m1.1a"><mn id="S3.T3.7.7.7.1.m1.1.1" xref="S3.T3.7.7.7.1.m1.1.1.cmml">23.5</mn><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.1.m1.1b"><cn id="S3.T3.7.7.7.1.m1.1.1.cmml" type="float" xref="S3.T3.7.7.7.1.m1.1.1">23.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.1.m1.1c">23.5</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.1.m1.1d">23.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.8.8.8.2">GPT-4-turbo-2024-04-09 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.8.8.8.1"><math alttext="24.2" class="ltx_Math" display="inline" id="S3.T3.8.8.8.1.m1.1"><semantics id="S3.T3.8.8.8.1.m1.1a"><mn id="S3.T3.8.8.8.1.m1.1.1" xref="S3.T3.8.8.8.1.m1.1.1.cmml">24.2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.8.1.m1.1b"><cn id="S3.T3.8.8.8.1.m1.1.1.cmml" type="float" xref="S3.T3.8.8.8.1.m1.1.1">24.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.8.1.m1.1c">24.2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.8.1.m1.1d">24.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.9.9.9.2">Claude 3.5 Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.9.9.9.1"><math alttext="28.9" class="ltx_Math" display="inline" id="S3.T3.9.9.9.1.m1.1"><semantics id="S3.T3.9.9.9.1.m1.1a"><mn id="S3.T3.9.9.9.1.m1.1.1" xref="S3.T3.9.9.9.1.m1.1.1.cmml">28.9</mn><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.9.1.m1.1b"><cn id="S3.T3.9.9.9.1.m1.1.1.cmml" type="float" xref="S3.T3.9.9.9.1.m1.1.1">28.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.9.1.m1.1c">28.9</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.9.1.m1.1d">28.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.10.10.10.2">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.10.10.10.1"><math alttext="38.2" class="ltx_Math" display="inline" id="S3.T3.10.10.10.1.m1.1"><semantics id="S3.T3.10.10.10.1.m1.1a"><mn id="S3.T3.10.10.10.1.m1.1.1" xref="S3.T3.10.10.10.1.m1.1.1.cmml">38.2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.10.10.10.1.m1.1b"><cn id="S3.T3.10.10.10.1.m1.1.1.cmml" type="float" xref="S3.T3.10.10.10.1.m1.1.1">38.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.10.10.1.m1.1c">38.2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.10.10.1.m1.1d">38.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.11.11.11.2">GPT-4o-2024-11-20 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.11.11.11.1"><math alttext="38.8" class="ltx_Math" display="inline" id="S3.T3.11.11.11.1.m1.1"><semantics id="S3.T3.11.11.11.1.m1.1a"><mn id="S3.T3.11.11.11.1.m1.1.1" xref="S3.T3.11.11.11.1.m1.1.1.cmml">38.8</mn><annotation-xml encoding="MathML-Content" id="S3.T3.11.11.11.1.m1.1b"><cn id="S3.T3.11.11.11.1.m1.1.1.cmml" type="float" xref="S3.T3.11.11.11.1.m1.1.1">38.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.11.11.1.m1.1c">38.8</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.11.11.1.m1.1d">38.8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.12.12.12.2">GPT-4o-2024-05-13 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.12.12.1"><math alttext="39.0" class="ltx_Math" display="inline" id="S3.T3.12.12.12.1.m1.1"><semantics id="S3.T3.12.12.12.1.m1.1a"><mn id="S3.T3.12.12.12.1.m1.1.1" xref="S3.T3.12.12.12.1.m1.1.1.cmml">39.0</mn><annotation-xml encoding="MathML-Content" id="S3.T3.12.12.12.1.m1.1b"><cn id="S3.T3.12.12.12.1.m1.1.1.cmml" type="float" xref="S3.T3.12.12.12.1.m1.1.1">39.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.12.12.1.m1.1c">39.0</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.12.12.1.m1.1d">39.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.13.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.13.13.13.2">GPT-4o-2024-08-06 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.13.13.13.1"><math alttext="40.1" class="ltx_Math" display="inline" id="S3.T3.13.13.13.1.m1.1"><semantics id="S3.T3.13.13.13.1.m1.1a"><mn id="S3.T3.13.13.13.1.m1.1.1" xref="S3.T3.13.13.13.1.m1.1.1.cmml">40.1</mn><annotation-xml encoding="MathML-Content" id="S3.T3.13.13.13.1.m1.1b"><cn id="S3.T3.13.13.13.1.m1.1.1.cmml" type="float" xref="S3.T3.13.13.13.1.m1.1.1">40.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.13.13.13.1.m1.1c">40.1</annotation><annotation encoding="application/x-llamapun" id="S3.T3.13.13.13.1.m1.1d">40.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.14.14.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.14.14.14.2">o1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.14.14.14.1"><math alttext="42.6" class="ltx_Math" display="inline" id="S3.T3.14.14.14.1.m1.1"><semantics id="S3.T3.14.14.14.1.m1.1a"><mn id="S3.T3.14.14.14.1.m1.1.1" xref="S3.T3.14.14.14.1.m1.1.1.cmml">42.6</mn><annotation-xml encoding="MathML-Content" id="S3.T3.14.14.14.1.m1.1b"><cn id="S3.T3.14.14.14.1.m1.1.1.cmml" type="float" xref="S3.T3.14.14.14.1.m1.1.1">42.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.14.14.14.1.m1.1c">42.6</annotation><annotation encoding="application/x-llamapun" id="S3.T3.14.14.14.1.m1.1d">42.6</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.15.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.15.15.15.2">o1-preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib18" title="">18</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.15.15.15.1"><math alttext="42.7" class="ltx_Math" display="inline" id="S3.T3.15.15.15.1.m1.1"><semantics id="S3.T3.15.15.15.1.m1.1a"><mn id="S3.T3.15.15.15.1.m1.1.1" xref="S3.T3.15.15.15.1.m1.1.1.cmml">42.7</mn><annotation-xml encoding="MathML-Content" id="S3.T3.15.15.15.1.m1.1b"><cn id="S3.T3.15.15.15.1.m1.1.1.cmml" type="float" xref="S3.T3.15.15.15.1.m1.1.1">42.7</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.15.15.15.1.m1.1c">42.7</annotation><annotation encoding="application/x-llamapun" id="S3.T3.15.15.15.1.m1.1d">42.7</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.16.16.16.2">Grok 3 Beta <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.16.16.16.1"><math alttext="43.6" class="ltx_Math" display="inline" id="S3.T3.16.16.16.1.m1.1"><semantics id="S3.T3.16.16.16.1.m1.1a"><mn id="S3.T3.16.16.16.1.m1.1.1" xref="S3.T3.16.16.16.1.m1.1.1.cmml">43.6</mn><annotation-xml encoding="MathML-Content" id="S3.T3.16.16.16.1.m1.1b"><cn id="S3.T3.16.16.16.1.m1.1.1.cmml" type="float" xref="S3.T3.16.16.16.1.m1.1.1">43.6</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.16.16.16.1.m1.1c">43.6</annotation><annotation encoding="application/x-llamapun" id="S3.T3.16.16.16.1.m1.1d">43.6</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.17.17.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.17.17.17.2">Gemini 2.0 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.17.17.17.1"><math alttext="44.3" class="ltx_Math" display="inline" id="S3.T3.17.17.17.1.m1.1"><semantics id="S3.T3.17.17.17.1.m1.1a"><mn id="S3.T3.17.17.17.1.m1.1.1" xref="S3.T3.17.17.17.1.m1.1.1.cmml">44.3</mn><annotation-xml encoding="MathML-Content" id="S3.T3.17.17.17.1.m1.1b"><cn id="S3.T3.17.17.17.1.m1.1.1.cmml" type="float" xref="S3.T3.17.17.17.1.m1.1.1">44.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.17.17.17.1.m1.1c">44.3</annotation><annotation encoding="application/x-llamapun" id="S3.T3.17.17.17.1.m1.1d">44.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.18.18.18.2">Perplexity Sonar <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib22" title="">22</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.18.18.18.1"><math alttext="77.3" class="ltx_Math" display="inline" id="S3.T3.18.18.18.1.m1.1"><semantics id="S3.T3.18.18.18.1.m1.1a"><mn id="S3.T3.18.18.18.1.m1.1.1" xref="S3.T3.18.18.18.1.m1.1.1.cmml">77.3</mn><annotation-xml encoding="MathML-Content" id="S3.T3.18.18.18.1.m1.1b"><cn id="S3.T3.18.18.18.1.m1.1.1.cmml" type="float" xref="S3.T3.18.18.18.1.m1.1.1">77.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.18.18.18.1.m1.1c">77.3</annotation><annotation encoding="application/x-llamapun" id="S3.T3.18.18.18.1.m1.1d">77.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.30.30.33.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.30.30.33.3.1">Perplexity <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib21" title="">21</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.30.30.33.3.2">82.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.19.19.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.19.19.19.2">Perplexity Sonar Reasoning Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib22" title="">22</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.19.19.19.1"><math alttext="85.8" class="ltx_Math" display="inline" id="S3.T3.19.19.19.1.m1.1"><semantics id="S3.T3.19.19.19.1.m1.1a"><mn id="S3.T3.19.19.19.1.m1.1.1" xref="S3.T3.19.19.19.1.m1.1.1.cmml">85.8</mn><annotation-xml encoding="MathML-Content" id="S3.T3.19.19.19.1.m1.1b"><cn id="S3.T3.19.19.19.1.m1.1.1.cmml" type="float" xref="S3.T3.19.19.19.1.m1.1.1">85.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.19.19.19.1.m1.1c">85.8</annotation><annotation encoding="application/x-llamapun" id="S3.T3.19.19.19.1.m1.1d">85.8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.20.20.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.20.20.20.2">GPT-4o Search Preview <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib17" title="">17</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.20.20.20.1"><math alttext="90.0" class="ltx_Math" display="inline" id="S3.T3.20.20.20.1.m1.1"><semantics id="S3.T3.20.20.20.1.m1.1a"><mn id="S3.T3.20.20.20.1.m1.1.1" xref="S3.T3.20.20.20.1.m1.1.1.cmml">90.0</mn><annotation-xml encoding="MathML-Content" id="S3.T3.20.20.20.1.m1.1b"><cn id="S3.T3.20.20.20.1.m1.1.1.cmml" type="float" xref="S3.T3.20.20.20.1.m1.1.1">90.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.20.20.20.1.m1.1c">90.0</annotation><annotation encoding="application/x-llamapun" id="S3.T3.20.20.20.1.m1.1d">90.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.21.21.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.21.21.21.2">Exa <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib1" title="">1</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.21.21.21.1"><math alttext="90.0" class="ltx_Math" display="inline" id="S3.T3.21.21.21.1.m1.1"><semantics id="S3.T3.21.21.21.1.m1.1a"><mn id="S3.T3.21.21.21.1.m1.1.1" xref="S3.T3.21.21.21.1.m1.1.1.cmml">90.0</mn><annotation-xml encoding="MathML-Content" id="S3.T3.21.21.21.1.m1.1b"><cn id="S3.T3.21.21.21.1.m1.1.1.cmml" type="float" xref="S3.T3.21.21.21.1.m1.1.1">90.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.21.21.21.1.m1.1c">90.0</annotation><annotation encoding="application/x-llamapun" id="S3.T3.21.21.21.1.m1.1d">90.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.22.22.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.22.22.22.2">Linkup <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib15" title="">15</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.22.22.22.1"><math alttext="90.1" class="ltx_Math" display="inline" id="S3.T3.22.22.22.1.m1.1"><semantics id="S3.T3.22.22.22.1.m1.1a"><mn id="S3.T3.22.22.22.1.m1.1.1" xref="S3.T3.22.22.22.1.m1.1.1.cmml">90.1</mn><annotation-xml encoding="MathML-Content" id="S3.T3.22.22.22.1.m1.1b"><cn id="S3.T3.22.22.22.1.m1.1.1.cmml" type="float" xref="S3.T3.22.22.22.1.m1.1.1">90.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.22.22.22.1.m1.1c">90.1</annotation><annotation encoding="application/x-llamapun" id="S3.T3.22.22.22.1.m1.1d">90.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.23.23.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.23.23.23.2">Perplexity Deep Research <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib23" title="">23</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.23.23.23.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S3.T3.23.23.23.1.1">93.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.30.30.34.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" colspan="2" id="S3.T3.30.30.34.4.1"><span class="ltx_text ltx_font_italic" id="S3.T3.30.30.34.4.1.1">Open-source</span></th>
</tr>
<tr class="ltx_tr" id="S3.T3.24.24.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T3.24.24.24.2">Qwen 2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib4" title="">4</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.24.24.24.1"><math alttext="9.1" class="ltx_Math" display="inline" id="S3.T3.24.24.24.1.m1.1"><semantics id="S3.T3.24.24.24.1.m1.1a"><mn id="S3.T3.24.24.24.1.m1.1.1" xref="S3.T3.24.24.24.1.m1.1.1.cmml">9.1</mn><annotation-xml encoding="MathML-Content" id="S3.T3.24.24.24.1.m1.1b"><cn id="S3.T3.24.24.24.1.m1.1.1.cmml" type="float" xref="S3.T3.24.24.24.1.m1.1.1">9.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.24.24.24.1.m1.1c">9.1</annotation><annotation encoding="application/x-llamapun" id="S3.T3.24.24.24.1.m1.1d">9.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.25.25.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.25.25.25.2">Llama3.1-70B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.25.25.25.1"><math alttext="20.4^{*}" class="ltx_Math" display="inline" id="S3.T3.25.25.25.1.m1.1"><semantics id="S3.T3.25.25.25.1.m1.1a"><msup id="S3.T3.25.25.25.1.m1.1.1" xref="S3.T3.25.25.25.1.m1.1.1.cmml"><mn id="S3.T3.25.25.25.1.m1.1.1.2" xref="S3.T3.25.25.25.1.m1.1.1.2.cmml">20.4</mn><mo id="S3.T3.25.25.25.1.m1.1.1.3" xref="S3.T3.25.25.25.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S3.T3.25.25.25.1.m1.1b"><apply id="S3.T3.25.25.25.1.m1.1.1.cmml" xref="S3.T3.25.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.25.25.25.1.m1.1.1.1.cmml" xref="S3.T3.25.25.25.1.m1.1.1">superscript</csymbol><cn id="S3.T3.25.25.25.1.m1.1.1.2.cmml" type="float" xref="S3.T3.25.25.25.1.m1.1.1.2">20.4</cn><times id="S3.T3.25.25.25.1.m1.1.1.3.cmml" xref="S3.T3.25.25.25.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.25.25.25.1.m1.1c">20.4^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.25.25.25.1.m1.1d">20.4 start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.26.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.26.26.26.2">DeepSeek-V3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib32" title="">32</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.26.26.26.1"><math alttext="24.9" class="ltx_Math" display="inline" id="S3.T3.26.26.26.1.m1.1"><semantics id="S3.T3.26.26.26.1.m1.1a"><mn id="S3.T3.26.26.26.1.m1.1.1" xref="S3.T3.26.26.26.1.m1.1.1.cmml">24.9</mn><annotation-xml encoding="MathML-Content" id="S3.T3.26.26.26.1.m1.1b"><cn id="S3.T3.26.26.26.1.m1.1.1.cmml" type="float" xref="S3.T3.26.26.26.1.m1.1.1">24.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.26.26.26.1.m1.1c">24.9</annotation><annotation encoding="application/x-llamapun" id="S3.T3.26.26.26.1.m1.1d">24.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.27.27.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.27.27.27.2">DeepSeek-R1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20201v1#bib.bib5" title="">5</a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.27.27.27.1"><math alttext="82.4" class="ltx_Math" display="inline" id="S3.T3.27.27.27.1.m1.1"><semantics id="S3.T3.27.27.27.1.m1.1a"><mn id="S3.T3.27.27.27.1.m1.1.1" xref="S3.T3.27.27.27.1.m1.1.1.cmml">82.4</mn><annotation-xml encoding="MathML-Content" id="S3.T3.27.27.27.1.m1.1b"><cn id="S3.T3.27.27.27.1.m1.1.1.cmml" type="float" xref="S3.T3.27.27.27.1.m1.1.1">82.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.27.27.27.1.m1.1c">82.4</annotation><annotation encoding="application/x-llamapun" id="S3.T3.27.27.27.1.m1.1d">82.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.28.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.28.28.28.2">ODS-v1+Llama3.1-70B</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.28.28.28.1"><math alttext="84.0^{*}" class="ltx_Math" display="inline" id="S3.T3.28.28.28.1.m1.1"><semantics id="S3.T3.28.28.28.1.m1.1a"><msup id="S3.T3.28.28.28.1.m1.1.1" xref="S3.T3.28.28.28.1.m1.1.1.cmml"><mn id="S3.T3.28.28.28.1.m1.1.1.2" xref="S3.T3.28.28.28.1.m1.1.1.2.cmml">84.0</mn><mo id="S3.T3.28.28.28.1.m1.1.1.3" xref="S3.T3.28.28.28.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S3.T3.28.28.28.1.m1.1b"><apply id="S3.T3.28.28.28.1.m1.1.1.cmml" xref="S3.T3.28.28.28.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.28.28.28.1.m1.1.1.1.cmml" xref="S3.T3.28.28.28.1.m1.1.1">superscript</csymbol><cn id="S3.T3.28.28.28.1.m1.1.1.2.cmml" type="float" xref="S3.T3.28.28.28.1.m1.1.1.2">84.0</cn><times id="S3.T3.28.28.28.1.m1.1.1.3.cmml" xref="S3.T3.28.28.28.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.28.28.28.1.m1.1c">84.0^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.28.28.28.1.m1.1d">84.0 start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.29.29.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T3.29.29.29.2">ODS-v1+DeepSeek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.29.29.29.1"><math alttext="87.7^{*}" class="ltx_Math" display="inline" id="S3.T3.29.29.29.1.m1.1"><semantics id="S3.T3.29.29.29.1.m1.1a"><msup id="S3.T3.29.29.29.1.m1.1.1" xref="S3.T3.29.29.29.1.m1.1.1.cmml"><mn id="S3.T3.29.29.29.1.m1.1.1.2" xref="S3.T3.29.29.29.1.m1.1.1.2.cmml">87.7</mn><mo id="S3.T3.29.29.29.1.m1.1.1.3" xref="S3.T3.29.29.29.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S3.T3.29.29.29.1.m1.1b"><apply id="S3.T3.29.29.29.1.m1.1.1.cmml" xref="S3.T3.29.29.29.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.29.29.29.1.m1.1.1.1.cmml" xref="S3.T3.29.29.29.1.m1.1.1">superscript</csymbol><cn id="S3.T3.29.29.29.1.m1.1.1.2.cmml" type="float" xref="S3.T3.29.29.29.1.m1.1.1.2">87.7</cn><times id="S3.T3.29.29.29.1.m1.1.1.3.cmml" xref="S3.T3.29.29.29.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.29.29.29.1.m1.1c">87.7^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.29.29.29.1.m1.1d">87.7 start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.30.30.30">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S3.T3.30.30.30.2">ODS-v2+DeepSeek-R1</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.30.30.30.1"><math alttext="\textbf{88.3}^{*}" class="ltx_Math" display="inline" id="S3.T3.30.30.30.1.m1.1"><semantics id="S3.T3.30.30.30.1.m1.1a"><msup id="S3.T3.30.30.30.1.m1.1.1" xref="S3.T3.30.30.30.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T3.30.30.30.1.m1.1.1.2" xref="S3.T3.30.30.30.1.m1.1.1.2a.cmml">88.3</mtext><mo id="S3.T3.30.30.30.1.m1.1.1.3" xref="S3.T3.30.30.30.1.m1.1.1.3.cmml">∗</mo></msup><annotation-xml encoding="MathML-Content" id="S3.T3.30.30.30.1.m1.1b"><apply id="S3.T3.30.30.30.1.m1.1.1.cmml" xref="S3.T3.30.30.30.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.30.30.30.1.m1.1.1.1.cmml" xref="S3.T3.30.30.30.1.m1.1.1">superscript</csymbol><ci id="S3.T3.30.30.30.1.m1.1.1.2a.cmml" xref="S3.T3.30.30.30.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T3.30.30.30.1.m1.1.1.2.cmml" xref="S3.T3.30.30.30.1.m1.1.1.2">88.3</mtext></ci><times id="S3.T3.30.30.30.1.m1.1.1.3.cmml" xref="S3.T3.30.30.30.1.m1.1.1.3"></times></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.30.30.30.1.m1.1c">\textbf{88.3}^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.30.30.30.1.m1.1d">88.3 start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of ODS-v2 against various other open-source and closed-source search AI models on the SimpleQA benchmark.  The SimpleQA benchmark assesses the factuality of short-answer responses generated by models.  The table shows that ODS-v2 achieves the highest accuracy among open-source models.  The asterisk (*) indicates results obtained by the authors of the paper; other results were taken from cited publications.
> <details>
> <summary>read the caption</summary>
> Table 3: ODS-v2 achieves the best accuracy on SimpleQA among open-source solutions. ∗ indicates evaluations run by us. Otherwise, the SimpleQA accuracy is taken from the cited source in each row.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T4.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Search AI Solution</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">500 subset of</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T4.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">FRAMES</th>
</tr>
<tr class="ltx_tr" id="S3.T4.2.2.2">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S3.T4.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T4.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">SimpleQA (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S3.T4.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">(%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">Llama3.1-70B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.2.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">21.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.2.3.1.3" style="padding-top:1pt;padding-bottom:1pt;">34.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.2.4.2.1" style="padding-top:1pt;padding-bottom:1pt;">OpenSearchTool + Llama3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.4.2.2" style="padding-top:1pt;padding-bottom:1pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.4.2.3" style="padding-top:1pt;padding-bottom:1pt;">27.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.2.5.3.1" style="padding-top:1pt;padding-bottom:1pt;">OpenSearchTool + Llama3.1-70B + CoT-ReAct</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.5.3.2" style="padding-top:1pt;padding-bottom:1pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.5.3.3" style="padding-top:1pt;padding-bottom:1pt;">37.4</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.2.6.4.1" style="padding-top:1pt;padding-bottom:1pt;">OpenSearchTool + Llama3.1-70B + CoT-ReAct + FewShot</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.6.4.2" style="padding-top:1pt;padding-bottom:1pt;">87.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.2.6.4.3" style="padding-top:1pt;padding-bottom:1pt;">49.5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.2.7.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.2.7.5.1" style="padding-top:1pt;padding-bottom:1pt;">OpenSearchTool + DeepSeek-R1 + CoT-ReAct + FewShot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.2.7.5.2" style="padding-top:1pt;padding-bottom:1pt;">90.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.2.7.5.3" style="padding-top:1pt;padding-bottom:1pt;">56.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the contribution of each component in the ODS-v1 model to its overall performance.  It shows the impact of using the Open Search Tool, the base language model (Llama3.1-70B or DeepSeek-R1), the Chain-of-Thought ReAct method, and few-shot prompting, individually and cumulatively, on the accuracy of the model in the SimpleQA and FRAMES benchmarks.  A subset of 500 examples from SimpleQA was used for efficiency in this specific ablation study. The results highlight that each component plays a critical role in achieving the state-of-the-art performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study of Open Search Tool, Llama3.1-70B/DeepSeek-R1, and the two components of the ReAct-based Open Reasoning Agent in ODS-v1: Chain-of-Thought ReAct with self-consistency decoding (CoT-ReAct) and Few-shot prompting (FewShot). The SimpleQA accuracy is only reported on the 500 randomly sampled examples, for efficiency. Each component is critical in achieving the state-of-the-art performance.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20201/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20201/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}