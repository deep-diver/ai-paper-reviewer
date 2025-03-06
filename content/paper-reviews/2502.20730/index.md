---
title: "DeepSolution: Boosting Complex Engineering Solution Design via Tree-based Exploration and Bi-point Thinking"
summary: "DeepSolution enhances engineering design via tree exploration and bi-point thinking."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Manufacturing", "🏢 Chinese Information Processing Laboratory, Institute of Software, Chinese Academy of Sciences",]
showSummary: true
date: 2025-02-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20730 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhuoqun Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20730" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20730" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20730/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Designing solutions for complex engineering requirements is crucial, but existing retrieval-augmented generation (RAG) methods fall short.** There is a lack of benchmarks to evaluate if systems can generate complete, feasible solutions with constraints. The Long-form QA or Multi-hop QA focused on assembling knowledge fragments, missing the demands of complete solutions. The goal of automatically generate reliable solutions for these complex requirements remains unmet and necessitates new approaches and benchmarks to measure progress in this area. 



This paper introduces SolutionBench, a new benchmark, to tackle the challenge, evaluating systems in generating complete solutions for complex engineering requirements. **The study also presents SolutionRAG, a novel system with tree-based exploration and bi-point thinking to generate reliable solutions.** Experimental results on SolutionBench show SolutionRAG outperforms existing methods, achieving state-of-the-art performance. The study has opened a new direction for real-world applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SolutionBench, a new benchmark, facilitates the evaluation of systems in generating complete solutions for complex engineering requirements. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SolutionRAG boosts complex engineering solution design using tree-based exploration and bi-point thinking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SolutionRAG demonstrates state-of-the-art performance on SolutionBench. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces SolutionBench, a new benchmark for engineering solution design, and SolutionRAG, a novel system using tree-based exploration and bi-point thinking. **The work addresses a significant gap in RAG research, offering a valuable tool and method to enhance automation and reliability in complex engineering solution design.** It opens avenues for exploring advanced RAG techniques and their application to real-world problems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20730/x1.png)

> 🔼 This figure illustrates the task of complex engineering solution design, which involves generating complete and feasible solutions under multiple real-world constraints.  It introduces SolutionRAG, a novel system designed to tackle this challenge.  SolutionRAG utilizes a 'bi-point thinking tree' approach, where the system iteratively designs solutions and incorporates feedback through review, refining the solution until it meets the specified requirements. The bi-point tree visually represents this iterative solution generation and refinement process.
> <details>
> <summary>read the caption</summary>
> Figure 1: This paper proposes the complex engineering solution design task and a new system that can generate reliable solutions via the bi-point thinking tree.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Engineering Domain</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1"># Datapoint</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1"># Knowledge</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.2.1">Environment (Env.)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.2">119</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.3">554</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.3.1">Mining (Min.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.2">117</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.3">543</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.4.1">Transportation (Tra.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.2">124</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.4.3">870</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.5.1">Aerospace (Aer.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.2">115</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3">802</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.6.1">Telecom (Tel.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.2">116</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.6.3">840</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.7.1">Architecture (Arc.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.2">118</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.3">858</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.8.1">Water Resource (Wat.)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.2">119</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.3">802</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.1.9.1">Farming (Far.)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.9.2">122</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.9.3">868</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 SolutionBench is a benchmark dataset for evaluating complex engineering solution design. This table presents the statistics of SolutionBench, showing the number of data points (representing real-world engineering problems with solutions) and the number of knowledge entries (facts and insights related to these domains) for each of the eight engineering domains included in the benchmark: Environment, Mining, Transportation, Aerospace, Telecom, Architecture, Water Resource, and Farming.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the SolutionBench, which include data and knowledge across eight engineering domains. The number of datapoints in dataset and the number of knowledge in knowledge base are shown above.
> </details>





### In-depth insights


#### RAG vs Solution
**Retrieval-Augmented Generation (RAG)** focuses on augmenting language models with external knowledge to improve the accuracy and relevance of generated content. In contrast, **Solution-oriented approaches** like the paper's **SolutionRAG** aim to generate complete and feasible solutions to complex problems, especially in engineering. While RAG primarily assembles existing knowledge, **SolutionRAG** emphasizes reasoning, design, and problem-solving to meet specific constraints. Existing RAG methods have been found to not generate satisfactory solutions, whereas **SolutionRAG** proves to be a more advanced approach.

#### Bi-point thinking
**Bi-point thinking** in the context of complex engineering solution design, as presented in this paper, likely refers to a **dual-perspective approach** that intertwines solution generation and evaluation. It seems like there is an **iterative process** involving the creation of a potential solution followed by a critical review or commentary on that solution. **This two-pronged strategy** aims to address the multifaceted challenges inherent in engineering tasks, which usually contains many constraints. By alternating between designing and evaluating, the system can **refine solutions** more effectively, ensuring they are both complete and feasible. This method allows for the incorporation of feedback and the identification of potential issues that might be overlooked in a single-pass design process. The use of the method helps improve the **reliability** of generated solutions.

#### SolutionBench
The 'SolutionBench' section introduces a new benchmark for evaluating systems in designing solutions for complex engineering requirements. **It addresses a gap in existing RAG research**, which has not sufficiently explored tasks with multiple real-world constraints demanding complete and feasible solutions. The section highlights the process of constructing this benchmark, emphasizing the importance of **authoritative data sources** and **domain diversity** to ensure credibility and comprehensive evaluation. **Technical reports are collected from engineering journals and processed through template-based extraction using LLMs**, followed by manual verification and redundancy removal. This ensures the benchmark accurately reflects real-world scenarios and provides a valuable tool for assessing the capabilities of systems like SolutionRAG in automating complex engineering solution design.

#### Solution Tree
The "solution tree" concept, though not explicitly stated as a heading in this paper, can be inferred from the **SolutionRAG** framework. **It explores multiple potential solutions** to a complex engineering design problem. Rather than adhering to a fixed reasoning path, **the system branches out**. Each branch is assessed, and unpromising paths are pruned. The core concept is to enhance solution reliability by **considering diverse approaches**. This systematic exploration enables the model to escape local optima and converge towards an optimized design. The framework uses bi-point thinking to refine solutions, indicating nodes are split into design and review, thus iteratively improving quality. **Pruning allows for efficiency**.

#### RAG enhanced
The paper extensively explores Retrieval-Augmented Generation (**RAG**) to address the complexities of engineering solution design. A key focus appears to be on enhancing traditional RAG frameworks to overcome limitations when dealing with multifaceted, real-world constraints inherent in engineering problems. **SolutionRAG**, a novel system is designed to improve the solution iteratively through tree-based exploration and bi-point thinking, alternating between solution design and review to guarantee generated solutions satisfy all constraints. This contrasts with standard RAG approaches that may struggle to produce feasible and complete solutions given the intricate requirements and constraints. The research highlights the inadequacy of relying solely on internal knowledge within LLMs, indicating a need for **RAG-based methods** that can effectively integrate external knowledge to tackle engineering challenges. Furthermore, the system uses a pruning mechanism to balance efficiency and performance. Overall, the paper emphasizes advancing RAG techniques to automate and enhance the reliability of complex engineering solution design, presenting SolutionRAG as a significant step forward in the field.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20730/x2.png)

> 🔼 SolutionBench is a benchmark dataset for evaluating complex engineering solution design.  The figure details the process of its creation: First, technology reports from authoritative engineering journals are gathered to ensure quality.  Second,  a manually designed template is used with Large Language Models (LLMs) to extract crucial information from these reports. This information includes requirements, solutions, analysis, and technical details. Finally, the extracted information undergoes human verification to correct any errors or inconsistencies and merge data from the same engineering domain into a unified knowledge base, creating the SolutionBench.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of the SolutionBench construction method, which includes collecting technology reports from engineering journals to ensure authority and authenticity, extracting useful content based on a manually formatted template and powerful LLMs, and finally harvesting the benchmark after manual verification and merging.
> </details>



![](https://arxiv.org/html/2502.20730/x3.png)

> 🔼 SolutionRAG uses a tree-based exploration strategy to iteratively refine solutions.  Each node in the tree represents either a proposed solution or a reviewer comment on a solution. The process alternates between solution generation and review (bi-point thinking).  This ensures solutions consider all constraints. A pruning mechanism removes less promising solution paths to improve efficiency and focuses on the most promising solutions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of SolutionRAG, we set the child number of each node as 2 for easy presentation above. SolutionRAG uses tree-based exploration to find optimal solution improvement process, bi-point thinking to guarantee generated solutions satisfy all constraints, and a pruning mechanism to balance efficiency and performance.
> </details>



![](https://arxiv.org/html/2502.20730/x4.png)

> 🔼 This figure visualizes the performance improvement of SolutionRAG over different layers of the tree-based exploration process.  As the tree grows deeper (more inference steps are performed), the scores (both analytical and technical) of the generated solutions consistently increase. This demonstrates SolutionRAG's capacity for iterative refinement and improved solution quality as the model explores more solution paths.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance changes during the tree growth. The figure shows that scores become higher as the tree grows, proving SolutionRAG can indeed improve the solution scores as inference being deep.
> </details>



![](https://arxiv.org/html/2502.20730/x5.png)

> 🔼 This figure visualizes the effectiveness of the node evaluation mechanism used in the SolutionRAG system.  The graph compares the scores of solution nodes that were retained during the pruning process versus those that were pruned.  The results clearly show that retained nodes consistently have higher scores than pruned nodes, demonstrating that the node evaluation method successfully identifies and retains the most promising solution paths, improving efficiency and solution quality.
> <details>
> <summary>read the caption</summary>
> Figure 5: Effectiveness of node evaluation mechanism. The figure shows that scores in retained nodes are higher than in pruned nodes, thus the node evaluation is an effective method for judging and pruning in SolutionRAG.
> </details>



![](https://arxiv.org/html/2502.20730/x6.png)

> 🔼 This figure displays the template used to extract relevant information from engineering reports for a benchmark dataset.  The template is designed to capture key aspects of the engineering design process, including real-world problem requirements, expert solutions, the analytical reasoning behind those solutions, the technical knowledge utilized, and the step-by-step explanation of the design process. This structured approach ensures consistency and completeness in the collected data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Template used to extract useful content from original engineering reports, aiming to capture real-world complex requirements, expert-authored solutions, analytical knowledge used to interpret the requirements, technical knowledge applied in addressing the requirements, and explanations for the expert’s solution design process.
> </details>



![](https://arxiv.org/html/2502.20730/x7.png)

> 🔼 Figure 7 details the prompts used in SolutionRAG's tree-based exploration process.  It shows how SolutionRAG generates new solution and comment nodes at each step. Starting from the root node (the problem requirement), prompts guide the system to generate solution proposals.  Subsequently, prompts are used when evaluating these solutions to generate comments highlighting areas for improvement. Further prompts drive the iterative refinement of solutions based on the comments.  The process repeats, alternating between solution proposals and comments to gradually build a reliable and complete solution.
> <details>
> <summary>read the caption</summary>
> Figure 7: Prompts used in node expansion of tree growth, including generating solution proposals and solutions based on the root node, generating comment proposals and comments based on a solution node, and generating solution proposals and solutions based on a comment node.
> </details>



![](https://arxiv.org/html/2502.20730/x8.png)

> 🔼 Figure 8 presents the prompts used to evaluate the quality of a system's solution to a complex engineering problem.  These prompts leverage GPT-4 to assess two key aspects: (1) the analytical score, which evaluates the system's understanding and consideration of the complex constraints, and (2) the technical score, which assesses the appropriateness and accuracy of the technologies applied. The evaluation process uses the 'gold standard' solution, explanation, analytical knowledge, and technical knowledge as references, allowing for a comprehensive comparison and a numerical score (0-100) for each aspect.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompts for calculating analytical score and technical score, which uses the golden solution, explanation, and corresponding analytical and technical knowledge as references, allowing GPT-4o to assess whether the system’s solution sufficiently consider the challenges posed by the complex constraints and apply the appropriate technologies to address the complex constraints in the requirements.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Env.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Min.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Tra.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">Aer.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1">Tel.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1">Arc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1">Wat.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.9.1">Far.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.6">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.7">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.8">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.9">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.10">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.11">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.12">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.13">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.14">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.15">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.16">TS</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3" style="background-color:#E7E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T2.1.1.3.1"><span class="ltx_text" id="S4.T2.1.1.3.1.1" style="background-color:#E7E6E6;">Deep Reasoning Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.4.1">o1-2024-12-17 <cite class="ltx_cite ltx_citemacro_cite">OpenAI (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib21" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.2">60.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.3">48.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.4">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.5">37.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.6">57.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.7">44.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.8">57.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.9">47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.10">63.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.11">52.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.12">61.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.13">52.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.14">59.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.15">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.16">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.17">52.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.5.1">GLM-Zero-Preview <cite class="ltx_cite ltx_citemacro_cite">Zhipu (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib37" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">43.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5">22.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.6">45.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.7">27.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.8">42.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.9">25.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.10">45.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.11">31.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.12">47.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.13">32.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.14">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.15">30.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.16">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.17">36.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.6.1">QwQ-32B-Preview <cite class="ltx_cite ltx_citemacro_cite">Qwen (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib23" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.2">54.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.4">48.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.5">27.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6">47.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.7">29.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.8">47.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.9">31.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.10">52.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.11">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.12">51.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.13">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.14">49.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.15">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.16">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.17">37.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7" style="background-color:#E7E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T2.1.1.7.1"><span class="ltx_text" id="S4.T2.1.1.7.1.1" style="background-color:#E7E6E6;">Single-round RAG Methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.8.1">Naïve-RAG <cite class="ltx_cite ltx_citemacro_cite">Lewis et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib13" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.2">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.3">62.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.4">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.5">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.6">62.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.7">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.8">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.9">65.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.10">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.11">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.12">66.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.13">63.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.14"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.14.1">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.15">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.16">65.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.17">63.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.9.1">Rerank-RAG <cite class="ltx_cite ltx_citemacro_cite">Li et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib15" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.2">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.3">60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.4">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.5">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.6">60.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.7">49.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8">65.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.10">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.11">63.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.12">66.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.13">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.14">64.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.15">55.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.16">64.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.17">59.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10" style="background-color:#E7E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T2.1.1.10.1"><span class="ltx_text" id="S4.T2.1.1.10.1.1" style="background-color:#E7E6E6;">Multi-round RAG Methods</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.11.1">Self-RAG <cite class="ltx_cite ltx_citemacro_cite">Asai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.2">64.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.3">63.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.4">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.5">41.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.6">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.7">56.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.8">68.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.9">69.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.10">67.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.11">66.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.12">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.13">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.14">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.15">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.16">65.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.17">61.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.12.1">GenGround <cite class="ltx_cite ltx_citemacro_cite">Shi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib24" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.2">54.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.3">46.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.4">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.5">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.6">54.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.7">37.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.8">55.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9">46.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.10">58.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.11">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12">60.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.13">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.14">60.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.15">48.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.16">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.17">52.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.13.1">RQ-RAG <cite class="ltx_cite ltx_citemacro_cite">Chan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20730v1#bib.bib2" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.2">53.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.3">44.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.4">48.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.5">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.6">53.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.7">38.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.8">55.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.9">46.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.10">57.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.11">44.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.12">56.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.13">46.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.14">54.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.15">39.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.16">57.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.17">45.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14" style="background-color:#E7E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T2.1.1.14.1"><span class="ltx_text" id="S4.T2.1.1.14.1.1" style="background-color:#E7E6E6;">Tree-based Exploration and Bi-point Thinking</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.1">SolutionRAG (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.2.1">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.3.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.4.1">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.5.1">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.6.1">64.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.7.1">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.8.1">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.9.1">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.10.1">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.11"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.11.1">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.12"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.12.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.13"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.13.1">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.14"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.14.1">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.15"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.15.1">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.16"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.16.1">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.15.17"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.17.1">65.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the main experimental results of evaluating various methods on SolutionBench, a benchmark dataset for complex engineering solution design.  The benchmark includes eight different engineering domains.  For each method and domain, two scores are reported: Analytical Score (AS) and Technical Score (TS), reflecting the system's ability to produce solutions that are both analytically sound and technically feasible, respectively. The results highlight the significant performance gap between existing methods (including those based on deep reasoning and retrieval-augmented generation) and the proposed SolutionRAG system. SolutionRAG shows a substantial improvement in generating complete and reliable solutions for complex engineering design problems.
> <details>
> <summary>read the caption</summary>
> Table 2: Main experimental results on SolutionBench with eight engineering domains, the AS is the analytical score and TS is the technical score. The table shows that previous methods perform poorly for complex engineering solution design. In contrast, our SolutionRAG is able to output more complete and reliable solutions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Env.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Min.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">Tra.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Aer.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">Tel.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.7.1">Arc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.8.1">Wat.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.9.1">Far.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.10.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.5">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.6">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.7">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.8">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.9">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.10">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.11">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.12">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.13">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.14">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.15">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.16">TS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.17">AS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.18">TS</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.3.1">SolutionRAG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.1">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.3.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.4.1">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.5.1">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.6.1">64.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.7.1">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.8"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.8.1">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.9"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.9.1">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.10"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.10.1">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.11"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.11.1">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.12"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.12.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.13"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.13.1">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.14"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.14.1">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.15"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.15.1">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.16"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.16.1">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.17"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.17.1">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.18"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.18.1">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.19"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.19.1">64.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.1">w/o tree structure</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3">66.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4">57.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.5">46.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.6">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.7">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.8">60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.9">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.10">60.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.11">63.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.12">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.13">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.14">65.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.15">59.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.16">64.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.17">63.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.18">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.19">61.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.5.1">w/o bi-point thinking</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.2">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.3">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.4">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.5">47.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.6">61.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.7">55.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.8">63.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.9">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.10">62.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.11">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.12">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.13">67.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.14">64.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.15">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.16">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.17">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.18">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.5.19">61.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the individual contributions of the tree-based exploration and bi-point thinking mechanisms within the SolutionRAG system.  The results demonstrate that both mechanisms significantly improve the overall performance of SolutionRAG in generating solutions for complex engineering problems. Notably, the ablation study indicates that both mechanisms have approximately equal importance to the system's success, highlighting their synergistic effects.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation results for tree-based exploration and bi-point thinking. The table shows that both mechanisms have obviously positive effects for SolutionRAG and exhibit a similar level of importance in the overall.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T4.1.1">
<tr class="ltx_tr" id="A3.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.1.1.1">Environment</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.2.1.1">Journal Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.2.2.1">ISSN</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.3.1">Journal of Environmental Engineering Technology</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.3.2">1674-991X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.4.1">Environmental Sanitation Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.4.2">1005-8206</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.5.1">The Administration and Technique of Environmental Monitoring</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.5.2">1006-2009</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.6.1">Environment and Development</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.6.2">2095-672X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.7.1">Environmental Protection and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.7.2">1674-0254</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.8.1">Green Environmental Protection Building Materials</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.8.2">1673-6680</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.9.1">Journal of Henan University of Urban Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.9.2">1674-7046</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.10.1">Urban Management and Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.10.2">1008-2271</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.11.1">Science and Technology Square</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.11.2">1671-4792</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.12.1">Construction Materials &amp; Decoration</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.12.2">1673-0038</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.13.1">Intelligent City</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.13.2">2096-1936</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.14.1">Instrument Standardization &amp; Metrology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.14.2">1672-5611</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.15.1">Northwest Hydropower</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.15.2">1006-2610</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.16">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.16.1">Technology &amp; Economics in Petrochemicals</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.16.2">1674-1099</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.17">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.17.1">Water Purification Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.17.2">1009-0177</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.18">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.18.1">Construction Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.18.2">1671-3915</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.19">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.19.1">Urban Geology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.19.2">2097-3764</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.20">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.20.1">Engineering and Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.20.2">1673-5781</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.21">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.21.1">Engineering and Technological Research</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.21.2">2096-2789</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.22">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.22.1">Scientific and Technological Innovation</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.22.2">2096-4390</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.23">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.23.1">Engineering &amp; Test</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.23.2">1674-3407</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.24">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.24.1">Inner Mongolia Water Resources</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.24.2">1009-0088</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.25">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.25.1">China Cement</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.25.2">1671-8321</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.26">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.26.1">Guangdong Chemical Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.26.2">1007-1865</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.27">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.27.1">Jiangxi Building Materials</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.27.2">1006-2890</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.28">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.28.1">Tianjin Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.28.2">1006-8945</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.29">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.29.1">Journal of Zhejiang University of Water Resources and Electric Power</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.29.2">2095-7092</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.30">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.30.1">China Municipal Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.30.2">1004-4655</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.31">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.31.1">China Storage &amp; Transport</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.31.2">1005-0434</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.32">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T4.1.1.32.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.32.1.1">Mining</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.33">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.33.1"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.33.1.1">Journal Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.33.2"><span class="ltx_text ltx_font_bold" id="A3.T4.1.1.33.2.1">ISSN</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.34">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.34.1">Coal Engineering</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.34.2">1671-0959</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.35">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.35.1">Mining Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.35.2">1671-8550</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.36">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.36.1">Mechanical Management and Development</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.36.2">1003-773X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.37">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.37.1">Coal and Chemical Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.37.2">2095-5979</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.38">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.38.1">Colliery Mechanical &amp; Electrical Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.38.2">1001-0874</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.39">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.39.1">Modern Mining</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.39.2">1674-6082</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.40">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.40.1">China Mine Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.40.2">1672-609X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.41">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.41.1">Shandong Coal Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.41.2">1005-2801</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.42">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.42.1">Jiangxi Coal Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.42.2">1006-2572</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.43">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.43.1">Metal Mine</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.43.2">1001-1250</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.44">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.44.1">Modern Chemical Research</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.44.2">1672-8114</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.45">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.45.1">Petroleum Geology and Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.45.2">1673-8217</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.46">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.46.1">Coal Mine Modernization</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.46.2">1009-0797</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.47">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.47.1">Shaanxi Coal</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.47.2">1671-749X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.48">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.48.1">Drilling Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.48.2">2096-9686</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.49">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.49.1">Mineral Resources and Geology</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.49.2">1001-5663</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.50">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.50.1">Mine Surveying</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.50.2">1001-358X</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.51">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.51.1">Coal</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.51.2">1005-2798</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.52">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.52.1">Mining Equipment</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.52.2">2095-1418</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.53">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.53.1">Inner Mongolia Coal Economy</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.53.2">1008-0155</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.54">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.54.1">Inner Mongolia Petrochemical Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.54.2">1006-7981</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.55">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.55.1">Energy and Energy Conservation</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.55.2">2095-0802</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.56">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.56.1">China Plant Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.56.2">1671-0711</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.57">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.57.1">Engineering and Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.57.2">1673-5781</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.58">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.58.1">Scientific and Technological Innovation</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.58.2">2096-4390</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.59">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.59.1">Engineering &amp; Test</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.59.2">1674-3407</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.60">
<td class="ltx_td ltx_align_left" id="A3.T4.1.1.60.1">Energy Technology and Management</td>
<td class="ltx_td ltx_align_center" id="A3.T4.1.1.60.2">1672-9943</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.61">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.1.1.61.1">Coal Technology</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.1.1.61.2">1008-8725</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the engineering journals used to compile the SolutionBench benchmark dataset.  It's divided into sections, with environment and mining journals listed in Table 4, while transportation, aerospace, telecom, architecture, water resources, and farming journals are detailed in Tables 5 and 6 respectively.  The inclusion of these diverse journals ensures a wide range of engineering domains are represented in the benchmark, providing a robust and comprehensive evaluation of solution design systems.
> <details>
> <summary>read the caption</summary>
> Table 4: List of the engineering journals used for construction the benchmark. The information for environment domain and mining domain is shown above, and information for other domains is in Table 5 and 6.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.1.1">
<tr class="ltx_tr" id="A3.T5.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.1.1">Transportation</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.2.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.2.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.3.1">Railway Construction Technology</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.3.2">1009-4539</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.4.1">Northern Communications</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.4.2">1673-6052</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.5.1">China Municipal Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.5.2">1004-4655</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.6.1">Highway</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.6.2">0451-0712</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.7.1">Urban Roads Bridges &amp; Flood Control</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.7.2">1009-7716</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.8.1">Technology Innovation and Application</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.8.2">2095-2945</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.9.1">Marine Equipment/Materials &amp; Marketing</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.9.2">1006-6969</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.10.1">Engineering and Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.10.2">1673-5781</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.11.1">Port Operation</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.11.2">1000-8969</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.12.1">Structural Engineers</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.12.2">1005-0159</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.13.1">China Highway</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.13.2">1006-3897</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.14.1">Engineering and Technological Research</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.14.2">2096-2789</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.15.1">Construction Machinery Technology &amp; Management</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.15.2">1004-0005</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.16">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.16.1">TranspoWorld</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.16.2">1006-8872</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.17">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.17.1">Railway Investigation and Surveying</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.17.2">1672-7479</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.18">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.18.1">Transport Construction &amp; Management</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.18.2">1673-8098</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.19">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.19.1">Guangdong Water Resources and Hydropower</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.19.2">1008-0112</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.20">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.20.1">Western China Communications Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.20.2">1673-4874</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.21">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.21.1">Jiangsu Science and Technology Information</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.21.2">1004-7530</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.22">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.22.1">Value Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.22.2">1006-4311</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.23">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.23.1">Hoisting and Conveying Machinery</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.23.2">1001-0785</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.24">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.24.1">Jiangxi Building Materials</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.24.2">1006-2890</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.25">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.25.1">Scientific and Technological Innovation</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.25.2">2096-4390</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.26">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.26.1">Transport Business China</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.26.2">1673-3681</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.27">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.27.1">Sichuan Cement</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.27.2">0451-0712</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.28">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.28.1">Aerospace</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.29">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.29.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.29.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.30">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.30.1">Spacecraft Engineering</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.30.2">1673-8748</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.31">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.31.1">Aeronautical Manufacturing Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.31.2">1671-833X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.32">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.32.1">Aviation Maintenance &amp; Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.32.2">1672-0989</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.33">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.33.1">Journal of Ordnance Equipment Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.33.2">2096-2304</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.34">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.34.1">Aeroengine</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.34.2">2096-2304</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.35">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.35.1">Space International</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.35.2">2096-2304</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.36">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.36.1">Avionics Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.36.2">1006-141X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.37">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.37.1">System Simulation Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.37.2">1673-1964</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.38">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.38.1">Journal of Civil Aviation</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.38.2">2096-4994</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.39">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.39.1">Safety &amp; EMC</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.39.2">1005-9776</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.40">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.40.1">Internal Combustion Engine &amp; Parts</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.40.2">1674-957X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.41">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.41.1">Aeronautical Computing Technique</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.41.2">1671-654X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.42">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.42.1">Meteorological Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.42.2">1671-6345</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.43">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.43.1">Journal of Astronautics</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.43.2">1000-1328</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.44">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.44.1">Communications Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.44.2">1002-0802</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.45">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.45.1">Laser &amp; Optoelectronics Progress</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.45.2">1006-4125</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.46">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.46.1">Engineering &amp; Test</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.46.2">1674-3407</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.47">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.47.1">Chinese Space Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.47.2">1000-758X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.48">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.48.1">Ship Electronic Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.48.2">1672-9730</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.49">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.49.1">China Science and Technology Information</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.49.2">1672-9730</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.50">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.50.1">Journal of Deep Space Exploration</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.50.2">2096-9287</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.51">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.51.1">China Educational Technology &amp; Equipment</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.51.2">1671-489X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.52">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.52.1">Micromotors</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.52.2">1671-489X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.53">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.53.1">Spacecraft Recovery &amp; Remote Sensing</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.53.2">1009-8518</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.54">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.54.1">Journal of Chengdu Aeronautic Polytechnic</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.54.2">1671-4024</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.55">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.1.1.55.1">Telecom</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.56">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.56.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.56.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.57">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.57.1">Systems Engineering and Electronics</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.57.2">1001-506X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.58">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.58.1">Electronic Technology &amp; Software Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.58.2">2095-5650</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.59">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.59.1">Video Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.59.2">1002-8692</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.60">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.60.1">Telecom Engineering Technics and Standardization</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.60.2">1008-5599</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.61">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.61.1">Radio &amp; Television Network</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.61.2">2096-806X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.62">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.62.1">Study on Optical Communications</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.62.2">1005-8788</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.63">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.63.1">Electronics Quality</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.63.2">1003-0107</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.64">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.64.1">Radio &amp; Television Information</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.64.2">1007-1997</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.65">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.65.1">Changjiang Information &amp; Communications</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.65.2">2096-9759</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.66">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.66.1">Automation in Petro-Chemical Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.66.2">1007-7324</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.67">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.67.1">Telecommunications Science</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.67.2">1000-0801</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.68">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.68.1">Computer Knowledge and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.68.2">1009-3044</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.69">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.69.1">Journal of Electronics &amp; Information Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.69.2">1009-5896</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.70">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.70.1">Laser &amp; Optoelectronics Progress</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.70.2">1006-4125</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.71">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.71.1">China Digital Cable TV</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.71.2">1007-7022</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.72">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.72.1">Radio Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.72.2">1003-3106</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.73">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.73.1">Journal of Beijing Electronic Science and Technology Institute</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.73.2">1672-464X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.74">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.74.1">Laser Journal</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.74.2">0253-2743</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.75">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.75.1">Designing Techniques of Posts and Telecommunications</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.75.2">1007-3043</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.76">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.76.1">Wireless Internet Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.76.2">1672-6944</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.77">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.77.1">Journal of University of South China(Science and Technology)</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.77.2">1673-0062</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.78">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.78.1">Audio Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.78.2">1002-8684</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.79">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.79.1">Automation Application</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.79.2">1674-778X</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.80">
<td class="ltx_td ltx_align_left" id="A3.T5.1.1.80.1">Chinese Journal of Lasers</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.80.2">0258-7025</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.81">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.1.1.81.1">Journal of Smart Agriculture</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.1.1.81.2">2096-9902</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the engineering journals used to gather data for creating the SolutionBench benchmark.  The journals represent a diverse range of engineering domains, ensuring a comprehensive and varied dataset for evaluating complex engineering solution design systems.
> <details>
> <summary>read the caption</summary>
> Table 5: List of the engineering journals used for construction the benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.1.1">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T6.1.1.1.1">Architecture</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.2.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.3.1">Building Technology Development</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.2">1001-523X</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.4.1">Building Structure</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.2">1002-848X</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.5.1">Construction &amp; Design for Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.2">1007-9467</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.6.1">Modern Paint &amp; Finishing</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.2">1007-9548</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.7.1">Architecture Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.2">1000-4726</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.8">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.8.1">Theoretical Research in Urban Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.8.2">2095-2104</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.9">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.9.1">Urban Architecture Space</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.9.2">2097-1141</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.10">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.10.1">Art and Design</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.10.2">1008-2832</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.11">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.11.1">Architecture &amp; Culture</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.11.2">1672-4909</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.12">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.12.1">Journal of Yangzhou Polytechnic College</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.12.2">1008-3693</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.13">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.13.1">Heating Ventilating &amp; Air Conditioning</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.13.2">1002-8501</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.14">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.14.1">Construction Machinery &amp; Maintenance</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.14.2">1006-2114</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.15">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.15.1">China Science and Technology Information</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.15.2">1001-8972</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.16">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.16.1">Construction Machinery and Equipment</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.16.2">1000-1212</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.17">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.17.1">Journal of Municipal Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.17.2">1009-7767</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.18">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.18.1">Jiangxi Building Materials</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.18.2">1006-2890</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.19">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.19.1">Urban Roads Bridges &amp; Flood Control</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.19.2">1009-7716</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.20">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.20.1">Fujian Construction Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.20.2">1006-3943</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.21">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.21.1">Sichuan Cement</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.21.2">1007-6344</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.22">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.22.1">Engineering and Technological Research</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.22.2">2096-2789</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.23">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.23.1">Journal of North China Institute of Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.23.2">1672-7169</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.24">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.24.1">Tianjin Construction Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.24.2">1008-3197</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.25">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.25.1">World Forestry Research</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.25.2">1001-4241</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.26">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.26.1">Jiangsu Building Materials</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.26.2">1004-5538</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.27">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.27.1">Shanghai Construction Science &amp; Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.27.2">1005-6637</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.28">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T6.1.1.28.1">Water Resource</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.29">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.29.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.29.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.30">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.30.1">Design of Water Resources &amp; Hydroelectric Engineering</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.30.2">1007-6980</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.31">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.31.1">Hydro Science and Cold Zone Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.31.2">2096-5419</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.32">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.32.1">Journal of Water Resources and Architectural Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.32.2">1672-1144</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.33">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.33.1">Mechanical &amp; Electrical Technique of Hydropower Station</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.33.2">1672-5387</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.34">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.34.1">Yangtze River</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.34.2">1001-4179</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.35">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.35.1">Port &amp; Waterway Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.35.2">1002-4972</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.36">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.36.1">Technical Supervision in Water Resources</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.36.2">1008-1305</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.37">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.37.1">Small Hydro Power</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.37.2">1007-7642</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.38">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.38.1">Pearl River</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.38.2">1001-9235</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.39">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.39.1">Water Conservancy Construction and Management</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.39.2">2097-0528</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.40">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.40.1">Water Conservancy Science and Technology and Economy</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.40.2">1006-7175</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.41">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.41.1">Water Resources Planning and Design</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.41.2">1672-2469</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.42">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.42.1">Construction Quality</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.42.2">1671-3702</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.43">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.43.1">Henan Water Resources and South-to-North Water Diversion</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.43.2">1673-8853</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.44">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.44.1">Engineering and Construction</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.44.2">1673-5781</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.45">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.45.1">Technology and Market</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.45.2">1006-8554</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.46">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.46.1">Beijing Water</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.46.2">1673-4637</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.47">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.47.1">Port Engineering Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.47.2">2097-3519</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.48">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.48.1">Water Resources &amp; Hydropower of Northeast China</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.48.2">1002-0624</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.49">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.49.1">Mechanical and Electrical Information</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.49.2">1671-0797</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.50">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.50.1">Maritime Safety</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.50.2">2097-1745</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.51">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.51.1">Gansu Water Resources and Hydropower Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.51.2">2095-0144</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.52">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.52.1">Water Power</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.52.2">0559-9342</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.53">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.53.1">Shanxi Water Resources</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.53.2">1004-7042</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.54">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.54.1">Haihe Water Resources</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.54.2">1004-7328</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.55">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T6.1.1.55.1">Farming</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.56">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.56.1">Journal Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.56.2">ISSN</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.57">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.57.1">Modern Agricultural Science and Technology</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.57.2">1007-5739</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.58">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.58.1">Farm Machinery</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.58.2">1000-9868</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.59">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.59.1">Cereal &amp; Feed Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.59.2">1003-6202</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.60">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.60.1">Journal of Agricultural Mechanization Research</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.60.2">1003-188X</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.61">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.61.1">Forestry Machinery &amp; Woodworking Equipment</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.61.2">2095-2953</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.62">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.62.1">Transactions of the Chinese Society of Agricultural Engineering</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.62.2">1002-6819</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.63">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.63.1">Forest Research</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.63.2">1001-1498</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.64">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.64.1">Times Agricultural Machinery</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.64.2">2095-980X</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.65">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.65.1">Protection Forest Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.65.2">1005-5215</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.66">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.66.1">Journal of Beijing University of Agriculture</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.66.2">1002-3186</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.67">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.67.1">Contemporary Horticulture</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.67.2">1006-4958</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.68">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.68.1">China Southern Agricultural Machinery</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.68.2">1672-3872</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.69">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.69.1">Forest Inventory and Planning</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.69.2">1671-3168</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.70">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.70.1">Agricultural Machinery Using &amp; Maintenance</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.70.2">2097-4515</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.71">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.71.1">Journal of Green Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.71.2">1674-9944</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.72">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.72.1">China Forest Products Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.72.2">1001-5299</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.73">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.73.1">Forestry Machinery &amp; Woodworking Equipment</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.73.2">2095-2953</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.74">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.74.1">The Food Industry</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.74.2">1004-471X</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.75">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.75.1">Journal of Hebei Forestry Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.75.2">1002-3356</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.76">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.76.1">Electrical Automation</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.76.2">1000-3886</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.77">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.77.1">Journal of Library and Information Science</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.77.2">2096-1162</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.78">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.78.1">Forest Science and Technology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.78.2">2097-0285</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.79">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.79.1">Chinese Journal of Ecology</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.79.2">1000-4890</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.80">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.80.1">Popular Standardization</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.80.2">1007-1350</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.81">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.1.81.1">Management &amp; Technology of SME</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.81.2">1673-1069</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the engineering journals used to gather data for creating the SolutionBench benchmark.  The journals represent a diverse range of engineering domains, ensuring the benchmark data is comprehensive and representative of real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Table 6: List of the engineering journals used for construction the benchmark.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20730/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20730/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}