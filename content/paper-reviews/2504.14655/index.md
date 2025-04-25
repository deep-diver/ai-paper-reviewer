---
title: "LeetCodeDataset: A Temporal Dataset for Robust Evaluation and Efficient Training of Code LLMs"
summary: "New LeetCodeDataset enables robust code LLM evaluation and efficient training with temporal splits and high-quality problems."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 newfacade@163.com",]
showSummary: true
date: 2025-04-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.14655 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunhui Xia et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.14655" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.14655" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.14655/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Code generation critically needs better benchmarks and training resources for large language models (LLMs). Current benchmarks lack accurate reasoning assessments, while training resources often miss live updates and tools for reinforcement learning. Addressing these gaps is essential for advancing research and applications in code generation.



This paper introduces the **LeetCodeDataset**, a high-quality resource for evaluating and training code-generation models. It provides a contamination-free dataset with temporal splits and rich metadata, enabling fair and efficient supervised fine-tuning. Experiments reveal that reasoning models outperform non-reasoning ones, and small model-generated datasets can match the performance of larger counterparts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LeetCodeDataset offers a high-quality benchmark for code generation models with temporal splits and rich metadata. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Reasoning models significantly outperform non-reasoning models in competitive programming tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Supervised fine-tuning with a small, model-generated dataset can achieve performance comparable to much larger, human-written datasets. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a **high-quality, contamination-free dataset** and an evaluation framework, advancing code LLM research by providing a testbed that addresses reasoning abilities. It enables fair evaluation and efficient training, impacting future benchmarks and training strategies for code generation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.14655/x1.png)

> 🔼 This figure shows an example of a problem from the LeetCode platform, which is a popular online platform for coding practice and technical interview preparation.  The example problem, titled 'Missing Number', presents a coding challenge that requires finding a missing number in an arithmetic progression within an integer array.  The problem statement is clearly outlined, along with illustrative examples and constraints. The provided starter code in Python offers a template to begin solving the problem. This figure highlights the type of problem and level of detail that is contained within the LeetCodeDataset.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of a LeetCode problem.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S2.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">Difficulty</span></td>
<td class="ltx_td ltx_border_tt" id="S2.T1.1.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S2.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1">Release Year</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.1.1">Type</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.2.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.2.1">Count</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.3.1">Proportion (%)</span></td>
<td class="ltx_td" id="S2.T1.1.2.4"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.5.1">Period</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.2.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.6.1">Count</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.2.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.7.1">Proportion (%)</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.3.1">Easy</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.3.2">686</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.3.3">23.91</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.3.4"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.3.5">Before 2020</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.3.6">1077</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.3.7">37.54</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.1">Medium</td>
<td class="ltx_td ltx_align_right" id="S2.T1.1.4.2">1498</td>
<td class="ltx_td ltx_align_right" id="S2.T1.1.4.3">52.21</td>
<td class="ltx_td" id="S2.T1.1.4.4"></td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.5">2020–2022</td>
<td class="ltx_td ltx_align_right" id="S2.T1.1.4.6">1009</td>
<td class="ltx_td ltx_align_right" id="S2.T1.1.4.7">35.17</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.5.1">Hard</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.5.2">686</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.5.3">23.88</td>
<td class="ltx_td ltx_border_bb" id="S2.T1.1.5.4"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.5.5">2023–2025</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.5.6">783</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.5.7">27.29</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table shows the distribution of LeetCode problems across three difficulty levels (Easy, Medium, Hard) and their release years.  It breaks down the number and proportion of problems in each difficulty category for problems released before 2020, between 2020 and 2022, and between 2023 and 2025. This information is valuable for understanding the dataset's composition and for evaluating the temporal validity of the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Distribution of difficulty and release year on the LeetCodeDataset.
> </details>





### In-depth insights


#### Robust Eval
**Robust evaluation** in code generation LLMs is crucial, going beyond simple accuracy to assess generalization, **handling of edge cases**, and resistance to adversarial inputs. A robust evaluation framework should include **diverse test suites** with varying complexity, including those that probe specific reasoning abilities. **Temporal splits** can help prevent contamination and ensure models are learning genuine skills, not memorizing solutions. Evaluation should also account for **false positives and negatives**, and consider complexity analysis (time/space) for efficient code generation. **Coverage gaps** in datasets may limit the assessment of certain problem types.

#### Temporal Splits
A temporal split is a crucial methodology for evaluating code-generation models, particularly in dynamic environments like coding platforms where problem sets evolve over time. **The primary goal is to mitigate data contamination**, where models inadvertently learn from future test data during training, leading to inflated performance metrics. **By dividing the dataset into pre- and post-cutoff date subsets**, researchers ensure that the evaluation set contains only problems unseen by the model during training. This approach offers a more realistic assessment of a model's generalization capability and its ability to solve novel coding challenges. **The choice of the cutoff date is critical**: it should balance the need for a substantial test set with the risk of including problems that may have leaked into the training data through various channels. Ideally, a temporal split reflects the real-world scenario where models are constantly exposed to new and evolving coding problems. **Moreover, temporal splits enable the analysis of model performance over time**, revealing potential declines in accuracy as new problems are introduced, which could indicate overfitting to older data or an inability to adapt to changing problem distributions. **This rigorous evaluation strategy is essential for building robust and reliable code-generation systems**.

#### SFT Efficiency
The paper highlights the SFT efficiency of the LeetCodeDataset, demonstrating that models trained on a relatively small subset of this dataset can achieve performance comparable to models trained on much larger, more general coding datasets. **This efficiency stems from the dataset's high quality and domain specificity, focusing on LeetCode problems with rich metadata and curated test cases.** The use of model-generated training data, as opposed to human-written code, is also noted to improve performance, indicating that **data diversity and quality play more important roles than relying on human expert samples.** The paper also mentions **the limitations of small-scale SFT, primarily for more complex problem solving**, suggesting future work could focus on scaling this approach to capture more advanced algorithmic techniques.

#### Reasoning > All
**Reasoning** models exhibit superior performance in code generation tasks, particularly when compared to models lacking explicit reasoning mechanisms. Evaluation results clearly demonstrate that models designed to incorporate reasoning, such as DeepSeek-R1, achieve significantly higher pass rates on complex coding problems. This advantage stems from the ability to systematically break down problems into smaller, more manageable steps, and to apply logical deduction to arrive at a solution. Conversely, models lacking dedicated reasoning components often struggle with intricate algorithmic challenges, as they rely more heavily on pattern recognition and memorization, which may prove insufficient for novel problem instances. Therefore, the inclusion of reasoning modules emerges as a crucial factor in enhancing the capabilities of code-generating language models across a diverse range of coding tasks. Reasoning models **outperform** in areas like Dynamic Programming, Binary Search, and Tree-related problems where the ability to think step by step is crucial. Performance consistency of reasoning models **across all topic tags** is also crucial to observe.

#### LLM Eval Gaps
**Current LLM evaluation methodologies face significant gaps in comprehensively assessing true model capabilities.** Existing benchmarks often oversimplify real-world complexities, failing to capture nuances in reasoning, robustness, and generalization. **Specifically, many evaluations lack the temporal dimension**, meaning models are tested on data they might have already been exposed to during training, leading to inflated performance metrics. Furthermore, **evaluating code generation tasks is challenging due to the difficulty in reliably assessing code correctness and efficiency beyond basic functional tests.** There's a need for benchmarks that incorporate diverse test cases, assess reasoning chains, and avoid data contamination. **Addressing these evaluation gaps is crucial for advancing LLM research**, enabling more accurate comparisons between models and driving progress towards truly intelligent systems. Improved evaluation frameworks would also allow for better identification of model weaknesses, leading to more targeted training strategies and enhanced performance on complex tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.14655/x2.png)

> 🔼 This bar chart visualizes the frequency distribution of various topic tags associated with the LeetCode problems in the LeetCodeDataset.  The x-axis lists the different topic tags (e.g., 'Array', 'String', 'Dynamic Programming'), and the y-axis represents the number of problems associated with each tag.  The chart allows for a quick understanding of which topics are most prevalent in the dataset, providing insights into the types of coding problems that are most commonly represented.
> <details>
> <summary>read the caption</summary>
> Figure 2: Topic frequency distribution.
> </details>



![](https://arxiv.org/html/2504.14655/x3.png)

> 🔼 This figure shows the monthly pass rate of several code generation models on the LeetCodeDataset test set. The x-axis represents the LeetCode problem release month, and the y-axis represents the pass rate (percentage of problems solved correctly).  The figure displays trends in model performance over time, allowing for analysis of temporal effects and potential overfitting.  Different colored lines represent different models, enabling direct comparison of their performance across time.
> <details>
> <summary>read the caption</summary>
> Figure 3: Monthly pass rates of various models on the LeetCodeDataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.24">
<tr class="ltx_tr" id="S3.T2.24.25">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.24.25.1"><span class="ltx_text ltx_font_bold" id="S3.T2.24.25.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.24.25.2"><span class="ltx_text ltx_font_bold" id="S3.T2.24.25.2.1">Easy (%)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.24.25.3"><span class="ltx_text ltx_font_bold" id="S3.T2.24.25.3.1">Medium (%)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.24.25.4"><span class="ltx_text ltx_font_bold" id="S3.T2.24.25.4.1">Hard (%)</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.24.25.5"><span class="ltx_text ltx_font_bold" id="S3.T2.24.25.5.1">Overall (%)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.4.4.5">GPT-4o-0806</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1"><math alttext="81.48" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mn id="S3.T2.1.1.1.m1.1.1" xref="S3.T2.1.1.1.m1.1.1.cmml">81.48</mn><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><cn id="S3.T2.1.1.1.m1.1.1.cmml" type="float" xref="S3.T2.1.1.1.m1.1.1">81.48</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">81.48</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">81.48</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.2.2"><math alttext="32.76" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mn id="S3.T2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.m1.1.1.cmml">32.76</mn><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><cn id="S3.T2.2.2.2.m1.1.1.cmml" type="float" xref="S3.T2.2.2.2.m1.1.1">32.76</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">32.76</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">32.76</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.3.3"><math alttext="10.47" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mn id="S3.T2.3.3.3.m1.1.1" xref="S3.T2.3.3.3.m1.1.1.cmml">10.47</mn><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><cn id="S3.T2.3.3.3.m1.1.1.cmml" type="float" xref="S3.T2.3.3.3.m1.1.1">10.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">10.47</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">10.47</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.4.4.4"><math alttext="35.55" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mn id="S3.T2.4.4.4.m1.1.1" xref="S3.T2.4.4.4.m1.1.1.cmml">35.55</mn><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><cn id="S3.T2.4.4.4.m1.1.1.cmml" type="float" xref="S3.T2.4.4.4.m1.1.1">35.55</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">35.55</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">35.55</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.5">Claude-3.7-Sonnet</td>
<td class="ltx_td ltx_align_left" id="S3.T2.5.5.1"><math alttext="87.04" class="ltx_Math" display="inline" id="S3.T2.5.5.1.m1.1"><semantics id="S3.T2.5.5.1.m1.1a"><mn id="S3.T2.5.5.1.m1.1.1" xref="S3.T2.5.5.1.m1.1.1.cmml">87.04</mn><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.1.m1.1b"><cn id="S3.T2.5.5.1.m1.1.1.cmml" type="float" xref="S3.T2.5.5.1.m1.1.1">87.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.1.m1.1c">87.04</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.1.m1.1d">87.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.6.6.2"><math alttext="54.31" class="ltx_Math" display="inline" id="S3.T2.6.6.2.m1.1"><semantics id="S3.T2.6.6.2.m1.1a"><mn id="S3.T2.6.6.2.m1.1.1" xref="S3.T2.6.6.2.m1.1.1.cmml">54.31</mn><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.2.m1.1b"><cn id="S3.T2.6.6.2.m1.1.1.cmml" type="float" xref="S3.T2.6.6.2.m1.1.1">54.31</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.2.m1.1c">54.31</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.2.m1.1d">54.31</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.7.7.3"><math alttext="23.26" class="ltx_Math" display="inline" id="S3.T2.7.7.3.m1.1"><semantics id="S3.T2.7.7.3.m1.1a"><mn id="S3.T2.7.7.3.m1.1.1" xref="S3.T2.7.7.3.m1.1.1.cmml">23.26</mn><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.3.m1.1b"><cn id="S3.T2.7.7.3.m1.1.1.cmml" type="float" xref="S3.T2.7.7.3.m1.1.1">23.26</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.3.m1.1c">23.26</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.3.m1.1d">23.26</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.8.8.4"><math alttext="50.78" class="ltx_Math" display="inline" id="S3.T2.8.8.4.m1.1"><semantics id="S3.T2.8.8.4.m1.1a"><mn id="S3.T2.8.8.4.m1.1.1" xref="S3.T2.8.8.4.m1.1.1.cmml">50.78</mn><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.4.m1.1b"><cn id="S3.T2.8.8.4.m1.1.1.cmml" type="float" xref="S3.T2.8.8.4.m1.1.1">50.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.4.m1.1c">50.78</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.4.m1.1d">50.78</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.12">
<td class="ltx_td ltx_align_left" id="S3.T2.12.12.5">DeepSeek-V3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.9.9.1"><math alttext="77.78" class="ltx_Math" display="inline" id="S3.T2.9.9.1.m1.1"><semantics id="S3.T2.9.9.1.m1.1a"><mn id="S3.T2.9.9.1.m1.1.1" xref="S3.T2.9.9.1.m1.1.1.cmml">77.78</mn><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.1.m1.1b"><cn id="S3.T2.9.9.1.m1.1.1.cmml" type="float" xref="S3.T2.9.9.1.m1.1.1">77.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.1.m1.1c">77.78</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.1.m1.1d">77.78</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.10.10.2"><math alttext="31.90" class="ltx_Math" display="inline" id="S3.T2.10.10.2.m1.1"><semantics id="S3.T2.10.10.2.m1.1a"><mn id="S3.T2.10.10.2.m1.1.1" xref="S3.T2.10.10.2.m1.1.1.cmml">31.90</mn><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.2.m1.1b"><cn id="S3.T2.10.10.2.m1.1.1.cmml" type="float" xref="S3.T2.10.10.2.m1.1.1">31.90</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.2.m1.1c">31.90</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.2.m1.1d">31.90</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.11.11.3"><math alttext="13.95" class="ltx_Math" display="inline" id="S3.T2.11.11.3.m1.1"><semantics id="S3.T2.11.11.3.m1.1a"><mn id="S3.T2.11.11.3.m1.1.1" xref="S3.T2.11.11.3.m1.1.1.cmml">13.95</mn><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.3.m1.1b"><cn id="S3.T2.11.11.3.m1.1.1.cmml" type="float" xref="S3.T2.11.11.3.m1.1.1">13.95</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.3.m1.1c">13.95</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.3.m1.1d">13.95</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.12.12.4"><math alttext="35.55" class="ltx_Math" display="inline" id="S3.T2.12.12.4.m1.1"><semantics id="S3.T2.12.12.4.m1.1a"><mn id="S3.T2.12.12.4.m1.1.1" xref="S3.T2.12.12.4.m1.1.1.cmml">35.55</mn><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.4.m1.1b"><cn id="S3.T2.12.12.4.m1.1.1.cmml" type="float" xref="S3.T2.12.12.4.m1.1.1">35.55</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.4.m1.1c">35.55</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.4.m1.1d">35.55</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.16.16">
<td class="ltx_td ltx_align_left" id="S3.T2.16.16.5">DeepSeek-R1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.13.13.1"><math alttext="94.44" class="ltx_Math" display="inline" id="S3.T2.13.13.1.m1.1"><semantics id="S3.T2.13.13.1.m1.1a"><mn id="S3.T2.13.13.1.m1.1.1" xref="S3.T2.13.13.1.m1.1.1.cmml">94.44</mn><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.1.m1.1b"><cn id="S3.T2.13.13.1.m1.1.1.cmml" type="float" xref="S3.T2.13.13.1.m1.1.1">94.44</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.1.m1.1c">94.44</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.1.m1.1d">94.44</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.14.14.2"><math alttext="68.97" class="ltx_Math" display="inline" id="S3.T2.14.14.2.m1.1"><semantics id="S3.T2.14.14.2.m1.1a"><mn id="S3.T2.14.14.2.m1.1.1" xref="S3.T2.14.14.2.m1.1.1.cmml">68.97</mn><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.2.m1.1b"><cn id="S3.T2.14.14.2.m1.1.1.cmml" type="float" xref="S3.T2.14.14.2.m1.1.1">68.97</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.2.m1.1c">68.97</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.2.m1.1d">68.97</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.15.15.3"><math alttext="41.86" class="ltx_Math" display="inline" id="S3.T2.15.15.3.m1.1"><semantics id="S3.T2.15.15.3.m1.1a"><mn id="S3.T2.15.15.3.m1.1.1" xref="S3.T2.15.15.3.m1.1.1.cmml">41.86</mn><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.3.m1.1b"><cn id="S3.T2.15.15.3.m1.1.1.cmml" type="float" xref="S3.T2.15.15.3.m1.1.1">41.86</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.3.m1.1c">41.86</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.3.m1.1d">41.86</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.16.16.4"><math alttext="65.23" class="ltx_Math" display="inline" id="S3.T2.16.16.4.m1.1"><semantics id="S3.T2.16.16.4.m1.1a"><mn id="S3.T2.16.16.4.m1.1.1" xref="S3.T2.16.16.4.m1.1.1.cmml">65.23</mn><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.4.m1.1b"><cn id="S3.T2.16.16.4.m1.1.1.cmml" type="float" xref="S3.T2.16.16.4.m1.1.1">65.23</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.4.m1.1c">65.23</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.4.m1.1d">65.23</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.20.20">
<td class="ltx_td ltx_align_left" id="S3.T2.20.20.5">Qwen2.5-Max</td>
<td class="ltx_td ltx_align_left" id="S3.T2.17.17.1"><math alttext="74.07" class="ltx_Math" display="inline" id="S3.T2.17.17.1.m1.1"><semantics id="S3.T2.17.17.1.m1.1a"><mn id="S3.T2.17.17.1.m1.1.1" xref="S3.T2.17.17.1.m1.1.1.cmml">74.07</mn><annotation-xml encoding="MathML-Content" id="S3.T2.17.17.1.m1.1b"><cn id="S3.T2.17.17.1.m1.1.1.cmml" type="float" xref="S3.T2.17.17.1.m1.1.1">74.07</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.17.1.m1.1c">74.07</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.17.1.m1.1d">74.07</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.18.18.2"><math alttext="25.00" class="ltx_Math" display="inline" id="S3.T2.18.18.2.m1.1"><semantics id="S3.T2.18.18.2.m1.1a"><mn id="S3.T2.18.18.2.m1.1.1" xref="S3.T2.18.18.2.m1.1.1.cmml">25.00</mn><annotation-xml encoding="MathML-Content" id="S3.T2.18.18.2.m1.1b"><cn id="S3.T2.18.18.2.m1.1.1.cmml" type="float" xref="S3.T2.18.18.2.m1.1.1">25.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.18.2.m1.1c">25.00</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.18.2.m1.1d">25.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T2.19.19.3"><math alttext="10.47" class="ltx_Math" display="inline" id="S3.T2.19.19.3.m1.1"><semantics id="S3.T2.19.19.3.m1.1a"><mn id="S3.T2.19.19.3.m1.1.1" xref="S3.T2.19.19.3.m1.1.1.cmml">10.47</mn><annotation-xml encoding="MathML-Content" id="S3.T2.19.19.3.m1.1b"><cn id="S3.T2.19.19.3.m1.1.1.cmml" type="float" xref="S3.T2.19.19.3.m1.1.1">10.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.19.3.m1.1c">10.47</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.19.3.m1.1d">10.47</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.20.20.4"><math alttext="30.47" class="ltx_Math" display="inline" id="S3.T2.20.20.4.m1.1"><semantics id="S3.T2.20.20.4.m1.1a"><mn id="S3.T2.20.20.4.m1.1.1" xref="S3.T2.20.20.4.m1.1.1.cmml">30.47</mn><annotation-xml encoding="MathML-Content" id="S3.T2.20.20.4.m1.1b"><cn id="S3.T2.20.20.4.m1.1.1.cmml" type="float" xref="S3.T2.20.20.4.m1.1.1">30.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.20.20.4.m1.1c">30.47</annotation><annotation encoding="application/x-llamapun" id="S3.T2.20.20.4.m1.1d">30.47</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.24.24.5">QwQ-Plus</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.21.21.1"><math alttext="92.59" class="ltx_Math" display="inline" id="S3.T2.21.21.1.m1.1"><semantics id="S3.T2.21.21.1.m1.1a"><mn id="S3.T2.21.21.1.m1.1.1" xref="S3.T2.21.21.1.m1.1.1.cmml">92.59</mn><annotation-xml encoding="MathML-Content" id="S3.T2.21.21.1.m1.1b"><cn id="S3.T2.21.21.1.m1.1.1.cmml" type="float" xref="S3.T2.21.21.1.m1.1.1">92.59</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.21.21.1.m1.1c">92.59</annotation><annotation encoding="application/x-llamapun" id="S3.T2.21.21.1.m1.1d">92.59</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.22.22.2"><math alttext="62.93" class="ltx_Math" display="inline" id="S3.T2.22.22.2.m1.1"><semantics id="S3.T2.22.22.2.m1.1a"><mn id="S3.T2.22.22.2.m1.1.1" xref="S3.T2.22.22.2.m1.1.1.cmml">62.93</mn><annotation-xml encoding="MathML-Content" id="S3.T2.22.22.2.m1.1b"><cn id="S3.T2.22.22.2.m1.1.1.cmml" type="float" xref="S3.T2.22.22.2.m1.1.1">62.93</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.22.22.2.m1.1c">62.93</annotation><annotation encoding="application/x-llamapun" id="S3.T2.22.22.2.m1.1d">62.93</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.23.23.3"><math alttext="24.42" class="ltx_Math" display="inline" id="S3.T2.23.23.3.m1.1"><semantics id="S3.T2.23.23.3.m1.1a"><mn id="S3.T2.23.23.3.m1.1.1" xref="S3.T2.23.23.3.m1.1.1.cmml">24.42</mn><annotation-xml encoding="MathML-Content" id="S3.T2.23.23.3.m1.1b"><cn id="S3.T2.23.23.3.m1.1.1.cmml" type="float" xref="S3.T2.23.23.3.m1.1.1">24.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.23.23.3.m1.1c">24.42</annotation><annotation encoding="application/x-llamapun" id="S3.T2.23.23.3.m1.1d">24.42</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.24.24.4"><math alttext="56.25" class="ltx_Math" display="inline" id="S3.T2.24.24.4.m1.1"><semantics id="S3.T2.24.24.4.m1.1a"><mn id="S3.T2.24.24.4.m1.1.1" xref="S3.T2.24.24.4.m1.1.1.cmml">56.25</mn><annotation-xml encoding="MathML-Content" id="S3.T2.24.24.4.m1.1b"><cn id="S3.T2.24.24.4.m1.1.1.cmml" type="float" xref="S3.T2.24.24.4.m1.1.1">56.25</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.24.24.4.m1.1c">56.25</annotation><annotation encoding="application/x-llamapun" id="S3.T2.24.24.4.m1.1d">56.25</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of different code generation models on the LeetCodeDataset, categorized by problem difficulty (Easy, Medium, Hard).  The overall pass rate for each model is also provided, offering a comprehensive comparison of model performance across various levels of coding complexity.
> <details>
> <summary>read the caption</summary>
> Table 2: Model pass rates by difficulty level on the LeetCodeDataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.6">
<tr class="ltx_tr" id="S3.T3.6.6">
<td class="ltx_td ltx_border_tt" id="S3.T3.6.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S3.T3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.1.1.1.1">
<span class="ltx_para ltx_noindent" id="S3.T3.1.1.1.1.p1">
<span class="ltx_p" id="S3.T3.1.1.1.1.p1.1"><span class="ltx_text" id="S3.T3.1.1.1.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.1.1.1.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.1.1.1.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.1.1.1.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.1.1.1.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o</span></span>
</span></span><span class="ltx_text" id="S3.T3.1.1.1.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S3.T3.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.2.2.2.1">
<span class="ltx_para ltx_noindent" id="S3.T3.2.2.2.1.p1">
<span class="ltx_p" id="S3.T3.2.2.2.1.p1.1"><span class="ltx_text" id="S3.T3.2.2.2.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.2.2.2.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.2.2.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.2.2.2.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.2.2.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">DeepSeek</span></span>
<span class="ltx_tr" id="S3.T3.2.2.2.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.2.2.1.p1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">-V3</span></span>
</span></span><span class="ltx_text" id="S3.T3.2.2.2.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S3.T3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.3.3.3.1">
<span class="ltx_para ltx_noindent" id="S3.T3.3.3.3.1.p1">
<span class="ltx_p" id="S3.T3.3.3.3.1.p1.1"><span class="ltx_text" id="S3.T3.3.3.3.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.3.3.3.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.3.3.3.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.3.3.3.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.3.3.3.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Qwen2.5</span></span>
<span class="ltx_tr" id="S3.T3.3.3.3.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.3.3.3.1.p1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">-Max</span></span>
</span></span><span class="ltx_text" id="S3.T3.3.3.3.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S3.T3.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.4.4.4.1">
<span class="ltx_para ltx_noindent" id="S3.T3.4.4.4.1.p1">
<span class="ltx_p" id="S3.T3.4.4.4.1.p1.1"><span class="ltx_text" id="S3.T3.4.4.4.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.4.4.4.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.4.4.4.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.4.4.4.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.4.4.4.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Claude-3.7</span></span>
<span class="ltx_tr" id="S3.T3.4.4.4.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.4.4.4.1.p1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">-Sonnet</span></span>
</span></span><span class="ltx_text" id="S3.T3.4.4.4.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S3.T3.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.5.5.5.1">
<span class="ltx_para ltx_noindent" id="S3.T3.5.5.5.1.p1">
<span class="ltx_p" id="S3.T3.5.5.5.1.p1.1"><span class="ltx_text" id="S3.T3.5.5.5.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.5.5.5.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.5.5.5.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.5.5.5.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.5.5.5.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">DeepSeek</span></span>
<span class="ltx_tr" id="S3.T3.5.5.5.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.5.5.5.1.p1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">-R1</span></span>
</span></span><span class="ltx_text" id="S3.T3.5.5.5.1.p1.1.3"></span></span>
</span></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_tt" id="S3.T3.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_inline-logical-block ltx_align_top" id="S3.T3.6.6.6.1">
<span class="ltx_para ltx_noindent" id="S3.T3.6.6.6.1.p1">
<span class="ltx_p" id="S3.T3.6.6.6.1.p1.1"><span class="ltx_text" id="S3.T3.6.6.6.1.p1.1.1"></span> <span class="ltx_text" id="S3.T3.6.6.6.1.p1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.6.6.6.1.p1.1.2.1">
<span class="ltx_tr" id="S3.T3.6.6.6.1.p1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.6.6.6.1.p1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">QwQ</span></span>
<span class="ltx_tr" id="S3.T3.6.6.6.1.p1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.6.6.6.1.p1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">-Plus</span></span>
</span></span><span class="ltx_text" id="S3.T3.6.6.6.1.p1.1.3"></span></span>
</span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">Array</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.6.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.2.1">
<span class="ltx_p" id="S3.T3.6.7.2.1.1">32.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.6.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.3.1">
<span class="ltx_p" id="S3.T3.6.7.3.1.1">34.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.6.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.4.1">
<span class="ltx_p" id="S3.T3.6.7.4.1.1">28.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.6.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.5.1">
<span class="ltx_p" id="S3.T3.6.7.5.1.1">51.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.6.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.6.1">
<span class="ltx_p" id="S3.T3.6.7.6.1.1">67.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="S3.T3.6.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.7.7.1">
<span class="ltx_p" id="S3.T3.6.7.7.1.1">55.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.8">
<td class="ltx_td ltx_align_left" id="S3.T3.6.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">String</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.2.1">
<span class="ltx_p" id="S3.T3.6.8.2.1.1">37.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.3.1">
<span class="ltx_p" id="S3.T3.6.8.3.1.1">38.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.4.1">
<span class="ltx_p" id="S3.T3.6.8.4.1.1">35.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.5.1">
<span class="ltx_p" id="S3.T3.6.8.5.1.1">49.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.6.1">
<span class="ltx_p" id="S3.T3.6.8.6.1.1">68.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.8.7.1">
<span class="ltx_p" id="S3.T3.6.8.7.1.1">50.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.9">
<td class="ltx_td ltx_align_left" id="S3.T3.6.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dynamic Programming</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.2.1">
<span class="ltx_p" id="S3.T3.6.9.2.1.1">10.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.3.1">
<span class="ltx_p" id="S3.T3.6.9.3.1.1">15.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.4.1">
<span class="ltx_p" id="S3.T3.6.9.4.1.1">8.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.5.1">
<span class="ltx_p" id="S3.T3.6.9.5.1.1">31.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.6.1">
<span class="ltx_p" id="S3.T3.6.9.6.1.1">70.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.9.7.1">
<span class="ltx_p" id="S3.T3.6.9.7.1.1">40.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.10">
<td class="ltx_td ltx_align_left" id="S3.T3.6.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Hash Table</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.2.1">
<span class="ltx_p" id="S3.T3.6.10.2.1.1">39.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.3.1">
<span class="ltx_p" id="S3.T3.6.10.3.1.1">37.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.4.1">
<span class="ltx_p" id="S3.T3.6.10.4.1.1">35.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.5.1">
<span class="ltx_p" id="S3.T3.6.10.5.1.1">50.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.6.1">
<span class="ltx_p" id="S3.T3.6.10.6.1.1">66.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.10.7.1">
<span class="ltx_p" id="S3.T3.6.10.7.1.1">50.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.11">
<td class="ltx_td ltx_align_left" id="S3.T3.6.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Math</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.2.1">
<span class="ltx_p" id="S3.T3.6.11.2.1.1">38.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.3.1">
<span class="ltx_p" id="S3.T3.6.11.3.1.1">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.4.1">
<span class="ltx_p" id="S3.T3.6.11.4.1.1">32.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.5.1">
<span class="ltx_p" id="S3.T3.6.11.5.1.1">56.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.6.1">
<span class="ltx_p" id="S3.T3.6.11.6.1.1">69.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.11.7.1">
<span class="ltx_p" id="S3.T3.6.11.7.1.1">58.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.12">
<td class="ltx_td ltx_align_left" id="S3.T3.6.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Greedy</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.2.1">
<span class="ltx_p" id="S3.T3.6.12.2.1.1">12.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.3.1">
<span class="ltx_p" id="S3.T3.6.12.3.1.1">15.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.4.1">
<span class="ltx_p" id="S3.T3.6.12.4.1.1">12.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.5.1">
<span class="ltx_p" id="S3.T3.6.12.5.1.1">21.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.6.1">
<span class="ltx_p" id="S3.T3.6.12.6.1.1">62.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.12.7.1">
<span class="ltx_p" id="S3.T3.6.12.7.1.1">28.1</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.13">
<td class="ltx_td ltx_align_left" id="S3.T3.6.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Sorting</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.2.1">
<span class="ltx_p" id="S3.T3.6.13.2.1.1">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.3.1">
<span class="ltx_p" id="S3.T3.6.13.3.1.1">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.4.1">
<span class="ltx_p" id="S3.T3.6.13.4.1.1">6.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.5.1">
<span class="ltx_p" id="S3.T3.6.13.5.1.1">36.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.6.1">
<span class="ltx_p" id="S3.T3.6.13.6.1.1">66.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.13.7.1">
<span class="ltx_p" id="S3.T3.6.13.7.1.1">53.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.14">
<td class="ltx_td ltx_align_left" id="S3.T3.6.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Prefix Sum</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.2.1">
<span class="ltx_p" id="S3.T3.6.14.2.1.1">17.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.3.1">
<span class="ltx_p" id="S3.T3.6.14.3.1.1">14.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.4.1">
<span class="ltx_p" id="S3.T3.6.14.4.1.1">14.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.5.1">
<span class="ltx_p" id="S3.T3.6.14.5.1.1">35.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.6.1">
<span class="ltx_p" id="S3.T3.6.14.6.1.1">71.4</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.14.7.1">
<span class="ltx_p" id="S3.T3.6.14.7.1.1">35.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.15">
<td class="ltx_td ltx_align_left" id="S3.T3.6.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">Binary Search</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.2.1">
<span class="ltx_p" id="S3.T3.6.15.2.1.1">7.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.3.1">
<span class="ltx_p" id="S3.T3.6.15.3.1.1">23.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.4.1">
<span class="ltx_p" id="S3.T3.6.15.4.1.1">11.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.5.1">
<span class="ltx_p" id="S3.T3.6.15.5.1.1">30.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.6.1">
<span class="ltx_p" id="S3.T3.6.15.6.1.1">73.1</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.15.7.1">
<span class="ltx_p" id="S3.T3.6.15.7.1.1">30.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.16">
<td class="ltx_td ltx_align_left" id="S3.T3.6.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Sliding Window</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.2.1">
<span class="ltx_p" id="S3.T3.6.16.2.1.1">52.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.3.1">
<span class="ltx_p" id="S3.T3.6.16.3.1.1">47.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.4.1">
<span class="ltx_p" id="S3.T3.6.16.4.1.1">43.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.5.1">
<span class="ltx_p" id="S3.T3.6.16.5.1.1">69.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.6.1">
<span class="ltx_p" id="S3.T3.6.16.6.1.1">56.5</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.16.7.1">
<span class="ltx_p" id="S3.T3.6.16.7.1.1">52.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.17">
<td class="ltx_td ltx_align_left" id="S3.T3.6.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">Enumeration</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.2.1">
<span class="ltx_p" id="S3.T3.6.17.2.1.1">27.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.3.1">
<span class="ltx_p" id="S3.T3.6.17.3.1.1">31.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.4.1">
<span class="ltx_p" id="S3.T3.6.17.4.1.1">9.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.5.1">
<span class="ltx_p" id="S3.T3.6.17.5.1.1">45.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.6.1">
<span class="ltx_p" id="S3.T3.6.17.6.1.1">63.6</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.17.7.1">
<span class="ltx_p" id="S3.T3.6.17.7.1.1">50.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.18">
<td class="ltx_td ltx_align_left" id="S3.T3.6.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">Matrix</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.2.1">
<span class="ltx_p" id="S3.T3.6.18.2.1.1">19.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.3.1">
<span class="ltx_p" id="S3.T3.6.18.3.1.1">33.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.4.1">
<span class="ltx_p" id="S3.T3.6.18.4.1.1">19.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.5.1">
<span class="ltx_p" id="S3.T3.6.18.5.1.1">52.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.18.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.6.1">
<span class="ltx_p" id="S3.T3.6.18.6.1.1">76.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.18.7.1">
<span class="ltx_p" id="S3.T3.6.18.7.1.1">61.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.19">
<td class="ltx_td ltx_align_left" id="S3.T3.6.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">Simulation</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.2.1">
<span class="ltx_p" id="S3.T3.6.19.2.1.1">63.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.3.1">
<span class="ltx_p" id="S3.T3.6.19.3.1.1">57.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.4.1">
<span class="ltx_p" id="S3.T3.6.19.4.1.1">42.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.5.1">
<span class="ltx_p" id="S3.T3.6.19.5.1.1">63.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.6.1">
<span class="ltx_p" id="S3.T3.6.19.6.1.1">63.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.19.7.1">
<span class="ltx_p" id="S3.T3.6.19.7.1.1">84.2</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.20">
<td class="ltx_td ltx_align_left" id="S3.T3.6.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">Depth-First Search</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.20.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.2.1">
<span class="ltx_p" id="S3.T3.6.20.2.1.1">31.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.20.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.3.1">
<span class="ltx_p" id="S3.T3.6.20.3.1.1">21.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.20.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.4.1">
<span class="ltx_p" id="S3.T3.6.20.4.1.1">26.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.20.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.5.1">
<span class="ltx_p" id="S3.T3.6.20.5.1.1">31.6</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.20.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.6.1">
<span class="ltx_p" id="S3.T3.6.20.6.1.1">57.9</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.20.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.20.7.1">
<span class="ltx_p" id="S3.T3.6.20.7.1.1">57.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.21">
<td class="ltx_td ltx_align_left" id="S3.T3.6.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">Bit Manipulation</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.2.1">
<span class="ltx_p" id="S3.T3.6.21.2.1.1">33.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.3.1">
<span class="ltx_p" id="S3.T3.6.21.3.1.1">44.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.4.1">
<span class="ltx_p" id="S3.T3.6.21.4.1.1">27.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.5.1">
<span class="ltx_p" id="S3.T3.6.21.5.1.1">50.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.6.1">
<span class="ltx_p" id="S3.T3.6.21.6.1.1">50.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.21.7.1">
<span class="ltx_p" id="S3.T3.6.21.7.1.1">66.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.22">
<td class="ltx_td ltx_align_left" id="S3.T3.6.22.1" style="padding-left:4.0pt;padding-right:4.0pt;">Combinatorics</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.2.1">
<span class="ltx_p" id="S3.T3.6.22.2.1.1">12.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.22.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.3.1">
<span class="ltx_p" id="S3.T3.6.22.3.1.1">18.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.22.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.4.1">
<span class="ltx_p" id="S3.T3.6.22.4.1.1">12.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.22.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.5.1">
<span class="ltx_p" id="S3.T3.6.22.5.1.1">37.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.22.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.6.1">
<span class="ltx_p" id="S3.T3.6.22.6.1.1">93.8</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.22.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.22.7.1">
<span class="ltx_p" id="S3.T3.6.22.7.1.1">25.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.23">
<td class="ltx_td ltx_align_left" id="S3.T3.6.23.1" style="padding-left:4.0pt;padding-right:4.0pt;">Counting</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.23.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.2.1">
<span class="ltx_p" id="S3.T3.6.23.2.1.1">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.23.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.3.1">
<span class="ltx_p" id="S3.T3.6.23.3.1.1">26.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.23.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.4.1">
<span class="ltx_p" id="S3.T3.6.23.4.1.1">26.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.23.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.5.1">
<span class="ltx_p" id="S3.T3.6.23.5.1.1">46.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.23.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.6.1">
<span class="ltx_p" id="S3.T3.6.23.6.1.1">53.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.23.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.23.7.1">
<span class="ltx_p" id="S3.T3.6.23.7.1.1">46.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.24">
<td class="ltx_td ltx_align_left" id="S3.T3.6.24.1" style="padding-left:4.0pt;padding-right:4.0pt;">Graph</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.24.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.2.1">
<span class="ltx_p" id="S3.T3.6.24.2.1.1">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.24.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.3.1">
<span class="ltx_p" id="S3.T3.6.24.3.1.1">33.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.24.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.4.1">
<span class="ltx_p" id="S3.T3.6.24.4.1.1">46.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.24.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.5.1">
<span class="ltx_p" id="S3.T3.6.24.5.1.1">53.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.24.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.6.1">
<span class="ltx_p" id="S3.T3.6.24.6.1.1">66.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.24.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.24.7.1">
<span class="ltx_p" id="S3.T3.6.24.7.1.1">66.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.25">
<td class="ltx_td ltx_align_left" id="S3.T3.6.25.1" style="padding-left:4.0pt;padding-right:4.0pt;">Heap (Priority Queue)</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.25.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.2.1">
<span class="ltx_p" id="S3.T3.6.25.2.1.1">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.25.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.3.1">
<span class="ltx_p" id="S3.T3.6.25.3.1.1">53.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.25.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.4.1">
<span class="ltx_p" id="S3.T3.6.25.4.1.1">33.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.25.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.5.1">
<span class="ltx_p" id="S3.T3.6.25.5.1.1">66.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.25.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.6.1">
<span class="ltx_p" id="S3.T3.6.25.6.1.1">66.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.25.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.25.7.1">
<span class="ltx_p" id="S3.T3.6.25.7.1.1">66.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.26">
<td class="ltx_td ltx_align_left" id="S3.T3.6.26.1" style="padding-left:4.0pt;padding-right:4.0pt;">Number Theory</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.26.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.2.1">
<span class="ltx_p" id="S3.T3.6.26.2.1.1">38.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.26.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.3.1">
<span class="ltx_p" id="S3.T3.6.26.3.1.1">30.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.26.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.4.1">
<span class="ltx_p" id="S3.T3.6.26.4.1.1">30.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.26.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.5.1">
<span class="ltx_p" id="S3.T3.6.26.5.1.1">38.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.26.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.6.1">
<span class="ltx_p" id="S3.T3.6.26.6.1.1">69.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.26.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.26.7.1">
<span class="ltx_p" id="S3.T3.6.26.7.1.1">53.8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.27">
<td class="ltx_td ltx_align_left" id="S3.T3.6.27.1" style="padding-left:4.0pt;padding-right:4.0pt;">Breadth-First Search</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.27.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.2.1">
<span class="ltx_p" id="S3.T3.6.27.2.1.1">41.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.27.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.3.1">
<span class="ltx_p" id="S3.T3.6.27.3.1.1">33.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.27.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.4.1">
<span class="ltx_p" id="S3.T3.6.27.4.1.1">50.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.27.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.5.1">
<span class="ltx_p" id="S3.T3.6.27.5.1.1">58.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.27.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.6.1">
<span class="ltx_p" id="S3.T3.6.27.6.1.1">58.3</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.27.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.27.7.1">
<span class="ltx_p" id="S3.T3.6.27.7.1.1">75.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.28">
<td class="ltx_td ltx_align_left" id="S3.T3.6.28.1" style="padding-left:4.0pt;padding-right:4.0pt;">Tree</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.28.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.2.1">
<span class="ltx_p" id="S3.T3.6.28.2.1.1">27.3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.28.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.3.1">
<span class="ltx_p" id="S3.T3.6.28.3.1.1">18.2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.28.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.4.1">
<span class="ltx_p" id="S3.T3.6.28.4.1.1">9.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.28.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.5.1">
<span class="ltx_p" id="S3.T3.6.28.5.1.1">9.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.28.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.6.1">
<span class="ltx_p" id="S3.T3.6.28.6.1.1">72.7</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.28.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.28.7.1">
<span class="ltx_p" id="S3.T3.6.28.7.1.1">54.5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.29">
<td class="ltx_td ltx_align_left" id="S3.T3.6.29.1" style="padding-left:4.0pt;padding-right:4.0pt;">Two Pointers</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.29.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.2.1">
<span class="ltx_p" id="S3.T3.6.29.2.1.1">20.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.29.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.3.1">
<span class="ltx_p" id="S3.T3.6.29.3.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.29.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.4.1">
<span class="ltx_p" id="S3.T3.6.29.4.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.29.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.5.1">
<span class="ltx_p" id="S3.T3.6.29.5.1.1">40.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.29.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.6.1">
<span class="ltx_p" id="S3.T3.6.29.6.1.1">80.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.29.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.29.7.1">
<span class="ltx_p" id="S3.T3.6.29.7.1.1">40.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.30">
<td class="ltx_td ltx_align_left" id="S3.T3.6.30.1" style="padding-left:4.0pt;padding-right:4.0pt;">Segment Tree</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.30.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.2.1">
<span class="ltx_p" id="S3.T3.6.30.2.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.30.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.3.1">
<span class="ltx_p" id="S3.T3.6.30.3.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.30.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.4.1">
<span class="ltx_p" id="S3.T3.6.30.4.1.1">30.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.30.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.5.1">
<span class="ltx_p" id="S3.T3.6.30.5.1.1">70.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T3.6.30.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.6.1">
<span class="ltx_p" id="S3.T3.6.30.6.1.1">80.0</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T3.6.30.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.30.7.1">
<span class="ltx_p" id="S3.T3.6.30.7.1.1">30.0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.31">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.31.1" style="padding-left:4.0pt;padding-right:4.0pt;">All</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T3.6.31.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.2.1">
<span class="ltx_p" id="S3.T3.6.31.2.1.1">35.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T3.6.31.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.3.1">
<span class="ltx_p" id="S3.T3.6.31.3.1.1">35.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T3.6.31.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.4.1">
<span class="ltx_p" id="S3.T3.6.31.4.1.1">30.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T3.6.31.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.5.1">
<span class="ltx_p" id="S3.T3.6.31.5.1.1">50.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T3.6.31.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.6.1">
<span class="ltx_p" id="S3.T3.6.31.6.1.1">65.2</span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_bb" id="S3.T3.6.31.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.6.31.7.1">
<span class="ltx_p" id="S3.T3.6.31.7.1.1">56.2</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates (pass rates) of six different code generation models across various topic tags or categories of coding problems.  The models' performance is evaluated on a subset of the LeetCode dataset, categorized by problem type (e.g., Array, String, Dynamic Programming). This allows for a granular analysis of each model's strengths and weaknesses across different problem domains, revealing patterns of performance variability.
> <details>
> <summary>read the caption</summary>
> Table 3: Pass rates of models across topic tags.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2">
<tr class="ltx_tr" id="S4.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T4.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.3.1">Training Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.2.2.4.1"></span><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.4.2"> <span class="ltx_text" id="S4.T4.2.2.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.2.4.2.1.1">
<span class="ltx_tr" id="S4.T4.2.2.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.4.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Rows</span></span>
</span></span><span class="ltx_text" id="S4.T4.2.2.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.2.2.5.1"></span><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.5.2"> <span class="ltx_text" id="S4.T4.2.2.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.2.5.2.1.1">
<span class="ltx_tr" id="S4.T4.2.2.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.5.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Human</span></span>
<span class="ltx_tr" id="S4.T4.2.2.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.5.2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Eval</span></span>
</span></span><span class="ltx_text" id="S4.T4.2.2.5.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.2.2.6.1"></span><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.6.2"> <span class="ltx_text" id="S4.T4.2.2.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.2.6.2.1.1">
<span class="ltx_tr" id="S4.T4.2.2.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.6.2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">MBPP</span></span>
</span></span><span class="ltx_text" id="S4.T4.2.2.6.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.2"></span><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1"> <span class="ltx_text" id="S4.T4.1.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.1.1.1.1">
<span class="ltx_tr" id="S4.T4.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.1.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">LiveCode</span></span>
<span class="ltx_tr" id="S4.T4.1.1.1.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.1.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Bench</span></span>
<span class="ltx_tr" id="S4.T4.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">24-08<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T4.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.1.1.1.m1.1d">∼</annotation></semantics></math>25-02</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.1.1.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T4.2.2.2.2"></span><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.1"> <span class="ltx_text" id="S4.T4.2.2.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.2.2.1.1.1">
<span class="ltx_tr" id="S4.T4.2.2.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.1.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">LeetCode</span></span>
<span class="ltx_tr" id="S4.T4.2.2.2.1.1.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.1.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Dataset</span></span>
<span class="ltx_tr" id="S4.T4.2.2.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.2.2.2.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">24-07<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.1.1.1.1.m1.1"><semantics id="S4.T4.2.2.2.1.1.1.1.1.m1.1a"><mo id="S4.T4.2.2.2.1.1.1.1.1.m1.1.1" xref="S4.T4.2.2.2.1.1.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T4.2.2.2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.1.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.1.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.1.1.1.1.m1.1d">∼</annotation></semantics></math>25-03</span></span>
</span></span><span class="ltx_text" id="S4.T4.2.2.2.1.2"></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T4.2.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.1.1">
<span class="ltx_p" id="S4.T4.2.3.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.3.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.3.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.3.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.3.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.3.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Magicoder</span></span>
<span class="ltx_tr" id="S4.T4.2.3.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.3.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Evol-Instruct-110K</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.3.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.2.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.3.2.1.1">111.1K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.2.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.3.3.1.1">77.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.2.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.3.4.1.1">74.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.2.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.3.5.1.1">15.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.2.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.3.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.3.6.1.1">13.7</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T4.2.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.1.1">
<span class="ltx_p" id="S4.T4.2.4.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.4.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.4.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.4.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.4.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.4.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Magicoder</span></span>
<span class="ltx_tr" id="S4.T4.2.4.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.4.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">OSS-Instruct-75K</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.4.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.4.2.1.1">75.1K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.4.3.1.1">73.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.4.4.1.1">76.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.4.5.1.1">15.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.4.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.4.6.1.1">12.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T4.2.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.1.1">
<span class="ltx_p" id="S4.T4.2.5.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.5.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.5.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.5.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.5.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.5.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Open-R1</span></span>
<span class="ltx_tr" id="S4.T4.2.5.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.5.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">CodeForces-CoT</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.5.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.5.2.1.1">9.5K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.5.3.1.1">79.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.5.4.1.1">74.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.5.5.1.1">15.8</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.5.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.5.6.1.1">13.3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T4.2.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.1.1">
<span class="ltx_p" id="S4.T4.2.6.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.6.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.6.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.6.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.6.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.6.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">OpenThoughts</span></span>
<span class="ltx_tr" id="S4.T4.2.6.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.6.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">114k</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.6.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.6.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.6.2.1.1">19.9K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.6.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.6.3.1.1">77.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.6.4.1.1">75.7</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.6.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.6.5.1.1">16.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.6.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.6.6.1.1">16.4</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T4.2.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.1.1">
<span class="ltx_p" id="S4.T4.2.7.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.7.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.7.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.7.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.7.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.7.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">LeetCodeDataset</span></span>
<span class="ltx_tr" id="S4.T4.2.7.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.7.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Pre 2024-07 human</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.7.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.7.2.1.1">2.6K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.7.3.1.1">55.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.7.4.1.1">53.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.7.5.1.1">14.0</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S4.T4.2.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.7.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.7.6.1.1">10.9</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T4.2.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.1.1">
<span class="ltx_p" id="S4.T4.2.8.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_align_left" id="S4.T4.2.8.1.1.1.1"></span><span class="ltx_text ltx_align_left" id="S4.T4.2.8.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.2.8.1.1.1.2.1">
<span class="ltx_tr" id="S4.T4.2.8.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.8.1.1.1.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">LeetCodeDataset</span></span>
<span class="ltx_tr" id="S4.T4.2.8.1.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.2.8.1.1.1.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">Pre 2024-07 model</span></span>
</span></span><span class="ltx_text ltx_align_left" id="S4.T4.2.8.1.1.1.3"></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.2.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.2.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.8.2.1.1">2.6K</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.2.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.3.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.8.3.1.1">79.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.2.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.4.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.8.4.1.1">77.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.2.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.5.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.8.5.1.1">15.4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.2.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.2.8.6.1">
<span class="ltx_p ltx_align_center" id="S4.T4.2.8.6.1.1">12.5</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of supervised fine-tuning (SFT) experiments conducted on various code datasets using the Qwen2.5-Coder-7B model.  It compares the performance of models trained on different datasets (varying in size from 9.5K to 111.1K rows) across four different benchmarks: HumanEval, MBPP, LiveCodeBench, and the LeetCodeDataset evaluation set. The table highlights the performance gains achieved using the LeetCodeDataset, even with a significantly smaller number of training samples.
> <details>
> <summary>read the caption</summary>
> Table 4: Model SFT-training results.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.14655/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.14655/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}