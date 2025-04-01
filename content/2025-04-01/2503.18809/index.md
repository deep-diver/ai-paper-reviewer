---
title: "Classical Planning with LLM-Generated Heuristics: Challenging the State of the Art with Python Code"
summary: "LLMs generate Python heuristics for classical planning, outperforming traditional methods and challenging the state-of-the-art planning techniques."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 University of Oxford",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18809 {{< /keyword >}}
{{< keyword icon="writer" >}} Augusto B. Corrêa et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18809" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18809" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18809/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) have shown promise in various AI tasks, but they often struggle with reliable planning. Even with advanced prompting or fine-tuning, LLMs tend to produce incorrect plans and fail to generalize to larger tasks. Existing approaches often rely on manually crafted or learned heuristics for specific domains, incurring significant human effort or computational cost whenever new domains are introduced.



This paper introduces a novel approach: using LLMs to automatically generate domain-dependent heuristic functions in Python. This **method involves prompting the LLM to generate multiple candidate heuristics, evaluating them on a training set, and selecting the strongest one**. This process yielded heuristics that outperformed state-of-the-art domain-independent heuristics and were competitive with learning algorithms. The results showed **LLM-generated heuristics sometimes expand fewer states** than existing heuristics. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can generate effective domain-dependent heuristics for classical planning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLM-generated heuristics can outperform state-of-the-art domain-independent heuristics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A sampling-based approach can improve the planning capabilities of LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work offers a new perspective on leveraging LLMs for automated planning, potentially shifting the focus from direct planning to heuristic generation. By demonstrating the effectiveness of LLM-generated heuristics, it opens new avenues for integrating LLMs into existing planning systems and improving their efficiency and scalability. It also highlights the importance of task-dependent heuristics.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.2.1.1.2">Gemini 2.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T1.2.1.1.3">DeepSeek</th>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T1.2.2.2.1">Model</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.2">Flash</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.3">Flash Think.</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.4">V3</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.5">R1 Dist.</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.2.2.6">R1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.3.1.1">Estimated Cost (USD)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.3.1.2">$0.70</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.3.1.3">–</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.3.1.4">$0.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.3.1.5">–</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.3.1.6">$6.12</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.4.2.1">Cost per Heuristic (USD)</th>
<td class="ltx_td ltx_align_right" id="S4.T1.2.4.2.2">$0.00350</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.4.2.3">–</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.4.2.4">$0.00125</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.4.2.5">–</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.4.2.6">$0.03060</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.5.3.1">Cost per Domain (USD)</th>
<td class="ltx_td ltx_align_right" id="S4.T1.2.5.3.2">$0.08750</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.5.3.3">–</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.5.3.4">$0.03125</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.5.3.5">–</td>
<td class="ltx_td ltx_align_right" id="S4.T1.2.5.3.6">$0.76500</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.6.4.1">Failure Rate (% heuristics)</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.2.6.4.2">22.0%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.2.6.4.3">12.5%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.2.6.4.4">14.0%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.2.6.4.5">64.5%</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.2.6.4.6">8.5%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a cost-benefit analysis of using different Large Language Models (LLMs) to generate heuristics for classical planning.  It shows the estimated cost (in USD) of generating 200 heuristics using each LLM (25 heuristics per domain, across 8 domains). The failure rate, representing the percentage of generated heuristics that failed to function correctly across all training tasks, is also reported. Note that pricing for Gemini 2.0 Flash Thinking and the distilled R1 model (R1 Dist.) is not provided due to their availability only through free tiers or local execution, respectively.
> <details>
> <summary>read the caption</summary>
> Table 1: Cost and failure rate for each LLM variant. Each LLM generates 200 heuristics (25 heuristics for each of the 8 domains). “R1 Dist.” is the distillation of R1 to Qwen 14B. Since Gemini 2.0 Flash Thinking (“Flash Think.”) is only available in the free tier API, and “R1 Dist.” can be run locally but not through the paid API, we do not estimate their prices. We consider a generated heuristic a failure if it crashes for all training tasks and we do not re-generate such heuristics.
> </details>





### In-depth insights


#### LLM Heuristic++
While “LLM Heuristic++” isn't a specific heading in the document, we can infer its meaning based on the paper's content. It likely refers to **using Large Language Models (LLMs) to generate heuristics for classical planning problems, going beyond existing LLM-based heuristic generation techniques.** The '++' suggests an enhancement or improvement. A LLM could automatically produce domain-dependent heuristic functions by sampling various candidate functions and selecting the best one, improving performance in unseen tasks. This could involve better prompt engineering, more efficient search algorithms, or even LLMs generating code for heuristic functions that are both accurate and computationally efficient. **This approach challenges traditional domain-independent heuristics and potentially outperforms them.** Furthermore, it hints at a future where LLMs can play a more significant role in solving complex AI problems by generating high-quality, domain-specific knowledge.

#### Python's Edge
**Python’s edge in AI, particularly in planning, stems from its accessibility and rapid prototyping capabilities.** The research paper cleverly leverages this by using Python-based Pyperplan, despite its performance limitations compared to C++ planners. This allows for easier integration with LLMs, as demonstrated by code injection. The unoptimized nature of Pyperplan emphasizes the strength of LLM-generated heuristics. LLMs demonstrate a proficiency in Python code generation, surpassing their capabilities in other languages. This facilitates code manipulation, making Python the ideal platform. The LLM's capacity to generate effective Python code for heuristic functions allows for a modular approach to classical planning. This approach is competitive and can generate new powerful tools. **Python acts as a bridge between high-level AI reasoning and concrete planning implementations.**

#### Beyond HFF
**Beyond hFF** signifies exploring heuristic functions for classical planning that surpass the limitations of the hFF heuristic. The hFF heuristic, while widely used, often suffers from inaccuracies due to its reliance on a relaxed plan. Consequently, future research should focus on alternative approaches that can provide more accurate and informative estimates of the distance to the goal. This includes incorporating domain knowledge through machine learning or other techniques to learn heuristics tailored to specific problem characteristics. Efforts should be directed towards creating heuristics that more effectively navigate the search space, leading to faster plan generation and improved overall performance. Such approaches might involve learning intricate relationships between state variables, extracting relevant features, and combining multiple heuristic estimates. By moving beyond hFF, the potential exists to develop planning systems capable of solving more complex problems with greater efficiency.

#### Scalable Plans
While the paper does not explicitly discuss 'Scalable Plans', we can infer relevant insights from its focus on LLM-generated heuristics for classical planning.  The success of LLMs in generating heuristics that outperform traditional methods suggests a pathway to addressing the scalability challenges inherent in classical planning. **The LLM-generated heuristics allow plans to scale better as they capture domain-specific knowledge, enabling more efficient search.** Traditional domain-independent heuristics often suffer in larger problem instances due to their lack of awareness of the specific problem structure.  The LLMs, by being exposed to domain descriptions and examples, create heuristics that better guide the search, potentially leading to plans that scale more effectively. Future research is to explore how LLMs can be used to create hierarchical planning strategies or automatically decompose large problems into smaller, more manageable subproblems to generate scalable plans.

#### Prompt Strength
The efficacy of a prompt in eliciting desired responses from Large Language Models (LLMs) hinges on several factors. **A strong prompt provides clear instructions**, a well-defined context, and relevant examples to guide the LLM's generation process. It effectively communicates the task's objective and constraints, leaving minimal room for ambiguity. **Moreover, it can incorporate elements like chain-of-thought reasoning or step-by-step guidance to encourage more structured and logical outputs**. The strength of a prompt is also related to how well it aligns with the LLM's pre-training data and the degree to which it leverages the model's inherent capabilities. A carefully crafted prompt can significantly enhance the quality, accuracy, and coherence of the generated content, enabling LLMs to tackle complex tasks with improved performance and reliability. Finding the balance between being overly prescriptive, which may stifle creativity, and too vague, which would lead to irrelevant responses, is crucial in building the best prompt. Furthermore, prompt engineering techniques such as iteratively refining and testing different prompt variations can help to identify the optimal prompt for a given task. **A strong prompt can effectively unlock the full potential of LLMs**, resulting in more valuable and insightful outcomes. 


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.3.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.3.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.3.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.3.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.2.3.1.4">Gemini 2.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T2.2.3.1.5">DeepSeek</th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T2.2.2.3">Domain</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T2.1.1.1"><math alttext="h^{0}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><msup id="S4.T2.1.1.1.m1.1.1" xref="S4.T2.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.m1.1.1.2.cmml">h</mi><mn id="S4.T2.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.m1.1.1.3.cmml">0</mn></msup><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T2.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.m1.1.1.2">ℎ</ci><cn id="S4.T2.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T2.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">h^{0}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">italic_h start_POSTSUPERSCRIPT 0 end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" id="S4.T2.2.2.2"><math alttext="h^{\mathrm{FF}}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><msup id="S4.T2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.m1.1.1.cmml"><mi id="S4.T2.2.2.2.m1.1.1.2" xref="S4.T2.2.2.2.m1.1.1.2.cmml">h</mi><mi id="S4.T2.2.2.2.m1.1.1.3" xref="S4.T2.2.2.2.m1.1.1.3.cmml">FF</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><apply id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.2.2.2.m1.1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">superscript</csymbol><ci id="S4.T2.2.2.2.m1.1.1.2.cmml" xref="S4.T2.2.2.2.m1.1.1.2">ℎ</ci><ci id="S4.T2.2.2.2.m1.1.1.3.cmml" xref="S4.T2.2.2.2.m1.1.1.3">FF</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">h^{\mathrm{FF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">italic_h start_POSTSUPERSCRIPT roman_FF end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.4">Flash</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.5">Flash Think.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.6">V3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.7">R1 Dist.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.2.8">R1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.4.1.1">Blocksworld (90)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.2">6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.3">24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.4">35</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.5">37</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.6">37</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.7">34</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.4.1.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.4.1.8.1" style="background-color:#FFBFBF;">66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.5.2.1">Childsnack (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.2">9</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.3">17</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.4" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.5.2.4.1" style="background-color:#FFBFBF;">32</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.5">14</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.6">32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.7">16</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.5.2.8">22</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.6.3.1">Floortile (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.2">1</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.3" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.6.3.3.1" style="background-color:#FFBFBF;">10</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.4">4</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.5">8</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.6">4</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.7">3</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.6.3.8">4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.7.4.1">Miconic (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.2">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.3">74</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.4" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.7.4.4.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.5">88</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.6">74</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.7">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.7.4.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.7.4.8.1" style="background-color:#FFBFBF;">90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.8.5.1">Rovers (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.2">12</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.3">28</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.4">32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.5" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.8.5.5.1" style="background-color:#FFBFBF;">39</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.6">32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.7">32</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.8.5.8">32</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.9.6.1">Sokoban (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.2">24</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.3">31</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.4">31</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.5" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.9.6.5.1" style="background-color:#FFBFBF;">32</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.6">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.7">24</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.9.6.8">30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.10.7.1">Spanner (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.2">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.3">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.4">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.5">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.6">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.7">30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.10.7.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.10.7.8.1" style="background-color:#FFBFBF;">70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.11.8.1">Transport (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.2">8</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.3">29</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.4">42</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.5">57</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.6">44</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.7">45</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.11.8.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.11.8.8.1" style="background-color:#FFBFBF;">59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.1">Sum (720)</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.2">120</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.3">243</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.4">296</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.5">305</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.6">283</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.7">214</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.2.12.9.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T2.2.12.9.8.1" style="background-color:#FFBFBF;">373</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different heuristic functions used within the Greedy Best-First Search (GBFS) algorithm implemented in the Pyperplan planner.  It shows the number of tasks successfully solved (coverage) by three methods across eight different planning domains. The methods compared are: (1) a blind heuristic (h0), which doesn't use any heuristic information; (2) the hFF heuristic, a commonly used domain-independent heuristic; and (3) several LLM-generated heuristics (one for each of eight planning domains).  The results indicate how effectively the LLM-generated domain-dependent heuristics improve the planner's ability to solve tasks compared to the baseline methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Coverage of GBFS within Pyperplan using the blind heuristic h0superscriptℎ0h^{0}italic_h start_POSTSUPERSCRIPT 0 end_POSTSUPERSCRIPT, hFFsuperscriptℎFFh^{\mathrm{FF}}italic_h start_POSTSUPERSCRIPT roman_FF end_POSTSUPERSCRIPTand our LLM-generated heuristics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.9.10.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.9.10.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S4.T3.9.10.1.2">Fast Downward (C++)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.9.10.1.3">Pyperplan</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.9.10">Domain</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.1.1"><math alttext="h^{\mathrm{GC}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><msup id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">h</mi><mi id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">GC</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">superscript</csymbol><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">ℎ</ci><ci id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">GC</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">h^{\mathrm{GC}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_h start_POSTSUPERSCRIPT roman_GC end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.2.2.2"><math alttext="h^{\mathrm{lmc}}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><msup id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.m1.1.1.2" xref="S4.T3.2.2.2.m1.1.1.2.cmml">h</mi><mi id="S4.T3.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.m1.1.1.3.cmml">lmc</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">superscript</csymbol><ci id="S4.T3.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.m1.1.1.2">ℎ</ci><ci id="S4.T3.2.2.2.m1.1.1.3.cmml" xref="S4.T3.2.2.2.m1.1.1.3">lmc</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">h^{\mathrm{lmc}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">italic_h start_POSTSUPERSCRIPT roman_lmc end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.3.3.3"><math alttext="h^{\mathrm{FF}}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><msup id="S4.T3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.m1.1.1.cmml"><mi id="S4.T3.3.3.3.m1.1.1.2" xref="S4.T3.3.3.3.m1.1.1.2.cmml">h</mi><mi id="S4.T3.3.3.3.m1.1.1.3" xref="S4.T3.3.3.3.m1.1.1.3.cmml">FF</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><apply id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.m1.1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">superscript</csymbol><ci id="S4.T3.3.3.3.m1.1.1.2.cmml" xref="S4.T3.3.3.3.m1.1.1.2">ℎ</ci><ci id="S4.T3.3.3.3.m1.1.1.3.cmml" xref="S4.T3.3.3.3.m1.1.1.3">FF</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">h^{\mathrm{FF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">italic_h start_POSTSUPERSCRIPT roman_FF end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.4.4.4"><math alttext="h^{\mathrm{cea}}" class="ltx_Math" display="inline" id="S4.T3.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.m1.1a"><msup id="S4.T3.4.4.4.m1.1.1" xref="S4.T3.4.4.4.m1.1.1.cmml"><mi id="S4.T3.4.4.4.m1.1.1.2" xref="S4.T3.4.4.4.m1.1.1.2.cmml">h</mi><mi id="S4.T3.4.4.4.m1.1.1.3" xref="S4.T3.4.4.4.m1.1.1.3.cmml">cea</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.m1.1b"><apply id="S4.T3.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.4.m1.1.1.1.cmml" xref="S4.T3.4.4.4.m1.1.1">superscript</csymbol><ci id="S4.T3.4.4.4.m1.1.1.2.cmml" xref="S4.T3.4.4.4.m1.1.1.2">ℎ</ci><ci id="S4.T3.4.4.4.m1.1.1.3.cmml" xref="S4.T3.4.4.4.m1.1.1.3">cea</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.m1.1c">h^{\mathrm{cea}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.m1.1d">italic_h start_POSTSUPERSCRIPT roman_cea end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.5.5.5"><math alttext="h^{\mathrm{cg}}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.m1.1"><semantics id="S4.T3.5.5.5.m1.1a"><msup id="S4.T3.5.5.5.m1.1.1" xref="S4.T3.5.5.5.m1.1.1.cmml"><mi id="S4.T3.5.5.5.m1.1.1.2" xref="S4.T3.5.5.5.m1.1.1.2.cmml">h</mi><mi id="S4.T3.5.5.5.m1.1.1.3" xref="S4.T3.5.5.5.m1.1.1.3.cmml">cg</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.m1.1b"><apply id="S4.T3.5.5.5.m1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.m1.1.1.1.cmml" xref="S4.T3.5.5.5.m1.1.1">superscript</csymbol><ci id="S4.T3.5.5.5.m1.1.1.2.cmml" xref="S4.T3.5.5.5.m1.1.1.2">ℎ</ci><ci id="S4.T3.5.5.5.m1.1.1.3.cmml" xref="S4.T3.5.5.5.m1.1.1.3">cg</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.m1.1c">h^{\mathrm{cg}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.m1.1d">italic_h start_POSTSUPERSCRIPT roman_cg end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.6.6.6"><math alttext="h^{\mathrm{add}}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.m1.1"><semantics id="S4.T3.6.6.6.m1.1a"><msup id="S4.T3.6.6.6.m1.1.1" xref="S4.T3.6.6.6.m1.1.1.cmml"><mi id="S4.T3.6.6.6.m1.1.1.2" xref="S4.T3.6.6.6.m1.1.1.2.cmml">h</mi><mi id="S4.T3.6.6.6.m1.1.1.3" xref="S4.T3.6.6.6.m1.1.1.3.cmml">add</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.m1.1b"><apply id="S4.T3.6.6.6.m1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.6.m1.1.1.1.cmml" xref="S4.T3.6.6.6.m1.1.1">superscript</csymbol><ci id="S4.T3.6.6.6.m1.1.1.2.cmml" xref="S4.T3.6.6.6.m1.1.1.2">ℎ</ci><ci id="S4.T3.6.6.6.m1.1.1.3.cmml" xref="S4.T3.6.6.6.m1.1.1.3">add</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.m1.1c">h^{\mathrm{add}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.m1.1d">italic_h start_POSTSUPERSCRIPT roman_add end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.7.7.7"><math alttext="h^{\mathrm{WLF}}_{\mathrm{GPR}}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.m1.1"><semantics id="S4.T3.7.7.7.m1.1a"><msubsup id="S4.T3.7.7.7.m1.1.1" xref="S4.T3.7.7.7.m1.1.1.cmml"><mi id="S4.T3.7.7.7.m1.1.1.2.2" xref="S4.T3.7.7.7.m1.1.1.2.2.cmml">h</mi><mi id="S4.T3.7.7.7.m1.1.1.3" xref="S4.T3.7.7.7.m1.1.1.3.cmml">GPR</mi><mi id="S4.T3.7.7.7.m1.1.1.2.3" xref="S4.T3.7.7.7.m1.1.1.2.3.cmml">WLF</mi></msubsup><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.m1.1b"><apply id="S4.T3.7.7.7.m1.1.1.cmml" xref="S4.T3.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.7.m1.1.1.1.cmml" xref="S4.T3.7.7.7.m1.1.1">subscript</csymbol><apply id="S4.T3.7.7.7.m1.1.1.2.cmml" xref="S4.T3.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.7.m1.1.1.2.1.cmml" xref="S4.T3.7.7.7.m1.1.1">superscript</csymbol><ci id="S4.T3.7.7.7.m1.1.1.2.2.cmml" xref="S4.T3.7.7.7.m1.1.1.2.2">ℎ</ci><ci id="S4.T3.7.7.7.m1.1.1.2.3.cmml" xref="S4.T3.7.7.7.m1.1.1.2.3">WLF</ci></apply><ci id="S4.T3.7.7.7.m1.1.1.3.cmml" xref="S4.T3.7.7.7.m1.1.1.3">GPR</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.m1.1c">h^{\mathrm{WLF}}_{\mathrm{GPR}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.m1.1d">italic_h start_POSTSUPERSCRIPT roman_WLF end_POSTSUPERSCRIPT start_POSTSUBSCRIPT roman_GPR end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.8.8.8"><math alttext="h^{\mathrm{FF}}" class="ltx_Math" display="inline" id="S4.T3.8.8.8.m1.1"><semantics id="S4.T3.8.8.8.m1.1a"><msup id="S4.T3.8.8.8.m1.1.1" xref="S4.T3.8.8.8.m1.1.1.cmml"><mi id="S4.T3.8.8.8.m1.1.1.2" xref="S4.T3.8.8.8.m1.1.1.2.cmml">h</mi><mi id="S4.T3.8.8.8.m1.1.1.3" xref="S4.T3.8.8.8.m1.1.1.3.cmml">FF</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.m1.1b"><apply id="S4.T3.8.8.8.m1.1.1.cmml" xref="S4.T3.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.8.8.8.m1.1.1.1.cmml" xref="S4.T3.8.8.8.m1.1.1">superscript</csymbol><ci id="S4.T3.8.8.8.m1.1.1.2.cmml" xref="S4.T3.8.8.8.m1.1.1.2">ℎ</ci><ci id="S4.T3.8.8.8.m1.1.1.3.cmml" xref="S4.T3.8.8.8.m1.1.1.3">FF</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.m1.1c">h^{\mathrm{FF}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.m1.1d">italic_h start_POSTSUPERSCRIPT roman_FF end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.9.9"><math alttext="h^{\mathrm{R1}}" class="ltx_Math" display="inline" id="S4.T3.9.9.9.m1.1"><semantics id="S4.T3.9.9.9.m1.1a"><msup id="S4.T3.9.9.9.m1.1.1" xref="S4.T3.9.9.9.m1.1.1.cmml"><mi id="S4.T3.9.9.9.m1.1.1.2" xref="S4.T3.9.9.9.m1.1.1.2.cmml">h</mi><mi id="S4.T3.9.9.9.m1.1.1.3" xref="S4.T3.9.9.9.m1.1.1.3.cmml">R1</mi></msup><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.m1.1b"><apply id="S4.T3.9.9.9.m1.1.1.cmml" xref="S4.T3.9.9.9.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.9.9.9.m1.1.1.1.cmml" xref="S4.T3.9.9.9.m1.1.1">superscript</csymbol><ci id="S4.T3.9.9.9.m1.1.1.2.cmml" xref="S4.T3.9.9.9.m1.1.1.2">ℎ</ci><ci id="S4.T3.9.9.9.m1.1.1.3.cmml" xref="S4.T3.9.9.9.m1.1.1.3">R1</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.m1.1c">h^{\mathrm{R1}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.m1.1d">italic_h start_POSTSUPERSCRIPT R1 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.11.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.9.11.2.1">Blocksworld (90)</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.2">32</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.3">39</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.4">27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.5">40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.6">34</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.7">44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.11.2.8.1" style="background-color:#FFBFBF;">72</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.9">24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.9.11.2.10">66</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.12.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.12.3.1">Childsnack (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.2">23</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.3">13</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.4">25</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.5" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.12.3.5.1" style="background-color:#FFBFBF;">29</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.6" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.12.3.6.1" style="background-color:#FFBFBF;">29</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.7">29</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.12.3.8.1" style="background-color:#FFBFBF;">31</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.9">17</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.12.3.10">22</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.13.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.13.4.1">Floortile (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.2">3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.3">3</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.4">12</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.5">10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.6">7</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.7" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.13.4.7.1" style="background-color:#FFBFBF;">14</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.8">2</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.9">10</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.13.4.10">4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.14.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.14.5.1">Miconic (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.2" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.2.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.3" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.3.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.4" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.4.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.5">79</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.6" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.6.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.7" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.7.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.8.1" style="background-color:#FFBFBF;">90</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.9">74</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.14.5.10" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.14.5.10.1" style="background-color:#FFBFBF;">90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.15.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.15.6.1">Rovers (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.2">38</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.3" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.15.6.3.1" style="background-color:#FFBFBF;">41</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.4">34</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.5">36</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.6">39</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.7">33</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.8">37</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.9">28</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.15.6.10">32</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.16.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.16.7.1">Sokoban (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.2">42</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.3" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.16.7.3.1" style="background-color:#FFBFBF;">43</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.4">36</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.5">33</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.6">35</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.7">33</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.8">38</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.9">31</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.16.7.10">30</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.17.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.17.8.1">Spanner (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.2">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.3">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.4">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.5">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.6">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.7">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.8" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.17.8.8.1" style="background-color:#FFBFBF;">73</span></td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.9">30</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.17.8.10">70</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.18.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.18.9.1">Transport (90)</th>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.2">36</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.3">36</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.4">41</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.5">49</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.6">54</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.7">51</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.8">28</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.9">29</td>
<td class="ltx_td ltx_align_right" id="S4.T3.9.18.9.10" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.18.9.10.1" style="background-color:#FFBFBF;">59</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.19.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.1">Sum (720)</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.2">294</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.3">295</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.4">295</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.5">306</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.6">318</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.7">324</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.8">371</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.9">243</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.9.19.10.10" style="background-color:#FFBFBF;"><span class="ltx_text" id="S4.T3.9.19.10.10.1" style="background-color:#FFBFBF;">373</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the performance of various heuristic functions in two different planning systems: Fast Downward and Pyperplan.  Fast Downward is a highly optimized C++ planner, while Pyperplan is a Python-based planner, less optimized but easier to use for experimentation. The table shows the number of successfully solved tasks (coverage) out of a total of 720 tasks for each heuristic across different planning domains.  Heuristics used include several state-of-the-art domain-independent heuristics such as hGC, hlmc, hFF, hcea, hcg, and hadd, as well as a domain-independent learned heuristic, hWLF. The table also includes the performance of the heuristics generated by the DeepSeek R1 large language model (LLM), denoted as hR1.  This allows for a direct comparison of LLM-generated heuristics against standard domain-independent and learned heuristics, and a comparison between the performance of the heuristics in a highly optimized vs a less optimized planning system.
> <details>
> <summary>read the caption</summary>
> Table 3: Coverage for different heuristics implemented in Fast Downward, and in Pyperplan. Heuristic hR⁢1superscriptℎ𝑅1h^{R1}italic_h start_POSTSUPERSCRIPT italic_R 1 end_POSTSUPERSCRIPT indicates the heuristics generated by DeepSeek R1.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18809/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18809/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}