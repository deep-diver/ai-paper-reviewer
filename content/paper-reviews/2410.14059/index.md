---
title: "UCFE: A User-Centric Financial Expertise Benchmark for Large Language Models"
summary: "UCFE benchmark realistically evaluates LLMs' financial expertise via user-centric design and dynamic interactions, revealing performance gaps and highlighting human-preference alignment."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-21"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

The research introduces UCFE, a new benchmark for evaluating Large Language Models (LLMs) in financial tasks. Unlike previous benchmarks, UCFE uses a user-centric approach, involving human participants and simulating real-world financial scenarios through dynamic interactions.  The dataset encompasses various user types and tasks, assessed by an LLM-as-judge methodology and verified against human expert preferences, showing strong correlation (0.78 Pearson).  Results reveal that mid-sized LLMs (7B to 14B parameters) often outperform larger models, highlighting the importance of balancing performance and computational cost.  This benchmark addresses limitations of existing methods, offering valuable insights for developing better LLMs in finance.  The code and dataset are publicly available.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.14059" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.14059" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in finance and AI because it introduces a novel benchmark for evaluating large language models (LLMs) in a complex real-world financial setting.  It addresses limitations of existing benchmarks by incorporating user-centric design and dynamic interactions, offering a more realistic assessment of LLM capabilities and paving the way for more robust and reliable LLM development in the financial domain.  The benchmark and its findings are immediately applicable to various ongoing and future research projects involving LLMs and finance.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UCFE benchmark provides a more realistic evaluation of LLMs in finance by incorporating user-centric design and dynamic interactions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark reveals a significant correlation between human preference and model performance, validating its effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Mid-sized LLMs demonstrate a good balance of performance and efficiency compared to larger models in this financial domain. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the overall framework of the User-Centric Financial Expertise (UCFE) benchmark, showing its key components and workflow.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview framework of the UCFE Benchmark.
> </details>





![](charts/charts_4_0.png)

> 🔼 The chart visualizes the top 25 most frequent verbs and their associated nouns from a corpus of financial texts, highlighting common financial interactions.
> <details>
> <summary>read the caption</summary>
> Figure 2: The visualization displays the top 25 most common root verbs (inner circle) and their top 4 associated direct noun objects (outer circle) extracted from the provided texts.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td></td><td>User</td><td>Familiarity</td><td>Importance</td></tr><tr><td>Total</td><td>804</td><td>458</td><td>660</td></tr><tr><td>Student (Finance-related)</td><td>167</td><td>148</td><td>155</td></tr><tr><td>Financial Professional</td><td>83</td><td>83</td><td>83</td></tr><tr><td>Regulatory Professional</td><td>51</td><td>47</td><td>50</td></tr><tr><td>General Public</td><td>136</td><td>49</td><td>82</td></tr><tr><td>Non-Finance Professional</td><td>87</td><td>37</td><td>70</td></tr><tr><td>Student (Non-finance)</td><td>208</td><td>79</td><td>163</td></tr><tr><td>Other</td><td>72</td><td>15</td><td>57</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of a user survey that assessed familiarity and importance of multi-round financial tasks across different user groups.
> <details>
> <summary>read the caption</summary>
> Table 1: The user survey outcomes. Familiarity indicates the results of Question 5, where people choose 'they have encountered multi-round financial tasks'. Importance indicates the results of Question 6 where people choose 'they think multi-round financial tasks are important'.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_7_0.png)

> 🔼 The figure illustrates the evaluation pipeline of the UCFE benchmark, showing the steps involved in evaluating large language models' performance on financial tasks using a user simulator, human evaluators, and Elo rating system.
> <details>
> <summary>read the caption</summary>
> Figure 4: The evaluation pipeline of the UCFE Benchmark involves the following steps: ① selecting the model and task, ② generating dialogues between the user and AI assistant via a user simulator, ③ creating evaluation prompts based on source information to assess model performance, ④ pairwise comparison of dialogue outputs by evaluators, aligned with human expert judgments, and ⑤ computing Elo scores based on win-loss outcomes.
> </details>



![](figures/figures_8_0.png)

> 🔼 The figure illustrates the five-stage evaluation pipeline of the UCFE benchmark, showing the process from selecting models and tasks to computing Elo scores based on human evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 4: The evaluation pipeline of the UCFE Benchmark involves the following steps: ① selecting the model and task, ② generating dialogues between the user and AI assistant via a user simulator, ③ creating evaluation prompts based on source information to assess model performance, ④ pairwise comparison of dialogue outputs by evaluators, aligned with human expert judgments, and ⑤ computing Elo scores based on win-loss outcomes.
> </details>



![](figures/figures_15_0.png)

> 🔼 The figure illustrates the five-step evaluation pipeline of the UCFE benchmark, showing the process from model and task selection to final Elo score computation based on human expert judgments.
> <details>
> <summary>read the caption</summary>
> Figure 4: The evaluation pipeline of the UCFE Benchmark involves the following steps: ① selecting the model and task, ② generating dialogues between the user and AI assistant via a user simulator, ③ creating evaluation prompts based on source information to assess model performance, ④ pairwise comparison of dialogue outputs by evaluators, aligned with human expert judgments, and ⑤ computing Elo scores based on win-loss outcomes.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_4_1.png "🔼 Figure 6: Comparison of average dialogue rounds and total tokens across different models in few shot tasks.")

> 🔼 The chart displays the distribution of average dialogue rounds and total tokens across different models in few-shot tasks, highlighting variations in model response length and interaction complexity.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of average dialogue rounds and total tokens across different models in few shot tasks.
> </details>


![](charts/charts_7_0.png "🔼 Figure 5: Comparison of model performance on UCFE benchmark across three evaluators.")

> 🔼 The radar chart visualizes the performance of different LLMs across various financial tasks, comparing results from three different evaluation methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of model performance on UCFE benchmark across three evaluators.
> </details>


![](charts/charts_8_0.png "🔼 Figure 6: Comparison of average dialogue rounds and total tokens across different models in few shot tasks.")

> 🔼 The chart displays the average number of dialogue rounds and total tokens used across different large language models in few-shot tasks of the UCFE benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of average dialogue rounds and total tokens across different models in few shot tasks.
> </details>


![](charts/charts_8_1.png "🔼 Figure 7: Correlation between human Elo scores and Claude-3.5-Sonnet Elo scores.")

> 🔼 The chart displays a positive correlation between human expert judgments and model evaluations, indicating alignment between human preferences and model performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Correlation between human Elo scores and Claude-3.5-Sonnet Elo scores.
> </details>


![](charts/charts_8_2.png "🔼 Figure 5: Comparison of model performance on UCFE benchmark across three evaluators.")

> 🔼 The chart compares the overall Elo scores of various models plotted against model parameters (in billions), showing that mid-sized models perform particularly well.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of model performance on UCFE benchmark across three evaluators.
> </details>


![](charts/charts_14_0.png "🔼 Figure 11: Geographical Distribution of Survey Respondents")

> 🔼 The chart shows the geographical distribution of survey respondents, with the majority from China, followed by the USA, and a small percentage from other regions.
> <details>
> <summary>read the caption</summary>
> Figure 11: Geographical Distribution of Survey Respondents
> </details>


![](charts/charts_14_1.png "🔼 Figure 13: Results of whether preferring generation answers or predefined options from using EastMoney.")

> 🔼 The chart displays the number of survey respondents who prefer generation answers, predefined options, or a mixture of both for financial tasks.
> <details>
> <summary>read the caption</summary>
> Figure 13: Results of whether preferring generation answers or predefined options from using EastMoney.
> </details>


![](charts/charts_14_2.png "🔼 Figure 12: Primary Source of Financial Information extracted from the survey")

> 🔼 The bar chart displays the frequency of responses from survey participants regarding their primary source of financial information.
> <details>
> <summary>read the caption</summary>
> Figure 12: Primary Source of Financial Information extracted from the survey
> </details>


![](charts/charts_15_0.png "🔼 Figure 14: Win counts heatmap for all tasks. The heatmap illustrates the total number of wins where the target model outperforms the base model across all head-to-head comparisons.")

> 🔼 The heatmap in Figure 14 shows the number of times each target model outperformed its base model across all tasks in the UCFE benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 14: Win counts heatmap for all tasks. The heatmap illustrates the total number of wins where the target model outperforms the base model across all head-to-head comparisons.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Category</td><td>Task</td><td>Source</td><td>Target User Group</td></tr><tr><td>Few-shot</td><td>Analyst Simulation Asset Valuation Reporting Company Evaluation Reporting Corporate Operation Analysis Credit Risk Evaluation Financial Knowledge Consulting Financial Regulation Consulting Industry Report Summarization Insider Trading Detection Investment Strategy Evaluation Investment Strategy Optimization Newshare Evaluation Reporting Prospectus Risk Summarization</td><td>TCL Annual Report & Analyst Report EastMoney Analyst Report Analyst Report GPT-4 Generated Investopedial Securities Law2 EastMoney Securities Regulatory Commission3 Seeking Alpha4 Financestrategists5 Stock.us6 Prospectus & Inquiry Letter7</td><td>Senior Analyst Analyst Analyst Analyst Analyst General Public & Financial Professional General Public & Financial Professional & Regulatory Professional General Public & Financial Professional Regulatory Professional Analyst Analyst Analyst General Public & Financial Professional</td></tr><tr><td>Zero-shot</td><td>Stock Price Prediction Negative Information Detection Financial Indicator Calculation Financial Text Summarization</td><td>A-stock Statistics EastMoney CPA & CFA News Headlines</td><td>General Public & Financial Professional General Public & Financial Professional General Public & Financial Professional General Public & Financial Professional</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 provides a statistical breakdown of the UCFE benchmark tasks, categorized by task type, source of data, and target user groups.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Task Type</td><td>Number of Tasks</td><td>Number of Questions</td></tr><tr><td>Zero-shot Tasks</td><td>4</td><td>80</td></tr><tr><td>Few-shot Tasks</td><td>13</td><td>250</td></tr><tr><td>Total</td><td>17</td><td>330</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 shows the number of tasks and questions for zero-shot and few-shot tasks in the UCFE benchmark.


{{< table-caption >}}
<br><table id='10' style='font-size:16px'><tr><td>Model</td><td>Type</td></tr><tr><td>CFGPT2-7B 1(Li et al., 2023a)</td><td>Financial</td></tr><tr><td>GPT-4o</td><td>General</td></tr><tr><td>GPT-4o-mini</td><td>General</td></tr><tr><td>InternLM2.5-7B-Chat (Cai et al., 2024)</td><td>General</td></tr><tr><td>Llama-3.1-70B-Instruct (AI@Meta, 2024)</td><td>General</td></tr><tr><td>Llama-3.1-8B-Instruct</td><td>General</td></tr><tr><td>Llama3-XuanYuan3-70B-Chat (Zhang et al., 2023b)</td><td>Financial</td></tr><tr><td>Palmyra-Fin-70B-32k (team, 2024)</td><td>Financial</td></tr><tr><td>Qwen2.5-14B-Instruct (Team, 2024)</td><td>General</td></tr><tr><td>Tongyi-Finance-14B-Chat2</td><td>Financial</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 lists all 11 large language models used in the UCFE benchmark experiments, specifying their type as either general-purpose or financial.


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Model</td><td>Overall</td><td>Zero Shot</td><td>Few Shot</td><td>Win Counts</td></tr><tr><td>Tongyi-Finance-14B-Chat</td><td>1156.99</td><td>1007.52</td><td>1171.27</td><td>3614</td></tr><tr><td>CFGPT2-7B</td><td>1155.75</td><td>1125.33</td><td>1157.93</td><td>3972</td></tr><tr><td>Palmyra-Fin-70B-32k</td><td>1128.25</td><td>1028.18</td><td>1143.66</td><td>3634</td></tr><tr><td>GPT-4o</td><td>1117.68</td><td>979.85</td><td>1120.89</td><td>3040</td></tr><tr><td>Llama-3. 1-8B-Instruct</td><td>1046.87</td><td>1062.18</td><td>1051.32</td><td>3294</td></tr><tr><td>Internlm2.5-7b-chat</td><td>995.85</td><td>1009.78</td><td>1000.52</td><td>2964</td></tr><tr><td>Llama3-Xuan Yuan3-70B-Chat</td><td>913.48</td><td>934.51</td><td>911.59</td><td>2050</td></tr><tr><td>Llama-3. 1-70B-Instruct</td><td>912.26</td><td>986.77</td><td>906.80</td><td>2196</td></tr><tr><td>GPT-4o-mini</td><td>901.75</td><td>943.81</td><td>908.92</td><td>2326</td></tr><tr><td>Qwen2.5-14B-Instruct</td><td>855.82</td><td>974.27</td><td>840.05</td><td>1774</td></tr><tr><td>Qwen2.5-7B-Instruct</td><td>814.48</td><td>946.45</td><td>786.28</td><td>1312</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 presents the overall, zero-shot, and few-shot performance results of various LLMs evaluated using the UCFE benchmark, highlighting the best-performing models in each category.


{{< table-caption >}}
<table id='9' style='font-size:14px'><tr><td>Test Prompt</td></tr><tr><td>Model Prompt:</td></tr><tr><td>You are providing a summary service for financial texts to help users extract key points from complex financial information.</td></tr><tr><td>The given financial text is: { information}</td></tr><tr><td>Your task is: {needs}.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents an overview of the UCFE benchmark's tasks, detailing their categories, data sources, and intended user groups.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}