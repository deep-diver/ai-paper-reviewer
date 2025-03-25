---
title: "STEVE: AStep Verification Pipeline for Computer-use Agent Training"
summary: "STEVE: Step-verifying computer-use agent training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 CUHK",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12532 {{< /keyword >}}
{{< keyword icon="writer" >}} Fanbin Lu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12532" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12532" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12532/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training AI agents to use computer interfaces is tough due to the need for high-quality training data. Behavior cloning alone is not enough. To tackle this, the paper designs STEVE, a pipeline that verifies each step an agent takes. It uses GPT-40 to check if each action is correct based on the before-and-after screens and labels each step. The agent then learns to improve using stepwise labels. 



The STEVE pipeline trains agents using KTO, outperforming supervised finetuning by using both positive and negative feedback. It also allows training a 7B vision-language model to become a computer-use agent, achieving top performance in the WinAgentArena desktop environment with great efficiency and lower costs. It sets a new state of the art in UI localization benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} STEVE pipeline: Automates the upsize the agent instruction set with GPT-verified stepwise rewards. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces a GUI-grounding VLM, setting a new standard in UI localization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} KTO optimization utilizes both positive and negative actions, enhancing agent training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **STEVE, a step verification pipeline**, enhancing computer-use agent training. It addresses critical challenges in GUI interaction and offers **a scalable, cost-effective solution**, opening new avenues for research in AI-driven desktop automation and human-computer interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12532/x1.png)

> 🔼 This figure displays the task completion rate for different computer-use agents on a Windows File Explorer task.  The y-axis represents the accuracy or task completion rate, while the x-axis shows the amount of computer time used for training (in thousands of hours). Three key observations are highlighted: (i) The authors' GUI grounding model achieves the highest task completion rate, suggesting an upper bound for performance achievable with fine-tuning methods; (ii) Their agent trained using STEVE and the KTO optimization (red line) consistently outperforms an agent trained using supervised fine-tuning (SFT, blue line); (iii) With increased training time, their 7B KTO agent surpasses the OmniParser, which is a state-of-the-art agent using a GPT-40 planner.
> <details>
> <summary>read the caption</summary>
> Figure 1: Windows File Explorer task completion rate of different computer-use agents: (i) Our powerful GUI grounding model achieves the current best task completion rate, setting a promising upper bound for computer-use agent finetuning. (ii) Using STEVE, our step verification pipeline, we are able to train our agents with KTO (red), which consistently outperforms (iii) the supervised finetuning (SFT). Notably, with increased computer operating time (x-axis), our 7B KTO agent is able to outperform the OmniParser with the GPT-4o planner.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.F2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.F2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.F2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.F2.2.1.1.1.1.1">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.F2.2.1.1.1.2.1">Annotation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F2.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.F2.2.1.1.1.3.1">Num. Image</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.F2.2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.F2.2.1.1.1.4.1">Num. elements</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F2.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.F2.2.1.2.1.1">WebUI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F2.2.1.2.1.2">DOM, OCR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F2.2.1.2.1.3">180K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.F2.2.1.2.1.4">1M</td>
</tr>
<tr class="ltx_tr" id="S3.F2.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F2.2.1.3.2.1">Seeclick <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.3.2.2">DOM</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.3.2.3">10K</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.3.2.4">150K</td>
</tr>
<tr class="ltx_tr" id="S3.F2.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F2.2.1.4.3.1">AITW <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.4.3.2">Caption</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.4.3.3">15K</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.4.3.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.F2.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.F2.2.1.5.4.1">Allava <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.5.4.2">general QA</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.5.4.3">50K</td>
<td class="ltx_td ltx_align_center" id="S3.F2.2.1.5.4.4">-</td>
</tr>
<tr class="ltx_tr" id="S3.F2.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.F2.2.1.6.5.1">Windows OS</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.F2.2.1.6.5.2">A11y, GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.F2.2.1.6.5.3">10K</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.F2.2.1.6.5.4">80K</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of evaluating the performance of different methods on the ScreenSpot GUI localization benchmark.  The benchmark assesses the ability of models to accurately locate graphical user interface (GUI) elements within screenshots based on textual descriptions.  The table shows the performance of various methods (including the authors' approach and several state-of-the-art alternatives) broken down by GUI element type (text and widget) and across three different domains (mobile, desktop, and web). The 'Overall' column provides a combined performance score across all categories. The notation † indicates that self-plan evaluation was used, employing GPT-4 to generate queries for the models.
> <details>
> <summary>read the caption</summary>
> Table 1: The performance on the GUI localization benchmark ScreenSpot [7]. ††\dagger† indicates the self-plan evaluation [13] using GPT-4o generated reference expressions as queries to the model.
> </details>





### In-depth insights


#### GUI Agent STEVE
While the paper doesn't have a section explicitly titled 'GUI Agent STEVE,' the entire work revolves around it. **STEVE is presented as a step verification pipeline** designed to improve the training of computer-use agents. The core idea lies in using a large vision-language model (VLM), specifically GPT-40, to verify the correctness of each step an agent takes during a task. This provides a dense, stepwise reward signal, addressing the limitations of sparse rewards in reinforcement learning and the high cost of human-annotated trajectories. The paper thoroughly investigates how STEVE, combined with Kahneman-Tversky Optimization (KTO), can effectively leverage both positive and negative feedback to train agents that **excel in GUI interaction**, achieving state-of-the-art performance in the WinAgentArena environment. The research demonstrates STEVE's ability to scale agent training, avoid UI localization degradation, and enhance efficiency in complex desktop tasks.

#### Step Verification
The step verification process in this research paper presents a method to validate each action an AI agent takes, which enhances the agent's learning. **GPT-40 acts as a judge**, evaluating whether an action moves the agent closer to the goal. This creates **denser reward signals**, compared to only rewarding task completion, improving learning efficiency. By verifying steps, the system identifies both good and bad actions, offering a more nuanced training signal. This approach **reduces the need for meticulously crafted reward functions**, instead using a powerful VLM to scale task instructions and evaluate agent behavior. Overall, it improves the agent's performance by providing detailed, actionable feedback for each step.

#### KTO Optimization
KTO optimization, drawing from Kahneman & Tversky's prospect theory, stands out as a technique with several key advantages. First, it effectively handles **unpaired** positive and negative samples, a significant benefit given the difficulty of obtaining paired data in complex desktop environments. The algorithm is able to address the data imbalance. Finally, the use of binary reward scores (+1/-1) simplifies training, promoting **higher stability** and robustness. This approach is a good fit for many different tasks and data, and it effectively leverages both positive and negative feedback.

#### UI Grounding VLM
Based on the information, UI-grounding VLM focuses on **specialized visual grounding** to enhance agent interaction. **Training datasets** leverage web DOM, desktop screenshots via tools like OmniParser, and Ally Trees for UI element extraction. **Screenshot captioning** enriches understanding. This **comprehensive approach** leads to accurate localization in 1080p screenshots and improves performance on benchmarks like ScreenSpot, AITW and Mind2Web.

#### WinAgentArena
The 'WinAgentArena' benchmark, as highlighted in the research paper, is a **significant contribution** to the field of computer-use agent evaluation. It provides a **standardized, real-world environment** within the Windows operating system, allowing for rigorous assessment of agent capabilities in complex, multi-step tasks. Its value lies in its ability to **simulate realistic user scenarios**, fostering the development of agents that can effectively navigate desktop environments. The arena's comprehensive nature, encompassing diverse tasks and applications, facilitates **comparative analysis** between different agent architectures, driving innovation and progress. The complexity and scale of this environment, further enhances its significance as a **robust testing ground** for evaluating the generalization and adaptability of computer-use agents.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12532/x2.png)

> 🔼 Figure 2 details the datasets used to train the UI-grounding model.  The model's training leveraged a combination of publicly available datasets (WebUI, Seeclick, AITW, Allava) and a new, privately collected dataset focusing on the Windows OS.  This private dataset was created to specifically improve the model's performance and accuracy when interacting with Windows interfaces, supplementing the more general UI data from the open-source datasets. The table shows the name of each dataset, the type of annotation provided (DOM, OCR, caption, general QA), the number of images, and the number of UI elements included in each.
> <details>
> <summary>read the caption</summary>
> Figure 2: Datasets we collected for UI-grounding model training, including open-source datasets and an additional private Windows OS dataset created by ourselves to enhance the model’s performance on Windows.
> </details>



![](https://arxiv.org/html/2503.12532/x3.png)

> 🔼 The figure illustrates the STEVE (Step Verification Pipeline) process.  It begins with a small set of seed tasks, which are expanded into a larger, more diverse set of feasible tasks. A computer-use agent then executes these tasks in a simulated desktop environment, generating a set of trajectories (sequences of actions). Each step in these trajectories is then evaluated by a GPT-40 model, acting as a judge to determine its correctness based on visual feedback (before and after screenshots). The result of this step-by-step verification is a large dataset of trajectories annotated with process-level rewards, which are used to train the agent.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Overview of STEVE, the step verification pipeline. We first create a large number of feasible tasks from the seed tasks to scale up the quality and diversity of agent tasks. Then we deploy our computer-use agent in desktop environments to sample trajectory data. A GPT-4o judge is used to verify the quality of each step in the trajectory, resulting in a large process reward dataset for agent training.
> </details>



![](https://arxiv.org/html/2503.12532/x4.png)

> 🔼 This figure illustrates the agreement between GPT-4 and human evaluators on the correctness of agent actions within a task.  The x-axis categorizes actions as early (steps 1-7) or late (steps after 7) in a task sequence, and whether the action was deemed positive (successful) or negative (unsuccessful). The y-axis represents the percentage of agreement between GPT-4's assessment and human evaluators' assessment for each category.  The high percentage agreement in the early steps and a slight decrease in agreement for later steps suggests GPT-4's ability to evaluate action correctness diminishes as the complexity of a task increases.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Percentage consistency between human judges and the GPT-4o step verifier. We split all the positive and negative actions into early (step ID ≤7absent7\leq 7≤ 7) and late (step ID >7absent7>7> 7) groups, resulting in four bars in the figure. For example, 92.3%percent92.392.3\%92.3 % for the Early Pos. bar means the GPT-4o judge agrees with humans for 92.3%percent92.392.3\%92.3 % of the early positive actions.
> </details>



![](https://arxiv.org/html/2503.12532/x5.png)

> 🔼 This figure shows a bar chart comparing the task success rates of different computer-use agents on the File Explorer task split within the WinAgentArena benchmark.  The chart allows for a comparison of the performance of various agents, including OmniParser, an SFT (Supervised Finetuning) agent, and multiple KTO (Kahneman & Tversky Optimization) agents across different training rounds.  The x-axis represents the different agents, and the y-axis represents the task success rate.
> <details>
> <summary>read the caption</summary>
> (a) Task success rate on the File Explorer split.
> </details>



![](https://arxiv.org/html/2503.12532/x6.png)

> 🔼 This figure shows the task success rate achieved by different computer-use agent models on web browser-specific tasks within the WinAgentArena benchmark.  The models are compared across multiple training rounds to evaluate the effectiveness of different training methodologies (Supervised Finetuning (SFT) and Kahneman & Tversky Optimization (KTO)).  The results highlight the improved performance of KTO-trained agents over SFT and a baseline model across iterative training rounds.
> <details>
> <summary>read the caption</summary>
> (b) Task success rate on the Web Browser split.
> </details>



![](https://arxiv.org/html/2503.12532/x7.png)

> 🔼 This figure shows a bar chart comparing the task success rates of different computer-use agents on the VsCode split of the WinAgentArena benchmark.  The agents compared include OmniParser, an agent trained using supervised finetuning (SFT), and three agents trained using the Kahneman & Tversky Optimization (KTO) method across multiple training rounds (R1, R2, R3).  The chart visually represents the relative performance of each agent in successfully completing tasks within the VsCode application.
> <details>
> <summary>read the caption</summary>
> (c) Task success rate on the VsCode split.
> </details>



![](https://arxiv.org/html/2503.12532/x8.png)

> 🔼 This ablation study compares the performance of different agent training methods on three distinct tasks from the WinAgentArena benchmark: File Explorer, Web Browser, and VsCode.  The methods compared are OmniParser (a baseline), supervised fine-tuning (SFT), and the Kahneman & Tversky Optimization (KTO) approach.  For KTO, results are shown for three iterative training rounds (R1, R2, R3).  The yellow bars highlight results where GPT-40 was used as a task planner.  Each bar represents the average performance across five experimental runs.  The figure visually demonstrates the improvement in task success rates achieved by the KTO approach over multiple training iterations.
> <details>
> <summary>read the caption</summary>
> Figure 5: We show an ablation study of OmniParser, the SFT agent, and three KTO agents at three iterative rounds (SFT, R1, R2, and R3). The results are evaluated on three distinct task domains from the WinAgentArena benchmark. Yellow bars in the figures indicate that GPT-4o is employed as the task planner. The reported outcomes represent the average performance over five experimental runs.
> </details>



![](https://arxiv.org/html/2503.12532/x9.png)

> 🔼 Figure 6 presents a zoomed-in visualization comparing the UI localization performance of three different models on four distinct Graphical User Interface (GUI) elements.  These elements include: 'example.txt' (a text file), a 'Design' tab (likely within an application), a 'Cached image check box' (a specific UI element), and the 'Title' of a PowerPoint slide. Each model's performance is color-coded and displayed in separate rows: the UI-Grounding model (green, top row), the Supervised Finetuning (SFT)-trained agent (red, middle row), and the Kahneman & Tversky Optimization (KTO)-trained agent (blue, bottom row). The figure allows for a detailed comparison of the precision and accuracy of each model's localization capability, highlighting the differences in their ability to accurately identify and locate specific GUI elements within a complex screen.
> <details>
> <summary>read the caption</summary>
> Figure 6: Zoom in visualization of UI localization performance of different models on four target GUIs: example.txt, Design tab, Cached image check box, and Title of PPT slide (left to right). The UI-Grounding Model’s performance is shown in green (top row), the SFT-trained agent in red (middle row), and the KTO-trained agent in blue (bottom row).
> </details>



![](https://arxiv.org/html/2503.12532/x10.png)

> 🔼 This figure shows a line graph illustrating the reward margin's improvement over training steps in the Kahneman & Tversky Optimization (KTO) algorithm. The reward margin represents the difference between rewards assigned to chosen (positive) samples and rejected (negative) samples during training.  A consistent upward trend in the reward margin indicates the algorithm's effectiveness in distinguishing between positive and negative examples.  The graph visually demonstrates that as KTO training progresses, the model becomes increasingly better at identifying and utilizing beneficial samples.
> <details>
> <summary>read the caption</summary>
> Figure 7:  The reward margin (vertical axis) between the chosen and rejected samples consistently improve during the KTO training.
> </details>



![](https://arxiv.org/html/2503.12532/x11.png)

> 🔼 This figure visualizes two example task trajectories generated by the STEVE-KTO-7B agent within the WinAgentArena environment.  Each trajectory corresponds to a distinct task ID and shows a sequence of steps the agent took to complete the task.  Simplified actions are displayed for each step, highlighting the interaction with the user interface.  The target UI elements for each action are indicated by red bounding boxes.  For a detailed understanding, including high-resolution screenshots, videos of the full interactions, the agent's complete reasoning process (including screen analysis and multi-step planning), and the Python code used to control the actions, please refer to the supplementary materials accompanying the research paper.
> <details>
> <summary>read the caption</summary>
> Figure 8: The trajectories of our STEVE-KTO-7B agent for the chrome tasks from the WinAgentArena [4] with ID bb5e4c0d-f964-439c-97b6-bdb9747de3f4-wos (up) and b070486d-e161-459b-aa2b-ef442d973b92-wos (bottom). We display a simplified action for each step and plot the target UI localization results with a red bounding box in each screenshot. For high-resolution screenshots/videos, full model responses with screen analysis, multi-step planning, and python code blocks, please refer to the corresponding attachments.
> </details>



![](https://arxiv.org/html/2503.12532/x12.png)

> 🔼 Figure 9 presents two example task trajectories generated by the STEVE-KTO-7B model within the WinAgentArena environment.  Each trajectory visualizes a multi-step process of interacting with a file explorer window in Windows OS. The top trajectory (ID: 7c70e16b-e14f-4baa-b046-3e022b2d0305-WOS) shows the steps involved in sorting files by modification date.  The bottom trajectory (ID: 5316686e-5688-4115-be24-052037df599f-WOS) demonstrates how the model updates file explorer settings to display hidden and system files.  For each step, the figure displays a simplified action taken by the agent and highlights the target UI elements that were interacted with using red bounding boxes. The high-resolution screenshots and additional details, like the full model's reasoning process (screen analysis, multi-step planning, and Python code), are available in supplementary material.
> <details>
> <summary>read the caption</summary>
> Figure 9: The trajectories of our STEVE-KTO-7B agent for the file explorer tasks from the WinAgentArena [4] with ID 7c70e16b-e14f-4baa-b046-3e022b2d0305-WOS (up) and 5316686e-5688-4115-be24-052037df599f-WOS (bottom). We display a simplified action for each step and plot the target UI localization results with a red bounding box in each screenshot. For high-resolution screenshots/videos, full model responses with screen analysis, multi-step planning, and python code blocks, please refer to the corresponding attachments.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.2.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.2" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.2.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.1.3">Mobile</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.1.4">Desktop</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.2.1.5">Web</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.6" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.2.1.6.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.1">Text</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.2">Widget</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.3">Text</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.4">Widget</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.5">Text</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.6">Widget</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.1">Qwen-VL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.2">9.6B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.3">9.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.4">4.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.5">5.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.6">5.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.7">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.8">2.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.4.3.9">5.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.4">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.1">Fuyu</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.3">41.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.4">1.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.5">33.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.6">3.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.7">33.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.8">4.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4.9">19.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.5">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.1">CogAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.2">18B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.3">67.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.4">24.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.5">74.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.6">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.7">70.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.8">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.5.9">47.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.6">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.1">Seeclick <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.2">9.6B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.3">78.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.4">52.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.5">72.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.6">30.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.7">55.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.8">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.6.9">53.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.7">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.3">75.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.4">60.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.5">76.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.6">54.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.7">35.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.8">25.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.7.9">55.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.8">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.1">OmniParser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.2">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.3">93.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.4">57.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.5">91.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.6">63.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.7">81.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.8">51.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.8.9">73.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.9">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.1">UGround <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.3">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.4">60.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.5">82.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.6">63.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.7">80.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.8">70.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.9.9">73.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.3">88.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.10.4.1">81.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.5">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.10.6.1">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.7">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.10.8.1">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.10.9">82.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.1">Ours<math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">94.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.4">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">94.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.6">70.7</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.7.1">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.8">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.9.1">84.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the AITW (Android In The Wild) benchmark, which evaluates the performance of computer-use agents in interacting with real Android applications.  The study uses the same test split as the SeeClick [7] paper for consistent comparison. The key metric reported is step-level action accuracy, which measures the precision of agents' actions at each step within a multi-step task.  Higher accuracy indicates that the agent is more effectively executing its actions in the Android environment.
> <details>
> <summary>read the caption</summary>
> Table 2: Results on the AITW benchmark. We use the same test split as SeeClick [7]. The step-level action accuracy is reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.2">GoogleApp</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.3">Install</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.4">WebShop</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.5">General</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.6">Single</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.2.1.1.1.7">Overall</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.1">GPT3.5(few-shot)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.2">10.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.3">4.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.4">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.5">5.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.6">9.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.1.7">7.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3.2">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.1">LLaMA2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.2">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.3">35.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.4">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.5">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.6">27.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2.7">28.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.3">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.1">CogAgent <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.2">50.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.3">57.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.4">49.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.5">47.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.6">43.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3.7">49.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.4">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.1">SeeClick <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.2">57.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.3">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.4">57.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.5">56.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.6">63.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4.7">59.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6.5">
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.1">GUICourse <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12532v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.2">70.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.3">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.6.5.4.1">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.6">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.6.5.7">67.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.2.1">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.3.1">75.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.4">69.7</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.5.1">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.6.1">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.1.7.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.7.6.7.1">72.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Mind2Web benchmark, evaluating the performance of different computer-use agents on various web-browsing tasks.  The benchmark assesses the agents' ability to complete multi-step tasks requiring interactions with websites, such as clicking, typing, and selecting elements. The results likely showcase step-level success rate and element accuracy, demonstrating the model's precision in identifying and manipulating specific UI elements. The table allows for a comparison of various models against a baseline or state-of-the-art method.
> <details>
> <summary>read the caption</summary>
> Table 3: Results on the Mind2Web benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T3.2.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.2">Task</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.3">Website</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="2" id="S4.T3.2.1.1.1.4">Domain</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.2.1.1.1.5" rowspan="2"><span class="ltx_text" id="S4.T3.2.1.1.1.5.1">Overall</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.1">Step SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.2">Elem Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.3">Step SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.4">Elem Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.5">Step SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.2.1.2.2.6">Elem Acc</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.1">CogAgent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.2">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.3">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.4">13.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.5">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.6">15.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.7">20.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.1.8">15.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4.2">
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.1">Qwen-VL</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.2">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.3">14.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.4">12.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.5">13.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.6">9.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.7">14.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2.8">12.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5.3">
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.1">SeeClick</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.2">25.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.3">28.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.4">16.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.5">21.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.6">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.7">23.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.5.3.8">20.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6.4">
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.1">OmniParser</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.2">39.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.3">42.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.4">36.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.5">41.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.4.6.1">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.7">45.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.6.4.8">39.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.7.5">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.2.1">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.3.1">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.4.1">37.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.5.1">44.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.6">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.7"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.7.1">46.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T3.2.1.7.5.8"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.7.5.8.1">39.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various computer-use agent models on the WinAgentArena benchmark.  The benchmark involves 154 tasks across various domains (Office, Web Browser, Windows System, Coding, Media, Video, Windows Utilities). The table compares the performance (task success rate) of different models, including OmniParser with GPT-40 as the planner, Agent S with GPT-40,  our model fine-tuned with supervised finetuning (SFT), and our model trained with Kahneman & Tversky Optimization (KTO).  The 'Our-G' row shows the performance of our UI-Grounding model using GPT-40 as the planner, providing a strong baseline comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance on the WinAgentArena benchmark. “Our-G” denotes our UI-Grounding model with the GPT-4o planner.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.2">Size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.3">A11y</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.4">Office</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.5">Web Browser</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.6">Windows System</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.7">Coding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.8">Media Video</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.9">Windows Utils</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.1.10">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.1">OmniParser</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.2">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.4">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.5">13.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.6">29.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.7">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.8">10.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.9">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.2.2.10">8.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3.3">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.1">NAVI</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.2">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.4">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.5">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.6">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.7">9.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.8">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.9">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.3.3.10">13.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.1">OmniParser</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.2">GPT-4V-1106</td>
<td class="ltx_td" id="S4.T4.2.1.4.4.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.4">2.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.5">23.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.6">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.7">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.8">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.9">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.4.10">12.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.5.5">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.1">Agent S</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.2">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.4">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.5">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.6">45.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.7">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.8">19.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.9"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.5.5.9.1">22.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5.10">18.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.1">OmniParser</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.2">GPT-4V-1106</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.4">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.5">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.6">33.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.7">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.8"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.6.6.8.1">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.9">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6.10">19.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.1">Ours-SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.2">7B</td>
<td class="ltx_td ltx_border_t" id="S4.T4.2.1.7.7.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.4">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.5">21.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.6">20.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.7">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.8">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.9">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.7.7.10">7.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.8.8">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.1">Ours-KTO</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.2">7B</td>
<td class="ltx_td" id="S4.T4.2.1.8.8.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.4">2.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.5">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.6">37.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.7">16.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.8">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.9">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.8.8.10">14.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.9.9">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.1">Ours-G</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.2">GPT-4o</td>
<td class="ltx_td ltx_border_b" id="S4.T4.2.1.9.9.3"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.9.9.4.1">4.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.9.9.5.1">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.6"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.9.9.6.1">45.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.7">20.8</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.8">11.8</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.9">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.9.9.10"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.9.9.10.1">23.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of UI localization performance across different fine-tuning methods applied to a UI-Grounding model.  The experiment used a consistent UI-Grounding prompt for all models.  It shows the impact of various training approaches (Standard SFT, LORA SFT, mixed data training, and KTO) on the model's ability to accurately locate UI elements, categorized by size (small, medium, large), and presents the overall performance. The results highlight the effect of each method on localization precision, especially concerning small UI elements.
> <details>
> <summary>read the caption</summary>
> Table 5: The impact on the UI localization ability of different finetuning approaches. The experiment is conducted using the UI-Grounding prompt template for all models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.1">Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.2">Data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.3">Small</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.4">Middle</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.5">Large</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.1.6">Overall</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2.1">Base UI model</td>
<td class="ltx_td ltx_border_t" id="S4.T5.2.1.2.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2.3"><span class="ltx_text" id="S4.T5.2.1.2.2.3.1">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2.4">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2.5">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.2.2.6">82.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.2">agent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.3">61.2(-6.1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.4">72.6(-2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.5">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.3.3.6">80.5(-1.7)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4.4">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.1">SFT-LoRA</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.2">agent</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.3">61.2(-6.1)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.4">73.0(-1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.5">84.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.4.4.6">80.6(-1.6)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5.5">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.2">mixed</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.3">62.0(-5.3)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.4">73.0(-1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.5">84.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5.6">80.6(-1.6)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6.6">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.1">SFT-LoRA</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.2">mixed</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.3">62.0(-5.3)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.4">73.0(-1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.5">84.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.6.6.6">80.6(-1.6)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.7.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.1">KTO</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.2">agent</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.3">65.3(-2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.4">
<span class="ltx_text ltx_font_bold" id="S4.T5.2.1.7.7.4.1">76.6</span>(+2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.7.7.5.1">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.7.7.6">
<span class="ltx_text ltx_font_bold" id="S4.T5.2.1.7.7.6.1">82.5</span>(+0.3)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the time and cost of inference for different methods used to perform GUI interaction tasks.  It contrasts the performance of the OmniParser model (using GPT-40 as a planner) with the authors' proposed UI-Grounding model (also using GPT-40 as a planner) and their final agent model (a 7B parameter model). The cost is calculated based on the API pricing for an 8B parameter LLaMA model, providing a relative cost comparison between methods.  The results highlight the computational efficiency gains achieved by the authors' approach.
> <details>
> <summary>read the caption</summary>
> Table 6: The time and inference cost for different methods. Ours-Ground means our UI-Grounding model with the GPT-4o planner. We use the API pricing of LLama3 8B to measure the cost of our agent model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.3.4.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.3.4.1.2">Model Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.3.4.1.3">Time(s/frame)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.3.3.4.1.4">Cost($/1,000 tasks)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.2">OmniParser</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.3">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.4">32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.1"><math alttext="530" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mn id="S4.T6.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.cmml">530</mn><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><cn id="S4.T6.1.1.1.1.m1.1.1.cmml" type="integer" xref="S4.T6.1.1.1.1.m1.1.1">530</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">530</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">530</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.2">Ours-Ground</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.3">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.4">2.4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2.1"><math alttext="430" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mn id="S4.T6.2.2.2.1.m1.1.1" xref="S4.T6.2.2.2.1.m1.1.1.cmml">430</mn><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><cn id="S4.T6.2.2.2.1.m1.1.1.cmml" type="integer" xref="S4.T6.2.2.2.1.m1.1.1">430</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">430</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">430</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.3.3.3.2">Ours-Agent</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.3.3.3.3">7B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.3.3.3.4">0.4</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.3.3.3.1"><math alttext="6" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mn id="S4.T6.3.3.3.1.m1.1.1" xref="S4.T6.3.3.3.1.m1.1.1.cmml">6</mn><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><cn id="S4.T6.3.3.3.1.m1.1.1.cmml" type="integer" xref="S4.T6.3.3.3.1.m1.1.1">6</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">6</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">6</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the configurations used for training both the UI-grounding model and the KTO agent.  For the UI-grounding model, it specifies the base model used (Qwen2-VL), the optimizer (AdamW), the learning rate scheduler (Cosine), the learning rate (2e-5), the training data used (grounding data), the batch size (32), and the number of epochs (1). For the KTO agent, it lists the base model (the UI-grounding model), the optimizer (AdamW), the learning rate scheduler (Cosine), the learning rate (5e-5), the training data used (agent data), the batch size (16), the number of epochs (2), and whether the vision encoder was frozen during training.
> <details>
> <summary>read the caption</summary>
> Table 7: Settings of our UI-grounding model (left) and KTO agent training (right).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.1.1" style="font-size:144%;">UI-grounding</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.2.1" style="font-size:144%;">KTO Agent</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.1.1" style="font-size:144%;">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.2.1" style="font-size:144%;">Value</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.3.1" style="font-size:144%;">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.4.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.2.1.3.3.1"><span class="ltx_text" id="A1.T7.2.1.3.3.1.1" style="font-size:144%;">base model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.3.2"><span class="ltx_text" id="A1.T7.2.1.3.3.2.1" style="font-size:144%;">Qwen2-VL</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.2.1.3.3.3"><span class="ltx_text" id="A1.T7.2.1.3.3.3.1" style="font-size:144%;">base model</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.3.4"><span class="ltx_text" id="A1.T7.2.1.3.3.4.1" style="font-size:144%;">UI-grounding</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.4.4">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.4.4.1"><span class="ltx_text" id="A1.T7.2.1.4.4.1.1" style="font-size:144%;">optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.4.2"><span class="ltx_text" id="A1.T7.2.1.4.4.2.1" style="font-size:144%;">AdamW</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.4.4.3"><span class="ltx_text" id="A1.T7.2.1.4.4.3.1" style="font-size:144%;">optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.4.4"><span class="ltx_text" id="A1.T7.2.1.4.4.4.1" style="font-size:144%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.5.5.1"><span class="ltx_text" id="A1.T7.2.1.5.5.1.1" style="font-size:144%;">scheduler</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.5.2"><span class="ltx_text" id="A1.T7.2.1.5.5.2.1" style="font-size:144%;">Cosine</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.5.5.3"><span class="ltx_text" id="A1.T7.2.1.5.5.3.1" style="font-size:144%;">scheduler</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.5.4"><span class="ltx_text" id="A1.T7.2.1.5.5.4.1" style="font-size:144%;">Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.6.6">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.6.6.1"><span class="ltx_text" id="A1.T7.2.1.6.6.1.1" style="font-size:144%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.6.6.2"><span class="ltx_text" id="A1.T7.2.1.6.6.2.1" style="font-size:144%;">2e-5</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.6.6.3"><span class="ltx_text" id="A1.T7.2.1.6.6.3.1" style="font-size:144%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.6.6.4"><span class="ltx_text" id="A1.T7.2.1.6.6.4.1" style="font-size:144%;">5e-5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.7.7.1"><span class="ltx_text" id="A1.T7.2.1.7.7.1.1" style="font-size:144%;">training data</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.7.7.2"><span class="ltx_text" id="A1.T7.2.1.7.7.2.1" style="font-size:144%;">grounding</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.7.7.3"><span class="ltx_text" id="A1.T7.2.1.7.7.3.1" style="font-size:144%;">training data</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.7.7.4"><span class="ltx_text" id="A1.T7.2.1.7.7.4.1" style="font-size:144%;">agent</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.8.8">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.8.8.1"><span class="ltx_text" id="A1.T7.2.1.8.8.1.1" style="font-size:144%;">batch size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.8.8.2"><span class="ltx_text" id="A1.T7.2.1.8.8.2.1" style="font-size:144%;">32</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.8.8.3"><span class="ltx_text" id="A1.T7.2.1.8.8.3.1" style="font-size:144%;">batch size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.8.8.4"><span class="ltx_text" id="A1.T7.2.1.8.8.4.1" style="font-size:144%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.9.9">
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.9.9.1"><span class="ltx_text" id="A1.T7.2.1.9.9.1.1" style="font-size:144%;">epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.9.9.2"><span class="ltx_text" id="A1.T7.2.1.9.9.2.1" style="font-size:144%;">1</span></td>
<td class="ltx_td ltx_align_left" id="A1.T7.2.1.9.9.3"><span class="ltx_text" id="A1.T7.2.1.9.9.3.1" style="font-size:144%;">epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.9.9.4"><span class="ltx_text" id="A1.T7.2.1.9.9.4.1" style="font-size:144%;">2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.2.1.10.10.1"><span class="ltx_text" id="A1.T7.2.1.10.10.1.1" style="font-size:144%;">vision encoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.10.10.2"><span class="ltx_text" id="A1.T7.2.1.10.10.2.1" style="font-size:144%;">freeze</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.2.1.10.10.3"><span class="ltx_text" id="A1.T7.2.1.10.10.3.1" style="font-size:144%;">vision encoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.10.10.4"><span class="ltx_text" id="A1.T7.2.1.10.10.4.1" style="font-size:144%;">freeze</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the Kahneman & Tversky Optimization (KTO) and Low-Rank Adaptation (LoRA) methods employed for training the computer-use agent.  It includes values for the LoRA rank (r), LoRA alpha (α), KTO beta (β), and the KTO hyperparameters for desired and undesired data (λD and λU, respectively). These parameters control aspects of model training, such as the extent of low-rank updates (LoRA) and the weighting of positive versus negative examples during the KTO optimization.
> <details>
> <summary>read the caption</summary>
> Table 8: KTO and LoRA hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.5.6.1.1"><span class="ltx_text" id="A1.T8.5.6.1.1.1" style="font-size:144%;">Config</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.6.1.2"><span class="ltx_text" id="A1.T8.5.6.1.2.1" style="font-size:144%;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.1.1.1">
<span class="ltx_text" id="A1.T8.1.1.1.1" style="font-size:144%;">LoRA </span><math alttext="r" class="ltx_Math" display="inline" id="A1.T8.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.m1.1a"><mi id="A1.T8.1.1.1.m1.1.1" mathsize="144%" xref="A1.T8.1.1.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.m1.1b"><ci id="A1.T8.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.m1.1d">italic_r</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2"><span class="ltx_text" id="A1.T8.1.1.2.1" style="font-size:144%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.2.2.1">
<span class="ltx_text" id="A1.T8.2.2.1.1" style="font-size:144%;">LoRA </span><math alttext="\alpha" class="ltx_Math" display="inline" id="A1.T8.2.2.1.m1.1"><semantics id="A1.T8.2.2.1.m1.1a"><mi id="A1.T8.2.2.1.m1.1.1" mathsize="144%" xref="A1.T8.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.1.m1.1b"><ci id="A1.T8.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.1.m1.1d">italic_α</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2"><span class="ltx_text" id="A1.T8.2.2.2.1" style="font-size:144%;">16</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.5.7.2.1"><span class="ltx_text" id="A1.T8.5.7.2.1.1" style="font-size:144%;">LoRA modules</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.5.7.2.2"><span class="ltx_text" id="A1.T8.5.7.2.2.1" style="font-size:144%;">linear layers in LLM</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.3.3.1">
<span class="ltx_text" id="A1.T8.3.3.1.1" style="font-size:144%;">KTO </span><math alttext="\beta" class="ltx_Math" display="inline" id="A1.T8.3.3.1.m1.1"><semantics id="A1.T8.3.3.1.m1.1a"><mi id="A1.T8.3.3.1.m1.1.1" mathsize="144%" xref="A1.T8.3.3.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.1.m1.1b"><ci id="A1.T8.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.1.m1.1d">italic_β</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.2"><span class="ltx_text" id="A1.T8.3.3.2.1" style="font-size:144%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.4.4.1">
<span class="ltx_text" id="A1.T8.4.4.1.1" style="font-size:144%;">KTO </span><math alttext="\lambda_{D}" class="ltx_Math" display="inline" id="A1.T8.4.4.1.m1.1"><semantics id="A1.T8.4.4.1.m1.1a"><msub id="A1.T8.4.4.1.m1.1.1" xref="A1.T8.4.4.1.m1.1.1.cmml"><mi id="A1.T8.4.4.1.m1.1.1.2" mathsize="144%" xref="A1.T8.4.4.1.m1.1.1.2.cmml">λ</mi><mi id="A1.T8.4.4.1.m1.1.1.3" mathsize="144%" xref="A1.T8.4.4.1.m1.1.1.3.cmml">D</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.1.m1.1b"><apply id="A1.T8.4.4.1.m1.1.1.cmml" xref="A1.T8.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.4.4.1.m1.1.1.1.cmml" xref="A1.T8.4.4.1.m1.1.1">subscript</csymbol><ci id="A1.T8.4.4.1.m1.1.1.2.cmml" xref="A1.T8.4.4.1.m1.1.1.2">𝜆</ci><ci id="A1.T8.4.4.1.m1.1.1.3.cmml" xref="A1.T8.4.4.1.m1.1.1.3">𝐷</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.1.m1.1c">\lambda_{D}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.1.m1.1d">italic_λ start_POSTSUBSCRIPT italic_D end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.2"><span class="ltx_text" id="A1.T8.4.4.2.1" style="font-size:144%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="A1.T8.5.5.1">
<span class="ltx_text" id="A1.T8.5.5.1.1" style="font-size:144%;">KTO </span><math alttext="\lambda_{U}" class="ltx_Math" display="inline" id="A1.T8.5.5.1.m1.1"><semantics id="A1.T8.5.5.1.m1.1a"><msub id="A1.T8.5.5.1.m1.1.1" xref="A1.T8.5.5.1.m1.1.1.cmml"><mi id="A1.T8.5.5.1.m1.1.1.2" mathsize="144%" xref="A1.T8.5.5.1.m1.1.1.2.cmml">λ</mi><mi id="A1.T8.5.5.1.m1.1.1.3" mathsize="144%" xref="A1.T8.5.5.1.m1.1.1.3.cmml">U</mi></msub><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.1.m1.1b"><apply id="A1.T8.5.5.1.m1.1.1.cmml" xref="A1.T8.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T8.5.5.1.m1.1.1.1.cmml" xref="A1.T8.5.5.1.m1.1.1">subscript</csymbol><ci id="A1.T8.5.5.1.m1.1.1.2.cmml" xref="A1.T8.5.5.1.m1.1.1.2">𝜆</ci><ci id="A1.T8.5.5.1.m1.1.1.3.cmml" xref="A1.T8.5.5.1.m1.1.1.3">𝑈</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.1.m1.1c">\lambda_{U}</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.1.m1.1d">italic_λ start_POSTSUBSCRIPT italic_U end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.2"><span class="ltx_text" id="A1.T8.5.5.2.1" style="font-size:144%;">1.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used to instruct the computer-use agents within the STEVE framework.  The prompt guides the agents on efficiently completing tasks, detailing instructions on planning, action execution, and verification.  It also outlines available functions for interacting with the graphical user interface (GUI) and keyboard, along with reminders for ensuring accuracy and efficiency. Specific instructions are given for handling different task types and avoiding common errors.
> <details>
> <summary>read the caption</summary>
> Table 9: The prompt for the computer-use agents.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12532/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12532/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}