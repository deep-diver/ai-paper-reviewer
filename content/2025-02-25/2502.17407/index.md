---
title: "Linguistic Generalizability of Test-Time Scaling in Mathematical Reasoning"
summary: "Test-time scaling isn't a universal solve-all for multilingual math reasoning, unlike pre-training scaling, shows MCLM benchmark."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Yonsei University",]
showSummary: true
date: 2025-02-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.17407 {{< /keyword >}}
{{< keyword icon="writer" >}} Guijin Son et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.17407" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.17407" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.17407/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scaling pre-training compute improves multilinguality, but does test-time scaling work similarly? The paper introduces **MCLM, a multilingual math benchmark**, to test this. MCLM contains competition-level problems in 55 languages. Researchers tested outcome/process reward modeling (ORM/PRM) and budget forcing (BF) on Qwen2.5-1.5B Math and MR1-1.5B. Results reveal 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Test-time scaling methods don't generalize as effectively as pre-training scaling for multilingual math reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MR1-1.5B, despite its small size, achieves comparable performance to GPT-4o-Mini in multilingual math. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Increasing test-time compute can amplify performance variance and reduce cross-linguistic consistency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it highlights that **test-time scaling might not generalize effectively to multilingual tasks**, offering insights into the complexities of achieving true multilinguality in mathematical reasoning and guiding future research in more robust, cross-lingual methods.

------
#### Visual Insights



![](https://arxiv.org/html/2502.17407/x1.png)

> 🔼 This figure displays the performance of the Qwen2.5-1.5B-Math model on a multilingual mathematics benchmark (MCLM) when employing three different test-time scaling strategies: Outcome Reward Modeling (ORM), Process Reward Modeling (PRM), and Budget Forcing (BF).  The x-axis represents the three test-time scaling methods. The y-axis indicates the accuracy achieved by each method. The bars show the accuracy for each method, with error bars illustrating the variability of results.  Importantly, the results demonstrate that once the three scaling methods are adjusted to have roughly the same computational cost (measured in FLOPs), they all achieve similar performance on the MCLM benchmark. This suggests that the choice of test-time scaling method may be less crucial than the total computational budget used during inference.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance of Qwen2.5-1.5B-Math with different test-time scaling strategies.——Once configured to use comparable inference FLOPs, all three methods (Outcome Reward Modeling, Process Reward Modeling, and Budget Forcing) achieve similar performance.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1">MGSM</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1">Gemma2-9B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2">78.37</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.1">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2">82.27</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.4.1">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.4.2">88.16</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.1">Mistral-Large</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.2">89.01</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.1">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.2">87.36</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.7.1">o3-mini</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.7.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.7.2.1">89.30</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various large language models (LLMs) on the MGSM (Multilingual Generalization of Standard Math) benchmark.  The MGSM benchmark tests the ability of LLMs to solve mathematical word problems. The table shows the accuracy (percentage of correctly solved problems) achieved by each model. Note that the results for the o3-mini model reflect its performance as of January 31, 2025;  scores for all other models were taken from the work of Yang et al. (2024b).  This table helps illustrate the capabilities of different LLMs in solving mathematical reasoning tasks in a multilingual context.
> <details>
> <summary>read the caption</summary>
> Table 1: MGSM performance of different models. The 2025-01-31 version is used for o3-mini, remaining scores were sourced from the Yang et al. (2024b).
> </details>





### In-depth insights


#### Test-Time Scaling
**Test-time scaling** methods aim to enhance a language model's reasoning or generation capabilities without altering the pre-trained parameters. It's a crucial area because further scaling via pre-training becomes increasingly challenging due to data scarcity and high computational costs. The key question becomes: do the cross-lingual benefits observed in pre-training also extend to test-time scaling? Methods such as chain-of-thought prompting and scratchpads have shown promise, particularly in math and code-related tasks. Recent approaches have explored lengthening the chain-of-thought during test time, but challenges remain. **Mathematical reasoning**, with its expansive search space, remains relatively unexplored. One strategy involves external verifiers like best-of-N selection, Monte Carlo Tree Search, and reward modeling to navigate this complex space and refine the model's outputs. However, the effectiveness and generalizability of these strategies in multilingual settings need further scrutiny. The study of these is important, to see whether model consistency and the correctness of the answers are coherent or not.

#### MCLM Benchmark
The MCLM benchmark seems to be a **novel multilingual evaluation dataset** designed for complex mathematical reasoning. It likely aims to address limitations of existing benchmarks, such as MGSM, which current LLMs are saturating. The **key innovation is its multilingual nature**, covering a wide range of languages (potentially 55) to assess cross-lingual generalization. MCLM likely **incorporates competition-level math problems** (AIME and MATH) demanding more sophisticated reasoning skills than standard word problems. The **inclusion of human-translated questions** suggests a focus on mitigating biases from machine translation. It probably provides a more reliable measure of true mathematical reasoning capabilities in multilingual models. Given emphasis on the challenge, the MCLM likely introduces difficulty in the dataset

#### Beyond MGSM
The paper acknowledges the limitations of relying solely on MGSM (a translated version of GSM8K) for evaluating mathematical reasoning in LLMs, as recent models have saturated this benchmark. The paper **introduces MCLM a new benchmark to solve issues with MGSM** that is designed to assess more complex reasoning capabilities, incorporating competition-level math questions from multiple sources and across a wider range of languages (55) than typical benchmarks. This is crucial because current math reasoning datasets are limited to one or two languages. **MCLM mitigates translation biases by including translated data and human annotation**. The paper's approach highlights the need for benchmarks that can robustly assess cross-lingual understanding and reasoning, moving beyond simplistic tasks that no longer challenge state-of-the-art LLMs.

#### Limited Generality
**Limited generality** is a critical consideration when evaluating the findings. While the research might demonstrate the effectiveness of test-time scaling in specific settings or with particular models, its applicability across diverse scenarios remains uncertain. Factors such as dataset characteristics, model architectures, and the choice of scaling techniques can all influence the extent to which the observed benefits generalize. Furthermore, the study's focus on mathematical reasoning tasks might limit the transferability of its conclusions to other domains, such as natural language understanding or visual reasoning. It is crucial to acknowledge these limitations and cautiously extrapolate the results to new contexts.

#### Budget Scaling
Budget Forcing, as a test-time scaling method, involves controlling the computational budget allocated to a language model during inference. **Rather than solely relying on a model's inherent capacity to generate long chain-of-thoughts**, which can be unpredictable, budget forcing imposes constraints. The models are truncated and required to give answers when budget is exceeded or when falling short of a budget they are prompted for more steps. While seemingly beneficial, **the paper's findings suggest budget forcing doesn't consistently translate to improved multilingual performance.** This implies the effectiveness of **test-time scaling may depend heavily on language and task characteristics, potentially indicating that benefits observed in resource-rich languages do not easily transfer to other languages**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.17407/x2.png)

> 🔼 This figure illustrates three different test-time scaling strategies: Outcome Reward Modeling (ORM), Process Reward Modeling (PRM), and Budget Forcing (BF).  Each strategy is represented visually.  The blue boxes represent the model's outputs that were considered correct or accepted, while the red boxes show rejected or incorrect outputs.  The figure highlights the different approaches to scaling inference at test time and visually represents which outputs each method would accept or reject, emphasizing their differing processes.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of different inference-time scaling strategies. Blue boxes represent selected outputs, while red boxes indicate rejected ones.
> </details>



![](https://arxiv.org/html/2502.17407/x3.png)

> 🔼 This figure displays the number of tokens generated by 1.5B and 7B parameter models during greedy decoding, categorized by whether the generated answer was correct or not.  Each data point represents a single problem solved in one of the 55 languages included in the MCLM benchmark. The data is presented as a combination of box plots showing the overall distribution of token counts for each model size and correctness level, and overlaid scatter plots to show the individual data points for each language. This visualization helps to understand the relationship between model size, answer correctness, and the length of the model's reasoning process in different languages.
> <details>
> <summary>read the caption</summary>
> Figure 3: # of generated tokens for 1.5B and 7B models in a greedy setting, divided by correctness. Languages are represented as scatter plots, overlaid on box plots.
> </details>



![](https://arxiv.org/html/2502.17407/x4.png)

> 🔼 This figure displays the performance gains achieved by using Outcome Reward Modeling (ORM) compared to a standard greedy decoding approach.  The x-axis represents the baseline score (obtained through greedy decoding), while the y-axis shows the improvement gained by applying the ORM method. Different ORM settings (with varying numbers of generated responses: k = 2, 4, 8) are represented by separate lines and data clouds.  A KDE (Kernel Density Estimate) plot, visually depicted as a semi-transparent cloud, helps visualize the distribution of data points for each ORM setting.  Third-order polynomial regression curves provide a smooth fit to the data, illustrating the relationship between the baseline score and ORM performance improvements across various settings and across the two datasets (MT-MATH100 and MT-AIME2024).  This visualization helps to understand how the effectiveness of ORM varies depending on the baseline performance and which parameter settings (number of responses K) lead to the most gains in performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Gains of ORM compared to a greedy-decoding baseline. The semi-transparent “cloud” indicates the 2D data distribution via a KDE density plot, and the overlaid lines are third-order polynomial regressions modeling how each ORM setting scales with the baseline score.
> </details>



![](https://arxiv.org/html/2502.17407/x5.png)

> 🔼 This figure illustrates the computational cost (in FLOPs) of the Process Reward Modeling (PRM) test-time scaling method.  PRM involves generating multiple candidate continuations at each step of the reasoning process and selecting the best one using a reward model. The figure shows how the FLOPs change as a function of two key parameters: (1) the number of generation steps (S) and (2) the number of candidate continuations generated at each step (c). The left panel shows the FLOPs when using a large 72B parameter reward model, while the right panel shows the FLOPs when using a smaller 7B parameter reward model.  Importantly, the configurations in both panels have been adjusted to ensure that the total computational cost (FLOPs) remains roughly equal for each configuration, allowing for a fair comparison of the different parameter settings.
> <details>
> <summary>read the caption</summary>
> Figure 5: PRM inference FLOPs as a function of generation steps S𝑆Sitalic_S and candidates per step c𝑐citalic_c. The left panel uses a verifier size of 72B, while the right panel uses a 7B RM, displaying adjusted configurations to yield similar costs.
> </details>



![](https://arxiv.org/html/2502.17407/x6.png)

> 🔼 This figure analyzes the performance and consistency of the Process Reward Modeling (PRM) method across different inference FLOPs budgets. The left panel shows the average performance of PRM on 14 languages using 7B and 72B reward models, fitted with second-degree polynomial regressions.  The right panel displays Fleiss’ kappa (measuring inter-annotator agreement) and standard deviation for the same 14 languages.  The analysis demonstrates the relationship between the computational cost (FLOPs) and both the accuracy and consistency of PRM across languages, highlighting that increased FLOPs does not guarantee better multilingual performance or consistency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Inference FLOPs versus PRM performance and consistency. (Left) Second-degree polynomial regressions for average performance on 14 languages, comparing the 7B (blue) and 72B (green) reward models. (Right) Fleiss’ kappa (top) and standard deviation (bottom) plotted against the same FLOPs budget; the fitted curves reveal no clear monotonic trend.
> </details>



![](https://arxiv.org/html/2502.17407/x7.png)

> 🔼 Figure 7 is a graph comparing the performance of Process Reward Modeling (PRM) and Outcome Reward Modeling (ORM) on two mathematical reasoning benchmarks: MATH and AIME.  The x-axis represents the inference FLOPS (floating point operations) used, reflecting computational cost. The y-axis shows the accuracy, or percentage of correctly solved problems.  Separate lines are plotted for both the 1.5B parameter model (plus markers) and the 7B parameter model (stars).  Blue lines indicate PRM, while green lines represent ORM. The white boxes highlight the difference in accuracy between ORM and PRM at the highest FLOPS setting for each model/benchmark combination, illustrating how much better ORM performs than PRM at higher computational costs.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of PRM vs. ORM performance on MATH (solid lines) and AIME (dashed lines). 1.5B models are shown with plus markers, 7B models with stars. Blue lines represent PRM, green lines represent ORM. White box annotations indicate the performance difference (ORM − PRM) at the highest compute setting for each line.
> </details>



![](https://arxiv.org/html/2502.17407/x8.png)

> 🔼 This figure shows the performance of two fine-tuned models, Qwen2.5-Math-1.5B + SFT and Qwen2.5-Math-1.5B + MT-SFT, across multiple training checkpoints.  The y-axis represents the average accuracy achieved by the models, and the x-axis shows the number of training checkpoints. Error bars are included to display the variability or uncertainty in the model's performance.  The shaded region visually represents the mean plus or minus one standard deviation of the MT-SFT model's performance, illustrating the range of its performance across different checkpoints.
> <details>
> <summary>read the caption</summary>
> Figure 8: Performance of Qwen2.5-Math-1.5B +SFT and + MT-SFT at each training checkpoint. Average score and error bars for each checkpoint are displayed. The shaded region is the mean ±plus-or-minus\pm± standard deviation for MT-SFT.
> </details>



![](https://arxiv.org/html/2502.17407/x9.png)

> 🔼 This figure shows the performance of the multilingual large language model (MR1) on the MT-AIME2024 dataset using the budget-forcing method with varying budget levels (BF = 2048, 4096, and 8192).  Each point represents the performance of MR1 in a specific language, illustrating the impact of the budget on model performance across various languages. The solid lines display the average performance for each budget level, while the dashed lines highlight the performance for selected languages, serving as a reference point for comparing performance across languages and budget levels.
> <details>
> <summary>read the caption</summary>
> Figure 9: Performance of MR1 on MT-AIME2024 at B⁢F={2048,4096,8192}𝐵𝐹204840968192BF=\{2048,4096,8192\}italic_B italic_F = { 2048 , 4096 , 8192 }. Grey dots represent individual languages. Solid lines indicate average performance, while dashed lines highlight reference performances for selected languages.
> </details>



![](https://arxiv.org/html/2502.17407/x10.png)

> 🔼 This heatmap visualizes the selection of IMO (International Mathematical Olympiad) problems for the M-IMO subset of the MCLM benchmark. Each row represents a year from 2006 to 2024, and each column corresponds to one of the six problems (Q1-Q6) presented in each year's competition.  Green cells indicate that a problem from that year was included in the M-IMO dataset, while gray cells show problems that were excluded. This provides a clear overview of which problems across the competition years were selected for this specific subset.
> <details>
> <summary>read the caption</summary>
> Figure 10: Heatmap representation of IMO problems from 2006 to 2024. Each row corresponds to a competition year, and each column represents a problem (Q1–Q6). Green cells indicate questions that have been included in the M-IMO subset, while gray cells represent problems that were not selected.
> </details>



![](https://arxiv.org/html/2502.17407/x11.png)

> 🔼 This figure shows the success rate of different large language models (LLMs) in solving math problems from various multilingual datasets.  The x-axis represents the different LLMs used, including OLMo2 models (using base versions without instruction tuning) and Qwen2.5 models (using instruction-tuned versions). The y-axis displays the percentage of problems successfully solved by each model. The Euler-Instruct dataset stands out, demonstrating a noticeably lower success rate than others, thus highlighting its increased difficulty compared to the other datasets.
> <details>
> <summary>read the caption</summary>
> Figure 11: Solve rates (%) of different multilingual math datasets evaluated. For the OLMo2 series, we use the base models, while for the Qwen2.5 series, the instruct-tuned variants are used. Euler-Instruct presents a significantly lower solve rate, indicating its greater difficulty.
> </details>



![](https://arxiv.org/html/2502.17407/x12.png)

> 🔼 This figure presents the results of an ablation study on the training data for multilingual mathematical reasoning. The left panel displays the accuracy of different models on MT-MATH500, using various sizes of training datasets in different languages.  The right panel shows the average performance on MT-AIME2024 using the same training data configurations.  The plots illustrate how the size and composition of the training data influence model performance on these two distinct mathematical reasoning benchmarks.  The results reveal that more data, and the inclusion of more languages leads to better performance, especially on MT-MATH100.
> <details>
> <summary>read the caption</summary>
> Figure 12: Model Results from Table 9. Left shows accuracy on MT-MATH500 (entire translated subset for language group (B)), and right shows average performance of MT-AIME2024.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T2.1">
<tr class="ltx_tr" id="S2.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1">Subset</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.1">Source Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1">Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.4.1">Sample Size per Language</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S2.T2.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.5.1">Evaluation Method</span></td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.2.1">MT-MATH100</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T2.1.2.2">Math-500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.2.3">55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.1.2.4">100</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S2.T2.1.2.5">Rule-based verifier</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.3">
<td class="ltx_td ltx_align_left" id="S2.T2.1.3.1">MT-AIME2024</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.3.2">AIME 2024</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.3.3">55</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.3.4">30</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.3.5">Rule-based verifier</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.4">
<td class="ltx_td ltx_align_left" id="S2.T2.1.4.1">M-IMO</td>
<td class="ltx_td ltx_align_left" id="S2.T2.1.4.2">IMO (2006, 2024)</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.3">38</td>
<td class="ltx_td ltx_align_center" id="S2.T2.1.4.4">22–27</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T2.1.4.5">LLM-as-a-Judge</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.1.5.1">M-MO</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T2.1.5.2">Domestic/Regional Olympiads</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.5.3">11</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.1.5.4">28–31</td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_bb" id="S2.T2.1.5.5">LLM-as-a-Judge</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the Multilingual Competition Level Math (MCLM) benchmark dataset.  It breaks down the dataset into four subsets, specifying for each subset the original source benchmark (e.g., AIME, Math-500, IMO), the number of languages represented, the number of samples per language, and the method used for evaluating the model's performance on those samples.  The table provides a high-level overview of the MCLM dataset's structure, highlighting the diversity of languages and question types included.
> <details>
> <summary>read the caption</summary>
> Table 2: Overview of benchmark subsets: source benchmarks, language coverage (full lists in the appendix), sample sizes, and evaluation methods. Please see Appendix A.1 for the full list of languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.6">
<tr class="ltx_tr" id="S3.T3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1"><math alttext="k" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mi id="S3.T3.1.1.1.m1.1.1" xref="S3.T3.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">italic_k</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.2.2"><math alttext="(S,c)" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.2"><semantics id="S3.T3.2.2.2.m1.2a"><mrow id="S3.T3.2.2.2.m1.2.3.2" xref="S3.T3.2.2.2.m1.2.3.1.cmml"><mo id="S3.T3.2.2.2.m1.2.3.2.1" stretchy="false" xref="S3.T3.2.2.2.m1.2.3.1.cmml">(</mo><mi id="S3.T3.2.2.2.m1.1.1" xref="S3.T3.2.2.2.m1.1.1.cmml">S</mi><mo id="S3.T3.2.2.2.m1.2.3.2.2" xref="S3.T3.2.2.2.m1.2.3.1.cmml">,</mo><mi id="S3.T3.2.2.2.m1.2.2" xref="S3.T3.2.2.2.m1.2.2.cmml">c</mi><mo id="S3.T3.2.2.2.m1.2.3.2.3" stretchy="false" xref="S3.T3.2.2.2.m1.2.3.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.2b"><interval closure="open" id="S3.T3.2.2.2.m1.2.3.1.cmml" xref="S3.T3.2.2.2.m1.2.3.2"><ci id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1">𝑆</ci><ci id="S3.T3.2.2.2.m1.2.2.cmml" xref="S3.T3.2.2.2.m1.2.2">𝑐</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.2c">(S,c)</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.2d">( italic_S , italic_c )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.3.3.3"><math alttext="BF" class="ltx_Math" display="inline" id="S3.T3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.m1.1a"><mrow id="S3.T3.3.3.3.m1.1.1" xref="S3.T3.3.3.3.m1.1.1.cmml"><mi id="S3.T3.3.3.3.m1.1.1.2" xref="S3.T3.3.3.3.m1.1.1.2.cmml">B</mi><mo id="S3.T3.3.3.3.m1.1.1.1" xref="S3.T3.3.3.3.m1.1.1.1.cmml">⁢</mo><mi id="S3.T3.3.3.3.m1.1.1.3" xref="S3.T3.3.3.3.m1.1.1.3.cmml">F</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.m1.1b"><apply id="S3.T3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1"><times id="S3.T3.3.3.3.m1.1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1.1"></times><ci id="S3.T3.3.3.3.m1.1.1.2.cmml" xref="S3.T3.3.3.3.m1.1.1.2">𝐵</ci><ci id="S3.T3.3.3.3.m1.1.1.3.cmml" xref="S3.T3.3.3.3.m1.1.1.3">𝐹</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.m1.1c">BF</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.m1.1d">italic_B italic_F</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.4.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.4.3">(3, 3)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.4.1">
<math alttext="\approx 2048" class="ltx_Math" display="inline" id="S3.T3.4.4.1.m1.1"><semantics id="S3.T3.4.4.1.m1.1a"><mrow id="S3.T3.4.4.1.m1.1.1" xref="S3.T3.4.4.1.m1.1.1.cmml"><mi id="S3.T3.4.4.1.m1.1.1.2" xref="S3.T3.4.4.1.m1.1.1.2.cmml"></mi><mo id="S3.T3.4.4.1.m1.1.1.1" xref="S3.T3.4.4.1.m1.1.1.1.cmml">≈</mo><mn id="S3.T3.4.4.1.m1.1.1.3" xref="S3.T3.4.4.1.m1.1.1.3.cmml">2048</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.1.m1.1b"><apply id="S3.T3.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.1.m1.1.1"><approx id="S3.T3.4.4.1.m1.1.1.1.cmml" xref="S3.T3.4.4.1.m1.1.1.1"></approx><csymbol cd="latexml" id="S3.T3.4.4.1.m1.1.1.2.cmml" xref="S3.T3.4.4.1.m1.1.1.2">absent</csymbol><cn id="S3.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.4.4.1.m1.1.1.3">2048</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.1.m1.1c">\approx 2048</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.1.m1.1d">≈ 2048</annotation></semantics></math> tokens</td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.5">
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.2">4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.3">(4, 5)</td>
<td class="ltx_td ltx_align_center" id="S3.T3.5.5.1">
<math alttext="\approx 4096" class="ltx_Math" display="inline" id="S3.T3.5.5.1.m1.1"><semantics id="S3.T3.5.5.1.m1.1a"><mrow id="S3.T3.5.5.1.m1.1.1" xref="S3.T3.5.5.1.m1.1.1.cmml"><mi id="S3.T3.5.5.1.m1.1.1.2" xref="S3.T3.5.5.1.m1.1.1.2.cmml"></mi><mo id="S3.T3.5.5.1.m1.1.1.1" xref="S3.T3.5.5.1.m1.1.1.1.cmml">≈</mo><mn id="S3.T3.5.5.1.m1.1.1.3" xref="S3.T3.5.5.1.m1.1.1.3.cmml">4096</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.1.m1.1b"><apply id="S3.T3.5.5.1.m1.1.1.cmml" xref="S3.T3.5.5.1.m1.1.1"><approx id="S3.T3.5.5.1.m1.1.1.1.cmml" xref="S3.T3.5.5.1.m1.1.1.1"></approx><csymbol cd="latexml" id="S3.T3.5.5.1.m1.1.1.2.cmml" xref="S3.T3.5.5.1.m1.1.1.2">absent</csymbol><cn id="S3.T3.5.5.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.5.5.1.m1.1.1.3">4096</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.1.m1.1c">\approx 4096</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.1.m1.1d">≈ 4096</annotation></semantics></math> tokens</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.6.6.2">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.6.6.3">(5, 8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.6.6.1">
<math alttext="\approx 8192" class="ltx_Math" display="inline" id="S3.T3.6.6.1.m1.1"><semantics id="S3.T3.6.6.1.m1.1a"><mrow id="S3.T3.6.6.1.m1.1.1" xref="S3.T3.6.6.1.m1.1.1.cmml"><mi id="S3.T3.6.6.1.m1.1.1.2" xref="S3.T3.6.6.1.m1.1.1.2.cmml"></mi><mo id="S3.T3.6.6.1.m1.1.1.1" xref="S3.T3.6.6.1.m1.1.1.1.cmml">≈</mo><mn id="S3.T3.6.6.1.m1.1.1.3" xref="S3.T3.6.6.1.m1.1.1.3.cmml">8192</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.1.m1.1b"><apply id="S3.T3.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.1.m1.1.1"><approx id="S3.T3.6.6.1.m1.1.1.1.cmml" xref="S3.T3.6.6.1.m1.1.1.1"></approx><csymbol cd="latexml" id="S3.T3.6.6.1.m1.1.1.2.cmml" xref="S3.T3.6.6.1.m1.1.1.2">absent</csymbol><cn id="S3.T3.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.6.6.1.m1.1.1.3">8192</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.1.m1.1c">\approx 8192</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.1.m1.1d">≈ 8192</annotation></semantics></math> tokens</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the configurations used for Process Reward Modeling (PRM) and Budget Forcing (BF), two test-time scaling methods.  The goal was to ensure that the computational cost (measured in FLOPs) for PRM and BF matched the cost of Outcome Reward Modeling (ORM), which served as a baseline.  The table shows different combinations of parameters for PRM (number of generation steps *S*, number of candidate continuations *c*) and BF (token budget *BF*) such that their FLOPs are approximately equal to those of ORM for various response counts (k).
> <details>
> <summary>read the caption</summary>
> Table 3: Selected configurations for PRM and BF. Each S𝑆Sitalic_S, c𝑐citalic_c, and B⁢F𝐵𝐹BFitalic_B italic_F is set so that the inference FLOPs match ORM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.28">
<tr class="ltx_tr" id="S5.T4.28.29">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.28.29.1">Models</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.28.29.2">MT-MATH100</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.28.29.3">MT-AIME2024</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.28.29.4">M-IMO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.28.29.5">M-MO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.28.29.6">Average</td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.5">Qwen2.5-Math-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.1">42.32 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><csymbol cd="latexml" id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">±</annotation></semantics></math> 8.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.2.2">16.36 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.2.2.2.m1.1"><semantics id="S5.T4.2.2.2.m1.1a"><mo id="S5.T4.2.2.2.m1.1.1" xref="S5.T4.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.2.m1.1b"><csymbol cd="latexml" id="S5.T4.2.2.2.m1.1.1.cmml" xref="S5.T4.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.2.m1.1d">±</annotation></semantics></math> 6.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3">12.23 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.3.3.3.m1.1"><semantics id="S5.T4.3.3.3.m1.1a"><mo id="S5.T4.3.3.3.m1.1.1" xref="S5.T4.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.3.m1.1b"><csymbol cd="latexml" id="S5.T4.3.3.3.m1.1.1.cmml" xref="S5.T4.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.3.m1.1d">±</annotation></semantics></math> 6.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.4">25.00 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.4.4.4.m1.1"><semantics id="S5.T4.4.4.4.m1.1a"><mo id="S5.T4.4.4.4.m1.1.1" xref="S5.T4.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.4.m1.1b"><csymbol cd="latexml" id="S5.T4.4.4.4.m1.1.1.cmml" xref="S5.T4.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.4.m1.1d">±</annotation></semantics></math> 19.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.6">23.98</td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.8.8.5">Deepseek-R1-1.5B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.5.1">49.40 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.5.5.1.m1.1"><semantics id="S5.T4.5.5.1.m1.1a"><mo id="S5.T4.5.5.1.m1.1.1" xref="S5.T4.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.1.m1.1b"><csymbol cd="latexml" id="S5.T4.5.5.1.m1.1.1.cmml" xref="S5.T4.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.1.m1.1d">±</annotation></semantics></math> 8.84</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.6.2">17.21 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.6.6.2.m1.1"><semantics id="S5.T4.6.6.2.m1.1a"><mo id="S5.T4.6.6.2.m1.1.1" xref="S5.T4.6.6.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.6.6.2.m1.1b"><csymbol cd="latexml" id="S5.T4.6.6.2.m1.1.1.cmml" xref="S5.T4.6.6.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.6.6.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.6.6.2.m1.1d">±</annotation></semantics></math> 6.69</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.7.3">21.94 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.7.7.3.m1.1"><semantics id="S5.T4.7.7.3.m1.1a"><mo id="S5.T4.7.7.3.m1.1.1" xref="S5.T4.7.7.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.7.7.3.m1.1b"><csymbol cd="latexml" id="S5.T4.7.7.3.m1.1.1.cmml" xref="S5.T4.7.7.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.7.7.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.7.7.3.m1.1d">±</annotation></semantics></math> 6.75</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.4">26.77 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.8.8.4.m1.1"><semantics id="S5.T4.8.8.4.m1.1a"><mo id="S5.T4.8.8.4.m1.1.1" xref="S5.T4.8.8.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.8.8.4.m1.1b"><csymbol cd="latexml" id="S5.T4.8.8.4.m1.1.1.cmml" xref="S5.T4.8.8.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.8.8.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.8.8.4.m1.1d">±</annotation></semantics></math> 19.83</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.8.6">28.83</td>
</tr>
<tr class="ltx_tr" id="S5.T4.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.12.12.5">GPT-4o-Mini</td>
<td class="ltx_td ltx_align_center" id="S5.T4.9.9.1">70.30 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.9.9.1.m1.1"><semantics id="S5.T4.9.9.1.m1.1a"><mo id="S5.T4.9.9.1.m1.1.1" xref="S5.T4.9.9.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.9.9.1.m1.1b"><csymbol cd="latexml" id="S5.T4.9.9.1.m1.1.1.cmml" xref="S5.T4.9.9.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.9.9.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.9.9.1.m1.1d">±</annotation></semantics></math> 3.68</td>
<td class="ltx_td ltx_align_center" id="S5.T4.10.10.2">20.18 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.10.10.2.m1.1"><semantics id="S5.T4.10.10.2.m1.1a"><mo id="S5.T4.10.10.2.m1.1.1" xref="S5.T4.10.10.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.10.10.2.m1.1b"><csymbol cd="latexml" id="S5.T4.10.10.2.m1.1.1.cmml" xref="S5.T4.10.10.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.10.10.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.10.10.2.m1.1d">±</annotation></semantics></math> 6.83</td>
<td class="ltx_td ltx_align_center" id="S5.T4.11.11.3">13.33 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.11.11.3.m1.1"><semantics id="S5.T4.11.11.3.m1.1a"><mo id="S5.T4.11.11.3.m1.1.1" xref="S5.T4.11.11.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.11.11.3.m1.1b"><csymbol cd="latexml" id="S5.T4.11.11.3.m1.1.1.cmml" xref="S5.T4.11.11.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.11.11.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.11.11.3.m1.1d">±</annotation></semantics></math> 5.36</td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.4">30.81 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.12.12.4.m1.1"><semantics id="S5.T4.12.12.4.m1.1a"><mo id="S5.T4.12.12.4.m1.1.1" xref="S5.T4.12.12.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.12.12.4.m1.1b"><csymbol cd="latexml" id="S5.T4.12.12.4.m1.1.1.cmml" xref="S5.T4.12.12.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.12.12.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.12.12.4.m1.1d">±</annotation></semantics></math> 15.80</td>
<td class="ltx_td ltx_align_center" id="S5.T4.12.12.6">33.66</td>
</tr>
<tr class="ltx_tr" id="S5.T4.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.16.16.5">o3-Mini</td>
<td class="ltx_td ltx_align_center" id="S5.T4.13.13.1">
<span class="ltx_text ltx_font_bold" id="S5.T4.13.13.1.1">84.89</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.13.13.1.m1.1"><semantics id="S5.T4.13.13.1.m1.1a"><mo id="S5.T4.13.13.1.m1.1.1" xref="S5.T4.13.13.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.13.13.1.m1.1b"><csymbol cd="latexml" id="S5.T4.13.13.1.m1.1.1.cmml" xref="S5.T4.13.13.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.13.13.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.13.13.1.m1.1d">±</annotation></semantics></math> 2.80</td>
<td class="ltx_td ltx_align_center" id="S5.T4.14.14.2">
<span class="ltx_text ltx_font_bold" id="S5.T4.14.14.2.1">45.33</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.14.14.2.m1.1"><semantics id="S5.T4.14.14.2.m1.1a"><mo id="S5.T4.14.14.2.m1.1.1" xref="S5.T4.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.14.14.2.m1.1b"><csymbol cd="latexml" id="S5.T4.14.14.2.m1.1.1.cmml" xref="S5.T4.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.14.14.2.m1.1d">±</annotation></semantics></math> 5.35</td>
<td class="ltx_td ltx_align_center" id="S5.T4.15.15.3">
<span class="ltx_text ltx_font_bold" id="S5.T4.15.15.3.1">29.75</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.15.15.3.m1.1"><semantics id="S5.T4.15.15.3.m1.1a"><mo id="S5.T4.15.15.3.m1.1.1" xref="S5.T4.15.15.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.15.15.3.m1.1b"><csymbol cd="latexml" id="S5.T4.15.15.3.m1.1.1.cmml" xref="S5.T4.15.15.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.15.15.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.15.15.3.m1.1d">±</annotation></semantics></math> 6.86</td>
<td class="ltx_td ltx_align_center" id="S5.T4.16.16.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.16.16.4.1">51.42</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.16.16.4.m1.1"><semantics id="S5.T4.16.16.4.m1.1a"><mo id="S5.T4.16.16.4.m1.1.1" xref="S5.T4.16.16.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.16.16.4.m1.1b"><csymbol cd="latexml" id="S5.T4.16.16.4.m1.1.1.cmml" xref="S5.T4.16.16.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.16.16.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.16.16.4.m1.1d">±</annotation></semantics></math> 16.94</td>
<td class="ltx_td ltx_align_center" id="S5.T4.16.16.6"><span class="ltx_text ltx_font_bold" id="S5.T4.16.16.6.1">52.85</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.20.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.20.20.5">Qwen2.5-Math-1.5B + SFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.17.17.1">37.47 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.17.17.1.m1.1"><semantics id="S5.T4.17.17.1.m1.1a"><mo id="S5.T4.17.17.1.m1.1.1" xref="S5.T4.17.17.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.17.17.1.m1.1b"><csymbol cd="latexml" id="S5.T4.17.17.1.m1.1.1.cmml" xref="S5.T4.17.17.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.17.17.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.17.17.1.m1.1d">±</annotation></semantics></math> 7.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.18.18.2">14.85 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.18.18.2.m1.1"><semantics id="S5.T4.18.18.2.m1.1a"><mo id="S5.T4.18.18.2.m1.1.1" xref="S5.T4.18.18.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.18.18.2.m1.1b"><csymbol cd="latexml" id="S5.T4.18.18.2.m1.1.1.cmml" xref="S5.T4.18.18.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.18.18.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.18.18.2.m1.1d">±</annotation></semantics></math> 6.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.19.19.3">10.50 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.19.19.3.m1.1"><semantics id="S5.T4.19.19.3.m1.1a"><mo id="S5.T4.19.19.3.m1.1.1" xref="S5.T4.19.19.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.19.19.3.m1.1b"><csymbol cd="latexml" id="S5.T4.19.19.3.m1.1.1.cmml" xref="S5.T4.19.19.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.19.19.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.19.19.3.m1.1d">±</annotation></semantics></math> 5.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.20.20.4">18.40 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.20.20.4.m1.1"><semantics id="S5.T4.20.20.4.m1.1a"><mo id="S5.T4.20.20.4.m1.1.1" xref="S5.T4.20.20.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.20.20.4.m1.1b"><csymbol cd="latexml" id="S5.T4.20.20.4.m1.1.1.cmml" xref="S5.T4.20.20.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.20.20.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.20.20.4.m1.1d">±</annotation></semantics></math> 14.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.20.20.6">20.30</td>
</tr>
<tr class="ltx_tr" id="S5.T4.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.24.24.5">Qwen2.5-Math-1.5B + MT-SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T4.21.21.1">42.02 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.21.21.1.m1.1"><semantics id="S5.T4.21.21.1.m1.1a"><mo id="S5.T4.21.21.1.m1.1.1" xref="S5.T4.21.21.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.21.21.1.m1.1b"><csymbol cd="latexml" id="S5.T4.21.21.1.m1.1.1.cmml" xref="S5.T4.21.21.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.21.21.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.21.21.1.m1.1d">±</annotation></semantics></math> 7.46</td>
<td class="ltx_td ltx_align_center" id="S5.T4.22.22.2">16.67 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.22.22.2.m1.1"><semantics id="S5.T4.22.22.2.m1.1a"><mo id="S5.T4.22.22.2.m1.1.1" xref="S5.T4.22.22.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.22.22.2.m1.1b"><csymbol cd="latexml" id="S5.T4.22.22.2.m1.1.1.cmml" xref="S5.T4.22.22.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.22.22.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.22.22.2.m1.1d">±</annotation></semantics></math> 7.31</td>
<td class="ltx_td ltx_align_center" id="S5.T4.23.23.3">10.52 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.23.23.3.m1.1"><semantics id="S5.T4.23.23.3.m1.1a"><mo id="S5.T4.23.23.3.m1.1.1" xref="S5.T4.23.23.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.23.23.3.m1.1b"><csymbol cd="latexml" id="S5.T4.23.23.3.m1.1.1.cmml" xref="S5.T4.23.23.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.23.23.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.23.23.3.m1.1d">±</annotation></semantics></math> 4.63</td>
<td class="ltx_td ltx_align_center" id="S5.T4.24.24.4">19.92 <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.24.24.4.m1.1"><semantics id="S5.T4.24.24.4.m1.1a"><mo id="S5.T4.24.24.4.m1.1.1" xref="S5.T4.24.24.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.24.24.4.m1.1b"><csymbol cd="latexml" id="S5.T4.24.24.4.m1.1.1.cmml" xref="S5.T4.24.24.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.24.24.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.24.24.4.m1.1d">±</annotation></semantics></math> 12.68</td>
<td class="ltx_td ltx_align_center" id="S5.T4.24.24.6">22.28</td>
</tr>
<tr class="ltx_tr" id="S5.T4.28.28">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T4.28.28.5">Deepseek-R1-1.5B + MT-SFT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.25.25.1">
<span class="ltx_text ltx_font_bold" id="S5.T4.25.25.1.1">55.61</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.25.25.1.m1.1"><semantics id="S5.T4.25.25.1.m1.1a"><mo id="S5.T4.25.25.1.m1.1.1" xref="S5.T4.25.25.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.25.25.1.m1.1b"><csymbol cd="latexml" id="S5.T4.25.25.1.m1.1.1.cmml" xref="S5.T4.25.25.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.25.25.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.25.25.1.m1.1d">±</annotation></semantics></math> 10.93</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.26.26.2">
<span class="ltx_text ltx_font_bold" id="S5.T4.26.26.2.1">19.94</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.26.26.2.m1.1"><semantics id="S5.T4.26.26.2.m1.1a"><mo id="S5.T4.26.26.2.m1.1.1" xref="S5.T4.26.26.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.26.26.2.m1.1b"><csymbol cd="latexml" id="S5.T4.26.26.2.m1.1.1.cmml" xref="S5.T4.26.26.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.26.26.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.26.26.2.m1.1d">±</annotation></semantics></math> 8.10</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.27.27.3">
<span class="ltx_text ltx_font_bold" id="S5.T4.27.27.3.1">19.20</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.27.27.3.m1.1"><semantics id="S5.T4.27.27.3.m1.1a"><mo id="S5.T4.27.27.3.m1.1.1" xref="S5.T4.27.27.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.27.27.3.m1.1b"><csymbol cd="latexml" id="S5.T4.27.27.3.m1.1.1.cmml" xref="S5.T4.27.27.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.27.27.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.27.27.3.m1.1d">±</annotation></semantics></math> 6.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.28.28.4">
<span class="ltx_text ltx_font_bold" id="S5.T4.28.28.4.1">28.97</span> <math alttext="\pm" class="ltx_Math" display="inline" id="S5.T4.28.28.4.m1.1"><semantics id="S5.T4.28.28.4.m1.1a"><mo id="S5.T4.28.28.4.m1.1.1" xref="S5.T4.28.28.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T4.28.28.4.m1.1b"><csymbol cd="latexml" id="S5.T4.28.28.4.m1.1.1.cmml" xref="S5.T4.28.28.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.28.28.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T4.28.28.4.m1.1d">±</annotation></semantics></math> 16.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.28.28.6"><span class="ltx_text ltx_font_bold" id="S5.T4.28.28.6.1">30.93</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various large language models (LLMs) on the Multilingual Competition Level Math (MCLM) benchmark.  The MCLM benchmark is a challenging multilingual math reasoning dataset. The table shows the accuracy of each LLM on four different subsets of MCLM, representing varying levels of difficulty and language coverage.  The best-performing model for each subset is highlighted in bold.  For a more detailed breakdown of individual LLM performance per language, refer to Appendix C.
> <details>
> <summary>read the caption</summary>
> Table 4: Model performance across MCLM. Best model highlighted in bold for each panel. For results per language see Appendix C.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.1">
<tr class="ltx_tr" id="A1.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1">Lang. Group</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T5.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.2.1">
<span class="ltx_p" id="A1.T5.1.1.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.2.1.1.1">Languages (ISO Codes, Sorted Alphabetically)</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.3.1"># Lang.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.2.1" style="padding-bottom:4.30554pt;">(A)</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.1.2.2" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.2.2.1">
<span class="ltx_p" id="A1.T5.1.2.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.1.2.2.1.1.1">af, ar, bg, bn, ca, cs, cy, da, de, el, en, es, et, fa, fi, fr, gu, he, hi, hr, hu, id, it, ja, kn, ko, lt, lv, mk, ml, mr, ne, nl, no, pa, pl, pt, ro, ru, sk, sl, so, sq, sv, sw, ta, te, th, tl, tr, uk, ur, vi, zh-cn, zh-tw</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.2.3" style="padding-bottom:4.30554pt;">55</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.3.1" style="padding-bottom:4.30554pt;">(B)</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.1.3.2" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.3.2.1">
<span class="ltx_p" id="A1.T5.1.3.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.1.3.2.1.1.1">af, ar, de, en, es, fr, he, id, it, ja, ko, tr, vi, zh-cn</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.3.3" style="padding-bottom:4.30554pt;">14</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.4.1" style="padding-bottom:4.30554pt;">(C)</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T5.1.4.2" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.4.2.1">
<span class="ltx_p" id="A1.T5.1.4.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.1.4.2.1.1.1">af, ar, bg, cs, da, de, el, en, et, es, fi, fr, he, hr, hu, id, it, ja, ko, lt, lv, mk, nl, no, pl, pt, ro, ru, sk, sl, sq, sv, th, tr, uk, vi, zh-cn, zh-tw</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T5.1.4.3" style="padding-bottom:4.30554pt;">38</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T5.1.5.1">(D)</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T5.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.5.2.1">
<span class="ltx_p" id="A1.T5.1.5.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T5.1.5.2.1.1.1">cs, de, en, fr, ja, ko, nl, pl, ru, sk, zh-cn</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.5.3">11</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the languages included in each subset of the MCLM benchmark.  The MCLM benchmark is composed of four subsets: MT-MATH100, MT-AIME2024, M-IMO, and M-MO.  Each subset uses a different selection of languages for its questions, and this table provides the full list of languages in each.  The number of languages in each subset is also indicated.
> <details>
> <summary>read the caption</summary>
> Table 5: Full language lists for each dataset subset. MT-MATH100, MT-AIME2024, M-IMO, and M-MO cover 55, 38, and 11 ISO codes respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.1">
<tr class="ltx_tr" id="A1.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1">Rank</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.3.1">MATH-500</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.4.1">MATH-100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.5.1">Score Diff.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.6.1">Rank Diff.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.2.1">1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.2.2">o3-mini</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.3">85.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.2.4">85.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.5">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.2.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.3.1">2</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.3.2">Eurus-2-7B-PRIME</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.3">73.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.3.4">76.63</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.5">2.86</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.3.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.4.1">3</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.4.2">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.3">73.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.4.4">75.98</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.5">2.27</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.4.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.5.1">4</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.5.2">DeepSeek-R1-Distill-Qwen-32B</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.3">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.5.4">75.98</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.5">3.24</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.5.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.6.1">5</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.6.2">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.3">67.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.6.4">68.69</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.5">1.44</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.6.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.6.6.1" style="color:#90EE90;">1<span class="ltx_text ltx_font_medium" id="A1.T6.1.6.6.1.1"> ▲</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.7.1">6</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.7.2">AceMath-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.3">65.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.7.4">70.06</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.5">4.16</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.7.6"><span class="ltx_text ltx_font_bold" id="A1.T6.1.7.6.1" style="color:#FF6666;">1<span class="ltx_text ltx_font_medium" id="A1.T6.1.7.6.1.1"> ▼</span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.8.1">7</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.8.2">AceMath-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.3">65.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.8.4">68.19</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.5">2.58</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.8.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.9.1">8</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.9.2">DeepSeek-R1-Distill-Qwen-1.5B</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.9.3">53.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.9.4">56.78</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.9.5">3.05</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.9.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.10.1">9</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.10.2">Qwen2.5-Math-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.10.3">51.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.10.4">51.30</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.10.5">0.51</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.10.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.1.11.1">10</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.1.11.2">Qwen2.5-Math-1.5B-OREO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.11.3">39.92</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.1.11.4">38.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.11.5">1.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.11.6">-</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of ten different language models on two math problem datasets: MATH-500 and a subset of MATH-500 called MATH-100.  It shows each model's score on both datasets, the difference in scores between the two datasets for each model, and how the model's rank changed from MATH-500 to MATH-100.  This helps to assess the consistency of model performance across different dataset sizes and identifies models whose performance is particularly sensitive to dataset size changes.
> <details>
> <summary>read the caption</summary>
> Table 6: Model rankings and score comparison between MATH-500 and MATH-100. The score difference was computed as the absolute difference between the MATH-500 and MATH-100 scores. The rank difference indicates the change in ranking on MATH-100 relative to the performance on MATH-500.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tr class="ltx_tr" id="A1.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T7.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.2.1">
<span class="ltx_p" id="A1.T7.1.1.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.1.1">Competition Links</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.2.1">French</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T7.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.2.1">
<span class="ltx_p" id="A1.T7.1.2.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://euler.ac-versailles.fr/spip.php?rubrique207" title="">https://euler.ac-versailles.fr/spip.php?rubrique207</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.3.1">German</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.2.1">
<span class="ltx_p" id="A1.T7.1.3.2.1.1" style="width:284.5pt;">DeMO</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.4.1">Japanese</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.2.1">
<span class="ltx_p" id="A1.T7.1.4.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://www.imojp.org/domestic/jmo_overview.html#Problems" title="">https://www.imojp.org/domestic/jmo_overview.html#Problems</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.5.1">Dutch</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.2.1">
<span class="ltx_p" id="A1.T7.1.5.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://prime.ugent.be/activiteiten/puma/" title="">https://prime.ugent.be/activiteiten/puma/</a>
<br class="ltx_break"/><a class="ltx_ref ltx_url" href="https://wiskundeolympiade.nl/wedstrijdarchief/1e-ronde" title="">https://wiskundeolympiade.nl/wedstrijdarchief/1e-ronde</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.6.1">Czech</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.2.1">
<span class="ltx_p" id="A1.T7.1.6.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://www.matematickaolympiada.cz/mo-pro-ss/rocnik" title="">https://www.matematickaolympiada.cz/mo-pro-ss/rocnik</a>
<br class="ltx_break"/><a class="ltx_ref ltx_url" href="https://iksko.org/problems.php" title="">https://iksko.org/problems.php</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.7.1">Polish</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.2.1">
<span class="ltx_p" id="A1.T7.1.7.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://om.sem.edu.pl/problems/" title="">https://om.sem.edu.pl/problems/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.8.1">Slovakian</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T7.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.2.1">
<span class="ltx_p" id="A1.T7.1.8.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://skmo.sk/dokumenty.php?rocnik=74" title="">https://skmo.sk/dokumenty.php?rocnik=74</a>
<br class="ltx_break"/><a class="ltx_ref ltx_url" href="https://riesky.sk/archiv/" title="">https://riesky.sk/archiv/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.1.9.1">Russian</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T7.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.2.1">
<span class="ltx_p" id="A1.T7.1.9.2.1.1" style="width:284.5pt;"><a class="ltx_ref ltx_url" href="https://mmo.mccme.ru//" title="">https://mmo.mccme.ru//</a></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the websites of various regional and international mathematical olympiads whose problems have been included in the M-MO subset of the MCLM benchmark.  It provides links to access the problems from each competition.
> <details>
> <summary>read the caption</summary>
> Table 7: Link to mathematical competition links that has been included in M-MO subset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tr class="ltx_tr" id="A2.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.2.1"># Lang.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1"># Inst.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.4.1">Diff.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.2.1">MGSM8KInstruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.2">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.3">73.6k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.2.4">G.S</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3">
<td class="ltx_td ltx_align_left" id="A2.T8.1.3.1">mCoT-MATH</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.3.2">10</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.3.3">6.3M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.3.4">G.S</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T8.1.4.1">Euler-Instruct (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.1.4.2">55</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.1.4.3">250K</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.1.4.4">C.L</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares three multilingual mathematical reasoning datasets: MGSM8KInstruct, mCoT-MATH, and Euler-Instruct.  For each dataset, it shows the number of languages included and the number of instances (questions).  Crucially, it also indicates the difficulty level of each dataset, using 'G.S.' to denote grade school level and 'C.L.' to denote competition level. This helps to understand the relative difficulty of the datasets and their suitability for evaluating different models' mathematical reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of Multilingual Mathematical Reasoning Datasets. The Diff. column indicates difficulty level, where G.S represents grade school level and C.L represents competition level.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.2">
<tr class="ltx_tr" id="A2.T9.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T9.2.3.1"><span class="ltx_text ltx_font_bold" id="A2.T9.2.3.1.1">Languages</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.2.3.2"><span class="ltx_text ltx_font_bold" id="A2.T9.2.3.2.1"># Lang.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.2.3.3"><span class="ltx_text ltx_font_bold" id="A2.T9.2.3.3.1"># Instances</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.2.4.1">ko</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.4.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.4.3">24k</td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.5">
<td class="ltx_td ltx_align_left" id="A2.T9.2.5.1">af, fr, ko</td>
<td class="ltx_td ltx_align_center" id="A2.T9.2.5.2">3</td>
<td class="ltx_td ltx_align_center" id="A2.T9.2.5.3">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1">
<td class="ltx_td ltx_align_left" id="A2.T9.1.1.2">af, ar, fr, he, id, ko, tr</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3">7</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.1">
<math alttext="\approx" class="ltx_Math" display="inline" id="A2.T9.1.1.1.m1.1"><semantics id="A2.T9.1.1.1.m1.1a"><mo id="A2.T9.1.1.1.m1.1.1" xref="A2.T9.1.1.1.m1.1.1.cmml">≈</mo><annotation-xml encoding="MathML-Content" id="A2.T9.1.1.1.m1.1b"><approx id="A2.T9.1.1.1.m1.1.1.cmml" xref="A2.T9.1.1.1.m1.1.1"></approx></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.1.1.1.m1.1c">\approx</annotation><annotation encoding="application/x-llamapun" id="A2.T9.1.1.1.m1.1d">≈</annotation></semantics></math>3.5k</td>
</tr>
<tr class="ltx_tr" id="A2.T9.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T9.2.2.2">all 14 in <span class="ltx_text ltx_font_smallcaps" id="A2.T9.2.2.2.1">Euler-Instruct</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.2.3">14</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.2.2.1">
<math alttext="\approx" class="ltx_Math" display="inline" id="A2.T9.2.2.1.m1.1"><semantics id="A2.T9.2.2.1.m1.1a"><mo id="A2.T9.2.2.1.m1.1.1" xref="A2.T9.2.2.1.m1.1.1.cmml">≈</mo><annotation-xml encoding="MathML-Content" id="A2.T9.2.2.1.m1.1b"><approx id="A2.T9.2.2.1.m1.1.1.cmml" xref="A2.T9.2.2.1.m1.1.1"></approx></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.2.2.1.m1.1c">\approx</annotation><annotation encoding="application/x-llamapun" id="A2.T9.2.2.1.m1.1d">≈</annotation></semantics></math>1.7k</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the details of four multilingual language models trained for improved mathematical reasoning capabilities. Each model was trained on a total of 24,000 instances, but the number of instances per language varied across the models.  The table shows the languages included in the training data for each model and the number of instances used for each language in the training dataset.
> <details>
> <summary>read the caption</summary>
> Table 9: Details on trained models. All models are trained with a total of 24,000 instances. # Instances denote the number of instances used per language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.1">
<tr class="ltx_tr" id="A2.T10.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.1.2.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.2.1.1">Category</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.1.2.2"><span class="ltx_text ltx_font_bold" id="A2.T10.1.2.2.1">Section <a class="ltx_ref" href="https://arxiv.org/html/2502.17407v1#S5" title="5 Result 2: Budget Forcing ‣ Linguistic Generalizability of Test-Time Scaling in Mathematical Reasoning"><span class="ltx_text ltx_ref_tag">5</span></a></span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.3.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.3.1.1">Sequence Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.1.3.2">16,384</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1">
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.2.1">Learning Rate</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1"><math alttext="2\times 10^{-5}" class="ltx_Math" display="inline" id="A2.T10.1.1.1.m1.1"><semantics id="A2.T10.1.1.1.m1.1a"><mrow id="A2.T10.1.1.1.m1.1.1" xref="A2.T10.1.1.1.m1.1.1.cmml"><mn id="A2.T10.1.1.1.m1.1.1.2" xref="A2.T10.1.1.1.m1.1.1.2.cmml">2</mn><mo id="A2.T10.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T10.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A2.T10.1.1.1.m1.1.1.3" xref="A2.T10.1.1.1.m1.1.1.3.cmml"><mn id="A2.T10.1.1.1.m1.1.1.3.2" xref="A2.T10.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T10.1.1.1.m1.1.1.3.3" xref="A2.T10.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T10.1.1.1.m1.1.1.3.3a" xref="A2.T10.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T10.1.1.1.m1.1.1.3.3.2" xref="A2.T10.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T10.1.1.1.m1.1b"><apply id="A2.T10.1.1.1.m1.1.1.cmml" xref="A2.T10.1.1.1.m1.1.1"><times id="A2.T10.1.1.1.m1.1.1.1.cmml" xref="A2.T10.1.1.1.m1.1.1.1"></times><cn id="A2.T10.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T10.1.1.1.m1.1.1.2">2</cn><apply id="A2.T10.1.1.1.m1.1.1.3.cmml" xref="A2.T10.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T10.1.1.1.m1.1.1.3.1.cmml" xref="A2.T10.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A2.T10.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T10.1.1.1.m1.1.1.3.2">10</cn><apply id="A2.T10.1.1.1.m1.1.1.3.3.cmml" xref="A2.T10.1.1.1.m1.1.1.3.3"><minus id="A2.T10.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T10.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T10.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T10.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.1.1.1.m1.1c">2\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T10.1.1.1.m1.1d">2 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.4">
<td class="ltx_td ltx_align_center" id="A2.T10.1.4.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.4.1.1">Global Batch (Effective)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.4.2">128</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.5">
<td class="ltx_td ltx_align_center" id="A2.T10.1.5.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.5.1.1">Learning Rate Scheduler</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.5.2">Cosine Decay</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.6">
<td class="ltx_td ltx_align_center" id="A2.T10.1.6.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.6.1.1">Warmup Ratio</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.6.2">0.05</td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.7.1"><span class="ltx_text ltx_font_bold" id="A2.T10.1.7.1.1">Training Epochs</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.1.7.2">3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters used for the supervised fine-tuning (SFT) process described in section 5 of the paper.  It covers settings such as sequence length, learning rate, batch size, learning rate scheduler, warmup ratio, and the number of training epochs.
> <details>
> <summary>read the caption</summary>
> Table 10: SFT configuration details for Section 5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T11.1">
<tr class="ltx_tr" id="A3.T11.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T11.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T11.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T11.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.2.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.2.3">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.2.4">11.11</td>
<td class="ltx_td ltx_border_t" id="A3.T11.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.3.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.3.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.3.4">4.00</td>
<td class="ltx_td" id="A3.T11.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.4.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.4.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.4.4">11.11</td>
<td class="ltx_td" id="A3.T11.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.5.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.5.3">3.33</td>
<td class="ltx_td" id="A3.T11.1.5.4"></td>
<td class="ltx_td" id="A3.T11.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.6.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.6.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.6.4">7.41</td>
<td class="ltx_td" id="A3.T11.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.7.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.7.3">23.33</td>
<td class="ltx_td" id="A3.T11.1.7.4"></td>
<td class="ltx_td" id="A3.T11.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.8.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.8.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.8.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.8.5">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.9.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.9.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.9.4">18.52</td>
<td class="ltx_td" id="A3.T11.1.9.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.10.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.10.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.10.4">7.41</td>
<td class="ltx_td" id="A3.T11.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.11.2">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.11.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.11.4">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.11.5">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.12.2">53.54</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.12.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.12.4">22.22</td>
<td class="ltx_td" id="A3.T11.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.13.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.13.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.13.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.13.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.14.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.14.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.14.4">4.00</td>
<td class="ltx_td" id="A3.T11.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.15.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.15.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.15.4">8.00</td>
<td class="ltx_td" id="A3.T11.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.16.2">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.16.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.16.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.16.5">51.61</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.17.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.17.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.17.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.17.5">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.18.2">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.18.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.18.4">5.26</td>
<td class="ltx_td" id="A3.T11.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.19.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.19.3">10.00</td>
<td class="ltx_td" id="A3.T11.1.19.4"></td>
<td class="ltx_td" id="A3.T11.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.20.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.20.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.20.4">3.70</td>
<td class="ltx_td" id="A3.T11.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.21.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.21.3">6.67</td>
<td class="ltx_td" id="A3.T11.1.21.4"></td>
<td class="ltx_td" id="A3.T11.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.22.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.22.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.22.4">8.00</td>
<td class="ltx_td" id="A3.T11.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.23.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.23.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.23.4">14.29</td>
<td class="ltx_td" id="A3.T11.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.24.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.24.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.24.4">20.00</td>
<td class="ltx_td" id="A3.T11.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.25.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.25.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.25.4">8.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.25.5">0.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.26.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.26.3">10.00</td>
<td class="ltx_td" id="A3.T11.1.26.4"></td>
<td class="ltx_td" id="A3.T11.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.27.2">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.27.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.27.4">3.70</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.27.5">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.28.2">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.28.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.28.4">12.00</td>
<td class="ltx_td" id="A3.T11.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.29.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.29.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.29.4">18.52</td>
<td class="ltx_td" id="A3.T11.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.30.2">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.30.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.30.4">11.11</td>
<td class="ltx_td" id="A3.T11.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.31.2">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.31.3">23.33</td>
<td class="ltx_td" id="A3.T11.1.31.4"></td>
<td class="ltx_td" id="A3.T11.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.32.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.32.3">13.33</td>
<td class="ltx_td" id="A3.T11.1.32.4"></td>
<td class="ltx_td" id="A3.T11.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.33.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.33.3">6.67</td>
<td class="ltx_td" id="A3.T11.1.33.4"></td>
<td class="ltx_td" id="A3.T11.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.34.2">53.54</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.34.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.34.4">11.11</td>
<td class="ltx_td" id="A3.T11.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.35.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.35.3">10.00</td>
<td class="ltx_td" id="A3.T11.1.35.4"></td>
<td class="ltx_td" id="A3.T11.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.36.2">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.36.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.36.4">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.36.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.37.2">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.37.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.37.4">24.00</td>
<td class="ltx_td" id="A3.T11.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.38.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.38.3">16.67</td>
<td class="ltx_td" id="A3.T11.1.38.4"></td>
<td class="ltx_td" id="A3.T11.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.39.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.39.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.39.4">25.93</td>
<td class="ltx_td" id="A3.T11.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.40.2">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.40.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.40.4">16.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.40.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.41.2">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.41.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.41.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.41.5">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.42.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.42.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.42.4">14.81</td>
<td class="ltx_td" id="A3.T11.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.43.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.43.3">23.33</td>
<td class="ltx_td" id="A3.T11.1.43.4"></td>
<td class="ltx_td" id="A3.T11.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.44.2">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.44.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.44.4">18.52</td>
<td class="ltx_td" id="A3.T11.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.45.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.45.3">16.67</td>
<td class="ltx_td" id="A3.T11.1.45.4"></td>
<td class="ltx_td" id="A3.T11.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.46.2">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.46.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.46.4">8.00</td>
<td class="ltx_td" id="A3.T11.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.47.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.47.3">16.67</td>
<td class="ltx_td" id="A3.T11.1.47.4"></td>
<td class="ltx_td" id="A3.T11.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.48.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.48.3">10.00</td>
<td class="ltx_td" id="A3.T11.1.48.4"></td>
<td class="ltx_td" id="A3.T11.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.49.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.49.3">6.67</td>
<td class="ltx_td" id="A3.T11.1.49.4"></td>
<td class="ltx_td" id="A3.T11.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.50.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.50.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.50.4">3.70</td>
<td class="ltx_td" id="A3.T11.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.51.2">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.51.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.51.4">7.41</td>
<td class="ltx_td" id="A3.T11.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.52.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.52.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.52.4">11.11</td>
<td class="ltx_td" id="A3.T11.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.53.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.53.3">20.00</td>
<td class="ltx_td" id="A3.T11.1.53.4"></td>
<td class="ltx_td" id="A3.T11.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.54.2">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.54.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.54.4">7.41</td>
<td class="ltx_td" id="A3.T11.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.55.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.55.3">16.67</td>
<td class="ltx_td" id="A3.T11.1.55.4"></td>
<td class="ltx_td" id="A3.T11.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.56.1"><span class="ltx_text" id="A3.T11.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.56.2"><span class="ltx_text" id="A3.T11.1.56.2.1" style="background-color:#FCE5CD;">67.68</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.56.3"><span class="ltx_text" id="A3.T11.1.56.3.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.56.4"><span class="ltx_text" id="A3.T11.1.56.4.1" style="background-color:#FCE5CD;">18.52</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.56.5"><span class="ltx_text" id="A3.T11.1.56.5.1" style="background-color:#FCE5CD;">56.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T11.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.57.2">46.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.57.3">16.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.57.4">12.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.57.5">25.00</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T11.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.58.2">8.61</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.58.3">6.89</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.58.4">6.02</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.58.5">19.10</td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T11.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.59.2">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.59.3">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.59.4">0.24</td>
<td class="ltx_td ltx_border_bb" id="A3.T11.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the Multilingual Competition Level Math (MCLM) benchmark.  The results are broken down by language, showing the model's accuracy on four different subsets of the MCLM benchmark: MT-MATH100, MT-AIME2024, M-IMO, and M-MO.  Each subset contains competition-level math problems in various languages. The table also provides the average accuracy across all languages, the standard deviation, and Fleiss' Kappa, a measure of inter-annotator agreement (in this case, agreement across languages).
> <details>
> <summary>read the caption</summary>
> Table 11: Evaluation results of Qwen2.5-Math-1.5B-Instruct with greedy decoding on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T12.3">
<tr class="ltx_tr" id="A3.T12.3.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T12.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T12.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.2.1">ORM (K=2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T12.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.3.1">ORM (K=4)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T12.3.1.4"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.4.1">ORM (K=8)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.2.1"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.2"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.2.3"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.4"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.4.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.2.5"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.5.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.6"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.6.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.7"><span class="ltx_text ltx_font_bold" id="A3.T12.3.2.7.1">MT-AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.3.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.3.3">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.3.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.3.5">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.3.6">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.3.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.4.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.4.2">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.4.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.4.4">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.4.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.4.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.4.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.5.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.5.2">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.5.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.5.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.5.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.5.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.5.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.6.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.6.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.6.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.6.4">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.6.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.6.6">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.6.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.7.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.7.2">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.7.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.7.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.7.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.7.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.7.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.8.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.8.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.8.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.8.4">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.8.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.8.6">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.8.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.9.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.9.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.9.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.9.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.9.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.9.6">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.9.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.10.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.10.2">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.10.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.10.4">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.10.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.10.6">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.10.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.11.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.11.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.11.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.11.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.11.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.11.6">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.11.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.12.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.12.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.12.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.12.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.12.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.12.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.12.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.13.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.13.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.13.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.13.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.13.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.13.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.13.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.14.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.14.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.14.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.14.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.14.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.14.6">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.14.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.15.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.15.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.15.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.15.4">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.15.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.15.6">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.15.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.16.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.16.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.16.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.16.4">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.16.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.16.6">53.54</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.16.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.17.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.17.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.17.3">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.17.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.17.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.17.6">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.17.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.18.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.18.2">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.18.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.18.4">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.18.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.18.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.18.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.19.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.19.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.19.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.19.4">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.19.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.19.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.19.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.20.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.20.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.20.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.20.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.20.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.20.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.20.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.21.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.21.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.21.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.21.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.21.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.21.6">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.21.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.22.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.22.2">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.22.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.22.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.22.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.22.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.22.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.23.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.23.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.23.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.23.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.23.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.23.6">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.23.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.24.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.24.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.24.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.24.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.24.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.24.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.24.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.25.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.25.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.25.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.25.4">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.25.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.25.6">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.25.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.26.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.26.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.26.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.26.4">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.26.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.26.6">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.26.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.27.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.27.2">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.27.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.27.4">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.27.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.27.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.27.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.28.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.28.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.28.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.28.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.28.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.28.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.28.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.29.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.29.2">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.29.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.29.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.29.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.29.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.29.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.30.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.30.2">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.30.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.30.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.30.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.30.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.30.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.31.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.31.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.31.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.31.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.31.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.31.6">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.31.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.32.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.32.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.32.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.32.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.32.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.32.6">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.32.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.33.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.33.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.33.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.33.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.33.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.33.6">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.33.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.34.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.34.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.34.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.34.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.34.5">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.34.6">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.34.7">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.35.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.35.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.35.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.35.4">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.35.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.35.6">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.35.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.36.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.36.2">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.36.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.36.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.36.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.36.6">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.36.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.37.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.37.2">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.37.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.37.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.37.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.37.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.37.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.38.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.38.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.38.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.38.4">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.38.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.38.6">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.38.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.39.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.39.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.39.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.39.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.39.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.39.6">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.39.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.40.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.40.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.40.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.40.4">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.40.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.40.6">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.40.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.41.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.41.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.41.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.41.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.41.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.41.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.41.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.42.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.42.2">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.42.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.42.4">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.42.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.42.6">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.42.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.43.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.43.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.43.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.43.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.43.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.43.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.43.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.44.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.44.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.44.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.44.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.44.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.44.6">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.44.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.45.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.45.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.45.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.45.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.45.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.45.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.45.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.46.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.46.2">37.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.46.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.46.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.46.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.46.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.47.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.47.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.47.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.47.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.47.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.47.6">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.47.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.48.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.48.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.48.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.48.4">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.48.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.48.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.48.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.49.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.49.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.49.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.49.4">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.49.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.49.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.49.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.50.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.50.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.50.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.50.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.50.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.50.6">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.50.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.51.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.51.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.51.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.51.4">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.51.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.51.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.51.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.52.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.52.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.52.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.52.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.52.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.52.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.52.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.53.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.53.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.53.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.53.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.53.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.53.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.53.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.54.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.54.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.54.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.54.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.54.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.54.6">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.54.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.55.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.55.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.55.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.55.4">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.55.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.55.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.55.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.56">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.56.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.56.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.56.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.56.4">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.56.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.56.6">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.56.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.57" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.57.1"><span class="ltx_text" id="A3.T12.3.57.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.57.2"><span class="ltx_text" id="A3.T12.3.57.2.1" style="background-color:#FCE5CD;">71.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.57.3"><span class="ltx_text" id="A3.T12.3.57.3.1" style="background-color:#FCE5CD;">16.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.57.4"><span class="ltx_text" id="A3.T12.3.57.4.1" style="background-color:#FCE5CD;">73.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.57.5"><span class="ltx_text" id="A3.T12.3.57.5.1" style="background-color:#FCE5CD;">26.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.57.6"><span class="ltx_text" id="A3.T12.3.57.6.1" style="background-color:#FCE5CD;">76.77</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.57.7"><span class="ltx_text" id="A3.T12.3.57.7.1" style="background-color:#FCE5CD;">36.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.58">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.58.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.58.2">50.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.58.3">17.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.58.4">53.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T12.3.58.5">18.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.58.6">56.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.58.7">20.12</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.59">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.59.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.59.2">8.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.59.3">7.05</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.59.4">8.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T12.3.59.5">6.23</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.59.6">9.50</td>
<td class="ltx_td ltx_align_center" id="A3.T12.3.59.7">6.97</td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.60">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.3.60.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.60.2">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.3.60.3">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.60.4">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T12.3.60.5">0.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.60.6">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.60.7">0.63</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the MT-MATH100 and MT-AIME2024 datasets using the Outcome Reward Modeling (ORM) test-time scaling method.  The Best-of-N approach is employed, where the model generates multiple (K) responses for each problem, and the highest-scoring response (according to the Qwen2.5-Math-RM-72B reward model) is selected as the final answer. The results are shown for different values of K (2, 4, and 8), illustrating the impact of increasing the number of generated responses on the overall accuracy and consistency.
> <details>
> <summary>read the caption</summary>
> Table 12: Evaluation results of Qwen2.5-Math-1.5B-Instruct with Best-of-N (K=2,4,8)𝐾248(K=2,4,8)( italic_K = 2 , 4 , 8 ) using Qwen2.5-Math-RM-72B as ORM on MT-MATH100 and MT-AIME2024.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T13.1">
<tr class="ltx_tr" id="A3.T13.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T13.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T13.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T13.1.1.2.1">PRM (S=3, c=3)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T13.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T13.1.1.3.1">PRM (S=4, c=5)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T13.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T13.1.1.4.1">PRM (S=5, c=8)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.4.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.2.5"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.5.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.6"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.6.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.7"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.7.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.8"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.8.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.2.9"><span class="ltx_text ltx_font_bold" id="A3.T13.1.2.9.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.3.2">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.3.3">6.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.3.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.3.5">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.3.6">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.3.7">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.3.8">22.73</td>
<td class="ltx_td ltx_border_t" id="A3.T13.1.3.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.4.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.4.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.4.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.4.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.4.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.4.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.4.7">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.4.8">11.54</td>
<td class="ltx_td" id="A3.T13.1.4.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.5.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.5.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.5.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.5.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.5.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.5.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.5.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.5.8">7.41</td>
<td class="ltx_td" id="A3.T13.1.5.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.6.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.6.2">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.6.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.6.4">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.6.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.6.6">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.6.7">16.67</td>
<td class="ltx_td" id="A3.T13.1.6.8"></td>
<td class="ltx_td" id="A3.T13.1.6.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.7.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.7.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.7.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.7.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.7.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.7.6">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.7.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.7.8">11.11</td>
<td class="ltx_td" id="A3.T13.1.7.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.8.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.8.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.8.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.8.4">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.8.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.8.6">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.8.7">26.67</td>
<td class="ltx_td" id="A3.T13.1.8.8"></td>
<td class="ltx_td" id="A3.T13.1.8.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.9.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.9.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.9.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.9.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.9.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.9.6">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.9.7">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.9.8">25.93</td>
<td class="ltx_td" id="A3.T13.1.9.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.10.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.10.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.4">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.10.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.7">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.8">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.10.9"><span class="ltx_text" id="A3.T13.1.10.9.1">53.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.11.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.11.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.11.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.11.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.11.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.11.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.11.7">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.11.8">14.81</td>
<td class="ltx_td" id="A3.T13.1.11.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.12.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.12.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.12.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.6">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.8">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.12.9">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.13.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.13.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.13.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.13.4">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.13.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.13.6">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.13.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.13.8">22.22</td>
<td class="ltx_td" id="A3.T13.1.13.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.14.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.14.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.14.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.8">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.14.9">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.15.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.15.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.15.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.15.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.15.5">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.15.6">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.15.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.15.8">11.54</td>
<td class="ltx_td" id="A3.T13.1.15.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.16.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.16.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.16.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.16.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.16.5">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.16.6">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.16.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.16.8">15.38</td>
<td class="ltx_td" id="A3.T13.1.16.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.17.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.2">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.17.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.17.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.6">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.8">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.17.9">51.61</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.18.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.2">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.18.3">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.4">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.18.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.6">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.7">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.8">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.18.9">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.19.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.19.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.19.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.19.4">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.19.5">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.19.6">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.19.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.19.8">4.35</td>
<td class="ltx_td" id="A3.T13.1.19.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.20.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.20.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.20.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.20.4">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.20.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.20.6">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.20.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.20.8"></td>
<td class="ltx_td" id="A3.T13.1.20.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.21.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.21.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.21.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.21.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.21.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.21.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.21.7">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.21.8">7.41</td>
<td class="ltx_td" id="A3.T13.1.21.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.22.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.22.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.22.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.22.4">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.22.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.22.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.22.7">10.00</td>
<td class="ltx_td" id="A3.T13.1.22.8"></td>
<td class="ltx_td" id="A3.T13.1.22.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.23.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.23.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.23.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.23.4">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.23.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.23.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.23.7">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.23.8">19.23</td>
<td class="ltx_td" id="A3.T13.1.23.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.24.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.24.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.24.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.24.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.24.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.24.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.24.7">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.24.8">20.83</td>
<td class="ltx_td" id="A3.T13.1.24.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.25.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.25.2">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.25.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.25.4">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.25.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.25.6">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.25.7">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.25.8">23.08</td>
<td class="ltx_td" id="A3.T13.1.25.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.26.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.26.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.4">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.26.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.6">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.7">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.8">15.38</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.26.9">7.14</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.27.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.27.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.27.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.27.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.27.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.27.6">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.27.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.27.8"></td>
<td class="ltx_td" id="A3.T13.1.27.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.28.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.28.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.28.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.6">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.7">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.8">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.28.9">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.29.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.29.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.29.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.29.4">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.29.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.29.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.29.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.29.8">15.38</td>
<td class="ltx_td" id="A3.T13.1.29.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.30.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.30.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.30.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.30.4">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.30.5">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.30.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.30.7">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.30.8">14.81</td>
<td class="ltx_td" id="A3.T13.1.30.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.31.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.31.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.31.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.31.4">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.31.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.31.6">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.31.7">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.31.8">11.11</td>
<td class="ltx_td" id="A3.T13.1.31.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.32.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.32.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.32.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.32.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.32.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.32.6">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.32.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.32.8"></td>
<td class="ltx_td" id="A3.T13.1.32.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.33.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.33.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.33.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.33.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.33.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.33.6">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.33.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.33.8"></td>
<td class="ltx_td" id="A3.T13.1.33.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.34.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.34.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.34.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.34.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.34.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.34.6">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.34.7">10.00</td>
<td class="ltx_td" id="A3.T13.1.34.8"></td>
<td class="ltx_td" id="A3.T13.1.34.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.35.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.35.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.35.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.35.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.35.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.35.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.35.7">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.35.8">18.52</td>
<td class="ltx_td" id="A3.T13.1.35.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.36.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.36.2">37.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.36.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.36.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.36.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.36.6">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.36.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.36.8"></td>
<td class="ltx_td" id="A3.T13.1.36.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.37.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.37.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.4">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.37.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.6">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.8">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.37.9">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.38.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.38.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.38.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.38.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.38.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.38.6">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.38.7">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.38.8">19.23</td>
<td class="ltx_td" id="A3.T13.1.38.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.39.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.39.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.39.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.39.4">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.39.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.39.6">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.39.7">6.67</td>
<td class="ltx_td" id="A3.T13.1.39.8"></td>
<td class="ltx_td" id="A3.T13.1.39.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.40.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.40.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.40.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.40.4">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.40.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.40.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.40.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.40.8">22.22</td>
<td class="ltx_td" id="A3.T13.1.40.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.41.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.41.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.41.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.8">15.38</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.41.9">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.42.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.42.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.42.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.42.4">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.42.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.42.6">53.54</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.42.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.42.8">14.81</td>
<td class="ltx_td" id="A3.T13.1.42.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.43.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.43.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.43.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.43.4">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.43.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.43.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.43.7">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.43.8">11.11</td>
<td class="ltx_td" id="A3.T13.1.43.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.44.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.44.2">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.44.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.44.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.44.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.44.6">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.44.7">3.33</td>
<td class="ltx_td" id="A3.T13.1.44.8"></td>
<td class="ltx_td" id="A3.T13.1.44.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.45.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.45.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.45.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.45.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.45.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.45.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.45.7">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.45.8">29.63</td>
<td class="ltx_td" id="A3.T13.1.45.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.46.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.46.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.46.4">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.46.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.46.6">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.46.7">10.00</td>
<td class="ltx_td" id="A3.T13.1.46.8"></td>
<td class="ltx_td" id="A3.T13.1.46.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.47.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.47.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.47.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.47.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.47.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.47.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.47.7">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.47.8">15.38</td>
<td class="ltx_td" id="A3.T13.1.47.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.48.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.48.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.48.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.48.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.48.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.48.6">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.48.7">10.00</td>
<td class="ltx_td" id="A3.T13.1.48.8"></td>
<td class="ltx_td" id="A3.T13.1.48.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.49.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.49.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.49.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.49.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.49.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.49.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.49.7">16.67</td>
<td class="ltx_td" id="A3.T13.1.49.8"></td>
<td class="ltx_td" id="A3.T13.1.49.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.50.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.50.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.50.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.50.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.50.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.50.6">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.50.7">16.67</td>
<td class="ltx_td" id="A3.T13.1.50.8"></td>
<td class="ltx_td" id="A3.T13.1.50.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.51.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.51.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.51.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.51.4">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.51.5">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.51.6">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.51.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.51.8">14.81</td>
<td class="ltx_td" id="A3.T13.1.51.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.52.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.52.2">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.52.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.52.4">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.52.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.52.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.52.7">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.52.8">11.11</td>
<td class="ltx_td" id="A3.T13.1.52.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.53.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.53.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.53.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.53.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.53.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.53.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.53.7">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.53.8">18.52</td>
<td class="ltx_td" id="A3.T13.1.53.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.54.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.54.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.54.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.54.4">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.54.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.54.6">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.54.7">13.33</td>
<td class="ltx_td" id="A3.T13.1.54.8"></td>
<td class="ltx_td" id="A3.T13.1.54.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.55.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.55.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.55.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.55.4">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.55.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.55.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.55.7">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.55.8">29.63</td>
<td class="ltx_td" id="A3.T13.1.55.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.56">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.56.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.56.2">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.56.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.56.4">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.56.5">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.56.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.56.7">6.67</td>
<td class="ltx_td" id="A3.T13.1.56.8"></td>
<td class="ltx_td" id="A3.T13.1.56.9"></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.57" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.57.1"><span class="ltx_text" id="A3.T13.1.57.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.2"><span class="ltx_text" id="A3.T13.1.57.2.1" style="background-color:#FCE5CD;">73.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.57.3"><span class="ltx_text" id="A3.T13.1.57.3.1" style="background-color:#FCE5CD;">26.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.4"><span class="ltx_text" id="A3.T13.1.57.4.1" style="background-color:#FCE5CD;">79.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.57.5"><span class="ltx_text" id="A3.T13.1.57.5.1" style="background-color:#FCE5CD;">23.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.6"><span class="ltx_text" id="A3.T13.1.57.6.1" style="background-color:#FCE5CD;">72.73</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.7"><span class="ltx_text" id="A3.T13.1.57.7.1" style="background-color:#FCE5CD;">23.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.8"><span class="ltx_text" id="A3.T13.1.57.8.1" style="background-color:#FCE5CD;">29.63</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.57.9"><span class="ltx_text" id="A3.T13.1.57.9.1" style="background-color:#FCE5CD;">60.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.58">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.58.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.2">48.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.58.3">15.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.4">52.54</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T13.1.58.5">17.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.6">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.7">16.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.8">17.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.1.58.9">30.54</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.59">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.59.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.2">8.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.59.3">6.93</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.4">9.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T13.1.59.5">6.95</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.6">9.71</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.7">7.15</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.8">6.44</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.59.9">18.88</td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.60">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.1.60.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.1.60.2">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.1.60.3">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.1.60.4">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T13.1.60.5">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.1.60.6">0.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.1.60.7">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.1.60.8">0.43</td>
<td class="ltx_td ltx_border_bb" id="A3.T13.1.60.9"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the MCLM benchmark when using the Qwen2.5-Math-PRM-72B as a process reward model.  It shows the model's accuracy (percentage of correct answers) for three different PRM configurations (S=3, c=3; S=4, c=5; S=5, c=8) across four subsets of the MCLM benchmark (MT-MATH100, MT-AIME2024, M-IMO, M-MO) and for 55 different languages.  It also provides the average accuracy across languages for each subset and configuration, the standard deviation, and Fleiss' Kappa values, which measure the consistency of the model's performance across different languages.
> <details>
> <summary>read the caption</summary>
> Table 13: Evaluation results of Qwen2.5-Math-1.5B-Instruct using Qwen2.5-Math-PRM-72B as PRM on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T14.3">
<tr class="ltx_tr" id="A3.T14.3.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T14.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T14.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T14.3.1.2.1">MT-MATH100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.2.1"><span class="ltx_text ltx_font_bold" id="A3.T14.3.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.2.2"><span class="ltx_text ltx_font_bold" id="A3.T14.3.2.2.1">PRM (S=7, c=5)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.2.3"><span class="ltx_text ltx_font_bold" id="A3.T14.3.2.3.1">PRM (S=7, c=7)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T14.3.2.4"><span class="ltx_text ltx_font_bold" id="A3.T14.3.2.4.1">PRM (S=7, c=11)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.3.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.3.3">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T14.3.3.4">58.59</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.4.1">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.4.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.4.3">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.4.4">44.44</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.5.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.5.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.5.3">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.5.4">76.77</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.6.1">French</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.6.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.6.3">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.6.4">69.70</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.7.1">German</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.7.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.7.3">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.7.4">58.59</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.8.1">Hebrew</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.8.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.8.3">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.8.4">44.44</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.9.1">Indonesian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.9.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.9.3">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.9.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.10.1">Italian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.10.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.10.3">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.10.4">58.59</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.11.1">Japanese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.11.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.11.3">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.11.4">63.64</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.12.1">Korean</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.12.2">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.12.3">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.12.4">50.51</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.13.1">Spanish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.13.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.13.3">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.13.4">68.69</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.14.1">Turkish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.14.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.14.3">53.54</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.14.4">48.48</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.15.1">Vietnamese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.15.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.15.3">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.15.4">51.52</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.16" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.16.1"><span class="ltx_text" id="A3.T14.3.16.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.16.2"><span class="ltx_text" id="A3.T14.3.16.2.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.16.3"><span class="ltx_text" id="A3.T14.3.16.3.1" style="background-color:#FCE5CD;">79.80</span></td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.16.4"><span class="ltx_text" id="A3.T14.3.16.4.1" style="background-color:#FCE5CD;">74.75</span></td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.17.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.17.2">58.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T14.3.17.3">59.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T14.3.17.4">59.31</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.18.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.18.2">9.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T14.3.18.3">12.57</td>
<td class="ltx_td ltx_align_center" id="A3.T14.3.18.4">10.60</td>
</tr>
<tr class="ltx_tr" id="A3.T14.3.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T14.3.19.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T14.3.19.2">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T14.3.19.3">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T14.3.19.4">0.56</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the Qwen2.5-Math-1.5B-Instruct model's performance on the MT-MATH100 benchmark using the Process Reward Modeling (PRM) method.  The PRM utilizes the Qwen2.5-Math-PRM-72B model as a verifier.  A key aspect of this evaluation is that the number of generation steps is fixed at 7 (S=7). The table shows the model's performance in terms of accuracy across multiple languages, along with the standard deviation and Fleiss' Kappa, indicating the consistency of the model's performance across different languages.
> <details>
> <summary>read the caption</summary>
> Table 14: Evaluation results of Qwen2.5-Math-1.5B-Instruct using Qwen2.5-Math-PRM-72B as PRM with steps fixed at (S=7)𝑆7(S=7)( italic_S = 7 ) on MT-MATH100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T15.1">
<tr class="ltx_tr" id="A3.T15.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T15.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T15.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T15.1.1.2.1">MT-MATH100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T15.1.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T15.1.2.2.1">PRM (S=3, c=8)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T15.1.2.3.1">PRM (S=6, c=8)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T15.1.2.4.1">PRM (S=9, c=8)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.3.2">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.3.3">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.3.4">60.61</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.4.2">41.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.4.3">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.4.4">52.53</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.5.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.5.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.5.3">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.5.4">70.71</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.6.1">French</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.6.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.6.3">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.6.4">67.68</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.7.1">German</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.7.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.7.3">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.7.4">66.67</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.8.1">Hebrew</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.8.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.8.3">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.8.4">45.45</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.9.1">Indonesian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.9.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.9.3">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.9.4">62.63</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.10.1">Italian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.10.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.10.3">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.10.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.11.1">Japanese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.11.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.11.3">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.11.4">62.63</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.12.1">Korean</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.12.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.12.3">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.12.4">48.48</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.13.1">Spanish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.13.2">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.13.3">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.13.4">72.73</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.14.1">Turkish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.14.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.14.3">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.14.4">49.49</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.15.1">Vietnamese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.15.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.15.3">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.15.4">57.58</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.16" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.16.1"><span class="ltx_text" id="A3.T15.1.16.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.16.2"><span class="ltx_text" id="A3.T15.1.16.2.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.16.3"><span class="ltx_text" id="A3.T15.1.16.3.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.16.4"><span class="ltx_text" id="A3.T15.1.16.4.1" style="background-color:#FCE5CD;">77.78</span></td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.17.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.17.2">58.23</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T15.1.17.3">58.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T15.1.17.4">61.18</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.18.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.18.2">10.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T15.1.18.3">9.62</td>
<td class="ltx_td ltx_align_center" id="A3.T15.1.18.4">9.65</td>
</tr>
<tr class="ltx_tr" id="A3.T15.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T15.1.19.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T15.1.19.2">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T15.1.19.3">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T15.1.19.4">0.58</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the MT-MATH100 subset of the MCLM benchmark.  The model utilizes the Qwen2.5-Math-PRM-72B as a process reward model (PRM) during inference. A key characteristic of this experiment is that the number of candidate continuations generated at each step is fixed at 8, allowing for a controlled evaluation of PRM's effectiveness under this specific configuration. The table shows the accuracy of the model across multiple languages, providing insights into the consistency and generalizability of PRM's performance.
> <details>
> <summary>read the caption</summary>
> Table 15: Evaluation results of Qwen2.5-Math-1.5B-Instruct using Qwen2.5-Math-PRM-72B as PRM with the number of candidates fixed at 8, on MT-MATH100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T16.1">
<tr class="ltx_tr" id="A3.T16.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T16.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T16.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T16.1.1.2.1">MT-MATH100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T16.1.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T16.1.2.2.1">PRM (S=7, c=7)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T16.1.2.3.1">PRM (S=7, c=11)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T16.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T16.1.2.4.1">PRM (S=7, c=18)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.3.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.3.3">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T16.1.3.4">58.59</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.4.2">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.4.3">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.4.4">52.53</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.5.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.5.2">74.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.5.3">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.5.4">76.77</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.6.1">French</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.6.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.6.3">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.6.4">71.72</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.7.1">German</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.7.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.7.3">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.7.4">60.61</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.8.1">Hebrew</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.8.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.8.3">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.8.4">41.41</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.9.1">Indonesian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.9.2">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.9.3">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.9.4">62.63</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.10.1">Italian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.10.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.10.3">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.10.4">64.65</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.11.1">Japanese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.11.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.11.3">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.11.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.12.1">Korean</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.12.2">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.12.3">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.12.4">50.51</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.13.1">Spanish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.13.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.13.3">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.13.4">68.69</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.14.1">Turkish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.14.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.14.3">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.14.4">52.53</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.15.1">Vietnamese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.15.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.15.3">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.15.4">51.52</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.16" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.16.1"><span class="ltx_text" id="A3.T16.1.16.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.16.2"><span class="ltx_text" id="A3.T16.1.16.2.1" style="background-color:#FCE5CD;">79.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.16.3"><span class="ltx_text" id="A3.T16.1.16.3.1" style="background-color:#FCE5CD;">74.75</span></td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.16.4"><span class="ltx_text" id="A3.T16.1.16.4.1" style="background-color:#FCE5CD;">70.71</span></td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.17.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.17.2">59.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T16.1.17.3">59.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T16.1.17.4">60.32</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.18.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.18.2">12.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T16.1.18.3">10.60</td>
<td class="ltx_td ltx_align_center" id="A3.T16.1.18.4">9.84</td>
</tr>
<tr class="ltx_tr" id="A3.T16.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T16.1.19.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T16.1.19.2">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T16.1.19.3">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T16.1.19.4">0.54</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of using the Process Reward Modeling (PRM) method on the MT-MATH100 subset of the MCLM benchmark.  The Qwen2.5-Math-1.5B-Instruct model was used as the generator, and the Qwen2.5-Math-PRM-7B model served as the reward model. The experiment involved generating 7 candidate continuations at each step to guide the generation process. The table shows the performance of this approach across various languages, evaluating the MT-MATH100 accuracy metric.
> <details>
> <summary>read the caption</summary>
> Table 16: Evaluation results of Qwen2.5-Math-1.5B-Instruct using Qwen2.5-Math-PRM-7B as PRM with the number of candidates fixed at 7, on MT-MATH100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T17.1">
<tr class="ltx_tr" id="A3.T17.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T17.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A3.T17.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T17.1.1.2.1">MT-MATH100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T17.1.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T17.1.2.2.1">PRM (S=3, c=13)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T17.1.2.3.1">PRM (S=6, c=13)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T17.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T17.1.2.4.1">PRM (S=9, c=13)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.3.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.3.3">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T17.1.3.4">54.55</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.4.2">44.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.4.3">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.4.4">44.44</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.5.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.5.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.5.3">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.5.4">79.80</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.6.1">French</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.6.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.6.3">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.6.4">73.74</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.7.1">German</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.7.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.7.3">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.7.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.8.1">Hebrew</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.8.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.8.3">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.8.4">47.47</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.9.1">Indonesian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.9.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.9.3">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.9.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.10.1">Italian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.10.2">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.10.3">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.10.4">61.62</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.11.1">Japanese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.11.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.11.3">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.11.4">59.60</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.12.1">Korean</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.12.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.12.3">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.12.4">51.52</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.13.1">Spanish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.13.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.13.3">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.13.4">64.65</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.14.1">Turkish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.14.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.14.3">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.14.4">49.49</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.15.1">Vietnamese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.15.2">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.15.3">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.15.4">45.45</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.16" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.16.1"><span class="ltx_text" id="A3.T17.1.16.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.16.2"><span class="ltx_text" id="A3.T17.1.16.2.1" style="background-color:#FCE5CD;">71.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.16.3"><span class="ltx_text" id="A3.T17.1.16.3.1" style="background-color:#FCE5CD;">73.74</span></td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.16.4"><span class="ltx_text" id="A3.T17.1.16.4.1" style="background-color:#FCE5CD;">77.78</span></td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.17.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.17.2">57.43</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T17.1.17.3">59.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T17.1.17.4">59.52</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.18.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.18.2">9.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T17.1.18.3">10.90</td>
<td class="ltx_td ltx_align_center" id="A3.T17.1.18.4">11.59</td>
</tr>
<tr class="ltx_tr" id="A3.T17.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T17.1.19.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T17.1.19.2">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T17.1.19.3">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T17.1.19.4">0.52</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the MT-MATH100 subset of the MCLM benchmark.  The model utilizes the Qwen2.5-Math-PRM-7B as a process reward model (PRM).  A key aspect is that the number of candidates generated at each step in the PRM process is fixed at 13.  Results are shown for each language in the MT-MATH100 dataset, indicating accuracy for each language.
> <details>
> <summary>read the caption</summary>
> Table 17: Evaluation results of Qwen2.5-Math-1.5B-Instruct using Qwen2.5-Math-PRM-7B as PRM with the number of candidates fixed at 13, on MT-MATH100.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T18.1">
<tr class="ltx_tr" id="A3.T18.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T18.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T18.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T18.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T18.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T18.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T18.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T18.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T18.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T18.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T18.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T18.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.2.2">47.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.2.3">36.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.2.4">5.56</td>
<td class="ltx_td ltx_border_t" id="A3.T18.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.3.2">31.31</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.3.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.3.4">8.00</td>
<td class="ltx_td" id="A3.T18.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.4.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.4.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.4.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.5.2">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.5.3">10.00</td>
<td class="ltx_td" id="A3.T18.1.5.4"></td>
<td class="ltx_td" id="A3.T18.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.6.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.6.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.6.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.7.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.7.3">16.67</td>
<td class="ltx_td" id="A3.T18.1.7.4"></td>
<td class="ltx_td" id="A3.T18.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.8.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.8.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.8.4">18.52</td>
<td class="ltx_td" id="A3.T18.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.9.2">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.9.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.9.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.9.5"><span class="ltx_text" id="A3.T18.1.9.5.1">23.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.10.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.10.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.10.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.11.2">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.11.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.11.4">3.70</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.11.5">3.33</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.12.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.12.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.12.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.13.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.13.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.13.4">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.13.5">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.14.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.14.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.14.4">12.00</td>
<td class="ltx_td" id="A3.T18.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.15.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.15.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.15.4">12.00</td>
<td class="ltx_td" id="A3.T18.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.16.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.16.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.16.4">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.16.5">35.48</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.17.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.17.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.17.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.17.5">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.18.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.18.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.18.4">0.00</td>
<td class="ltx_td" id="A3.T18.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.19.2">27.27</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.19.3">6.67</td>
<td class="ltx_td" id="A3.T18.1.19.4"></td>
<td class="ltx_td" id="A3.T18.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.20.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.20.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.20.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.21.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.21.3">10.00</td>
<td class="ltx_td" id="A3.T18.1.21.4"></td>
<td class="ltx_td" id="A3.T18.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.22.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.22.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.22.4">8.00</td>
<td class="ltx_td" id="A3.T18.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.23.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.23.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.23.4">4.76</td>
<td class="ltx_td" id="A3.T18.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.24.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.24.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.24.4">12.00</td>
<td class="ltx_td" id="A3.T18.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.25.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.25.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.25.4">12.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.25.5">3.57</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.26.2">32.32</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.26.3">10.00</td>
<td class="ltx_td" id="A3.T18.1.26.4"></td>
<td class="ltx_td" id="A3.T18.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.27.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.27.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.27.4">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.27.5">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.28.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.28.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.28.4">4.00</td>
<td class="ltx_td" id="A3.T18.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.29.2">31.31</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.29.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.29.4">14.81</td>
<td class="ltx_td" id="A3.T18.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.30.2">31.31</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.30.3">0.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.30.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.31.2">27.27</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.31.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.31.4"></td>
<td class="ltx_td" id="A3.T18.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.32.2">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.32.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.32.4"></td>
<td class="ltx_td" id="A3.T18.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.33.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.33.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.33.4"></td>
<td class="ltx_td" id="A3.T18.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.34.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.34.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.34.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.35.2">29.29</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.35.3">20.00</td>
<td class="ltx_td" id="A3.T18.1.35.4"></td>
<td class="ltx_td" id="A3.T18.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.36.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.36.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.36.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.36.5">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.37.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.37.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.37.4">8.00</td>
<td class="ltx_td" id="A3.T18.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.38.2">29.29</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.38.3">16.67</td>
<td class="ltx_td" id="A3.T18.1.38.4"></td>
<td class="ltx_td" id="A3.T18.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.39.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.39.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.39.4">18.52</td>
<td class="ltx_td" id="A3.T18.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.40.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.40.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.40.4">12.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.40.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.41.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.41.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.41.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.41.5">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.42.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.42.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.42.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.43.2">26.26</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.43.3">16.67</td>
<td class="ltx_td" id="A3.T18.1.43.4"></td>
<td class="ltx_td" id="A3.T18.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.44.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.44.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.44.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.45.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.45.3">6.67</td>
<td class="ltx_td" id="A3.T18.1.45.4"></td>
<td class="ltx_td" id="A3.T18.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.46.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.46.4">8.00</td>
<td class="ltx_td" id="A3.T18.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.47.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.47.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.47.4"></td>
<td class="ltx_td" id="A3.T18.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.48.2">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.48.3">10.00</td>
<td class="ltx_td" id="A3.T18.1.48.4"></td>
<td class="ltx_td" id="A3.T18.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.49.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.49.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.49.4"></td>
<td class="ltx_td" id="A3.T18.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.50.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.50.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.50.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.51.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.51.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.51.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.52.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.52.3">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.52.4">11.11</td>
<td class="ltx_td" id="A3.T18.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.53.2">28.28</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.53.3">13.33</td>
<td class="ltx_td" id="A3.T18.1.53.4"></td>
<td class="ltx_td" id="A3.T18.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.54.2">31.31</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.54.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.54.4">7.41</td>
<td class="ltx_td" id="A3.T18.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.55.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.55.3">23.33</td>
<td class="ltx_td" id="A3.T18.1.55.4"></td>
<td class="ltx_td" id="A3.T18.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.56.1"><span class="ltx_text" id="A3.T18.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.56.2"><span class="ltx_text" id="A3.T18.1.56.2.1" style="background-color:#FCE5CD;">65.66</span></td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.56.3"><span class="ltx_text" id="A3.T18.1.56.3.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.56.4"><span class="ltx_text" id="A3.T18.1.56.4.1" style="background-color:#FCE5CD;">25.93</span></td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.56.5"><span class="ltx_text" id="A3.T18.1.56.5.1" style="background-color:#FCE5CD;">53.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T18.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.57.2">37.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.57.3">14.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.57.4">10.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T18.1.57.5">18.40</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T18.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.58.2">7.56</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.58.3">6.69</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.58.4">5.16</td>
<td class="ltx_td ltx_align_center" id="A3.T18.1.58.5">14.92</td>
</tr>
<tr class="ltx_tr" id="A3.T18.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T18.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T18.1.59.2">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T18.1.59.3">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T18.1.59.4">0.19</td>
<td class="ltx_td ltx_border_bb" id="A3.T18.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B language model after undergoing supervised fine-tuning with translated data (SFT) on the MCLM benchmark.  It shows the model's accuracy scores across various subsets of the benchmark (MT-MATH100, MT-AIME2024, M-IMO, M-MO) for 55 different languages. The average accuracy, standard deviation, and Fleiss' kappa (a measure of inter-annotator agreement) are also provided to evaluate the model's overall performance and consistency across languages.
> <details>
> <summary>read the caption</summary>
> Table 18: Evaluation results of Qwen2.5-Math-1.5B-Instruct + SFT on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T19.1">
<tr class="ltx_tr" id="A3.T19.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T19.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T19.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T19.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T19.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T19.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T19.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T19.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T19.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T19.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T19.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T19.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.2.2">39.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.2.3">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.2.4">13.64</td>
<td class="ltx_td ltx_border_t" id="A3.T19.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.3.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.3.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.3.4">7.69</td>
<td class="ltx_td" id="A3.T19.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.4.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.4.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.4.4">14.81</td>
<td class="ltx_td" id="A3.T19.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.5.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.5.3">30.00</td>
<td class="ltx_td" id="A3.T19.1.5.4"></td>
<td class="ltx_td" id="A3.T19.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.6.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.6.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.6.4">11.11</td>
<td class="ltx_td" id="A3.T19.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.7.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.7.3">26.67</td>
<td class="ltx_td" id="A3.T19.1.7.4"></td>
<td class="ltx_td" id="A3.T19.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.8.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.8.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.8.4">7.41</td>
<td class="ltx_td" id="A3.T19.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.9.2">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.9.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.9.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.9.5"><span class="ltx_text" id="A3.T19.1.9.5.1">13.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.10.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.10.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.10.4">11.11</td>
<td class="ltx_td" id="A3.T19.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.11.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.11.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.11.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.11.5">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.12.2">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.12.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.12.4">3.70</td>
<td class="ltx_td" id="A3.T19.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.13.2">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.13.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.13.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.13.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.14.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.14.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.14.4">15.38</td>
<td class="ltx_td" id="A3.T19.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.15.2">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.15.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.15.4">7.69</td>
<td class="ltx_td" id="A3.T19.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.16.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.16.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.16.4">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.16.5">32.26</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.17.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.17.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.17.4">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.17.5">3.33</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.18.2">28.28</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.18.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.18.4">17.39</td>
<td class="ltx_td" id="A3.T19.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.19.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.19.3">13.33</td>
<td class="ltx_td" id="A3.T19.1.19.4"></td>
<td class="ltx_td" id="A3.T19.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.20.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.20.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.20.4">3.70</td>
<td class="ltx_td" id="A3.T19.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.21.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.21.3">13.33</td>
<td class="ltx_td" id="A3.T19.1.21.4"></td>
<td class="ltx_td" id="A3.T19.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.22.2">43.43</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.22.3">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.22.4">11.54</td>
<td class="ltx_td" id="A3.T19.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.23.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.23.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.23.4">16.67</td>
<td class="ltx_td" id="A3.T19.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.24.2">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.24.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.24.4">11.54</td>
<td class="ltx_td" id="A3.T19.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.25.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.25.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.25.4">11.54</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.25.5">3.57</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.26.2">32.32</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.26.3">10.00</td>
<td class="ltx_td" id="A3.T19.1.26.4"></td>
<td class="ltx_td" id="A3.T19.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.27.2">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.27.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.27.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.27.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.28.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.28.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.28.4">15.38</td>
<td class="ltx_td" id="A3.T19.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.29.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.29.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.29.4">7.41</td>
<td class="ltx_td" id="A3.T19.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.30.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.30.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.30.4">18.52</td>
<td class="ltx_td" id="A3.T19.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.31.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.31.3">26.67</td>
<td class="ltx_td" id="A3.T19.1.31.4"></td>
<td class="ltx_td" id="A3.T19.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.32.2">37.37</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.32.3">23.33</td>
<td class="ltx_td" id="A3.T19.1.32.4"></td>
<td class="ltx_td" id="A3.T19.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.33.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.33.3">16.67</td>
<td class="ltx_td" id="A3.T19.1.33.4"></td>
<td class="ltx_td" id="A3.T19.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.34.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.34.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.34.4">3.70</td>
<td class="ltx_td" id="A3.T19.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.35.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.35.3">10.00</td>
<td class="ltx_td" id="A3.T19.1.35.4"></td>
<td class="ltx_td" id="A3.T19.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.36.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.36.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.36.4">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.36.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.37.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.37.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.37.4">11.54</td>
<td class="ltx_td" id="A3.T19.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.38.2">29.29</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.38.3">16.67</td>
<td class="ltx_td" id="A3.T19.1.38.4"></td>
<td class="ltx_td" id="A3.T19.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.39.2">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.39.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.39.4">11.11</td>
<td class="ltx_td" id="A3.T19.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.40.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.40.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.40.4">7.69</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.40.5">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.41.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.41.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.41.4">7.41</td>
<td class="ltx_td" id="A3.T19.1.41.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.42.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.42.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.42.4">18.52</td>
<td class="ltx_td" id="A3.T19.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.43.2">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.43.3">26.67</td>
<td class="ltx_td" id="A3.T19.1.43.4"></td>
<td class="ltx_td" id="A3.T19.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.44.2">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.44.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.44.4">0.00</td>
<td class="ltx_td" id="A3.T19.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.45.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.45.3">6.67</td>
<td class="ltx_td" id="A3.T19.1.45.4"></td>
<td class="ltx_td" id="A3.T19.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.46.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.46.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.46.4">3.85</td>
<td class="ltx_td" id="A3.T19.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.47.2">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.47.3">6.67</td>
<td class="ltx_td" id="A3.T19.1.47.4"></td>
<td class="ltx_td" id="A3.T19.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.48.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.48.3">23.33</td>
<td class="ltx_td" id="A3.T19.1.48.4"></td>
<td class="ltx_td" id="A3.T19.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.49.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.49.3">13.33</td>
<td class="ltx_td" id="A3.T19.1.49.4"></td>
<td class="ltx_td" id="A3.T19.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.50.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.50.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.50.4">14.81</td>
<td class="ltx_td" id="A3.T19.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.51.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.51.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.51.4">7.41</td>
<td class="ltx_td" id="A3.T19.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.52.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.52.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.52.4">7.41</td>
<td class="ltx_td" id="A3.T19.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.53.2">32.32</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.53.3">20.00</td>
<td class="ltx_td" id="A3.T19.1.53.4"></td>
<td class="ltx_td" id="A3.T19.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.54.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.54.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.54.4">18.52</td>
<td class="ltx_td" id="A3.T19.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.55.2">28.28</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.55.3">20.00</td>
<td class="ltx_td" id="A3.T19.1.55.4"></td>
<td class="ltx_td" id="A3.T19.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.56.1"><span class="ltx_text" id="A3.T19.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.56.2"><span class="ltx_text" id="A3.T19.1.56.2.1" style="background-color:#FCE5CD;">51.52</span></td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.56.3"><span class="ltx_text" id="A3.T19.1.56.3.1" style="background-color:#FCE5CD;">26.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.56.4"><span class="ltx_text" id="A3.T19.1.56.4.1" style="background-color:#FCE5CD;">7.41</span></td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.56.5"><span class="ltx_text" id="A3.T19.1.56.5.1" style="background-color:#FCE5CD;">40.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T19.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.57.2">42.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.57.3">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.57.4">10.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T19.1.57.5">20.58</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T19.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.58.2">7.46</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.58.3">7.31</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.58.4">4.63</td>
<td class="ltx_td ltx_align_center" id="A3.T19.1.58.5">13.17</td>
</tr>
<tr class="ltx_tr" id="A3.T19.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T19.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T19.1.59.2">0.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T19.1.59.3">0.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T19.1.59.4">0.25</td>
<td class="ltx_td ltx_border_bb" id="A3.T19.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model after multilingual fine-tuning (MT-SFT) on the MCLM benchmark.  It shows the model's accuracy scores for each of the four subsets of MCLM (MT-MATH100, MT-AIME2024, M-IMO, M-MO) across 55 different languages.  Additionally, it includes the average accuracy across all languages, the standard deviation indicating the variability of performance, and Fleiss' Kappa measuring the consistency of the model's performance across languages.
> <details>
> <summary>read the caption</summary>
> Table 19: Evaluation results of Qwen2.5-Math-1.5B-Instruct + MT-SFT on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T20.1">
<tr class="ltx_tr" id="A3.T20.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T20.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T20.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T20.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T20.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T20.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T20.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T20.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T20.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T20.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T20.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T20.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.2.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.2.3">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.2.4">11.11</td>
<td class="ltx_td ltx_border_t" id="A3.T20.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.3.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.3.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.3.4">16.00</td>
<td class="ltx_td" id="A3.T20.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.4.2">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.4.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.4.4">18.52</td>
<td class="ltx_td" id="A3.T20.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.5.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.5.3">10.00</td>
<td class="ltx_td" id="A3.T20.1.5.4"></td>
<td class="ltx_td" id="A3.T20.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.6.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.6.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.6.4">11.11</td>
<td class="ltx_td" id="A3.T20.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.7.2">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.7.3">30.00</td>
<td class="ltx_td" id="A3.T20.1.7.4"></td>
<td class="ltx_td" id="A3.T20.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.8.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.8.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.8.4">25.93</td>
<td class="ltx_td" id="A3.T20.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.9.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.9.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.9.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.9.5"><span class="ltx_text" id="A3.T20.1.9.5.1">33.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.10.2">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.10.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.10.4">18.52</td>
<td class="ltx_td" id="A3.T20.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.11.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.11.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.11.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.11.5">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.12.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.12.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.12.4">14.81</td>
<td class="ltx_td" id="A3.T20.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.13.2">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.13.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.13.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.13.5">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.14.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.14.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.14.4">12.00</td>
<td class="ltx_td" id="A3.T20.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.15.2">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.15.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.15.4">20.00</td>
<td class="ltx_td" id="A3.T20.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.16.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.16.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.16.4">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.16.5">48.39</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.17.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.17.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.17.4">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.17.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.18.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.18.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.18.4">10.53</td>
<td class="ltx_td" id="A3.T20.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.19.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.19.3">3.33</td>
<td class="ltx_td" id="A3.T20.1.19.4"></td>
<td class="ltx_td" id="A3.T20.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.20.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.20.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.20.4">7.41</td>
<td class="ltx_td" id="A3.T20.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.21.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.21.3">23.33</td>
<td class="ltx_td" id="A3.T20.1.21.4"></td>
<td class="ltx_td" id="A3.T20.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.22.2">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.22.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.22.4">24.00</td>
<td class="ltx_td" id="A3.T20.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.23.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.23.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.23.4">23.81</td>
<td class="ltx_td" id="A3.T20.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.24.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.24.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.24.4">28.00</td>
<td class="ltx_td" id="A3.T20.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.25.2">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.25.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.25.4">12.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.25.5">3.57</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.26.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.26.3">16.67</td>
<td class="ltx_td" id="A3.T20.1.26.4"></td>
<td class="ltx_td" id="A3.T20.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.27.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.27.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.27.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.27.5">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.28.2">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.28.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.28.4">20.00</td>
<td class="ltx_td" id="A3.T20.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.29.2">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.29.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.29.4">14.81</td>
<td class="ltx_td" id="A3.T20.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.30.2">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.30.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.30.4">25.93</td>
<td class="ltx_td" id="A3.T20.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.31.2">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.31.3">3.33</td>
<td class="ltx_td" id="A3.T20.1.31.4"></td>
<td class="ltx_td" id="A3.T20.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.32.2">39.39</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.32.3">23.33</td>
<td class="ltx_td" id="A3.T20.1.32.4"></td>
<td class="ltx_td" id="A3.T20.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.33.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.33.3">10.00</td>
<td class="ltx_td" id="A3.T20.1.33.4"></td>
<td class="ltx_td" id="A3.T20.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.34.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.34.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.34.4">18.52</td>
<td class="ltx_td" id="A3.T20.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.35.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.35.3">13.33</td>
<td class="ltx_td" id="A3.T20.1.35.4"></td>
<td class="ltx_td" id="A3.T20.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.36.2">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.36.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.36.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.36.5">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.37.2">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.37.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.37.4">16.00</td>
<td class="ltx_td" id="A3.T20.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.38.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.38.3">13.33</td>
<td class="ltx_td" id="A3.T20.1.38.4"></td>
<td class="ltx_td" id="A3.T20.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.39.2">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.39.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.39.4">22.22</td>
<td class="ltx_td" id="A3.T20.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.40.2">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.40.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.40.4">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.40.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.41.2">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.41.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.41.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.41.5">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.42.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.42.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.42.4">14.81</td>
<td class="ltx_td" id="A3.T20.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.43.2">30.30</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.43.3">20.00</td>
<td class="ltx_td" id="A3.T20.1.43.4"></td>
<td class="ltx_td" id="A3.T20.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.44.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.44.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.44.4">25.93</td>
<td class="ltx_td" id="A3.T20.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.45.2">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.45.3">20.00</td>
<td class="ltx_td" id="A3.T20.1.45.4"></td>
<td class="ltx_td" id="A3.T20.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.46.2">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.46.4">20.00</td>
<td class="ltx_td" id="A3.T20.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.47.2">47.47</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.47.3">23.33</td>
<td class="ltx_td" id="A3.T20.1.47.4"></td>
<td class="ltx_td" id="A3.T20.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.48.2">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.48.3">16.67</td>
<td class="ltx_td" id="A3.T20.1.48.4"></td>
<td class="ltx_td" id="A3.T20.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.49.2">36.36</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.49.3">23.33</td>
<td class="ltx_td" id="A3.T20.1.49.4"></td>
<td class="ltx_td" id="A3.T20.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.50.2">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.50.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.50.4">29.63</td>
<td class="ltx_td" id="A3.T20.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.51.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.51.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.51.4">22.22</td>
<td class="ltx_td" id="A3.T20.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.52.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.52.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.52.4">18.52</td>
<td class="ltx_td" id="A3.T20.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.53.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.53.3">20.00</td>
<td class="ltx_td" id="A3.T20.1.53.4"></td>
<td class="ltx_td" id="A3.T20.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.54.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.54.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.54.4">33.33</td>
<td class="ltx_td" id="A3.T20.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.55.2">34.34</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.55.3">16.67</td>
<td class="ltx_td" id="A3.T20.1.55.4"></td>
<td class="ltx_td" id="A3.T20.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.56.1"><span class="ltx_text" id="A3.T20.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.56.2"><span class="ltx_text" id="A3.T20.1.56.2.1" style="background-color:#FCE5CD;">67.68</span></td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.56.3"><span class="ltx_text" id="A3.T20.1.56.3.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.56.4"><span class="ltx_text" id="A3.T20.1.56.4.1" style="background-color:#FCE5CD;">14.81</span></td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.56.5"><span class="ltx_text" id="A3.T20.1.56.5.1" style="background-color:#FCE5CD;">66.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T20.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.57.2">55.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.57.3">19.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.57.4">19.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T20.1.57.5">28.97</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T20.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.58.2">10.93</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.58.3">8.10</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.58.4">6.24</td>
<td class="ltx_td ltx_align_center" id="A3.T20.1.58.5">16.64</td>
</tr>
<tr class="ltx_tr" id="A3.T20.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T20.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T20.1.59.2">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T20.1.59.3">0.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T20.1.59.4">0.19</td>
<td class="ltx_td ltx_border_bb" id="A3.T20.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the DeepSeek-R1-1.5B language model, fine-tuned with multilingual supervised fine-tuning (MT-SFT), on the Multilingual Competition Level Math (MCLM) benchmark.  It shows the model's accuracy scores across four subsets of MCLM: MT-MATH100, MT-AIME2024, M-IMO, and M-MO, each covering different sets of math problems and languages. The results are broken down by language, and the table also includes the average performance across all languages and metrics such as standard deviation and Fleiss' Kappa to assess the consistency of the model's performance across various languages.
> <details>
> <summary>read the caption</summary>
> Table 20: Evaluation results of DeepSeek-R1-1.5B + MT-SFT on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T21.3">
<tr class="ltx_tr" id="A3.T21.3.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T21.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T21.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T21.3.1.2.1">BF (N=2048)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T21.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.T21.3.1.3.1">BF (N=4096)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T21.3.1.4"><span class="ltx_text ltx_font_bold" id="A3.T21.3.1.4.1">BF (N=8192)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.2.1"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.2.2"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.2.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.2.3"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.2.4"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.4.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.2.5"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.5.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.2.6"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.6.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.2.7"><span class="ltx_text ltx_font_bold" id="A3.T21.3.2.7.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.3.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.3.3">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.3.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.3.5">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.3.6">9.09</td>
<td class="ltx_td ltx_border_t" id="A3.T21.3.3.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.4.1">Albanian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.4.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.4.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.4.4">48.48</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.4.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.4.6">7.69</td>
<td class="ltx_td" id="A3.T21.3.4.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.5.1">Arabic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.5.2">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.5.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.5.4">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.5.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.5.6">14.81</td>
<td class="ltx_td" id="A3.T21.3.5.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.6.1">Bengali</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.6.2">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.6.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.6.4">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.6.5">23.33</td>
<td class="ltx_td" id="A3.T21.3.6.6"></td>
<td class="ltx_td" id="A3.T21.3.6.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.7.1">Bulgarian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.7.2">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.7.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.7.4">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.7.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.7.6">22.22</td>
<td class="ltx_td" id="A3.T21.3.7.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.8.1">Catalan</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.8.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.8.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.8.4">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.8.5">43.33</td>
<td class="ltx_td" id="A3.T21.3.8.6"></td>
<td class="ltx_td" id="A3.T21.3.8.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.9.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.9.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.9.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.9.4">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.9.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.9.6">22.22</td>
<td class="ltx_td" id="A3.T21.3.9.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.10.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.10.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.10.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.10.4">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.10.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.10.6">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.10.7"><span class="ltx_text" id="A3.T21.3.10.7.1">40.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.11.1">Croatian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.11.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.11.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.11.4">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.11.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.11.6">37.04</td>
<td class="ltx_td" id="A3.T21.3.11.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.12.1">Czech</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.12.2">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.12.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.12.4">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.12.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.12.6">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.12.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.13.1">Danish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.13.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.13.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.13.4">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.13.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.13.6">22.22</td>
<td class="ltx_td" id="A3.T21.3.13.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.14.1">Dutch</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.14.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.14.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.14.4">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.14.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.14.6">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.14.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.15.1">Estonian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.15.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.15.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.15.4">40.40</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.15.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.15.6">15.38</td>
<td class="ltx_td" id="A3.T21.3.15.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.16.1">Finnish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.16.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.16.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.16.4">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.16.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.16.6">30.77</td>
<td class="ltx_td" id="A3.T21.3.16.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.17.1">French</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.17.2">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.17.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.17.4">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.17.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.17.6">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.17.7">51.61</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.18.1">German</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.18.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.18.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.18.4">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.18.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.18.6">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.18.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.19.1">Greek</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.19.2">6.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.19.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.19.4">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.19.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.19.6">21.74</td>
<td class="ltx_td" id="A3.T21.3.19.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.20.1">Gujarati</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.20.2">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.20.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.20.4">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.20.5">16.67</td>
<td class="ltx_td" id="A3.T21.3.20.6"></td>
<td class="ltx_td" id="A3.T21.3.20.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.21.1">Hebrew</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.21.2">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.21.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.21.4">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.21.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.21.6">14.81</td>
<td class="ltx_td" id="A3.T21.3.21.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.22.1">Hindi</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.22.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.22.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.22.4">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.22.5">20.00</td>
<td class="ltx_td" id="A3.T21.3.22.6"></td>
<td class="ltx_td" id="A3.T21.3.22.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.23.1">Hungarian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.23.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.23.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.23.4">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.23.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.23.6">26.92</td>
<td class="ltx_td" id="A3.T21.3.23.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.24.1">Indonesian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.24.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.24.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.24.4">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.24.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.24.6">25</td>
<td class="ltx_td" id="A3.T21.3.24.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.25.1">Italian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.25.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.25.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.25.4">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.25.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.25.6">23.08</td>
<td class="ltx_td" id="A3.T21.3.25.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.26.1">Japanese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.26.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.26.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.26.4">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.26.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.26.6">23.08</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.26.7">7.14</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.27.1">Kannada</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.27.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.27.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.27.4">49.49</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.27.5">10.00</td>
<td class="ltx_td" id="A3.T21.3.27.6"></td>
<td class="ltx_td" id="A3.T21.3.27.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.28.1">Korean</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.28.2">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.28.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.28.4">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.28.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.28.6">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.28.7">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.29.1">Latvian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.29.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.29.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.29.4">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.29.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.29.6">23.08</td>
<td class="ltx_td" id="A3.T21.3.29.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.30.1">Lithuanian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.30.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.30.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.30.4">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.30.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.30.6">18.52</td>
<td class="ltx_td" id="A3.T21.3.30.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.31.1">Macedonian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.31.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.31.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.31.4">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.31.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.31.6">25.93</td>
<td class="ltx_td" id="A3.T21.3.31.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.32.1">Malayalam</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.32.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.32.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.32.4">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.32.5">13.33</td>
<td class="ltx_td" id="A3.T21.3.32.6"></td>
<td class="ltx_td" id="A3.T21.3.32.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.33.1">Marathi</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.33.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.33.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.33.4">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.33.5">23.33</td>
<td class="ltx_td" id="A3.T21.3.33.6"></td>
<td class="ltx_td" id="A3.T21.3.33.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.34.1">Nepali</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.34.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.34.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.34.4">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.34.5">20.00</td>
<td class="ltx_td" id="A3.T21.3.34.6"></td>
<td class="ltx_td" id="A3.T21.3.34.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.35.1">Norwegian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.35.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.35.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.35.4">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.35.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.35.6">18.52</td>
<td class="ltx_td" id="A3.T21.3.35.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.36.1">Persian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.36.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.36.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.36.4">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.36.5">36.67</td>
<td class="ltx_td" id="A3.T21.3.36.6"></td>
<td class="ltx_td" id="A3.T21.3.36.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.37.1">Polish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.37.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.37.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.37.4">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.37.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.37.6">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.37.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.38.1">Portuguese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.38.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.38.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.38.4">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.38.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.38.6">15.38</td>
<td class="ltx_td" id="A3.T21.3.38.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.39.1">Punjabi</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.39.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.39.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.39.4">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.39.5">20.00</td>
<td class="ltx_td" id="A3.T21.3.39.6"></td>
<td class="ltx_td" id="A3.T21.3.39.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.40.1">Romanian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.40.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.40.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.40.4">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.40.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.40.6">22.22</td>
<td class="ltx_td" id="A3.T21.3.40.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.41.1">Russian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.41.2">36.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.41.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.41.4">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.41.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.41.6">23.08</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.41.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.42.1">Slovak</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.42.2">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.42.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.42.4">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.42.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.42.6">25.93</td>
<td class="ltx_td" id="A3.T21.3.42.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.43.1">Slovenian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.43.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.43.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.43.4">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.43.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.43.6">25.93</td>
<td class="ltx_td" id="A3.T21.3.43.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.44.1">Somali</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.44.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.44.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.44.4">35.35</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.44.5">16.67</td>
<td class="ltx_td" id="A3.T21.3.44.6"></td>
<td class="ltx_td" id="A3.T21.3.44.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.45.1">Spanish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.45.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.45.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.45.4">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.45.5">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.45.6">18.52</td>
<td class="ltx_td" id="A3.T21.3.45.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.46.1">Swahili</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.46.2">13.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.46.4">41.41</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.46.5">30.00</td>
<td class="ltx_td" id="A3.T21.3.46.6"></td>
<td class="ltx_td" id="A3.T21.3.46.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.47.1">Swedish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.47.2">13.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.47.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.47.4">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.47.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.47.6">19.23</td>
<td class="ltx_td" id="A3.T21.3.47.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.48.1">Tagalog</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.48.2">10.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.48.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.48.4">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.48.5">23.33</td>
<td class="ltx_td" id="A3.T21.3.48.6"></td>
<td class="ltx_td" id="A3.T21.3.48.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.49.1">Tamil</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.49.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.49.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.49.4">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.49.5">23.33</td>
<td class="ltx_td" id="A3.T21.3.49.6"></td>
<td class="ltx_td" id="A3.T21.3.49.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.50.1">Telugu</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.50.2">13.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.50.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.50.4">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.50.5">20.00</td>
<td class="ltx_td" id="A3.T21.3.50.6"></td>
<td class="ltx_td" id="A3.T21.3.50.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.51.1">Thai</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.51.2">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.51.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.51.4">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.51.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.51.6">11.11</td>
<td class="ltx_td" id="A3.T21.3.51.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.52.1">Turkish</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.52.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.52.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.52.4">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.52.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.52.6">33.33</td>
<td class="ltx_td" id="A3.T21.3.52.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.53.1">Ukrainian</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.53.2">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.53.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.53.4">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.53.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.53.6">22.22</td>
<td class="ltx_td" id="A3.T21.3.53.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.54.1">Urdu</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.54.2">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.54.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.54.4">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.54.5">20.00</td>
<td class="ltx_td" id="A3.T21.3.54.6"></td>
<td class="ltx_td" id="A3.T21.3.54.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.55.1">Vietnamese</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.55.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.55.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.55.4">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.55.5">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.55.6">25.93</td>
<td class="ltx_td" id="A3.T21.3.55.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.56">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.56.1">Welsh</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.56.2">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.56.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.56.4">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.56.5">13.33</td>
<td class="ltx_td" id="A3.T21.3.56.6"></td>
<td class="ltx_td" id="A3.T21.3.56.7"></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.57" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.57.1"><span class="ltx_text" id="A3.T21.3.57.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.57.2"><span class="ltx_text" id="A3.T21.3.57.2.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.57.3"><span class="ltx_text" id="A3.T21.3.57.3.1" style="background-color:#FCE5CD;">26.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.57.4"><span class="ltx_text" id="A3.T21.3.57.4.1" style="background-color:#FCE5CD;">71.72</span></td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.57.5"><span class="ltx_text" id="A3.T21.3.57.5.1" style="background-color:#FCE5CD;">40.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.57.6"><span class="ltx_text" id="A3.T21.3.57.6.1" style="background-color:#FCE5CD;">22.22</span></td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.57.7"><span class="ltx_text" id="A3.T21.3.57.7.1" style="background-color:#FCE5CD;">76.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.58">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.58.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.58.2">22.48</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T21.3.58.3">22.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.58.4">59.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.58.5">24.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.58.6">21.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T21.3.58.7">35.21</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.59">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.59.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.59.2">7.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T21.3.59.3">6.85</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.59.4">10.52</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.59.5">8.32</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.59.6">6.44</td>
<td class="ltx_td ltx_align_center" id="A3.T21.3.59.7">19.01</td>
</tr>
<tr class="ltx_tr" id="A3.T21.3.60">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T21.3.60.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T21.3.60.2">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T21.3.60.3">0.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T21.3.60.4">0.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T21.3.60.5">0.32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T21.3.60.6">0.19</td>
<td class="ltx_td ltx_border_bb" id="A3.T21.3.60.7"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-1.5B-Instruct model on the MCLM benchmark using the Budget Forcing test-time scaling method. Three different budget levels (BF = 2048, 4096, 8192) are tested.  The results are shown for each of the four subsets of the MCLM benchmark (MT-MATH100, MT-AIME2024, M-IMO, M-MO) and for each language. Metrics include average accuracy and the Fleiss' kappa to measure cross-lingual consistency.
> <details>
> <summary>read the caption</summary>
> Table 21: Evaluation results of Qwen2.5-Math-1.5B-Instruct with Budget Forcing (B⁢F=2048,4096,8192𝐵𝐹204840968192BF=2048,4096,8192italic_B italic_F = 2048 , 4096 , 8192).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T22.1">
<tr class="ltx_tr" id="A3.T22.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T22.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T22.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T22.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T22.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T22.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T22.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T22.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T22.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T22.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T22.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T22.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.2.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.2.3">13.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.2.4">27.78</td>
<td class="ltx_td ltx_border_t" id="A3.T22.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.3.2">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.3.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.3.4">20</td>
<td class="ltx_td" id="A3.T22.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.4.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.4.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.4.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.5.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.5.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.5.4"></td>
<td class="ltx_td" id="A3.T22.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.6.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.6.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.6.4"></td>
<td class="ltx_td" id="A3.T22.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.7.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.7.3">20.00</td>
<td class="ltx_td" id="A3.T22.1.7.4"></td>
<td class="ltx_td" id="A3.T22.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.8.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.8.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.8.4">7.41</td>
<td class="ltx_td" id="A3.T22.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.9.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.9.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.9.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.9.5"><span class="ltx_text" id="A3.T22.1.9.5.1">56.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.10.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.10.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.10.4">22.22</td>
<td class="ltx_td" id="A3.T22.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.11.2">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.11.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.11.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.11.5">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.12.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.12.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.12.4">18.52</td>
<td class="ltx_td" id="A3.T22.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.13.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.13.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.13.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.13.5">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.14.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.14.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.14.4">20</td>
<td class="ltx_td" id="A3.T22.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.15.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.15.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.15.4">16</td>
<td class="ltx_td" id="A3.T22.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.16.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.16.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.16.4">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.16.5">48.39</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.17.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.17.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.17.4">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.17.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.18.2">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.18.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.18.4">10.53</td>
<td class="ltx_td" id="A3.T22.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.19.2">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.19.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.19.4"></td>
<td class="ltx_td" id="A3.T22.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.20.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.20.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.20.4">7.41</td>
<td class="ltx_td" id="A3.T22.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.21.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.21.3">30.00</td>
<td class="ltx_td" id="A3.T22.1.21.4"></td>
<td class="ltx_td" id="A3.T22.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.22.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.22.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.22.4">20</td>
<td class="ltx_td" id="A3.T22.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.23.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.23.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.23.4">19.05</td>
<td class="ltx_td" id="A3.T22.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.24.2">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.24.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.24.4">12</td>
<td class="ltx_td" id="A3.T22.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.25.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.25.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.25.4">16</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.25.5">3.57</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.26.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.26.3">20.00</td>
<td class="ltx_td" id="A3.T22.1.26.4"></td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.26.5">40</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.27.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.27.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.27.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.27.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.28.2">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.28.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.28.4">20</td>
<td class="ltx_td" id="A3.T22.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.29.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.29.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.29.4">25.93</td>
<td class="ltx_td" id="A3.T22.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.30.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.30.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.30.4">22.22</td>
<td class="ltx_td" id="A3.T22.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.31.2">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.31.3">10.00</td>
<td class="ltx_td" id="A3.T22.1.31.4"></td>
<td class="ltx_td" id="A3.T22.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.32.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.32.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.32.4"></td>
<td class="ltx_td" id="A3.T22.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.33.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.33.3">20.00</td>
<td class="ltx_td" id="A3.T22.1.33.4"></td>
<td class="ltx_td" id="A3.T22.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.34.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.34.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.34.4">22.22</td>
<td class="ltx_td" id="A3.T22.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.35.2">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.35.3">30.00</td>
<td class="ltx_td" id="A3.T22.1.35.4"></td>
<td class="ltx_td" id="A3.T22.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.36.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.36.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.36.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.36.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.37.2">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.37.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.37.4">20</td>
<td class="ltx_td" id="A3.T22.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.38.2">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.38.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.38.4"></td>
<td class="ltx_td" id="A3.T22.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.39.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.39.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.39.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.40.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.40.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.40.4">20</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.40.5">43.33</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.41.2">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.41.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.41.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.41.5">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.42.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.42.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.42.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.43.2">38.38</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.43.3">6.67</td>
<td class="ltx_td" id="A3.T22.1.43.4"></td>
<td class="ltx_td" id="A3.T22.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.44.2">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.44.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.44.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.45.2">46.46</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.45.3">13.33</td>
<td class="ltx_td" id="A3.T22.1.45.4"></td>
<td class="ltx_td" id="A3.T22.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.46.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.46.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.46.4">24</td>
<td class="ltx_td" id="A3.T22.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.47.2">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.47.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.47.4"></td>
<td class="ltx_td" id="A3.T22.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.48.2">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.48.3">10.00</td>
<td class="ltx_td" id="A3.T22.1.48.4"></td>
<td class="ltx_td" id="A3.T22.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.49.2">60.61</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.49.3">16.67</td>
<td class="ltx_td" id="A3.T22.1.49.4"></td>
<td class="ltx_td" id="A3.T22.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.50.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.50.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.50.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.51.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.51.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.51.4">7.41</td>
<td class="ltx_td" id="A3.T22.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.52.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.52.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.52.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.53.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.53.3">50.00</td>
<td class="ltx_td" id="A3.T22.1.53.4"></td>
<td class="ltx_td" id="A3.T22.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.54.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.54.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.54.4">14.81</td>
<td class="ltx_td" id="A3.T22.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.55.2">50.51</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.55.3">20.00</td>
<td class="ltx_td" id="A3.T22.1.55.4"></td>
<td class="ltx_td" id="A3.T22.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.56.1"><span class="ltx_text" id="A3.T22.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.56.2"><span class="ltx_text" id="A3.T22.1.56.2.1" style="background-color:#FCE5CD;">83.84</span></td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.56.3"><span class="ltx_text" id="A3.T22.1.56.3.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.56.4"><span class="ltx_text" id="A3.T22.1.56.4.1" style="background-color:#FCE5CD;">22.22</span></td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.56.5"><span class="ltx_text" id="A3.T22.1.56.5.1" style="background-color:#FCE5CD;">46.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T22.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.57.2">69.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.57.3">20.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.57.4">17.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T22.1.57.5">32.30</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T22.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.58.2">9.42</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.58.3">6.57</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.58.4">5.38</td>
<td class="ltx_td ltx_align_center" id="A3.T22.1.58.5">15.92</td>
</tr>
<tr class="ltx_tr" id="A3.T22.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T22.1.59.1">Fleiss Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T22.1.59.2">0.61</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T22.1.59.3">0.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T22.1.59.4">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T22.1.59.5">15.81</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-7B-Instruct model on the Multilingual Competition Level Math (MCLM) benchmark.  For each of the 55 languages included in MCLM, the table shows the model's accuracy scores on four different subsets of the benchmark: MT-MATH100, MT-AIME2024, M-IMO, and M-MO.  These subsets represent different difficulty levels and question types within the benchmark. The table also provides the average accuracy across all languages, the standard deviation, and Fleiss' kappa, a measure of inter-rater reliability.  This provides a comprehensive assessment of the model's multilingual performance.
> <details>
> <summary>read the caption</summary>
> Table 22: Evaluation results of Qwen2.5-Math-7B-Instruct with greedy decoding on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T23.3">
<tr class="ltx_tr" id="A3.T23.3.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T23.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T23.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T23.3.1.2.1">ORM (K=2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T23.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.T23.3.1.3.1">ORM (K=4)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T23.3.1.4"><span class="ltx_text ltx_font_bold" id="A3.T23.3.1.4.1">ORM (K=8)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.2.1"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.2.2"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.2.3"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.2.4"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.4.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.2.5"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.5.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.2.6"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.6.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.2.7"><span class="ltx_text ltx_font_bold" id="A3.T23.3.2.7.1">MT-AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.3.2">74.75</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.3.3">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.3.4">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.3.5">26.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.3.6">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.3.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.4.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.4.2">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.4.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.4.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.4.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.4.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.4.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.5.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.5.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.5.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.5.4">82.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.5.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.5.6">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.5.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.6.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.6.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.6.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.6.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.6.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.6.6">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.6.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.7.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.7.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.7.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.7.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.7.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.7.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.7.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.8.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.8.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.8.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.8.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.8.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.8.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.8.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.9.1">Chinese_(Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.9.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.9.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.9.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.9.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.9.6">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.9.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.10.1">Chinese_(Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.10.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.10.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.10.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.10.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.10.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.10.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.11.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.11.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.11.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.11.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.11.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.11.6">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.11.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.12.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.12.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.12.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.12.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.12.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.12.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.12.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.13.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.13.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.13.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.13.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.13.5">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.13.6">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.13.7">43.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.14.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.14.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.14.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.14.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.14.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.14.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.14.7">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.15.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.15.2">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.15.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.15.4">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.15.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.15.6">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.15.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.16.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.16.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.16.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.16.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.16.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.16.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.16.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.17.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.17.2">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.17.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.17.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.17.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.17.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.17.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.18.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.18.2">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.18.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.18.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.18.5">40.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.18.6">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.18.7">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.19.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.19.2">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.19.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.19.4">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.19.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.19.6">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.19.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.20.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.20.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.20.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.20.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.20.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.20.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.20.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.21.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.21.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.21.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.21.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.21.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.21.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.21.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.22.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.22.2">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.22.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.22.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.22.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.22.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.22.7">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.23.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.23.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.23.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.23.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.23.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.23.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.23.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.24.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.24.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.24.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.24.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.24.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.24.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.24.7">43.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.25.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.25.2">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.25.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.25.4">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.25.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.25.6">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.25.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.26.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.26.2">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.26.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.26.4">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.26.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.26.6">80.81</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.26.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.27.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.27.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.27.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.27.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.27.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.27.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.27.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.28.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.28.2">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.28.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.28.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.28.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.28.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.28.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.29.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.29.2">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.29.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.29.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.29.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.29.6">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.29.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.30.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.30.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.30.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.30.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.30.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.30.6">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.30.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.31.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.31.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.31.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.31.4">80.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.31.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.31.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.31.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.32.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.32.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.32.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.32.4">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.32.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.32.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.32.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.33.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.33.2">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.33.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.33.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.33.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.33.6">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.33.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.34.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.34.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.34.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.34.4">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.34.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.34.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.34.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.35.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.35.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.35.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.35.4">74.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.35.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.35.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.35.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.36.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.36.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.36.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.36.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.36.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.36.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.36.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.37.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.37.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.37.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.37.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.37.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.37.6">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.37.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.38.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.38.2">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.38.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.38.4">80.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.38.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.38.6">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.38.7">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.39.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.39.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.39.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.39.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.39.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.39.6">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.39.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.40.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.40.2">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.40.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.40.4">81.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.40.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.40.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.40.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.41.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.41.2">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.41.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.41.4">82.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.41.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.41.6">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.41.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.42.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.42.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.42.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.42.4">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.42.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.42.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.42.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.43.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.43.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.43.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.43.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.43.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.43.6">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.43.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.44.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.44.2">38.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.44.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.44.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.44.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.44.6">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.44.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.45.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.45.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.45.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.45.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.45.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.45.6">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.45.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.46.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.46.2">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.46.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.46.4">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.46.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.46.6">51.52</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.46.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.47.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.47.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.47.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.47.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.47.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.47.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.47.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.48.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.48.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.48.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.48.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.48.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.48.6">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.48.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.49.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.49.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.49.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.49.4">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.49.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.49.6">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.49.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.50.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.50.2">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.50.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.50.4">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.50.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.50.6">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.50.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.51.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.51.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.51.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.51.4">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.51.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.51.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.51.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.52.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.52.2">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.52.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.52.4">79.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.52.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.52.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.52.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.53.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.53.2">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.53.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.53.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.53.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.53.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.53.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.54.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.54.2">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.54.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.54.4">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.54.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.54.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.54.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.55.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.55.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.55.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.55.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.55.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.55.6">80.81</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.55.7">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.56">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.56.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.56.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.56.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.56.4">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.56.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.56.6">56.57</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.56.7">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.57" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.57.1"><span class="ltx_text" id="A3.T23.3.57.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.57.2"><span class="ltx_text" id="A3.T23.3.57.2.1" style="background-color:#FCE5CD;">84.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.57.3"><span class="ltx_text" id="A3.T23.3.57.3.1" style="background-color:#FCE5CD;">26.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.57.4"><span class="ltx_text" id="A3.T23.3.57.4.1" style="background-color:#FCE5CD;">84.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.57.5"><span class="ltx_text" id="A3.T23.3.57.5.1" style="background-color:#FCE5CD;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.57.6"><span class="ltx_text" id="A3.T23.3.57.6.1" style="background-color:#FCE5CD;">86.87</span></td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.57.7"><span class="ltx_text" id="A3.T23.3.57.7.1" style="background-color:#FCE5CD;">26.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.58">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.58.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.58.2">70.98</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.58.3">21.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.58.4">73.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T23.3.58.5">23.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.58.6">74.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T23.3.58.7">25.76</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.59">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.59.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.59.2">9.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.59.3">6.52</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.59.4">9.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T23.3.59.5">7.41</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.59.6">8.86</td>
<td class="ltx_td ltx_align_center" id="A3.T23.3.59.7">8.37</td>
</tr>
<tr class="ltx_tr" id="A3.T23.3.60">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T23.3.60.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T23.3.60.2">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T23.3.60.3">0.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T23.3.60.4">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T23.3.60.5">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T23.3.60.6">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T23.3.60.7">0.57</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-7B-Instruct model on the MT-MATH100 and MT-AIME2024 datasets using the Outcome Reward Modeling (ORM) method with different numbers of generated responses (K=2, 4, 8).  It shows the average accuracy, standard deviation, and Fleiss' Kappa scores for each model variant and dataset, providing insights into the model's performance and consistency across multiple attempts and languages.
> <details>
> <summary>read the caption</summary>
> Table 23: Evaluation results of Qwen2.5-Math-7B-Instruct with Best-of-N (K=2,4,8)𝐾248(K=2,4,8)( italic_K = 2 , 4 , 8 ) using Qwen2.5-Math-RM-72B as ORM on MT-MATH100 and MT-AIME2024.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T24.1">
<tr class="ltx_tr" id="A3.T24.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A3.T24.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T24.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T24.1.1.2.1">PRM (S=3, c=3)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A3.T24.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T24.1.1.3.1">PRM (S=4, c=5)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T24.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T24.1.1.4.1">PRM (S=5, c=8)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.2.1"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.2.2"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.2.3"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.2.4"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.4.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.2.5"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.5.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.2.6"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.6.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.2.7"><span class="ltx_text ltx_font_bold" id="A3.T24.1.2.7.1">MT-AIME2024</span></td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.3.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.3.2">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.3.3">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.3.4">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.3.5">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.3.6">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.3.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.4.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.4.2">60.61</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.4.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.4.4">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.4.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.4.6">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.4.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.5.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.5.2">65.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.5.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.5.4">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.5.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.5.6">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.5.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.6.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.6.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.6.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.6.4">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.6.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.6.6">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.6.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.7.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.7.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.7.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.7.4">74.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.7.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.7.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.7.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.8.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.8.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.8.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.8.4">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.8.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.8.6">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.8.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.9.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.9.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.9.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.9.4">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.9.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.9.6">78.79</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.9.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.10.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.10.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.10.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.10.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.10.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.10.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.10.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.11.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.11.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.11.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.11.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.11.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.11.6">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.11.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.12.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.12.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.12.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.12.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.12.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.12.6">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.12.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.13.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.13.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.13.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.13.4">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.13.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.13.6">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.13.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.14.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.14.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.14.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.14.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.14.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.14.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.14.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.15.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.15.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.15.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.15.4">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.15.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.15.6">59.60</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.15.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.16.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.16.2">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.16.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.16.4">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.16.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.16.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.16.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.17.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.17.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.17.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.17.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.17.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.17.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.17.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.18.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.18.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.18.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.18.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.18.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.18.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.18.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.19.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.19.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.19.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.19.4">64.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.19.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.19.6">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.19.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.20.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.20.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.20.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.20.4">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.20.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.20.6">55.56</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.20.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.21.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.21.2">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.21.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.21.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.21.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.21.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.21.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.22.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.22.2">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.22.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.22.4">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.22.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.22.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.22.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.23.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.23.2">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.23.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.23.4">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.23.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.23.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.23.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.24.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.24.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.24.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.24.4">68.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.24.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.24.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.24.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.25.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.25.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.25.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.25.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.25.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.25.6">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.25.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.26.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.26.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.26.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.26.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.26.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.26.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.26.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.27.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.27.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.27.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.27.4">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.27.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.27.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.27.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.28.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.28.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.28.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.28.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.28.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.28.6">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.28.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.29.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.29.2">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.29.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.29.4">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.29.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.29.6">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.29.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.30.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.30.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.30.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.30.4">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.30.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.30.6">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.30.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.31.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.31.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.31.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.31.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.31.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.31.6">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.31.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.32.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.32.2">49.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.32.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.32.4">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.32.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.32.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.32.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.33.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.33.2">56.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.33.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.33.4">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.33.5">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.33.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.33.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.34.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.34.2">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.34.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.34.4">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.34.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.34.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.34.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.35.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.35.2">69.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.35.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.35.4">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.35.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.35.6">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.35.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.36.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.36.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.36.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.36.4">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.36.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.36.6">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.36.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.37.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.37.2">61.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.37.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.37.4">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.37.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.37.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.37.7">10.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.38.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.38.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.38.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.38.4">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.38.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.38.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.38.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.39.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.39.2">46.46</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.39.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.39.4">45.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.39.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.39.6">52.53</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.39.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.40.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.40.2">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.40.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.40.4">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.40.5">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.40.6">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.40.7">30.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.41.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.41.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.41.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.41.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.41.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.41.6">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.41.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.42.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.42.2">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.42.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.42.4">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.42.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.42.6">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.42.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.43.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.43.2">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.43.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.43.4">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.43.5">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.43.6">74.75</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.43.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.44.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.44.2">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.44.3">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.44.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.44.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.44.6">42.42</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.44.7">6.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.45.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.45.2">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.45.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.45.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.45.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.45.6">80.81</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.45.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.46.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.46.2">48.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.46.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.46.4">42.42</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.46.5">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.46.6">44.44</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.46.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.47.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.47.2">70.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.47.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.47.4">76.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.47.5">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.47.6">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.47.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.48.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.48.2">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.48.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.48.4">59.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.48.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.48.6">58.59</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.48.7">13.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.49.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.49.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.49.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.49.4">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.49.5">3.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.49.6">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.49.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.50.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.50.2">53.54</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.50.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.50.4">58.59</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.50.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.50.6">54.55</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.50.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.51.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.51.2">67.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.51.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.51.4">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.51.5">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.51.6">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.51.7">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.52.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.52.2">63.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.52.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.52.4">71.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.52.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.52.6">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.52.7">16.67</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.53.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.53.2">75.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.53.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.53.4">77.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.53.5">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.53.6">79.80</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.53.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.54.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.54.2">57.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.54.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.54.4">62.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.54.5">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.54.6">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.54.7">23.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.55.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.55.2">72.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.55.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.55.4">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.55.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.55.6">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.55.7">33.33</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.56">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.56.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.56.2">50.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.56.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.56.4">43.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.56.5">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.56.6">45.45</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.56.7">20.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.57" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.57.1"><span class="ltx_text" id="A3.T24.1.57.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.57.2"><span class="ltx_text" id="A3.T24.1.57.2.1" style="background-color:#FCE5CD;">73.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.57.3"><span class="ltx_text" id="A3.T24.1.57.3.1" style="background-color:#FCE5CD;">23.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.57.4"><span class="ltx_text" id="A3.T24.1.57.4.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.57.5"><span class="ltx_text" id="A3.T24.1.57.5.1" style="background-color:#FCE5CD;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.57.6"><span class="ltx_text" id="A3.T24.1.57.6.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.57.7"><span class="ltx_text" id="A3.T24.1.57.7.1" style="background-color:#FCE5CD;">23.33</span></td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.58">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.58.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.58.2">64.17</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.58.3">17.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.58.4">67.09</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T24.1.58.5">19.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.58.6">68.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T24.1.58.7">22.00</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.59">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.59.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.59.2">9.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.59.3">5.33</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.59.4">9.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T24.1.59.5">7.61</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.59.6">10.02</td>
<td class="ltx_td ltx_align_center" id="A3.T24.1.59.7">6.56</td>
</tr>
<tr class="ltx_tr" id="A3.T24.1.60">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T24.1.60.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T24.1.60.2">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T24.1.60.3">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T24.1.60.4">0.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T24.1.60.5">0.57</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T24.1.60.6">0.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T24.1.60.7">0.59</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Qwen2.5-Math-7B-Instruct model on the MT-MATH100 and MT-AIME2024 subsets of the MCLM benchmark when employing the Qwen2.5-Math-PRM-72B model as a process reward model (PRM).  It shows the average accuracy, standard deviation, and Fleiss' Kappa scores for each dataset. The table displays the results for various process reward modeling configurations which control the number of generation steps (S) and candidate continuations (c) to explore and balance the trade-off between reasoning capacity and computational cost.
> <details>
> <summary>read the caption</summary>
> Table 24: Evaluation results of Qwen2.5-Math-7B-Instruct using Qwen2.5-Math-PRM-72B as PRM on MT-MATH100 and MT-AIME2024.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T25.1">
<tr class="ltx_tr" id="A3.T25.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T25.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T25.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T25.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T25.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T25.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T25.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T25.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T25.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T25.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T25.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T25.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.2.2">73.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.2.3">23.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.2.4">9.09</td>
<td class="ltx_td ltx_border_t" id="A3.T25.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.3.2">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.3.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.3.4">15.38</td>
<td class="ltx_td" id="A3.T25.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.4.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.4.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.4.4">3.70</td>
<td class="ltx_td" id="A3.T25.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.5.2">64.65</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.5.3">3.33</td>
<td class="ltx_td" id="A3.T25.1.5.4"></td>
<td class="ltx_td" id="A3.T25.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.6.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.6.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.6.4">18.52</td>
<td class="ltx_td" id="A3.T25.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.7.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.7.3">26.67</td>
<td class="ltx_td" id="A3.T25.1.7.4"></td>
<td class="ltx_td" id="A3.T25.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.8.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.8.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.8.4">14.81</td>
<td class="ltx_td" id="A3.T25.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.9.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.9.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.9.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.9.5"><span class="ltx_text" id="A3.T25.1.9.5.1">26.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.10.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.10.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.10.4">18.52</td>
<td class="ltx_td" id="A3.T25.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.11.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.11.3">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.11.4">11.11</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.11.5">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.12.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.12.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.12.4">22.22</td>
<td class="ltx_td" id="A3.T25.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.13.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.13.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.13.4">3.70</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.13.5">3.33</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.14.2">76.77</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.14.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.14.4">15.38</td>
<td class="ltx_td" id="A3.T25.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.15.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.15.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.15.4">15.38</td>
<td class="ltx_td" id="A3.T25.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.16.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.16.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.16.4">14.81</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.16.5">48.39</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.17.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.17.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.17.4">18.52</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.17.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.18.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.18.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.18.4">13.04</td>
<td class="ltx_td" id="A3.T25.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.19.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.19.3">13.33</td>
<td class="ltx_td" id="A3.T25.1.19.4"></td>
<td class="ltx_td" id="A3.T25.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.20.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.20.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.20.4">7.41</td>
<td class="ltx_td" id="A3.T25.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.21.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.21.3">6.67</td>
<td class="ltx_td" id="A3.T25.1.21.4"></td>
<td class="ltx_td" id="A3.T25.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.22.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.22.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.22.4">11.54</td>
<td class="ltx_td" id="A3.T25.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.23.2">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.23.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.23.4">16.67</td>
<td class="ltx_td" id="A3.T25.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.24.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.24.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.24.4">11.54</td>
<td class="ltx_td" id="A3.T25.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.25.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.25.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.25.4">7.69</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.25.5">7.14</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.26.2">61.62</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.26.3">23.33</td>
<td class="ltx_td" id="A3.T25.1.26.4"></td>
<td class="ltx_td" id="A3.T25.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.27.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.27.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.27.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.27.5">36.67</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.28.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.28.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.28.4">7.69</td>
<td class="ltx_td" id="A3.T25.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.29.2">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.29.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.29.4">7.41</td>
<td class="ltx_td" id="A3.T25.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.30.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.30.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.30.4">22.22</td>
<td class="ltx_td" id="A3.T25.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.31.2">62.63</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.31.3">23.33</td>
<td class="ltx_td" id="A3.T25.1.31.4"></td>
<td class="ltx_td" id="A3.T25.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.32.2">63.64</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.32.3">20.00</td>
<td class="ltx_td" id="A3.T25.1.32.4"></td>
<td class="ltx_td" id="A3.T25.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.33.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.33.3">10.00</td>
<td class="ltx_td" id="A3.T25.1.33.4"></td>
<td class="ltx_td" id="A3.T25.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.34.2">75.76</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.34.3">30.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.34.4">11.11</td>
<td class="ltx_td" id="A3.T25.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.35.2">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.35.3">26.67</td>
<td class="ltx_td" id="A3.T25.1.35.4"></td>
<td class="ltx_td" id="A3.T25.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.36.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.36.3">13.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.36.4">22.22</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.36.5">26.67</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.37.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.37.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.37.4">7.69</td>
<td class="ltx_td" id="A3.T25.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.38.2">69.70</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.38.3">16.67</td>
<td class="ltx_td" id="A3.T25.1.38.4"></td>
<td class="ltx_td" id="A3.T25.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.39.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.39.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.39.4">11.11</td>
<td class="ltx_td" id="A3.T25.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.40.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.40.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.40.4">15.38</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.40.5">50.00</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.41.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.41.3">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.41.4">18.52</td>
<td class="ltx_td" id="A3.T25.1.41.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.42.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.42.3">16.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.42.4">7.41</td>
<td class="ltx_td" id="A3.T25.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.43.2">57.58</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.43.3">20.00</td>
<td class="ltx_td" id="A3.T25.1.43.4"></td>
<td class="ltx_td" id="A3.T25.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.44.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.44.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.44.4">14.81</td>
<td class="ltx_td" id="A3.T25.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.45.2">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.45.3">23.33</td>
<td class="ltx_td" id="A3.T25.1.45.4"></td>
<td class="ltx_td" id="A3.T25.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.46.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.46.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.46.4">23.08</td>
<td class="ltx_td" id="A3.T25.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.47.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.47.3">20.00</td>
<td class="ltx_td" id="A3.T25.1.47.4"></td>
<td class="ltx_td" id="A3.T25.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.48.2">67.68</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.48.3">20.00</td>
<td class="ltx_td" id="A3.T25.1.48.4"></td>
<td class="ltx_td" id="A3.T25.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.49.2">66.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.49.3">16.67</td>
<td class="ltx_td" id="A3.T25.1.49.4"></td>
<td class="ltx_td" id="A3.T25.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.50.2">70.71</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.50.3">26.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.50.4">7.41</td>
<td class="ltx_td" id="A3.T25.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.51.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.51.3">10.00</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.51.4">11.11</td>
<td class="ltx_td" id="A3.T25.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.52.2">73.74</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.52.3">23.33</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.52.4">14.81</td>
<td class="ltx_td" id="A3.T25.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.53.2">68.69</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.53.3">23.33</td>
<td class="ltx_td" id="A3.T25.1.53.4"></td>
<td class="ltx_td" id="A3.T25.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.54.2">71.72</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.54.3">6.67</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.54.4">14.81</td>
<td class="ltx_td" id="A3.T25.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.55.2">65.66</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.55.3">26.67</td>
<td class="ltx_td" id="A3.T25.1.55.4"></td>
<td class="ltx_td" id="A3.T25.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.56.1"><span class="ltx_text" id="A3.T25.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.56.2"><span class="ltx_text" id="A3.T25.1.56.2.1" style="background-color:#FCE5CD;">75.76</span></td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.56.3"><span class="ltx_text" id="A3.T25.1.56.3.1" style="background-color:#FCE5CD;">33.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.56.4"><span class="ltx_text" id="A3.T25.1.56.4.1" style="background-color:#FCE5CD;">7.41</span></td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.56.5"><span class="ltx_text" id="A3.T25.1.56.5.1" style="background-color:#FCE5CD;">50.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T25.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.57.2">70.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.57.3">20.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.57.4">13.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T25.1.57.5">30.81</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T25.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.58.2">3.68</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.58.3">6.83</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.58.4">5.36</td>
<td class="ltx_td ltx_align_center" id="A3.T25.1.58.5">15.80</td>
</tr>
<tr class="ltx_tr" id="A3.T25.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T25.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T25.1.59.2">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T25.1.59.3">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T25.1.59.4">0.25</td>
<td class="ltx_td ltx_border_bb" id="A3.T25.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the GPT-4-mini language model on the Multilingual Competition Level Math (MCLM) benchmark.  The results are obtained using greedy decoding, which means the model generates its response without any additional test-time scaling or refinement strategies. The table displays the accuracy scores for the model across four subsets of MCLM: MT-MATH100, MT-AIME2024, M-IMO, and M-MO, along with overall average performance, standard deviation, and Fleiss' Kappa score.  Each row in the table represents a different language included in the MCLM benchmark, allowing for the analysis of the model's performance across diverse languages and problem types. The Fleiss' Kappa score is a measure of inter-rater reliability in this case reflecting the consistency of model performance across languages.
> <details>
> <summary>read the caption</summary>
> Table 25: Evaluation results of gpt-4o-mini with greedy decoding on MCLM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T26.1">
<tr class="ltx_tr" id="A3.T26.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T26.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T26.1.1.1.1">Language</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T26.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T26.1.1.2.1">MT-MATH100</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T26.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T26.1.1.3.1">MT-AIME2024</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T26.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T26.1.1.4.1">M-IMO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T26.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T26.1.1.5.1">M-MO</span></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T26.1.2.1">Afrikaans</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.2.2">85.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.2.3">46.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.2.4">33.33</td>
<td class="ltx_td ltx_border_t" id="A3.T26.1.2.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.3.1">Albanian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.3.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.3.3">53.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.3.4">28.00</td>
<td class="ltx_td" id="A3.T26.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.4.1">Arabic</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.4.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.4.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.4.4">22.22</td>
<td class="ltx_td" id="A3.T26.1.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.5.1">Bengali</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.5.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.5.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.5.4"></td>
<td class="ltx_td" id="A3.T26.1.5.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.6.1">Bulgarian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.6.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.6.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.6.4">40.74</td>
<td class="ltx_td" id="A3.T26.1.6.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.7.1">Catalan</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.7.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.7.3">53.33</td>
<td class="ltx_td" id="A3.T26.1.7.4"></td>
<td class="ltx_td" id="A3.T26.1.7.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.8.1">Chinese (Simplified)</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.8.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.8.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.8.4">25.93</td>
<td class="ltx_td" id="A3.T26.1.8.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.9.1">Chinese (Traditional)</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.9.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.9.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.9.4">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.9.5"><span class="ltx_text" id="A3.T26.1.9.5.1">66.67</span></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.10.1">Croatian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.10.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.10.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.10.4">33.33</td>
<td class="ltx_td" id="A3.T26.1.10.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.11.1">Czech</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.11.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.11.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.11.4">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.11.5">53.33</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.12.1">Danish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.12.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.12.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.12.4">40.74</td>
<td class="ltx_td" id="A3.T26.1.12.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.13.1">Dutch</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.13.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.13.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.13.4">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.13.5">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.14.1">Estonian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.14.2">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.14.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.14.4">28.00</td>
<td class="ltx_td" id="A3.T26.1.14.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.15.1">Finnish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.15.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.15.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.15.4">28.00</td>
<td class="ltx_td" id="A3.T26.1.15.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.16.1">French</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.16.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.16.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.16.4">29.63</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.16.5">67.74</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.17.1">German</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.17.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.17.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.17.4">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.17.5">43.33</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.18.1">Greek</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.18.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.18.3">56.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.18.4">21.05</td>
<td class="ltx_td" id="A3.T26.1.18.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.19.1">Gujarati</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.19.2">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.19.3">46.67</td>
<td class="ltx_td" id="A3.T26.1.19.4"></td>
<td class="ltx_td" id="A3.T26.1.19.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.20.1">Hebrew</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.20.2">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.20.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.20.4">7.41</td>
<td class="ltx_td" id="A3.T26.1.20.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.21.1">Hindi</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.21.2">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.21.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.21.4"></td>
<td class="ltx_td" id="A3.T26.1.21.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.22.1">Hungarian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.22.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.22.3">53.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.22.4">28.00</td>
<td class="ltx_td" id="A3.T26.1.22.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.23.1">Indonesian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.23.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.23.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.23.4">33.33</td>
<td class="ltx_td" id="A3.T26.1.23.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.24.1">Italian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.24.2">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.24.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.24.4">36.00</td>
<td class="ltx_td" id="A3.T26.1.24.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.25.1">Japanese</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.25.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.25.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.25.4">16.00</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.25.5">17.86</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.26.1">Kannada</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.26.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.26.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.26.4"></td>
<td class="ltx_td" id="A3.T26.1.26.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.27.1">Korean</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.27.2">77.78</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.27.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.27.4">25.93</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.27.5">60.00</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.28.1">Latvian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.28.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.28.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.28.4">32.00</td>
<td class="ltx_td" id="A3.T26.1.28.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.29.1">Lithuanian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.29.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.29.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.29.4">33.33</td>
<td class="ltx_td" id="A3.T26.1.29.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.30.1">Macedonian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.30.2">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.30.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.30.4">33.33</td>
<td class="ltx_td" id="A3.T26.1.30.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.31.1">Malayalam</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.31.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.31.3">46.67</td>
<td class="ltx_td" id="A3.T26.1.31.4"></td>
<td class="ltx_td" id="A3.T26.1.31.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.32.1">Marathi</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.32.2">83.84</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.32.3">36.67</td>
<td class="ltx_td" id="A3.T26.1.32.4"></td>
<td class="ltx_td" id="A3.T26.1.32.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.33.1">Nepali</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.33.2">79.8</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.33.3">46.67</td>
<td class="ltx_td" id="A3.T26.1.33.4"></td>
<td class="ltx_td" id="A3.T26.1.33.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.34.1">Norwegian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.34.2">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.34.3">53.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.34.4">22.22</td>
<td class="ltx_td" id="A3.T26.1.34.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.35.1">Persian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.35.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.35.3">53.33</td>
<td class="ltx_td" id="A3.T26.1.35.4"></td>
<td class="ltx_td" id="A3.T26.1.35.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.36.1">Polish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.36.2">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.36.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.36.4">37.04</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.36.5">40.00</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.37.1">Portuguese</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.37.2">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.37.3">36.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.37.4">36.00</td>
<td class="ltx_td" id="A3.T26.1.37.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.38.1">Punjabi</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.38.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.38.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.38.4"></td>
<td class="ltx_td" id="A3.T26.1.38.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.39.1">Romanian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.39.2">81.82</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.39.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.39.4">40.74</td>
<td class="ltx_td" id="A3.T26.1.39.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.40.1">Russian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.40.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.40.3">56.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.40.4">20.00</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.40.5">50.00</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.41.1">Slovak</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.41.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.41.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.41.4">33.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.41.5">46.67</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.42.1">Slovenian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.42.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.42.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.42.4">29.63</td>
<td class="ltx_td" id="A3.T26.1.42.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.43.1">Somali</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.43.2">87.88</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.43.3">50</td>
<td class="ltx_td" id="A3.T26.1.43.4"></td>
<td class="ltx_td" id="A3.T26.1.43.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.44.1">Spanish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.44.2">72.73</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.44.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.44.4">29.63</td>
<td class="ltx_td" id="A3.T26.1.44.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.45.1">Swahili</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.45.2">86.87</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.45.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.45.4"></td>
<td class="ltx_td" id="A3.T26.1.45.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.46.1">Swedish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.46.2">79.8</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.46.3">43.33</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.46.4">28.00</td>
<td class="ltx_td" id="A3.T26.1.46.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.47.1">Tagalog</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.47.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.47.3">46.67</td>
<td class="ltx_td" id="A3.T26.1.47.4"></td>
<td class="ltx_td" id="A3.T26.1.47.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.48.1">Tamil</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.48.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.48.3">43.33</td>
<td class="ltx_td" id="A3.T26.1.48.4"></td>
<td class="ltx_td" id="A3.T26.1.48.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.49">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.49.1">Telugu</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.49.2">82.83</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.49.3">33.33</td>
<td class="ltx_td" id="A3.T26.1.49.4"></td>
<td class="ltx_td" id="A3.T26.1.49.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.50.1">Thai</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.50.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.50.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.50.4">22.22</td>
<td class="ltx_td" id="A3.T26.1.50.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.51.1">Turkish</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.51.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.51.3">40</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.51.4">33.33</td>
<td class="ltx_td" id="A3.T26.1.51.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.52">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.52.1">Ukrainian</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.52.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.52.3">50</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.52.4">29.63</td>
<td class="ltx_td" id="A3.T26.1.52.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.53">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.53.1">Urdu</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.53.2">84.85</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.53.3">36.67</td>
<td class="ltx_td" id="A3.T26.1.53.4"></td>
<td class="ltx_td" id="A3.T26.1.53.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.54">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.54.1">Vietnamese</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.54.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.54.3">46.67</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.54.4">37.04</td>
<td class="ltx_td" id="A3.T26.1.54.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.55">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.55.1">Welsh</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.55.2">85.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.55.3">46.67</td>
<td class="ltx_td" id="A3.T26.1.55.4"></td>
<td class="ltx_td" id="A3.T26.1.55.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.56" style="background-color:#FCE5CD;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.56.1" style="background-color:#FCE5CD;"><span class="ltx_text" id="A3.T26.1.56.1.1" style="background-color:#FCE5CD;">English</span></td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.56.2"><span class="ltx_text" id="A3.T26.1.56.2.1" style="background-color:#FCE5CD;">83.84</span></td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.56.3"><span class="ltx_text" id="A3.T26.1.56.3.1" style="background-color:#FCE5CD;">36.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.56.4"><span class="ltx_text" id="A3.T26.1.56.4.1" style="background-color:#FCE5CD;">29.63</span></td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.56.5"><span class="ltx_text" id="A3.T26.1.56.5.1" style="background-color:#FCE5CD;">80.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.57">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T26.1.57.1">Average</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.57.2">84.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.57.3">45.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.57.4">29.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T26.1.57.5">51.42</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.58">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T26.1.58.1">Standard Deviation</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.58.2">2.80</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.58.3">5.35</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.58.4">6.86</td>
<td class="ltx_td ltx_align_center" id="A3.T26.1.58.5">16.94</td>
</tr>
<tr class="ltx_tr" id="A3.T26.1.59">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T26.1.59.1">Fleiss’ Kappa</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T26.1.59.2">0.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T26.1.59.3">0.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T26.1.59.4">0.44</td>
<td class="ltx_td ltx_border_bb" id="A3.T26.1.59.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the o3-mini model on the Multilingual Competition Level Math (MCLM) benchmark.  It shows the accuracy of the model for each of the four subsets of the MCLM benchmark (MT-MATH100, MT-AIME2024, M-IMO, and M-MO),  broken down by language.  The table also includes the average performance across all languages, the standard deviation, and Fleiss' kappa, a measure of inter-annotator agreement, reflecting the consistency of the model's performance across different languages.
> <details>
> <summary>read the caption</summary>
> Table 26: Evaluation results of o3-mini with greedy decoding on MCLM.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.17407/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.17407/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}