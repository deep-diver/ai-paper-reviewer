---
title: "MMFactory: A Universal Solution Search Engine for Vision-Language Tasks"
summary: "MMFactory: A universal framework for vision-language tasks, offering diverse programmatic solutions based on user needs and constraints, outperforming existing methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Toronto",]
showSummary: true
date: 2024-12-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.18072 {{< /keyword >}}
{{< keyword icon="writer" >}} Wan-Cyuan Fan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.18072" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.18072" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/mmfactory-a-universal-solution-search-engine" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.18072/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current vision-language models often lack universality; no single model excels at all tasks, and existing approaches for complex tasks (like visual programming) may be difficult for non-experts or ignore user needs. This creates a critical need for a solution search engine that can efficiently locate the best model or combination of models for a given task, considering all user requirements. 

MMFactory addresses this need by acting as a universal solution search engine.  It takes a task description and sample input-output pairs, and suggests multiple programmatic solutions by intelligently combining vision and language models from a repository.  **It also evaluates these solutions**, providing performance and resource metrics so users can select the optimal solution for their needs. This greatly simplifies the process of solving complex visual tasks and makes sophisticated AI accessible to a wider audience.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MMFactory proposes a pool of programmatic solutions for vision-language tasks, combining various models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It incorporates user constraints (performance, resources) and benchmarks solutions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A committee-based solution proposer leverages multi-agent LLMs for diverse, robust solutions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical need for a universal solution search engine in the rapidly expanding field of vision-language tasks.  The **MMFactory framework** not only provides a novel approach to solving complex visual tasks but also facilitates user-centric model selection by considering performance and resource constraints. This work has the potential to significantly advance the development of adaptable and efficient AI systems. It opens new avenues for research into multi-agent systems, programmatic solution synthesis, and the creation of truly universal AI agents.

------
#### Visual Insights



![](https://arxiv.org/html/2412.18072/x1.png)

> 🔼 Figure 1 compares MMFactory with two existing approaches for vision-language tasks: model routing and multimodal LLMs with tools.  Model routing selects a single model for a given task, while multimodal LLMs integrate tools within their framework.  In contrast, MMFactory proposes a diverse set of programmatic solutions for each task, each solution being a sequence of operations involving different models drawn from a model pool.  Moreover, MMFactory benchmarks the performance and computational cost of each proposed solution, allowing users to select the best option based on their constraints.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of MMFactory. Proposed MMFactory framework (a) contrasted with model routing approaches (c) and multimodal LLM with tools (b). Unlike both prior classes of methods, MMFactory proposes a pool of programmatic solutions, composed of series of selected models from the pool, for a given task while also benchmarking their performance and computational characteristics. See Section 1 for full discussion.
> </details>





{{< table-caption >}}
Method | Depth | Spatial | Jigsaw | Vis corr. | Sem. Corr. | Art | Count | Fun. Corr. | Local. | Multi-view | Refl. | Fore. | IQ | Sim. |---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| OpenFlamingo-v2 [5] | 54.0 | 43.4 | 47.3 | 25.6 | 30.2 | 52.1 | 21.7 | 36.2 | 52.0 | 41.4 | 43.3 | 15.9 | 23.3 | 55.2 | InstructBLIP-7B [14] | 51.6 | 56.6 | 52.7 | 30.8 | 30.9 | 47.9 | 29.2 | 23.9 | 44.8 | 58.7 | 29.9 | 29.6 | 23.3 | 46.3 | InstructBLIP-13B [14] | 51.6 | 65.7 | 52.7 | 29.7 | 32.4 | 50.4 | 30.8 | 22.3 | 52.0 | 54.1 | 46.3 | 13.6 | 26.0 | 46.3 | CogVLM [55] | 50.8 | 67.1 | 52.7 | 20.9 | 23.6 | 49.6 | 46.3 | 23.9 | 43.2 | 57.1 | 26.9 | 24.2 | 26.7 | 46.3 | LLaVA-v1.5-7B [35] | 52.4 | 61.5 | 11.3 | 25.6 | 23.0 | 47.9 | 43.3 | 21.5 | 48.8 | 49.6 | 36.6 | 28.0 | 24.0 | 46.3 | LLaVA-v1.5-13B [35] | 53.2 | 67.8 | 58.0 | 29.1 | 32.4 | 47.9 | 50.0 | 20.8 | 47.2 | 41.4 | 45.5 | 27.3 | 28.0 | 46.3 | Ours (LLaVA-7B) | 51.6 | 78.8 | 56.7 | 33.1 | 32.4 | 54.7 | 41.2 | 21.5 | 56.6 | 55.6 | 37.0 | 26.5 | 23.3 | 58.5 | Ours (LLaVA-13B) | 58.1 | 69.9 | 64.0 | 34.3 | 34.5 | 58.1 | 47.2 | 23.9 | 51.6 | 51.1 | 45.1 | 26.5 | 28.0 | 45.9 | Qwen-VL-Max [7] | 58.9 | 77.6 | 3.3 | 22.7 | 29.3 | 37.6 | 55.8 | 28.5 | 49.6 | 53.4 | 49.3 | 47.7 | 22.0 | 51.5 | Gemini Pro [20] | 50.0 | 67.1 | 54.0 | 37.2 | 22.1 | 49.5 | 65.0 | 32.3 | 46.4 | 41.4 | 46.3 | 45.5 | 27.3 | 55.9 | Claude 3 OPUS [4] | 57.3 | 57.3 | 32.7 | 31.4 | 20.7 | 60.7 | 49.2 | 22.3 | 46.4 | 57.9 | 27.6 | 62.1 | 21.3 | 70.6 | GPT-4o [42] | 74.2 | 69.2 | 55.3 | 75.0 | 54.0 | 82.9 | 51.7 | 39.2 | 56.0 | 60.2 | 38.8 | 85.6 | 30.0 | 65.4 | GPT-4o (+ SoM + orig.)† | 75.0 | 82.5 | - | - | - | - | - | - | - | - | - | - | - | - | GPT-4o (+ Visprog)† | 46.8 | 37.8 | - | - | - | - | - | - | - | - | - | - | - | - | GPT-4o (+ Sketchpad) | 83.9† | 81.1† | 70.7† | 80.8† | 58.3† | 77.19∗ | 66.7∗ | 42.1∗ | 65.4∗ | 45.6∗ | 33.1∗ | 79.0∗ | 22.8∗ | 84.2∗ | Ours (GPT-4o) | 80.3 | 81.8 | 75.3 | 85.5 | 58.3 | 83.0 | 61.7 | 55.4 | 59.0 | 60.2 | 35.1 | 84.8 | 28.7 | 75.3 |{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different vision-language models on the BLINK benchmark [19], a dataset designed to evaluate visual perception capabilities.  The models are evaluated across various tasks, and their performance is measured using several metrics.  The table includes both open-source and API-based models.  Results marked with † are reproduced from a prior work [26], and those with * represent results obtained from the official model code.  The best performing model for each metric is highlighted in bold, while the second-best is underlined.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results.  Experimental results on the BLINK benchmark [19]. † denotes results from the previous work [26], and ∗ represents results collected via official codebase. The best result is highlighted in Bold and the second underlined.
> </details>





### In-depth insights


#### MMFactory Overview
MMFactory is presented as a **universal solution search engine** designed to address the limitations of existing vision-language models.  Unlike approaches that rely on single models or predefined toolchains, MMFactory searches across a diverse pool of models and tools, synthesizing programmatic solutions tailored to user-specified tasks and constraints.  Its **two primary components, the Solution Router and the Metric Router**, work in tandem.  The Solution Router leverages a multi-agent LLM system to generate multiple diverse solutions, incorporating feedback loops to enhance quality and robustness. The Metric Router then evaluates these solutions across various metrics, benchmarking their performance and resource costs to enable users to select the optimal solution based on their needs.  This framework stands out due to its **flexibility, universality, and user-centric design**, aiming to provide efficient, customizable solutions for complex visual tasks without requiring extensive technical expertise from the user.

#### Multi-Agent Design
The research paper's proposed multi-agent system is a key innovation.  It leverages **specialized agents**, each designed for a specific task in the solution generation process, such as analysis, code generation, and verification. This division of labor leads to more efficient and robust solutions. The **collaborative interaction** between these agents, facilitated by a multi-agent conversation framework, is crucial for refining the proposed solutions. This iterative refinement involves feedback loops, ensuring quality control and addressing potential errors early on.  The **committee-based approach** further enhances robustness by providing multiple perspectives and checks and balances. The design directly addresses the challenges of managing the complexity inherent in synthesizing multiple models for solving vision-language tasks by **modularizing** the process and promoting effective collaboration between agents. Overall, this multi-agent design showcases a thoughtful approach to building reliable, high-quality solutions for complex problems.

#### Solution Routing
Solution routing, in the context of the research paper, presents a novel approach to efficiently and effectively manage the process of selecting and applying models for solving complex vision-language tasks.  The core idea revolves around creating a **universal framework** that acts as a search engine to find the best-suited model from a large pool based on user-specified needs (performance, computational constraints).  This differs from prior methods, which focus on single model routing or merely suggesting one solution per task. **MMFactory**, the proposed system, leverages a **multi-agent system** to collaboratively propose a diverse pool of programmatic solutions. Each solution involves a tailored combination of visual, language, and vision-language models, ensuring robust and adaptable performance.  This committee-based approach allows for the generation of multiple executable solutions.  Finally, the framework also performs detailed benchmarking, allowing users to choose from an optimized pool based on performance and computational needs, making it truly user-centric.

#### Benchmark Results
A dedicated 'Benchmark Results' section would ideally present a thorough quantitative evaluation of the proposed MMFactory framework against existing state-of-the-art models. This would involve reporting performance metrics on established vision-language benchmarks, such as BLINK and SeedBench.  **Key performance indicators (KPIs)** should include accuracy, precision, recall, F1-score, and computational efficiency metrics.  The results should be presented clearly, likely in tables and charts, showcasing the superiority of MMFactory in various tasks.  **Detailed analysis of the results** would be crucial, examining not only overall performance but also analyzing strengths and weaknesses across different task types and model combinations.  **Ablation studies** to demonstrate the individual contributions of different MMFactory components (like the solution router and metric router) would enhance the validity of the results.  Furthermore, a discussion of potential limitations and future work, along with potential areas for improvement, would round out a comprehensive analysis of the benchmark results.  **Statistical significance testing** would help demonstrate that the observed performance gains are not due to chance.

#### Future Directions
Future research should focus on enhancing MMFactory's scalability and efficiency.  **Expanding the model repository** to encompass a wider range of vision-language models and tools is crucial.  **Improving the multi-agent conversation** system for solution generation, possibly through reinforcement learning or more advanced dialogue management techniques, is needed.  Furthermore, research should explore **incorporating user feedback** more effectively to improve the accuracy and relevance of generated solutions.  Finally, **rigorous testing and benchmarking** across diverse datasets and tasks are essential to establish MMFactory's robustness and generalizability, while also investigating alternative solution evaluation metrics beyond those currently implemented.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.18072/x2.png)

> 🔼 MMFactory consists of two main parts: the Solution Router and the Metric Router.  The Solution Router takes in a task description and generates multiple potential solutions, each a program combining various vision and language models.  The Metric Router then evaluates these solutions, measuring their accuracy and computational cost.  This evaluation produces a performance curve, allowing users to compare solutions and select the one best suited to their needs (e.g., prioritizing accuracy over speed or vice-versa).
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of MMFactory. Our framework includes two primary components: Solution Router and Metric Router. The Solution Router generates a pool of potential solutions for the task, while the Metric Router evaluates these solutions, estimating their performance and computational cost to generate a performance curve. This curve enables users to select the model optimal for their task requirements.
> </details>



![](https://arxiv.org/html/2412.18072/x3.png)

> 🔼 Figure 3 shows an example of the user input specifications for the MMFactory framework.  The user needs to provide the following information: 1. TASK DEFINITION: This section describes the task. An example is provided where the user needs to identify the correspondence between a point in one image and several points in another image. 2. EXAMPLES from the task: This provides a few example inputs and outputs for the task to help the model understand the task requirements. 3. (OPTIONAL) USER CONSTRAINTS: This is an optional section, in which the user can specify additional constraints such as execution time or model size.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of user specification inputs 𝒫usuperscript𝒫𝑢\mathcal{P}^{u}caligraphic_P start_POSTSUPERSCRIPT italic_u end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2412.18072/x4.png)

> 🔼 This figure illustrates the multi-agent conversation process within the MMFactory's solution router.  Two teams of agents, the Solution Proposing Team and the Committee Team, engage in a conversation to collaboratively generate and refine solutions. The Solution Proposing Team is responsible for creating initial solution proposals, while the Committee Team reviews and provides feedback. This iterative process ensures that the final solution is robust, correct, and aligns with the user's requirements. The figure highlights the key agents involved and the flow of information between them.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of multi-agent conversation. In the solution router, we have two team of agents performing conversation to get the final outputs.
> </details>



![](https://arxiv.org/html/2412.18072/x5.png)

> 🔼 Figure 5 presents qualitative examples illustrating MMFactory's capabilities.  It showcases how MMFactory automatically constructs improved prompts for large language models (LLMs), leading to more effective solutions (Solution 0, Sol 0).  Furthermore, it demonstrates MMFactory's ability to synthesize solutions with similar logical structures but employing more powerful models for enhanced performance (Solution 4, Sol 4). This highlights MMFactory's capacity to leverage and combine various models optimally.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative examples of MMFactory. MMFactory showcases its abilities to use and combine models by automatically constructing better prompts for MLLMs (in Sol 0) and developing solutions with similar logic but utilizing stronger models (in Sol 4).
> </details>



![](https://arxiv.org/html/2412.18072/x6.png)

> 🔼 This figure presents an ablation study analyzing the effect of varying the number of iterations in a multi-agent conversation process within the MMFactory framework. Multiple runs were conducted, each represented by a different colored line, showing the model's performance (likely accuracy) across different numbers of iterations. The red cross on each line indicates the iteration with the highest performance achieved in that particular run. This visualization helps to determine the optimal number of iterations that balances performance gains against potential error propagation from excessive iterations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation. Performance analysis with iteration. Lines in different colors represent different runs. Red cross denotes the highest performance in the run.
> </details>



![](https://arxiv.org/html/2412.18072/x7.png)

> 🔼 This figure presents a two-part analysis of computational costs. The top part shows a plot illustrating the time taken to generate solutions, highlighting the average time per iteration and the overall average time per solution.  The bottom part provides a table comparing the average execution and routing costs per sample for the MMFactory approach and a previous method (Sketchpad).  The execution cost reflects the total time from prompt input to final answer, while the routing cost represents the time spent coordinating tools (excluding tool execution). This comparison demonstrates the efficiency gains of the MMFactory approach in terms of both execution and routing times.
> <details>
> <summary>read the caption</summary>
> Figure 7: Computational time. Solution generation cost plot (top). Average execution and routing cost per sample (bottom).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | Avg. | Scene | Id | Attri. | Locat. |
|---|---|---|---|---|---| 
| InstructBLIP [14] | 51.5 | 58.9 | 49.7 | 61.7 | 35.1 |
| LLaVA-v1.5-7B [35] | 57.7 | 63.7 | 62.4 | 66.7 | 51.3 |
| MiniGPT-4 [63] | 45.9 | 56.3 | 49.2 | 45.8 | 37.9 |
| OpenFlamingo [5] | 36.1 | 46.7 | 42.3 | 31.7 | 33.4 |
| Qwen-VL-Chat [7] | 50.9 | 56.5 | 47.6 | 54.8 | 46.9 |
| CogVLM [55] | 42.4 | 51.7 | 43.5 | 38.9 | 33.8 |
| InternLM [62] | 69.2 | 77.5 | 73.5 | 74.8 | 65.4 |
| GPT-4o [42] | 75.6 | 77.3 | 79.7 | 79.2 | 71.0 |
| Ours (GPT-4o) | 75.8 | 78.3 | 78.3 | 79.7 | 70.1 |
| Model | Count. | Spatial | Inter. | Reason. | Text |
|---|---|---|---|---|---| 
| InstructBLIP [14] | 58.1 | 34.9 | 47.4 | 55.9 | 61.4 |
| LLaVA-v1.5-7B [35] | 60.2 | 38.5 | 47.4 | 59.8 | 69.0 |
| MiniGPT-4 [63] | 45.3 | 32.6 | 47.4 | 57.1 | 41.8 |
| OpenFlamingo [5] | 27.4 | 29.8 | 29.9 | 47.7 | 35.6 |
| Qwen-VL-Chat [7] | 54.2 | 40.3 | 55.7 | 55.0 | 47.4 |
| CogVLM [55] | 29.4 | 33.6 | 45.4 | 53.5 | 51.5 |
| InternLM [62] | 65.8 | 57.5 | 71.1 | 75.8 | 61.2 |
| GPT-4o [42] | 68.1 | 63.8 | 78.6 | 81.2 | 69.8 |
| Ours (GPT-4o) | 67.7 | 62.8 | 80.6 | 84.5 | 69.9 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various vision-language models on the SeedBench benchmark [31].  The benchmark focuses on evaluating a model's ability to understand spatial relationships in images. The table shows the average performance scores achieved by each model across several sub-tasks within the benchmark, providing a detailed performance comparison across different aspects of spatial reasoning and visual understanding.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results on Seedbench [31].
> </details>

{{< table-caption >}}
| Model | Acc | Error rate | Avg. # sols |
|---|---|---|---| 
| Full model | **50.5** | **0.0** | **3.0** |
| (-) _code debugger_ | 40.0 | 1.7 | 2.8 |
| (-) _code checker_ | 33.3 | 20.8 | **3.0** |
| (-) _requirement checker_ | 48.1 | 0.5 | 2.4 |
| (-) _repetition checker_ | 40.5 | 17.8 | 2.0 |{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of each component within the multi-agent conversation system used in the MMFactory's solution router.  It shows how removing different agents (code debugger, code checker, requirement checker, and repetition checker) affects the model's accuracy, error rate, and the average number of solutions generated. This helps to understand the contribution of each agent to the overall performance and efficiency of the solution generation process.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation. of significance of multi-agent conversation.
> </details>

{{< table-caption >}}
| Model | Execution cost (sec) |  | Routing cost (sec) |  |
|---|---|---|---|---|
| Sketchpad [26] | 19.96 | 43.86 | 18.20 | 30.90 |
| Ours | 9.74 | 29.43 | ≈ 0.00 | ≈ 0.00 |{{< /table-caption >}}
> 🔼 This table presents a cost analysis of API calls, specifically focusing on the expense incurred per 10 samples processed within the MMFactory framework. The results are categorized by different models, showing the mean and variance of API calling costs, providing insights into the economic efficiency of various approaches within the MMFactory system.
> <details>
> <summary>read the caption</summary>
> Table 4: API calling cost analysis per 10 samples (in USD).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.18072/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18072/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}