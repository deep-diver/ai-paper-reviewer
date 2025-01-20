---
title: "ComplexFuncBench: Exploring Multi-Step and Constrained Function Calling under Long-Context Scenario"
summary: "ComplexFuncBench, a new benchmark, rigorously evaluates LLMs' complex function-calling abilities across real-world scenarios involving multi-step processes, constraints, and long contexts."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.10132 {{< /keyword >}}
{{< keyword icon="writer" >}} Lucen Zhong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.10132" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.10132" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.10132/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are increasingly integrated with real-world APIs, but evaluating their ability to handle complex function calls remains challenging. Existing benchmarks often simplify real-world complexity, failing to capture multi-step processes, constraints, and long contexts necessary for practical applications. This limitation hinders the development of robust and reliable LLMs for real-world use. 

To address these issues, the researchers introduced ComplexFuncBench, a benchmark dataset containing 1000 complex function calls across five real-world domains. They also developed ComplexEval, an automatic evaluation framework that uses a multi-dimensional approach to assess function call correctness. Experiments on various LLMs revealed their significant weaknesses in handling complex function calls, particularly concerning parameter value errors. The work provides a valuable resource for advancing LLM capabilities and evaluating future models. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ComplexFuncBench offers a new benchmark for evaluating LLMs' complex function-calling capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ComplexEval, a novel automatic evaluation framework, overcomes limitations of traditional methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} State-of-the-art LLMs show significant deficiencies in complex function calling, highlighting areas for future improvement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical need for **benchmarking complex function calling in LLMs**, which is crucial for advancing LLM capabilities.  It introduces a novel benchmark, ComplexFuncBench, and evaluation framework, ComplexEval, filling a significant gap in the field.  This work is relevant to current trends in LLM tool integration and will likely **spur further research into improving LLMs' ability to handle complex real-world tasks** involving multiple API calls, constraint reasoning and long contexts. The findings offer valuable insights for future LLM development and evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2501.10132/x1.png)

> 🔼 Figure 1 presents a comparison between simple and complex function calling scenarios. (a) depicts a simple function call, where the user's request is directly translated into a single API call. (b) shows a complex function call, which involves multiple steps, constraints specified by the user, inferring parameter values based on implicit user information, handling long parameter values, and processing long contexts. Different colors highlight these features in the illustration.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Simple Function Calling. (b) Complex Function Calling with multi-step, constraints, parameter value reasoning, long parameter values and long context. Different colors correspond to the corresponding features marked in the figure.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S1.T1.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.2">Real API Response</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.3">Multi-Step</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.4">Constraints</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.5">Parameter Value Reasoning</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.6">Long Parameter Values</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.7">Long-Context</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.1.1">API-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2"><span class="ltx_text" id="S1.T1.1.1.2.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.3"><span class="ltx_text" id="S1.T1.1.1.2.3.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.4"><span class="ltx_text" id="S1.T1.1.1.2.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.5"><span class="ltx_text" id="S1.T1.1.1.2.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.6"><span class="ltx_text" id="S1.T1.1.1.2.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.7"><span class="ltx_text" id="S1.T1.1.1.2.7.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3">
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.3.1.1">ToolBench</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.2"><span class="ltx_text" id="S1.T1.1.1.3.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.3"><span class="ltx_text" id="S1.T1.1.1.3.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.4"><span class="ltx_text" id="S1.T1.1.1.3.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.5"><span class="ltx_text" id="S1.T1.1.1.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.6"><span class="ltx_text" id="S1.T1.1.1.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.7"><span class="ltx_text" id="S1.T1.1.1.3.7.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4">
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.4.1.1">T-Eval</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.2"><span class="ltx_text" id="S1.T1.1.1.4.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.3"><span class="ltx_text" id="S1.T1.1.1.4.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.4"><span class="ltx_text" id="S1.T1.1.1.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.5"><span class="ltx_text" id="S1.T1.1.1.4.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.6"><span class="ltx_text" id="S1.T1.1.1.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.4.7"><span class="ltx_text" id="S1.T1.1.1.4.7.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.5">
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.5.1.1">BFCL</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.2"><span class="ltx_text" id="S1.T1.1.1.5.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.3"><span class="ltx_text" id="S1.T1.1.1.5.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.4"><span class="ltx_text" id="S1.T1.1.1.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.5"><span class="ltx_text" id="S1.T1.1.1.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.6"><span class="ltx_text" id="S1.T1.1.1.5.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.5.7"><span class="ltx_text" id="S1.T1.1.1.5.7.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.6">
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.6.1.1">Tool Sandbox</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.2"><span class="ltx_text" id="S1.T1.1.1.6.2.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.3"><span class="ltx_text" id="S1.T1.1.1.6.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.4"><span class="ltx_text" id="S1.T1.1.1.6.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.5"><span class="ltx_text" id="S1.T1.1.1.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.6"><span class="ltx_text" id="S1.T1.1.1.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.6.7"><span class="ltx_text" id="S1.T1.1.1.6.7.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.7.1.1">ComplexFuncBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.2"><span class="ltx_text" id="S1.T1.1.1.7.2.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.3"><span class="ltx_text" id="S1.T1.1.1.7.3.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.4"><span class="ltx_text" id="S1.T1.1.1.7.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.5"><span class="ltx_text" id="S1.T1.1.1.7.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.6"><span class="ltx_text" id="S1.T1.1.1.7.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.7.7"><span class="ltx_text" id="S1.T1.1.1.7.7.1" style="color:#00FF00;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares ComplexFuncBench with other existing function calling benchmarks. It highlights the key features of each benchmark, such as whether they support real API responses, multi-step function calls, constraints, parameter value reasoning, long parameter values, and long contexts. This comparison helps to demonstrate the unique capabilities and improvements of ComplexFuncBench over existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: ComplexFuncBench compare with other function calling benchmarks.
> </details>





### In-depth insights


#### Func. Call Benchmark
A Func. Call Benchmark in a research paper would critically evaluate the capabilities of large language models (LLMs) in interacting with external functions and APIs.  **Robust benchmarks must encompass a diverse range of function types**, including simple single-step calls and more complex multi-step scenarios, potentially spanning various domains and requiring intricate parameter value reasoning.  **Real-world application is key;** the benchmark should reflect practical use cases, including long-context processing and handling implicit user constraints.  **A comprehensive benchmark necessitates thorough evaluation metrics** such as accuracy of function calls, correctness of parameter values, and the overall efficiency of the LLM's strategy in solving complex tasks.  The ultimate aim is to provide researchers with a reliable tool for comparing different LLMs' functional capabilities and to identify areas for improvement.  **Data annotation is crucial**, requiring expert human annotators to ensure high-quality and unambiguous data, while scalability in data creation poses a significant challenge.  A well-designed benchmark is thus vital for driving advancements in LLM functionality and bridging the gap between research and practical application.

#### Multi-step Func. Calls
The concept of "Multi-step Func. Calls" in the context of large language models (LLMs) signifies a significant advancement in their capabilities.  It moves beyond the limitations of single-step function calls, enabling LLMs to execute complex tasks requiring multiple API calls or external tool interactions.  **This multi-step functionality mimics real-world problem-solving more effectively**, where tasks often involve a sequence of actions.  The challenge lies in effectively managing the flow of information between steps. LLMs must accurately interpret intermediate results, reason about parameter values based on previous outputs, and make informed decisions on which functions to call next. **Successful implementation requires sophisticated planning and reasoning abilities**, going beyond simple pattern matching or keyword recognition.  Furthermore, the evaluation of such models becomes more complex, demanding benchmarks that assess not only the final result but also the correctness of intermediate steps and the overall efficiency of the process.  The development of robust methods to evaluate multi-step function calls is crucial for advancing LLM capabilities in handling intricate, real-world applications.

#### LLM Func. Call Eval.
Evaluating Large Language Model (LLM) function-calling capabilities presents significant challenges.  **Robust evaluation necessitates benchmarks that extend beyond simple, single-step calls** to encompass the complexities of real-world scenarios.  These scenarios include multi-step interactions, handling constraints, reasoning with implicit parameters, processing long parameter values, and managing extensive context lengths.  **Current methods often fall short**, relying on simplistic rule-based matching or focusing solely on final output accuracy, ignoring intermediate steps and subtle variations in API responses.  A **comprehensive evaluation framework must incorporate multiple dimensions** such as accuracy of parameter inference, correctness of API calls, and the completeness of the response.  This demands careful design of both the benchmark tasks and the evaluation metrics, going beyond exact matching to account for different valid approaches and considering the quality and context of both the intermediate steps and the final output.  **Further research should prioritize the development of advanced evaluation techniques that align more closely with the complexities of practical LLM applications.**

#### Model Response Eval
In evaluating large language models (LLMs), assessing the quality of their generated responses is crucial.  A dedicated 'Model Response Eval' section would delve into methods for evaluating both the **completeness** and **correctness** of LLM outputs. Completeness examines whether the response fully addresses all aspects of the user's query, encompassing all requested information.  Correctness, on the other hand, focuses on the accuracy of the information provided, verifying its alignment with ground truth or external knowledge sources, and potentially penalizing hallucinations or factual inaccuracies.  This evaluation often goes beyond simple keyword matching and uses more sophisticated techniques such as **multi-dimensional matching** to consider semantic equivalence and different phrasing, incorporating both rule-based and LLM-based comparisons to ensure a comprehensive assessment.  Furthermore, a robust 'Model Response Eval' would account for the model's ability to **self-correct**, potentially penalizing responses that are factually incorrect, but which the model later corrects based on additional information or interactions.  Ideally, this evaluation should also consider various response metrics like clarity, conciseness, and overall readability, offering a holistic view of the model's response generation capabilities beyond mere factual correctness.

#### Future Research
Future research directions stemming from this work on complex function calling in LLMs could focus on several key areas.  **Improving the robustness of LLMs** to handle ambiguous or incomplete user inputs is crucial. This might involve developing new training techniques or incorporating more sophisticated natural language understanding modules.  Furthermore, **exploring alternative evaluation metrics** beyond those presented is important to gain a more complete understanding of LLM capabilities.  The current metrics might not fully capture subtle nuances of complex function calls.  **Investigating the scalability and efficiency** of complex function calling is vital for real-world applications. The computational cost and latency associated with multi-step calls could hinder practical implementation. Finally, research should concentrate on **enhancing the explainability of LLM decisions**.  Understanding *why* an LLM made a particular function call or chose specific parameters is crucial for building trust and improving the models' reliability.  This could involve developing novel techniques for visualizing or interpreting the reasoning processes within LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.10132/x2.png)

> 🔼 Figure 2 illustrates the multi-stage data collection process for ComplexFuncBench.  Panel (a) provides a high-level overview of the three stages: coarse generation, fine-grained annotation, and generalization. Panel (b) shows an example of the human correction process, focusing on refining queries, adjusting the order of function calls, and correcting errors in parameter values. Panel (c) details the disambiguation process used to eliminate ambiguity from API responses.  The greyed-out sections in (b) and (c) represent the parts removed during annotation to ensure a single valid function call path for each sample.  A more detailed example of the annotation process is provided in Appendix A.1.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the data collection process. (a) is the high-level process of data collection. (b) is the example of human correction process.(c) is the example of disambiguation process. The grey part is removed during annotation. A detailed annotation example is shown in Appendix A.1.
> </details>



![](https://arxiv.org/html/2501.10132/x3.png)

> 🔼 ComplexEval is an automatic evaluation framework for assessing the quality of complex function calls generated by LLMs.  The figure provides a visual representation of the process.  It begins with a user query and the available functions, then shows how the model generates function calls. These calls are checked for correct format and compared to the 'golden' (correct) function call path using a three-part matching system: rule-based (exact match), response-based (comparing API responses), and LLM-based (using an LLM to judge equivalence). Different colors indicate different outcomes. Blue indicates format errors, green indicates a successful match with the golden standard, and red shows an invalid function call.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of ComplexEval. Different colors represent different API response types. Color blue represents format error with specific error message. Color green represents correct function call with corresponding golden API response. Color red represents invalid function call with general error message.
> </details>



![](https://arxiv.org/html/2501.10132/extracted/6138262/images/error_analysis.png)

> 🔼 This bar chart displays the percentage breakdown of different error types for four selected Large Language Models (LLMs) during complex function calling.  The error types include:  `value_error` (incorrect parameter values), `stop_early` (premature termination of function calls), `hallucination` (generating non-existent parameters), `func_error` (calling the wrong function), and `param_missing` (missing parameters).  The chart allows for a comparison of the relative frequency of each error type across the four models, highlighting their respective strengths and weaknesses in handling different aspects of the complex function calling task.  The models are GPT-40, Claude-3.5-Sonnet, GLM-4-Long, and Qwen2.5-72B.
> <details>
> <summary>read the caption</summary>
> Figure 4: Error type analysis for different models.
> </details>



![](https://arxiv.org/html/2501.10132/extracted/6138262/images/value_error_distribution.png)

> 🔼 This bar chart visualizes the error rates of different Large Language Models (LLMs) when dealing with various parameter types during complex function calls.  Each parameter type (e.g., filter, legs, token, slug, date, location, etc.) is represented on the x-axis. The y-axis shows the error rate (percentage) for each parameter type.  Multiple bars for each parameter type correspond to the performance of different LLMs (Claude-3.5-Sonnet, GPT-40, GLM-4-Long, and Qwen2.5-72B). The chart allows for a comparison of the models' accuracy across different parameter types, revealing which parameters pose the most significant challenge for each model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Error rates for each parameter type of different models
> </details>



![](https://arxiv.org/html/2501.10132/x4.png)

> 🔼 This figure displays the distribution of function call steps in a complex function calling task.  It shows the number of steps predicted by different models compared to the shortest (optimal) number of steps needed to accomplish the task. The distributions show that the models often require more steps than the shortest path, indicating areas where model efficiency can be improved. The chart facilitates a comparison of model performance in terms of planning and step efficiency during complex multi-step function calls.
> <details>
> <summary>read the caption</summary>
> Figure 6: Function calling steps distribution.
> </details>



![](https://arxiv.org/html/2501.10132/x5.png)

> 🔼 This figure illustrates the process of updating the golden function call list during the evaluation of complex function calling.  The left side shows the annotated shortest function call path, serving as the ground truth, consisting of three steps.  The right side dynamically updates this list based on model predictions.  As the model generates function calls, the list is refined step-by-step, adding successful calls and discarding unsuccessful ones, reflecting a progressive refinement of the solution toward the correct path.
> <details>
> <summary>read the caption</summary>
> Figure 7: An example for golden function call updating. Path on the left is the annotated shortest function call path with three steps.
> </details>



![](https://arxiv.org/html/2501.10132/x6.png)

> 🔼 This figure shows the prompt used to instruct GPT-4 to generate queries for the ComplexFuncBench dataset.  The prompt emphasizes the creation of diverse and realistic queries involving multiple API calls and complex constraints. It provides a template and guidelines for constructing queries, specifying the required format and the need to avoid ambiguous or unrealistic parameters. The instructions highlight the importance of clear, detailed queries that can be solved using a series of API calls.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for Query Generation.
> </details>



![](https://arxiv.org/html/2501.10132/x7.png)

> 🔼 This prompt instructs a large language model (LLM) to generate variations of a given query by replacing specific pieces of information while maintaining the original sentence structure.  The goal is to create a diverse set of queries for a dataset used to evaluate complex function-calling capabilities in LLMs.  The prompt specifies which types of information can be modified (e.g., quantities, dates, locations, times, etc.) and provides concrete examples to guide the LLM.  It emphasizes the need to keep the essential structure of the query intact while introducing varied data.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for Query Generalization.
> </details>



![](https://arxiv.org/html/2501.10132/x8.png)

> 🔼 This figure details the prompt used for evaluating the LLM's ability to perform LLM-based matching.  LLM-based matching assesses whether two function calls are equivalent, considering factors such as variations in language, parameter formats, and default values. The prompt provides instructions, examples, and a structured output format for the LLM to follow, ensuring consistency and accuracy in the evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 10: Prompt for LLM-based Match.
> </details>



![](https://arxiv.org/html/2501.10132/x9.png)

> 🔼 This figure presents the prompt used to evaluate the completeness of model responses.  The prompt instructs evaluators to assess whether a model's response fully addresses all aspects of a user's query. It provides three scoring levels (0, 1, 2) based on the extent of the information provided, with examples illustrating each level and guidelines for providing justification for the given score.
> <details>
> <summary>read the caption</summary>
> Figure 11: Prompt for Completeness Evaluation.
> </details>



![](https://arxiv.org/html/2501.10132/x10.png)

> 🔼 This figure shows the prompt used to evaluate the correctness of the model's response based on the API response.  The prompt instructs the evaluator to score the response (0-2) based on whether it's entirely correct, partially correct, or completely incorrect when compared to the API's output. It also requires a justification of the score given.
> <details>
> <summary>read the caption</summary>
> Figure 12: Prompt for Correctness Evaluation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.2">Hotels</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.3">Flights</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.4">Car Rental</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.5">Attraction</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.6">Cross</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.7">Overall</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.8" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.8.1">Completeness</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.9" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.9.1">Correctness</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2">Call Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4">Call Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.6">Call Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.7">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.8">Call Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.9">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.10">Call Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.11">Success</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.12">Call Acc</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T2.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.3.1.1" style="background-color:#F2F2F2;">close-source models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.1">Claude-3.5-Haiku</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.2">36.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.3">50.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.4">50.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.5">75.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.6">59.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.7">74.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.8">58.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.9">75.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.10">38.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.11">70.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.12">45.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.13">69.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.4.14.1">1.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.15">1.71</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">54.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3">68.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">54.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5">79.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.5.6.1">76.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.5.7.1">86.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.8">69.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.5.9.1">83.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.10.1">57.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.11"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.11.1">79.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.12"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.12.1">61.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.5.13.1">79.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.14"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.14.1">1.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.15"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.15.1">1.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.1">GLM-4-Long</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.2.1">56.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3">63.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.4.1">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.5.1">84.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.6.1">77.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.7">85.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.8.1">72.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.6.9.1">83.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.10">40.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.11">72.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.12">57.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.13">76.35</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.14">1.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.15">1.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.1">GPT-4-Turbo</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.2">54.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.7.3.1">68.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4">48.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5">76.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.6">44.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7">71.14</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.8">70.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.9">76.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.10">41.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.11">69.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.12">49.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.13">71.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.14">1.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.7.15.1">1.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.1">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.2.1">70.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.3.1">81.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.4.1">65.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.5.1">85.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6">72.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.7.1">86.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.8.1">82.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.9.1">87.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.10.1">42.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.11.1">75.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.12.1">60.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.13"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.13.1">80.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.14">1.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.15">1.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="15" id="S4.T2.1.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.9.1.1" style="background-color:#F2F2F2;">open-source models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.1">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.2.1">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.3.1">20.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.4">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.5.1">5.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.6.1">4.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.7.1">6.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.8.1">14.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.9.1">35.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.10.1">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.11.1">21.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.12.1">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.10.13.1">18.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.14"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.14.1">1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.10.15"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.15.1">1.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.1">Llama-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.2">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.3">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.4">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.5">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.6">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.7">1.89</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.9">2.78</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.10">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.11">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.12">0.10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.13">1.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.14">0.18</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.15">0.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.1">GLM-4-9B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.2.1">19.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.3.1">31.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.4.1">11.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.5.1">34.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.6.1">16.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.7.1">25.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.12.8.1">10.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.12.9.1">29.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.12.10.1">2.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.11"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.11.1">25.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.12"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.12.1">9.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.13"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.12.13.1">27.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.12.14.1">1.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.12.15.1">1.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.1">Llama-3.1-70B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.2">2.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.3">10.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.4">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.5">2.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.6">6.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.7">10.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.8">4.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.9">11.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.10">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.11">8.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.12">2.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.13">8.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.14">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.13.15">0.36</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.1">Llama-3.1-405B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.2">3.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.3">13.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.4">2.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.5">10.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.6">4.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.7">15.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.8">14.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.9">18.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.10">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.11">9.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.12">4.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.13">11.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.14">0.43</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.14.15">0.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.1">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.2.1">40.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.3.1">60.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.4.1">31.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.15.5.1">49.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.6.1">48.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.15.7.1">57.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.8"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.8.1">63.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.9"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.9.1">67.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.10"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.10.1">31.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.11"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.11.1">59.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.12"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.12.1">40.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.13"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.13.1">58.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.14"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.14.1">1.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.15.15"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.15.15.1">1.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.1">Mistral Large 2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.2.1">19.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.3.1">34.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.4.1">20.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.16.5.1">52.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.6.1">40.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.16.7.1">58.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.8.1">25.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.9.1">40.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.10.1">10.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.11.1">50.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.12.1">20.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.13"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.13.1">48.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.14"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.14.1">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.16.15"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.16.15.1">1.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the main results of evaluating various large language models (LLMs) on the ComplexFuncBench benchmark.  Models are categorized into three groups: closed-source, open-source models under 10 billion parameters, and open-source models above 10 billion parameters.  The table displays the performance of each model across several metrics, including success rate (ability to complete the complex function call task), call accuracy (correctness of the individual function calls), and response completeness and correctness (quality of the final response generated by the model). The top two performing models in each category are highlighted for easy identification.  Specific version details for the open-source models are provided to ensure reproducibility.
> <details>
> <summary>read the caption</summary>
> Table 2: Main Results. We categorize models as close-source, open-source under 10B, and open-source above 10B. Top two results for each category are highlighted in bold and underline. The specific endpoint of open-source models are: gpt-4o-2024-08-06, gpt-4-turbo-2024-04-09, claude-3-5-sonnet-20241022 and claude-3-5-haiku-20241022.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.1.1">
<tr class="ltx_tr" id="A1.T3.1.1.1">
<td class="ltx_td ltx_border_tt" id="A1.T3.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.2">Hotels</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.3">Flights</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.4">Car Rental</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.5">Attraction</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.6">Cross</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.1.1.1.7">Total</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.1"># Samples</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.2">150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.3">150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.4">150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.5">150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.6">400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.2.7">1000</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.3.1">Avg. Steps</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.2">3.33</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.3">3.33</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.4">2.87</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.5">2.86</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.6">3.5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3.7">3.26</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.4.1">Avg. Calls</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.2">4.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.3">5.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.4">4.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.5">3.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.6">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.1.1.4.7">5.07</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the ComplexFuncBench dataset. It breaks down the dataset across five real-world domains (Hotels, Flights, Car Rentals, Attractions, and Cross-domain), showing the number of samples, average number of steps in a function call path, and the average number of function calls per sample.  This information is crucial for understanding the scale and complexity of the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 3: Data statistics for ComplexFuncBench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T4.13.13">
<tr class="ltx_tr" id="A3.T4.13.13.14">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T4.13.13.14.1">Parameter</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T4.13.13.14.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.14.2.1">
<span class="ltx_p" id="A3.T4.13.13.14.2.1.1" style="width:170.7pt;">Example</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T4.13.13.14.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.14.3.1">
<span class="ltx_p" id="A3.T4.13.13.14.3.1.1" style="width:341.4pt;">Explanation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.1.1.1.2">filter</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.1.3.1">
<span class="ltx_p" id="A3.T4.1.1.1.3.1.1" style="width:170.7pt;">filter = "facility::433, facility::107")</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.1.1.1.1.1">
<span class="ltx_p" id="A3.T4.1.1.1.1.1.1" style="width:341.4pt;">The <math alttext="filter" class="ltx_Math" display="inline" id="A3.T4.1.1.1.1.1.1.m1.1"><semantics id="A3.T4.1.1.1.1.1.1.m1.1a"><mrow id="A3.T4.1.1.1.1.1.1.m1.1.1" xref="A3.T4.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.2" xref="A3.T4.1.1.1.1.1.1.m1.1.1.2.cmml">f</mi><mo id="A3.T4.1.1.1.1.1.1.m1.1.1.1" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.3" xref="A3.T4.1.1.1.1.1.1.m1.1.1.3.cmml">i</mi><mo id="A3.T4.1.1.1.1.1.1.m1.1.1.1a" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.4" xref="A3.T4.1.1.1.1.1.1.m1.1.1.4.cmml">l</mi><mo id="A3.T4.1.1.1.1.1.1.m1.1.1.1b" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.5" xref="A3.T4.1.1.1.1.1.1.m1.1.1.5.cmml">t</mi><mo id="A3.T4.1.1.1.1.1.1.m1.1.1.1c" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.6" xref="A3.T4.1.1.1.1.1.1.m1.1.1.6.cmml">e</mi><mo id="A3.T4.1.1.1.1.1.1.m1.1.1.1d" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.1.1.1.1.1.1.m1.1.1.7" xref="A3.T4.1.1.1.1.1.1.m1.1.1.7.cmml">r</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.1.1.1.1.1.1.m1.1b"><apply id="A3.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1"><times id="A3.T4.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.1"></times><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.2">𝑓</ci><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.3">𝑖</ci><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.4.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.4">𝑙</ci><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.5.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.5">𝑡</ci><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.6.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.6">𝑒</ci><ci id="A3.T4.1.1.1.1.1.1.m1.1.1.7.cmml" xref="A3.T4.1.1.1.1.1.1.m1.1.1.7">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.1.1.1.1.1.1.m1.1c">filter</annotation><annotation encoding="application/x-llamapun" id="A3.T4.1.1.1.1.1.1.m1.1d">italic_f italic_i italic_l italic_t italic_e italic_r</annotation></semantics></math> parameter can be retrieved from the API response of the <span class="ltx_text ltx_font_smallcaps" id="A3.T4.1.1.1.1.1.1.1">Get_Filter</span> function. It often appears in queries with constraints, like: Find a few hotels with a pool and free wifi. "facility::433" and "facility::107" denote pool and free wifi, respectively.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.2.2.2.2">legs</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.2.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.2.2.2.3.1">
<span class="ltx_p" id="A3.T4.2.2.2.3.1.1" style="width:170.7pt;">legs=[{"fromId": "DFW.CITY", "toId": "MUC.AIRPORT", "date": "2024-11-25"},{"fromId": "MUC.AIRPORT", "toId": "STO.CITY", "date": "2024-11-26"}, {"fromId": "STO.CITY","toId": "DFW.CITY","date": "2024-12-09"}])</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.2.2.2.1.1">
<span class="ltx_p" id="A3.T4.2.2.2.1.1.1" style="width:341.4pt;">The <math alttext="legs" class="ltx_Math" display="inline" id="A3.T4.2.2.2.1.1.1.m1.1"><semantics id="A3.T4.2.2.2.1.1.1.m1.1a"><mrow id="A3.T4.2.2.2.1.1.1.m1.1.1" xref="A3.T4.2.2.2.1.1.1.m1.1.1.cmml"><mi id="A3.T4.2.2.2.1.1.1.m1.1.1.2" xref="A3.T4.2.2.2.1.1.1.m1.1.1.2.cmml">l</mi><mo id="A3.T4.2.2.2.1.1.1.m1.1.1.1" xref="A3.T4.2.2.2.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.2.2.2.1.1.1.m1.1.1.3" xref="A3.T4.2.2.2.1.1.1.m1.1.1.3.cmml">e</mi><mo id="A3.T4.2.2.2.1.1.1.m1.1.1.1a" xref="A3.T4.2.2.2.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.2.2.2.1.1.1.m1.1.1.4" xref="A3.T4.2.2.2.1.1.1.m1.1.1.4.cmml">g</mi><mo id="A3.T4.2.2.2.1.1.1.m1.1.1.1b" xref="A3.T4.2.2.2.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.2.2.2.1.1.1.m1.1.1.5" xref="A3.T4.2.2.2.1.1.1.m1.1.1.5.cmml">s</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.2.2.2.1.1.1.m1.1b"><apply id="A3.T4.2.2.2.1.1.1.m1.1.1.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1"><times id="A3.T4.2.2.2.1.1.1.m1.1.1.1.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1.1"></times><ci id="A3.T4.2.2.2.1.1.1.m1.1.1.2.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1.2">𝑙</ci><ci id="A3.T4.2.2.2.1.1.1.m1.1.1.3.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1.3">𝑒</ci><ci id="A3.T4.2.2.2.1.1.1.m1.1.1.4.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1.4">𝑔</ci><ci id="A3.T4.2.2.2.1.1.1.m1.1.1.5.cmml" xref="A3.T4.2.2.2.1.1.1.m1.1.1.5">𝑠</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.2.2.2.1.1.1.m1.1c">legs</annotation><annotation encoding="application/x-llamapun" id="A3.T4.2.2.2.1.1.1.m1.1d">italic_l italic_e italic_g italic_s</annotation></semantics></math> parameter is the multi-stop flights list which contains location and date.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.4.4.4.3">token</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.4.4.4.4.1">
<span class="ltx_p" id="A3.T4.4.4.4.4.1.1" style="width:170.7pt;">token="d7699_H4sIAAAAAAAA_ … AAA."</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.4.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.4.4.4.2.2">
<span class="ltx_p" id="A3.T4.4.4.4.2.2.2" style="width:341.4pt;">The <math alttext="token" class="ltx_Math" display="inline" id="A3.T4.3.3.3.1.1.1.m1.1"><semantics id="A3.T4.3.3.3.1.1.1.m1.1a"><mrow id="A3.T4.3.3.3.1.1.1.m1.1.1" xref="A3.T4.3.3.3.1.1.1.m1.1.1.cmml"><mi id="A3.T4.3.3.3.1.1.1.m1.1.1.2" xref="A3.T4.3.3.3.1.1.1.m1.1.1.2.cmml">t</mi><mo id="A3.T4.3.3.3.1.1.1.m1.1.1.1" xref="A3.T4.3.3.3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.3.3.3.1.1.1.m1.1.1.3" xref="A3.T4.3.3.3.1.1.1.m1.1.1.3.cmml">o</mi><mo id="A3.T4.3.3.3.1.1.1.m1.1.1.1a" xref="A3.T4.3.3.3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.3.3.3.1.1.1.m1.1.1.4" xref="A3.T4.3.3.3.1.1.1.m1.1.1.4.cmml">k</mi><mo id="A3.T4.3.3.3.1.1.1.m1.1.1.1b" xref="A3.T4.3.3.3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.3.3.3.1.1.1.m1.1.1.5" xref="A3.T4.3.3.3.1.1.1.m1.1.1.5.cmml">e</mi><mo id="A3.T4.3.3.3.1.1.1.m1.1.1.1c" xref="A3.T4.3.3.3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.3.3.3.1.1.1.m1.1.1.6" xref="A3.T4.3.3.3.1.1.1.m1.1.1.6.cmml">n</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.3.3.3.1.1.1.m1.1b"><apply id="A3.T4.3.3.3.1.1.1.m1.1.1.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1"><times id="A3.T4.3.3.3.1.1.1.m1.1.1.1.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.1"></times><ci id="A3.T4.3.3.3.1.1.1.m1.1.1.2.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.2">𝑡</ci><ci id="A3.T4.3.3.3.1.1.1.m1.1.1.3.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.3">𝑜</ci><ci id="A3.T4.3.3.3.1.1.1.m1.1.1.4.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.4">𝑘</ci><ci id="A3.T4.3.3.3.1.1.1.m1.1.1.5.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.5">𝑒</ci><ci id="A3.T4.3.3.3.1.1.1.m1.1.1.6.cmml" xref="A3.T4.3.3.3.1.1.1.m1.1.1.6">𝑛</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.3.3.3.1.1.1.m1.1c">token</annotation><annotation encoding="application/x-llamapun" id="A3.T4.3.3.3.1.1.1.m1.1d">italic_t italic_o italic_k italic_e italic_n</annotation></semantics></math> parameter can be retrieved from the API response of multiple functions. For example, the <span class="ltx_text ltx_font_smallcaps" id="A3.T4.4.4.4.2.2.2.1">Search_Flights</span> function will return the <math alttext="token" class="ltx_Math" display="inline" id="A3.T4.4.4.4.2.2.2.m2.1"><semantics id="A3.T4.4.4.4.2.2.2.m2.1a"><mrow id="A3.T4.4.4.4.2.2.2.m2.1.1" xref="A3.T4.4.4.4.2.2.2.m2.1.1.cmml"><mi id="A3.T4.4.4.4.2.2.2.m2.1.1.2" xref="A3.T4.4.4.4.2.2.2.m2.1.1.2.cmml">t</mi><mo id="A3.T4.4.4.4.2.2.2.m2.1.1.1" xref="A3.T4.4.4.4.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.4.4.4.2.2.2.m2.1.1.3" xref="A3.T4.4.4.4.2.2.2.m2.1.1.3.cmml">o</mi><mo id="A3.T4.4.4.4.2.2.2.m2.1.1.1a" xref="A3.T4.4.4.4.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.4.4.4.2.2.2.m2.1.1.4" xref="A3.T4.4.4.4.2.2.2.m2.1.1.4.cmml">k</mi><mo id="A3.T4.4.4.4.2.2.2.m2.1.1.1b" xref="A3.T4.4.4.4.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.4.4.4.2.2.2.m2.1.1.5" xref="A3.T4.4.4.4.2.2.2.m2.1.1.5.cmml">e</mi><mo id="A3.T4.4.4.4.2.2.2.m2.1.1.1c" xref="A3.T4.4.4.4.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.4.4.4.2.2.2.m2.1.1.6" xref="A3.T4.4.4.4.2.2.2.m2.1.1.6.cmml">n</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.4.4.4.2.2.2.m2.1b"><apply id="A3.T4.4.4.4.2.2.2.m2.1.1.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1"><times id="A3.T4.4.4.4.2.2.2.m2.1.1.1.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.1"></times><ci id="A3.T4.4.4.4.2.2.2.m2.1.1.2.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.2">𝑡</ci><ci id="A3.T4.4.4.4.2.2.2.m2.1.1.3.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.3">𝑜</ci><ci id="A3.T4.4.4.4.2.2.2.m2.1.1.4.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.4">𝑘</ci><ci id="A3.T4.4.4.4.2.2.2.m2.1.1.5.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.5">𝑒</ci><ci id="A3.T4.4.4.4.2.2.2.m2.1.1.6.cmml" xref="A3.T4.4.4.4.2.2.2.m2.1.1.6">𝑛</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.4.4.4.2.2.2.m2.1c">token</annotation><annotation encoding="application/x-llamapun" id="A3.T4.4.4.4.2.2.2.m2.1d">italic_t italic_o italic_k italic_e italic_n</annotation></semantics></math> for different flights.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.5.5.5.2">slug</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.5.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.5.5.5.3.1">
<span class="ltx_p" id="A3.T4.5.5.5.3.1.1" style="width:170.7pt;">slug="pr7jepixwlvr-private-guided-tour-orsay-museum-rare-languages"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.5.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.5.5.5.1.1">
<span class="ltx_p" id="A3.T4.5.5.5.1.1.1" style="width:341.4pt;">The <math alttext="slug" class="ltx_Math" display="inline" id="A3.T4.5.5.5.1.1.1.m1.1"><semantics id="A3.T4.5.5.5.1.1.1.m1.1a"><mrow id="A3.T4.5.5.5.1.1.1.m1.1.1" xref="A3.T4.5.5.5.1.1.1.m1.1.1.cmml"><mi id="A3.T4.5.5.5.1.1.1.m1.1.1.2" xref="A3.T4.5.5.5.1.1.1.m1.1.1.2.cmml">s</mi><mo id="A3.T4.5.5.5.1.1.1.m1.1.1.1" xref="A3.T4.5.5.5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.5.5.5.1.1.1.m1.1.1.3" xref="A3.T4.5.5.5.1.1.1.m1.1.1.3.cmml">l</mi><mo id="A3.T4.5.5.5.1.1.1.m1.1.1.1a" xref="A3.T4.5.5.5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.5.5.5.1.1.1.m1.1.1.4" xref="A3.T4.5.5.5.1.1.1.m1.1.1.4.cmml">u</mi><mo id="A3.T4.5.5.5.1.1.1.m1.1.1.1b" xref="A3.T4.5.5.5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.5.5.5.1.1.1.m1.1.1.5" xref="A3.T4.5.5.5.1.1.1.m1.1.1.5.cmml">g</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.5.5.5.1.1.1.m1.1b"><apply id="A3.T4.5.5.5.1.1.1.m1.1.1.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1"><times id="A3.T4.5.5.5.1.1.1.m1.1.1.1.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1.1"></times><ci id="A3.T4.5.5.5.1.1.1.m1.1.1.2.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T4.5.5.5.1.1.1.m1.1.1.3.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1.3">𝑙</ci><ci id="A3.T4.5.5.5.1.1.1.m1.1.1.4.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1.4">𝑢</ci><ci id="A3.T4.5.5.5.1.1.1.m1.1.1.5.cmml" xref="A3.T4.5.5.5.1.1.1.m1.1.1.5">𝑔</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.5.5.5.1.1.1.m1.1c">slug</annotation><annotation encoding="application/x-llamapun" id="A3.T4.5.5.5.1.1.1.m1.1d">italic_s italic_l italic_u italic_g</annotation></semantics></math> parameter can be retrieved from the API response of <span class="ltx_text ltx_font_smallcaps" id="A3.T4.5.5.5.1.1.1.1">Search_Attraction_Location</span> function as as ’productSlug’ inside ’products’ or ’destinations’.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.13.13.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.13.13.15.1">date</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.15.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.15.2.1">
<span class="ltx_p" id="A3.T4.13.13.15.2.1.1" style="width:170.7pt;">date="2024-11-22"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.15.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.15.3.1">
<span class="ltx_p" id="A3.T4.13.13.15.3.1.1" style="width:341.4pt;">Parameters related to dates, like: check-in-date, check-out-date,etc.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.13.13.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.13.13.16.1">location</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.16.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.16.2.1">
<span class="ltx_p" id="A3.T4.13.13.16.2.1.1" style="width:170.7pt;">location="Amsterdam"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.16.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.16.3.1">
<span class="ltx_p" id="A3.T4.13.13.16.3.1.1" style="width:341.4pt;">Parameters related to locations, like: country, city ,etc.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.7.7.7.3">key</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.7.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.7.7.7.4.1">
<span class="ltx_p" id="A3.T4.7.7.7.4.1.1" style="width:170.7pt;">key= "eyJkcml2ZXJzQWdlIjozMCwiZ HJvcE…19GRUVTIl19"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.7.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.7.7.7.2.2">
<span class="ltx_p" id="A3.T4.7.7.7.2.2.2" style="width:341.4pt;">The <math alttext="key" class="ltx_Math" display="inline" id="A3.T4.6.6.6.1.1.1.m1.1"><semantics id="A3.T4.6.6.6.1.1.1.m1.1a"><mrow id="A3.T4.6.6.6.1.1.1.m1.1.1" xref="A3.T4.6.6.6.1.1.1.m1.1.1.cmml"><mi id="A3.T4.6.6.6.1.1.1.m1.1.1.2" xref="A3.T4.6.6.6.1.1.1.m1.1.1.2.cmml">k</mi><mo id="A3.T4.6.6.6.1.1.1.m1.1.1.1" xref="A3.T4.6.6.6.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.6.6.6.1.1.1.m1.1.1.3" xref="A3.T4.6.6.6.1.1.1.m1.1.1.3.cmml">e</mi><mo id="A3.T4.6.6.6.1.1.1.m1.1.1.1a" xref="A3.T4.6.6.6.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.6.6.6.1.1.1.m1.1.1.4" xref="A3.T4.6.6.6.1.1.1.m1.1.1.4.cmml">y</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.6.6.6.1.1.1.m1.1b"><apply id="A3.T4.6.6.6.1.1.1.m1.1.1.cmml" xref="A3.T4.6.6.6.1.1.1.m1.1.1"><times id="A3.T4.6.6.6.1.1.1.m1.1.1.1.cmml" xref="A3.T4.6.6.6.1.1.1.m1.1.1.1"></times><ci id="A3.T4.6.6.6.1.1.1.m1.1.1.2.cmml" xref="A3.T4.6.6.6.1.1.1.m1.1.1.2">𝑘</ci><ci id="A3.T4.6.6.6.1.1.1.m1.1.1.3.cmml" xref="A3.T4.6.6.6.1.1.1.m1.1.1.3">𝑒</ci><ci id="A3.T4.6.6.6.1.1.1.m1.1.1.4.cmml" xref="A3.T4.6.6.6.1.1.1.m1.1.1.4">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.6.6.6.1.1.1.m1.1c">key</annotation><annotation encoding="application/x-llamapun" id="A3.T4.6.6.6.1.1.1.m1.1d">italic_k italic_e italic_y</annotation></semantics></math> parameter can be retrieved from the API response of multiple functions. For example, the <span class="ltx_text ltx_font_smallcaps" id="A3.T4.7.7.7.2.2.2.1">Search_Car_Rentals</span> function will return the <math alttext="key" class="ltx_Math" display="inline" id="A3.T4.7.7.7.2.2.2.m2.1"><semantics id="A3.T4.7.7.7.2.2.2.m2.1a"><mrow id="A3.T4.7.7.7.2.2.2.m2.1.1" xref="A3.T4.7.7.7.2.2.2.m2.1.1.cmml"><mi id="A3.T4.7.7.7.2.2.2.m2.1.1.2" xref="A3.T4.7.7.7.2.2.2.m2.1.1.2.cmml">k</mi><mo id="A3.T4.7.7.7.2.2.2.m2.1.1.1" xref="A3.T4.7.7.7.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.7.7.7.2.2.2.m2.1.1.3" xref="A3.T4.7.7.7.2.2.2.m2.1.1.3.cmml">e</mi><mo id="A3.T4.7.7.7.2.2.2.m2.1.1.1a" xref="A3.T4.7.7.7.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.7.7.7.2.2.2.m2.1.1.4" xref="A3.T4.7.7.7.2.2.2.m2.1.1.4.cmml">y</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.7.7.7.2.2.2.m2.1b"><apply id="A3.T4.7.7.7.2.2.2.m2.1.1.cmml" xref="A3.T4.7.7.7.2.2.2.m2.1.1"><times id="A3.T4.7.7.7.2.2.2.m2.1.1.1.cmml" xref="A3.T4.7.7.7.2.2.2.m2.1.1.1"></times><ci id="A3.T4.7.7.7.2.2.2.m2.1.1.2.cmml" xref="A3.T4.7.7.7.2.2.2.m2.1.1.2">𝑘</ci><ci id="A3.T4.7.7.7.2.2.2.m2.1.1.3.cmml" xref="A3.T4.7.7.7.2.2.2.m2.1.1.3">𝑒</ci><ci id="A3.T4.7.7.7.2.2.2.m2.1.1.4.cmml" xref="A3.T4.7.7.7.2.2.2.m2.1.1.4">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.7.7.7.2.2.2.m2.1c">key</annotation><annotation encoding="application/x-llamapun" id="A3.T4.7.7.7.2.2.2.m2.1d">italic_k italic_e italic_y</annotation></semantics></math> for different cars.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.9.9.9.3">id</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.9.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.9.9.9.4.1">
<span class="ltx_p" id="A3.T4.9.9.9.4.1.1" style="width:170.7pt;">id="eyJ1ZmkiOi01NjQwNjR9"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.9.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.9.9.9.2.2">
<span class="ltx_p" id="A3.T4.9.9.9.2.2.2" style="width:341.4pt;">The <math alttext="id" class="ltx_Math" display="inline" id="A3.T4.8.8.8.1.1.1.m1.1"><semantics id="A3.T4.8.8.8.1.1.1.m1.1a"><mrow id="A3.T4.8.8.8.1.1.1.m1.1.1" xref="A3.T4.8.8.8.1.1.1.m1.1.1.cmml"><mi id="A3.T4.8.8.8.1.1.1.m1.1.1.2" xref="A3.T4.8.8.8.1.1.1.m1.1.1.2.cmml">i</mi><mo id="A3.T4.8.8.8.1.1.1.m1.1.1.1" xref="A3.T4.8.8.8.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.8.8.8.1.1.1.m1.1.1.3" xref="A3.T4.8.8.8.1.1.1.m1.1.1.3.cmml">d</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.8.8.8.1.1.1.m1.1b"><apply id="A3.T4.8.8.8.1.1.1.m1.1.1.cmml" xref="A3.T4.8.8.8.1.1.1.m1.1.1"><times id="A3.T4.8.8.8.1.1.1.m1.1.1.1.cmml" xref="A3.T4.8.8.8.1.1.1.m1.1.1.1"></times><ci id="A3.T4.8.8.8.1.1.1.m1.1.1.2.cmml" xref="A3.T4.8.8.8.1.1.1.m1.1.1.2">𝑖</ci><ci id="A3.T4.8.8.8.1.1.1.m1.1.1.3.cmml" xref="A3.T4.8.8.8.1.1.1.m1.1.1.3">𝑑</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.8.8.8.1.1.1.m1.1c">id</annotation><annotation encoding="application/x-llamapun" id="A3.T4.8.8.8.1.1.1.m1.1d">italic_i italic_d</annotation></semantics></math> parameter can be retrieved from the API response of multiple functions. For example, the <span class="ltx_text ltx_font_smallcaps" id="A3.T4.9.9.9.2.2.2.1">Search_Attraction_Location</span> function will return the <math alttext="id" class="ltx_Math" display="inline" id="A3.T4.9.9.9.2.2.2.m2.1"><semantics id="A3.T4.9.9.9.2.2.2.m2.1a"><mrow id="A3.T4.9.9.9.2.2.2.m2.1.1" xref="A3.T4.9.9.9.2.2.2.m2.1.1.cmml"><mi id="A3.T4.9.9.9.2.2.2.m2.1.1.2" xref="A3.T4.9.9.9.2.2.2.m2.1.1.2.cmml">i</mi><mo id="A3.T4.9.9.9.2.2.2.m2.1.1.1" xref="A3.T4.9.9.9.2.2.2.m2.1.1.1.cmml">⁢</mo><mi id="A3.T4.9.9.9.2.2.2.m2.1.1.3" xref="A3.T4.9.9.9.2.2.2.m2.1.1.3.cmml">d</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.9.9.9.2.2.2.m2.1b"><apply id="A3.T4.9.9.9.2.2.2.m2.1.1.cmml" xref="A3.T4.9.9.9.2.2.2.m2.1.1"><times id="A3.T4.9.9.9.2.2.2.m2.1.1.1.cmml" xref="A3.T4.9.9.9.2.2.2.m2.1.1.1"></times><ci id="A3.T4.9.9.9.2.2.2.m2.1.1.2.cmml" xref="A3.T4.9.9.9.2.2.2.m2.1.1.2">𝑖</ci><ci id="A3.T4.9.9.9.2.2.2.m2.1.1.3.cmml" xref="A3.T4.9.9.9.2.2.2.m2.1.1.3">𝑑</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.9.9.9.2.2.2.m2.1c">id</annotation><annotation encoding="application/x-llamapun" id="A3.T4.9.9.9.2.2.2.m2.1d">italic_i italic_d</annotation></semantics></math> for different attractions.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.13.13.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.13.13.17.1">time</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.17.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.17.2.1">
<span class="ltx_p" id="A3.T4.13.13.17.2.1.1" style="width:170.7pt;">time="08:00"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.13.13.17.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.17.3.1">
<span class="ltx_p" id="A3.T4.13.13.17.3.1.1" style="width:341.4pt;">Parameters related to time, like: pick-up-time, drop-off-time,etc.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.10.10.10.2">sort_by</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.10.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.10.10.10.3.1">
<span class="ltx_p" id="A3.T4.10.10.10.3.1.1" style="width:170.7pt;">sort_by="popularity"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.10.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.10.10.10.1.1">
<span class="ltx_p" id="A3.T4.10.10.10.1.1.1" style="width:341.4pt;">The <math alttext="sort\_by" class="ltx_Math" display="inline" id="A3.T4.10.10.10.1.1.1.m1.1"><semantics id="A3.T4.10.10.10.1.1.1.m1.1a"><mrow id="A3.T4.10.10.10.1.1.1.m1.1.1" xref="A3.T4.10.10.10.1.1.1.m1.1.1.cmml"><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.2" xref="A3.T4.10.10.10.1.1.1.m1.1.1.2.cmml">s</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.3" xref="A3.T4.10.10.10.1.1.1.m1.1.1.3.cmml">o</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1a" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.4" xref="A3.T4.10.10.10.1.1.1.m1.1.1.4.cmml">r</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1b" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.5" xref="A3.T4.10.10.10.1.1.1.m1.1.1.5.cmml">t</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1c" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.6" mathvariant="normal" xref="A3.T4.10.10.10.1.1.1.m1.1.1.6.cmml">_</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1d" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.7" xref="A3.T4.10.10.10.1.1.1.m1.1.1.7.cmml">b</mi><mo id="A3.T4.10.10.10.1.1.1.m1.1.1.1e" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.10.10.10.1.1.1.m1.1.1.8" xref="A3.T4.10.10.10.1.1.1.m1.1.1.8.cmml">y</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.10.10.10.1.1.1.m1.1b"><apply id="A3.T4.10.10.10.1.1.1.m1.1.1.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1"><times id="A3.T4.10.10.10.1.1.1.m1.1.1.1.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.1"></times><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.2.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.2">𝑠</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.3.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.3">𝑜</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.4.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.4">𝑟</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.5.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.5">𝑡</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.6.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.6">_</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.7.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.7">𝑏</ci><ci id="A3.T4.10.10.10.1.1.1.m1.1.1.8.cmml" xref="A3.T4.10.10.10.1.1.1.m1.1.1.8">𝑦</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.10.10.10.1.1.1.m1.1c">sort\_by</annotation><annotation encoding="application/x-llamapun" id="A3.T4.10.10.10.1.1.1.m1.1d">italic_s italic_o italic_r italic_t _ italic_b italic_y</annotation></semantics></math> parameter controls the order in which hotel or flight results are presented. For example, the hotels can be sorted by price or popularity.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.11.11.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.11.11.11.2">type</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.11.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.11.11.11.3.1">
<span class="ltx_p" id="A3.T4.11.11.11.3.1.1" style="width:170.7pt;">type="landmark"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.11.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.11.11.11.1.1">
<span class="ltx_p" id="A3.T4.11.11.11.1.1.1" style="width:341.4pt;">The <math alttext="type" class="ltx_Math" display="inline" id="A3.T4.11.11.11.1.1.1.m1.1"><semantics id="A3.T4.11.11.11.1.1.1.m1.1a"><mrow id="A3.T4.11.11.11.1.1.1.m1.1.1" xref="A3.T4.11.11.11.1.1.1.m1.1.1.cmml"><mi id="A3.T4.11.11.11.1.1.1.m1.1.1.2" xref="A3.T4.11.11.11.1.1.1.m1.1.1.2.cmml">t</mi><mo id="A3.T4.11.11.11.1.1.1.m1.1.1.1" xref="A3.T4.11.11.11.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.11.11.11.1.1.1.m1.1.1.3" xref="A3.T4.11.11.11.1.1.1.m1.1.1.3.cmml">y</mi><mo id="A3.T4.11.11.11.1.1.1.m1.1.1.1a" xref="A3.T4.11.11.11.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.11.11.11.1.1.1.m1.1.1.4" xref="A3.T4.11.11.11.1.1.1.m1.1.1.4.cmml">p</mi><mo id="A3.T4.11.11.11.1.1.1.m1.1.1.1b" xref="A3.T4.11.11.11.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.11.11.11.1.1.1.m1.1.1.5" xref="A3.T4.11.11.11.1.1.1.m1.1.1.5.cmml">e</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.11.11.11.1.1.1.m1.1b"><apply id="A3.T4.11.11.11.1.1.1.m1.1.1.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1"><times id="A3.T4.11.11.11.1.1.1.m1.1.1.1.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1.1"></times><ci id="A3.T4.11.11.11.1.1.1.m1.1.1.2.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1.2">𝑡</ci><ci id="A3.T4.11.11.11.1.1.1.m1.1.1.3.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1.3">𝑦</ci><ci id="A3.T4.11.11.11.1.1.1.m1.1.1.4.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1.4">𝑝</ci><ci id="A3.T4.11.11.11.1.1.1.m1.1.1.5.cmml" xref="A3.T4.11.11.11.1.1.1.m1.1.1.5">𝑒</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.11.11.11.1.1.1.m1.1c">type</annotation><annotation encoding="application/x-llamapun" id="A3.T4.11.11.11.1.1.1.m1.1d">italic_t italic_y italic_p italic_e</annotation></semantics></math> parameter is the entity type, like landmark, city, etc.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.12.12.12.2">age</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.12.12.12.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.12.12.12.3.1">
<span class="ltx_p" id="A3.T4.12.12.12.3.1.1" style="width:170.7pt;">age="8"</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T4.12.12.12.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.12.12.12.1.1">
<span class="ltx_p" id="A3.T4.12.12.12.1.1.1" style="width:341.4pt;">The <math alttext="age" class="ltx_Math" display="inline" id="A3.T4.12.12.12.1.1.1.m1.1"><semantics id="A3.T4.12.12.12.1.1.1.m1.1a"><mrow id="A3.T4.12.12.12.1.1.1.m1.1.1" xref="A3.T4.12.12.12.1.1.1.m1.1.1.cmml"><mi id="A3.T4.12.12.12.1.1.1.m1.1.1.2" xref="A3.T4.12.12.12.1.1.1.m1.1.1.2.cmml">a</mi><mo id="A3.T4.12.12.12.1.1.1.m1.1.1.1" xref="A3.T4.12.12.12.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.12.12.12.1.1.1.m1.1.1.3" xref="A3.T4.12.12.12.1.1.1.m1.1.1.3.cmml">g</mi><mo id="A3.T4.12.12.12.1.1.1.m1.1.1.1a" xref="A3.T4.12.12.12.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.12.12.12.1.1.1.m1.1.1.4" xref="A3.T4.12.12.12.1.1.1.m1.1.1.4.cmml">e</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.12.12.12.1.1.1.m1.1b"><apply id="A3.T4.12.12.12.1.1.1.m1.1.1.cmml" xref="A3.T4.12.12.12.1.1.1.m1.1.1"><times id="A3.T4.12.12.12.1.1.1.m1.1.1.1.cmml" xref="A3.T4.12.12.12.1.1.1.m1.1.1.1"></times><ci id="A3.T4.12.12.12.1.1.1.m1.1.1.2.cmml" xref="A3.T4.12.12.12.1.1.1.m1.1.1.2">𝑎</ci><ci id="A3.T4.12.12.12.1.1.1.m1.1.1.3.cmml" xref="A3.T4.12.12.12.1.1.1.m1.1.1.3">𝑔</ci><ci id="A3.T4.12.12.12.1.1.1.m1.1.1.4.cmml" xref="A3.T4.12.12.12.1.1.1.m1.1.1.4">𝑒</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.12.12.12.1.1.1.m1.1c">age</annotation><annotation encoding="application/x-llamapun" id="A3.T4.12.12.12.1.1.1.m1.1d">italic_a italic_g italic_e</annotation></semantics></math> parameter is the age of people.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.13.13.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T4.13.13.13.2">people</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T4.13.13.13.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.13.3.1">
<span class="ltx_p" id="A3.T4.13.13.13.3.1.1" style="width:170.7pt;">people=2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T4.13.13.13.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T4.13.13.13.1.1">
<span class="ltx_p" id="A3.T4.13.13.13.1.1.1" style="width:341.4pt;">The <math alttext="people" class="ltx_Math" display="inline" id="A3.T4.13.13.13.1.1.1.m1.1"><semantics id="A3.T4.13.13.13.1.1.1.m1.1a"><mrow id="A3.T4.13.13.13.1.1.1.m1.1.1" xref="A3.T4.13.13.13.1.1.1.m1.1.1.cmml"><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.2" xref="A3.T4.13.13.13.1.1.1.m1.1.1.2.cmml">p</mi><mo id="A3.T4.13.13.13.1.1.1.m1.1.1.1" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.3" xref="A3.T4.13.13.13.1.1.1.m1.1.1.3.cmml">e</mi><mo id="A3.T4.13.13.13.1.1.1.m1.1.1.1a" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.4" xref="A3.T4.13.13.13.1.1.1.m1.1.1.4.cmml">o</mi><mo id="A3.T4.13.13.13.1.1.1.m1.1.1.1b" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.5" xref="A3.T4.13.13.13.1.1.1.m1.1.1.5.cmml">p</mi><mo id="A3.T4.13.13.13.1.1.1.m1.1.1.1c" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.6" xref="A3.T4.13.13.13.1.1.1.m1.1.1.6.cmml">l</mi><mo id="A3.T4.13.13.13.1.1.1.m1.1.1.1d" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A3.T4.13.13.13.1.1.1.m1.1.1.7" xref="A3.T4.13.13.13.1.1.1.m1.1.1.7.cmml">e</mi></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.13.13.13.1.1.1.m1.1b"><apply id="A3.T4.13.13.13.1.1.1.m1.1.1.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1"><times id="A3.T4.13.13.13.1.1.1.m1.1.1.1.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.1"></times><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.2.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.2">𝑝</ci><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.3.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.3">𝑒</ci><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.4.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.4">𝑜</ci><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.5.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.5">𝑝</ci><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.6.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.6">𝑙</ci><ci id="A3.T4.13.13.13.1.1.1.m1.1.1.7.cmml" xref="A3.T4.13.13.13.1.1.1.m1.1.1.7">𝑒</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.13.13.13.1.1.1.m1.1c">people</annotation><annotation encoding="application/x-llamapun" id="A3.T4.13.13.13.1.1.1.m1.1d">italic_p italic_e italic_o italic_p italic_l italic_e</annotation></semantics></math> parameter is the number of people.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides examples of different parameter types used in the ComplexFuncBench dataset.  It illustrates the variety of data formats and structures (e.g., numbers, strings, lists, coordinates, enums) that LLMs must handle when interacting with real-world APIs.  Each parameter type is shown with sample values to clarify its usage in API function calls.
> <details>
> <summary>read the caption</summary>
> Table 4: Examples of different parameter types.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_align_middle" id="A3.tab1.1">
<tr class="ltx_tr" id="A3.tab1.1.1" style="background-color:#DBDBDB;">
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="A3.tab1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.1.1.1" style="background-color:#DBDBDB;">Query</span></td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.2">
<td class="ltx_td ltx_align_right" id="A3.tab1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.2.1.1">Initial</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.2.2.1">
<span class="ltx_p" id="A3.tab1.1.2.2.1.1" style="width:398.3pt;">My friend is planning a trip between December 15, 2024 and December 20, 2024 and he wants to fly from Sydney to Melbourne. Please help find the best flight options and book a 4star hotel near Fitzroy Gardens. They also need to rent a car and a taxi service from Melbourne Airport to the hotel.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.3.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.3.1.2">Human Annotated</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.3.2.1">
<span class="ltx_p" id="A3.tab1.1.3.2.1.1" style="width:398.3pt;">Please help my friend finds the best flight from Sydney to Melbourne on 15 December 2024 and book a hotel within 10km of Fitzroy Gardens, Melbourne <span class="ltx_text" id="A3.tab1.1.3.2.1.1.1" style="color:#006400;">for one night</span>. Remember to book a taxi to <span class="ltx_text" id="A3.tab1.1.3.2.1.1.2" style="color:#006400;">pick him up from the airport to the hotel an hour after the plane lands.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.4">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.4.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.4.1.2">Explanation</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.4.2.1">
<span class="ltx_p" id="A3.tab1.1.4.2.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.4.2.1.1.1">Correction</span>. Rewrite query for clarity, such as the number of days for the hotel reservation, the departure location, and the time for the taxi.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.5" style="background-color:#DBDBDB;">
<td class="ltx_td ltx_align_left ltx_border_tt ltx_border_t" colspan="2" id="A3.tab1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.5.1.1" style="background-color:#DBDBDB;">Function call at step 1</span></td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.6">
<td class="ltx_td ltx_align_right" id="A3.tab1.1.6.1" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.6.1.1">GPT Generated</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.6.2.1">
<span class="ltx_p" id="A3.tab1.1.6.2.1.1" style="width:398.3pt;">1. {"name": "Search_Flight_Location", "arguments": {"query": "Sydney"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.7.1.1">
<span class="ltx_p" id="A3.tab1.1.7.1.1.1" style="width:398.3pt;">2. {"name": "Search_Flight_Location", "arguments": {"query": "Melbourne"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.8.1.1">
<span class="ltx_p" id="A3.tab1.1.8.1.1.1" style="width:398.3pt;">3. {"name": "Location_to_Lat_Long", "arguments": {"query": "Fitzroy Gardens, Melbourne"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.9.1.1">
<span class="ltx_p" id="A3.tab1.1.9.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="A3.tab1.1.9.1.1.1.1" style="color:#FF0000;">4. {"name": "Taxi_Search_Location", "arguments": {"query": "Melbourne Airport"}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.10">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.10.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.10.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.10.1.2">Human Annotated</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.10.2.1">
<span class="ltx_p" id="A3.tab1.1.10.2.1.1" style="width:398.3pt;">1. {"name": "Search_Flight_Location", "arguments": {"query": "Sydney"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.11.1.1">
<span class="ltx_p" id="A3.tab1.1.11.1.1.1" style="width:398.3pt;">2. {"name": "Search_Flight_Location", "arguments": {"query": "Melbourne"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.12.1.1">
<span class="ltx_p" id="A3.tab1.1.12.1.1.1" style="width:398.3pt;">3. {"name": "Location_to_Lat_Long", "arguments": {"query": "Fitzroy Gardens, Melbourne"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.13">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.13.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.13.1.2">Explanation</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.13.2.1">
<span class="ltx_p" id="A3.tab1.1.13.2.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.13.2.1.1.1">Correction</span>. The arrive airport for the best flight may not be "Melbourne Airport". The model need to get the arrive airports before use "Taxi_Search_Location".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.14" style="background-color:#DBDBDB;">
<td class="ltx_td ltx_align_left ltx_border_tt ltx_border_t" colspan="2" id="A3.tab1.1.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.14.1.1" style="background-color:#DBDBDB;">API response at step 1</span></td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.15">
<td class="ltx_td ltx_align_right" id="A3.tab1.1.15.1" rowspan="4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.15.1.1">Initial</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.15.2.1">
<span class="ltx_p" id="A3.tab1.1.15.2.1.1" style="width:398.3pt;">1. {"message": "Success", "data": [{"id": "SYD.AIRPORT", "name": "Sydney Kingsford Smith Airport"}, <span class="ltx_text" id="A3.tab1.1.15.2.1.1.1" style="color:#0000FF;">{"id": "YQY.AIRPORT", "name": "Sydney (Nova Scotia) Airport"}]}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.16.1.1">
<span class="ltx_p" id="A3.tab1.1.16.1.1.1" style="width:398.3pt;">2. {"message": "Success", "data": [{"id": "MEL.CITY", "name": "Melbourne"}, <span class="ltx_text" id="A3.tab1.1.16.1.1.1.1" style="color:#0000FF;">{"id": "MEL.AIRPORT", "name": "Melbourne Airport"}, {"id": "AVV.AIRPORT", "name": "Avalon Airport"}, {"id": "MEB.AIRPORT", "name": "Essendon Fields Airport"}, {"id": "MLB.AIRPORT", "name": "Melbourne International Airport"}]}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.17.1.1">
<span class="ltx_p" id="A3.tab1.1.17.1.1.1" style="width:398.3pt;">3. {"message": "Success", "data": [{"business_status": "OPERATIONAL", "formatted_address": "Wellington Parade, East Melbourne VIC 3002, Australia" "geometry": {"location": {"lat": -37.81272149999999, "lng": 144.9800679}},"name": "Fitzroy Gardens"}]}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.18.1.1">
<span class="ltx_p" id="A3.tab1.1.18.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="A3.tab1.1.18.1.1.1.1" style="color:#FF0000;">4. {"message": "Success", "data": [{"longitude": 144.849, "city": "Melbourne", "name": "Melbourne Airport", "latitude": -37.6696}, {"city": "Melbourne", "longitude": -80.6456, "name": "Melbourne International Airport", "latitude": 28.1025}]}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.19">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.19.1" rowspan="3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.19.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.19.1.2">Human Annotated</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.19.2.1">
<span class="ltx_p" id="A3.tab1.1.19.2.1.1" style="width:398.3pt;">1. {"message": "Success", "data": [{ "id": "SYD.AIRPORT", "name": "Sydney Kingsford Smith Airport"}]},</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.20.1.1">
<span class="ltx_p" id="A3.tab1.1.20.1.1.1" style="width:398.3pt;">2. {"message": "Success", "data": [{"id": "MEL.CITY", "name": "Melbourne"}]},</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.21.1.1">
<span class="ltx_p" id="A3.tab1.1.21.1.1.1" style="width:398.3pt;">3. {"message": "Success", "data": [{"business_status": "OPERATIONAL", "formatted_address": "Wellington Parade, East Melbourne VIC 3002, Australia" "geometry": {"location": {"lat": -37.81272149999999, "lng": 144.9800679}},"name": "Fitzroy Gardens"}]}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.22">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.22.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.22.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.22.1.2">Explanation</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.22.2.1">
<span class="ltx_p" id="A3.tab1.1.22.2.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.22.2.1.1.1">Disambiguation</span>. Delete API response that may cause ambiguation for subsequent steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.23" style="background-color:#DBDBDB;">
<td class="ltx_td ltx_align_left ltx_border_tt ltx_border_t" colspan="2" id="A3.tab1.1.23.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.23.1.1" style="background-color:#DBDBDB;">Function call at step 2</span></td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.24">
<td class="ltx_td ltx_align_right" id="A3.tab1.1.24.1" rowspan="5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.24.1.1">GPT Generated</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.24.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.24.2.1">
<span class="ltx_p" id="A3.tab1.1.24.2.1.1" style="width:398.3pt;">1. {"name": "Search_Flights", "arguments": {"fromId": "SYD.AIRPORT", "toId": "MEL.CITY", "departDate": "2024-12-15", "sort": "BEST"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.25.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.25.1.1">
<span class="ltx_p" id="A3.tab1.1.25.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="A3.tab1.1.25.1.1.1.1" style="color:#FF0000;">2. {"name": "Search_Flights", "arguments": {"fromId": "YQY.AIRPORT", "toId": "MEL.CITY", "departDate": "2024-12-15", "sort": "BEST"}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.26.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.26.1.1">
<span class="ltx_p" id="A3.tab1.1.26.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="A3.tab1.1.26.1.1.1.1" style="color:#FF0000;">3. {"name": "Search_Flights", "arguments": {"fromId": "SYD.AIRPORT", "toId": "AVV.AIRPORT", "departDate": "2024-12-15", "sort": "BEST"}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.27">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.27.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.27.1.1">
<span class="ltx_p" id="A3.tab1.1.27.1.1.1" style="width:398.3pt;"><span class="ltx_text" id="A3.tab1.1.27.1.1.1.1" style="color:#FF0000;">4. {"name": "Search_Flights", "arguments": {"fromId": "YQY.AIRPORT", "toId": "AVV.AIRPORT", "departDate": "2024-12-15", "sort": "BEST"}}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.28">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.28.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.28.1.1">
<span class="ltx_p" id="A3.tab1.1.28.1.1.1" style="width:398.3pt;">5. {"name": "Search_Hotels_By_Coordinates", "arguments": {"latitude": "-37.81272149999999", "longitude": "144.9800679", "arrival_date": "2024-12-15", "departure_date": "2024-12-20", "radius": 10}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.29">
<td class="ltx_td ltx_align_right ltx_border_tt" id="A3.tab1.1.29.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.29.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.29.1.2">Human Annotated</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A3.tab1.1.29.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.29.2.1">
<span class="ltx_p" id="A3.tab1.1.29.2.1.1" style="width:398.3pt;">1. {"name": "Search_Flights", "arguments": {"fromId": "SYD.AIRPORT", "toId": "MEL.CITY", "departDate": "2024-12-15", "sort": "BEST"}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.30">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A3.tab1.1.30.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.30.1.1">
<span class="ltx_p" id="A3.tab1.1.30.1.1.1" style="width:398.3pt;">2. {"name": "Search_Hotels_By_Coordinates", "arguments": {"latitude": "-37.81272149999999", "longitude": "144.9800679", "arrival_date": "2024-12-15", "departure_date": "2024-12-20", "radius": 10}}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.tab1.1.31">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_tt" id="A3.tab1.1.31.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.tab1.1.31.1.1">\hdashline</span>
<span class="ltx_text ltx_font_bold" id="A3.tab1.1.31.1.2">Explanation</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_tt" id="A3.tab1.1.31.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.tab1.1.31.2.1">
<span class="ltx_p" id="A3.tab1.1.31.2.1.1" style="width:398.3pt;"><span class="ltx_text ltx_font_bold" id="A3.tab1.1.31.2.1.1.1">Correction</span>. After delete ambiguous information in the API response, we need to remove redundant function calls.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table illustrates the annotation process for a single sample within the ComplexFuncBench dataset.  It demonstrates how a user query is refined, the function calls generated by the model at each step, the API responses received, and the subsequent corrections and disambiguation steps taken by human annotators.  The process highlights how the model may generate multiple function calls that are then refined by human annotators to select the optimal path for resolving the query. The most significant detail to note is that while the table displays shortened API responses for brevity, the complete API responses used in the annotation process contain significantly more information, exceeding a context length of 128 kilobytes.
> <details>
> <summary>read the caption</summary>
> Table 5: Annotation Example. To make the content easy for reading, we have removed most of the content from the API response. The actual API response contains a large amount of information, reaching a context length of 128k.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.10132/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.10132/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}