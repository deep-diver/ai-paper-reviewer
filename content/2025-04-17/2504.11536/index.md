---
title: "ReTool: Reinforcement Learning for Strategic Tool Use in LLMs"
summary: "ReTool: Reinforcement learning for strategic tool use in LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11536 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiazhan Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11536" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11536" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11536/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

LLMs struggle with structured problem-solving like geometry, computation, or equation solving, where code interpreters (CI) have advantages. Existing reasoning models are limited in tasks requiring precise numerical calculation or symbolic manipulation. They often fail to generalize beyond seen patterns or adaptively decide when and how to invoke external tools. This leads to misuse of tools or reliance on brittle heuristics.



This paper introduces **ReTool**, a reinforcement learning framework that enhances long-form reasoning with tool integration. It employs a training framework starting with synthetic data to produce code-augmented reasoning traces, then uses RL with task outcomes as rewards to refine the model's tool use. **ReTool outperforms text-based RL baselines on MATH Olympiad benchmarks**, demonstrating its effectiveness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ReTool enhances LLMs by integrating real-time code execution within natural language reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ReTool leverages outcome feedback in a RL paradigm to teach models when and how to invoke tools. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show ReTool's superiority on the MATH Olympiad benchmark AIME. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a new **RL framework, ReTool**, that enhances long-form reasoning through tool integration. ReTool allows models to autonomously discover **optimal tool invocation patterns**, offering new insights into hybrid neuro-symbolic systems and opening avenues for further research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11536/extracted/6364450/figures/code-rl.png)

> 🔼 This figure shows the performance comparison between ReTool and a text-based reinforcement learning (RL) baseline on the AIME (American Invitational Mathematics Examination) 2024 and 2025 datasets.  The results are presented using the Qwen2.5-32B-Instruct language model. The x-axis represents the number of training steps, and the y-axis represents the accuracy achieved.  The graph visually demonstrates that ReTool achieves significantly higher accuracy with fewer training steps, highlighting its efficiency and effectiveness in enhancing the reasoning capabilities of LLMs through tool integration.
> <details>
> <summary>read the caption</summary>
> Figure 1: AIME 2024 & 2025 scores of ReTool and text-based RL baseline on the Qwen2.5-32B-Instruct model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.2.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.2">AIME2024 (pass@1)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.1.3">AIME2025 (pass@1)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.2.1.2.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.1.2.1.1">Existing Baselines</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.3.1">Qwen2.5-Math-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.2">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.4.1">Qwen2.5-Math-72B-Instruct-TIR</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2">40.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.5.1">Sky-T1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2">43.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.6.1">OpenAI o1-preview</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2">44.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3">37.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.7.1">DeepSeek-R1-Zero-Qwen-32B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2">47.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.8.1">QWQ-32B-Preview</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.2">50.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.8.3">33.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.9.1">s1-32B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.2">56.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.9.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.2.1.10.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.1.10.1.1">CI-powered RL</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.11" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.11.1"><span class="ltx_text" id="S3.T1.2.1.11.1.1" style="background-color:#EBEBEB;">ReTool (Qwen2.5-32B-Instruct)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.11.2"><span class="ltx_text" id="S3.T1.2.1.11.2.1" style="background-color:#EBEBEB;">67.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.11.3"><span class="ltx_text" id="S3.T1.2.1.11.3.1" style="background-color:#EBEBEB;">49.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.12" style="background-color:#EBEBEB;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.12.1"><span class="ltx_text" id="S3.T1.2.1.12.1.1" style="background-color:#EBEBEB;">ReTool (DeepSeek-R1-Distill-Qwen-32B)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.2"><span class="ltx_text" id="S3.T1.2.1.12.2.1" style="background-color:#EBEBEB;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.12.3"><span class="ltx_text" id="S3.T1.2.1.12.3.1" style="background-color:#EBEBEB;">54.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.2.1.13.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.1.13.1.1">Ablations</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.14.1">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.14.2">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.14.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.15.1">Qwen2.5-32B-Instruct-ColdStart</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.15.2">40.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.15.3">34.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.2.1.16.1">Text-based RL (Qwen2.5-32B-Instruct)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.16.2">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.1.16.3">36.7</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the main experimental results comparing ReTool's performance against various baselines on the AIME2024 and AIME2025 datasets.  It shows the accuracy (pass@1) achieved by different models, including ReTool with various backbones (Qwen2.5-32B-Instruct and DeepSeek-R1-Distill-Qwen-32B), text-based RL baselines, and other competitive models from the literature. The table highlights ReTool's superior performance and efficiency, achieving higher accuracy with significantly fewer training steps.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results.
> </details>





### In-depth insights


#### RL for Tool Use
Reinforcement learning (RL) has emerged as a promising avenue for enhancing tool use in large language models (LLMs). Unlike traditional methods that rely on imitation learning and struggle with generalization, **RL enables LLMs to autonomously discover and refine tool usage strategies through outcome-based feedback**. This approach fosters exploration, allowing models to learn when and how to invoke tools, recover from errors, and adapt to diverse problem settings.  The integration of external code interpreters in the RL framework not only empowers LLMs to handle intricate tasks that demand structured problem-solving but also helps to improve **code utilization proficiency and strategic tool usage development**. Furthermore, RL can foster metacognitive capabilities, **enabling models to self-correct, adaptively select tools, and optimize reasoning strategies**.

#### ReTool's Design
**ReTool** is designed to enhance LLMs by integrating code interpreters into the reasoning loop, using a novel reinforcement learning framework.  A **high-quality cold-start dataset** is curated to equip the model with foundational code-invoking abilities. The framework supports **interleaved code execution** during rollouts, allowing for iterative refinement via tool-augmented interactions, all guided by a sandboxed code interpreter. ReTool allows LLMs to **explore, refine, and optimize** reasoning strategies. A rule-based outcome reward design, **combined with the interleaved code execution** and feedback, enables the models to discover more diverse problem-solving behaviors.

#### AIME Benchmark
The paper evaluates **ReTool** on the challenging **MATH Olympiad** benchmarks **AIME2024** and **AIME2025**, demonstrating its superiority in mathematical reasoning tasks. The experiments compare **ReTool** against various strong baselines and ablations. The benchmark aims to validate the tool's effectiveness. **AIME** requires structured problem-solving. **ReTool** is able to integrate tool learning into reasoning. Experiments are performed in both **AIME2024** and **AIME2025** to demonstrate results.

#### Code Dynamics
Analyzing code dynamics within the paper reveals interesting patterns. **Code ratio increases during training**, showing improved tool utilization. Furthermore, **code lines grow, suggesting complexity**. Analyzing *code pass rate* highlights that **executability matters**. Code invocation timing shifting indicates strategic tool awareness. The emergence of *self-correction* demonstrates *metacognitive capabilities*. This data suggests ReTool fosters code proficiency through RL.

#### Tool+Reasoning
**Tool-integrated reasoning** is crucial for LLMs to solve computationally intensive tasks. Methods integrate Python interpreters to simplify and validate complex steps. Earlier approaches, like Chen et al.'s supervised fine-tuning, are limited by specific data distributions, lacking adaptive tool use. **ReTool** strategically determines when and how to invoke tools via reinforcement learning, outperforming models like Qwen-Math. This approach enhances training efficiency and enables better problem-solving strategies. The models show cognitive patterns in code invocation, leading to code self-correction. These findings demonstrate the power of tool-augmented reasoning in LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11536/x1.png)

> 🔼 This figure compares the training processes of a standard text-based reinforcement learning (RL) model and ReTool.  The text-based RL approach shows a simple process: the LLM generates text, which is then evaluated to produce a reward signal that updates the model's policy.  In contrast, ReTool's RL training process involves interleaving code execution within the natural language reasoning process. The LLM generates text, and when appropriate, it also generates code. This code is executed in a sandboxed code interpreter, providing real-time feedback in the form of execution results and error messages. This feedback, combined with the textual output, is then used to compute a reward that refines the model's policy.  This demonstrates ReTool's key feature of integrating code execution within the RL loop, leading to more nuanced tool-use strategies.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Demonstration of text-based RL training process and ReTool’s RL training process.
> </details>



![](https://arxiv.org/html/2504.11536/extracted/6364450/figures/training_process_bold.png)

> 🔼 This figure visualizes the changes in code-related behaviors of the ReTool model throughout the reinforcement learning (RL) training process. It includes subfigures showing trends in response length, code ratio, code lines, total test set correct code counts, code pass rate, and code invocation timing across multiple training steps on the AIME2024 and AIME2025 datasets.  These trends illustrate how the model learns to use code more effectively and strategically during the RL training.
> <details>
> <summary>read the caption</summary>
> Figure 3: CI-related behavior evolution during RL training.
> </details>



![](https://arxiv.org/html/2504.11536/x2.png)

> 🔼 During the reinforcement learning process, the model initially generated incorrect code due to a missing import statement.  Upon receiving feedback from the code interpreter indicating an error, the model recognized its mistake and autonomously corrected the code by adding the necessary import, demonstrating an emergent capability of self-correction.
> <details>
> <summary>read the caption</summary>
> Figure 4: The case of “aha moment” about code self-correction.
> </details>



![](https://arxiv.org/html/2504.11536/extracted/6364450/figures/pie_chart.png)

> 🔼 This figure shows a comparison of code purposes used by the model before and after reinforcement learning (RL) training.  The left chart (a) illustrates the distribution of code purposes before RL training, revealing that calculation and verification were the primary uses. The right chart (b) displays the code purpose distribution after RL training, demonstrating a more diverse range of code purposes including calculation, verification, solution search, optimization, and data processing. This visualization highlights the model's enhanced ability and adaptation in using tools after training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Code purpose analysis.
> </details>



![](https://arxiv.org/html/2504.11536/x3.png)

> 🔼 This figure showcases a comparison between the reasoning processes employed by a large language model (LLM) with and without the aid of a code interpreter.  The example demonstrates a mathematical problem-solving scenario.  The text-based reasoning approach shows a lengthy, step-by-step calculation process that's prone to errors, reflecting the limitations of LLMs in purely textual numerical tasks. In contrast, the CI-powered reasoning process uses concise Python code to perform the calculations accurately and efficiently, demonstrating the effectiveness of integrating code interpretation to improve LLMs' mathematical abilities and reduce reasoning errors.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case of CI-powered Reasoning vs. Text-based Reasoning.
> </details>



![](https://arxiv.org/html/2504.11536/x4.png)

> 🔼 This figure shows the template prompt used in the ReTool reinforcement learning process.  The prompt instructs the model to solve a problem step-by-step, using Python code where appropriate. The code will be executed in a sandbox environment, and the results will be provided back to the model to aid in its reasoning. The prompt specifies the format for code input (wrapped in `<code>` tags), the format for the final answer (wrapped in `<answer>` tags), and includes placeholders for the user's question and the model's response.  This structure ensures a standardized interaction between the model and the external code interpreter during training.
> <details>
> <summary>read the caption</summary>
> Figure 7: Template prompt for ReTool rollout.
> </details>



![](https://arxiv.org/html/2504.11536/x5.png)

> 🔼 This figure shows the template prompt used in the data curation process for ReTool.  The prompt instructs an AI assistant to convert a given reasoning process into a code-augmented version. The AI should identify parts of the original reasoning that can be sped up or made more accurate with Python code and replace those sections with code snippets and their execution results.  Importantly, the original logical flow of reasoning, including any failed attempts, must be preserved. The final answer should be enclosed in <answer> tags.  The prompt specifies code formatting requirements, indicating that code snippets should be wrapped with <code> tags and be executable Python code.
> <details>
> <summary>read the caption</summary>
> Figure 8: Template Prompt for Data Curation.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11536/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11536/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}