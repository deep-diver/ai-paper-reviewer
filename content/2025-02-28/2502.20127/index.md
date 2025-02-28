---
title: "SoRFT: Issue Resolving with Subtask-oriented Reinforced Fine-Tuning"
summary: "SoRFT enhances LLMs for issue resolving via subtask-oriented reinforced fine-tuning, outperforming other open-source models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Software Development", "🏢 Peking University",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20127 {{< /keyword >}}
{{< keyword icon="writer" >}} Zexiong Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20127" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20127" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20127/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Issue-resolving frameworks often rely on costly commercial models and struggle with generalization, failing to fully utilize open-source resources. **Existing training methods fall short of leveraging the wealth of information available in open-source development.** Addressing these challenges is crucial for creating more accessible and robust automated software development tools.



This paper introduces Subtask-oriented Reinforced Fine-Tuning (SoRFT). It decomposes issue resolving into structured subtasks: file localization, function localization, line localization, and code edit generation. **SoRFT utilizes rejection-sampled supervised fine-tuning and rule-based reinforcement learning to enhance LLMs' issue-resolving capabilities, achieving state-of-the-art performance among open-source models.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SoRFT enhances LLMs' issue-resolving capabilities through subtask decomposition and reinforced learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The SoRFT-trained models achieve SOTA performance on SWE-Bench Verified and SWE-Bench Lite among open-source models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The subtask-oriented approach and rule-based reinforcement learning effectively improve model generalization and reduce reliance on costly commercial models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces SoRFT, a novel approach for issue resolving, offering a cost-effective, open-source alternative to commercial models. It enhances LLMs' capabilities through subtask-oriented, reinforced fine-tuning, improving generalization and opening new research avenues in automated software development.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20127/x1.png)

> 🔼 This figure illustrates the reward calculation mechanism in the rule-based reinforcement learning stage of SoRFT for the file localization subtask.  The process begins with an LLM generating Chain-of-Thought (CoT) data in response to a given software issue.  This CoT data represents the LLM's reasoning process toward identifying the relevant file(s). A reward score, specifically the F-beta score (Fβ), is then computed. This score compares the files identified by the LLM (extracted answer) against the actual files modified in the ground truth solution (ground-truth answer). A higher F-beta score indicates better accuracy in the LLM's file localization. This reward signal is crucial in guiding the LLM's learning during the reinforcement learning phase to improve its file localization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Rule-based reward example for file localization subtask. LLM generates CoT data for a given issue, the reward for the sampled CoT is then calculated by the Fβsubscript𝐹𝛽F_{\beta}italic_F start_POSTSUBSCRIPT italic_β end_POSTSUBSCRIPT score based on the extracted answer and the ground-truth answer.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Framework</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">Verified</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">Lite</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T1.1.1.2.1" style="background-color:#F1F1F1;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1" style="background-color:#F1F1F1;">Proprietary Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.3.1">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">Cla (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib2" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.3.2">Openhands</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3">Agent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.4">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.5">41.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.4.1">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">Cla (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib2" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.4.2">Agentless</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.3">Pipeline</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4">50.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.5">40.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">OpenAI (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib24" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.2">SWE-SynInfer</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.3">Pipeline + Agent</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5">20.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T1.1.1.6.1" style="background-color:#F1F1F1;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.1.1" style="background-color:#F1F1F1;">7 - 14B Open-source Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.7.1">SWE-Gym-Qwen-7B <cite class="ltx_cite ltx_citemacro_cite">Pan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.7.2">Openhands</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.3">Agent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.4">10.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.7.5">10.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.1">SWE-Gym-Qwen-14B <cite class="ltx_cite ltx_citemacro_cite">Pan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.2">Openhands</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.3">Agent</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.4">16.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.5">12.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.9.1">Lingma-SWE-GPT-7B <cite class="ltx_cite ltx_citemacro_citep">(Ma et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib18" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.9.2">SWE-SynInfer</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.3">Pipeline + Agent</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.4">18.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.5">12.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.1" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.1.1" style="background-color:#E3E3FF;">SoRFT-Qwen-7B (Ours)</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.2" style="background-color:#E3E3FF;"><span class="ltx_text" id="S4.T1.1.1.10.2.1" style="background-color:#E3E3FF;">Agentless</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.3" style="background-color:#E3E3FF;"><span class="ltx_text" id="S4.T1.1.1.10.3.1" style="background-color:#E3E3FF;">Pipeline</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.4.1" style="background-color:#E3E3FF;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.5" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.5.1" style="background-color:#E3E3FF;">14.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T1.1.1.11.1" style="background-color:#F1F1F1;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.1.1" style="background-color:#F1F1F1;">32 - 72B Open-source Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.12.1">Lingma-SWE-GPT-72B <cite class="ltx_cite ltx_citemacro_citep">(Ma et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib18" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.12.2">SWE-SynInfer</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.3">Pipeline + Agent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.4">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.12.5">22.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.13.1">SWE-Fixer-Qwen-72B <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib42" title="">2025a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.13.2">SWE-Fixer</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.3">Pipeline</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.4">30.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.5">23.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.14.1">SWE-Gym-Qwen-32B <cite class="ltx_cite ltx_citemacro_cite">Pan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2502.20127v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.14.2">Openhands</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.3">Agent</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.4">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.5">15.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.15.1" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.1.1" style="background-color:#E3E3FF;">SoRFT-Qwen-32B (Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.15.2" style="background-color:#E3E3FF;"><span class="ltx_text" id="S4.T1.1.1.15.2.1" style="background-color:#E3E3FF;">Agentless</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.3" style="background-color:#E3E3FF;"><span class="ltx_text" id="S4.T1.1.1.15.3.1" style="background-color:#E3E3FF;">Pipeline</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.4" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.4.1" style="background-color:#E3E3FF;">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.15.5" style="background-color:#E3E3FF;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.5.1" style="background-color:#E3E3FF;">24.0</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different large language models (LLMs) on two benchmark datasets for software issue resolution: SWE-Bench Verified and SWE-Bench Lite.  The performance metric used is the percentage of issues resolved (%Resolved). Because different LLMs were fine-tuned within specific frameworks (e.g., Agentless, Openhands), this table focuses on comparing the SoRFT-Qwen model to other models that were fine-tuned using the same framework.  This ensures a fair comparison by controlling for the influence of the underlying framework.
> <details>
> <summary>read the caption</summary>
> Table 1: The %Resolved performance of various models on SWE-Bench Verified and SWE-Bench Lite. Given that all fine-tuning approaches are inherently framework-specific, we compare SoRFT-Qwen with previous fine-tuned models within corresponding frameworks.
> </details>





### In-depth insights


#### RL for Issue Fix
**Reinforcement Learning (RL) offers a promising avenue for automated issue fixing by training models to generate code edits based on rewards derived from ground-truth patches.** This approach leverages the vast repository of resolved issues in open-source projects, using the (issue, patch) pairs as training data. By decomposing the complex issue-resolving task into subtasks like file, function, and line localization, and code edit generation, RL can be applied more effectively. **Rule-based reward systems, which use ground-truth data to evaluate the LLM generated code, can mitigate reward hacking**. Fine-tuning techniques like Rejection-sampled Supervised Fine-Tuning (SFT) and Proximal Policy Optimization (PPO) enhance model generalization and produce more accurate and reliable code modifications. **RL in conjunction with SFT helps to reduce redundant code generation, improve code length and accuracy**.

#### Subtask SoRFT
The paper introduces Subtask-oriented Reinforced Fine-Tuning (SoRFT) as a method to enhance LLMs for issue resolution by decomposing the task into subtasks such as **file, function, and line localization, and code edit generation**. This approach aims to improve generalization and leverage open-source resources effectively. SoRFT includes two stages: **rejection-sampled supervised fine-tuning (SFT) and rule-based reinforcement learning (RL)**. The SFT stage filters CoT data using ground truth, and the RL stage uses PPO with ground-truth rewards. The SoRFT addresses the challenge of constructing end-to-end training data for complex tasks, enabling targeted training for each phase of issue resolution, ultimately improving the model's issue-resolving performance.

#### SOTA Open Models
The paper presents SoRFT, achieving **state-of-the-art (SOTA)** performance among open-source LLMs in issue resolution. Specifically, SoRFT-Qwen-7B outperforms SWE-Gym-Qwen-32B on SWE-bench Verified, showing its efficiency.  The more powerful version, **SoRFT-Qwen-32B** even surpasses Lingma-SWE-GPT-72B, despite having fewer parameters. This demonstrates SoRFT's ability to effectively leverage open-source resources. While OpenHands benefits from proprietary models, the SWE-Gym model, tailored for it, underperforms. This highlights the advantage of the pipelined approach for CoT data filtering and reward calculation. 

#### No Unique Fixes
**Issue resolution often lacks a single, definitive solution**, reflecting the complexity of real-world software development. **Different approaches may address the same problem** with varying degrees of effectiveness or side effects. This variability stems from factors like coding style, system architecture, and project-specific requirements. A successful fix could involve multiple valid code changes, each impacting performance, maintainability, or security differently. The **absence of a 'one-size-fits-all' solution** necessitates a nuanced understanding of the problem context and careful evaluation of potential fixes. Researchers need to account for this non-uniqueness when evaluating issue-resolving frameworks, considering multiple acceptable solutions rather than rigidly adhering to a single ground truth. This challenge requires more sophisticated metrics and evaluation methodologies that can effectively compare and contrast the quality of different valid fixes.

#### Limited to Py
The paper acknowledges a limitation in their experimental setup: **they only conducted experiments on Python repositories**. This constraint stems from the absence of a multilingual SWE-Bench test set. While acknowledging this restriction, they express confidence that SoRFT, their proposed framework, remains language-agnostic. They believe it possesses the inherent potential to enhance issue-resolving capabilities of LLMs, even when applied to code written in other languages beyond just Python. This highlights an area for future research and development.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20127/x2.png)

> 🔼 SoRFT is composed of three stages: (1) Issue decomposition into four subtasks (file, function, line localization and code edit generation); (2) Supervised fine-tuning of LLMs using rejection-sampled Chain-of-Thought (CoT) data to align model reasoning with task format and methods; (3) Rule-based reinforcement learning using Proximal Policy Optimization (PPO) with ground-truth rewards to further enhance issue-resolving performance.
> <details>
> <summary>read the caption</summary>
> Figure 2: SoRFT consists three parts: (1) decompose issue resolving into four subtasks: file localization, function localization, line localization and code edit generation; (2) fine-tune LLMs with rejection-sampled CoT data to enable it follow the task format and reasoning methods for each subtask; (3) employ rule-based reinforcement learning to further enhance the issue resolving ability of LLMs.
> </details>



![](https://arxiv.org/html/2502.20127/x3.png)

> 🔼 Figure 3 visualizes the SoRFT framework's architecture. It is composed of three main stages: subtask decomposition, rejection-sampled supervised fine-tuning (SFT), and rule-based reinforcement learning (RL).  The subtask decomposition breaks down the issue-resolving task into four subtasks: file localization, function localization, line localization, and code edit generation. The SFT stage uses a teacher LLM to generate Chain-of-Thought (CoT) data and filters out negative samples based on ground truth answers before fine-tuning the LLM. Finally, the RL stage employs rule-based reinforcement learning with proximal policy optimization (PPO) and reward mechanisms based on ground truth answers for each subtask, further enhancing the LLM's issue-resolving abilities.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2502.20127/x4.png)

> 🔼 Figure 2(b) shows the second stage of the SoRFT framework, which is rejection-sampled supervised fine-tuning.  In this stage, a teacher LLM generates Chain-of-Thought (CoT) data for each subtask (file, function, line localization, and code edit generation).  Negative samples are filtered out based on ground truth answers. Then, supervised fine-tuning is performed on the remaining positive samples to enable the model to understand the format and reasoning mechanisms of each subtask.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2502.20127/x5.png)

> 🔼 This figure shows the performance comparison of different rule-based reward strategies on the SWE-bench Verified dataset. The x-axis represents the training steps, and the y-axis represents the average length of responses and thoughts generated by the model during training.  The left chart displays the response length, and the right chart displays the thought length for different reward strategies. The results reveal that a robust reward rule using FB score leads to more stable and better performance compared to the simpler hit score.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2502.20127/x6.png)

> 🔼 This figure compares the performance of two different reward strategies used in reinforcement learning for an issue-resolving task.  The first strategy, 'hit score', simply rewards the model if any part of its generated response matches the ground truth. The second strategy, 'Fβ score', uses a more nuanced evaluation metric (F-beta score) which balances precision and recall, giving more weight to recall (β > 1). The plots in Figure 3 show the change in response length and the total number of answers generated over training steps using each of these reward strategies. The comparison demonstrates that the Fβ score leads to more stable and effective model learning compared to the simpler hit score which is vulnerable to reward hacking.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of rule-based reward strategy: hit score v.s. Fβsubscript𝐹𝛽F_{\beta}italic_F start_POSTSUBSCRIPT italic_β end_POSTSUBSCRIPT score.
> </details>



![](https://arxiv.org/html/2502.20127/x7.png)

> 🔼 This figure shows the reward trend during the Proximal Policy Optimization (PPO) training process. The reward, which reflects the performance of the model on the issue-resolving subtasks, steadily increases as the training progresses, indicating successful learning and improvement of the model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reward over PPO training steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.1.1">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1">%Resolved</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1">%Applied</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.1.2.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.2">7.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.3">55.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.3.1">   + SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.2">18.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.3.3">85.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.4.1">   + SFT + RL (Our SoRFT-Qwen-7B)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.4.2.1">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.4.3.1">95.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.1.1.5.1">Qwen2.5-Coder-32B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.5.2">25.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.5.3">84.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T2.1.1.6.1">   + SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.2">28.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.3">90.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T2.1.1.7.1">   + SFT + RL (Our SoRFT-Qwen-32B)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.7.2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.7.2.1">30.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T2.1.1.7.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.7.3.1">95.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of a language model trained using different methods on the SWE-Bench Verified dataset.  It shows the improvement in issue resolution (% Resolved) and the successful application of generated code edits (% Applied) when using supervised fine-tuning (SFT) alone versus when combining SFT with rule-based reinforcement learning (RL) as in the SoRFT approach. The table helps to demonstrate the effectiveness of the SoRFT method in improving model performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of model with different training strategy on SWE-bench Verified.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.2">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.3">RepoQA</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.1.2.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2">34.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.3">85.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S5.T3.1.1.3.1">SoRFT-Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.2.1">34.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.3.3.1">90.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of two models, Qwen2.5-Coder-7B-Instruct and SoRFT-Qwen-7B, on two code generation benchmarks: LiveCodeBench and RepoQA.  LiveCodeBench focuses on self-contained code generation tasks, while RepoQA assesses a model's ability to extract information from long-context code snippets.  The table shows the percentage of tasks successfully completed (%Resolved) and the accuracy of the generated code (%Applied) for each model and benchmark, allowing for a direct comparison of their performance on different types of code generation challenges.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison on LiveCodeBench and RepoQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T4.1.1">
<tr class="ltx_tr" id="A4.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.2.1">%File Hit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.3.1">%Func Hit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.4.1">%Line Hit</span></td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T4.1.1.2.1">Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.2.2">59.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.2.3">51.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.1.2.4">17.2</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_b" id="A4.T4.1.1.3.1">SoRFT-Qwen-7B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A4.T4.1.1.3.2"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.3.2.1">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A4.T4.1.1.3.3"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.3.3.1">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A4.T4.1.1.3.4"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.3.4.1">23.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of the performance of different models on three subtasks involved in resolving software issues: file localization, function localization, and line localization.  It shows the percentage of times each model successfully identified the correct file, function, and line of code related to the issue.  This helps to assess the effectiveness of the models at various stages of the issue-resolution process.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison on issue resolving subtasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20127/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20127/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}