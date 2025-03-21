---
title: "BigO(Bench) -- Can LLMs Generate Code with Controlled Time and Space Complexity?"
summary: "BIGO(Bench) can help LLMs generate code with controlled time/space complexity, addressing the gap in current evaluations and encouraging further exploration."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 FAIR at Meta",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15242 {{< /keyword >}}
{{< keyword icon="writer" >}} Pierre Chambon et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15242" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15242" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15242/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current evaluations of code-generating language models often overlook their ability to understand and produce code that satisfies specific time and space complexity constraints. This oversight leads to a gap between theoretical performance and real-world applicability, where efficiency and scalability are often critical. The ability to optimize and control computational complexity separates novice programmers from experienced ones, yet existing benchmarks do not adequately assess this higher-level reasoning skill in language models. 



To address this gap, this paper introduces **BIGO(BENCH), a novel coding benchmark** designed to evaluate the capabilities of generative language models in understanding and generating code with specified complexities. The benchmark comprises tooling to infer algorithmic complexity, a set of 3,105 coding problems and 1,190,250 solutions annotated with time and space complexity labels. **The study evaluates multiple state-of-the-art language models, revealing strengths and weaknesses in handling complexity requirements**. Token-space reasoning models excel in code generation but lack complexity understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BIGO(BENCH) is a new benchmark for evaluating code LLMs' ability to generate code with specific time and space complexities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark includes a complexity inference framework and a dataset of coding problems with time and space complexity labels. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluation of state-of-the-art language models reveals limitations in handling complexity requirements, especially for token-space reasoning models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces a novel benchmark for code LLMs to promote the development of more robust and reliable code generation models, which is important for real-world applications with complexity constraints. It opens up new research avenues to explore code LLMs in a more nuanced way.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15242/extracted/6297511/figures/dataset_composition.png)

> 🔼 The figure illustrates the BigO(Bench) framework, which evaluates large language models (LLMs) on their ability to handle code complexity.  Given a coding problem and existing human-generated solutions, BigO(Bench) assesses the LLMs' performance in three areas: (1) predicting the time and space complexity of the solutions, (2) generating new code that satisfies specified complexity constraints, and (3) ranking solutions based on their complexity compared to human solutions. The framework uses profiling to automatically verify the LLMs' responses by analyzing runtime distributions and curve coefficients.
> <details>
> <summary>read the caption</summary>
> Figure 1:  BigO(Bench) framework overview: Given a coding problem and human solutions, the framework evaluates language models on three key tasks: (1) predicting time-space complexities of existing solutions, (2) generating new code that meets specified complexity requirements, and (3) ranking solutions against human-written code with similar complexity profiles. The complexity framework automatically validates model outputs by computing runtime distributions and curve coefficients.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.3.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1" style="font-size:90%;">Corr<math alttext="@10" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S4.T1.1.1.1.1.1.1.m1.1.1.2.cmml">@</mi><mo id="S4.T1.1.1.1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T1.1.1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.1.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.1.m1.1.1"><times id="S4.T1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.1.1.m1.1.1.1"></times><ci id="S4.T1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.1.1.m1.1.1.2">@</ci><cn id="S4.T1.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.1.1.1.1.1.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.1.m1.1c">@10</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.1.m1.1d">@ 10</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.2.1" style="font-size:90%;">BckTr<math alttext="@10" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.2.1.m1.1a"><mrow id="S4.T1.2.2.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.2.2.2.1.m1.1.1.2" mathvariant="normal" xref="S4.T1.2.2.2.2.2.1.m1.1.1.2.cmml">@</mi><mo id="S4.T1.2.2.2.2.2.1.m1.1.1.1" xref="S4.T1.2.2.2.2.2.1.m1.1.1.1.cmml">⁢</mo><mn id="S4.T1.2.2.2.2.2.1.m1.1.1.3" xref="S4.T1.2.2.2.2.2.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.1.m1.1b"><apply id="S4.T1.2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.1.m1.1.1"><times id="S4.T1.2.2.2.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.2.2.1.m1.1.1.1"></times><ci id="S4.T1.2.2.2.2.2.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.2.2.1.m1.1.1.2">@</ci><cn id="S4.T1.2.2.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T1.2.2.2.2.2.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.1.m1.1c">@10</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.1.m1.1d">@ 10</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.2.2.3.1.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.3.1.1.1" style="font-size:90%;">Codestral 22B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.3.1.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.3.1.2.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.3.1.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.3.1.3.1" style="font-size:90%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.2.4.2.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.4.2.1.1" style="font-size:90%;">CodeLlama 34B Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4.2.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.4.2.2.1" style="font-size:90%;">22.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4.2.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.4.2.3.1" style="font-size:90%;">17.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.2.5.3.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.5.3.1.1" style="font-size:90%;">CodeLlama 70B Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.5.3.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.5.3.2.1" style="font-size:90%;">10.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.5.3.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.5.3.3.1" style="font-size:90%;">7.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.2.6.4.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.6.4.1.1" style="font-size:90%;">Llama 3.1 8B Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.6.4.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.6.4.2.1" style="font-size:90%;">31.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.6.4.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.6.4.3.1" style="font-size:90%;">21.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.2.2.7.5.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.2.2.2.7.5.1.1" style="font-size:90%;">Llama 3.1 405B Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.2.7.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.7.5.2.1" style="font-size:90%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.2.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.7.5.3.1" style="font-size:90%;">58.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various large language models (LLMs) in generating problem-specific dataclasses for the Code Contests dataset.  These dataclasses are crucial for parsing the input streams associated with each coding problem into its respective variables.  The comparison focuses on the accuracy of the generated dataclasses, measuring both their correctness and the accuracy of the back-translation (whether the original input can be reconstructed from the generated dataclass). The models' performance is evaluated using two metrics: Corr@k and BckTr@k (explained in the paper), providing a comprehensive assessment of their ability to handle this specific code generation task.  Most models utilize a context window of 32k tokens; however, CodeLlama 70B Instruct is the exception, using a smaller 16k token window.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of models for generating problem-specific dataclasses that can parse the incoming input streams into each problem’s variables, on Code Contests. All models but CodeLlama 70B Instruct (16k only) use a context window of 32k tokens.
> </details>





### In-depth insights


#### LLM Time Sense?
While not explicitly stated as 'LLM Time Sense?', this paper indirectly explores the capacity of LLMs to reason about time, specifically **computational complexity (time and space)**. The findings reveal that LLMs, even advanced models, exhibit limitations in understanding and generating code that adheres to specified complexity constraints. **Their performance on time complexity generation tasks is significantly lower** than their ability to synthesize code for general programming challenges. This suggests a deficiency in the 'time sense' of LLMs, their ability to reason effectively about algorithmic efficiency. **This deficiency hints that performance gains on benchmarks may be through memorization and not true reasoning**, impacting the trustworthiness and generalization of LLMs in practical software development where scalability is crucial, and emphasizes the need for benchmarks focusing on computational complexity.

#### Big-O Benchmark
The Big-O benchmark, introduced in the paper, is a **novel coding challenge** that assesses generative language models' ability to understand and generate code with specified time and space complexities, addressing a **critical gap in current evaluations** that often overlook computational complexity. It includes a **tool for inferring algorithmic complexity** from profiling measurements and a dataset of coding problems with inferred complexity labels and runtime/memory footprint values, enabling a **comprehensive evaluation** of language models' strengths and weaknesses in handling complexity requirements. The benchmark highlights the **limitations of token-space reasoning models**, which excel in code generation but not complexity understanding, suggesting potential issues in generalizing to tasks without explicit rewards during training, underscoring the **importance of controlling computational complexity** in code generation.

#### Dynamic Analysis
Dynamic analysis, a cornerstone of code understanding, involves executing code to observe its behavior in real-time. This approach is **crucial for identifying runtime complexities**, performance bottlenecks, and potential inefficiencies that static analysis might miss. By **profiling execution time and memory usage** under various input sizes, a complexity profile can be built, effectively mapping resource consumption to input scale. The inference might be conducted by **measuring runtime and memory** which can be used to infer time and space complexities dynamically and identify the most effective algorithm. This technique also aids in discerning subtle optimizations and contrasting them with theoretical complexities which improves scalability and helps in optimizing the actual performance in coding challenges.

#### Data Generation
While the paper doesn't explicitly have a section titled 'Data Generation,' the discussion around benchmark creation and the complexity framework heavily implies a data generation strategy. The researchers generated a synthetic dataset of code solutions with associated time and space complexity labels. This was done by **profiling existing code solutions from CODE CONTESTS**, effectively creating a dataset where the 'ground truth' complexity is empirically derived rather than theoretically assigned. This approach is valuable because it reflects real-world coding practices and the performance characteristics of Python code under CPython. **The framework also automatically generates variations of code solutions** during its analysis phase, which is a form of data augmentation to better understand the scaling behavior of the code. This generation process also extends to creating diverse input data for functions, systematically increasing input sizes to observe the impact on runtime and memory usage. However, **the lack of explicit control or targeted generation of specific complexity classes** might be a limitation, potentially leading to biases in the dataset's distribution. 

#### Limits to Scale?
**Scalability limits** in LLMs are multifaceted, encompassing computational constraints, data availability, and architectural bottlenecks. Training demands grow exponentially with model size, potentially hitting hardware limits. **Data scarcity** for certain domains restricts generalization. Architecturally, attention mechanisms face quadratic complexity, hindering long-context processing. Addressing these limits requires innovative approaches, such as model parallelism, efficient attention variants (e.g., sparse attention), and knowledge distillation. Furthermore, **algorithmic breakthroughs** and hardware advancements are crucial for pushing the boundaries of LLM scalability while maintaining performance and practicality. Balancing resource investment with expected return also plays a vital role in pushing scale further.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15242/extracted/6297511/figures/benchmark_complexity.jpg)

> 🔼 The dynamic complexity inference framework analyzes code complexity.  It starts with a code snippet and sample inputs.  These inputs are systematically expanded using various methods (identity, random, etc.) creating a queue of test cases. Each test case runs in isolation within a sandboxed environment, capturing runtime and memory usage.  The collected data reveals the relationship between input size and resource consumption. Curve fitting techniques determine time and space complexity for each individual test and these are combined for a final, overall complexity assessment.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Outline of the dynamic complexity inference framework. The framework takes a code snippet and a single example of inputs to this code snippet. Then, it processes the code snippet and proceeds with extensive inputs generation, based on the provided example of inputs: inputs are independently or interdependently increased in size, using several expansion methods that can be the identity or random, among else. This forms a queue of synthetic inputs on which to execute the provided code snippet. These executions happen independently in sandboxes, where runtime and memory footprint measures are taken. Once all the measures are collected, the framework can model the code snippet time and space dependencies to the different inputs. Using curve fitting, the time and space complexity of the code is computed on each input separately and then altogether. The global time and space complexity over all inputs is what is being returned.
> </details>



![](https://arxiv.org/html/2503.15242/x3.png)

> 🔼 This figure visualizes the distribution of time and space complexity classes within the BigO(Bench) dataset, which comprises 3,105 coding problems.  Each problem is represented if at least one solution exists matching a specific time-space complexity pair. The visualization highlights the prevalence of certain complexities: linear time complexity, O(n), accounts for 38% of the solutions, whereas constant space complexity, O(1), represents 25%. Complexities are ordered from most to least computationally efficient, with less frequent complexities grouped under the 'other' category.  Problems where the complexity framework couldn't determine either time or space complexity are excluded from this analysis.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Distribution of time-space complexity classes across BigO(Bench) dataset of 3,105 coding problems. Each problem is included when at least one solution exists with that specific time-space complexity pair. Linear time O(n) represents 38% of solutions, while constant space O(1) accounts for 25%. The chart orders classes by computational efficiency, with less common classes grouped under “other”. Problems for which the framework can not infer a time complexity and/or a space complexity are not counted.
> </details>



![](https://arxiv.org/html/2503.15242/extracted/6297511/figures/complexity_per_algorithmic_notion_time.png)

> 🔼 This figure analyzes the performance of the complexity inference framework. The top graph displays the distribution of problems with different failure rates, showing that 84% of problems have failure rates under 30%. The bottom heatmap provides a more detailed breakdown of failure rates based on the type and number of inputs used in each problem. This visualization highlights the framework's robustness across various input configurations.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Failure rate analysis of the complexity inference framework. The top plot shows the overall distribution of framework failures across all problems. The bottom heatmap breaks down failure rates by input type and number of distinct inputs. Approximately 84% of problems have failure rates below 30%, demonstrating robust performance across most input configurations.
> </details>



![](https://arxiv.org/html/2503.15242/extracted/6297511/figures/complexity_per_algorithmic_notion_space.png)

> 🔼 This figure visualizes the performance of various Large Language Models (LLMs) on code generation tasks categorized by time complexity and algorithmic approaches.  The x-axis represents different algorithmic categories used in the problems (e.g., graph algorithms, string manipulation, etc.). The y-axis represents the accuracy or success rate of the LLMs. Different colored bars represent the various LLMs included in the benchmark. The figure allows for a comparison of LLM performance across various problem types and complexities, highlighting strengths and weaknesses of different models in handling specific algorithmic challenges.
> <details>
> <summary>read the caption</summary>
> Figure 5: LLM results aggregated by time complexity class and by algorithmic notions for all models part of BigO(Bench).
> </details>



![](https://arxiv.org/html/2503.15242/extracted/6297511/figures/complexity_per_difficulty.png)

> 🔼 Figure 6 compares the performance of various large language models (LLMs) across four different coding benchmarks: HumanEval, MBPP, BigCodeBench, and BigO(Bench).  HumanEval, MBPP, and BigCodeBench evaluate the models' ability to generate correct code solutions to programming problems, using the Pass@1 metric which measures the percentage of problems for which the model produces the correct solution on its first try.  In contrast, BigO(Bench) assesses not only the correctness but also the efficiency (time and space complexity) of the generated solutions.  The BigO(Bench) results utilize the All@1 metric, indicating whether the model successfully generates correct code solutions for all problems while adhering to specific time and space constraints.  The figure thus provides a comprehensive overview of LLM capabilities in terms of both code generation accuracy and algorithmic efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Model performance per coding benchmarks: HumanEval, MBPP and BigCodeBench main metrics are all P⁢a⁢s⁢s⁢@⁢1𝑃𝑎𝑠𝑠@1Pass@1italic_P italic_a italic_s italic_s @ 1; for BigO(Bench), we display A⁢l⁢l⁢@⁢1𝐴𝑙𝑙@1All@1italic_A italic_l italic_l @ 1 results.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.15.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.15.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T2.15.9.10.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.10.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T2.15.9.10.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T2.15.9.10.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.10.1.3.1" style="font-size:90%;">Prog. Synthesis</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T2.15.9.10.1.4"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T2.15.9.10.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.10.1.5.1" style="font-size:90%;">Complexity Pred.</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T2.15.9.10.1.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T2.15.9.10.1.7"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.10.1.7.1" style="font-size:90%;">Complexity Gen.</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.11.2">
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.11.2.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.2.1" style="font-size:90%;">Pass</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.3.1" style="font-size:90%;">Pass</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.11.2.4"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.5"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.5.1" style="font-size:90%;">Pass</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.6.1" style="font-size:90%;">Best</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.7.1" style="font-size:90%;">All</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.11.2.8"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.9"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.9.1" style="font-size:90%;">Pass</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.10.1" style="font-size:90%;">Pass</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.11.1" style="font-size:90%;">Best</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.11.2.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.11.2.12.1" style="font-size:90%;">All</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.9">
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.9.10"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.1.1"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.7.1.1.1.m1.1"><semantics id="S5.T2.7.1.1.1.m1.1a"><mrow id="S5.T2.7.1.1.1.m1.1.1" xref="S5.T2.7.1.1.1.m1.1.1.cmml"><mi id="S5.T2.7.1.1.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.7.1.1.1.m1.1.1.2.cmml">@</mi><mo id="S5.T2.7.1.1.1.m1.1.1.1" xref="S5.T2.7.1.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.7.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T2.7.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.7.1.1.1.m1.1b"><apply id="S5.T2.7.1.1.1.m1.1.1.cmml" xref="S5.T2.7.1.1.1.m1.1.1"><times id="S5.T2.7.1.1.1.m1.1.1.1.cmml" xref="S5.T2.7.1.1.1.m1.1.1.1"></times><ci id="S5.T2.7.1.1.1.m1.1.1.2.cmml" xref="S5.T2.7.1.1.1.m1.1.1.2">@</ci><cn id="S5.T2.7.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T2.7.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.1.1.1.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.1.1.1.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.8.2.2.2"><math alttext="@10" class="ltx_Math" display="inline" id="S5.T2.8.2.2.2.m1.1"><semantics id="S5.T2.8.2.2.2.m1.1a"><mrow id="S5.T2.8.2.2.2.m1.1.1" xref="S5.T2.8.2.2.2.m1.1.1.cmml"><mi id="S5.T2.8.2.2.2.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.8.2.2.2.m1.1.1.2.cmml">@</mi><mo id="S5.T2.8.2.2.2.m1.1.1.1" xref="S5.T2.8.2.2.2.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.8.2.2.2.m1.1.1.3" mathsize="90%" xref="S5.T2.8.2.2.2.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.8.2.2.2.m1.1b"><apply id="S5.T2.8.2.2.2.m1.1.1.cmml" xref="S5.T2.8.2.2.2.m1.1.1"><times id="S5.T2.8.2.2.2.m1.1.1.1.cmml" xref="S5.T2.8.2.2.2.m1.1.1.1"></times><ci id="S5.T2.8.2.2.2.m1.1.1.2.cmml" xref="S5.T2.8.2.2.2.m1.1.1.2">@</ci><cn id="S5.T2.8.2.2.2.m1.1.1.3.cmml" type="integer" xref="S5.T2.8.2.2.2.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.2.2.2.m1.1c">@10</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.2.2.2.m1.1d">@ 10</annotation></semantics></math></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.9.11"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.9.3.3.3"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.9.3.3.3.m1.1"><semantics id="S5.T2.9.3.3.3.m1.1a"><mrow id="S5.T2.9.3.3.3.m1.1.1" xref="S5.T2.9.3.3.3.m1.1.1.cmml"><mi id="S5.T2.9.3.3.3.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.9.3.3.3.m1.1.1.2.cmml">@</mi><mo id="S5.T2.9.3.3.3.m1.1.1.1" xref="S5.T2.9.3.3.3.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.9.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T2.9.3.3.3.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.9.3.3.3.m1.1b"><apply id="S5.T2.9.3.3.3.m1.1.1.cmml" xref="S5.T2.9.3.3.3.m1.1.1"><times id="S5.T2.9.3.3.3.m1.1.1.1.cmml" xref="S5.T2.9.3.3.3.m1.1.1.1"></times><ci id="S5.T2.9.3.3.3.m1.1.1.2.cmml" xref="S5.T2.9.3.3.3.m1.1.1.2">@</ci><cn id="S5.T2.9.3.3.3.m1.1.1.3.cmml" type="integer" xref="S5.T2.9.3.3.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.3.3.3.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.3.3.3.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.10.4.4.4"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.10.4.4.4.m1.1"><semantics id="S5.T2.10.4.4.4.m1.1a"><mrow id="S5.T2.10.4.4.4.m1.1.1" xref="S5.T2.10.4.4.4.m1.1.1.cmml"><mi id="S5.T2.10.4.4.4.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.10.4.4.4.m1.1.1.2.cmml">@</mi><mo id="S5.T2.10.4.4.4.m1.1.1.1" xref="S5.T2.10.4.4.4.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.10.4.4.4.m1.1.1.3" mathsize="90%" xref="S5.T2.10.4.4.4.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.10.4.4.4.m1.1b"><apply id="S5.T2.10.4.4.4.m1.1.1.cmml" xref="S5.T2.10.4.4.4.m1.1.1"><times id="S5.T2.10.4.4.4.m1.1.1.1.cmml" xref="S5.T2.10.4.4.4.m1.1.1.1"></times><ci id="S5.T2.10.4.4.4.m1.1.1.2.cmml" xref="S5.T2.10.4.4.4.m1.1.1.2">@</ci><cn id="S5.T2.10.4.4.4.m1.1.1.3.cmml" type="integer" xref="S5.T2.10.4.4.4.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.4.4.4.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.4.4.4.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.11.5.5.5"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.11.5.5.5.m1.1"><semantics id="S5.T2.11.5.5.5.m1.1a"><mrow id="S5.T2.11.5.5.5.m1.1.1" xref="S5.T2.11.5.5.5.m1.1.1.cmml"><mi id="S5.T2.11.5.5.5.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.11.5.5.5.m1.1.1.2.cmml">@</mi><mo id="S5.T2.11.5.5.5.m1.1.1.1" xref="S5.T2.11.5.5.5.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.11.5.5.5.m1.1.1.3" mathsize="90%" xref="S5.T2.11.5.5.5.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.11.5.5.5.m1.1b"><apply id="S5.T2.11.5.5.5.m1.1.1.cmml" xref="S5.T2.11.5.5.5.m1.1.1"><times id="S5.T2.11.5.5.5.m1.1.1.1.cmml" xref="S5.T2.11.5.5.5.m1.1.1.1"></times><ci id="S5.T2.11.5.5.5.m1.1.1.2.cmml" xref="S5.T2.11.5.5.5.m1.1.1.2">@</ci><cn id="S5.T2.11.5.5.5.m1.1.1.3.cmml" type="integer" xref="S5.T2.11.5.5.5.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.5.5.5.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.5.5.5.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.15.9.9.12"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.12.6.6.6"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.12.6.6.6.m1.1"><semantics id="S5.T2.12.6.6.6.m1.1a"><mrow id="S5.T2.12.6.6.6.m1.1.1" xref="S5.T2.12.6.6.6.m1.1.1.cmml"><mi id="S5.T2.12.6.6.6.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.12.6.6.6.m1.1.1.2.cmml">@</mi><mo id="S5.T2.12.6.6.6.m1.1.1.1" xref="S5.T2.12.6.6.6.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.12.6.6.6.m1.1.1.3" mathsize="90%" xref="S5.T2.12.6.6.6.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.12.6.6.6.m1.1b"><apply id="S5.T2.12.6.6.6.m1.1.1.cmml" xref="S5.T2.12.6.6.6.m1.1.1"><times id="S5.T2.12.6.6.6.m1.1.1.1.cmml" xref="S5.T2.12.6.6.6.m1.1.1.1"></times><ci id="S5.T2.12.6.6.6.m1.1.1.2.cmml" xref="S5.T2.12.6.6.6.m1.1.1.2">@</ci><cn id="S5.T2.12.6.6.6.m1.1.1.3.cmml" type="integer" xref="S5.T2.12.6.6.6.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.6.6.6.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.6.6.6.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.13.7.7.7"><math alttext="@10" class="ltx_Math" display="inline" id="S5.T2.13.7.7.7.m1.1"><semantics id="S5.T2.13.7.7.7.m1.1a"><mrow id="S5.T2.13.7.7.7.m1.1.1" xref="S5.T2.13.7.7.7.m1.1.1.cmml"><mi id="S5.T2.13.7.7.7.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.13.7.7.7.m1.1.1.2.cmml">@</mi><mo id="S5.T2.13.7.7.7.m1.1.1.1" xref="S5.T2.13.7.7.7.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.13.7.7.7.m1.1.1.3" mathsize="90%" xref="S5.T2.13.7.7.7.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.13.7.7.7.m1.1b"><apply id="S5.T2.13.7.7.7.m1.1.1.cmml" xref="S5.T2.13.7.7.7.m1.1.1"><times id="S5.T2.13.7.7.7.m1.1.1.1.cmml" xref="S5.T2.13.7.7.7.m1.1.1.1"></times><ci id="S5.T2.13.7.7.7.m1.1.1.2.cmml" xref="S5.T2.13.7.7.7.m1.1.1.2">@</ci><cn id="S5.T2.13.7.7.7.m1.1.1.3.cmml" type="integer" xref="S5.T2.13.7.7.7.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.13.7.7.7.m1.1c">@10</annotation><annotation encoding="application/x-llamapun" id="S5.T2.13.7.7.7.m1.1d">@ 10</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.14.8.8.8"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.14.8.8.8.m1.1"><semantics id="S5.T2.14.8.8.8.m1.1a"><mrow id="S5.T2.14.8.8.8.m1.1.1" xref="S5.T2.14.8.8.8.m1.1.1.cmml"><mi id="S5.T2.14.8.8.8.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.14.8.8.8.m1.1.1.2.cmml">@</mi><mo id="S5.T2.14.8.8.8.m1.1.1.1" xref="S5.T2.14.8.8.8.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.14.8.8.8.m1.1.1.3" mathsize="90%" xref="S5.T2.14.8.8.8.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.14.8.8.8.m1.1b"><apply id="S5.T2.14.8.8.8.m1.1.1.cmml" xref="S5.T2.14.8.8.8.m1.1.1"><times id="S5.T2.14.8.8.8.m1.1.1.1.cmml" xref="S5.T2.14.8.8.8.m1.1.1.1"></times><ci id="S5.T2.14.8.8.8.m1.1.1.2.cmml" xref="S5.T2.14.8.8.8.m1.1.1.2">@</ci><cn id="S5.T2.14.8.8.8.m1.1.1.3.cmml" type="integer" xref="S5.T2.14.8.8.8.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.14.8.8.8.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.14.8.8.8.m1.1d">@ 1</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.15.9.9.9"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T2.15.9.9.9.m1.1"><semantics id="S5.T2.15.9.9.9.m1.1a"><mrow id="S5.T2.15.9.9.9.m1.1.1" xref="S5.T2.15.9.9.9.m1.1.1.cmml"><mi id="S5.T2.15.9.9.9.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T2.15.9.9.9.m1.1.1.2.cmml">@</mi><mo id="S5.T2.15.9.9.9.m1.1.1.1" xref="S5.T2.15.9.9.9.m1.1.1.1.cmml">⁢</mo><mn id="S5.T2.15.9.9.9.m1.1.1.3" mathsize="90%" xref="S5.T2.15.9.9.9.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.15.9.9.9.m1.1b"><apply id="S5.T2.15.9.9.9.m1.1.1.cmml" xref="S5.T2.15.9.9.9.m1.1.1"><times id="S5.T2.15.9.9.9.m1.1.1.1.cmml" xref="S5.T2.15.9.9.9.m1.1.1.1"></times><ci id="S5.T2.15.9.9.9.m1.1.1.2.cmml" xref="S5.T2.15.9.9.9.m1.1.1.2">@</ci><cn id="S5.T2.15.9.9.9.m1.1.1.3.cmml" type="integer" xref="S5.T2.15.9.9.9.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.15.9.9.9.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T2.15.9.9.9.m1.1d">@ 1</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.15.9.12.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.15.9.12.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.12.1.1.1" style="font-size:90%;">Time</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.10"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.11"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.12"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.12.1.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.13.2">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.1.1" style="font-size:90%;">  Baselines</span></td>
<td class="ltx_td" id="S5.T2.15.9.13.2.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.13.2.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.3.1" style="font-size:90%;">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.13.2.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.4.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td" id="S5.T2.15.9.13.2.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.6.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.7.1" style="font-size:90%;">68.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.8.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.13.2.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.10.1" style="font-size:90%;">12.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.11.1" style="font-size:90%;">29.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.12.1" style="font-size:90%;">19.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.13.2.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.13.2.13.1" style="font-size:90%;">0.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.14.3">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.1.1" style="font-size:90%;">  Llama 3.1 8B</span></td>
<td class="ltx_td" id="S5.T2.15.9.14.3.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.14.3.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.3.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.14.3.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.4.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.14.3.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.6.1" style="font-size:90%;">46.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.7.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.8.1" style="font-size:90%;">21.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.14.3.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.10.1" style="font-size:90%;">5.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.11.1" style="font-size:90%;">16.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.12.1" style="font-size:90%;">7.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.14.3.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.14.3.13.1" style="font-size:90%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.15.4">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.1.1" style="font-size:90%;">  Llama 3.1 70B</span></td>
<td class="ltx_td" id="S5.T2.15.9.15.4.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.15.4.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.3.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.15.4.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.4.1" style="font-size:90%;">54.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.15.4.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.6.1" style="font-size:90%;">57.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.7.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.8.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.15.4.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.10.1" style="font-size:90%;">14.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.11.1" style="font-size:90%;">34.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.12.1" style="font-size:90%;">20.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.15.4.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.15.4.13.1" style="font-size:90%;">3.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.16.5">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.1.1" style="font-size:90%;">  Llama 3.3 70B</span></td>
<td class="ltx_td" id="S5.T2.15.9.16.5.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.16.5.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.3.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.16.5.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.4.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.16.5.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.6.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.7.1" style="font-size:90%;">72.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.8.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td" id="S5.T2.15.9.16.5.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.10.1" style="font-size:90%;">17.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.11.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.12.1" style="font-size:90%;">25.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.16.5.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.16.5.13.1" style="font-size:90%;">3.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.17.6">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.1.1" style="font-size:90%;">  Llama 3.1 405B</span></td>
<td class="ltx_td" id="S5.T2.15.9.17.6.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.17.6.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.3.1" style="font-size:90%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.17.6.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.4.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.17.6.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.6.1" style="font-size:90%;">60.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.7.1" style="font-size:90%;">72.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.8.1" style="font-size:90%;">38.3</span></td>
<td class="ltx_td" id="S5.T2.15.9.17.6.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.10.1" style="font-size:90%;">19.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.11.1" style="font-size:90%;">43.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.12.1" style="font-size:90%;">26.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.17.6.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.17.6.13.1" style="font-size:90%;">4.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.18.7">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.1.1" style="font-size:90%;">  Codestral 22B</span></td>
<td class="ltx_td" id="S5.T2.15.9.18.7.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.18.7.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.3.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.18.7.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.4.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td" id="S5.T2.15.9.18.7.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.6.1" style="font-size:90%;">56.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.7.1" style="font-size:90%;">67.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.8.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td" id="S5.T2.15.9.18.7.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.10.1" style="font-size:90%;">10.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.11.1" style="font-size:90%;">26.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.12.1" style="font-size:90%;">14.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.18.7.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.18.7.13.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.19.8">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.1.1" style="font-size:90%;">  GPT-4o</span></td>
<td class="ltx_td" id="S5.T2.15.9.19.8.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.19.8.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.3.1" style="font-size:90%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.19.8.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.4.1" style="font-size:90%;">78.3</span></td>
<td class="ltx_td" id="S5.T2.15.9.19.8.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.6.1" style="font-size:90%;">57.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.7.1" style="font-size:90%;">69.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.8.1" style="font-size:90%;">33.1</span></td>
<td class="ltx_td" id="S5.T2.15.9.19.8.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.10.1" style="font-size:90%;">20.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.11.1" style="font-size:90%;">44.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.12.1" style="font-size:90%;">30.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.19.8.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.19.8.13.1" style="font-size:90%;">4.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.20.9">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.1.1" style="font-size:90%;">  O1-mini</span></td>
<td class="ltx_td" id="S5.T2.15.9.20.9.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.20.9.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.3.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.20.9.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.4.1" style="font-size:90%;">76.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.20.9.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.6.1" style="font-size:90%;">58.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.7.1" style="font-size:90%;">65.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.8.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.20.9.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.10.1" style="font-size:90%;">19.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.11.1" style="font-size:90%;">65.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.12.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.20.9.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.20.9.13.1" style="font-size:90%;">4.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.21.10">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.1.1" style="font-size:90%;">  Qwen2.5-Coder 32B</span></td>
<td class="ltx_td" id="S5.T2.15.9.21.10.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.21.10.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.3.1" style="font-size:90%;">30.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.21.10.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.4.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.21.10.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.6.1" style="font-size:90%;">58.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.7.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.8.1" style="font-size:90%;">34.9</span></td>
<td class="ltx_td" id="S5.T2.15.9.21.10.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.10.1" style="font-size:90%;">12.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.11.1" style="font-size:90%;">26.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.12.1" style="font-size:90%;">15.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.21.10.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.21.10.13.1" style="font-size:90%;">3.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.22.11">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.1.1" style="font-size:90%;">  DeepSeekCoderV2 236B</span></td>
<td class="ltx_td" id="S5.T2.15.9.22.11.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.22.11.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.3.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.22.11.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.4.1" style="font-size:90%;">65.5</span></td>
<td class="ltx_td" id="S5.T2.15.9.22.11.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.6.1" style="font-size:90%;">54.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.7.1" style="font-size:90%;">68.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.8.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.22.11.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.10.1" style="font-size:90%;">19.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.11.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.12.1" style="font-size:90%;">27.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.22.11.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.22.11.13.1" style="font-size:90%;">3.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.23.12">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.1.1" style="font-size:90%;">  DeepSeekV3 671B</span></td>
<td class="ltx_td" id="S5.T2.15.9.23.12.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.23.12.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.3.1" style="font-size:90%;">41.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.23.12.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.4.1" style="font-size:90%;">63.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.23.12.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.6.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.7.1" style="font-size:90%;">72.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.8.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td" id="S5.T2.15.9.23.12.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.10.1" style="font-size:90%;">17.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.11.1" style="font-size:90%;">37.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.12.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.23.12.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.23.12.13.1" style="font-size:90%;">3.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.24.13">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.1.1" style="font-size:90%;">  DeepSeekR1 Qwen 32B</span></td>
<td class="ltx_td" id="S5.T2.15.9.24.13.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.24.13.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.24.13.3.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.24.13.4"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.24.13.4.1" style="font-size:90%;">83.7</span></td>
<td class="ltx_td" id="S5.T2.15.9.24.13.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.6.1" style="font-size:90%;">62.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.7.1" style="font-size:90%;">72.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.8.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td" id="S5.T2.15.9.24.13.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.10"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.24.13.10.1" style="font-size:90%;">29.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.11.1" style="font-size:90%;">49.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.24.13.12.1" style="font-size:90%;">46.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.24.13.13"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.24.13.13.1" style="font-size:90%;">4.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.25.14">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.25.14.1.1" style="font-size:90%;">  DeepSeekR1 Llama 70B</span></td>
<td class="ltx_td" id="S5.T2.15.9.25.14.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.25.14.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.3.1" style="font-size:90%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.25.14.4"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.4.1" style="font-size:90%;">83.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.25.14.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.6"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.6.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.7"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.7.1" style="font-size:90%;">75.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.8"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.8.1" style="font-size:90%;">41.4</span></td>
<td class="ltx_td" id="S5.T2.15.9.25.14.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.10"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.10.1" style="font-size:90%;">29.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.11"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.11.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.12"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.12.1" style="font-size:90%;">46.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.25.14.13"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.25.14.13.1" style="font-size:90%;">4.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.26.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.15.9.26.15.1"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.26.15.1.1" style="font-size:90%;">Space</span></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.8"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.9"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.10"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.11"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.12"></td>
<td class="ltx_td ltx_border_t" id="S5.T2.15.9.26.15.13"></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.27.16">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.1.1" style="font-size:90%;">  Baselines</span></td>
<td class="ltx_td" id="S5.T2.15.9.27.16.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.27.16.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.3.1" style="font-size:90%;">30.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.27.16.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.4.1" style="font-size:90%;">52.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.27.16.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.6.1" style="font-size:90%;">45.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.7.1" style="font-size:90%;">50.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.8.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.27.16.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.10.1" style="font-size:90%;">12.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.11.1" style="font-size:90%;">32.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.12.1" style="font-size:90%;">17.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.27.16.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.27.16.13.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.28.17">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.1.1" style="font-size:90%;">  Llama 3.1 8B</span></td>
<td class="ltx_td" id="S5.T2.15.9.28.17.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.28.17.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.3.1" style="font-size:90%;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.28.17.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.4.1" style="font-size:90%;">29.7</span></td>
<td class="ltx_td" id="S5.T2.15.9.28.17.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.6.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.7.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.8.1" style="font-size:90%;">7.9</span></td>
<td class="ltx_td" id="S5.T2.15.9.28.17.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.10.1" style="font-size:90%;">5.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.11.1" style="font-size:90%;">16.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.12.1" style="font-size:90%;">7.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.28.17.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.28.17.13.1" style="font-size:90%;">0.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.29.18">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.1.1" style="font-size:90%;">  Llama 3.1 70B</span></td>
<td class="ltx_td" id="S5.T2.15.9.29.18.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.29.18.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.3.1" style="font-size:90%;">29.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.29.18.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.4.1" style="font-size:90%;">52.3</span></td>
<td class="ltx_td" id="S5.T2.15.9.29.18.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.6.1" style="font-size:90%;">42.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.7.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.8.1" style="font-size:90%;">11.9</span></td>
<td class="ltx_td" id="S5.T2.15.9.29.18.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.10.1" style="font-size:90%;">11.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.11.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.12.1" style="font-size:90%;">17.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.29.18.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.29.18.13.1" style="font-size:90%;">1.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.30.19">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.1.1" style="font-size:90%;">  Llama 3.3 70B</span></td>
<td class="ltx_td" id="S5.T2.15.9.30.19.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.30.19.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.3.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.30.19.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.4.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td" id="S5.T2.15.9.30.19.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.6.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.7.1" style="font-size:90%;">55.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.8.1" style="font-size:90%;">10.9</span></td>
<td class="ltx_td" id="S5.T2.15.9.30.19.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.10.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.11.1" style="font-size:90%;">37.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.12.1" style="font-size:90%;">21.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.30.19.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.30.19.13.1" style="font-size:90%;">1.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.31.20">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.1.1" style="font-size:90%;">  Llama 3.1 405B</span></td>
<td class="ltx_td" id="S5.T2.15.9.31.20.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.31.20.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.3.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.31.20.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.4.1" style="font-size:90%;">63.2</span></td>
<td class="ltx_td" id="S5.T2.15.9.31.20.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.6.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.7.1" style="font-size:90%;">58.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.8"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.31.20.8.1" style="font-size:90%;">14.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.31.20.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.10.1" style="font-size:90%;">16.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.11.1" style="font-size:90%;">42.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.12.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.31.20.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.31.20.13.1" style="font-size:90%;">2.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.32.21">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.1.1" style="font-size:90%;">  Codestral 22B</span></td>
<td class="ltx_td" id="S5.T2.15.9.32.21.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.32.21.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.3.1" style="font-size:90%;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.32.21.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.4.1" style="font-size:90%;">47.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.32.21.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.6.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.7.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.8.1" style="font-size:90%;">10.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.32.21.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.10.1" style="font-size:90%;">11.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.11.1" style="font-size:90%;">29.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.12.1" style="font-size:90%;">16.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.32.21.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.32.21.13.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.33.22">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.1.1" style="font-size:90%;">  GPT-4o</span></td>
<td class="ltx_td" id="S5.T2.15.9.33.22.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.33.22.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.3.1" style="font-size:90%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.33.22.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.4.1" style="font-size:90%;">74.4</span></td>
<td class="ltx_td" id="S5.T2.15.9.33.22.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.6.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.7.1" style="font-size:90%;">61.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.8.1" style="font-size:90%;">11.0</span></td>
<td class="ltx_td" id="S5.T2.15.9.33.22.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.10.1" style="font-size:90%;">18.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.11.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.12.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.33.22.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.33.22.13.1" style="font-size:90%;">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.34.23">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.1.1" style="font-size:90%;">  O1-mini</span></td>
<td class="ltx_td" id="S5.T2.15.9.34.23.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.34.23.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.3.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.34.23.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.4.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td" id="S5.T2.15.9.34.23.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.6.1" style="font-size:90%;">42.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.7.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.8.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td" id="S5.T2.15.9.34.23.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.10.1" style="font-size:90%;">16.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.11.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.12.1" style="font-size:90%;">25.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.34.23.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.34.23.13.1" style="font-size:90%;">2.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.35.24">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.1.1" style="font-size:90%;">  Qwen2.5-Coder 32B</span></td>
<td class="ltx_td" id="S5.T2.15.9.35.24.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.35.24.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.3.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.35.24.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.4.1" style="font-size:90%;">49.2</span></td>
<td class="ltx_td" id="S5.T2.15.9.35.24.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.6"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.35.24.6.1" style="font-size:90%;">45.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.7"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.35.24.7.1" style="font-size:90%;">63.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.8.1" style="font-size:90%;">12.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.35.24.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.10.1" style="font-size:90%;">10.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.11.1" style="font-size:90%;">23.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.12.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.35.24.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.35.24.13.1" style="font-size:90%;">1.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.36.25">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.1.1" style="font-size:90%;">  DeepSeekCoderV2 236B</span></td>
<td class="ltx_td" id="S5.T2.15.9.36.25.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.36.25.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.3.1" style="font-size:90%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.36.25.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.4.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td" id="S5.T2.15.9.36.25.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.6.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.7.1" style="font-size:90%;">59.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.8.1" style="font-size:90%;">8.2</span></td>
<td class="ltx_td" id="S5.T2.15.9.36.25.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.10.1" style="font-size:90%;">16.7</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.11.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.12.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.36.25.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.36.25.13.1" style="font-size:90%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.37.26">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.1.1" style="font-size:90%;">  DeepSeekV3 671B</span></td>
<td class="ltx_td" id="S5.T2.15.9.37.26.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.37.26.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.3.1" style="font-size:90%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.37.26.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.4.1" style="font-size:90%;">62.5</span></td>
<td class="ltx_td" id="S5.T2.15.9.37.26.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.6.1" style="font-size:90%;">43.5</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.7.1" style="font-size:90%;">62.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.8.1" style="font-size:90%;">11.2</span></td>
<td class="ltx_td" id="S5.T2.15.9.37.26.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.10.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.11.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.12"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.12.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.37.26.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.37.26.13.1" style="font-size:90%;">1.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.38.27">
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.1.1" style="font-size:90%;">  DeepSeekR1 Qwen 32B</span></td>
<td class="ltx_td" id="S5.T2.15.9.38.27.2"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.38.27.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.3.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.15.9.38.27.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.4.1" style="font-size:90%;">80.6</span></td>
<td class="ltx_td" id="S5.T2.15.9.38.27.5"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.6.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.7.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.8.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td" id="S5.T2.15.9.38.27.9"></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.10"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.10.1" style="font-size:90%;">24.8</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.11"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.11.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.12"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.38.27.12.1" style="font-size:90%;">38.6</span></td>
<td class="ltx_td ltx_align_left" id="S5.T2.15.9.38.27.13"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.38.27.13.1" style="font-size:90%;">3.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.15.9.39.28">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.39.28.1.1" style="font-size:90%;">  DeepSeekR1 Llama 70B</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T2.15.9.39.28.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.9.39.28.3"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.3.1" style="font-size:90%;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.15.9.39.28.4"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.4.1" style="font-size:90%;">81.2</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T2.15.9.39.28.5"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.6"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.39.28.6.1" style="font-size:90%;">44.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.7"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.39.28.7.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.8"><span class="ltx_text ltx_font_smallcaps" id="S5.T2.15.9.39.28.8.1" style="font-size:90%;">10.4</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T2.15.9.39.28.9"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.10"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.10.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.11"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.11.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.12"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.12.1" style="font-size:90%;">38.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.15.9.39.28.13"><span class="ltx_text ltx_font_bold" id="S5.T2.15.9.39.28.13.1" style="font-size:90%;">3.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of various Large Language Models (LLMs) on BigO(Bench), a coding benchmark focusing on time and space complexity.  The benchmark assesses LLMs across three key tasks: Program Synthesis (generating correct code), Complexity Prediction (identifying the time-space complexity of existing code), and Complexity Generation (creating code meeting specific time-space complexity constraints).  The table shows the models' accuracy (Pass@k, Best@k, All@k) for each task.  Pass@k indicates the overall accuracy, considering each problem's complexity class independently. Best@k focuses on accuracy only for a problem's most efficient complexity class, while All@k measures whether all complexity classes within a problem are correctly identified. 
> <details>
> <summary>read the caption</summary>
> Table 2: BigO(Bench) benchmark results for popular LLMs. Program Synthesis checks correctness of model-generated solutions to given programming problems.Complexity Prediction measures whether a model can find the time-space complexity of a code snippet. Complexity Generation evaluates whether a model outputs a working code snippet to a given problem, that meets a time-space complexity requirement. P⁢a⁢s⁢s⁢@⁢k𝑃𝑎𝑠𝑠@𝑘Pass@kitalic_P italic_a italic_s italic_s @ italic_k treats all complexity classes of all problems independently, B⁢e⁢s⁢t⁢@⁢k𝐵𝑒𝑠𝑡@𝑘Best@kitalic_B italic_e italic_s italic_t @ italic_k only evaluates the most optimized complexity class of each problem, A⁢l⁢l⁢@⁢k𝐴𝑙𝑙@𝑘All@kitalic_A italic_l italic_l @ italic_k measures whether all complexity classes per problem are correct at once.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.1.1.2.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.1.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.2.1.2.1" style="font-size:90%;">Coefficient</span></th>
<td class="ltx_td ltx_border_tt" id="S5.T3.1.1.2.1.3"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S5.T3.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.2.1.1" style="font-size:90%;">Ranking</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.1.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.3.2.2.1" style="font-size:90%;">All</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.1.2.1" style="font-size:90%;">Full</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.1.1.1.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.1.3.1" style="font-size:90%;">Intersec</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T3.1.1.1.1"><math alttext="@1" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mrow id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml"><mi id="S5.T3.1.1.1.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S5.T3.1.1.1.1.m1.1.1.2.cmml">@</mi><mo id="S5.T3.1.1.1.1.m1.1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S5.T3.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T3.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><apply id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1"><times id="S5.T3.1.1.1.1.m1.1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1.1"></times><ci id="S5.T3.1.1.1.1.m1.1.1.2.cmml" xref="S5.T3.1.1.1.1.m1.1.1.2">@</ci><cn id="S5.T3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">@ 1</annotation></semantics></math></th>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.4.3.1.1" style="font-size:90%;">Time</span></th>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.4.3.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.4.3.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.4.3.4"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.5.4.1.1" style="font-size:90%;">  Llama 3.1 8B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.5.4.2.1" style="font-size:90%;">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.5.4.3.1" style="font-size:90%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.5.4.4.1" style="font-size:90%;">0.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.6.5.1.1" style="font-size:90%;">  Llama 3.1 70B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.6.5.2.1" style="font-size:90%;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.6.5.3.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.6.5.4.1" style="font-size:90%;">2.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.7.6.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.7.6.1.1" style="font-size:90%;">  Llama 3.3 70B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.7.6.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.7.6.2.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.7.6.3.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.7.6.4.1" style="font-size:90%;">2.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.8.7.1.1" style="font-size:90%;">  Llama 3.1 405B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.8.7.2.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.8.7.3.1" style="font-size:90%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.8.7.4.1" style="font-size:90%;">4.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.9.8.1.1" style="font-size:90%;">  Codestral 22B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.9.8.2.1" style="font-size:90%;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.9.8.3.1" style="font-size:90%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.9.8.4.1" style="font-size:90%;">1.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.10.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.10.9.1.1" style="font-size:90%;">  GPT-4o</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.10.9.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.10.9.2.1" style="font-size:90%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.10.9.3.1" style="font-size:90%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.10.9.4.1" style="font-size:90%;">4.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.11.10.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.11.10.1.1" style="font-size:90%;">  O1-mini</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.11.10.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.11.10.2.1" style="font-size:90%;">26.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.11.10.3.1" style="font-size:90%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.11.10.4.1" style="font-size:90%;">3.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.12.11.1.1" style="font-size:90%;">  Qwen2.5-Coder 32B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.12.11.2.1" style="font-size:90%;">19.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.12.11.3.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.12.11.4.1" style="font-size:90%;">2.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.13.12.1.1" style="font-size:90%;">  DeepSeekCoderV2 236B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.13.12.2.1" style="font-size:90%;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.13.12.3.1" style="font-size:90%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.13.12.4.1" style="font-size:90%;">2.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.14.13.1.1" style="font-size:90%;">  DeepSeekV3 671B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.14.13.2.1" style="font-size:90%;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.14.13.3.1" style="font-size:90%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.14.13.4.1" style="font-size:90%;">3.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.15.14.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.15.14.1.1" style="font-size:90%;">  DeepSeekR1 Qwen 32B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.15.14.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.15.14.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.15.14.2.1" style="font-size:90%;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.15.14.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.15.14.3.1" style="font-size:90%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.15.14.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.15.14.4.1" style="font-size:90%;">4.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.16.15.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.16.15.1.1" style="font-size:90%;">  DeepSeekR1 Llama 70B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.16.15.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.16.15.2.1" style="font-size:90%;">38.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.16.15.3.1" style="font-size:90%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.16.15.4.1" style="font-size:90%;">4.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.1.17.16.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.17.16.1.1" style="font-size:90%;">Space</span></th>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.17.16.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.17.16.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.1.17.16.4"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.18.17.1.1" style="font-size:90%;">  Llama 3.1 8B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.18.17.2.1" style="font-size:90%;">14.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.18.17.3.1" style="font-size:90%;">49.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.18.17.4.1" style="font-size:90%;">0.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.19.18.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.19.18.1.1" style="font-size:90%;">  Llama 3.1 70B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.19.18.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.19.18.2.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.19.18.3.1" style="font-size:90%;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.19.18.4.1" style="font-size:90%;">1.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.20.19.1.1" style="font-size:90%;">  Llama 3.3 70B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.20.19.2.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.20.19.3.1" style="font-size:90%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.20.19.4.1" style="font-size:90%;">1.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.21.20.1.1" style="font-size:90%;">  Llama 3.1 405B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.21.20.2.1" style="font-size:90%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.21.20.3.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.21.20.4.1" style="font-size:90%;">2.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.22.21.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.22.21.1.1" style="font-size:90%;">  Codestral 22B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.22.21.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.22.21.2.1" style="font-size:90%;">25.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.22.21.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.22.21.3.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.22.21.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.22.21.4.1" style="font-size:90%;">1.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.23.22.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.23.22.1.1" style="font-size:90%;">  GPT-4o</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.23.22.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.23.22.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.23.22.2.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.23.22.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.23.22.3.1" style="font-size:90%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.23.22.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.23.22.4.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.24.23.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.24.23.1.1" style="font-size:90%;">  O1-mini</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.24.23.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.24.23.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.24.23.2.1" style="font-size:90%;">21.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.24.23.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.24.23.3.1" style="font-size:90%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.24.23.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.24.23.4.1" style="font-size:90%;">1.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.25.24.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.25.24.1.1" style="font-size:90%;">  Qwen2.5-Coder 32B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.25.24.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.25.24.2.1" style="font-size:90%;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.25.24.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.25.24.3.1" style="font-size:90%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.25.24.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.25.24.4.1" style="font-size:90%;">0.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.26.25.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.26.25.1.1" style="font-size:90%;">  DeepSeekCoderV2 236B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.26.25.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.26.25.2.1" style="font-size:90%;">26.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.26.25.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.26.25.3.1" style="font-size:90%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.26.25.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.26.25.4.1" style="font-size:90%;">1.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.27.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.27.26.1"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.27.26.1.1" style="font-size:90%;">  DeepSeekV3 671B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.27.26.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.27.26.2.1" style="font-size:90%;">27.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.27.26.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.27.26.3.1" style="font-size:90%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.27.26.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.27.26.4.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.28.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.1.28.27.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.28.27.1.1" style="font-size:90%;">  DeepSeekR1 Qwen 32B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.28.27.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.28.27.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.28.27.2.1" style="font-size:90%;">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.28.27.3"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.28.27.3.1" style="font-size:90%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.28.27.4"><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.28.27.4.1" style="font-size:90%;">3.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.29.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.1.1.29.28.1">
<span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.29.28.1.1" style="font-size:90%;">  DeepSeekR1 Llama 70B</span><span class="ltx_text ltx_font_smallcaps" id="S5.T3.1.1.29.28.1.2" style="font-size:90%;">*</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.29.28.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.29.28.2.1" style="font-size:90%;">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.29.28.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.29.28.3.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.29.28.4"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.29.28.4.1" style="font-size:90%;">3.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ranking LLMs' code generation performance against human-written code for the same problem, while considering time and space complexity requirements.  The ranking uses the complexity framework described in the paper. The framework evaluates 20 attempts to measure complexity for each model, choosing the best coefficient to assess performance. This assessment considers both time and space complexity. A percentile-based ranking system is employed; for instance, a ranking score of 'n%' signifies that 'n%' of human-generated solutions performed worse regarding the complexity coefficient.  If a model failed to produce a correct solution, its ranking is zero. The 'Intersec' subset highlights the models (marked with *) with at least one successful solution.
> <details>
> <summary>read the caption</summary>
> Table 3: Using the complexity framework, the best measured coefficient of the complexity curve, out of 20 attempts, is used to rank LLM-generated code among human solutions from the same problem and time-space complexity class. Ranking is percentile based, n% ranking score amounts for n% human solutions having worse complexity coefficient. If no LLM solution passes correctness tests, ranking score is set to 0. Intersec is the subset where all starred (*) models have at least one successful solution.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T4.5.5.6.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.6.1.1.1" style="font-size:90%;">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.5.5.6.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.6.1.2.1" style="font-size:90%;">Prog.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.5.5.6.1.3"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.6.1.3.1" style="font-size:90%;">Prediction</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S6.T4.5.5.6.1.4"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.6.1.4.1" style="font-size:90%;">Generation</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.7.2">
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.7.2.1"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.7.2.1.1" style="font-size:90%;">Synth.</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.7.2.2"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.7.2.2.1" style="font-size:90%;">Time</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.7.2.3"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.7.2.3.1" style="font-size:90%;">Space</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.7.2.4"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.7.2.4.1" style="font-size:90%;">Time</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.7.2.5"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.7.2.5.1" style="font-size:90%;">Space</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.5">
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1">
<span class="ltx_text ltx_font_smallcaps" id="S6.T4.1.1.1.1.1" style="font-size:90%;">Pass</span><math alttext="@1" class="ltx_Math" display="inline" id="S6.T4.1.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.1.m1.1a"><mrow id="S6.T4.1.1.1.1.m1.1.1" xref="S6.T4.1.1.1.1.m1.1.1.cmml"><mi id="S6.T4.1.1.1.1.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S6.T4.1.1.1.1.m1.1.1.2.cmml">@</mi><mo id="S6.T4.1.1.1.1.m1.1.1.1" xref="S6.T4.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mn id="S6.T4.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S6.T4.1.1.1.1.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.1.m1.1b"><apply id="S6.T4.1.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.1.m1.1.1"><times id="S6.T4.1.1.1.1.m1.1.1.1.cmml" xref="S6.T4.1.1.1.1.m1.1.1.1"></times><ci id="S6.T4.1.1.1.1.m1.1.1.2.cmml" xref="S6.T4.1.1.1.1.m1.1.1.2">@</ci><cn id="S6.T4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S6.T4.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.1.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.1.m1.1d">@ 1</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.2.2.2.2">
<span class="ltx_text ltx_font_smallcaps" id="S6.T4.2.2.2.2.1" style="font-size:90%;">All</span><math alttext="@1" class="ltx_Math" display="inline" id="S6.T4.2.2.2.2.m1.1"><semantics id="S6.T4.2.2.2.2.m1.1a"><mrow id="S6.T4.2.2.2.2.m1.1.1" xref="S6.T4.2.2.2.2.m1.1.1.cmml"><mi id="S6.T4.2.2.2.2.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S6.T4.2.2.2.2.m1.1.1.2.cmml">@</mi><mo id="S6.T4.2.2.2.2.m1.1.1.1" xref="S6.T4.2.2.2.2.m1.1.1.1.cmml">⁢</mo><mn id="S6.T4.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S6.T4.2.2.2.2.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.2.m1.1b"><apply id="S6.T4.2.2.2.2.m1.1.1.cmml" xref="S6.T4.2.2.2.2.m1.1.1"><times id="S6.T4.2.2.2.2.m1.1.1.1.cmml" xref="S6.T4.2.2.2.2.m1.1.1.1"></times><ci id="S6.T4.2.2.2.2.m1.1.1.2.cmml" xref="S6.T4.2.2.2.2.m1.1.1.2">@</ci><cn id="S6.T4.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S6.T4.2.2.2.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.2.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.2.m1.1d">@ 1</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.3.3.3.3">
<span class="ltx_text ltx_font_smallcaps" id="S6.T4.3.3.3.3.1" style="font-size:90%;"> All</span><math alttext="@1" class="ltx_Math" display="inline" id="S6.T4.3.3.3.3.m1.1"><semantics id="S6.T4.3.3.3.3.m1.1a"><mrow id="S6.T4.3.3.3.3.m1.1.1" xref="S6.T4.3.3.3.3.m1.1.1.cmml"><mi id="S6.T4.3.3.3.3.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S6.T4.3.3.3.3.m1.1.1.2.cmml">@</mi><mo id="S6.T4.3.3.3.3.m1.1.1.1" xref="S6.T4.3.3.3.3.m1.1.1.1.cmml">⁢</mo><mn id="S6.T4.3.3.3.3.m1.1.1.3" mathsize="90%" xref="S6.T4.3.3.3.3.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.3.3.m1.1b"><apply id="S6.T4.3.3.3.3.m1.1.1.cmml" xref="S6.T4.3.3.3.3.m1.1.1"><times id="S6.T4.3.3.3.3.m1.1.1.1.cmml" xref="S6.T4.3.3.3.3.m1.1.1.1"></times><ci id="S6.T4.3.3.3.3.m1.1.1.2.cmml" xref="S6.T4.3.3.3.3.m1.1.1.2">@</ci><cn id="S6.T4.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S6.T4.3.3.3.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.3.3.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.3.3.m1.1d">@ 1</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.4.4.4.4">
<span class="ltx_text ltx_font_smallcaps" id="S6.T4.4.4.4.4.1" style="font-size:90%;">All</span><math alttext="@1" class="ltx_Math" display="inline" id="S6.T4.4.4.4.4.m1.1"><semantics id="S6.T4.4.4.4.4.m1.1a"><mrow id="S6.T4.4.4.4.4.m1.1.1" xref="S6.T4.4.4.4.4.m1.1.1.cmml"><mi id="S6.T4.4.4.4.4.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S6.T4.4.4.4.4.m1.1.1.2.cmml">@</mi><mo id="S6.T4.4.4.4.4.m1.1.1.1" xref="S6.T4.4.4.4.4.m1.1.1.1.cmml">⁢</mo><mn id="S6.T4.4.4.4.4.m1.1.1.3" mathsize="90%" xref="S6.T4.4.4.4.4.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.4.4.4.4.m1.1b"><apply id="S6.T4.4.4.4.4.m1.1.1.cmml" xref="S6.T4.4.4.4.4.m1.1.1"><times id="S6.T4.4.4.4.4.m1.1.1.1.cmml" xref="S6.T4.4.4.4.4.m1.1.1.1"></times><ci id="S6.T4.4.4.4.4.m1.1.1.2.cmml" xref="S6.T4.4.4.4.4.m1.1.1.2">@</ci><cn id="S6.T4.4.4.4.4.m1.1.1.3.cmml" type="integer" xref="S6.T4.4.4.4.4.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.4.4.4.4.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S6.T4.4.4.4.4.m1.1d">@ 1</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.5.5">
<span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.5.5.1" style="font-size:90%;"> All</span><math alttext="@1" class="ltx_Math" display="inline" id="S6.T4.5.5.5.5.m1.1"><semantics id="S6.T4.5.5.5.5.m1.1a"><mrow id="S6.T4.5.5.5.5.m1.1.1" xref="S6.T4.5.5.5.5.m1.1.1.cmml"><mi id="S6.T4.5.5.5.5.m1.1.1.2" mathsize="90%" mathvariant="normal" xref="S6.T4.5.5.5.5.m1.1.1.2.cmml">@</mi><mo id="S6.T4.5.5.5.5.m1.1.1.1" xref="S6.T4.5.5.5.5.m1.1.1.1.cmml">⁢</mo><mn id="S6.T4.5.5.5.5.m1.1.1.3" mathsize="90%" xref="S6.T4.5.5.5.5.m1.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.5.5.5.5.m1.1b"><apply id="S6.T4.5.5.5.5.m1.1.1.cmml" xref="S6.T4.5.5.5.5.m1.1.1"><times id="S6.T4.5.5.5.5.m1.1.1.1.cmml" xref="S6.T4.5.5.5.5.m1.1.1.1"></times><ci id="S6.T4.5.5.5.5.m1.1.1.2.cmml" xref="S6.T4.5.5.5.5.m1.1.1.2">@</ci><cn id="S6.T4.5.5.5.5.m1.1.1.3.cmml" type="integer" xref="S6.T4.5.5.5.5.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.5.5.5.5.m1.1c">@1</annotation><annotation encoding="application/x-llamapun" id="S6.T4.5.5.5.5.m1.1d">@ 1</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.5.5.8.3.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.8.3.1.1" style="font-size:90%;">Zero-shot</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.5.5.8.3.2"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.8.3.2.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T4.5.5.8.3.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.8.3.3.1" style="font-size:90%;">33.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S6.T4.5.5.8.3.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.8.3.4.1" style="font-size:90%;">11.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T4.5.5.8.3.5"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.8.3.5.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S6.T4.5.5.8.3.6"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.8.3.6.1" style="font-size:90%;">1.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.5.5.9.4.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.1.1" style="font-size:90%;">Few-shot</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.9.4.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.2.1" style="font-size:90%;">28.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.9.4.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.3.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.9.4.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.4.1" style="font-size:90%;">12.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.9.4.5"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.5.1" style="font-size:90%;">2.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.9.4.6"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.9.4.6.1" style="font-size:90%;">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="6" id="S6.T4.5.5.10.5.1"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.10.5.1.1" style="font-size:90%;">Prediction Fine-tuning</span></th>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.5.5.11.6.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.11.6.1.1" style="font-size:90%;">    Time</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.11.6.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.11.6.2.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.11.6.3"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.11.6.3.1" style="font-size:90%;">36.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.11.6.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.11.6.4.1" style="font-size:90%;">6.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.11.6.5"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.11.6.5.1" style="font-size:90%;">2.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.11.6.6"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.11.6.6.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.5.5.12.7.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.12.7.1.1" style="font-size:90%;">    Space</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.12.7.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.12.7.2.1" style="font-size:90%;">26.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.12.7.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.12.7.3.1" style="font-size:90%;">9.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.12.7.4"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.12.7.4.1" style="font-size:90%;">14.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.12.7.5"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.12.7.5.1" style="font-size:90%;">2.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.12.7.6"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.12.7.6.1" style="font-size:90%;">1.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="6" id="S6.T4.5.5.13.8.1"><span class="ltx_text ltx_font_bold" id="S6.T4.5.5.13.8.1.1" style="font-size:90%;">Generation Fine-tuning</span></th>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.5.5.14.9.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.1.1" style="font-size:90%;">    Time</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.5.5.14.9.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.2.1" style="font-size:90%;">23.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.14.9.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.3.1" style="font-size:90%;">34.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.14.9.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.4.1" style="font-size:90%;">12.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T4.5.5.14.9.5"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.5.1" style="font-size:90%;">1.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S6.T4.5.5.14.9.6"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.14.9.6.1" style="font-size:90%;">1.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.5.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.5.5.15.10.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.1.1" style="font-size:90%;">    Space</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.5.5.15.10.2"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.2.1" style="font-size:90%;">23.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T4.5.5.15.10.3"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.3.1" style="font-size:90%;">34.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S6.T4.5.5.15.10.4"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.4.1" style="font-size:90%;">13.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T4.5.5.15.10.5"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.5.1" style="font-size:90%;">1.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S6.T4.5.5.15.10.6"><span class="ltx_text ltx_font_smallcaps" id="S6.T4.5.5.15.10.6.1" style="font-size:90%;">1.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning the Llama 3.1 70B language model on the BigO(Bench) benchmark for time and space complexity prediction and generation tasks.  It shows the model's performance across several metrics (Pass@1, Pass@10, Best@1, Best@10, All@1, All@10) before and after fine-tuning.  These metrics evaluate the accuracy of the model in correctly predicting and generating code that meets specified time and space complexity requirements.  The table also compares the performance of the fine-tuned model to its zero-shot and few-shot counterparts.
> <details>
> <summary>read the caption</summary>
> Table 4: BigO(Bench) benchmark results for fine-tuned Llama 3.1 70B on the time-space prediction and generation tasks. Same metrics are reported as in Table 2.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15242/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15242/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}