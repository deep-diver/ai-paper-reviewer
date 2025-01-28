---
title: "Pairwise RM: Perform Best-of-N Sampling with Knockout Tournament"
summary: "Pairwise RM, a novel reward model with knockout tournaments, significantly boosts large language model accuracy in test-time scaling by comparing solution pairs, eliminating arbitrary scoring inconsis..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13007 {{< /keyword >}}
{{< keyword icon="writer" >}} Yantao Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13007" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13007" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13007/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current test-time scaling methods for Large Language Models (LLMs) often rely on reward models that assign scores to individual solutions.  However, these scores can be arbitrary and inconsistent, hindering accurate selection of the best solution. This inconsistency significantly impacts the performance of Best-of-N (BON) sampling, a common strategy to improve LLM outputs.

The proposed Pairwise Reward Model (Pairwise RM) tackles this issue by directly comparing pairs of solutions instead of assigning individual scores. It determines which solution is better based on a defined criterion (e.g., correctness). To perform BoN sampling, it employs a knockout tournament, iteratively comparing solution pairs and eliminating inferior ones until only the best solution remains. The evaluation on a large dataset shows that Pairwise RM and its knockout tournament significantly improve BON sampling performance, especially for difficult problems, surpassing traditional methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pairwise Reward Model (Pairwise RM) combined with a knockout tournament improves Best-of-N sampling in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PAIRWISE-443K, a large-scale dataset of pairwise comparisons, facilitates the training of Pairwise RM. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Pairwise RM significantly outperforms traditional reward models, achieving a 40-60% relative improvement on challenging problems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses a critical limitation in large language model (LLM) evaluation, particularly in the context of test-time scaling. By introducing Pairwise RM and the knockout tournament, it offers a more robust and accurate approach for selecting the best among multiple LLM-generated solutions.  This method is significant to researchers working on LLM evaluation, ranking, and test-time scaling strategies. It also opens up avenues for developing improved reward models and other LLM evaluation metrics that focus on relative correctness rather than absolute scores.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13007/x3.png)

> 🔼 The figure illustrates the Pairwise Reward Model (Pairwise RM) within a knockout tournament framework for best-of-N sampling.  A math problem and two candidate solutions are input. The Pairwise RM compares them, determining correctness. Incorrect solutions are eliminated iteratively until only one remains, which is deemed the best solution. The example shows the process, highlighting how pairwise comparisons lead to the elimination of an incorrect response.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An example of the knockout tournament with the Pairwise RM. Pairwise RM takes one question and two responses as the input prompt, and outputs the pairwise comparison results to determine the correctness of the responses. The Pairwise RM correctly identifies the first response as correct and the second response as incorrect, leading to the elimination of the second response. Such pairwise comparisons iteratively proceed in the knockout tournament until only one response remains. The final response is selected as the best candidate solution.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S0.F1.pic1.14.14.14.1.1">
<tr class="ltx_tr" id="S0.F1.pic1.14.14.14.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S0.F1.pic1.14.14.14.1.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S0.F1.pic1.14.14.14.1.1.1.1.1">Input</span></td>
</tr>
<tr class="ltx_tr" id="S0.F1.pic1.14.14.14.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S0.F1.pic1.14.14.14.1.1.2.1"><span class="ltx_text ltx_font_smallcaps" id="S0.F1.pic1.14.14.14.1.1.2.1.1">Prompt</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative analysis of dataset sizes before and after data cleaning and filtering. It shows the original number of data points in various datasets used in the paper, along with the count after filtering out low-quality data, multiple-choice questions, and proof-based problems. The significant reduction in AMC-related datasets after filtering highlights the prevalence of multiple-choice questions in these datasets, which were removed as part of the data cleaning process.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the datasets before and after filtering. AMC-related datasets shrink significantly because most AMC tasks are multiple-choice.
> </details>





### In-depth insights


#### Pairwise RM: BON
The proposed Pairwise Reward Model (Pairwise RM) for Best-of-N (BON) sampling offers a novel approach to selecting the best candidate solution from multiple LLM generations.  Instead of assigning arbitrary scores, **Pairwise RM directly compares two candidate solutions**, assessing their correctness simultaneously. This eliminates the inherent inconsistencies of traditional reward models and enables efficient cross-validation.  The integration with a knockout tournament further streamlines the selection process, iteratively eliminating incorrect solutions until a single best candidate remains.  This method's strength lies in its reliance on **parallel comparison**, avoiding the need for absolute scoring and reducing reliance on potentially unreliable individual reward model outputs.  **A large-scale dataset, PAIRWISE-443K**, supports the training of this model. While computationally intensive due to the pairwise comparisons, the approach shows significant promise for more robust and reliable BON sampling in complex tasks, particularly those where human evaluation is subjective and inconsistent, as demonstrated by improved results compared to traditional methods on challenging math problems.

#### Knockout Tourney
The proposed "Knockout Tournament" method for Best-of-N sampling presents a novel approach to selecting the optimal candidate solution from a set of model-generated options.  **Instead of relying on potentially arbitrary scoring mechanisms of traditional reward models**, it leverages a pairwise comparison strategy.  Each comparison, facilitated by a Pairwise Reward Model (PRM), directly determines which solution is superior, eliminating the need for absolute scoring.  This iterative process, mimicking a single-elimination tournament structure, efficiently reduces the candidate pool until only the most accurate solution remains.  **The strength of this approach lies in its inherent robustness against inconsistent reward model scoring.** It leverages the power of pairwise comparisons to reduce bias and enhance the reliability of the selection process.  However, **scalability is a key consideration**, especially with large sets of candidate solutions, because of the computational cost of multiple pairwise comparisons.  Further exploration into optimal tournament structures and parallelization strategies could address this limitation. The effectiveness of this method, demonstrated through experimentation, opens up exciting avenues in test-time scaling and beyond.  **The focus on pairwise comparison and its efficient tournament implementation highlights a significant departure from conventional approaches.** This method offers a more reliable and robust solution selection process for applications requiring optimal selection under uncertainty.

#### PAIRWISE-443K Dataset
The creation of the PAIRWISE-443K dataset is a **significant contribution** to the field of large language model (LLM) evaluation, particularly within the context of math problem solving.  Its large scale (443K pairwise comparisons) addresses a crucial limitation of existing reward models: the inconsistency and arbitrariness of scores assigned to solutions.  By focusing on **pairwise comparisons**, this dataset directly evaluates the relative correctness of two solutions for the same problem, thereby circumventing the difficulties of absolute scoring. This innovative approach is likely to lead to **more robust and reliable reward models** that are better suited to the intricacies of nuanced math problem solving. The use of NumiaMath as the source of problems and gemini-1.5-flash for annotation ensures a high-quality dataset that is representative of real-world mathematical reasoning challenges.  The detailed description of the dataset's construction pipeline is essential for reproducibility and facilitates the development of more sophisticated evaluation methods in the future. The resulting dataset is expected to be a valuable resource for researchers working to improve LLMs' mathematical reasoning abilities and should advance the state-of-the-art in best-of-N sampling and other related areas.

#### BoN Sampling: Limits
Best-of-N (BoN) sampling, while a powerful technique for improving LLM performance, has inherent limitations.  **Computational cost** is a major factor; generating and evaluating multiple candidate solutions significantly increases inference time, hindering real-time applications.  **Reward model reliability** is another crucial limitation.  Inaccuracies or inconsistencies in the reward model's scoring can lead to suboptimal selection of candidate solutions, negating the benefits of BoN.  The effectiveness of BoN is also heavily dependent on the **quality and diversity** of generated candidates; a weak LLM will produce poor candidates regardless of the sampling strategy. Finally,  **data limitations** affect reward model training and evaluation, especially the lack of high-quality, diverse data for nuanced evaluation of generated text,  directly impacting BoN's ability to consistently select superior outputs. Addressing these limits is key to unlocking BoN's full potential.

#### Future Work: RL
The heading 'Future Work: RL' suggests a promising direction for extending the research presented in the paper.  It indicates a plan to explore how the Pairwise Reward Model (and its knockout tournament) can be integrated into a reinforcement learning (RL) framework.  This is significant because **current RL applications often struggle with the effective evaluation of diverse solutions**, a problem directly addressed by the Pairwise RM's ability to compare candidates simultaneously, rather than assigning arbitrary scores.  The integration into RL would allow the algorithm to learn a policy that leverages these pairwise comparisons, potentially leading to **more efficient and robust training of RL agents**.  This approach could be particularly beneficial for complex tasks involving multiple steps, where the ability to discriminate between subtly different solutions is crucial. The success of this future work would depend on effectively defining appropriate reward signals within the RL framework, making judicious choices for RL algorithms, and assessing the resulting performance improvements compared to traditional methods.  Furthermore, **thorough investigation of scalability** will be important, as pairwise comparisons can become computationally expensive as the number of solutions grows. Addressing these challenges will be key to unlocking the full potential of the proposed method within RL applications.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S0.F1.pic1.15.15.15.1.1">
<tr class="ltx_tr" id="S0.F1.pic1.15.15.15.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S0.F1.pic1.15.15.15.1.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S0.F1.pic1.15.15.15.1.1.1.1.1">Pairwise</span></td>
</tr>
<tr class="ltx_tr" id="S0.F1.pic1.15.15.15.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S0.F1.pic1.15.15.15.1.1.2.1"><span class="ltx_text ltx_font_smallcaps" id="S0.F1.pic1.15.15.15.1.1.2.1.1">Comparison</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various reward models' performance in best-of-N sampling on two benchmark datasets: MATH-500 and Olympiad Bench.  Three different large language models (LLMs) were used: Llama-3.1-8B-Inst, Qwen-2.5-7B-Inst, and Llama-3.1-70B-Inst. The table shows the accuracy of each reward model for different best-of-N sampling strategies (best-of-16, best-of-32, and best-of-64).  The pass@1 accuracy (accuracy of selecting the single best solution from the initial set) for each LLM on each dataset is also provided for context. The best and second-best results for each scenario are highlighted in bold and underlined, respectively.
> <details>
> <summary>read the caption</summary>
> Table 2: Different reward models’ best-of-N sampling performance on MATH-500 and Olympiad Bench with three different LLMs: Llama-3.1-8B-Inst, Qwen-2.5-7B-Inst, and Llama-3.1-70B-Inst. The results are reported in terms of accuracy. The pass@1 accuracy of these three LLMs are 42.0, 73.6, and 59.2 on MATH-500, and 12.3, 35.7, and 25.9 on Olympiad Bench, respectively. @16, @32, and @64 denote the accuracy with Best-of-16, Best-of-32, and Best-of-64 sampling, respectively. The best results are in bold, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1">Original Count</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.1">Filtered Count</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1">AMC/AIME</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.2.2">4,070</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.2.3">289</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.1">AoPS Forum</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.3.2">30,192</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.3.3">9,017</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.1">Chinese K-12</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.4.2">276,554</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.4.3">63,779</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.5.1">GSM8K</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.5.2">7,342</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.5.3">6,539</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.6.1">Math</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.6.2">7,477</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.6.3">5,988</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.7.1">Olympiads</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.7.2">150,563</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.7.3">52,766</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.8.1">ORCA Math</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.8.2">153,314</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.8.3">149,550</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.9.1">Synthetic AMC</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.9.2">62,108</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.9.3">94</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.10.1">Synthetic Math</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.10.2">167,874</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.10.3">136,921</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.11.1.1">Total</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T1.1.11.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.11.2.1">859,494</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T1.1.11.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.11.3.1">425,943</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the Pairwise Reward Model (Pairwise RM) and the LLM-as-a-Judge model's performance on correctness verification tasks.  The models were evaluated on the MATH-500 and Olympiad datasets, using candidate solutions generated by the Qwen-2.5-7B-Instruct language model. The table reports the accuracy of each model on both datasets.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparison of the Pairwise RM and LLM-as-a-Judge on the MATH-500 and Olympiad datasets on correctness verification task. Candidates are generated by Qwen-2.5-7B-Instruct. Accuracy is reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.1.1">
<tr class="ltx_tr" id="S5.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T2.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.2.1">Reward Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.3.1">Llama-3.1-8B-Inst</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.4.1">Qwen-2.5-7B-Inst</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.5.1">Llama-3.1-70B-Inst</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.6.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.1">@16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.2">@32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.2.3">@64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.4">@16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.5">@32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.2.6">@64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.7">@16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.2.8">@32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.2.9">@64</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S5.T2.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S5.T2.1.1.3.1.1">MATH-500</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.4.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.4.1.1">ORM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.4.2">ArmoRM-Llama3-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.3">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.4">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.4.5">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.4.6.1">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.7">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.4.8">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.9">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.4.10">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.4.11">65.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.4.12">64.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.5.1">SkyworkRM-Llama3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.2">51.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.3">51.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.5.4">51.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.5.5.1">77.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.6">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.5.7.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.8">66.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.5.9">66.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.5.10">67.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.5.11">65.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.6.1">EurusRM-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.2">55.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.3">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.6.4">53.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.5">76.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.6">77.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.6.7">77.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.8">68.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.6.9">66.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.6.10">67.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.6.11">66.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.7.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.7.1.1">PRM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.7.2">Math-Shepherd-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.3">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.4">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.7.5">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.6">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.7">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.7.8">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.9">63.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.7.10">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.7.11">63.6</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.7.12">62.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.8.1">RLHFlow-8B-Mistral-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.2">51.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.3">51.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.8.4">50.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.5">75.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.6">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.8.7">76.6</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.8">64.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.8.9">63.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.8.10">64.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.8.11">63.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.9.1">RLHFlow-8B-DS-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.2">55.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.3">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.9.4">56.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.5">75.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.6">76.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.9.7">76.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.8">66.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.9.9">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.9.10">65.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.9.11">66.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.10.1">RLHFlow-8B-LLaMA-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.2">55.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.3">56.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.10.4">56.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.5">76.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.6">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.10.7">76.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.8">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.10.9">67.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.10.10">66.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.10.11">66.3</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.11">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.11.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.11.2">Majority Voting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.3.1">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.4.1">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.11.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.5.1">58.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.6">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.7.1">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.11.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.8.1">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.9.1">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.11.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.10.1">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.11.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.11.1">73.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.11.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.11.12.1">69.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.12">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.12.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.12.2">Pairwise RM &amp; Knockout</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.3.1">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.4.1">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.12.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.5.1">65.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.6"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.6.1">80.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.7"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.7.1">79.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.12.8"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.8.1">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.9"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.9.1">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.12.10"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.10.1">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.12.11"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.11.1">77.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.12.12"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.12.12.1">73.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S5.T2.1.1.13.1"><span class="ltx_text ltx_font_italic" id="S5.T2.1.1.13.1.1">Olympiad Bench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.14.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.14.1.1">ORM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.14.2">ArmoRM-Llama3-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.3">16.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.4">15.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.14.5">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.6">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.7">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.14.8">40.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.9">29.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.14.10">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.14.11">30.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.14.12">28.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.15.1">SkyworkRM-Llama3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.2">19.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.3">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.15.4">18.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.5">39.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.6">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.15.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.15.7.1">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.8">29.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.15.9">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.15.10">29.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.15.11">29.4</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.16.1">EurusRM-7B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.16.2.1">20.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.3">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.16.4">20.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.5">37.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.6">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.16.7">39.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.8">30.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.16.9">30.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.16.10">32.4</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.16.11">30.0</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.17.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.17.1.1">PRM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.17.2">Math-Shepherd-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.3">15.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.4">13.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.17.5">13.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.6">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.7">34.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.17.8">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.9">25.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.17.10">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.17.11">24.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.17.12">24.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.18.1">RLHFlow-8B-Mistral-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.2">16.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.3">14.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.18.4">14.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.5">36.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.6">35.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.18.7">36.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.8">26.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.18.9">27.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.18.10">25.2</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.18.11">25.9</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.19.1">RLHFlow-8B-DS-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.2">18.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.3">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.19.4">19.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.5">35.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.6">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.19.7">34.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.8">28.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.19.9">29.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.19.10">30.1</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.19.11">27.8</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.1.1.20.1">RLHFlow-8B-LLaMA-Data</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.2">18.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.3">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.20.4">19.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.5">35.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.6">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.20.7">34.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.8">29.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.1.1.20.9">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.1.1.20.10">30.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.1.1.20.11">28.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.21">
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T2.1.1.21.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.1.1.21.2">Majority Voting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.3">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.4.1">22.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.21.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.5.1">23.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.6.1">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.7"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.21.7.1">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.21.8">39.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.9.1">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.21.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.10.1">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.21.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.11.1">36.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.21.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.21.12.1">32.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1.22">
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.1.1.22.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.1.1.22.2">Pairwise RM &amp; Knockout</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.3"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.3.1">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.4"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.4.1">24.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.1.1.22.5"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.5.1">25.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.6"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.6.1">41.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.22.7.1">40.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.1.1.22.8"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.8.1">41.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.9"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.9.1">33.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.10"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.10.1">36.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T2.1.1.22.11"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.11.1">37.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.1.1.22.12"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.22.12.1">33.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt template used for the Pairwise Reward Model (Pairwise RM).  The template guides the model to evaluate the correctness of two responses (Response A and Response B) to a given math question. It instructs the model to perform a step-by-step verification of each response, checking for mathematical accuracy, logical consistency, and completeness.  Finally, the model provides a correctness judgment for each response, indicating whether each answer is 'Correct' or 'Incorrect'.  Additional tips are included in the template to help the model validate the responses accurately.
> <details>
> <summary>read the caption</summary>
> Table 4:  Prompt Template for Pairwise RM, the {question}, {response_a}, and {response_b} are placeholders for the math question, response A, and response B, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S6.T3.1">
<tr class="ltx_tr" id="S6.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S6.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.2.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.3.1">Olympiad</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.4.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T3.1.2.1">LLM-as-a-Judge</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.2">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.3">56.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.2.4">62.3</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T3.1.3.1">Pairwise RM</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.3.2">70.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.3.3">64.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.1.3.4">67.3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the criteria used to filter the NumiaMath dataset before creating the PAIRWISE-443K dataset.  Filtering was necessary to remove data that was low-quality, contained proof-based questions, or included multiple-choice questions.  The table lists several filter types (Bad Quality Problems, Equations in Ground Truth, Multiple Questions, Yes/No Questions, Text Answers, Proof Problems, and Multiple Choice Questions) and the specific criteria that were used to identify and remove those types of problems from the dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Filtering criteria applied to the dataset to remove low-quality, proof-based, or multiple-choice problems.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13007/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13007/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}