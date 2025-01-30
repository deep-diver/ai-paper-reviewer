---
title: "Atla Selene Mini: A General Purpose Evaluation Model"
summary: "Atla Selene Mini: A state-of-the-art small LLM judge surpassing larger models in benchmark performance!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Atla",]
showSummary: true
date: 2025-01-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.17195 {{< /keyword >}}
{{< keyword icon="writer" >}} Andrei Alexandru et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.17195" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.17195" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.17195/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Evaluating large language models (LLMs) is crucial but challenging. Human evaluation is expensive and slow, while existing automated methods using LLMs as judges often suffer from biases and inconsistencies.  This leads to unreliable assessments of LLM capabilities. 

Atla Selene Mini addresses these issues by introducing a novel, small language model designed specifically for evaluation.  The model excels on multiple benchmarks and shows improved zero-shot performance in real-world scenarios. Its training incorporates both direct preference optimization and supervised fine-tuning, along with a rigorous data curation process to improve quality and reduce bias. The **open-source release** of the model and its weights allows researchers to use and improve this innovative evaluation tool.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Atla Selene Mini outperforms existing small language models as judges across various evaluation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Its principled data curation strategy and combined training approach significantly improve evaluation accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model's open-source release facilitates community adoption and further research in LLM evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial** for researchers working on LLM evaluation. It introduces a novel, high-performing small language model (SLMJ) that addresses existing limitations like bias and cost. The model's open-source nature and strong real-world performance make it a **valuable tool** for the community, fostering further research and development in this critical area.  The method of data curation and training also provides insights into creating more robust and effective evaluation metrics.

------
#### Visual Insights



![](https://arxiv.org/html/2501.17195/extracted/6157738/figures/Fig1.png)

> 🔼 Figure 1 presents a comparative analysis of Atla Selene Mini's performance against other state-of-the-art small language models as judges (SLMJs).  Part (a) shows the overall average performance across multiple evaluation tasks, highlighting Atla Selene Mini's superior performance. Part (b) provides a detailed breakdown of the performance across specific benchmark tasks and task types (absolute scoring, classification, and pairwise preference), offering a granular view of Atla Selene Mini's strengths and weaknesses in comparison to other SLMJs. Table 1 in the paper provides a complete listing of the benchmarks and their results.
> <details>
> <summary>read the caption</summary>
> Figure 1: Atla Selene Mini outperforms current state-of-the-art SLMJs: a) Overall task-average performance, comparing Atla Selene Mini (black) with the best and most widely used SLMJs. b) Breakdown of performance by task type and benchmark – see Table 1 for full comparison.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.1.1">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.1.1.1.2">CRAFT-MD</td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.T2.2.1.1.1.3"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.2.1.1.1.4">Finance</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.2.2.1"></th>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.2.2.2">Medical</td>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.2.2.3">Most likely</td>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.2.2.4">Relevant</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.1.2.2.5">Overall</td>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.2.2.6">Bench</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T2.2.1.3.3.1"></th>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.3.3.2">terminology</td>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.3.3.3">diagnosis</td>
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.3.3.4">med. hist.</td>
<td class="ltx_td ltx_border_r" id="S3.T2.2.1.3.3.5"></td>
<td class="ltx_td" id="S3.T2.2.1.3.3.6"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.2.1.4.4.1">Atla-Selene-Mini</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.4.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.2.1">0.92</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.3.1">0.62</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.4.1">0.68</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.1.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.5.1">0.74</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.4.4.6"><span class="ltx_text ltx_font_bold" id="S3.T2.2.1.4.4.6.1">0.717</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T2.2.1.5.5.1">LLama-3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.2.1.5.5.2">0.79</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.2.1.5.5.3">0.51</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.2.1.5.5.4">0.62</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.2.1.5.5.5">0.64</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.2.1.5.5.6">0.664</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a detailed comparison of the performance of different small language models used as judges (SLMJs) across various evaluation benchmarks.  The benchmarks are categorized into three types of tasks: absolute scoring, classification, and pairwise preference.  For each model and benchmark, the table shows the performance score, with bold numbers highlighting the best score achieved in each benchmark column.  The table also indicates which models' previously published performance results are reported here, marked with a † symbol.  Atla Selene Mini's overall performance, averaged across all tasks and benchmarks, is the highest among all the models.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed breakdown of SLMJ performance: Bold numbers indicate the highest score per column. Atla Selene Mini has the highest overall performance averaged over tasks (sections) and benchmarks (columns).  † indicates models for which we report previously published numbers.
> </details>





### In-depth insights


#### SLMJ Evaluation
SLMJ (Small Language Model as Judge) evaluation is a crucial aspect of developing effective and reliable automated evaluation systems for LLMs.  A robust evaluation framework needs to consider multiple factors. **First**, the benchmarks used must be diverse and representative of real-world tasks. This ensures that the SLMJ is not overfit to specific types of problems and can generalize well across various domains.  **Second**, the metrics used to evaluate the SLMJ's performance are crucial.  Simple accuracy may not be sufficient; more nuanced metrics might include correlation with human judgments, consistency across different prompts, and resistance to known biases.  **Third**, the SLMJ's performance must be compared against strong baselines and other state-of-the-art SLMJs to provide a clear understanding of its strengths and weaknesses.  Furthermore, **transparency** is important.  The data used to train and evaluate the SLMJ, along with the evaluation methodology itself, should be made publicly available to facilitate reproducibility and further research.  Finally, the impact of factors like prompt engineering and model size needs thorough investigation. These considerations will lead to the development of more rigorous and trustworthy evaluation protocols for SLMJs.

#### Data Curation
Data curation in this research paper is a critical process, significantly impacting the performance of the Atla Selene Mini model.  The researchers employ a **principled data curation strategy** that extends beyond simply using existing public datasets.  They **augment these datasets with synthetically generated critiques and judgments**, creating a more comprehensive and balanced training corpus. This augmentation aims to address potential biases in existing data and improve the model's ability to handle diverse and nuanced evaluation scenarios.  A key element of this strategy is the **implementation of rigorous filtering and dataset ablation techniques**. This step is essential for ensuring high-quality data and mitigating the risk of introducing noise or biases during the training process. The careful selection and filtering of data are crucial for the overall success of the evaluation model, demonstrating a **commitment to data quality over quantity**. The use of both direct preference optimization and supervised fine-tuning highlights a multifaceted approach that underscores the sophistication of their curation approach and reinforces its importance in creating a high-performing and robust model.

#### DPO+NLL Training
The research paper section on "DPO+NLL Training" likely details a novel training approach for language models used in evaluation.  **Direct Preference Optimization (DPO)**, a method focusing on directly optimizing for the preferred model output, is combined with **Negative Log-Likelihood (NLL)** loss. This hybrid approach aims to enhance the model's ability to discern high-quality outputs.  The integration of NLL loss likely ensures the model's predictions align well with the ground truth. This blend should **improve accuracy and robustness**, creating an evaluator less susceptible to biases commonly found in LLM evaluations.  The results section likely demonstrates the efficacy of this hybrid approach by comparing its performance against models trained using only DPO or SFT, highlighting improvements in accuracy and promptability.

#### Real-world Robustness
Real-world robustness is a crucial aspect for evaluating the practical applicability of any model, especially in the context of large language models (LLMs).  A model demonstrating strong performance on benchmark datasets might still fail in real-world scenarios due to various factors like noisy or ambiguous inputs, unexpected context shifts, or diverse user interaction styles.  **Real-world robustness testing goes beyond the confines of curated datasets and necessitates evaluating performance in diverse, unpredictable environments** such as interactions with real users, handling unstructured data, and adapting to unforeseen circumstances.  **The ability of the model to generalize effectively and demonstrate consistent performance despite these variations is key.** This often necessitates a shift from purely quantitative metrics to a more holistic evaluation process, potentially incorporating human evaluation to assess the quality of output and overall user experience.  Furthermore, **robustness testing should specifically target aspects like prompt engineering and resilience against adversarial attacks,** where malicious inputs aim to manipulate the model's output.  A thorough assessment of real-world robustness is critical for building trust and ensuring that LLMs can reliably deliver on their intended capabilities in actual applications.

#### Future of LLMs
The future of LLMs is bright but uncertain.  **Continued advancements in model architecture and training techniques** will likely lead to even more powerful and versatile models.  However, **ethical considerations**, such as bias mitigation, responsible use, and the potential for misuse, will remain central challenges.  **Addressing these ethical concerns** will require collaboration between researchers, policymakers, and the public.  The integration of LLMs into various applications will undoubtedly grow, but success will hinge on **developing robust and reliable evaluation metrics** to ensure alignment with human values and expectations.  Furthermore, **research into interpretability and explainability** will be critical to foster trust and understand limitations.  Ultimately, the future trajectory of LLMs will depend on navigating the complex interplay between technological progress and societal impact.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.17195/extracted/6157738/figures/Fig2.png)

> 🔼 This figure illustrates the process of creating a high-quality training dataset for Atla Selene Mini. It starts with a candidate dataset, applies filtering to remove low-quality data points, and uses synthetic data generation to augment the dataset with 'chosen' and 'rejected' pairs. These pairs are generated with chain-of-thought critiques to aid in preference optimization. Ablation studies are performed to determine which datasets to include or exclude from the final training mix. Yellow boxes indicate filtering, purple indicates synthetic pair generation, and red circles represent ablation-informed decisions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Data curation strategy: The process of transforming a candidate dataset (left) into the final training mix (right). Yellow boxes indicate filtering steps, purple represents synthetic generation of chosen and rejected pairs (blue and red) for preference optimization, and red circles highlight ablation-informed decisions, such as reward thresholds and dataset inclusion.
> </details>



![](https://arxiv.org/html/2501.17195/extracted/6157738/figures/Fig3.png)

> 🔼 Figure 3 presents a real-world evaluation of Atla Selene Mini's performance.  Panel (a) shows accuracy comparisons on domain-specific industry benchmarks (FinanceBench and CRAFT-MD), demonstrating improved expert agreement for the trained model versus a base model. Panel (b) illustrates the model's robustness to prompt format variations on RewardBench, showing consistent performance improvements. Finally, panel (c) displays the model's ELO score in a community-driven Judge Arena, showcasing its superior performance against other evaluators as of January 22, 2025. Error bars represent 95% confidence intervals.
> <details>
> <summary>read the caption</summary>
> Figure 3: Real-world evaluation: a) Performance on domain-specific industry benchmarks of Atla Selene Mini (black) compared to base model (orange) measured in accuracy. Trained model shows higher expert agreement on FinanceBench, a financial benchmark, and CRAFT-MD, a medical dataset. b) Performance on RewardBench of Atla Selene Mini compared to base model, when prompt format is changed. Trained model shows consistent improvement across formats. c) Performance measured by ELO scores, based on head-to-head comparisons in Judge Arena. An early snapshot of Atla Selene Mini (bold) beats all other evaluators as of Jan 22, 2025. Error bars indicate 95% CI.
> </details>



![](https://arxiv.org/html/2501.17195/extracted/6157738/figures/nomic.png)

> 🔼 This figure visualizes the training data used for Atla Selene Mini.  Using Nomic Atlas, a tool for visualizing datasets, the data is displayed as a two-dimensional embedding.  The data points are clustered by topic, providing a visual representation of the diverse topics covered in the training data and how they relate to one another. This helps illustrate the breadth and depth of the training data's subject matter.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training dataset map: Topic-stratified, two-dimensional embedding representation of Atla Selene Mini’s training dataset generated using Nomic Atlas [33].
> </details>



![](https://arxiv.org/html/2501.17195/extracted/6157738/figures/rm-ablation-report.png)

> 🔼 Figure 5 displays a training data example from the FeedbackCollection dataset [34]. It showcases how a prompt, an LLM response, scoring rubrics, and a reference response are used to train Atla Selene Mini.  The example includes the evaluation criteria, the LLM's response, and two different evaluations (one 'chosen' and one 'rejected')  with reasoning for each score. The evaluation is structured to focus on the humor and wit in the author's note and provides a numeric score from 1 to 5, referencing the provided rubric. The reference answer serves as a guide for assessing the quality of the LLM's response. This specific prompt template is similar to the one used in [10].
> <details>
> <summary>read the caption</summary>
> Figure 5: Example data point: Training example from FeedbackCollection [34], including the reference response, which is an optional field for Atla Selene Mini. This instance uses a similar prompt template to [10].
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.17195/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17195/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}