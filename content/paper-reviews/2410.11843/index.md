---
title: "From Commands to Prompts: LLM-based Semantic File System for AIOS"
summary: "Researchers developed LSFS, an LLM-based semantic file system for AIOS, enabling natural language file management via prompts, significantly improving user experience and efficiency."
categories: ["AI Generated"]
tags: ["🔖 24-09-23", ]
showSummary: true
date: 2024-09-23
draft: false
---

{{< keyword >}} 2410.11843 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces LSFS, a novel semantic file system leveraging Large Language Models (LLMs) to revolutionize how users interact with files.  Instead of complex commands, users interact via natural language prompts.  LSFS uses a vector database to store files semantically, enabling functions like semantic file retrieval, update monitoring, summarization, and rollback.  A comprehensive API set facilitates these operations, and the system includes safety mechanisms to avoid accidental data loss. Experiments demonstrate significant improvements in user convenience and efficiency, with higher accuracy compared to traditional file systems. The LSFS parser translates natural language into executable API calls with high accuracy. The system is open-source, encouraging further research and development in AI-driven operating systems.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11843" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.11843" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AIOS and file systems. It bridges the gap between traditional command-line file management and the potential of LLMs for more intuitive and semantic interactions.  The open-sourced codebase allows for immediate experimentation and extension, fostering rapid advancements in AI-powered file systems.  The findings on LLM-parser accuracy and the efficiency of semantic file operations provide valuable benchmarks and directions for future research.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLM-based semantic file systems improve user experience by enabling natural language interactions for file management. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LSFS offers significant performance gains over traditional systems in terms of user convenience and efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The system's open-source nature facilitates further research and development in AI-powered file systems. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.11843/figures_2_0.png)

> 🔼 The figure compares the workflow of changing a file using a terminal command in a traditional operating system versus using a natural language prompt in the proposed LLM-based semantic file system.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of changing file function in traditional system and our file management system
> </details>





![](https://ai-paper-reviewer.com/2410.11843/charts_9_0.png)

> 🔼 The chart displays the accuracy of the LSFS parser across various LLMs in translating natural language prompts into executable API calls for different API types.
> <details>
> <summary>read the caption</summary>
> Figure 5: The accuracy of LSFS parser in translating natural language prompt to executable API calls.
> </details>





{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td>Function</td><td>TFS</td><td>LSFS (Ours)</td></tr><tr><td>create new directory</td><td>mkdir ()</td><td>create_or_get_file ()</td></tr><tr><td>open file</td><td>open ()</td><td>create_or_get_file ()</td></tr><tr><td>read file</td><td>read ()</td><td>create_or_get_file ()</td></tr><tr><td>get file state and metadata</td><td>stat ()</td><td>create_or_get_file ()</td></tr><tr><td>delete directory</td><td>rmdir ()</td><td>del_ ()</td></tr><tr><td>delete file</td><td>unlink () / remove ( )</td><td>del_ ()</td></tr><tr><td>write data</td><td>write ()</td><td>insert ()</td></tr><tr><td>overwrite data</td><td>write ()</td><td>overwrite ()</td></tr><tr><td>update the access time</td><td>utime ()</td><td>update_access_time ()</td></tr><tr><td>automatic comparison</td><td></td><td>compare_change ()</td></tr><tr><td>generate link</td><td>syml ink ( ) /link () / readlink ()</td><td>generate_link ()</td></tr><tr><td>lock or unlock file</td><td>flock ()</td><td>lock_file () / unlock_file ()</td></tr><tr><td>rollback</td><td>snapshot +rollback</td><td>rollback ()</td></tr><tr><td>file translation</td><td></td><td>file_translate ()</td></tr><tr><td>file group</td><td></td><td>group_text () / group_se ()</td></tr><tr><td>merge file</td><td>cat</td><td>join ()</td></tr><tr><td>keyword retrieve</td><td>grep</td><td>keyword_retrieve ()</td></tr><tr><td>semantic retrieve</td><td></td><td>semantic retrieve ()</td></tr><tr><td>Hybrid retrieval</td><td></td><td>integrated_retrieve ()</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares some key functions of the proposed LLM-based semantic file system (LSFS) with those of a traditional file system (TFS), highlighting the differences in their functionalities and implementations.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of some key functions between our LSFS and traditional file system (TFS).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.11843/figures_2_1.png)

> 🔼 The figure illustrates the comparison of file management workflows between traditional operating systems and the proposed LLM-based semantic file system (LSFS), highlighting the difference in user interaction and operation complexity.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of changing file function in traditional system and our file management system
> </details>



![](https://ai-paper-reviewer.com/2410.11843/figures_4_0.png)

> 🔼 The figure illustrates the architecture of the LLM-based Semantic File System (LSFS), showing its components and how they interact.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) provides a overview of the LSFS architecture, and (b) shows the internal APIs and syscalls in LSFS.
> </details>



![](https://ai-paper-reviewer.com/2410.11843/figures_7_0.png)

> 🔼 The figure compares the pipeline of changing a file in a traditional operating system versus the proposed LLM-based semantic file system, highlighting the difference in user interaction and command execution.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of changing file function in traditional system and our file management system
> </details>



![](https://ai-paper-reviewer.com/2410.11843/figures_8_0.png)

> 🔼 This figure illustrates the architecture of the LLM-based semantic file system (LSFS), including its components and interactions.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) provides a overview of the LSFS architecture, and (b) shows the internal APIs and syscalls in LSFS.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='8' style='font-size:20px'><tr><td rowspan="2">LLMs backbone</td><td rowspan="2"># files</td><td colspan="2">Accuracy of target file retrieval</td><td colspan="2">Retrieval time</td></tr><tr><td>w/o LSFS</td><td>w/ LSFS</td><td>w/o LSFS</td><td>w/ LSFS</td></tr><tr><td rowspan="3">Gemini-1.5-flash</td><td>10</td><td>75.0%</td><td>95.0%(20.0%↑)</td><td>97.40(s)</td><td>14.39(s)(85.2%↓)</td></tr><tr><td>20</td><td>77.3%</td><td>91.3%(14.0%↑)</td><td>213.69(s)</td><td>116.69(s)(92.2%↓)</td></tr><tr><td>40</td><td>70.91%</td><td>93.4%(22.5%↑)</td><td>312.39(s)</td><td>123.86(s)(92.4%↓)</td></tr><tr><td rowspan="3">GPT-4o-mini</td><td>10</td><td>80%</td><td>95.0%(15.0%↑)</td><td>61.14(s)</td><td>30.64(s)(49.9%↓)</td></tr><tr><td>20</td><td>69.1%</td><td>91.3%(22.2%↑)</td><td>129.92(s)</td><td>40.39(s)(68.9%↓)</td></tr><tr><td>40</td><td>69.2%</td><td>93.4%(24.2%↑)</td><td>239.49(s)</td><td>57.1(s)(76.2%↓)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the accuracy and execution time of semantic file retrieval using LSFS against a baseline that incorporates LLMs into a traditional file system without LSFS, showing significant improvements in both accuracy and efficiency for LSFS.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of the accuracy and execution time between using LSFS and the baseline which incorporates LLM into traditional file system without using LSFS.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:14px'><tr><td>Metric</td><td># files</td><td>TFS search window</td><td>TFS-grep</td><td>TFS-grep *</td><td>LSFS</td></tr><tr><td rowspan="3">Precision</td><td>10</td><td>0.708</td><td>0.389</td><td>1.000</td><td>0.950</td></tr><tr><td>20</td><td>0.724</td><td>0.396</td><td>1.000</td><td>0.870</td></tr><tr><td>40</td><td>0.691</td><td>0.403</td><td>1.000</td><td>0.863</td></tr><tr><td rowspan="3">Recall</td><td>10</td><td>1.000</td><td>0.416</td><td>1.000</td><td>0.833</td></tr><tr><td>20</td><td>1.000</td><td>0.292</td><td>1.000</td><td>0.933</td></tr><tr><td>40</td><td>1.000</td><td>0.306</td><td>1.000</td><td>0.960</td></tr><tr><td rowspan="3">F1-score</td><td>10</td><td>0.829</td><td>0.402</td><td>1.000</td><td>0.891</td></tr><tr><td>20</td><td>0.840</td><td>0.337</td><td>1.000</td><td>0.900</td></tr><tr><td>40</td><td>0.817</td><td>0.348</td><td>1.000</td><td>0.909</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the performance of LSFS against traditional file system methods in keyword-based file retrieval tasks, using precision, recall, and F1-score metrics across different numbers of files.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison between LSFS and methods in the traditional file system (TFS) in retrieving files by keywords in the names and content of files.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="4">Success rate of generating sharable links (#20)</td></tr><tr><td>Code Generation Rate</td><td>I Link Generation Rate</td><td>Link Validness Rate</td><td>Final Success Rate</td></tr><tr><td>Gemini-1.5-flash</td><td>65%</td><td>45%</td><td>45%</td><td>10%</td></tr><tr><td>GPT-4o-mini</td><td>60%</td><td>35%</td><td>30%</td><td>5%</td></tr><tr><td>AutoGPT</td><td>50%</td><td>45%</td><td>15%</td><td>5%</td></tr><tr><td>Code Interpreter</td><td>100%</td><td>75%</td><td>65%</td><td>0%</td></tr><tr><td>LSFS</td><td>100%</td><td>100%</td><td>100%</td><td>100%</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the success rate of generating shareable links for various methods, including LSFS and other LLM-based approaches, using four key metrics.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison between LSFS and other LLM-leveraged methods in File Sharing.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Task</td><td>Task Example</td><td>Method</td><td>Instruction</td></tr><tr><td rowspan="2">Keyword-based Retrieval (Single-condition)</td><td rowspan="2">Find papers in the computer- vision category authored by Emily Zhang.</td><td>LLM w/o LSFS</td><td>At current step, you need to judge if the input paper satisfy [retrieve condition]. If yes, you should summarize the paper, if no you don't need to output anything. The paper is [file content]</td></tr><tr><td>LSFS</td><td>LSFS input: Find papers in the computer- vision category authored by Emily Zhang. LLM input: You need to summary the content. The content is [file content]</td></tr><tr><td rowspan="2">Keyword-based Retrieval (Multi-condition)</td><td rowspan="2">Find papers from either Cam- bridge University or Columbia University.</td><td>LLM w/o LSFS</td><td>At current step, you need to judge if the input paper satisfy [retrieve condition]. If you should summarize the paper, if yes, no you don't need to output anything. The paper is [file content]</td></tr><tr><td>LSFS</td><td>LSFS input: Find papers from either Cambridge University or Columbia University. LLM input: You need to summary the content. The content is [file content].</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the instructions used for keyword-based retrieval tasks in LSFS and in LLMs without LSFS, showing variations in prompts based on single or multiple conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: The example of instruction of keyword-based retrieval with single-condition and multi- condition in LSFS and in LLM without LSFS.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>API Type</td><td>Instruction</td></tr><tr><td>Change-Summary API</td><td>LSFS Input: w/ directory: Change the content of /xxxx/xxxx.txt to old-file under llm-directory. w/o directory: Modify /xxxx/xxxx.txt to contain change-file. LLM Input: At current step, you need to summary differences between the two contents, the content before the update is [oldfile], the content after the update is [new file]</td></tr><tr><td>Rollback API</td><td>LSFS Input: By date: Revert the file named syntax to its version from 2023-6-15. By version number: Rollback the cnn file to the state it was in 3 versions ago.</td></tr><tr><td>Link API</td><td>LSFS Input: w/ period of validity: Provide a link for llm-base that will be active for 3 months. w/o period of validity: Generate a link for system-architecture.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares some key functions of the LLM-based semantic file system (LSFS) with those of a traditional file system (TFS).
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of some key functions between our LSFS and traditional file system (TFS).
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.11843/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11843/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}