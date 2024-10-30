---
title: "Revealing the Barriers of Language Agents in Planning"
summary: "Language agents struggle with planning due to limited constraint understanding and the diminishing influence of goals, hindering human-level performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12409 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper investigates why current language agents, powered by large language models, underperform in planning tasks.  The core finding is that these agents don't effectively use constraints (rules and restrictions) or maintain a strong focus on the ultimate goal as plans get more complex. They tested this using two benchmarks, one simple and one real-world.  They explored two common strategies to improve planning:  updating episodic memory (like a short-term memory) and parametric memory (improving the model itself).  While both strategies helped, they didn't solve the core issues.  In essence, the AI models take "shortcuts" and don't exhibit true human-like reasoning and planning capabilities. This research is important because it sheds light on fundamental limitations, guiding future improvements in AI planning and the development of more sophisticated language agents.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12409" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12409" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on language agents and AI planning. It identifies critical limitations in current approaches, highlighting the underutilization of constraints and the diminishing role of goals in planning. The findings offer valuable insights for improving planning strategies, sparking further research into more effective methods for language agents to reason, learn from past experiences, and generalize to complex real-world tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Language agents underutilize constraints and the importance of goals diminishes with planning horizon. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Episodic and parametric memory updates improve planning but have limitations in handling constraints and long-term goals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current strategies resemble "shortcut learning," focusing on short-horizon and low-level planning, rather than complex problem-solving. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12409/figures_1_0.png)

> 🔼 The figure illustrates three different strategies for updating memory in language agents to improve planning: episodic memory updating, direct prompting, and parametric memory updating.
> <details>
> <summary>read the caption</summary>
> Figure 1: Memory updating strategies for language agents. Insights are learned from previous attempts.
> </details>





![](https://ai-paper-reviewer.com/2410.12409/charts_5_0.png)

> 🔼 The chart displays the main results of nine models using different strategies on two planning benchmarks, showing the final pass rates for each.
> <details>
> <summary>read the caption</summary>
> Figure 2: Main results of 9 models with different strategies on two benchmarks. The results of 01-Preview and 01-Mini on BlocksWorld are from Valmeekam et al. (2024b). 'Beh.Clo.' and 'Ora.Fee.' indicate Behavioral Cloning and Oracle Feedback, respectively. Llama3.1-8B and Qwen2-7B tend to provide case-specific insights that lack general applicability; thus, these models are excluded from the 'Beh.Clo.' and 'Ora.Fee.' settings.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td></td><td>w/ Constraints</td><td>w/o Constraints</td></tr><tr><td>Qwen2-7B</td><td>2.4</td><td>3.6</td></tr><tr><td>Llama3.1-8B</td><td>0.6</td><td>0.6</td></tr><tr><td>Llama3.1-70B</td><td>38.8</td><td>9.8</td></tr><tr><td>Qwen2-7Bsft</td><td>45.4</td><td>45.4</td></tr><tr><td>Llama3.1-8Bsft</td><td>48.4</td><td>45.8</td></tr></table>{{< /table-caption >}}

> 🔼 The table compares the performance of language models on a blocksworld task with and without constraint descriptions in the prompts.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison with and without constraint descriptions in the prompts on Blocks World.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12409/charts_5_1.png)

> 🔼 The chart displays the attribution scores of constraints and episodic memory components in relation to the final plan across various language agents, with and without episodic memory updating, normalized for fair comparison.
> <details>
> <summary>read the caption</summary>
> Figure 3: The attribution score of the constraint and episodic memory component in relation to the final plan across different agents, with '*' indicating episodic memory updating. All results are normalized to account for varying step lengths and model differences, with a maximum score of 100 representing a dominant role. The absolute value does not directly determine performance, as it only shows whether the agent references specific parts of the prompt, with factors like questions and fine-grained references also contributing. Llama3.1-405B and Qwen2-72B are selected based on performance gains from episodic memory updating and computational efficiency.
> </details>


![](https://ai-paper-reviewer.com/2410.12409/charts_6_0.png)

> 🔼 The chart displays the attribution scores of actions and their corresponding constraint descriptions within the final plans generated by the Llama3.1-70B model on the BlocksWorld benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 4: The distribution of attribution scores for action and constraint descriptions relative to the actions in the final plans in Llama3.1-70B on BlocksWorld. The distribution of attribution scores and discussion of TravelPlanner are in Appendix A.1.
> </details>


![](https://ai-paper-reviewer.com/2410.12409/charts_7_0.png)

> 🔼 The chart displays the performance of different language agents on planning tasks with increasing planning horizon, and their attribution scores for questions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance comparison with increasing planning horizon. The upper part shows the performance of different agents, while the lower part shows their attribution scores of questions as the planning horizon extends.
> </details>


![](https://ai-paper-reviewer.com/2410.12409/charts_8_0.png)

> 🔼 The chart displays the attribution scores of constraints and episodic memory components for two fine-tuned language models (Llama3.1-8B and Qwen2-7B) on the Blocks World planning benchmark, showing their relative importance in the planning process.
> <details>
> <summary>read the caption</summary>
> Figure 7: Attribution scores of constraints and episodic memory on Blocks World for two fine-tuned agents.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='16' style='font-size:16px'><tr><td>Pick Up</td><td>0.0264</td><td>0.0115</td><td>0.0466</td><td>0.0501</td></tr><tr><td>Unstack -</td><td>0.2469</td><td>0.1772</td><td>0.0048</td><td>0.0112</td></tr><tr><td>Put Down</td><td>0.0382</td><td>0.0299</td><td>0.0048</td><td>-0.0190</td></tr><tr><td>Stack -</td><td>0.0213</td><td>0.0199</td><td>0.0338</td><td>0.0180</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of language agents on a Blocks World task with and without constraint descriptions provided in the prompts.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison with and without constraint descriptions in the prompts on Blocks World.
> </details>

{{< table-caption >}}
<br><table id='20' style='font-size:16px'><tr><td>0.75</td><td>Transportation</td><td>-0.0041</td><td>-0.0004</td><td>-0.0011</td><td>-0.0022</td><td>1.00 -0.75</td></tr><tr><td>0.50 Attribution</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>0.25</td><td>Resta ura nt</td><td>-0.0082</td><td></td><td></td><td>-0.0122</td><td>- 0.25 -0.50</td></tr><tr><td>0.00</td><td></td><td></td><td>-0.0120</td><td>-0.0062</td><td></td><td>Attribution 0.00</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>-0.25 Score</td><td>Accommodation</td><td>0.0010</td><td>0.0006</td><td>0.0026</td><td>-0.0018</td><td>-0.25 Score</td></tr><tr><td>-0.50</td><td></td><td></td><td></td><td></td><td></td><td>-0.50</td></tr><tr><td>-0.75</td><td>Attraction</td><td>-0.0194</td><td>-0.0251</td><td>-0.0084</td><td>-0.0313</td><td>-0.75</td></tr><tr><td>-1.00</td><td></td><td></td><td></td><td></td><td></td><td></td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of different language models on a Blocks World task with and without constraint descriptions in the prompts.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison with and without constraint descriptions in the prompts on Blocks World.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:22px'><tr><td>Episodic Memory</td><td>x</td><td>V</td></tr><tr><td>Qwen2-7Bsft</td><td>45.4</td><td>43.0</td></tr><tr><td>Llama3.1-8Bsft</td><td>48.4</td><td>36.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the performance of two fine-tuned models on Blocks World, one with and one without episodic memory updating, showing the impact of episodic memory updating on performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison between two fine-tuned models with and without episodic memory updating on Blocks World.
> </details>

{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td></td><td colspan="2">Commonsense</td><td colspan="2">Hard</td><td rowspan="2">Final Pass Rate</td></tr><tr><td></td><td>Micro</td><td>Macro</td><td>Micro</td><td>Macro</td></tr><tr><td colspan="6">Direct Prompting</td></tr><tr><td>GPT-4o</td><td>84.7</td><td>31.1</td><td>53.6</td><td>31.1</td><td>7.8</td></tr><tr><td>GPT-4o-Mini</td><td>84.4</td><td>22.2</td><td>42.4</td><td>20.0</td><td>2.2</td></tr><tr><td>Llama3.1-8B</td><td>60.1</td><td>0.0</td><td>7.9</td><td>2.8</td><td>0.0</td></tr><tr><td>Llama3.1-70B</td><td>82.8</td><td>18.9</td><td>33.1</td><td>16.1</td><td>2.2</td></tr><tr><td>Qwen2-7B</td><td>49.9</td><td>1.1</td><td>2.1</td><td>0.0</td><td>0.0</td></tr><tr><td>Qwen2-72B</td><td>74.8</td><td>11.7</td><td>23.8</td><td>8.9</td><td>1.7</td></tr><tr><td colspan="6">Episodic Memory Updating</td></tr><tr><td>GPT-4o</td><td>89.2</td><td>41.7</td><td>51.7</td><td>27.2</td><td>8.3</td></tr><tr><td>GPT-4o-Mini</td><td>84.1</td><td>22.2</td><td>39.8</td><td>22.8</td><td>5.0</td></tr><tr><td>Llama3.1-70B</td><td>84.9</td><td>23.9</td><td>39.5</td><td>24.4</td><td>6.1</td></tr><tr><td>Qwen2-72B</td><td>75.6</td><td>13.8</td><td>28.8</td><td>10.6</td><td>3.3</td></tr><tr><td>- △</td><td>- - +1.8</td><td>- - +4.4</td><td>- - +1.7</td><td>- +2.3</td><td>- - +2.2</td></tr><tr><td colspan="6">Parametric Memory Updating</td></tr><tr><td>GPT-4o</td><td>95.3</td><td>68.9</td><td>62.6</td><td>39.4</td><td>25.0</td></tr><tr><td>GPT-4o-Mini</td><td>94.7</td><td>61.7</td><td>49.3</td><td>17.2</td><td>12.2</td></tr><tr><td>Llama3.1-8B</td><td>78.3</td><td>17.8</td><td>19.3</td><td>6.1</td><td>3.8</td></tr><tr><td>Qwen2-7B</td><td>59.0</td><td>0.6</td><td>0.2</td><td>0.0</td><td>0.0</td></tr><tr><td>一 一 - △</td><td>- +12.1 -</td><td>- +23.7 -</td><td>一 +6.4 -</td><td>- +2.2 -</td><td>- - +7.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the average improvement of two fine-tuned models with and without episodic memory updating on Blocks World, showing the attribution scores for constraints and episodic memory.
> <details>
> <summary>read the caption</summary>
> Figure 7: Attribution scores of constraints and episodic memory on Blocks World for two fine-tuned agents.
> </details>

{{< table-caption >}}
<br><table id='16' style='font-size:14px'><tr><td>Transportation</td><td>0.0180</td><td>0.0007</td><td>-0.0026</td><td>-0.0027</td><td>-0.0015</td><td>1.0 Attribution</td></tr><tr><td>Restaurant</td><td>0.0049</td><td>0.0005</td><td>-0.0065</td><td>0.0051</td><td>0.1533</td><td>- 0.5 0.0</td></tr><tr><td>Accommodation</td><td>0.0257</td><td>-0.0023</td><td>0.0153</td><td>0.0334</td><td>-0.0061</td><td>-0.5 Score</td></tr><tr><td>Attraction</td><td>-0.0018</td><td>-0.0043</td><td>-0.0070</td><td>-0.0005</td><td>0.0355</td><td>-1.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table A.1 shows the attribution scores for constraint tokens on TravelPlanner, indicating minimal contribution of item attributes to the final plan, suggesting why agents struggle to follow constraints.
> <details>
> <summary>read the caption</summary>
> Table A.1: The distribution of attribution scores for constraint descriptions relative to the actions in the final plan in Llama3.1-70B on TravelPlanner.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12409/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12409/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}