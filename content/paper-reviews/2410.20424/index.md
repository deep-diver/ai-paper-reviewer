---
title: "AutoKaggle: A Multi-Agent Framework for Autonomous Data Science Competitions"
summary: "AutoKaggle: a multi-agent framework automates data science competitions, achieving 85% validation submission and 82% comprehensive score on 8 Kaggle tasks."
categories: ["AI Generated"]
tags: ["🔖 24-10-27", "🤗 24-10-30"]
showSummary: true
date: 2024-10-27
draft: false
---

{{< keyword >}} 2410.20424 {{< /keyword >}}

### TL;DR


{{< lead >}}

Many existing automated data science systems struggle with complex tasks and lack robustness.  They often focus on simple, one-step analyses, neglecting the intricacies of real-world data science challenges.  These systems also often lack transparency and interpretability, hindering user trust and understanding. 

AutoKaggle tackles these issues with a novel multi-agent framework.  It uses a phase-based workflow, incorporating iterative debugging, unit testing, and a comprehensive machine learning tools library. The results on 8 Kaggle competitions show that **AutoKaggle achieves a high validation submission rate (0.85) and comprehensive score (0.82)**, demonstrating its effectiveness and practicality in handling complex data science tasks.  The framework's transparent reporting mechanism increases user trust and understanding.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.20424" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.20424" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it presents AutoKaggle, a novel framework that significantly advances automated data science. Its multi-agent approach and iterative debugging system directly address existing limitations in LLM-based solutions. The comprehensive evaluation on Kaggle competitions demonstrates practical effectiveness, opening avenues for improved data science automation and democratization of data science skills.  Researchers can leverage AutoKaggle's design principles and findings to develop more robust and efficient automated data science tools.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AutoKaggle uses a multi-agent system with specialized agents for each phase of the data science process. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} AutoKaggle incorporates iterative debugging and unit testing to ensure code quality and robustness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AutoKaggle achieves high success rates on Kaggle competitions, outperforming existing methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.20424/figures_3_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's phase-based workflow, multi-agent collaboration, and the integration of various tools and libraries.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>





![](https://ai-paper-reviewer.com/2410.20424/charts_8_0.png)

> 🔼 The chart compares the average normalized performance scores achieved by AutoKaggle using different model settings (GPT-40 and 01-mini) and AIDE across eight different Kaggle tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Average normalized performance score for different settings/tasks.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td></td><td colspan="4">Classic</td><td colspan="4">Recent</td><td></td></tr><tr><td>Metric</td><td>Setting / Task</td><td>Task 1</td><td>Task 2</td><td>Task 3</td><td>Task 4</td><td>Task 5</td><td>Task 6</td><td>Task 7</td><td>Task 8</td><td>Avg.</td></tr><tr><td rowspan="3">Made Submission</td><td>AutoKaggle gpt-4o</td><td>1</td><td>0.80</td><td>0.80</td><td>1</td><td>0.80</td><td>0.80</td><td>0.80</td><td>0.80</td><td>0.85</td></tr><tr><td>AutoKaggle o1-mini</td><td>1</td><td>0.60</td><td>0.60</td><td>1</td><td>0.60</td><td>0.80</td><td>0.60</td><td>0.60</td><td>0.73</td></tr><tr><td>AIDE gpt-4o</td><td>1</td><td>0.40</td><td>0.20</td><td>0.60</td><td>1</td><td>0.80</td><td>0.80</td><td>0</td><td>0.60</td></tr><tr><td rowspan="3">Valid Submission</td><td>AutoKaggle gpt-4o</td><td>1</td><td>- 0.80</td><td>0.80</td><td>- 1</td><td>- - 0.80</td><td>- - - 0.60</td><td>- - 0.80</td><td>- 0.80</td><td>- 0.83</td></tr><tr><td>AutoKaggle o1-mini</td><td>1</td><td>0.60</td><td>0.60</td><td>1</td><td>0.60</td><td>0.60</td><td>0.60</td><td>0.60</td><td>0.70</td></tr><tr><td>AIDE gpt-4o</td><td>1</td><td>0.40</td><td>0.20</td><td>0.40</td><td>1</td><td>0.80</td><td>0.80</td><td>0</td><td>0.58</td></tr><tr><td rowspan="3">Comprehensive Score</td><td>AutoKaggle gpt-4o</td><td>0.888</td><td>- 0.786</td><td>0.831</td><td>- - 0.862</td><td>- - - 0.810</td><td>- - 0.728</td><td>- - 0.848</td><td>- 0.812</td><td>- - - 0.821</td></tr><tr><td>AutoKaggle o1-mini</td><td>0.879</td><td>0.680</td><td>0.729</td><td>0.863</td><td>0.709</td><td>0.735</td><td>0.742</td><td>0.735</td><td>0.759</td></tr><tr><td>AIDE gpt-4o</td><td>0.872</td><td>0.597</td><td>0.542</td><td>0.561</td><td>0.918</td><td>0.793</td><td>0.848</td><td>0</td><td>0.641</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the made submission rate, valid submission rate, and comprehensive score achieved by AutoKaggle and two baselines across eight Kaggle tasks, with each experiment repeated five times.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.20424/figures_4_0.png)

> 🔼 The figure illustrates the iterative debugging and testing process in AutoKaggle, showing how code generated by the Developer agent is tested and debugged, with feedback incorporated to improve code quality.
> <details>
> <summary>read the caption</summary>
> Figure 2: Iterative debugging and testing.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_16_0.png)

> 🔼 The figure illustrates the phase-based workflow and multi-agent collaboration system of the AutoKaggle framework for autonomous data science competitions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_18_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, highlighting its phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and reporting mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_18_1.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, highlighting its phase-based workflow, multi-agent collaboration, and key components.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_21_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, showing its phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and comprehensive reporting.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_22_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's phase-based workflow, multi-agent collaboration, and integrated tools.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_23_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, which uses a phase-based workflow and multi-agent collaboration to automate data science competition tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_27_0.png)

> 🔼 The figure illustrates the phase-based workflow and multi-agent collaboration system of AutoKaggle for autonomous data science competitions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_29_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, highlighting its phase-based workflow, multi-agent collaboration, iterative debugging, tools library, and reporting mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_30_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, showing its phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and reporting mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_31_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, showing its phase-based workflow, multi-agent collaboration, and integrated tools.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_32_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, showing its phase-based workflow, multi-agent collaboration, iterative debugging and testing, machine learning tools library, and reporting system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_33_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, highlighting its phase-based workflow, multi-agent system, iterative debugging and testing, machine learning tools library, and comprehensive reporting features.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_34_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's phase-based workflow, multi-agent collaboration, and integrated tools for autonomous data science competitions.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_35_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, highlighting its phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and comprehensive reporting system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_37_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, showing its phase-based workflow, multi-agent collaboration, and various components.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_38_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, highlighting its phase-based workflow, multi-agent collaboration, and integrated tools.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_39_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, showing its phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and reporting system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_40_0.png)

> 🔼 The figure illustrates the AutoKaggle framework, highlighting its phase-based workflow, multi-agent collaboration, iterative debugging, tools library, and reporting mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_41_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's phase-based workflow, multi-agent collaboration, iterative debugging and testing, machine learning tools library, and comprehensive reporting system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_42_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's phase-based workflow, multi-agent collaboration, iterative debugging, machine learning tools library, and reporting system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_43_0.png)

> 🔼 The figure illustrates the overall architecture of AutoKaggle, showing its phase-based workflow, multi-agent collaboration system, machine learning tools library, and reporting mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



![](https://ai-paper-reviewer.com/2410.20424/figures_44_0.png)

> 🔼 The figure illustrates the AutoKaggle framework's architecture, highlighting its phase-based workflow, multi-agent collaboration, iterative debugging, and machine learning tools library.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of AutoKaggle. AutoKaggle integrates a phase-based workflow with specialized agents (Reader, Planner, Developer, Reviewer, and Summarizer), iterative debugging and unit testing, a comprehensive machine learning tools library, and detailed reporting.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.20424/charts_9_0.png)

> 🔼 The chart displays the relationship between the number of debugging attempts allowed and the comprehensive score achieved across different tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comprehensive Score across different debugging times.
> </details>


![](https://ai-paper-reviewer.com/2410.20424/charts_9_1.png)

> 🔼 The chart displays the debugging time and average performance (completion rate and comprehensive score) across different configurations of machine learning tools used in the AutoKaggle framework.
> <details>
> <summary>read the caption</summary>
> Figure 4: Left. Debugging time and Right. Average performance in competitions.
> </details>


![](https://ai-paper-reviewer.com/2410.20424/charts_11_0.png)

> 🔼 The chart displays the relationship between the comprehensive score achieved in different tasks and the debugging time allowed.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comprehensive Score across different debugging times.
> </details>


![](https://ai-paper-reviewer.com/2410.20424/charts_33_0.png)

> 🔼 The histogram shows the distribution of passenger ages before outlier removal in the Titanic dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: The histogram of age before outliers are processed
> </details>


![](https://ai-paper-reviewer.com/2410.20424/charts_33_1.png)

> 🔼 The histogram displays the distribution of passenger ages before outlier removal.
> <details>
> <summary>read the caption</summary>
> Figure 6: The histogram of age before outliers are processed
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='16' style='font-size:14px'><tr><td></td><td></td><td>Task 1</td><td>Task 2</td><td>Task 3</td><td>Task 5</td><td></td><td>Avg.</td></tr><tr><td rowspan="4">VS</td><td>No Tools</td><td>0.80</td><td>0.60</td><td>0.50</td><td></td><td>0.40</td><td>0.58</td></tr><tr><td>DC Tools</td><td>0.80</td><td>0.70</td><td>1.00</td><td></td><td>1.00</td><td>0.88</td></tr><tr><td>DC & FE Tools</td><td>0.80</td><td>0.60</td><td>0.60</td><td></td><td>0.60</td><td>0.65</td></tr><tr><td>All Tools</td><td>1.00 -</td><td>0.80 -</td><td>0.80</td><td>-</td><td>0.80 - -</td><td>0.85</td></tr><tr><td rowspan="4">CS</td><td>No Tools</td><td>- 0.781</td><td>- - 0.697</td><td>- 0.666</td><td>-</td><td>- - 0.602</td><td>- - 、 0.687</td></tr><tr><td>DC Tools</td><td>0.781</td><td>0.721</td><td>0.928</td><td>0.909</td><td></td><td>0.835</td></tr><tr><td>DC & FE Tools</td><td>0.787</td><td>0.684</td><td>0.735</td><td></td><td>0.713</td><td>0.730</td></tr><tr><td>All Tools</td><td>0.888</td><td>0.786</td><td>0.831</td><td>0.810</td><td></td><td>0.829</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the Made Submission, Valid Submission, and Comprehensive Score achieved by AutoKaggle and baselines across eight different Kaggle tasks, each with five repeated trials.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='13' style='font-size:16px'><tr><td></td><td></td><td>Task 1</td><td>Task 2</td><td></td><td>Task 3</td><td>Task 5</td><td>Avg.</td></tr><tr><td rowspan="2">CR</td><td>w/o Unit Tests</td><td>0.20</td><td>0</td><td>0.20</td><td></td><td>0</td><td>0.10</td></tr><tr><td>w/ Unit Tests</td><td>1.00</td><td>0.80 -</td><td>0.80 -</td><td></td><td>0.80 -</td><td>0.85 - -</td></tr><tr><td rowspan="2">CS</td><td>w/o Unit Tests</td><td>- 0.478</td><td>- 0</td><td>-</td><td>- - 0.482</td><td>- 0</td><td>- 0.240</td></tr><tr><td>w/ Unit Tests</td><td>0.888</td><td>0.831</td><td></td><td>0.786</td><td>0.810</td><td>0.829</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of AutoKaggle and baselines on eight Kaggle tasks across three metrics: Made Submission, Valid Submission, and Comprehensive Score.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Error Type (Count)</td><td>Description</td></tr><tr><td>Value Error (49)</td><td>Fail to match the expected type or range of the input values</td></tr><tr><td>Key Error (44)</td><td>Attempt to access a dictionary element using a key that does not exist</td></tr><tr><td>File Error (8)</td><td>Attempt to access a file that does not exist in the specified location</td></tr><tr><td>Model Error (8)</td><td>Incorrect setup in the parameters or structure of a model, leading to opera- tional failures</td></tr><tr><td>Type Error (25)</td><td>Mismatch between expected and actual data type, leading to operational failure</td></tr><tr><td>Timeout Error (6)</td><td>Failure to complete a process within the allocated time period</td></tr><tr><td>Index Error (3)</td><td>Attempt to access an element at an index that is outside the range of a list or array</td></tr><tr><td>Assertion Error (1)</td><td>An assertion condition in the code is not met, indicating an unmet expected constraint</td></tr><tr><td>Name Error (2)</td><td>Use of an undeclared variable that is not recognized by the system</td></tr><tr><td>Attribute Error (2)</td><td>Attempt to access an attribute or method that does not exist for an object</td></tr><tr><td>Indentation Error (1)</td><td>Incorrect indentation disrupts code structure, preventing proper parsing</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of AutoKaggle and baselines across eight Kaggle tasks in terms of made submission rate, valid submission rate, and comprehensive score, with each experiment repeated five times.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Category</td><td>No.</td><td>Task Name</td><td>Task</td><td>Level</td><td>Teams</td><td>Train</td><td>Test</td></tr><tr><td rowspan="4">Classic</td><td>1</td><td>Titanic</td><td>Classification</td><td>Medium</td><td>13994</td><td>891</td><td>418</td></tr><tr><td>2</td><td>Spaceship Titanic</td><td>Classification</td><td>Easy</td><td>1720</td><td>8693</td><td>4277</td></tr><tr><td>3</td><td>House Prices</td><td>Regression</td><td>Medium</td><td>4383</td><td>1460</td><td>1459</td></tr><tr><td>4</td><td>Monsters</td><td>Classification</td><td>Easy</td><td>763</td><td>371</td><td>529</td></tr><tr><td rowspan="4">Recent</td><td>5</td><td>- - - - Academic Success</td><td>Regression</td><td>- - Medium</td><td>- 2684</td><td>- - - 76.5K</td><td>- - - 51K</td></tr><tr><td>6</td><td>Bank Churn</td><td>Regression</td><td>Easy</td><td>3632</td><td>165K</td><td>110K</td></tr><tr><td>7</td><td>Obesity Risk</td><td>Classification</td><td>Easy</td><td>3587</td><td>20.8K</td><td>13.8K</td></tr><tr><td>8</td><td>Plate Defect</td><td>Regression</td><td>Medium</td><td>2199</td><td>19.2K</td><td>12.8K</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the made submission rate, valid submission rate, and comprehensive score achieved by AutoKaggle and baseline models across eight different Kaggle data science competitions.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>State</td><td>Unit test name</td><td>Unit test description</td></tr><tr><td rowspan="11">State DC</td><td>test_document_exist</td><td>Test if cleaned_train.csv and cleaned_test.csv data exist.</td></tr><tr><td>test_no_duplicate_cleaned_train</td><td>Test if there are any duplicate rows in the cleaned_train.csv.</td></tr><tr><td>test_no_duplicate_cleaned_test</td><td>Test if there are any duplicate rows in the cleaned_test.csv.</td></tr><tr><td>test_readable_cleaned_train</td><td>Test if the cleaned_train.csv is readable.</td></tr><tr><td>test_readable_cleaned _test</td><td>Test if the cleaned_ test.csv is readable.</td></tr><tr><td>test_cleaned_train_no_missing_ values</td><td>Test if the cleaned_train.csv contains missing value.</td></tr><tr><td>test_cleamed_test_no_missing_values</td><td>Test if the cleaned_test.csv contains missing value.</td></tr><tr><td>test_cleaned_train_no_duplicated _features</td><td>Test if the cleaned_train.csv contains duplicate features.</td></tr><tr><td>test_cleaned_test_no_duplicaned_features</td><td>Test if the cleaned_test.csv contains duplicate features.</td></tr><tr><td>test_cleaned_difference_train_test_columns</td><td>Test if the cleaned_train.csv and cleaned_test.csv have the same features except for target variable.</td></tr><tr><td>test_cleaned_train_no_missing_target</td><td>Testif the target variable is in cleaned_train.csv.</td></tr><tr><td rowspan="8">State FE</td><td>test_document_exist</td><td>- Test if processed_train.csv and pro- cessed_test.csv data exist.</td></tr><tr><td>test_processed_train_feature_number</td><td>Test if the feature engineering phase is per- formed well in processed_train.csv.</td></tr><tr><td>test_processed_test_feature_number</td><td>Test if the feature engineering phase is per- formed well in processed_test.csv.</td></tr><tr><td>test_file_size</td><td>Test if processed data is larger than a threshold.</td></tr><tr><td>test_processed_train_no_duplicated _features test_processed_ter_no_duplicated_features</td><td>Test if the processed_ train.csv contains dupli- cate features.</td></tr><tr><td>test_processed_difference_train_test_coumms</td><td>Test if the processed test.csv contains duplicate  features.</td></tr><tr><td></td><td>Test if the processed _train.csv and pro- cessed_test.csv have the same features except for target varibale.</td></tr><tr><td>test_processed_train_no_missing_target</td><td>Test if the target variable is in pro- cessed_train.csv.</td></tr><tr><td rowspan="6">State MB VP</td><td>- - - test_document_exist</td><td>- - - - - - - - - - - - Test if a submission file exists.</td></tr><tr><td>test_no_duplicate_submission</td><td>Test if there are any duplicate rows in the sub- mission file.</td></tr><tr><td>test_readable_submission</td><td>test if the submission file is readable.</td></tr><tr><td>test_file _num_submission</td><td>Test if the submission file and sam- ple_submission.csv have the same number of rows.</td></tr><tr><td>test_column_narnes_submission</td><td>Test if the submission file and sam- ple_submission.csv have the same column names.</td></tr><tr><td>test_submission_validity</td><td>1) Test if the submission file and sam- ple_submission.csv have the same data in- dex. 2) Test if the submission file and sam- ple_submission.csv have the same numerical range.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of AutoKaggle and baselines on eight Kaggle tasks across three metrics: Made Submission, Valid Submission, and Comprehensive Score.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>State</td><td>Tool name</td><td>Tool description</td></tr><tr><td rowspan="7">State DC</td><td>FillMissing Values</td><td>Fills missing values or removes columns with missing values based on a threshold.</td></tr><tr><td>RemoveColumns WithMissingData</td><td>Removes columns containing missing values from a DataFrame based on a threshold.</td></tr><tr><td>DetectAndHandleOutliersZscore</td><td>Detects and handles outliers in specified columns using the Z-score method.</td></tr><tr><td>DetectAndHandleOutliersIqr</td><td>Detects and handles outliers in specified columns using the Interquartile Range (IQR) method.</td></tr><tr><td>RemoveDuplicates</td><td>Removes duplicate rows from a DataFrame.</td></tr><tr><td>ConvertDataTypes</td><td>Converts the data type of specified columns in a DataFrame.</td></tr><tr><td>FormatDatetime</td><td>Formats datetime columns to a specified format. - -</td></tr><tr><td rowspan="11">State FE</td><td>OneHotEncode</td><td>Performs one-hot encoding on specified categorical columns.</td></tr><tr><td>LabelEncode</td><td>Performs label encoding on specified categorical columns.</td></tr><tr><td>FrequencyEncode</td><td>Performs frequency encoding on specified categorical columns.</td></tr><tr><td>TargetEncode</td><td>Performs target encoding on specified categorical columns.</td></tr><tr><td>CorrelationFeatureSelection</td><td>Performs feature selection based on correlation analy- sis.</td></tr><tr><td>VarianceFeatureSelection</td><td>Performs feature selection based on variance analysis.</td></tr><tr><td>ScaleFeatures</td><td>Scales numerical features in the specified columns of a DataFrame.</td></tr><tr><td>PerformPca</td><td>Performs Principal Component Analysis (PCA) on the specified columns of a DataFrame.</td></tr><tr><td>PerformRfe</td><td>Performs Recursive Feature Elimination (RFE) on the specified columns of a DataFrame.</td></tr><tr><td>CreatePolynomialFeatures</td><td>Creates polynomial features from specified columns of a DataFrame.</td></tr><tr><td>CreateFeatureCombinations</td><td>Creates feature combinations from specified columns of a DataFrame. - - - -</td></tr><tr><td>State MBVP</td><td>TrainAndValidation AndSelectTheBestModel</td><td>Trains, evaluates, and selects the best machine learning model based on the training data and labels, returning the best performing model along with the performance scores of each model and their best hyperparameters.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of AutoKaggle and other methods across eight Kaggle tasks, measured by made submission, valid submission, and comprehensive score.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Markdown-formatted tool schema for FillMissing Values</td><td></td></tr><tr><td>Description: Fill missing values in specified columns of a DataFrame. This tool can handle both numerical and categorical features by using different filling methods. Applicable Situations: Handle missing values in various types of features. Parameters: · data: - Type: pd. DataFrame - Description: A pandas DataFrame object representing the dataset. · columns: - Type: string  array - Description: The name(s) of the column(s) where missing values should be filled. · method: - Type: string - Description: The method to use for filling missing values. - Enum: auto I mean I median  mode constant - Default: auto ● fill_value: - Type: number I string  null - Description: The value to use when method is constant. - Default: None Required: data, col umns Result: Successfully fill missing values in the specified column(s) of data. Notes: · The auto method uses mean for numeric columns and mode for non-numeric columns. · Using mean or median on non-numeric columns will raise an error. · The mode method uses the most frequent value, which may not always be appro- priate. · Filling missing values can introduce bias, especially if the data is not missing com- pletely at random. · Consider the impact of filling missing values on your analysis and model perfor- mance.</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the made submission rate, valid submission rate, and comprehensive score achieved by AutoKaggle and baselines on eight different Kaggle tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Made submission, valid submission and comprehensive score on 8 Kaggle tasks. Each experiment is repeated with 5 trials. The best performances on individual tasks are underlined, and the best performances across all tasks are bolded.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20424/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/40.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/41.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/42.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/43.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20424/44.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}