---
title: "Building A Proof-Oriented Programmer That Is 64% Better Than GPT-4o Under Data Scarsity"
summary: "PoPilot, a novel proof-oriented programming LLM, outperforms GPT-40 by 64% under data scarcity by using synthetic data augmentation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11901 {{< /keyword >}}
{{< keyword icon="writer" >}} Dylan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11901" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11901" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11901/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) struggle with proof-oriented programming due to limited datasets for such languages like F*, and lack of large-scale, project-level implementations.  This severely restricts the model's ability to learn the complex reasoning processes involved.  The absence of sufficient training data hinders the development of LLMs capable of reliably generating and verifying formal proofs for software. This is a crucial limitation given the increasing importance of formal verification in software development for enhancing software safety and security.

This paper introduces PoPilot, the first project-level formal verification specialist LLM.  It tackles data scarcity through three key strategies: synthesizing basic proof-oriented programming problems, incorporating diverse coding data, and generating new proofs and repair data.  PoPilot achieves a **64% relative performance margin over GPT-40** in project-level proof-oriented programming and improves GPT-40's performance by **54% by repairing its outputs**. This demonstrates the effectiveness of the proposed data-centric approach for enhancing LLMs' proficiency in proof-oriented programming.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PoPilot, a 14B parameter model, significantly outperforms existing LLMs in project-level proof-oriented programming. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The paper introduces a novel synthetic data augmentation technique to address the data scarcity problem in proof-oriented programming. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PoPilot demonstrates strong capabilities in both generating and repairing proofs for function- and repository-level code. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on **large language models (LLMs)** and **formal verification**.  It presents a novel approach to **addressing data scarcity** in proof-oriented programming, a significant challenge in the field. The **synthetic data generation techniques** and the impressive performance gains achieved open up new avenues for research into improving LLM capabilities in this domain and are highly relevant to the increasing focus on software safety and security.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11901/x1.png)

> 🔼 This figure illustrates the pipeline used to generate repository-level data for training the proof-oriented programming model.  It starts with existing type declarations and proofs from repositories.  A problem synthesis loop generates new problems by creating variations of existing proofs, using an LLM to generate solutions (new problem-solution pairs). A repair loop is also included. This loop takes existing proofs that are erroneous and uses an LLM to attempt repair.  The verification step uses F*'s solver to check the correctness of both newly generated and repaired proofs. The process then augments the existing data with these verified new and repaired problem-solution pairs, resulting in a richer and more diverse training dataset.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of repository-level data generation pipeline.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.1.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.2.1">Pass@1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.1.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.3.1">+Repair</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.2.2.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.2.2.1.1">Qwen-2.5-coder-7B-instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.30</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.3.3.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.3.3.1.1">Qwen-2.5-coder-14B-instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.3.3.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.3.3.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.55</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.4.4.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.4.4.1.1">Qwen-2.5-coder-32B-instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.4.4.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.4.4.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.58</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.5.5.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.5.5.1.1">Qwen-2-72B-instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.5.5.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.5.5.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.43</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.6.6.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.6.6.1.1">DeepSeek-Coder-V2-Lite-Instruct</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.6.6.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.6.6.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.53</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.7.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.7.7.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.7.7.1.1">LLama-3.1-70B</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.7.7.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.7.7.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.27</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.8.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.8.8.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_smallcaps" id="S5.T1.1.1.8.8.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.8.8.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.60</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.8.8.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.70</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.9.9">
<th class="ltx_td ltx_nopad_l ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="3" id="S5.T1.1.1.9.9.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.9.9.1.1">Fine-tune Data Mixture</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.10.10">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.10.10.1" style="padding-left:1.2pt;padding-right:1.2pt;">54K F* Only</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.1.1.10.10.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.42</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.1.1.10.10.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.47</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.11.11">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.11.11.1" style="padding-left:1.2pt;padding-right:1.2pt;">+ Evol</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.11.11.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.11.11.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.56</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.12.12.1" style="padding-left:1.2pt;padding-right:1.2pt;">93K F* Only</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.12.12.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.12.12.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.13.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.13.13.1" style="padding-left:1.2pt;padding-right:1.2pt;">+ DSP-V1</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.13.13.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.13.13.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.54</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.14.14">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.1.14.14.1" style="padding-left:1.2pt;padding-right:1.2pt;">+ DSP-V1 + Evol + CodeAlpaca + RBR</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.14.14.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.14.14.2.1">0.58</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T1.1.1.14.14.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.14.14.3.1">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.15.15">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.1.1.15.15.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_italic" id="S5.T1.1.1.15.15.1.1">- F* NL2Code</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T1.1.1.15.15.2" style="padding-left:1.2pt;padding-right:1.2pt;">0.48 (<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.15.15.2.1">-</span>)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T1.1.1.15.15.3" style="padding-left:1.2pt;padding-right:1.2pt;">0.52(<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.15.15.3.1">-</span>)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various large language models (LLMs) on function-level proof-oriented programming tasks in the F* language.  It shows the accuracy (Pass@1) of each model in generating correct code, as well as its ability to repair incorrect code (Pass@1+Repair). The models are tested with different mixtures of training data, including purely synthetic F* data, and data from other programming languages and datasets. The different data mixtures used are also described to show the effect of data diversity on model performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across different models and fine-tuning data mixtures. F* only: synthetic F* data, Evol: 80K (54K F*) / 50K (93K F*) Magicoder-Evol-Instruct data, DSP-V1: 20K Deepseek-Prover-V1 data, CodeAlpaca: 15K CodeAlpaca data, RBR: 15K RunBugRun data
> </details>





### In-depth insights


#### Proof-Oriented LLM
A Proof-Oriented LLM represents a significant advancement in large language model (LLM) capabilities, moving beyond traditional code generation towards **formal verification**.  This involves not just producing code, but also generating and verifying mathematical proofs of its correctness.  The core challenge addressed is the scarcity of training data in formal verification languages like F*, limiting the performance of existing LLMs.  The proposed solution often incorporates data augmentation techniques that synthetically generate proof-oriented programming problems, teaching the model complex reasoning skills. The **effectiveness** of this approach is demonstrated by surpassing existing LLMs in project-level proof-oriented programming tasks, achieving significant performance gains under data scarcity.  **Synthetic data** generation, in particular, becomes a crucial tool for bridging the data gap and accelerating development in this area.  This research showcases the potential of LLMs to assist in ensuring software reliability and safety, where correctness guarantees are paramount.

#### Synthetic Data Aug
The concept of 'Synthetic Data Augmentation' in the context of proof-oriented programming is crucial due to the scarcity of real-world data.  **Synthetic data generation effectively addresses the data limitations** by creating artificial yet valid proof-oriented programming problems and solutions. This allows the training of large language models (LLMs) to improve their performance on tasks such as proof generation and repair, overcoming the bottleneck of insufficient high-quality data. The approach likely involves generating diverse problem types, controlling complexity levels, and ensuring correctness guarantees. The efficacy of this approach is evidenced by the reported performance gains, which likely result from the LLM learning fundamental patterns and intricate reasoning processes within a controlled environment. **The success hinges on the quality and diversity of synthetic data**, which needs to closely resemble real-world scenarios to ensure effective generalization. Furthermore, **evaluation metrics are important** to gauge the model's improvement and robustness across varying problem complexities.

#### PoPilot: Model Details
A hypothetical section titled 'PoPilot: Model Details' in a research paper would delve into the specifics of the PoPilot model's architecture, training, and capabilities.  It would likely begin by specifying the **base model** used, perhaps a large language model (LLM) like GPT-40 or a similar architecture, and how it was pre-trained.  Crucially, details of the **fine-tuning process** would be provided, including the datasets used (synthetic and real-world F* code, potentially augmented with data from other programming languages), the training methods employed (e.g., supervised learning, reinforcement learning), and any hyperparameters adjusted. The section should also address the model's **size (number of parameters)** and its **performance metrics** on relevant benchmark tasks for F* code generation, repair, and verification.  Finally, a discussion of the model's **limitations and potential biases** stemming from data scarcity or specific training techniques would demonstrate a rigorous and comprehensive analysis.  **Computational resource requirements** during training and inference would also be valuable details.

#### Project-Level Eval
A hypothetical 'Project-Level Eval' section in a research paper evaluating proof-oriented programming models would delve into the performance of these models on complex, real-world coding projects.  This is crucial because **function-level evaluations, while useful for benchmarking basic capabilities, often fail to capture the intricacies of large-scale codebases**.  Project-level evaluation would involve assessing the models' ability to synthesize and repair proofs within existing repositories, considering factors such as code complexity, interdependencies, and the scale of the project.  **Key metrics might include the accuracy of proof generation and repair, the efficiency of the process (e.g., time taken), and the model's capacity to handle errors gracefully.**  The results would demonstrate the models' practical applicability and highlight any limitations, particularly in managing the complexity of large, multi-file projects.  This section would likely be supported by a detailed case study showcasing the model's performance on a representative real-world project, directly comparing it to state-of-the-art models or even human programmers.  Ultimately, strong performance in this section would provide compelling evidence of the model's readiness for real-world deployment and its potential for transforming software development practices.

#### Future Work
Future research directions stemming from this work could explore **extending the approach to other proof-oriented programming languages** beyond F*, evaluating the model's performance on larger, more complex, real-world projects, and investigating the **integration of PoPilot with existing IDEs and development workflows**.  Further investigation into the **generalizability of the synthetic data generation techniques** to other domains with data scarcity would be valuable.  A key area would be **improving the model's ability to handle more intricate and nuanced reasoning tasks**, especially those involving complex inter-dependencies between code components.  Finally,  research on **how PoPilot could be incorporated into automated software verification systems** and **its potential for identifying and correcting subtle bugs** would significantly enhance its practical value and relevance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11901/x2.png)

> 🔼 This figure shows an example of a function-level proof-oriented programming problem in the F* programming language.  It presents a function, `list_with_length`, which takes a list of integers as input and returns a tuple containing the original list and its length. The task is to write an F* program that proves a property: for any list of integers, the length of the list returned by `list_with_length` is equal to the length of the original list. The figure illustrates the problem statement, including the function code and the property to be proved, showcasing the formal verification aspect of proof-oriented programming.
> <details>
> <summary>read the caption</summary>
> Figure 2: Function-level Proof-oriented programming example.
> </details>



![](https://arxiv.org/html/2502.11901/x3.png)

> 🔼 Figure 3 is a bar chart comparing the lengths of generated definitions (synthetically created for the F* programming language) with the lengths of definitions found in existing F* repositories.  The x-axis represents the length of the definitions (likely measured in characters or tokens), and the y-axis shows the frequency of definitions of that particular length.  The chart helps to visualize the distribution of definition lengths in both the generated and existing datasets, demonstrating whether the generated data accurately reflects the length characteristics of real-world F* code.
> <details>
> <summary>read the caption</summary>
> Figure 3: Length Comparison between Generated Definitions vs Existing Definitions.
> </details>



![](https://arxiv.org/html/2502.11901/x4.png)

> 🔼 This figure shows the results of using PoPilot to repair incorrect outputs generated by several state-of-the-art large language models (LLMs).  The x-axis represents different LLMs, and the y-axis represents the percentage of correctly repaired outputs. The bars show the success rates for three different approaches: (1) Generation with 5 attempts at generation followed by 5 repair attempts (Gen@5+Self Repair@5), (2) Generation with 5 attempts and the use of PoPilot for repair (Gen@5 + Ours Repair@5), and (3) Generation with only 10 attempts at generation (Gen@10).  The figure highlights PoPilot's ability to significantly improve the repair performance of other models.
> <details>
> <summary>read the caption</summary>
> Figure 4: PoPilot repairing failed outputs for state-of-the-art models.
> </details>



![](https://arxiv.org/html/2502.11901/x5.png)

> 🔼 This figure shows the distribution of the top ten error types found in the model-generated repair data.  The data consists of incorrect proofs generated by a language model, which were then used as input to train a model for repairing erroneous proofs in a proof-oriented programming language, F*.  The chart visualizes the frequency of different error types, providing insights into the types of errors most frequently made by the model. This information is valuable for understanding the model's weaknesses and for guiding future data augmentation and model training efforts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of Top 10 Error Types of Model-Generated Repair Data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1.1">Baseline Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.2.1">Generate@5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.3.1">Repair@5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.4.1">Gen+Rep (Total 10)</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S6.T2.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.5.1">Generate@10</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.2.2.1.1">Qwen2.5-Coder-32B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">24.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T2.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">27.1</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.3.3.1.1">Deepseek-Coder-33B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">4.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">28.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.4.4.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">1.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">23.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">23.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.5.5.1.1">Qwen2.5-72B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">3.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">25.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.6.6.1.1">Llama-3.3-70B-Instruct-Turbo</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">3.9</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">23.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">21.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S6.T2.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.7.7.1.1">Data Mixture</span></th>
</tr>
<tr class="ltx_tr" id="S6.T2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S6.T2.1.8.8.1.1">Existing Repos</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">30.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">31.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T2.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">35.3</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Syn. Project Proof</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">32.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">34.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">36.2</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.10.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Func + Syn. Project Proof</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">32.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">2.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">35.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">37.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Syn. Project Proof + Syn. Repair</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">32.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.11.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">33.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">37.5</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Syn. Project Proof + Model Repair</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">4.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">37.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">37.2</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Syn. Project Proof + All Repair</th>
<td class="ltx_td ltx_align_center" id="S6.T2.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.13.13.2.1">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">4.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T2.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">38.0</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T2.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S6.T2.1.14.14.1.1">PoPilot</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.14.14.2" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S6.T2.1.14.14.2.1" style="background-color:#E6FFFF;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.14.14.3" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.14.14.3.1" style="background-color:#E6FFFF;">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.1.14.14.4" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.14.14.4.1" style="background-color:#E6FFFF;">39.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T2.1.14.14.5" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.14.14.5.1" style="background-color:#E6FFFF;">38.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various large language models (LLMs) on proof generation and repair tasks, specifically focusing on the impact of different training data configurations.  The baseline models are evaluated against a fine-tuned model (PoPilot). The training data configurations include: existing repository-level definitions and proofs (Existing Repos), synthetically generated project-level definitions and proofs (Syn. Project Proof), synthetic repair data (Syn. Repair), model-generated repair data (Model Repair), and a combination of all these data types (All Repair). PoPilot utilizes a combination of all data types, along with an additional 180K mixed function-level coding data. The metrics used are Generate@5 (successful generation within 5 attempts), Repair@5 (successful repair within 5 attempts), Gen+Rep (total of 10 attempts: 5 generation + 5 repair if needed), and Generate@10 (successful generation within 10 attempts).
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of baseline models and fine-tuning data configurations. Existing Repos: 30K existing repository level definition + proofs from the seed dataset; Syn. Project Proof : 30K model generated new definitions + proofs as described in 4.1; Func: synthetic simple questions mixed with other datasets in 5.2; Syn. Repair: 30K synthetic repair data in 4.2.1, Model Repair: 30K model-generarted repair data in 4.2.2; All Repair: Syn. Repair + Model Repair; PoPilot: Existing Repos + Syn. Project Proof + All Repair + 180K mixed function-level coding data used to finetune the best performance in Table 1
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T3.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T3.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.2.1">Gen@5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A4.T3.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.3.1">sample1-on-5</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T3.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T3.1.1.1.4.1">sample5-on-1</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T3.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T3.1.2.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T3.1.2.1.1.1">Our Best Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T3.1.2.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">34</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T3.1.2.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">+1.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T3.1.2.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">+4.7</td>
</tr>
<tr class="ltx_tr" id="A4.T3.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A4.T3.1.3.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T3.1.3.2.1.1">Qwen2.5-Coder-32B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A4.T3.1.3.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">23.5</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T3.1.3.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">+0.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T3.1.3.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">+7.8</td>
</tr>
<tr class="ltx_tr" id="A4.T3.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T3.1.4.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T3.1.4.3.1.1">DS-Coder-33B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T3.1.4.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">22.3</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T3.1.4.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">+4.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T3.1.4.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">+9.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares two different strategies for repairing incorrect program proofs generated by a language model.  The 'sample1-on-5' strategy attempts to repair each incorrect solution only once.  In contrast, the 'sample5-on-1' strategy attempts to repair the same incorrect solution five times. The table shows the success rates (Generate@5 and Repair@5) for both methods across three different models, highlighting the impact of multiple repair attempts on overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of repair sampling strategies: sample1-on-5 repairs each incorrect solution once, while sample5-on-1 repairs the same incorrect solution multiple times.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A4.T4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.1.1">Baseline Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.2.1">Generate@5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.3.1">Repair@5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T4.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.4.1">Gen+Rep (Total 10)</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A4.T4.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.1.1.5.1">Generate@10</span></td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T4.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.2.2.1.1">Qwen2.5-Coder-32B-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">24.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T4.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">27.1</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T4.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.3.3.1.1">Deepseek-Coder-33B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="A4.T4.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.3</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">4.6</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T4.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">28.8</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T4.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.4.4.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="A4.T4.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">22.2</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">1.7</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">23.9</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T4.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">23.8</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T4.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.5.5.1.1">Qwen2.5-72B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="A4.T4.1.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">23.4</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">3.0</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T4.1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">25.8</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T4.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.6.6.1.1">Llama-3.3-70B-Instruct-Turbo</span></th>
<td class="ltx_td ltx_align_center" id="A4.T4.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">19.6</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">3.9</td>
<td class="ltx_td ltx_align_center" id="A4.T4.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">23.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A4.T4.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">21.6</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="A4.T4.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.7.7.1.1">Fine-tuned model</span></th>
</tr>
<tr class="ltx_tr" id="A4.T4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T4.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.8.8.1.1">PoPilot-small</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">3.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T4.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">25.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T4.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">29.2</td>
</tr>
<tr class="ltx_tr" id="A4.T4.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T4.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="A4.T4.1.9.9.1.1">PoPilot</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.1.9.9.2" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.9.9.2.1" style="background-color:#E6FFFF;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.1.9.9.3" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.9.9.3.1" style="background-color:#E6FFFF;">6.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T4.1.9.9.4" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.9.9.4.1" style="background-color:#E6FFFF;">39.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T4.1.9.9.5" style="background-color:#E6FFFF;padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T4.1.9.9.5.1" style="background-color:#E6FFFF;">38.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a performance comparison of a smaller language model (PoPilot-Small) fine-tuned using the same data as the larger PoPilot model. It contrasts the smaller model's performance on proof generation and repair tasks with that of several baseline models including Qwen2.5-Coder-32B-INSTRUCT, DeepSeek-Coder-33B-INSTRUCT, GPT-40, Qwen2.5-72B-INSTRUCT, and Llama-3.3-70B-INSTRUCT-TURBO.  The metrics used for comparison are Generate@5, Repair@5, Gen+Rep (Total 10), and Generate@10.  The table highlights the smaller model's performance relative to the larger model and the baseline models.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of the small model
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11901/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11901/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}