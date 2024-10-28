---
title: "Montessori-Instruct: Generate Influential Training Data Tailored for Student Learning"
summary: "Montessori-Instruct optimizes synthetic training data for LLMs by aligning it with student learning preferences, significantly boosting student model performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-18", "🤗 24-10-21"]
showSummary: true
date: 2024-10-18
draft: false
---

### TL;DR


{{< lead >}}

This research presents Montessori-Instruct, a novel framework for generating high-quality synthetic training data for large language models (LLMs). Unlike existing methods, Montessori-Instruct directly optimizes the teacher LLM's data generation process based on the student LLM's learning behavior.  This is achieved by measuring the 'influence' of synthetic data points on student performance using influence functions.  The teacher LLM is then optimized using Direct Preference Optimization (DPO) to create data that better suits the student's learning style.  Experiments show that Montessori-Instruct significantly outperforms traditional methods, achieving substantial improvements in student LLM performance across multiple benchmarks. This approach tackles the challenge of noisy and ineffective synthetic data, a common issue in LLM training.  The results highlight the effectiveness of tailoring data generation to student preferences and the value of influence functions in optimizing the training process. The framework's robustness is demonstrated across different student models, suggesting broader applicability. The code and data are open-sourced to encourage further research and development in this area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.14208" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.14208" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel approach to synthetic data generation for LLMs, addressing the limitations of existing methods.  By tailoring synthetic data to student learning preferences, it improves student model performance and opens up new avenues for research in LLM training and AI alignment.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Montessori-Instruct creates more effective synthetic training data for LLMs by aligning data generation with student learning preferences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Using influence functions, Montessori-Instruct precisely measures the impact of synthetic data points on student learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show significant performance improvements on various benchmarks compared to existing data synthesis methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates four different data synthesis methods: Self-Instruct, Self-Reward, LLM2LLM, and Montessori-Instruct, showcasing their respective workflows and components.
> <details>
> <summary>read the caption</summary>
> Figure 1: Data synthesis methods with standard teacher (data synthesizer) and student (target) setups.
> </details>





![](charts/charts_7_0.png)

> 🔼 The chart illustrates the correlation between the teacher's learning process and the student's performance, showing how the distribution of local data influence shifts as the teacher is updated, and the proportion of training data with positive influence changes during the student's training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Figures (a) and (b) illustrate the correlation between the teacher's learning process and the performance of the student trained on data synthesized by the intermediate teachers in Alpaca Eval and MT-Bench. Figure (c) depicts how the distribution of the local data influence of the teacher's synthetic data shifts as the teacher is progressively updated. Figure (d) presents the proportion of training data with positive local data influence during the student's training.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="3">Methods</td><td colspan="2">In-Domain</td><td colspan="6">Out-Of-Domain</td></tr><tr><td colspan="2">Alpaca Eval 2.0</td><td>MT-Bench</td><td>MMLU</td><td>GPQA</td><td>ARC-C</td><td>GSM8K</td><td>HellaSwag</td></tr><tr><td>LC-WR</td><td>WR</td><td>Score</td><td colspan="5">Accuracy</td></tr><tr><td colspan="9">8B Setting: Student=Llama3-8B</td></tr><tr><td>No fine-tuning</td><td>2.09%</td><td>3.39%</td><td>5.597</td><td>62.15</td><td>24.33</td><td>57.85</td><td>51.25</td><td>81.96</td></tr><tr><td>Self-Instruct</td><td>50%</td><td>50%</td><td>6.490</td><td>62.42</td><td>31.92</td><td>59.98</td><td>58.76</td><td>80.93</td></tr><tr><td>Self-Instruct*</td><td>54.95%</td><td>56.39%</td><td>5.918</td><td>63.41</td><td>30.13</td><td>60.58</td><td>50.42</td><td>81.42</td></tr><tr><td colspan="9">Self-Reward*</td></tr><tr><td>Iteration 1</td><td>51.87%</td><td>55.38%</td><td>6.713</td><td>62.46</td><td>28.19</td><td>59.84</td><td>53.60</td><td>81 .04</td></tr><tr><td>Iteration 2</td><td>53.49%</td><td>57.32%</td><td>6.798</td><td>62.02</td><td>29.08</td><td>60.64</td><td>56.37</td><td>81.13</td></tr><tr><td colspan="9">LLM2LLM</td></tr><tr><td>Iteration 1</td><td>51.49%</td><td>53.12%</td><td>6.531</td><td>62.18</td><td>29.12</td><td>57.49</td><td>55.28</td><td>80.49</td></tr><tr><td>Iteration 2</td><td>52.63%</td><td>55.02%</td><td>6.519</td><td>62.46</td><td>30.04</td><td>59.65</td><td>57.75</td><td>80.57</td></tr><tr><td colspan="9">Montessori-Instruct</td></tr><tr><td>Iteration 1</td><td>54.92%</td><td>58.59%</td><td>6.903</td><td>62.93</td><td>29.91</td><td>62.97</td><td>58.76</td><td>81.22</td></tr><tr><td>Iteration 2</td><td>56.82%</td><td>60.23%</td><td>7.092</td><td>63.44</td><td>31.19</td><td>59.98</td><td>60.05</td><td>81.98</td></tr><tr><td colspan="9">1.1B Setting: Student=Tinyllama-1.1B</td></tr><tr><td>No fine-tuning</td><td>17.89%</td><td>17.56%</td><td>1.020</td><td>26.16</td><td>23.88</td><td>37.12</td><td>1.97</td><td>62.61</td></tr><tr><td>Self-Instruct</td><td>50%</td><td>50%</td><td>2.154</td><td>26.21</td><td>24.78</td><td>37.97</td><td>1.82</td><td>62.47</td></tr><tr><td>Self-Instruct*</td><td>54.02%</td><td>55.02%</td><td>1.928</td><td>26.64</td><td>24.33</td><td>38.82</td><td>2.20</td><td>63.17</td></tr><tr><td colspan="9">Self-Reward*</td></tr><tr><td>Iteration 1</td><td>47.62%</td><td>48.34%</td><td>1.804</td><td>26.34</td><td>23.92</td><td>37.64</td><td>1.76</td><td>62.27</td></tr><tr><td>Iteration 2</td><td>46.48%</td><td>46.95%</td><td>1.717</td><td>26.09</td><td>24.62</td><td>38.03</td><td>1.76</td><td>62.79</td></tr><tr><td colspan="9">LLM2LLM</td></tr><tr><td>Iteration 1</td><td>52.03%</td><td>52.75%</td><td>2.243</td><td>25.87</td><td>24.51</td><td>36.86</td><td>2.24</td><td>62.15</td></tr><tr><td>Iteration 2</td><td>51.64%</td><td>53.52%</td><td>2.192</td><td>25.62</td><td>24.84</td><td>36.74</td><td>2.31</td><td>62.08</td></tr><tr><td colspan="9">Montessori-Instruct</td></tr><tr><td>Iteration 1</td><td>53.25%</td><td>51.77%</td><td>2.485</td><td>26.23</td><td>23.92</td><td>37.97</td><td>2.35</td><td>62.59</td></tr><tr><td>Iteration 2</td><td>54.52%</td><td>54.97%</td><td>2.504</td><td>26.35</td><td>24.88</td><td>38.11</td><td>2.91</td><td>63.55</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance of different data synthesis methods on training 8B and 1.1B language models, comparing in-domain and out-of-domain evaluation results.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of training 8B/1.1B students with different data synthesis methods. Adoption of a stronger teacher model (GPT-40) is indicated by *. All else use Llama3-8B-Instruct as the teacher model. The best and second-best performances are marked in bold and underscore, respectively.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png)

> 🔼 This figure illustrates the process of Montessori-Instruct, showing how local data influence is collected to guide teacher optimization and construct a preference dataset for tailoring synthetic data generation to student learning preferences.
> <details>
> <summary>read the caption</summary>
> Figure 2: Student-Preference-Guided teacher optimization in Montessori-Instruct.
> </details>



![](figures/figures_9_0.png)

> 🔼 The figure shows the head-to-head win rates of three iterations of Montessori-Instruct against Self-Instruct and between different iterations of Montessori-Instruct, demonstrating its iterative improvement.
> <details>
> <summary>read the caption</summary>
> Figure 4: Head-to-head win rates for evaluating 8B models among the Self-Instruct baseline and three successive iterations updated using Montessori-Instruct. Left: Win rates of iterations compared to Self-Instruct; Right: Win rates compared between different iterations.
> </details>



![](figures/figures_16_0.png)

> 🔼 The figure illustrates the student-preference-guided teacher optimization process in the Montessori-Instruct framework, showing how local data influence is collected and used to optimize the teacher model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Student-Preference-Guided teacher optimization in Montessori-Instruct.
> </details>



![](figures/figures_18_0.png)

> 🔼 The figure is a word cloud showing the most common root verbs and their corresponding noun objects in instructions generated by Self-Instruct and Montessori-Instruct, illustrating differences in the complexity and types of instructions generated by each method.
> <details>
> <summary>read the caption</summary>
> Figure 6: The most common root verbs (inner circle) and their top direct noun objects (outer circle) in generated instructions.
> </details>



![](figures/figures_18_1.png)

> 🔼 The figure shows the most frequent root verbs and their corresponding noun objects used in instructions generated by Self-Instruct and Montessori-Instruct, illustrating differences in instruction complexity and topic focus.
> <details>
> <summary>read the caption</summary>
> Figure 6: The most common root verbs (inner circle) and their top 4 direct noun objects (outer circle) in generated instructions.
> </details>



![](figures/figures_19_0.png)

> 🔼 The figure is a pair of word clouds showing the most common root verbs and their corresponding noun objects in instructions generated by Self-Instruct and Montessori-Instruct, illustrating differences in the types of instructions generated by each method.
> <details>
> <summary>read the caption</summary>
> Figure 6: The most common root verbs (inner circle) and their top direct noun objects (outer circle) in generated instructions.
> </details>



![](figures/figures_20_0.png)

> 🔼 The figure illustrates the student-preference-guided teacher optimization process in the Montessori-Instruct framework, showing how local data influence is collected and used to optimize the teacher model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Student-Preference-Guided teacher optimization in Montessori-Instruct.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_7_1.png "🔼 Figure 3: Figures (a) and (b) illustrate the correlation between the teacher's learning process and the performance of the student trained on data synthesized by the intermediate teachers in Alpaca Eval and MT-Bench. Figure (c) depicts how the distribution of the local data influence of the teacher's synthetic data shifts as the teacher is progressively updated. Figure (d) presents the proportion of training data with positive local data influence during the student's training.")

> 🔼 The chart illustrates the correlation between the teacher's learning process and the student's performance, showing how the distribution of local data influence shifts as the teacher is updated, and the proportion of training data with positive local data influence changes during training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Figures (a) and (b) illustrate the correlation between the teacher's learning process and the performance of the student trained on data synthesized by the intermediate teachers in Alpaca Eval and MT-Bench. Figure (c) depicts how the distribution of the local data influence of the teacher's synthetic data shifts as the teacher is progressively updated. Figure (d) presents the proportion of training data with positive local data influence during the student's training.
> </details>


![](charts/charts_7_2.png "🔼 Figure 3: Figures (a) and (b) illustrate the correlation between the teacher's learning process and the performance of the student trained on data synthesized by the intermediate teachers in Alpaca Eval and MT-Bench. Figure (c) depicts how the distribution of the local data influence of the teacher's synthetic data shifts as the teacher is progressively updated. Figure (d) presents the proportion of training data with positive local data influence during the student's training.")

> 🔼 The chart displays the correlation between the teacher's learning process and student performance, showing the distribution of data influence and the proportion of positively influential data during training.
> <details>
> <summary>read the caption</summary>
> Figure 3: Figures (a) and (b) illustrate the correlation between the teacher's learning process and the performance of the student trained on data synthesized by the intermediate teachers in Alpaca Eval and MT-Bench. Figure (c) depicts how the distribution of the local data influence of the teacher's synthetic data shifts as the teacher is progressively updated. Figure (d) presents the proportion of training data with positive local data influence during the student's training.
> </details>


![](charts/charts_9_0.png "🔼 Figure 5: Evaluation results of training four different student models using synthetic data generated by a teacher optimized for the data preferences of the 1.1B student.")

> 🔼 The chart displays the performance of four different student language models trained using synthetic data generated by a teacher model optimized for a smaller student model's preferences, compared to the performance of those same student models trained with data synthesized by a regular teacher model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Evaluation results of training four different student models using synthetic data generated by a teacher optimized for the data preferences of the 1.1B student.
> </details>


![](charts/charts_9_1.png "🔼 Figure 6: The most common root verbs (inner circle) and their top 4 direct noun objects (outer circle) in generated instructions")

> 🔼 The chart is a pair of word clouds showing the most common root verbs and their direct objects in instructions generated by Self-Instruct and Montessori-Instruct, illustrating the difference in instruction complexity and focus between the two methods.
> <details>
> <summary>read the caption</summary>
> Figure 6: The most common root verbs (inner circle) and their top 4 direct noun objects (outer circle) in generated instructions
> </details>


![](charts/charts_19_0.png "🔼 Figure 11: Distribution of tokenized instructions generated by Self-Instruct and Montessori-Instruct")

> 🔼 The chart displays the distribution of tokenized instruction lengths generated by the Self-Instruct and Montessori-Instruct methods.
> <details>
> <summary>read the caption</summary>
> Figure 11: Distribution of tokenized instructions generated by Self-Instruct and Montessori-Instruct
> </details>


![](charts/charts_19_1.png "🔼 Figure 12: Distribution of tokenized responses generated by Self-Instruct and Montessori-Instruct")

> 🔼 The chart displays the distribution of tokenized response lengths generated by the Self-Instruct and Montessori-Instruct methods, showing a similar distribution with slightly different peaks.
> <details>
> <summary>read the caption</summary>
> Figure 12: Distribution of tokenized responses generated by Self-Instruct and Montessori-Instruct
> </details>


![](charts/charts_19_2.png "🔼 Figure 12: Distribution of tokenized responses generated by Self-Instruct and Montessori-Instruct")

> 🔼 The chart displays the distribution of tokenized response lengths generated by both Self-Instruct and Montessori-Instruct, showing the variation in response lengths produced by each method.
> <details>
> <summary>read the caption</summary>
> Figure 12: Distribution of tokenized responses generated by Self-Instruct and Montessori-Instruct
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Methodological design</td><td colspan="2">Alpaca Eval 2.0</td><td>MT-Bench</td><td>MMLU</td><td>GPQA</td><td>ARC-C</td><td>GSM8K</td><td>HellaSwag</td></tr><tr><td>LC-WR</td><td>WR</td><td>Score</td><td colspan="5">Accuracy</td></tr><tr><td colspan="9">Effectiveness of Local Data Influence</td></tr><tr><td>LLM-as-a-Judge</td><td>53.42%</td><td>54.93%</td><td>6.731</td><td>62.93</td><td>29.75</td><td>62.09</td><td>58.82</td><td>81.05</td></tr><tr><td>Training loss</td><td>52.34%</td><td>54.99%</td><td>6.656</td><td>62.54</td><td>29.89</td><td>61.48</td><td>58.76</td><td>80.93</td></tr><tr><td>Local data influence (Ours)</td><td>54.92%</td><td>58.59%</td><td>6.903</td><td>62.93</td><td>29.91</td><td>62.97</td><td>58.76</td><td>81.22</td></tr><tr><td colspan="9">Effectiveness of Teacher Optimization</td></tr><tr><td>Bootstrap</td><td>50.59%</td><td>48.14%</td><td>6.618</td><td>60.67</td><td>25.19</td><td>57.95</td><td>58.13</td><td>80.46</td></tr><tr><td>Response optimization</td><td>51.59%</td><td>54.22%</td><td>6.556</td><td>62.43</td><td>27.45</td><td>60.42</td><td>56.38</td><td>81.04</td></tr><tr><td>Instruction optimization (Ours)</td><td>54.92%</td><td>58.59%</td><td>6.903</td><td>62.93</td><td>29.91</td><td>62.97</td><td>58.76</td><td>81.22</td></tr><tr><td colspan="9">Effectiveness of Seed Data</td></tr><tr><td>Open Assistant (OOD)</td><td>52.28%</td><td>54.76%</td><td>6.706</td><td>62.86</td><td>29.74</td><td>62.29</td><td>58.42</td><td>81.24</td></tr><tr><td>Alpaca GPT4 (ID) (Ours)</td><td>54.92%</td><td>58.59%</td><td>6.903</td><td>62.93</td><td>29.91</td><td>62.97</td><td>58.76</td><td>81.22</td></tr><tr><td>Alpaca Eval (Test)</td><td>57.64%</td><td>61.36%</td><td>7.147</td><td>62.93</td><td>30.44</td><td>63.06</td><td>60.80</td><td>81.09</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the performance comparison of different data synthesis methods (including Montessori-Instruct) on multiple evaluation metrics for 8B and 1.1B student models, highlighting the relative improvements of Montessori-Instruct.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Positive</td><td>Negative</td></tr><tr><td>[Instruction]: What is the most efficient way to transport a given package across a city, considering traffic congestion, distance, and cost? [Response]: The most efficient way to transport a pack- age across a city depends on several factors, including the package's size, weight, fragility, and urgency, as well as the city's traffic patterns, infrastructure, and regulations. Here are some general considerations and options to minimize costs, reduce congestion, and ensure timely delivery: 1. **Distance and Route Optimization**: * Use online route planners or transportation manage- ment software to determine the shortest and most efficient route. * Consider alternative routes or modes of transportation if the primary route is congested or closed. 2. **Traffic Congestion Mitigation**: * Avoid peak hours (7-9 am and 4-6 pm) when possible, as traffic congestion is typically highest during these times...</td><td>[Instruction]: Explain the concept of artificial intelligence in 100 words. [Response]: Artificial intelligence (AI) refers to the development of computer systems that can perform tasks that typically require hu- man intelligence, such as learning, problem- solving, and decision-making. AI systems use algorithms and data to analyze and interpret in- formation, allowing them to make predictions, classify objects, and generate insights. They can be trained on large datasets to improve their performance over time, and can even adapt to new situations and learn from experience. AI has many applications, including robotics, nat- ural language processing, image recognition, and expert systems, and is increasingly being used in industries such as healthcare, finance, and transportation.</td></tr><tr><td>[Instruction]: Can you write a script for a public service announcement about the importance of recycling? [Response]: Here is a script for a public service announce- ment about the importance of recycling: [Opening shot of a beautiful park or nature reserve, with a narrator speaking] Narrator: "Imagine a world where our planet is thriving, where wildlife roams free, and where our communities are healthy and strong. But to get there, we need to take action.' , [Cut to a shot of a person holding a plastic bottle and throw- ing it away] Narrator: "One of the simplest and most effective ways to make a difference is by recycling." ...</td><td>[Instruction]: Can you translate the following text from english to spanish: "the hotel room was comfortable and clean." [Response]: The translation of the text from English to Spanish is: "El cuarto de hotel era comodo y limpio." Here's a breakdown of the translation: * "the hotel room = "el cuarto de hotel" * "was" = "era" (verb conjugation) * , "comfortable" = "c�modo" * "and" = "y" (conjunction) * "clean" = "limpio" So, the complete sentence in Spanish is: "El cuarto de hotel era comodo y limpio."</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the performance of different data synthesis methods on in-domain and out-of-domain tasks using Llama3-8B and Tinyllama-1.1B language models as students.


{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td>Method</td><td>Learning Rate</td><td>Weight Decay</td><td>Warmup Ratio</td><td>Stable Ratio</td><td>Decay Ratio</td></tr><tr><td>SFT</td><td>5.0e - 6</td><td>0.0</td><td>0.1</td><td>0.5</td><td>0.4</td></tr><tr><td>DPO</td><td>1.0e - 6</td><td>0.0</td><td>0.1</td><td>0.5</td><td>0.4</td></tr><tr><td>Method</td><td>Minium Learning Rate</td><td>Epoch</td><td>Per Device Train Batch Size</td><td>Gradient Accumulation</td><td>Train Batch Size</td></tr><tr><td>SFT</td><td>5.0e - 9</td><td>1</td><td>2</td><td>2</td><td>32</td></tr><tr><td>DPO</td><td>1.0e - 9</td><td>1</td><td>2</td><td>1</td><td>2</td></tr><tr><td>Method</td><td>Max Length</td><td>Dropout</td><td>BF16</td><td>Flash Attention 2</td><td>Beta</td></tr><tr><td>SFT</td><td>1024</td><td>0.0</td><td>True</td><td>True</td><td>-</td></tr><tr><td>DPO</td><td>1024</td><td>0.0</td><td>True</td><td>True</td><td>0.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the performance comparison of different data synthesis methods on training 8B and 1.1B language models, evaluated on both in-domain and out-of-domain tasks.


{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td></td><td>Generate Instruction</td><td>Generate Responses</td></tr><tr><td>temperature</td><td>1</td><td>0.6</td></tr><tr><td>top-p</td><td>0.9</td><td>0.9</td></tr><tr><td>frequency. _penalty</td><td>0</td><td>0</td></tr><tr><td>presence_penalty</td><td>1</td><td>1</td></tr><tr><td>repetition_penalty</td><td>1.5</td><td>1</td></tr><tr><td>max_token</td><td>1024</td><td>1024</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the performance comparison of different data synthesis methods in training 8B and 1.1B language models on both in-domain and out-of-domain tasks, showing the effectiveness of Montessori-Instruct.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="3">Methods</td><td colspan="2">In-Domain</td><td colspan="6">Out-Of-Domain</td></tr><tr><td colspan="2">Alpaca Eval 2.0</td><td>MT-Bench</td><td>MMLU</td><td>GPQA</td><td>ARC-C</td><td>GSM8K</td><td>HellaSwag</td></tr><tr><td>LC-WR</td><td>WR</td><td>Score</td><td colspan="5">Accuracy</td></tr><tr><td colspan="9">8B Setting: Student=Llama3-8B</td></tr><tr><td>No fine-tuning</td><td>2.09%</td><td>3.39%</td><td>5.597</td><td>62.15</td><td>24.33</td><td>57.85</td><td>51.25</td><td>81.96</td></tr><tr><td>Self-Instruct</td><td>50%</td><td>50%</td><td>6.490</td><td>62.42</td><td>31.92</td><td>59.98</td><td>58.76</td><td>80.93</td></tr><tr><td>Self-Reward</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Iteration 1</td><td>2.45%</td><td>4.06%</td><td>5.442</td><td>61.79</td><td>24.30</td><td>57.81</td><td>49.92</td><td>80.75</td></tr><tr><td>Iteration 2</td><td>2.69%</td><td>4.71%</td><td>5.428</td><td>61.79</td><td>23.58</td><td>57.64</td><td>49.53</td><td>80.17</td></tr><tr><td colspan="9">1.1B Setting: Student=Tinyllama-1.1B</td></tr><tr><td>No fine-tuning</td><td>17.89%</td><td>17.56%</td><td>1.020</td><td>26.16</td><td>23.88</td><td>37.12</td><td>1.97</td><td>62.61</td></tr><tr><td>Self-Instruct</td><td>50%</td><td>50%</td><td>2.154</td><td>26.21</td><td>24.78</td><td>37.97</td><td>1.82</td><td>62.47</td></tr><tr><td>Self-Reward</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Iteration 1</td><td>7.79%</td><td>8.13%</td><td>1.000</td><td>23.58</td><td>22.30</td><td>36.55</td><td>0.94</td><td>61.92</td></tr><tr><td>Iteration 2</td><td>6.34%</td><td>7.57%</td><td>1.000</td><td>23.44</td><td>22.06</td><td>36.49</td><td>0.98</td><td>61.24</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the performance of different data synthesis methods (including Montessori-Instruct and baselines) on training Llama3-8B and Tinyllama-1.1B language models, evaluated using in-domain and out-of-domain benchmarks.


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
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}