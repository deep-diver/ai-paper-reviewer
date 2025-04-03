---
title: "PaperBench: Evaluating AI's Ability to Replicate AI Research"
summary: "PaperBench: AI Benchmark to Replicate Research"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 OpenAI",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01848 {{< /keyword >}}
{{< keyword icon="writer" >}} Giulio Starace et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01848" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01848" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01848/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**PaperBench** is introduced to assess AI agents' ability to replicate state-of-the-art ML research, addressing the need for careful study of AI capabilities to ensure safe development. It evaluates agents replicating 20 ICML 2024 papers from scratch, requiring understanding paper contributions, codebase development, and experiment execution. The process faces challenges in autonomous capabilities, safety assurance, and the need for scalable evaluation methods due to manual grading complexities.



To tackle the issues, the paper introduces rubrics that hierarchically decompose replication tasks into gradable sub-tasks and uses LLM-based judges for automated grading. Results from evaluating several frontier models reveal that even the best-performing agents are not yet outperforming human baselines in replicating ML research, emphasizing that there is a need for future research to boost AI engineering abilities of AI agents. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PaperBench is a new benchmark for evaluating the ability of AI agents to replicate ML research papers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark includes author-approved rubrics and an automated grading workflow using LLM-based judges. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current frontier AI models show promise but still lag behind human experts in replicating ML research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**PaperBench** offers a rigorous benchmark for AI autonomy in ML research, pushing for safe AI development and enabling more realistic AI evaluation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01848/x1.png)

> 🔼 PaperBench is a benchmark that evaluates AI agents' ability to reproduce AI research papers.  The process involves three stages: (1) An AI agent receives a research paper and rubric; (2) The agent generates a codebase from scratch and submits it for execution; and (3) An LLM-based judge grades the results of the executed code against the rubric's criteria.  This figure visually depicts the workflow, showing the agent, the research paper, the rubric, the submission of the agent, the reproduction process, and the final LLM-based grading process.
> <details>
> <summary>read the caption</summary>
> Figure 1: PaperBench is a benchmark for evaluating AI agents’ abilities to replicate AI research. Each sample includes a research paper and a grading rubric that specifies the assessment criteria for a complete replication. Agents create a codebase from scratch as their submission (1), which is then executed to verify result reproduction (2) and graded against the rubric by an LLM-based judge (3).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_border_tt" id="S2.T1.1.1.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.2">Code Dev.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.3">Execution</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.4">Res. Match</th>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<td class="ltx_td ltx_align_right ltx_border_t" id="S2.T1.1.2.2.1">READMEs &amp; Docs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.3">✓</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S2.T1.1.2.2.4">✓</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<td class="ltx_td ltx_align_right" id="S2.T1.1.3.3.1">Source code</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.3">✓</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.3.3.4">✗</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<td class="ltx_td ltx_align_right" id="S2.T1.1.4.4.1">reproduce.sh</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.3">✓</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.4.4.4">✓</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<td class="ltx_td ltx_align_right" id="S2.T1.1.5.5.1">reproduce.log</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.2">✗</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.3">✓</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S2.T1.1.5.5.4">✓</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.6">
<td class="ltx_td ltx_align_right ltx_border_bb" id="S2.T1.1.6.6.1">Repro outputs</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.6.6.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.6.6.3">✗</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S2.T1.1.6.6.4">✓</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the three types of leaf nodes used in PaperBench's rubric grading system: Code Development, Execution, and Result Match.  Each type indicates which files from the agent's submission are shown to the LLM judge during grading.  This is important because the judge's assessment depends on which files are relevant to each type of requirement.
> <details>
> <summary>read the caption</summary>
> Table 1: Leaf nodes can either be Code Development, Execution or Result Match, which determines which files are shown to the judge when grading on that leaf node.
> </details>





### In-depth insights


#### AI Replicability
The paper explores the concept of **AI replicability** through the creation of PaperBench, a benchmark designed to evaluate the ability of AI agents to replicate ML research. **Replicability** is a core tenet of scientific rigor, and its automation would drastically accelerate progress. They find that current AI systems demonstrate a limited capacity for achieving end-to-end research **replication**, highlighting the complexity of the task and the limitations of current AI systems in long-horizon tasks. They propose PaperBench as a tool for **evaluating, monitoring, and forecasting** AI capabilities. The study acknowledges the dual-use nature of such capabilities. It leads to rapidly accelerating scientific discovery but also entails a risk of outpacing our ability to understand consequences. There is a need to measure autonomy and develop safety measures. PaperBench directly assesses this by measuring how well an AI can independently repeat existing published work.

#### Benchmarking AI
The paper introduces PaperBench, a **novel benchmark** for evaluating AI agents' ability to replicate state-of-the-art AI research. This is a significant step towards understanding and measuring **AI autonomy** in research settings. By requiring agents to reproduce experiments from scratch, PaperBench assesses not just coding skills, but also comprehension, problem-solving, and engineering capabilities. A key innovation is the **author-approved rubric**, ensuring accuracy and realism in evaluation.  The benchmark aims to enable the study of AI's engineering capabilities. Results provide insights into model performance and limitations on long-horizon research tasks. The code aims to enable further AI research in undestanding the AI engineering capability. PaperBench targets a **real-world test** of ML R&D. There are only 20 papers, but that is misleadng since the rubric each compose of hundres of nodes. The benchmark poses challenges, including avoiding over specialization

#### LLM-Based Judge
The research paper introduces an **LLM-based judge** to automate the evaluation of replicated research papers due to the high time cost of manual grading. This is a crucial step for scaling the evaluation process. The judge, named SimpleJudge, grades each leaf node in a rubric independently, considering the paper's markdown, addendums, rubric JSON, and relevant submission files. It uses OpenAI's o3-mini model as the backend, which is cost-effective. The judge was further evaluated via **JudgeEval**, revealing the accuracy of the automated judgements. While this LLM judge's performance may not match expert human accuracy, it represents a significant step towards efficient evaluation, and there is room for improvement over time.

#### Rubric Design
From the provided text, rubric design centers on hierarchically decomposing evaluation tasks into smaller, gradable sub-tasks with clear criteria. This involves co-development with experts to ensure accuracy and realism, enabling scalable assessment via LLM-based judges. **Rubrics are structured as trees, with granular, weighted nodes reflecting the importance of each sub-task.** Requirements for successful replication are detailed, allowing partial credit. Leaf nodes have specific requirement types that assess either Result Match, Execution, or Code Development. Crucially, the design balances comprehensive specification with potential for automation and incremental improvement. **The aim is to create a reliable, efficient framework for evaluating AI's research replication abilities.**

#### Code Execution
Code execution is a key part of reproducing research findings. It involves running the code to see if the results match what the paper claims. The process often needs a specifically created environment with the right software and hardware. There are steps to make sure the code works properly, such as debugging and fixing errors. It can be time-consuming, requiring careful attention to detail. When code is executed, it needs some requirements like it must be ensured if it can work with the available resources and also, its capability to utilize each available resources. The goal is to validate the paper's claims, by comparing the output of the code with what the paper reports. Also, **the code must run** without using or viewing paper authors' original codebases.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01848/x2.png)

> 🔼 The figure illustrates how a rubric is structured to evaluate the replication of a research paper. The rubric uses a hierarchical tree structure, breaking down the replication task into smaller, more specific subtasks. Each leaf node (lowest level) represents a single, clearly defined criterion that can be assessed as either passed or failed. A parent node's score is calculated as a weighted average of its children's scores. This hierarchical structure allows for a granular assessment of the replication attempt, providing a more nuanced evaluation than a simple pass/fail judgment. The example in the figure shows a final Replication Score of 55%.
> <details>
> <summary>read the caption</summary>
> Figure 2: Rubrics hierarchically decompose the replication task into a tree of increasingly granular requirements. Leaf nodes are graded for binary pass/fail criteria, and a parent’s score is the weighted average of its children. In the example above, the final Replication Score is 55%.
> </details>



![](https://arxiv.org/html/2504.01848/)

> 🔼 This figure compares the performance of human researchers and the o1 AI model on a subset of four papers from the PaperBench benchmark.  The x-axis represents the time spent working on the replication tasks (in hours), and the y-axis shows the achieved replication score.  The results indicate that the o1 model initially outperforms human participants, but this advantage is short-lived;  its performance plateaus after the first hour, and the human researchers surpass it by the end of the experiment.  The test-time-model-adaptation task's human data is incomplete (ending at 24 hours), and therefore, it's excluded from the analysis of the 3-paper subset that is mentioned in the main paper.  Error bars show the standard error of the mean (SEM) based on three repetitions of each experiment.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparing human versus agent performance on a 4-paper subset of PaperBench. o1 initially outperforms the human baseline but plateaus after the first hour, leading it to fall behind the humans by the end. Note that the human attempt for test-time-model-adaptation ends at the 24 hour mark and is thus excluded from the ‘3-paper subset’ discussed elsewhere in the paper. Error bars on model performance is SEM over 3 repeats.
> </details>



![](https://arxiv.org/html/2504.01848/extracted/6328448/assets/rubric_excerpt_json.png)

> 🔼 This figure shows an example of a rubric from PaperBench, a benchmark for evaluating AI's ability to replicate AI research.  The left side displays the rubric in its underlying JSON format, which is a hierarchical tree structure defining the requirements for successful replication. Each node represents a specific criterion, with leaf nodes representing individual pass/fail requirements.  The right side shows the same rubric in a graphical user interface (GUI), providing a more user-friendly visual representation of the hierarchical structure and the weights assigned to each criterion. This highlights the complexity and granularity involved in assessing AI's replication capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: An excerpt of the rubric for one of the papers in PaperBench. Shown in the underlying JSON (left) and in a GUI (right).
> </details>



![](https://arxiv.org/html/2504.01848/extracted/6328448/assets/rubric_excerpt_gui.png)

> 🔼 This figure compares the performance of different large language models (LLMs) used as automated judges on the JudgeEval benchmark. The x-axis represents the average cost per paper in USD, which is calculated based on the number of input and output tokens consumed by each model during the evaluation.  The y-axis represents the F1 score, a common metric for evaluating the accuracy of binary classification.  The higher F1 score and lower cost, the better the model's performance.  The plot includes results from several OpenAI models (GPT-4-mini, GPT-4, 01-mini, 01, 03-mini), as well as a random baseline and human performance. The human cost is estimated at $1200 USD per paper, based on 12 hours of work at $100/hour.  The reasoning effort for the LLMs was set to 'high'. The figure aims to showcase the trade-off between cost and accuracy when selecting an automated judge for the PaperBench evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance on JudgeEval vs average cost per paper in JudgeEval for various model backends in SimpleJudge. Model cost measured in terms of input+output tokens multiplied by their respective cost-per-token on the OpenAI API. Human cost estimated at 12 hours of work at an hourly rate of $100 USD/hr. Reasoning models are run with with reasoning effort set to “high”.
> </details>



![](https://arxiv.org/html/2504.01848/x4.png)

> 🔼 This figure displays the impact of rubric pruning on the accuracy of an automated judge.  The x-axis shows different depths of pruning applied to the rubric.  A depth of 100 means no pruning. The y-axis shows the replication score.  The automated judge's scores (using OpenAI's o3-mini model) are shown with error bars representing the standard error of the mean across three repetitions. The ground truth score from a human judge is also plotted in red. This experiment helps determine the trade-off between the cost of judging (which decreases with more pruning) and the accuracy of the automated judging process.
> <details>
> <summary>read the caption</summary>
> Figure 6: The replication score assigned by o3-mini SimpleJudge to the ‘rice/0’ submission in JudgeEval, over different depths of pruning. Pruning at depth 100 is equivalent to not pruning for this paper. We plot the ground truth human Judge grade in red. Error bars are standard error of the mean over 3 repeats.
> </details>



![](https://arxiv.org/html/2504.01848/x5.png)

> 🔼 This figure shows the prompt used by the automated judge (SimpleJudge) to rank the files from a submission. The prompt instructs the judge to identify and list the most relevant files in descending order of importance for assessing the submission against a specific criterion (leaf node) from the rubric.  The prompt includes context from the paper, the addendum, the rubric, and the directory structure of the submission.  Variables within the prompt, such as {tree_structure}, are dynamically replaced with their values during runtime, making the prompt adaptable to different submissions and criteria.  The goal is to provide the judge with the most relevant information to make an accurate assessment.
> <details>
> <summary>read the caption</summary>
> Figure 7: Judge file ranking prompt. Variables like tree_structure— are replaced with their value at runtime.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1.1">Paper</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1.1.1">Source</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1">ICML Topic</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1">Nodes</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.2.1.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.2.1.1.1.1.1">APT: Adaptive Pruning and Tuning Pretrained Language Models for Efficient Training and Inference</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.2.1.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T2.1.2.1.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.2.1.3.1.1">Deep Learning: LLMs</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.2.1.4.1" style="background-color:#FFFFFF;">172</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.3.2.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.3.2.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.3.2.1.1.1.1">All-in-one simulation-based inference</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.3.2.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.3.2.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.3.2.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.3.2.3.1.1">Probabilistic Methods</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.3.2.4.1" style="background-color:#F9F9F9;">234</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.4.3.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.4.3.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.4.3.1.1.1.1">Batch and match: black-box variational inference with a score-based divergence</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.4.3.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.4.3.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.4.3.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.4.3.3.1.1">Probabilistic Methods - Variational Inference</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.3.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.4.3.4.1" style="background-color:#FFFFFF;">1021</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.5.4.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.4.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.5.4.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.5.4.1.1.1.1">BBox-Adapter: Lightweight Adapting for Black-Box Large Language Models</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.5.4.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.4.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.5.4.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.5.4.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.5.4.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.5.4.3.1.1">Deep Learning: LLMs</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.5.4.4.1" style="background-color:#F9F9F9;">422</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.6.5.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.5.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.6.5.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.6.5.1.1.1.1">Bridging Data Gaps in Diffusion Models with Adversarial Noise-Based Transfer Learning</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.6.5.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.5.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.6.5.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.6.5.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.6.5.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.6.5.3.1.1">Theory: Domain Adapt. &amp; Transfer Learning</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.5.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.6.5.4.1" style="background-color:#FFFFFF;">207</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.6" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.7.6.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.6.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.7.6.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.7.6.1.1.1.1">Unsupervised Zero-Shot Reinforcement Learning via Functional Reward Encodings</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.7.6.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.6.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.7.6.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.7.6.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.7.6.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.7.6.3.1.1">Deep RL</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.6.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.7.6.4.1" style="background-color:#F9F9F9;">636</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.8.7.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.7.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.8.7.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.8.7.1.1.1.1">Fine-tuning Reinforcement Learning Models is Secretly a Forgetting Mitigation Problem</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.8.7.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.7.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.8.7.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.8.7.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.8.7.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.8.7.3.1.1">Reinforcement Learning: Deep RL</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.8.7.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.8.7.4.1" style="background-color:#FFFFFF;">233</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.8" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.9.8.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.8.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.9.8.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.9.8.1.1.1.1">Refined Coreset Selection: Towards Minimal Coreset Size under Model Performance Constraints</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.9.8.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.8.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.9.8.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.9.8.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.9.8.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.9.8.3.1.1">Data-Centric AI</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.8.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.9.8.4.1" style="background-color:#F9F9F9;">1471</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.10.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.10.9.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.10.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.10.9.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.10.9.1.1.1.1">LCA-on-the-Line: Benchmarking Out of Distribution Generalization with Class Taxonomies</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.10.9.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.10.9.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.10.9.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.10.9.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.10.9.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.10.9.3.1.1">Deep Learning: Robustness</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.10.9.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.10.9.4.1" style="background-color:#FFFFFF;">1048</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.11.10" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.11.10.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.11.10.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.11.10.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.11.10.1.1.1.1">A Mechanistic Understanding of Alignment Algorithms: A Case Study on DPO and Toxicity</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.11.10.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.11.10.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.11.10.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.11.10.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.11.10.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.11.10.3.1.1">Deep Learning: LLMs</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.11.10.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.11.10.4.1" style="background-color:#F9F9F9;">128</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.12.11" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.12.11.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.12.11.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.12.11.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.12.11.1.1.1.1">Challenges in Training PINNs: A Loss Landscape Perspective</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.12.11.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.12.11.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.12.11.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.12.11.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.12.11.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.12.11.3.1.1">Deep Learning</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.12.11.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.12.11.4.1" style="background-color:#FFFFFF;">2551</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.13.12" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.13.12.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.13.12.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.13.12.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.13.12.1.1.1.1">RICE: Breaking Through the Training Bottlenecks of Reinforcement Learning with Explanation</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.13.12.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.13.12.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.13.12.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.13.12.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.13.12.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.13.12.3.1.1">Deep RL</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.13.12.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.13.12.4.1" style="background-color:#F9F9F9;">489</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.14.13" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.14.13.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.14.13.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.14.13.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.14.13.1.1.1.1">Robust CLIP: Unsupervised Adversarial Fine-Tuning of Vision Embeddings for Robust Large Vision-Language Models</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.14.13.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.14.13.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.14.13.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.14.13.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.14.13.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.14.13.3.1.1">Deep Learning: Robustness</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.14.13.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.14.13.4.1" style="background-color:#FFFFFF;">146</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.15.14" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.15.14.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.15.14.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.15.14.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.15.14.1.1.1.1">Sample-specific Masks for Visual Reprogramming-based Prompting</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.15.14.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.15.14.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.15.14.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.15.14.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.15.14.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.15.14.3.1.1">Misc. Aspects of ML: General ML Techniques</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.15.14.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.15.14.4.1" style="background-color:#F9F9F9;">396</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.16.15" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.16.15.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.16.15.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.16.15.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.16.15.1.1.1.1">SAPG: Split and Aggregate Policy Gradients</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.16.15.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.16.15.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.16.15.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.16.15.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.16.15.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.16.15.3.1.1">Deep RL</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.16.15.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.16.15.4.1" style="background-color:#FFFFFF;">279</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.17.16" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.17.16.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.17.16.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.17.16.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.17.16.1.1.1.1">Sequential Neural Score Estimation: Likelihood-Free Inference with Conditional Score Based Diffusion Models</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.17.16.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.17.16.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.17.16.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.17.16.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.17.16.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.17.16.3.1.1">Probabilistic Methods</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.17.16.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.17.16.4.1" style="background-color:#F9F9F9;">123</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.18.17" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.18.17.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.18.17.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.18.17.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.18.17.1.1.1.1">Stay on Topic with Classifier-Free Guidance</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.18.17.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.18.17.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.18.17.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.18.17.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.18.17.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.18.17.3.1.1">Deep Learning: LLMs</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.18.17.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.18.17.4.1" style="background-color:#FFFFFF;">186</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.19.18" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.19.18.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.19.18.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.19.18.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.19.18.1.1.1.1">Stochastic Interpolants with Data-Dependent Couplings</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.19.18.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.19.18.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.19.18.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.19.18.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.19.18.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.19.18.3.1.1">Generative Models</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.19.18.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.19.18.4.1" style="background-color:#F9F9F9;">94</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.20.19" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.20.19.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.20.19.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.20.19.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.20.19.1.1.1.1">Test-Time Model Adaptation with Only Forward Passes</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.20.19.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.20.19.2.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.20.19.2.1.1">Oral</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T2.1.20.19.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.20.19.3.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="S3.T2.1.20.19.3.1.1">Distributions Shift and OOD</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.20.19.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.20.19.4.1" style="background-color:#FFFFFF;">236</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.21.20" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.21.20.1" style="width:313.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.21.20.1.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.21.20.1.1.1"><em class="ltx_emph ltx_font_italic" id="S3.T2.1.21.20.1.1.1.1">What Will My Model Forget? Forecasting Forgotten Examples in Language Model Refinement</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.21.20.2" style="width:37.0pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.21.20.2.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.21.20.2.1.1">Spotlight</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb" id="S3.T2.1.21.20.3" style="width:85.4pt;padding:0.5pt 4.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.21.20.3.1" style="background-color:#F9F9F9;">
<span class="ltx_p" id="S3.T2.1.21.20.3.1.1">Deep Learning: Everything Else</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.21.20.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="S3.T2.1.21.20.4.1" style="background-color:#F9F9F9;">1146</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the 20 papers included in the PaperBench benchmark.  For each paper, it provides the paper title, whether it was a Spotlight or Oral presentation at ICML 2024, the relevant ICML topic area, and the number of rubric nodes used to evaluate replication attempts for that paper (referencing Table 7 for a full breakdown of rubric node counts).
> <details>
> <summary>read the caption</summary>
> Table 2: List of Papers in PaperBench (with # of rubric nodes from Table 7).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T3.5.1.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.2.1">Acc.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.3.1">Prec.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.4.1">Rec.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.5.1">F1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.6.1">Cost</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.2.2.1.1">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.2.2.2.1">0.48</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.2.2.3.1">0.49</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.4"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.2.2.4.1">0.49</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.5"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.2.2.5.1">0.49</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.2.2.6"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.2.2.6.1">0</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" colspan="5" id="S4.T3.5.3.3.1" style="padding-bottom:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.3.3.1.1">SimpleJudge</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.5.3.3.2" style="padding-bottom:1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.4.4">
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.4.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.4.4.1.1">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.4.4.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.4.4.2.1">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.4.4.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.4.4.3.1">0.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.4.4.4"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.4.4.4.1">0.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.4.4.5"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.4.4.5.1">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.4.4.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.4.4.6.1">8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.5.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.1.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.2.1">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.3.1">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.4"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.4.1">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.5.1">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.6"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.5.5.6.1">120</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.6.6">
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.6.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.6.6.1.1">o1-mini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.6.6.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.6.6.2.1">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.6.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.6.3.1">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.6.6.4"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.6.6.4.1">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.6.6.5"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.6.6.5.1">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.6.6.6"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.6.6.6.1">72</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.7.7">
<td class="ltx_td ltx_align_left" id="S4.T3.5.7.7.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.7.7.1.1">o1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.7.2.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.7.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.7.7.3.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.7.4.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.7.7.5.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.7.7.6"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.7.7.6.1">830</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.5.8.8.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.1.1">o3-mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.8.8.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.2.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.8.8.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.3.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.8.8.4"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.4.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.8.8.5"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.5.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.8.8.6"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.5.8.8.6.1">66</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the macro-averaged metrics (accuracy, precision, recall, and F1 score) for four different language models (GPT-4o, o1-mini, o1, and o3-mini) when used as automated judges for evaluating the replication attempts in the JudgeEval benchmark.  The 'reasoning_effort' parameter was set to 'high' for the o-series models.  The table also includes the average cost per paper (in USD) for each model. A more detailed breakdown of the F1 scores, stratified by requirement type, is available in Appendix G.
> <details>
> <summary>read the caption</summary>
> Table 3: Macro-averaged metrics of GPT-4o, o1-mini, o1, and o3-mini with our judge scaffolding on JudgeEval. o-series models use the reasoning_effort =highabsenthigh=\texttt{high}= high. We accompany the performance with the average cost per paper in USD. We report F1 score stratified by requirement type in Appendix G.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T4.6.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.7.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.6.6.7.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.7.1.2.1">PaperBench</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.1.1.1.2.1">o3-mini-high</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1.1"><math alttext="2.6\pm 0.2" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mrow id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml"><mn id="S5.T4.1.1.1.1.m1.1.1.2" xref="S5.T4.1.1.1.1.m1.1.1.2.cmml">2.6</mn><mo id="S5.T4.1.1.1.1.m1.1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.1.1.1.1.m1.1.1.3" xref="S5.T4.1.1.1.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><apply id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.1.1.1.1.m1.1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S5.T4.1.1.1.1.m1.1.1.2">2.6</cn><cn id="S5.T4.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S5.T4.1.1.1.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">2.6\pm 0.2</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">2.6 ± 0.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.2.2.2.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.2.2.2.2.1">gpt-4o</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.1"><math alttext="4.1\pm 0.1" class="ltx_Math" display="inline" id="S5.T4.2.2.2.1.m1.1"><semantics id="S5.T4.2.2.2.1.m1.1a"><mrow id="S5.T4.2.2.2.1.m1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.cmml"><mn id="S5.T4.2.2.2.1.m1.1.1.2" xref="S5.T4.2.2.2.1.m1.1.1.2.cmml">4.1</mn><mo id="S5.T4.2.2.2.1.m1.1.1.1" xref="S5.T4.2.2.2.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.2.2.2.1.m1.1.1.3" xref="S5.T4.2.2.2.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.1.m1.1b"><apply id="S5.T4.2.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.2.2.2.1.m1.1.1.1.cmml" xref="S5.T4.2.2.2.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.2.2.2.1.m1.1.1.2.cmml" type="float" xref="S5.T4.2.2.2.1.m1.1.1.2">4.1</cn><cn id="S5.T4.2.2.2.1.m1.1.1.3.cmml" type="float" xref="S5.T4.2.2.2.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.1.m1.1c">4.1\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.1.m1.1d">4.1 ± 0.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.3.3.3.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.3.3.3.2.1">gemini-2.0-flash</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.1"><math alttext="3.2\pm 0.2" class="ltx_Math" display="inline" id="S5.T4.3.3.3.1.m1.1"><semantics id="S5.T4.3.3.3.1.m1.1a"><mrow id="S5.T4.3.3.3.1.m1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.cmml"><mn id="S5.T4.3.3.3.1.m1.1.1.2" xref="S5.T4.3.3.3.1.m1.1.1.2.cmml">3.2</mn><mo id="S5.T4.3.3.3.1.m1.1.1.1" xref="S5.T4.3.3.3.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.3.3.3.1.m1.1.1.3" xref="S5.T4.3.3.3.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.1.m1.1b"><apply id="S5.T4.3.3.3.1.m1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.3.3.3.1.m1.1.1.1.cmml" xref="S5.T4.3.3.3.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.3.3.3.1.m1.1.1.2.cmml" type="float" xref="S5.T4.3.3.3.1.m1.1.1.2">3.2</cn><cn id="S5.T4.3.3.3.1.m1.1.1.3.cmml" type="float" xref="S5.T4.3.3.3.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.1.m1.1c">3.2\pm 0.2</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.1.m1.1d">3.2 ± 0.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.4.4.4.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.4.4.4.2.1">DeepSeek-R1</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.1"><math alttext="6.0\pm 0.3" class="ltx_Math" display="inline" id="S5.T4.4.4.4.1.m1.1"><semantics id="S5.T4.4.4.4.1.m1.1a"><mrow id="S5.T4.4.4.4.1.m1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.cmml"><mn id="S5.T4.4.4.4.1.m1.1.1.2" xref="S5.T4.4.4.4.1.m1.1.1.2.cmml">6.0</mn><mo id="S5.T4.4.4.4.1.m1.1.1.1" xref="S5.T4.4.4.4.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.4.4.4.1.m1.1.1.3" xref="S5.T4.4.4.4.1.m1.1.1.3.cmml">0.3</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.1.m1.1b"><apply id="S5.T4.4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.4.4.4.1.m1.1.1.1.cmml" xref="S5.T4.4.4.4.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.4.4.4.1.m1.1.1.2.cmml" type="float" xref="S5.T4.4.4.4.1.m1.1.1.2">6.0</cn><cn id="S5.T4.4.4.4.1.m1.1.1.3.cmml" type="float" xref="S5.T4.4.4.4.1.m1.1.1.3">0.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.1.m1.1c">6.0\pm 0.3</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.1.m1.1d">6.0 ± 0.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.5.5.5.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T4.5.5.5.2.1">o1-high</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.5.1"><math alttext="13.2\pm 0.3" class="ltx_Math" display="inline" id="S5.T4.5.5.5.1.m1.1"><semantics id="S5.T4.5.5.5.1.m1.1a"><mrow id="S5.T4.5.5.5.1.m1.1.1" xref="S5.T4.5.5.5.1.m1.1.1.cmml"><mn id="S5.T4.5.5.5.1.m1.1.1.2" xref="S5.T4.5.5.5.1.m1.1.1.2.cmml">13.2</mn><mo id="S5.T4.5.5.5.1.m1.1.1.1" xref="S5.T4.5.5.5.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.5.5.5.1.m1.1.1.3" xref="S5.T4.5.5.5.1.m1.1.1.3.cmml">0.3</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.5.1.m1.1b"><apply id="S5.T4.5.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.5.5.5.1.m1.1.1.1.cmml" xref="S5.T4.5.5.5.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.5.5.5.1.m1.1.1.2.cmml" type="float" xref="S5.T4.5.5.5.1.m1.1.1.2">13.2</cn><cn id="S5.T4.5.5.5.1.m1.1.1.3.cmml" type="float" xref="S5.T4.5.5.5.1.m1.1.1.3">0.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.5.1.m1.1c">13.2\pm 0.3</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.5.1.m1.1d">13.2 ± 0.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T4.6.6.6.2"><span class="ltx_text ltx_font_bold" id="S5.T4.6.6.6.2.1">claude-3.5-sonnet</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.6.6.6.1"><math alttext="21.0\pm 0.8" class="ltx_Math" display="inline" id="S5.T4.6.6.6.1.m1.1"><semantics id="S5.T4.6.6.6.1.m1.1a"><mrow id="S5.T4.6.6.6.1.m1.1.1" xref="S5.T4.6.6.6.1.m1.1.1.cmml"><mn id="S5.T4.6.6.6.1.m1.1.1.2" xref="S5.T4.6.6.6.1.m1.1.1.2.cmml">21.0</mn><mo id="S5.T4.6.6.6.1.m1.1.1.1" xref="S5.T4.6.6.6.1.m1.1.1.1.cmml">±</mo><mn id="S5.T4.6.6.6.1.m1.1.1.3" xref="S5.T4.6.6.6.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.6.1.m1.1b"><apply id="S5.T4.6.6.6.1.m1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1"><csymbol cd="latexml" id="S5.T4.6.6.6.1.m1.1.1.1.cmml" xref="S5.T4.6.6.6.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T4.6.6.6.1.m1.1.1.2.cmml" type="float" xref="S5.T4.6.6.6.1.m1.1.1.2">21.0</cn><cn id="S5.T4.6.6.6.1.m1.1.1.3.cmml" type="float" xref="S5.T4.6.6.6.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.6.1.m1.1c">21.0\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.6.1.m1.1d">21.0 ± 0.8</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average replication scores achieved by different large language models (LLMs) on the PaperBench benchmark.  The scores represent the models' ability to replicate the findings of 20 research papers from scratch, covering a range of machine learning tasks.  The models were all evaluated using the BasicAgent setup.  The 'Error' column indicates one standard error of the mean, representing the variability in scores across multiple runs for each model.
> <details>
> <summary>read the caption</summary>
> Table 4: Average Replication Scores (in %) for models with BasicAgent, our main setup. Error is one standard error of the mean.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T5.4.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.4.4.5.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.4.4.5.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.4.4.5.1.2.1">PaperBench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.1.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.1.1.1.2.1">o3-mini-high</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.1"><math alttext="8.5\pm 0.8" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mrow id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml"><mn id="S5.T5.1.1.1.1.m1.1.1.2" xref="S5.T5.1.1.1.1.m1.1.1.2.cmml">8.5</mn><mo id="S5.T5.1.1.1.1.m1.1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.1.cmml">±</mo><mn id="S5.T5.1.1.1.1.m1.1.1.3" xref="S5.T5.1.1.1.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><apply id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S5.T5.1.1.1.1.m1.1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T5.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S5.T5.1.1.1.1.m1.1.1.2">8.5</cn><cn id="S5.T5.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S5.T5.1.1.1.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">8.5\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">8.5 ± 0.8</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.2.2.2.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.2.2.2.2.1">claude-3.5-sonnet</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.1"><math alttext="16.1\pm 0.1" class="ltx_Math" display="inline" id="S5.T5.2.2.2.1.m1.1"><semantics id="S5.T5.2.2.2.1.m1.1a"><mrow id="S5.T5.2.2.2.1.m1.1.1" xref="S5.T5.2.2.2.1.m1.1.1.cmml"><mn id="S5.T5.2.2.2.1.m1.1.1.2" xref="S5.T5.2.2.2.1.m1.1.1.2.cmml">16.1</mn><mo id="S5.T5.2.2.2.1.m1.1.1.1" xref="S5.T5.2.2.2.1.m1.1.1.1.cmml">±</mo><mn id="S5.T5.2.2.2.1.m1.1.1.3" xref="S5.T5.2.2.2.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.1.m1.1b"><apply id="S5.T5.2.2.2.1.m1.1.1.cmml" xref="S5.T5.2.2.2.1.m1.1.1"><csymbol cd="latexml" id="S5.T5.2.2.2.1.m1.1.1.1.cmml" xref="S5.T5.2.2.2.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T5.2.2.2.1.m1.1.1.2.cmml" type="float" xref="S5.T5.2.2.2.1.m1.1.1.2">16.1</cn><cn id="S5.T5.2.2.2.1.m1.1.1.3.cmml" type="float" xref="S5.T5.2.2.2.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.1.m1.1c">16.1\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.1.m1.1d">16.1 ± 0.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.3.3.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.3.3.2.1">o1-high</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.3.1"><math alttext="24.4\pm 0.7" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mrow id="S5.T5.3.3.3.1.m1.1.1" xref="S5.T5.3.3.3.1.m1.1.1.cmml"><mn id="S5.T5.3.3.3.1.m1.1.1.2" xref="S5.T5.3.3.3.1.m1.1.1.2.cmml">24.4</mn><mo id="S5.T5.3.3.3.1.m1.1.1.1" xref="S5.T5.3.3.3.1.m1.1.1.1.cmml">±</mo><mn id="S5.T5.3.3.3.1.m1.1.1.3" xref="S5.T5.3.3.3.1.m1.1.1.3.cmml">0.7</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><apply id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1"><csymbol cd="latexml" id="S5.T5.3.3.3.1.m1.1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T5.3.3.3.1.m1.1.1.2.cmml" type="float" xref="S5.T5.3.3.3.1.m1.1.1.2">24.4</cn><cn id="S5.T5.3.3.3.1.m1.1.1.3.cmml" type="float" xref="S5.T5.3.3.3.1.m1.1.1.3">0.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">24.4\pm 0.7</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">24.4 ± 0.7</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S5.T5.4.4.6.2.1"><span class="ltx_text ltx_font_italic" id="S5.T5.4.4.6.2.1.1">With an extended 36 hour limit</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.4.4.4.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T5.4.4.4.2.1">o1-high</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.4.4.4.1"><math alttext="26.0\pm 0.3" class="ltx_Math" display="inline" id="S5.T5.4.4.4.1.m1.1"><semantics id="S5.T5.4.4.4.1.m1.1a"><mrow id="S5.T5.4.4.4.1.m1.1.1" xref="S5.T5.4.4.4.1.m1.1.1.cmml"><mn id="S5.T5.4.4.4.1.m1.1.1.2" xref="S5.T5.4.4.4.1.m1.1.1.2.cmml">26.0</mn><mo id="S5.T5.4.4.4.1.m1.1.1.1" xref="S5.T5.4.4.4.1.m1.1.1.1.cmml">±</mo><mn id="S5.T5.4.4.4.1.m1.1.1.3" xref="S5.T5.4.4.4.1.m1.1.1.3.cmml">0.3</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.1.m1.1b"><apply id="S5.T5.4.4.4.1.m1.1.1.cmml" xref="S5.T5.4.4.4.1.m1.1.1"><csymbol cd="latexml" id="S5.T5.4.4.4.1.m1.1.1.1.cmml" xref="S5.T5.4.4.4.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T5.4.4.4.1.m1.1.1.2.cmml" type="float" xref="S5.T5.4.4.4.1.m1.1.1.2">26.0</cn><cn id="S5.T5.4.4.4.1.m1.1.1.3.cmml" type="float" xref="S5.T5.4.4.4.1.m1.1.1.3">0.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.1.m1.1c">26.0\pm 0.3</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.1.m1.1d">26.0 ± 0.3</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average replication scores achieved by different large language models (LLMs) on the PaperBench benchmark when using the IterativeAgent. The IterativeAgent is a modified version of the BasicAgent that prevents LLMs from prematurely ending their replication attempts. The results show that the IterativeAgent significantly improves the performance of o3-mini and o1 compared to the BasicAgent. However, it negatively impacts the performance of Claude 3.5 Sonnet, demonstrating that the effectiveness of the prompting strategy significantly varies depending on the model.
> <details>
> <summary>read the caption</summary>
> Table 5: Average Replication Scores (in %) with IterativeAgent. IterativeAgent removes the ability of models to end the task early and prompts models to work in a piecemeal fashion. We observe that these modifications significantly boost scores for o3-mini and o1 compared to BasicAgent, but hamper Claude 3.5 Sonnet, highlighting models’ sensitivities to prompting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.2.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.2.1.2.1">PaperBench Code-Dev</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T6.1.1.1.2"><span class="ltx_text ltx_font_smallcaps" id="S5.T6.1.1.1.2.1">o1-high</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T6.1.1.1.1"><math alttext="43.4\pm 0.8" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.1.m1.1a"><mrow id="S5.T6.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.m1.1.1.cmml"><mn id="S5.T6.1.1.1.1.m1.1.1.2" xref="S5.T6.1.1.1.1.m1.1.1.2.cmml">43.4</mn><mo id="S5.T6.1.1.1.1.m1.1.1.1" xref="S5.T6.1.1.1.1.m1.1.1.1.cmml">±</mo><mn id="S5.T6.1.1.1.1.m1.1.1.3" xref="S5.T6.1.1.1.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.m1.1b"><apply id="S5.T6.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S5.T6.1.1.1.1.m1.1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S5.T6.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S5.T6.1.1.1.1.m1.1.1.2">43.4</cn><cn id="S5.T6.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S5.T6.1.1.1.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.m1.1c">43.4\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.m1.1d">43.4 ± 0.8</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average replication scores achieved by the OpenAI o1 language model on the PaperBench Code-Dev benchmark, utilizing the IterativeAgent approach.  PaperBench Code-Dev is a simplified version of the main PaperBench benchmark, focusing solely on code development and omitting the execution and result verification phases. The IterativeAgent methodology is employed to encourage the model to utilize the full available time during the evaluation, enhancing performance. The scores are presented as percentages, along with the standard error of the mean, providing a measure of the variability in the model's performance across multiple runs.
> <details>
> <summary>read the caption</summary>
> Table 6: Average Replication Scores (%) on PaperBench Code-Dev for o1 using IterativeAgent. Error is one standard error of the mean.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.1.1">Rubric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.2.1">Total Nodes</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.3.1">Leaf Nodes</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.4.1">Code Dev.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.5.1">Execution</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.6.1">Res. Match</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T7.1.2.1.1">adaptive-pruning</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.2">172</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.3">123</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.4">86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.5">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.6">27</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3.2">
<td class="ltx_td ltx_align_left" id="A3.T7.1.3.2.1">all-in-one</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.2">234</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.3">174</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.4">92</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.5">62</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.6">20</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.3">
<td class="ltx_td ltx_align_left" id="A3.T7.1.4.3.1">bam</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.2">1021</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.3">789</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.4">255</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.5">518</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.6">16</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.4">
<td class="ltx_td ltx_align_left" id="A3.T7.1.5.4.1">bbox</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.2">422</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.3">279</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.4">145</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.5">81</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.6">53</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6.5">
<td class="ltx_td ltx_align_left" id="A3.T7.1.6.5.1">bridging-data-gaps</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.5.2">207</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.5.3">172</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.5.4">55</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.5.5">46</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.5.6">71</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.7.6">
<td class="ltx_td ltx_align_left" id="A3.T7.1.7.6.1">fre</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.6.2">636</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.6.3">437</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.6.4">306</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.6.5">124</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.6.6">7</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.8.7">
<td class="ltx_td ltx_align_left" id="A3.T7.1.8.7.1">ftrl</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.7.2">233</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.7.3">178</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.7.4">120</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.7.5">20</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.7.6">38</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.9.8">
<td class="ltx_td ltx_align_left" id="A3.T7.1.9.8.1">lbcs</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.8.2">1471</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.8.3">916</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.8.4">485</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.8.5">410</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.8.6">21</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.10.9">
<td class="ltx_td ltx_align_left" id="A3.T7.1.10.9.1">lca-on-the-line</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.9.2">1048</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.9.3">819</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.9.4">403</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.9.5">370</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.9.6">46</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.11.10">
<td class="ltx_td ltx_align_left" id="A3.T7.1.11.10.1">mechanistic-understanding</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.10.2">128</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.10.3">96</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.10.4">36</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.10.5">44</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.10.6">16</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.12.11">
<td class="ltx_td ltx_align_left" id="A3.T7.1.12.11.1">pinn</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.11.2">2551</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.11.3">1963</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.11.4">126</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.11.5">1815</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.11.6">22</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.13.12">
<td class="ltx_td ltx_align_left" id="A3.T7.1.13.12.1">rice</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.12.2">489</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.12.3">361</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.12.4">178</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.12.5">170</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.12.6">13</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.14.13">
<td class="ltx_td ltx_align_left" id="A3.T7.1.14.13.1">robust-clip</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.13.2">146</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.13.3">106</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.13.4">70</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.13.5">8</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.13.6">28</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.15.14">
<td class="ltx_td ltx_align_left" id="A3.T7.1.15.14.1">sample-specific-masks</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.14.2">396</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.14.3">331</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.14.4">87</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.14.5">223</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.14.6">21</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.16.15">
<td class="ltx_td ltx_align_left" id="A3.T7.1.16.15.1">sapg</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.16.15.2">279</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.16.15.3">206</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.16.15.4">77</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.16.15.5">64</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.16.15.6">65</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.17.16">
<td class="ltx_td ltx_align_left" id="A3.T7.1.17.16.1">sequential-neural-score-estimation</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.17.16.2">123</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.17.16.3">92</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.17.16.4">67</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.17.16.5">5</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.17.16.6">20</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.18.17">
<td class="ltx_td ltx_align_left" id="A3.T7.1.18.17.1">stay-on-topic-with-classifier-free-guidance</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.18.17.2">186</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.18.17.3">121</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.18.17.4">70</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.18.17.5">35</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.18.17.6">16</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.19.18">
<td class="ltx_td ltx_align_left" id="A3.T7.1.19.18.1">stochastic-interpolants</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.19.18.2">94</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.19.18.3">69</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.19.18.4">58</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.19.18.5">7</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.19.18.6">4</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.20.19">
<td class="ltx_td ltx_align_left" id="A3.T7.1.20.19.1">test-time-model-adaptation</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.20.19.2">236</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.20.19.3">163</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.20.19.4">86</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.20.19.5">36</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.20.19.6">41</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.21.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T7.1.21.20.1">what-will-my-model-forget</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.21.20.2">1146</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.21.20.3">921</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.21.20.4">872</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.21.20.5">28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.21.20.6">21</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hierarchical structure of the rubrics used in PaperBench to evaluate AI agents' ability to replicate research papers.  It breaks down the total number of nodes and leaf nodes (individual evaluation criteria) in each rubric for the 20 papers included in the benchmark.  Additionally, it further categorizes the leaf nodes into three types: Code Development, Execution, and Result Match, illustrating how many leaf nodes fall into each category for each paper's rubric. This breakdown helps to understand the complexity of each replication task and its different facets.
> <details>
> <summary>read the caption</summary>
> Table 7: Counts of Nodes and Leaf Nodes in Rubrics
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T8.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A7.T8.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.1.1.2.1">Overall</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.1.1.3.1">Code Development</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.1.1.4.1">Execution</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.1.1.5.1">Result Match</span></th>
</tr>
<tr class="ltx_tr" id="A7.T8.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A7.T8.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.2.2.1.1">Random Baseline</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.2.2.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.2.2.2.1">0.49</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.2.2.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.2.2.3.1">0.45</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.2.2.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.2.2.4.1">0.48</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.2.2.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.2.2.5.1">0.46</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T8.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T8.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.3.1.1.1">SimpleJudge</span></th>
<td class="ltx_td ltx_border_t" id="A7.T8.1.3.1.2"></td>
<td class="ltx_td ltx_border_t" id="A7.T8.1.3.1.3"></td>
<td class="ltx_td ltx_border_t" id="A7.T8.1.3.1.4"></td>
<td class="ltx_td ltx_border_t" id="A7.T8.1.3.1.5"></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.4.2.1"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.4.2.1.1">   gpt-4o-mini</span></th>
<td class="ltx_td ltx_align_center" id="A7.T8.1.4.2.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.4.2.2.1">0.59</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.4.2.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.4.2.3.1">0.59</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.4.2.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.4.2.4.1">0.54</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A7.T8.1.4.2.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.4.2.5.1">0.78</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.5.3.1"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.5.3.1.1">   gpt-4o</span></th>
<td class="ltx_td ltx_align_center" id="A7.T8.1.5.3.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.5.3.2.1">0.73</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.5.3.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.5.3.3.1">0.68</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.5.3.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.5.3.4.1">0.70</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A7.T8.1.5.3.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.5.3.5.1">0.83</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.6.4.1"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.6.4.1.1">   o1-mini-high</span></th>
<td class="ltx_td ltx_align_center" id="A7.T8.1.6.4.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.6.4.2.1">0.77</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.6.4.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.6.4.3.1">0.67</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.6.4.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.6.4.4.1">0.74</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A7.T8.1.6.4.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.6.4.5.1">0.80</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T8.1.7.5.1"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.7.5.1.1">   o1-high</span></th>
<td class="ltx_td ltx_align_center" id="A7.T8.1.7.5.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.7.5.2.1">0.84</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.7.5.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.7.5.3.1">0.74</span></td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.7.5.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.7.5.4.1">0.84</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A7.T8.1.7.5.5"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.7.5.5.1">0.88</span></td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T8.1.8.6.1"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.8.6.1.1">   o3-mini-high</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T8.1.8.6.2"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.8.6.2.1">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T8.1.8.6.3"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.8.6.3.1">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T8.1.8.6.4"><span class="ltx_text ltx_font_smallcaps" id="A7.T8.1.8.6.4.1">0.82</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A7.T8.1.8.6.5"><span class="ltx_text ltx_font_bold" id="A7.T8.1.8.6.5.1">0.94</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the macro-averaged F1-scores achieved by different language models when used as automated judges within the JudgeEval benchmark.  The models were evaluated on their ability to correctly grade whether a submission meets specified criteria within the PaperBench rubric.  The F1-score is reported both overall and broken down by requirement type (Code Development, Execution, Result Match), providing a more granular view of model performance on various aspects of the grading task.
> <details>
> <summary>read the caption</summary>
> Table 8: Macro-averaged F1-score for the models evaluated as part of JudgeEval with the SimpleJudge scaffold. We report F1 both overall and stratified across requirement types.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T9.33.33">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T9.33.33.34.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A9.T9.33.33.34.1.1"><span class="ltx_text ltx_font_bold" id="A9.T9.33.33.34.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T9.33.33.34.1.2"><span class="ltx_text ltx_font_bold" id="A9.T9.33.33.34.1.2.1">Code Development</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T9.33.33.34.1.3"><span class="ltx_text ltx_font_bold" id="A9.T9.33.33.34.1.3.1">Execution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T9.33.33.34.1.4"><span class="ltx_text ltx_font_bold" id="A9.T9.33.33.34.1.4.1">Results Analysis</span></td>
</tr>
<tr class="ltx_tr" id="A9.T9.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T9.3.3.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.3.3.3.4.1">gemini-2.0-flash (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.1.1.1.1"><math alttext="5.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.1.1.1.1.m1.1"><semantics id="A9.T9.1.1.1.1.m1.1a"><mrow id="A9.T9.1.1.1.1.m1.1.1" xref="A9.T9.1.1.1.1.m1.1.1.cmml"><mn id="A9.T9.1.1.1.1.m1.1.1.2" xref="A9.T9.1.1.1.1.m1.1.1.2.cmml">5.0</mn><mo id="A9.T9.1.1.1.1.m1.1.1.1" xref="A9.T9.1.1.1.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.1.1.1.1.m1.1.1.3" xref="A9.T9.1.1.1.1.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.1.1.1.1.m1.1b"><apply id="A9.T9.1.1.1.1.m1.1.1.cmml" xref="A9.T9.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.1.1.1.1.m1.1.1.1.cmml" xref="A9.T9.1.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.1.1.1.1.m1.1.1.2.cmml" type="float" xref="A9.T9.1.1.1.1.m1.1.1.2">5.0</cn><cn id="A9.T9.1.1.1.1.m1.1.1.3.cmml" type="float" xref="A9.T9.1.1.1.1.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.1.1.1.1.m1.1c">5.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.1.1.1.1.m1.1d">5.0 ± 0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.2.2.2.2"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.2.2.2.2.m1.1"><semantics id="A9.T9.2.2.2.2.m1.1a"><mrow id="A9.T9.2.2.2.2.m1.1.1" xref="A9.T9.2.2.2.2.m1.1.1.cmml"><mn id="A9.T9.2.2.2.2.m1.1.1.2" xref="A9.T9.2.2.2.2.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.2.2.2.2.m1.1.1.1" xref="A9.T9.2.2.2.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.2.2.2.2.m1.1.1.3" xref="A9.T9.2.2.2.2.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.2.2.2.2.m1.1b"><apply id="A9.T9.2.2.2.2.m1.1.1.cmml" xref="A9.T9.2.2.2.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.2.2.2.2.m1.1.1.1.cmml" xref="A9.T9.2.2.2.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.2.2.2.2.m1.1.1.2.cmml" type="float" xref="A9.T9.2.2.2.2.m1.1.1.2">0.0</cn><cn id="A9.T9.2.2.2.2.m1.1.1.3.cmml" type="float" xref="A9.T9.2.2.2.2.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.2.2.2.2.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.2.2.2.2.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.3.3.3.3"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.3.3.3.3.m1.1"><semantics id="A9.T9.3.3.3.3.m1.1a"><mrow id="A9.T9.3.3.3.3.m1.1.1" xref="A9.T9.3.3.3.3.m1.1.1.cmml"><mn id="A9.T9.3.3.3.3.m1.1.1.2" xref="A9.T9.3.3.3.3.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.3.3.3.3.m1.1.1.1" xref="A9.T9.3.3.3.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.3.3.3.3.m1.1.1.3" xref="A9.T9.3.3.3.3.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.3.3.3.3.m1.1b"><apply id="A9.T9.3.3.3.3.m1.1.1.cmml" xref="A9.T9.3.3.3.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.3.3.3.3.m1.1.1.1.cmml" xref="A9.T9.3.3.3.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.3.3.3.3.m1.1.1.2.cmml" type="float" xref="A9.T9.3.3.3.3.m1.1.1.2">0.0</cn><cn id="A9.T9.3.3.3.3.m1.1.1.3.cmml" type="float" xref="A9.T9.3.3.3.3.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.3.3.3.3.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.3.3.3.3.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.6.6.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.6.6.6.4.1">4o (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.4.4.4.1"><math alttext="7.7\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.4.4.4.1.m1.1"><semantics id="A9.T9.4.4.4.1.m1.1a"><mrow id="A9.T9.4.4.4.1.m1.1.1" xref="A9.T9.4.4.4.1.m1.1.1.cmml"><mn id="A9.T9.4.4.4.1.m1.1.1.2" xref="A9.T9.4.4.4.1.m1.1.1.2.cmml">7.7</mn><mo id="A9.T9.4.4.4.1.m1.1.1.1" xref="A9.T9.4.4.4.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.4.4.4.1.m1.1.1.3" xref="A9.T9.4.4.4.1.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.4.4.4.1.m1.1b"><apply id="A9.T9.4.4.4.1.m1.1.1.cmml" xref="A9.T9.4.4.4.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.4.4.4.1.m1.1.1.1.cmml" xref="A9.T9.4.4.4.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.4.4.4.1.m1.1.1.2.cmml" type="float" xref="A9.T9.4.4.4.1.m1.1.1.2">7.7</cn><cn id="A9.T9.4.4.4.1.m1.1.1.3.cmml" type="float" xref="A9.T9.4.4.4.1.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.4.4.4.1.m1.1c">7.7\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.4.4.4.1.m1.1d">7.7 ± 0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.5.5.5.2"><math alttext="0.1\pm 0.1" class="ltx_Math" display="inline" id="A9.T9.5.5.5.2.m1.1"><semantics id="A9.T9.5.5.5.2.m1.1a"><mrow id="A9.T9.5.5.5.2.m1.1.1" xref="A9.T9.5.5.5.2.m1.1.1.cmml"><mn id="A9.T9.5.5.5.2.m1.1.1.2" xref="A9.T9.5.5.5.2.m1.1.1.2.cmml">0.1</mn><mo id="A9.T9.5.5.5.2.m1.1.1.1" xref="A9.T9.5.5.5.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.5.5.5.2.m1.1.1.3" xref="A9.T9.5.5.5.2.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.5.5.5.2.m1.1b"><apply id="A9.T9.5.5.5.2.m1.1.1.cmml" xref="A9.T9.5.5.5.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.5.5.5.2.m1.1.1.1.cmml" xref="A9.T9.5.5.5.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.5.5.5.2.m1.1.1.2.cmml" type="float" xref="A9.T9.5.5.5.2.m1.1.1.2">0.1</cn><cn id="A9.T9.5.5.5.2.m1.1.1.3.cmml" type="float" xref="A9.T9.5.5.5.2.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.5.5.5.2.m1.1c">0.1\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.5.5.5.2.m1.1d">0.1 ± 0.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.6.6.6.3"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.6.6.6.3.m1.1"><semantics id="A9.T9.6.6.6.3.m1.1a"><mrow id="A9.T9.6.6.6.3.m1.1.1" xref="A9.T9.6.6.6.3.m1.1.1.cmml"><mn id="A9.T9.6.6.6.3.m1.1.1.2" xref="A9.T9.6.6.6.3.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.6.6.6.3.m1.1.1.1" xref="A9.T9.6.6.6.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.6.6.6.3.m1.1.1.3" xref="A9.T9.6.6.6.3.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.6.6.6.3.m1.1b"><apply id="A9.T9.6.6.6.3.m1.1.1.cmml" xref="A9.T9.6.6.6.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.6.6.6.3.m1.1.1.1.cmml" xref="A9.T9.6.6.6.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.6.6.6.3.m1.1.1.2.cmml" type="float" xref="A9.T9.6.6.6.3.m1.1.1.2">0.0</cn><cn id="A9.T9.6.6.6.3.m1.1.1.3.cmml" type="float" xref="A9.T9.6.6.6.3.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.6.6.6.3.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.6.6.6.3.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.9.9.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.9.9.9.4.1">o3-mini (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.7.7.7.1"><math alttext="5.1\pm 0.8" class="ltx_Math" display="inline" id="A9.T9.7.7.7.1.m1.1"><semantics id="A9.T9.7.7.7.1.m1.1a"><mrow id="A9.T9.7.7.7.1.m1.1.1" xref="A9.T9.7.7.7.1.m1.1.1.cmml"><mn id="A9.T9.7.7.7.1.m1.1.1.2" xref="A9.T9.7.7.7.1.m1.1.1.2.cmml">5.1</mn><mo id="A9.T9.7.7.7.1.m1.1.1.1" xref="A9.T9.7.7.7.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.7.7.7.1.m1.1.1.3" xref="A9.T9.7.7.7.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.7.7.7.1.m1.1b"><apply id="A9.T9.7.7.7.1.m1.1.1.cmml" xref="A9.T9.7.7.7.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.7.7.7.1.m1.1.1.1.cmml" xref="A9.T9.7.7.7.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A9.T9.7.7.7.1.m1.1.1.2">5.1</cn><cn id="A9.T9.7.7.7.1.m1.1.1.3.cmml" type="float" xref="A9.T9.7.7.7.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.7.7.7.1.m1.1c">5.1\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="A9.T9.7.7.7.1.m1.1d">5.1 ± 0.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.8.8.8.2"><math alttext="0.6\pm 0.1" class="ltx_Math" display="inline" id="A9.T9.8.8.8.2.m1.1"><semantics id="A9.T9.8.8.8.2.m1.1a"><mrow id="A9.T9.8.8.8.2.m1.1.1" xref="A9.T9.8.8.8.2.m1.1.1.cmml"><mn id="A9.T9.8.8.8.2.m1.1.1.2" xref="A9.T9.8.8.8.2.m1.1.1.2.cmml">0.6</mn><mo id="A9.T9.8.8.8.2.m1.1.1.1" xref="A9.T9.8.8.8.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.8.8.8.2.m1.1.1.3" xref="A9.T9.8.8.8.2.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.8.8.8.2.m1.1b"><apply id="A9.T9.8.8.8.2.m1.1.1.cmml" xref="A9.T9.8.8.8.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.8.8.8.2.m1.1.1.1.cmml" xref="A9.T9.8.8.8.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.8.8.8.2.m1.1.1.2.cmml" type="float" xref="A9.T9.8.8.8.2.m1.1.1.2">0.6</cn><cn id="A9.T9.8.8.8.2.m1.1.1.3.cmml" type="float" xref="A9.T9.8.8.8.2.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.8.8.8.2.m1.1c">0.6\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.8.8.8.2.m1.1d">0.6 ± 0.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.9.9.9.3"><math alttext="0.4\pm 0.4" class="ltx_Math" display="inline" id="A9.T9.9.9.9.3.m1.1"><semantics id="A9.T9.9.9.9.3.m1.1a"><mrow id="A9.T9.9.9.9.3.m1.1.1" xref="A9.T9.9.9.9.3.m1.1.1.cmml"><mn id="A9.T9.9.9.9.3.m1.1.1.2" xref="A9.T9.9.9.9.3.m1.1.1.2.cmml">0.4</mn><mo id="A9.T9.9.9.9.3.m1.1.1.1" xref="A9.T9.9.9.9.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.9.9.9.3.m1.1.1.3" xref="A9.T9.9.9.9.3.m1.1.1.3.cmml">0.4</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.9.9.9.3.m1.1b"><apply id="A9.T9.9.9.9.3.m1.1.1.cmml" xref="A9.T9.9.9.9.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.9.9.9.3.m1.1.1.1.cmml" xref="A9.T9.9.9.9.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.9.9.9.3.m1.1.1.2.cmml" type="float" xref="A9.T9.9.9.9.3.m1.1.1.2">0.4</cn><cn id="A9.T9.9.9.9.3.m1.1.1.3.cmml" type="float" xref="A9.T9.9.9.9.3.m1.1.1.3">0.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.9.9.9.3.m1.1c">0.4\pm 0.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.9.9.9.3.m1.1d">0.4 ± 0.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.12.12.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.12.12.12.4.1">o1 (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.10.10.10.1"><math alttext="19.5\pm 1.2" class="ltx_Math" display="inline" id="A9.T9.10.10.10.1.m1.1"><semantics id="A9.T9.10.10.10.1.m1.1a"><mrow id="A9.T9.10.10.10.1.m1.1.1" xref="A9.T9.10.10.10.1.m1.1.1.cmml"><mn id="A9.T9.10.10.10.1.m1.1.1.2" xref="A9.T9.10.10.10.1.m1.1.1.2.cmml">19.5</mn><mo id="A9.T9.10.10.10.1.m1.1.1.1" xref="A9.T9.10.10.10.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.10.10.10.1.m1.1.1.3" xref="A9.T9.10.10.10.1.m1.1.1.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.10.10.10.1.m1.1b"><apply id="A9.T9.10.10.10.1.m1.1.1.cmml" xref="A9.T9.10.10.10.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.10.10.10.1.m1.1.1.1.cmml" xref="A9.T9.10.10.10.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.10.10.10.1.m1.1.1.2.cmml" type="float" xref="A9.T9.10.10.10.1.m1.1.1.2">19.5</cn><cn id="A9.T9.10.10.10.1.m1.1.1.3.cmml" type="float" xref="A9.T9.10.10.10.1.m1.1.1.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.10.10.10.1.m1.1c">19.5\pm 1.2</annotation><annotation encoding="application/x-llamapun" id="A9.T9.10.10.10.1.m1.1d">19.5 ± 1.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.11.11.11.2"><math alttext="5.7\pm 0.9" class="ltx_Math" display="inline" id="A9.T9.11.11.11.2.m1.1"><semantics id="A9.T9.11.11.11.2.m1.1a"><mrow id="A9.T9.11.11.11.2.m1.1.1" xref="A9.T9.11.11.11.2.m1.1.1.cmml"><mn id="A9.T9.11.11.11.2.m1.1.1.2" xref="A9.T9.11.11.11.2.m1.1.1.2.cmml">5.7</mn><mo id="A9.T9.11.11.11.2.m1.1.1.1" xref="A9.T9.11.11.11.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.11.11.11.2.m1.1.1.3" xref="A9.T9.11.11.11.2.m1.1.1.3.cmml">0.9</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.11.11.11.2.m1.1b"><apply id="A9.T9.11.11.11.2.m1.1.1.cmml" xref="A9.T9.11.11.11.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.11.11.11.2.m1.1.1.1.cmml" xref="A9.T9.11.11.11.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.11.11.11.2.m1.1.1.2.cmml" type="float" xref="A9.T9.11.11.11.2.m1.1.1.2">5.7</cn><cn id="A9.T9.11.11.11.2.m1.1.1.3.cmml" type="float" xref="A9.T9.11.11.11.2.m1.1.1.3">0.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.11.11.11.2.m1.1c">5.7\pm 0.9</annotation><annotation encoding="application/x-llamapun" id="A9.T9.11.11.11.2.m1.1d">5.7 ± 0.9</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.12.12.12.3"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.12.12.12.3.m1.1"><semantics id="A9.T9.12.12.12.3.m1.1a"><mrow id="A9.T9.12.12.12.3.m1.1.1" xref="A9.T9.12.12.12.3.m1.1.1.cmml"><mn id="A9.T9.12.12.12.3.m1.1.1.2" xref="A9.T9.12.12.12.3.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.12.12.12.3.m1.1.1.1" xref="A9.T9.12.12.12.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.12.12.12.3.m1.1.1.3" xref="A9.T9.12.12.12.3.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.12.12.12.3.m1.1b"><apply id="A9.T9.12.12.12.3.m1.1.1.cmml" xref="A9.T9.12.12.12.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.12.12.12.3.m1.1.1.1.cmml" xref="A9.T9.12.12.12.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.12.12.12.3.m1.1.1.2.cmml" type="float" xref="A9.T9.12.12.12.3.m1.1.1.2">0.0</cn><cn id="A9.T9.12.12.12.3.m1.1.1.3.cmml" type="float" xref="A9.T9.12.12.12.3.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.12.12.12.3.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.12.12.12.3.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.15.15.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.15.15.15.4.1">R1 (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.13.13.13.1"><math alttext="9.8\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.13.13.13.1.m1.1"><semantics id="A9.T9.13.13.13.1.m1.1a"><mrow id="A9.T9.13.13.13.1.m1.1.1" xref="A9.T9.13.13.13.1.m1.1.1.cmml"><mn id="A9.T9.13.13.13.1.m1.1.1.2" xref="A9.T9.13.13.13.1.m1.1.1.2.cmml">9.8</mn><mo id="A9.T9.13.13.13.1.m1.1.1.1" xref="A9.T9.13.13.13.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.13.13.13.1.m1.1.1.3" xref="A9.T9.13.13.13.1.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.13.13.13.1.m1.1b"><apply id="A9.T9.13.13.13.1.m1.1.1.cmml" xref="A9.T9.13.13.13.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.13.13.13.1.m1.1.1.1.cmml" xref="A9.T9.13.13.13.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.13.13.13.1.m1.1.1.2.cmml" type="float" xref="A9.T9.13.13.13.1.m1.1.1.2">9.8</cn><cn id="A9.T9.13.13.13.1.m1.1.1.3.cmml" type="float" xref="A9.T9.13.13.13.1.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.13.13.13.1.m1.1c">9.8\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.13.13.13.1.m1.1d">9.8 ± 0.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.14.14.14.2"><math alttext="1.0\pm 0.8" class="ltx_Math" display="inline" id="A9.T9.14.14.14.2.m1.1"><semantics id="A9.T9.14.14.14.2.m1.1a"><mrow id="A9.T9.14.14.14.2.m1.1.1" xref="A9.T9.14.14.14.2.m1.1.1.cmml"><mn id="A9.T9.14.14.14.2.m1.1.1.2" xref="A9.T9.14.14.14.2.m1.1.1.2.cmml">1.0</mn><mo id="A9.T9.14.14.14.2.m1.1.1.1" xref="A9.T9.14.14.14.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.14.14.14.2.m1.1.1.3" xref="A9.T9.14.14.14.2.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.14.14.14.2.m1.1b"><apply id="A9.T9.14.14.14.2.m1.1.1.cmml" xref="A9.T9.14.14.14.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.14.14.14.2.m1.1.1.1.cmml" xref="A9.T9.14.14.14.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.14.14.14.2.m1.1.1.2.cmml" type="float" xref="A9.T9.14.14.14.2.m1.1.1.2">1.0</cn><cn id="A9.T9.14.14.14.2.m1.1.1.3.cmml" type="float" xref="A9.T9.14.14.14.2.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.14.14.14.2.m1.1c">1.0\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="A9.T9.14.14.14.2.m1.1d">1.0 ± 0.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.15.15.15.3"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.15.15.15.3.m1.1"><semantics id="A9.T9.15.15.15.3.m1.1a"><mrow id="A9.T9.15.15.15.3.m1.1.1" xref="A9.T9.15.15.15.3.m1.1.1.cmml"><mn id="A9.T9.15.15.15.3.m1.1.1.2" xref="A9.T9.15.15.15.3.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.15.15.15.3.m1.1.1.1" xref="A9.T9.15.15.15.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.15.15.15.3.m1.1.1.3" xref="A9.T9.15.15.15.3.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.15.15.15.3.m1.1b"><apply id="A9.T9.15.15.15.3.m1.1.1.cmml" xref="A9.T9.15.15.15.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.15.15.15.3.m1.1.1.1.cmml" xref="A9.T9.15.15.15.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.15.15.15.3.m1.1.1.2.cmml" type="float" xref="A9.T9.15.15.15.3.m1.1.1.2">0.0</cn><cn id="A9.T9.15.15.15.3.m1.1.1.3.cmml" type="float" xref="A9.T9.15.15.15.3.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.15.15.15.3.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.15.15.15.3.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.18.18.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.18.18.18.4.1">claude-3-5-sonnet (BasicAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.16.16.16.1"><math alttext="35.4\pm 0.8" class="ltx_Math" display="inline" id="A9.T9.16.16.16.1.m1.1"><semantics id="A9.T9.16.16.16.1.m1.1a"><mrow id="A9.T9.16.16.16.1.m1.1.1" xref="A9.T9.16.16.16.1.m1.1.1.cmml"><mn id="A9.T9.16.16.16.1.m1.1.1.2" xref="A9.T9.16.16.16.1.m1.1.1.2.cmml">35.4</mn><mo id="A9.T9.16.16.16.1.m1.1.1.1" xref="A9.T9.16.16.16.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.16.16.16.1.m1.1.1.3" xref="A9.T9.16.16.16.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.16.16.16.1.m1.1b"><apply id="A9.T9.16.16.16.1.m1.1.1.cmml" xref="A9.T9.16.16.16.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.16.16.16.1.m1.1.1.1.cmml" xref="A9.T9.16.16.16.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.16.16.16.1.m1.1.1.2.cmml" type="float" xref="A9.T9.16.16.16.1.m1.1.1.2">35.4</cn><cn id="A9.T9.16.16.16.1.m1.1.1.3.cmml" type="float" xref="A9.T9.16.16.16.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.16.16.16.1.m1.1c">35.4\pm 0.8</annotation><annotation encoding="application/x-llamapun" id="A9.T9.16.16.16.1.m1.1d">35.4 ± 0.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.17.17.17.2"><math alttext="1.8\pm 0.7" class="ltx_Math" display="inline" id="A9.T9.17.17.17.2.m1.1"><semantics id="A9.T9.17.17.17.2.m1.1a"><mrow id="A9.T9.17.17.17.2.m1.1.1" xref="A9.T9.17.17.17.2.m1.1.1.cmml"><mn id="A9.T9.17.17.17.2.m1.1.1.2" xref="A9.T9.17.17.17.2.m1.1.1.2.cmml">1.8</mn><mo id="A9.T9.17.17.17.2.m1.1.1.1" xref="A9.T9.17.17.17.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.17.17.17.2.m1.1.1.3" xref="A9.T9.17.17.17.2.m1.1.1.3.cmml">0.7</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.17.17.17.2.m1.1b"><apply id="A9.T9.17.17.17.2.m1.1.1.cmml" xref="A9.T9.17.17.17.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.17.17.17.2.m1.1.1.1.cmml" xref="A9.T9.17.17.17.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.17.17.17.2.m1.1.1.2.cmml" type="float" xref="A9.T9.17.17.17.2.m1.1.1.2">1.8</cn><cn id="A9.T9.17.17.17.2.m1.1.1.3.cmml" type="float" xref="A9.T9.17.17.17.2.m1.1.1.3">0.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.17.17.17.2.m1.1c">1.8\pm 0.7</annotation><annotation encoding="application/x-llamapun" id="A9.T9.17.17.17.2.m1.1d">1.8 ± 0.7</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.18.18.18.3"><math alttext="0.7\pm 0.3" class="ltx_Math" display="inline" id="A9.T9.18.18.18.3.m1.1"><semantics id="A9.T9.18.18.18.3.m1.1a"><mrow id="A9.T9.18.18.18.3.m1.1.1" xref="A9.T9.18.18.18.3.m1.1.1.cmml"><mn id="A9.T9.18.18.18.3.m1.1.1.2" xref="A9.T9.18.18.18.3.m1.1.1.2.cmml">0.7</mn><mo id="A9.T9.18.18.18.3.m1.1.1.1" xref="A9.T9.18.18.18.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.18.18.18.3.m1.1.1.3" xref="A9.T9.18.18.18.3.m1.1.1.3.cmml">0.3</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.18.18.18.3.m1.1b"><apply id="A9.T9.18.18.18.3.m1.1.1.cmml" xref="A9.T9.18.18.18.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.18.18.18.3.m1.1.1.1.cmml" xref="A9.T9.18.18.18.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.18.18.18.3.m1.1.1.2.cmml" type="float" xref="A9.T9.18.18.18.3.m1.1.1.2">0.7</cn><cn id="A9.T9.18.18.18.3.m1.1.1.3.cmml" type="float" xref="A9.T9.18.18.18.3.m1.1.1.3">0.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.18.18.18.3.m1.1c">0.7\pm 0.3</annotation><annotation encoding="application/x-llamapun" id="A9.T9.18.18.18.3.m1.1d">0.7 ± 0.3</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.21.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T9.21.21.21.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.21.21.21.4.1">o3-mini (IterativeAgent)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.19.19.19.1"><math alttext="16.4\pm 1.4" class="ltx_Math" display="inline" id="A9.T9.19.19.19.1.m1.1"><semantics id="A9.T9.19.19.19.1.m1.1a"><mrow id="A9.T9.19.19.19.1.m1.1.1" xref="A9.T9.19.19.19.1.m1.1.1.cmml"><mn id="A9.T9.19.19.19.1.m1.1.1.2" xref="A9.T9.19.19.19.1.m1.1.1.2.cmml">16.4</mn><mo id="A9.T9.19.19.19.1.m1.1.1.1" xref="A9.T9.19.19.19.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.19.19.19.1.m1.1.1.3" xref="A9.T9.19.19.19.1.m1.1.1.3.cmml">1.4</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.19.19.19.1.m1.1b"><apply id="A9.T9.19.19.19.1.m1.1.1.cmml" xref="A9.T9.19.19.19.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.19.19.19.1.m1.1.1.1.cmml" xref="A9.T9.19.19.19.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.19.19.19.1.m1.1.1.2.cmml" type="float" xref="A9.T9.19.19.19.1.m1.1.1.2">16.4</cn><cn id="A9.T9.19.19.19.1.m1.1.1.3.cmml" type="float" xref="A9.T9.19.19.19.1.m1.1.1.3">1.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.19.19.19.1.m1.1c">16.4\pm 1.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.19.19.19.1.m1.1d">16.4 ± 1.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.20.20.20.2"><math alttext="0.6\pm 0.4" class="ltx_Math" display="inline" id="A9.T9.20.20.20.2.m1.1"><semantics id="A9.T9.20.20.20.2.m1.1a"><mrow id="A9.T9.20.20.20.2.m1.1.1" xref="A9.T9.20.20.20.2.m1.1.1.cmml"><mn id="A9.T9.20.20.20.2.m1.1.1.2" xref="A9.T9.20.20.20.2.m1.1.1.2.cmml">0.6</mn><mo id="A9.T9.20.20.20.2.m1.1.1.1" xref="A9.T9.20.20.20.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.20.20.20.2.m1.1.1.3" xref="A9.T9.20.20.20.2.m1.1.1.3.cmml">0.4</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.20.20.20.2.m1.1b"><apply id="A9.T9.20.20.20.2.m1.1.1.cmml" xref="A9.T9.20.20.20.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.20.20.20.2.m1.1.1.1.cmml" xref="A9.T9.20.20.20.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.20.20.20.2.m1.1.1.2.cmml" type="float" xref="A9.T9.20.20.20.2.m1.1.1.2">0.6</cn><cn id="A9.T9.20.20.20.2.m1.1.1.3.cmml" type="float" xref="A9.T9.20.20.20.2.m1.1.1.3">0.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.20.20.20.2.m1.1c">0.6\pm 0.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.20.20.20.2.m1.1d">0.6 ± 0.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.21.21.21.3"><math alttext="0.3\pm 0.1" class="ltx_Math" display="inline" id="A9.T9.21.21.21.3.m1.1"><semantics id="A9.T9.21.21.21.3.m1.1a"><mrow id="A9.T9.21.21.21.3.m1.1.1" xref="A9.T9.21.21.21.3.m1.1.1.cmml"><mn id="A9.T9.21.21.21.3.m1.1.1.2" xref="A9.T9.21.21.21.3.m1.1.1.2.cmml">0.3</mn><mo id="A9.T9.21.21.21.3.m1.1.1.1" xref="A9.T9.21.21.21.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.21.21.21.3.m1.1.1.3" xref="A9.T9.21.21.21.3.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.21.21.21.3.m1.1b"><apply id="A9.T9.21.21.21.3.m1.1.1.cmml" xref="A9.T9.21.21.21.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.21.21.21.3.m1.1.1.1.cmml" xref="A9.T9.21.21.21.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.21.21.21.3.m1.1.1.2.cmml" type="float" xref="A9.T9.21.21.21.3.m1.1.1.2">0.3</cn><cn id="A9.T9.21.21.21.3.m1.1.1.3.cmml" type="float" xref="A9.T9.21.21.21.3.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.21.21.21.3.m1.1c">0.3\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.21.21.21.3.m1.1d">0.3 ± 0.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.24.24.24.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.24.24.24.4.1">o1 (IterativeAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.22.22.22.1"><math alttext="43.3\pm 1.1" class="ltx_Math" display="inline" id="A9.T9.22.22.22.1.m1.1"><semantics id="A9.T9.22.22.22.1.m1.1a"><mrow id="A9.T9.22.22.22.1.m1.1.1" xref="A9.T9.22.22.22.1.m1.1.1.cmml"><mn id="A9.T9.22.22.22.1.m1.1.1.2" xref="A9.T9.22.22.22.1.m1.1.1.2.cmml">43.3</mn><mo id="A9.T9.22.22.22.1.m1.1.1.1" xref="A9.T9.22.22.22.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.22.22.22.1.m1.1.1.3" xref="A9.T9.22.22.22.1.m1.1.1.3.cmml">1.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.22.22.22.1.m1.1b"><apply id="A9.T9.22.22.22.1.m1.1.1.cmml" xref="A9.T9.22.22.22.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.22.22.22.1.m1.1.1.1.cmml" xref="A9.T9.22.22.22.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.22.22.22.1.m1.1.1.2.cmml" type="float" xref="A9.T9.22.22.22.1.m1.1.1.2">43.3</cn><cn id="A9.T9.22.22.22.1.m1.1.1.3.cmml" type="float" xref="A9.T9.22.22.22.1.m1.1.1.3">1.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.22.22.22.1.m1.1c">43.3\pm 1.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.22.22.22.1.m1.1d">43.3 ± 1.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.23.23.23.2"><math alttext="4.5\pm 1.5" class="ltx_Math" display="inline" id="A9.T9.23.23.23.2.m1.1"><semantics id="A9.T9.23.23.23.2.m1.1a"><mrow id="A9.T9.23.23.23.2.m1.1.1" xref="A9.T9.23.23.23.2.m1.1.1.cmml"><mn id="A9.T9.23.23.23.2.m1.1.1.2" xref="A9.T9.23.23.23.2.m1.1.1.2.cmml">4.5</mn><mo id="A9.T9.23.23.23.2.m1.1.1.1" xref="A9.T9.23.23.23.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.23.23.23.2.m1.1.1.3" xref="A9.T9.23.23.23.2.m1.1.1.3.cmml">1.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.23.23.23.2.m1.1b"><apply id="A9.T9.23.23.23.2.m1.1.1.cmml" xref="A9.T9.23.23.23.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.23.23.23.2.m1.1.1.1.cmml" xref="A9.T9.23.23.23.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.23.23.23.2.m1.1.1.2.cmml" type="float" xref="A9.T9.23.23.23.2.m1.1.1.2">4.5</cn><cn id="A9.T9.23.23.23.2.m1.1.1.3.cmml" type="float" xref="A9.T9.23.23.23.2.m1.1.1.3">1.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.23.23.23.2.m1.1c">4.5\pm 1.5</annotation><annotation encoding="application/x-llamapun" id="A9.T9.23.23.23.2.m1.1d">4.5 ± 1.5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.24.24.24.3"><math alttext="0.0\pm 0.0" class="ltx_Math" display="inline" id="A9.T9.24.24.24.3.m1.1"><semantics id="A9.T9.24.24.24.3.m1.1a"><mrow id="A9.T9.24.24.24.3.m1.1.1" xref="A9.T9.24.24.24.3.m1.1.1.cmml"><mn id="A9.T9.24.24.24.3.m1.1.1.2" xref="A9.T9.24.24.24.3.m1.1.1.2.cmml">0.0</mn><mo id="A9.T9.24.24.24.3.m1.1.1.1" xref="A9.T9.24.24.24.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.24.24.24.3.m1.1.1.3" xref="A9.T9.24.24.24.3.m1.1.1.3.cmml">0.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.24.24.24.3.m1.1b"><apply id="A9.T9.24.24.24.3.m1.1.1.cmml" xref="A9.T9.24.24.24.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.24.24.24.3.m1.1.1.1.cmml" xref="A9.T9.24.24.24.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.24.24.24.3.m1.1.1.2.cmml" type="float" xref="A9.T9.24.24.24.3.m1.1.1.2">0.0</cn><cn id="A9.T9.24.24.24.3.m1.1.1.3.cmml" type="float" xref="A9.T9.24.24.24.3.m1.1.1.3">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.24.24.24.3.m1.1c">0.0\pm 0.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.24.24.24.3.m1.1d">0.0 ± 0.0</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.27.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T9.27.27.27.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.27.27.27.4.1">claude-3-5-sonnet (IterativeAgent)</span></th>
<td class="ltx_td ltx_align_center" id="A9.T9.25.25.25.1"><math alttext="27.5\pm 1.6" class="ltx_Math" display="inline" id="A9.T9.25.25.25.1.m1.1"><semantics id="A9.T9.25.25.25.1.m1.1a"><mrow id="A9.T9.25.25.25.1.m1.1.1" xref="A9.T9.25.25.25.1.m1.1.1.cmml"><mn id="A9.T9.25.25.25.1.m1.1.1.2" xref="A9.T9.25.25.25.1.m1.1.1.2.cmml">27.5</mn><mo id="A9.T9.25.25.25.1.m1.1.1.1" xref="A9.T9.25.25.25.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.25.25.25.1.m1.1.1.3" xref="A9.T9.25.25.25.1.m1.1.1.3.cmml">1.6</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.25.25.25.1.m1.1b"><apply id="A9.T9.25.25.25.1.m1.1.1.cmml" xref="A9.T9.25.25.25.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.25.25.25.1.m1.1.1.1.cmml" xref="A9.T9.25.25.25.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.25.25.25.1.m1.1.1.2.cmml" type="float" xref="A9.T9.25.25.25.1.m1.1.1.2">27.5</cn><cn id="A9.T9.25.25.25.1.m1.1.1.3.cmml" type="float" xref="A9.T9.25.25.25.1.m1.1.1.3">1.6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.25.25.25.1.m1.1c">27.5\pm 1.6</annotation><annotation encoding="application/x-llamapun" id="A9.T9.25.25.25.1.m1.1d">27.5 ± 1.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.26.26.26.2"><math alttext="1.1\pm 0.1" class="ltx_Math" display="inline" id="A9.T9.26.26.26.2.m1.1"><semantics id="A9.T9.26.26.26.2.m1.1a"><mrow id="A9.T9.26.26.26.2.m1.1.1" xref="A9.T9.26.26.26.2.m1.1.1.cmml"><mn id="A9.T9.26.26.26.2.m1.1.1.2" xref="A9.T9.26.26.26.2.m1.1.1.2.cmml">1.1</mn><mo id="A9.T9.26.26.26.2.m1.1.1.1" xref="A9.T9.26.26.26.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.26.26.26.2.m1.1.1.3" xref="A9.T9.26.26.26.2.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.26.26.26.2.m1.1b"><apply id="A9.T9.26.26.26.2.m1.1.1.cmml" xref="A9.T9.26.26.26.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.26.26.26.2.m1.1.1.1.cmml" xref="A9.T9.26.26.26.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.26.26.26.2.m1.1.1.2.cmml" type="float" xref="A9.T9.26.26.26.2.m1.1.1.2">1.1</cn><cn id="A9.T9.26.26.26.2.m1.1.1.3.cmml" type="float" xref="A9.T9.26.26.26.2.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.26.26.26.2.m1.1c">1.1\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.26.26.26.2.m1.1d">1.1 ± 0.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A9.T9.27.27.27.3"><math alttext="0.9\pm 0.4" class="ltx_Math" display="inline" id="A9.T9.27.27.27.3.m1.1"><semantics id="A9.T9.27.27.27.3.m1.1a"><mrow id="A9.T9.27.27.27.3.m1.1.1" xref="A9.T9.27.27.27.3.m1.1.1.cmml"><mn id="A9.T9.27.27.27.3.m1.1.1.2" xref="A9.T9.27.27.27.3.m1.1.1.2.cmml">0.9</mn><mo id="A9.T9.27.27.27.3.m1.1.1.1" xref="A9.T9.27.27.27.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.27.27.27.3.m1.1.1.3" xref="A9.T9.27.27.27.3.m1.1.1.3.cmml">0.4</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.27.27.27.3.m1.1b"><apply id="A9.T9.27.27.27.3.m1.1.1.cmml" xref="A9.T9.27.27.27.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.27.27.27.3.m1.1.1.1.cmml" xref="A9.T9.27.27.27.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.27.27.27.3.m1.1.1.2.cmml" type="float" xref="A9.T9.27.27.27.3.m1.1.1.2">0.9</cn><cn id="A9.T9.27.27.27.3.m1.1.1.3.cmml" type="float" xref="A9.T9.27.27.27.3.m1.1.1.3">0.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.27.27.27.3.m1.1c">0.9\pm 0.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.27.27.27.3.m1.1d">0.9 ± 0.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.30.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T9.30.30.30.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.30.30.30.4.1">o1 [36 hours] (IterativeAgent)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.28.28.28.1"><math alttext="42.4\pm 1.0" class="ltx_Math" display="inline" id="A9.T9.28.28.28.1.m1.1"><semantics id="A9.T9.28.28.28.1.m1.1a"><mrow id="A9.T9.28.28.28.1.m1.1.1" xref="A9.T9.28.28.28.1.m1.1.1.cmml"><mn id="A9.T9.28.28.28.1.m1.1.1.2" xref="A9.T9.28.28.28.1.m1.1.1.2.cmml">42.4</mn><mo id="A9.T9.28.28.28.1.m1.1.1.1" xref="A9.T9.28.28.28.1.m1.1.1.1.cmml">±</mo><mn id="A9.T9.28.28.28.1.m1.1.1.3" xref="A9.T9.28.28.28.1.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.28.28.28.1.m1.1b"><apply id="A9.T9.28.28.28.1.m1.1.1.cmml" xref="A9.T9.28.28.28.1.m1.1.1"><csymbol cd="latexml" id="A9.T9.28.28.28.1.m1.1.1.1.cmml" xref="A9.T9.28.28.28.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.28.28.28.1.m1.1.1.2.cmml" type="float" xref="A9.T9.28.28.28.1.m1.1.1.2">42.4</cn><cn id="A9.T9.28.28.28.1.m1.1.1.3.cmml" type="float" xref="A9.T9.28.28.28.1.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.28.28.28.1.m1.1c">42.4\pm 1.0</annotation><annotation encoding="application/x-llamapun" id="A9.T9.28.28.28.1.m1.1d">42.4 ± 1.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.29.29.29.2"><math alttext="7.4\pm 1.1" class="ltx_Math" display="inline" id="A9.T9.29.29.29.2.m1.1"><semantics id="A9.T9.29.29.29.2.m1.1a"><mrow id="A9.T9.29.29.29.2.m1.1.1" xref="A9.T9.29.29.29.2.m1.1.1.cmml"><mn id="A9.T9.29.29.29.2.m1.1.1.2" xref="A9.T9.29.29.29.2.m1.1.1.2.cmml">7.4</mn><mo id="A9.T9.29.29.29.2.m1.1.1.1" xref="A9.T9.29.29.29.2.m1.1.1.1.cmml">±</mo><mn id="A9.T9.29.29.29.2.m1.1.1.3" xref="A9.T9.29.29.29.2.m1.1.1.3.cmml">1.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.29.29.29.2.m1.1b"><apply id="A9.T9.29.29.29.2.m1.1.1.cmml" xref="A9.T9.29.29.29.2.m1.1.1"><csymbol cd="latexml" id="A9.T9.29.29.29.2.m1.1.1.1.cmml" xref="A9.T9.29.29.29.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.29.29.29.2.m1.1.1.2.cmml" type="float" xref="A9.T9.29.29.29.2.m1.1.1.2">7.4</cn><cn id="A9.T9.29.29.29.2.m1.1.1.3.cmml" type="float" xref="A9.T9.29.29.29.2.m1.1.1.3">1.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.29.29.29.2.m1.1c">7.4\pm 1.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.29.29.29.2.m1.1d">7.4 ± 1.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T9.30.30.30.3"><math alttext="1.4\pm 0.1" class="ltx_Math" display="inline" id="A9.T9.30.30.30.3.m1.1"><semantics id="A9.T9.30.30.30.3.m1.1a"><mrow id="A9.T9.30.30.30.3.m1.1.1" xref="A9.T9.30.30.30.3.m1.1.1.cmml"><mn id="A9.T9.30.30.30.3.m1.1.1.2" xref="A9.T9.30.30.30.3.m1.1.1.2.cmml">1.4</mn><mo id="A9.T9.30.30.30.3.m1.1.1.1" xref="A9.T9.30.30.30.3.m1.1.1.1.cmml">±</mo><mn id="A9.T9.30.30.30.3.m1.1.1.3" xref="A9.T9.30.30.30.3.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A9.T9.30.30.30.3.m1.1b"><apply id="A9.T9.30.30.30.3.m1.1.1.cmml" xref="A9.T9.30.30.30.3.m1.1.1"><csymbol cd="latexml" id="A9.T9.30.30.30.3.m1.1.1.1.cmml" xref="A9.T9.30.30.30.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A9.T9.30.30.30.3.m1.1.1.2.cmml" type="float" xref="A9.T9.30.30.30.3.m1.1.1.2">1.4</cn><cn id="A9.T9.30.30.30.3.m1.1.1.3.cmml" type="float" xref="A9.T9.30.30.30.3.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.30.30.30.3.m1.1c">1.4\pm 0.1</annotation><annotation encoding="application/x-llamapun" id="A9.T9.30.30.30.3.m1.1d">1.4 ± 0.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A9.T9.33.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A9.T9.33.33.33.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T9.33.33.33.4.1">Best@3 Human [3 paper subset]</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A9.T9.31.31.31.1"><math alttext="72.4" class="ltx_Math" display="inline" id="A9.T9.31.31.31.1.m1.1"><semantics id="A9.T9.31.31.31.1.m1.1a"><mn id="A9.T9.31.31.31.1.m1.1.1" xref="A9.T9.31.31.31.1.m1.1.1.cmml">72.4</mn><annotation-xml encoding="MathML-Content" id="A9.T9.31.31.31.1.m1.1b"><cn id="A9.T9.31.31.31.1.m1.1.1.cmml" type="float" xref="A9.T9.31.31.31.1.m1.1.1">72.4</cn></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.31.31.31.1.m1.1c">72.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.31.31.31.1.m1.1d">72.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A9.T9.32.32.32.2"><math alttext="20.4" class="ltx_Math" display="inline" id="A9.T9.32.32.32.2.m1.1"><semantics id="A9.T9.32.32.32.2.m1.1a"><mn id="A9.T9.32.32.32.2.m1.1.1" xref="A9.T9.32.32.32.2.m1.1.1.cmml">20.4</mn><annotation-xml encoding="MathML-Content" id="A9.T9.32.32.32.2.m1.1b"><cn id="A9.T9.32.32.32.2.m1.1.1.cmml" type="float" xref="A9.T9.32.32.32.2.m1.1.1">20.4</cn></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.32.32.32.2.m1.1c">20.4</annotation><annotation encoding="application/x-llamapun" id="A9.T9.32.32.32.2.m1.1d">20.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A9.T9.33.33.33.3"><math alttext="8.9" class="ltx_Math" display="inline" id="A9.T9.33.33.33.3.m1.1"><semantics id="A9.T9.33.33.33.3.m1.1a"><mn id="A9.T9.33.33.33.3.m1.1.1" xref="A9.T9.33.33.33.3.m1.1.1.cmml">8.9</mn><annotation-xml encoding="MathML-Content" id="A9.T9.33.33.33.3.m1.1b"><cn id="A9.T9.33.33.33.3.m1.1.1.cmml" type="float" xref="A9.T9.33.33.33.3.m1.1.1">8.9</cn></annotation-xml><annotation encoding="application/x-tex" id="A9.T9.33.33.33.3.m1.1c">8.9</annotation><annotation encoding="application/x-llamapun" id="A9.T9.33.33.33.3.m1.1d">8.9</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average replication scores achieved by different AI models on the PaperBench benchmark, broken down by requirement type.  The replication score reflects how well the model fulfilled specific criteria for replicating research papers.  The three requirement types are Code Development (correct code implementation), Execution (successful code execution), and Results Analysis (successful reproduction of results). The scores are averages across multiple runs (three seeds for most models, two for o1 (IterativeAgent) and gemini-2.0-flash (BasicAgent)), providing a measure of model performance consistency.
> <details>
> <summary>read the caption</summary>
> Table 9: Average Replication Scores for models with our scaffold for each requirement type. Standard error is computed across three seeds, except for o1 (IterativeAgent) and gemini-2.0-flash (BasicAgent) where it is computed across two seeds.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T10.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T10.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T10.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T10.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T10.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T10.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T10.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.2.1">0*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T10.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.3.1">0.027</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T10.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.4.1">0.193</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T10.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.5.1">0.073</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T10.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.2.1.6.1">0.049</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.2.1">0.008</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.3.1">0.025</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.4.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.3.2.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.2.1">0.131</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.4.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.5.1">0.074</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.4.3.6.1">0.032</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.2.1">0.002</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.3.1">0.018</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.4.1">0.002</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.5.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.5.4.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.2.1">0.003</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.3.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.4.1">0.004</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.5.1">0.006</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.6.5.6.1">0.002</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.2.1">0.029</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.3.1">0.014</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.4.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.5.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.7.6.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.2.1">0.070</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.3.1">0.021</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.5.1">0.030</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.8.7.6.1">0.017</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.2.1">0.081</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.3.1">0.033</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.5.1">0.038</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.9.8.6.1">0.019</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.3.1">0.013</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.4.1">0.051</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.5.1">0.021</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.10.9.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.2.1">0.019</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.3.1">0.056</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.4.1">0.053</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.5.1">0.042</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.11.10.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.2.1">0.112</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.3.1">0.058</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.5.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.12.11.6.1">0.026</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.4.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.5.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.13.12.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.2.1">0.233</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.3.1">0.178</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.4.1">0.193</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.5.1">0.201</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.14.13.6.1">0.014</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.3.1">0.192</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.4.1">0.118</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.5.1">0.103</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.15.14.6.1">0.046</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.2.1">0.031</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.5.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.16.15.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.2.1">0.048</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.17.16.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.2.1">0.034</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.3.1">0.084</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.4.1">0.026</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.5.1">0.048</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.18.17.6.1">0.015</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.2.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.3.1">0.049</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.4.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.5.1">0.024</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.19.18.6.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T10.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T10.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.2.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.3.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.4.1">0.002</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.5.1">0.012</span></td>
<td class="ltx_td ltx_align_center" id="A9.T10.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.20.19.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T10.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T10.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T10.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.2.1">0.051</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T10.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T10.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T10.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.5.1">0.017</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T10.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T10.1.21.20.6.1">0.014</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the GPT-4 model using the BasicAgent setup on the PaperBench benchmark.  Each row represents a paper from the benchmark, and the columns show the performance (Replication Score) of three separate runs of the model for each paper, along with the mean and standard error. A '*' symbol indicates runs that were disqualified for violating PaperBench's rules.
> <details>
> <summary>read the caption</summary>
> Table 10: GPT-4o BasicAgent results. * indicates a result that was set to 0% due to disqualification violating PaperBench rules.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T11.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T11.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T11.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T11.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T11.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T11.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T11.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T11.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T11.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.2.1">0.037</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T11.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.3.1">0.107</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T11.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.4.1">0.037</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T11.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.5.1">0.060</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T11.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.2.1.6.1">0.019</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.2.1">0.098</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.3.1">0.091</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.4.1">0.041</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.5.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.3.2.6.1">0.014</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.2.1">0.255</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.3.1">0.206</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.4.1">0.297</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.5.1">0.253</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.4.3.6.1">0.021</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.2.1">0.117</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.3.1">0.109</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.4.1">0.139</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.5.1">0.122</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.5.4.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.2.1">0.135</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.3.1">0.098</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.4.1">0.136</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.5.1">0.123</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.6.5.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.2.1">0.155</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.4.1">0.064</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.5.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.7.6.6.1">0.037</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.2.1">0.014</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.4.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.5.1">0.017</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.8.7.6.1">0.008</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.2.1">0.322</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.3.1">0.166</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.4.1">0.275</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.5.1">0.254</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.9.8.6.1">0.038</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.2.1">0.024</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.3.1">0.062</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.4.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.5.1">0.053</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.10.9.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.3.1">0.132</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.4.1">0.231</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.5.1">0.121</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.11.10.6.1">0.055</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.2.1">0.239</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.3.1">0.129</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.4.1">0.078</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.5.1">0.149</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.12.11.6.1">0.039</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.2.1">0.245</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.3.1">0.099</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.4.1">0.078</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.5.1">0.141</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.13.12.6.1">0.043</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.2.1">0.145</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.3.1">0.126</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.4.1">0.128</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.5.1">0.133</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.14.13.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.2.1">0.448</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.3.1">0.229</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.4.1">0.098</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.5.1">0.258</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.15.14.6.1">0.083</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.2.1">0.101</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.3.1">0.083</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.4.1">0.102</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.5.1">0.095</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.16.15.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.2.1">0.076</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.3.1">0.304</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.4.1">0.318</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.5.1">0.233</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.17.16.6.1">0.064</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.2.1">0.060</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.3.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.4.1">0.056</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.5.1">0.058</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.18.17.6.1">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.2.1">0.326</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.3.1">0.182</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.4.1">0.230</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.5.1">0.246</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.19.18.6.1">0.035</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T11.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T11.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.2.1">0.094</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.3.1">0.069</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.4.1">0.176</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.5.1">0.113</span></td>
<td class="ltx_td ltx_align_center" id="A9.T11.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.20.19.6.1">0.027</span></td>
</tr>
<tr class="ltx_tr" id="A9.T11.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T11.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T11.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.2.1">0.107</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T11.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.3.1">0.041</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T11.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.4.1">0.060</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T11.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.5.1">0.069</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T11.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T11.1.21.20.6.1">0.016</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using the OpenAI o1 model with the BasicAgent setup on the PaperBench benchmark.  For each of the 20 papers in the benchmark, the table shows the performance of the o1 model across three separate runs. The performance is quantified by three metrics: RUN 1, RUN 2, RUN 3, representing the replication scores achieved in each of the three runs.  The MEAN column indicates the average replication score across the three runs for each paper, providing an overall measure of the model's success in replicating the paper's results.  Finally, the STD. ERROR column gives the standard error of the mean, which helps assess the variability or uncertainty in the average scores. A '*' indicates a run that was disqualified due to violating the rules of PaperBench.
> <details>
> <summary>read the caption</summary>
> Table 11: o1 BasicAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T12.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T12.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T12.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T12.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T12.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T12.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T12.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T12.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T12.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T12.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T12.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.2.1">0.249</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T12.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.3.1">0.140</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T12.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.4.1">0.238</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T12.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.5.1">0.209</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T12.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.2.1.6.1">0.028</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.2.1">0.220</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.3.1">0.043</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.4.1">0.182</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.5.1">0.148</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.3.2.6.1">0.044</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.2.1">0.296</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.3.1">0.464</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.4.1">0.387</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.5.1">0.383</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.4.3.6.1">0.040</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.2.1">0.201</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.3.1">0.175</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.4.1">0.212</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.5.1">0.196</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.5.4.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.2.1">0.218</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.3.1">0.189</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.4.1">0.189</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.5.1">0.199</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.6.5.6.1">0.008</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.2.1">0.290</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.3.1">0.373</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.4.1">0.276</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.5.1">0.313</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.7.6.6.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.2.1">0.093</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.3.1">0.106</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.4.1">0.096</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.5.1">0.098</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.8.7.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.2.1">0.463</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.3.1">0.464</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.4.1">0.209</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.5.1">0.379</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.9.8.6.1">0.069</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.2.1">0.182</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.3.1">0.144</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.4.1">0.138</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.5.1">0.155</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.10.9.6.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.2.1">0.272</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.3.1">0.440</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.4.1">0.197</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.5.1">0.303</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.11.10.6.1">0.059</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.2.1">0.214</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.4.1">0.289</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.5.1">0.168</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.12.11.6.1">0.071</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.2.1">0.152</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.3.1">0.207</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.4.1">0.070</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.5.1">0.143</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.13.12.6.1">0.032</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.2.1">0.202</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.3.1">0.183</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.4.1">0.161</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.5.1">0.182</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.14.13.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.2.1">0.425</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.3.1">0.465</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.4.1">0.466</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.5.1">0.452</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.15.14.6.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.2.1">0.188</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.3.1">0.193</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.4.1">0.148</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.5.1">0.177</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.16.15.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.2.1">0.544</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.3.1">0.408</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.4.1">0.447</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.5.1">0.466</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.17.16.6.1">0.033</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.2.1">0.132</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.3.1">0.176</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.4.1">0.109</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.5.1">0.139</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.18.17.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.2.1">0.397</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.3.1">0.319</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.4.1">0.266</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.5.1">0.327</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.19.18.6.1">0.031</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T12.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T12.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.2.1">0.220</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.3.1">0.237</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.4.1">0.245</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.5.1">0.234</span></td>
<td class="ltx_td ltx_align_center" id="A9.T12.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.20.19.6.1">0.006</span></td>
</tr>
<tr class="ltx_tr" id="A9.T12.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T12.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T12.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.2.1">0.308</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T12.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.3.1">0.151</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T12.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.4.1">0.175</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T12.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.5.1">0.212</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T12.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T12.1.21.20.6.1">0.040</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted using the o1 language model with an iterative agent.  The iterative agent is a modified version of the basic agent used in the paper, designed to encourage the model to work on the replication task for its full allocated time. The table shows the average replication scores (expressed as a percentage) for each of 20 research papers evaluated, broken down by three runs per paper. The mean and standard error across these runs are also provided.
> <details>
> <summary>read the caption</summary>
> Table 12: o1 IterativeAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T13.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T13.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T13.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T13.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T13.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T13.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T13.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T13.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T13.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T13.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T13.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T13.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.2.1">0.012</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T13.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.3.1">0.012</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T13.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.4.1">0.007</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T13.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.5.1">0.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T13.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.2.1.6.1">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.3.1">0.022</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.4.1">0.062</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.5.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.3.2.6.1">0.015</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.2.1">0.059</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.3.1">0.042</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.4.1">0.029</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.5.1">0.043</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.4.3.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.2.1">0.004</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.3.1">0.012</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.4.1">0.018</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.5.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.5.4.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.2.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.4.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.5.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.6.5.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.2.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.3.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.5.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.7.6.6.1">0.002</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.4.1">0.008</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.5.1">0.003</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.8.7.6.1">0.002</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.2.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.3.1">0.029</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.4.1">0.040</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.5.1">0.042</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.9.8.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.2.1">0.031</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.3.1">0.060</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.4.1">0.038</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.5.1">0.043</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.10.9.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.2.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.3.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.4.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.5.1">0.028</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.11.10.6.1">0.000</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.2.1">0.078</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.3.1">0.060</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.4.1">0.148</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.5.1">0.095</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.12.11.6.1">0.022</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.2.1">0.039</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.3.1">0.004</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.5.1">0.014</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.13.12.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.4.1">0.032</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.5.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.14.13.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.2.1">0.123</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.5.1">0.041</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.15.14.6.1">0.033</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.3.1">0.009</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.4.1">0.003</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.5.1">0.004</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.16.15.6.1">0.002</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.4.1">0.059</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.5.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.17.16.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.2.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.3.1">0.178</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.4.1">0.039</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.5.1">0.075</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.18.17.6.1">0.042</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.2.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.3.1">0.078</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.4.1">0.029</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.5.1">0.037</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.19.18.6.1">0.017</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T13.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T13.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.2.1">0.008</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.3.1">0.002</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.4.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.5.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T13.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.20.19.6.1">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A9.T13.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T13.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T13.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.2.1">0.010</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T13.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T13.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.4.1">0.001</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T13.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.5.1">0.003</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T13.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T13.1.21.20.6.1">0.003</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using the 03-mini language model with a basic agent setup.  It shows the performance of this model on each of the 20 replication tasks in the PaperBench benchmark. For each task, the table lists three runs of the experiment, along with the mean and standard error for each task. The results are expressed as a score between 0 and 1, where higher scores indicate better replication performance.  The data helps understand the model's capabilities and limitations in tackling these complex AI research replication tasks.
> <details>
> <summary>read the caption</summary>
> Table 13: o3-mini BasicAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T14.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T14.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T14.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T14.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T14.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T14.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T14.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T14.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T14.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T14.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T14.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T14.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.2.1">0.054</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T14.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.3.1">0.076</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T14.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.4.1">0.063</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T14.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.5.1">0.064</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T14.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.2.1.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.2.1">0.030</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.3.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.4.1">0.090</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.5.1">0.052</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.3.2.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.2.1">0.087</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.3.1">0.100</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.4.1">0.082</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.5.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.4.3.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.2.1">0.086</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.3.1">0.060</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.4.1">0.009</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.5.1">0.051</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.5.4.6.1">0.018</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.2.1">0.023</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.3.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.4.1">0.012</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.5.1">0.017</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.6.5.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.2.1">0.066</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.3.1">0.050</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.4.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.5.1">0.045</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.7.6.6.1">0.011</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.2.1">0.059</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.3.1">0.017</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.4.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.5.1">0.029</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.8.7.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.2.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.3.1">0.076</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.4.1">0.079</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.5.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.9.8.6.1">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.2.1">0.100</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.3.1">0.053</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.4.1">0.013</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.5.1">0.055</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.10.9.6.1">0.021</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.2.1">0.093</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.3.1">0.064</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.4.1">0.075</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.5.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.11.10.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.2.1">0.125</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.3.1">0.109</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.4.1">0.135</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.5.1">0.123</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.12.11.6.1">0.006</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.2.1">0.025</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.3.1">0.005</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.4.1">0.002</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.5.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.13.12.6.1">0.006</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.2.1">0.149</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.3.1">0.037</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.4.1">0.119</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.5.1">0.102</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.14.13.6.1">0.027</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.2.1">0.168</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.3.1">0.167</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.4.1">0.231</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.5.1">0.189</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.15.14.6.1">0.017</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.2.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.3.1">0.056</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.4.1">0.035</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.5.1">0.060</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.16.15.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.2.1">0.680</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.3.1">0.542</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.4.1">0.144</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.5.1">0.455</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.17.16.6.1">0.131</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.2.1">0.050</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.3.1">0.062</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.4.1">0.037</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.5.1">0.050</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.18.17.6.1">0.006</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.2.1">0.084</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.3.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.4.1">0.156</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.5.1">0.087</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.19.18.6.1">0.032</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T14.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T14.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.2.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.3.1">0.091</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.4.1">0.059</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.5.1">0.062</span></td>
<td class="ltx_td ltx_align_center" id="A9.T14.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.20.19.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T14.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T14.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T14.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T14.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T14.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.4.1">0.038</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T14.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.5.1">0.013</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T14.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T14.1.21.20.6.1">0.010</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using the o3-mini model with an iterative agent approach on the PaperBench benchmark.  It shows the performance of the model in replicating 20 different machine learning research papers. Each paper's replication is assessed across three runs, with the mean and standard error reported for each. The results are broken down by paper, providing a detailed view of the model's success rate in various aspects of the replication task.
> <details>
> <summary>read the caption</summary>
> Table 14: o3-mini IterativeAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T15.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T15.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T15.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T15.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T15.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T15.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.2.1">0.133</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.3.1">0.188</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.4.1">0.176</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.5.1">0.166</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.2.1.6.1">0.014</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.2.1">0.267</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.3.1">0.284</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.4.1">0.194</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.5.1">0.248</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.3.2.6.1">0.023</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.2.1">0.199</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.3.1">0.371</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.4.1">0.187</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.5.1">0.252</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.4.3.6.1">0.049</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.2.1">0.135</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.3.1">0.185</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.5.1">0.107</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.5.4.6.1">0.045</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.2.1">0.173</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.3.1">0.203</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.4.1">0.099</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.5.1">0.158</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.6.5.6.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.2.1">0.141</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.3.1">0.265</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.4.1">0.273</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.5.1">0.227</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.7.6.6.1">0.035</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.2.1">0.114</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.3.1">0.091</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.4.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.5.1">0.093</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.8.7.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.2.1">0.128</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.3.1">0.103</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.4.1">0.364</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.5.1">0.198</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.9.8.6.1">0.068</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.2.1">0.134</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.3.1">0.189</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.4.1">0.095</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.5.1">0.140</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.10.9.6.1">0.022</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.2.1">0.075</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.3.1">0.222</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.4.1">0.245</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.5.1">0.181</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.11.10.6.1">0.043</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.2.1">0.183</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.3.1">0.329</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.4.1">0.231</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.5.1">0.248</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.12.11.6.1">0.035</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.2.1">0.202</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.3.1">0.231</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.4.1">0.163</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.5.1">0.198</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.13.12.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.2.1">0.273</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.3.1">0.301</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.4.1">0.315</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.5.1">0.296</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.14.13.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.2.1">0.246</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.3.1">0.369</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.4.1">0.314</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.5.1">0.309</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.15.14.6.1">0.029</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.2.1">0.040</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.3.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.4.1">0.087</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.5.1">0.054</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.16.15.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.2.1">0.365</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.3.1">0.459</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.4.1">0.420</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.5.1">0.414</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.17.16.6.1">0.022</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.2.1">0.106</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.3.1">0.085</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.4.1">0.135</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.5.1">0.108</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.18.17.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.2.1">0.155</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.3.1">0.071</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.4.1">0.147</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.5.1">0.124</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.19.18.6.1">0.022</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T15.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.2.1">0.182</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.3.1">0.105</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.4.1">0.143</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.5.1">0.143</span></td>
<td class="ltx_td ltx_align_center" id="A9.T15.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.20.19.6.1">0.018</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T15.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.2.1">0.382</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.3.1">0.256</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.4.1">0.253</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.5.1">0.297</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T15.1.21.20.6.1">0.035</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Claude 3.5 Sonnet model using the BasicAgent setup on the PaperBench benchmark. It shows the performance of the model across 20 different papers, each evaluated across three independent runs. The table displays the average replication score for each paper, along with the standard error, allowing for assessment of the model's consistency and reliability in replicating various research papers.
> <details>
> <summary>read the caption</summary>
> Table 15: Claude 3.5 Sonnet BasicAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T16.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T16.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T16.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T16.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T16.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T16.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.2.1">0.214</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.3.1">0.292</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.4.1">0.165</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.5.1">0.224</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.2.1.6.1">0.030</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.2.1">0.163</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.3.1">0.115</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.4.1">0.066</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.5.1">0.115</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.3.2.6.1">0.023</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.2.1">0.223</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.3.1">0.237</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.4.1">0.101</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.5.1">0.187</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.4.3.6.1">0.035</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.2.1">0.157</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.3.1">0.128</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.4.1">0.170</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.5.1">0.152</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.5.4.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.2.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.3.1">0.086</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.4.1">0.100</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.5.1">0.081</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.6.5.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.2.1">0.167</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.3.1">0.158</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.4.1">0.200</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.5.1">0.175</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.7.6.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.2.1">0.042</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.3.1">0.041</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.4.1">0.044</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.5.1">0.043</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.8.7.6.1">0.001</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.2.1">0.300</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.3.1">0.232</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.4.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.5.1">0.207</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.9.8.6.1">0.051</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.2.1">0.170</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.3.1">0.108</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.4.1">0.122</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.5.1">0.133</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.10.9.6.1">0.015</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.2.1">0.041</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.3.1">0.014</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.4.1">0.056</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.5.1">0.037</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.11.10.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.2.1">0.113</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.3.1">0.399</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.4.1">0.163</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.5.1">0.225</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.12.11.6.1">0.072</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.2.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.3.1">0.114</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.4.1">0.047</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.5.1">0.078</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.13.12.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.2.1">0.254</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.3.1">0.220</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.4.1">0.268</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.5.1">0.247</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.14.13.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.2.1">0.326</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.3.1">0.225</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.4.1">0.221</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.5.1">0.257</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.15.14.6.1">0.028</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.2.1">0.110</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.3.1">0.053</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.4.1">0.024</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.5.1">0.063</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.16.15.6.1">0.021</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.2.1">0.433</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.3.1">0.388</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.4.1">0.159</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.5.1">0.327</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.17.16.6.1">0.069</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.2.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.3.1">0.077</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.4.1">0.319</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.5.1">0.162</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.18.17.6.1">0.064</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.2.1">0.192</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.3.1">0.278</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.4.1">0.320</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.5.1">0.263</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.19.18.6.1">0.031</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T16.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T16.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.2.1">0.144</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.3.1">0.130</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.4.1">0.151</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.5.1">0.142</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.20.19.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T16.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.2.1">0.156</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.3.1">0.089</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.4.1">0.098</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.5.1">0.114</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T16.1.21.20.6.1">0.017</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using the Claude 3.5 Sonnet model with an iterative agent.  The iterative agent is designed to encourage the model to work through the replication task in a more piecemeal fashion.  For each of the 20 papers in the PaperBench benchmark, the table shows the replication score achieved by Claude 3.5 Sonnet across three separate runs.  The scores are expressed as decimal numbers between 0 and 1, reflecting the proportion of the replication task successfully completed.  The standard error is also included, indicating the variability across runs.
> <details>
> <summary>read the caption</summary>
> Table 16: Claude 3.5 Sonnet IterativeAgent results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T17.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T17.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T17.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T17.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T17.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T17.3.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T17.3.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T17.3.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T17.3.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T17.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T17.3.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.3.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.2.1">0.036</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.3.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.3.1">0.060</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.3.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.4.1">0.173</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.3.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.5.1">0.090</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.3.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.2.1.6.1">0.034</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.3.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.4.1">0.089</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.5.1">0.032</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.3.2.6.1">0.023</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.4.1">0.323</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.5.1">0.108</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.4.3.6.1">0.088</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.4.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.5.1">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.5.4.6.1">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.2.1">0.011</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.3.1">0.013</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.4.1">0.025</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.6.5.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.2.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.3.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.4.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.5.1">0.061</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.7.6.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.2.1">0.047</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.3.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.4.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.8.7.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.2.1">0.114</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.3.1">0.039</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.4.1">0.092</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.5.1">0.082</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.9.8.6.1">0.018</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.3.1">0.038</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.4.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.10.9.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.2.1">0.052</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.4.1">0.021</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.5.1">0.024</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.11.10.6.1">0.012</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.2.1">0.034</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.3.1">0.012</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.5.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.12.11.6.1">0.008</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.2.1">0.013</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.4.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.5.1">0.007</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.13.12.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.3.1">0.132</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.4.1">0.214</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.5.1">0.115</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.14.13.6.1">0.051</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.2.1">0.069</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.3.1">0.122</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.4.1">0.006</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.5.1">0.066</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.15.14.6.1">0.027</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.2.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.3.1">0.010</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.4.1">0.024</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.5.1">0.016</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.16.15.6.1">0.003</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.2.1">0.160</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.3.1">0.222</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.4.1">0.284</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.5.1">0.222</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.17.16.6.1">0.029</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.4.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.5.1">0.012</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.18.17.6.1">0.010</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.4.1">0.059</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.5.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.19.18.6.1">0.016</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T17.3.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T17.3.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.2.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.5.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.3.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.20.19.6.1">0.000</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.3.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T17.3.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.3.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.2.1">0.030</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.3.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.3.1">0.056</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.3.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.4.1">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.3.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.5.1">0.043</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.3.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T17.3.21.20.6.1">0.009</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Gemini 2.0 Flash model using the BasicAgent setup on the PaperBench benchmark.  The table shows the replication score achieved by the model for each of the 20 tasks in the benchmark across three runs.  Note that one result (Run 3 of 'what-will-my-model-forget') is missing due to infrastructure problems, and some results are 0% due to the model violating PaperBench rules during execution.
> <details>
> <summary>read the caption</summary>
> Table 17: Gemini 2.0 Flash BasicAgent results. Run 3 of what-will-my-model-forget failed due to infrastructure issues. * indicates a result that was set to 0% due to disqualification violating PaperBench rules.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A9.T18.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T18.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T18.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.1.1">Paper</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T18.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.2.1">Run 1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T18.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.3.1">Run 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T18.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.4.1">Run 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T18.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.5.1">Mean</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T18.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A9.T18.1.1.1.6.1">Std. Error</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T18.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T18.1.2.1.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.1.1">adaptive-pruning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T18.1.2.1.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.2.1">0.133</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T18.1.2.1.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.3.1">0.040</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T18.1.2.1.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.4.1">0.046</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T18.1.2.1.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.5.1">0.073</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T18.1.2.1.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.2.1.6.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.3.2.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.1.1">all-in-one</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.3.2.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.2.1">0.065</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.3.2.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.3.1">0.049</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.3.2.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.4.1">0.139</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.3.2.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.5.1">0.085</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.3.2.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.3.2.6.1">0.023</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.4.3.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.1.1">bam</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.4.3.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.2.1">0.087</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.4.3.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.3.1">0.017</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.4.3.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.4.1">0.123</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.4.3.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.5.1">0.075</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.4.3.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.4.3.6.1">0.025</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.5.4.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.1.1">bbox</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.5.4.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.2.1">0.048</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.5.4.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.3.1">0.058</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.5.4.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.4.1">0.023</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.5.4.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.5.1">0.043</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.5.4.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.5.4.6.1">0.008</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.6.5.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.1.1">bridging-data-gaps</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.6.5.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.2.1">0.027</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.6.5.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.3.1">0.055</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.6.5.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.6.5.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.5.1">0.027</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.6.5.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.6.5.6.1">0.013</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.7.6.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.1.1">fre</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.7.6.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.2.1">0.071</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.7.6.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.3.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.7.6.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.4.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.7.6.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.5.1">0.030</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.7.6.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.7.6.6.1">0.017</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.8.7.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.1.1">ftrl</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.8.7.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.8.7.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.3.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.8.7.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.4.1">0.019</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.8.7.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.5.1">0.006</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.8.7.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.8.7.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.9.8.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.1.1">lbcs</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.9.8.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.2.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.9.8.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.3.1">0.025</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.9.8.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.9.8.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.5.1">0.020</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.9.8.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.9.8.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.10.9.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.1.1">lca-on-the-line</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.10.9.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.10.9.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.3.1">0.003</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.10.9.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.4.1">0.015</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.10.9.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.5.1">0.006</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.10.9.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.10.9.6.1">0.004</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.11.10.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.1.1">mechanistic-understanding</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.11.10.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.2.1">0.052</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.11.10.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.11.10.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.11.10.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.5.1">0.017</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.11.10.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.11.10.6.1">0.014</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.12.11.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.1.1">pinn</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.12.11.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.2.1">0.008</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.12.11.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.12.11.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.4.1">0.101</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.12.11.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.5.1">0.036</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.12.11.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.12.11.6.1">0.026</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.13.12.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.1.1">rice</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.13.12.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.2.1">0*</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.13.12.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.13.12.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.4.1">0.025</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.13.12.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.5.1">0.008</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.13.12.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.13.12.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.14.13.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.1.1">robust-clip</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.14.13.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.2.1">0.114</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.14.13.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.3.1">0.056</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.14.13.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.4.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.14.13.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.5.1">0.057</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.14.13.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.14.13.6.1">0.027</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.15.14.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.1.1">sample-specific-masks</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.15.14.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.2.1">0.110</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.15.14.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.3.1">0.201</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.15.14.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.4.1">0.050</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.15.14.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.5.1">0.120</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.15.14.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.15.14.6.1">0.036</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.16.15.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.1.1">sapg</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.16.15.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.2.1">0.030</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.16.15.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.16.15.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.4.1">0.032</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.16.15.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.5.1">0.021</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.16.15.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.16.15.6.1">0.009</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.17.16.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.1.1">sequential-neural-score-estimation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.17.16.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.2.1">0.327</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.17.16.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.3.1">0.212</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.17.16.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.4.1">0.552</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.17.16.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.5.1">0.364</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.17.16.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.17.16.6.1">0.082</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.18.17.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.1.1">stay-on-topic-with-classifier-free-guidance</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.18.17.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.2.1">0.073</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.18.17.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.3.1">0.053</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.18.17.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.4.1">0.083</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.18.17.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.5.1">0.070</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.18.17.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.18.17.6.1">0.007</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.19.18.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.1.1">stochastic-interpolants</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.19.18.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.2.1">0.072</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.19.18.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.3.1">0.263</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.19.18.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.4.1">0.068</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.19.18.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.5.1">0.134</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.19.18.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.19.18.6.1">0.053</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A9.T18.1.20.19.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.1.1">test-time-model-adaptation</span></th>
<td class="ltx_td ltx_align_center" id="A9.T18.1.20.19.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.20.19.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.3.1">0.006</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.20.19.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.4.1">0.022</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.20.19.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.5.1">0.009</span></td>
<td class="ltx_td ltx_align_center" id="A9.T18.1.20.19.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.20.19.6.1">0.005</span></td>
</tr>
<tr class="ltx_tr" id="A9.T18.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A9.T18.1.21.20.1"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.1.1">what-will-my-model-forget</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T18.1.21.20.2"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.2.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T18.1.21.20.3"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.3.1">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T18.1.21.20.4"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.4.1">0.005</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T18.1.21.20.5"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.5.1">0.002</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T18.1.21.20.6"><span class="ltx_text ltx_font_smallcaps" id="A9.T18.1.21.20.6.1">0.001</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using the R1 BasicAgent model on the PaperBench benchmark.  Each row represents a different research paper from the benchmark, and each column shows the model's performance on three separate runs for each paper, expressed as a replication score (a percentage). The mean and standard error of these three runs are also displayed. An asterisk (*) indicates instances where a run was disqualified due to a violation of PaperBench rules, resulting in a score of 0%. The table offers a detailed breakdown of R1's performance across various research papers, providing insight into the model's strengths and weaknesses on different aspects of the replication task.
> <details>
> <summary>read the caption</summary>
> Table 18: R1 BasicAgent results. * indicates a result that was set to 0% due to disqualification violating PaperBench rules.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01848/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01848/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}