---
title: "Leanabell-Prover: Posttraining Scaling in Formal Reasoning"
summary: "Leanabelle-Prover: Scaling Formal Reasoning via Posttraining"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Kuaishou Technology",]
showSummary: true
date: 2025-04-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06122 {{< /keyword >}}
{{< keyword icon="writer" >}} Jingyuan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06122" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06122" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06122/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advances in LLMs for automated theorem proving (ATP) show promise using Lean 4 codes. To catch up with recent posttraining scaling breakthroughs, this paper investigates ATP posttraining, aligning it with advancements in natural language reasoning models. The researchers continually trained ATP models using a hybrid dataset combining statement-proof pairs with data mimicking human-like reasoning. Reinforcement learning was incorporated using feedback from the Lean 4 compiler.



Through continual training and reinforcement learning, the researchers enhanced formal provers like DeepSeek-Prover and Goedel-Prover, achieving state-of-the-art performance in whole-proof generation. For example, Leanabelle-Prover attained a 59.8% pass rate on MiniF2F. The framework surpasses DeepSeek-Prover-v1.5-RL by 6.6% and Goedel-Prover-SFT by 2.2%. Additionally, the team is releasing data and training details to help follow through.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Posttraining scaling can significantly improve formal mathematical reasoning in ATP models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Integrating cognitive behaviors via synthetic data enhances self-reflection capabilities in models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Leanabelle-Prover achieves state-of-the-art performance on the MiniF2F-test. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work demonstrates that **scaling laws are also applicable to formal mathematical reasoning**, offering insights and a practical approach for enhancing ATP models. This suggests potential for solving highly complex math problems and may be useful to various researchers to follow through.

------
#### Visual Insights



![](https://arxiv.org/html/2504.06122/x1.png)

> 🔼 The bar chart displays the performance comparison of different methods on the MiniF2F-test benchmark.  The x-axis represents the different methods: DeepSeek-Prover-v1.5 (using Supervised Fine-Tuning, SFT), DeepSeek-Prover-v1.5 (with Reinforcement Learning, RL), Goedel-Prover (SFT), and the proposed method (Leanabell-Prover using RL). The y-axis represents the passing rate (%). The chart shows that the Leanabell-Prover method, using RL, significantly outperforms the baseline models (DeepSeek-Prover-v1.5-RL and Goedel-Prover-SFT), achieving a 6.6% and 2.2% higher passing rate, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Benchmark performance on MiniF2F-test (Zheng et al., 2021). Our method boosts both the two baseline models after employing RL training. Goedel-Prover-RL is our implementation. Our framework surpasses DeepSeek-Prover-v1.5-RL and Goedel-Prover-SFT 6.6% and 2.2%, respectively.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Data Source</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">FS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">FS+IC+PF</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.2.1.1">Lean Workbook <cite class="ltx_cite ltx_citemacro_citep">(Ying et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib36" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.2">140K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.3">40K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.3.2.1">STP-Lean <cite class="ltx_cite ltx_citemacro_citep">(Dong and Ma, <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib7" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.2">400K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.3">36K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.4.3.1">NuminaMath <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib12" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.2">520K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.3">97K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.5.4.1">AoPS <cite class="ltx_cite ltx_citemacro_citep">(<a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib2" title="">AoPS, </a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.2">370K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.4.3">26K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.6.5.1">PromptCoT <cite class="ltx_cite ltx_citemacro_citep">(Zhao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib38" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.2">90K</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.5.3">20K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.7.6.1">Total</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.7.6.2">1.52M</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.1.7.6.3">0.22M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 shows the sources and quantities of data used to train the Leanabell-Prover model.  It combines existing publicly released datasets from prior research with newly generated synthetic data. The table breaks down each dataset into the number of formal statements (FS), formal proofs (PF), and informal comments (IC) included.  This detailed breakdown helps to understand the composition of the training data and its potential impact on the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Distribution of our training sources, including released data by existing models and synthetic data from informal math problems. FS, PF and IC refer to formal statements, proofs and informal comments, respectively.
> </details>





### In-depth insights


#### ATP Scaling
**ATP (Automated Theorem Proving) scaling** is explored within the context of Large Language Models (LLMs), drawing parallels to the scaling advancements observed in natural language reasoning models. The paper investigates **post-training scaling** techniques for ATP, aiming to bridge the performance gap between LLMs in natural language tasks and their application in formal reasoning with Lean 4 codes. This involves continual training of ATP models using a hybrid dataset, including statement-proof pairs and data designed to emulate human reasoning processes. Reinforcement learning (RL) is also employed, utilizing the Lean 4 compiler's outcome reward to further refine the models. The goal is to enhance the ability of existing formal provers to generate complete and valid proofs, achieving state-of-the-art performance in whole-proof generation. The investigation addresses challenges in formal language reasoning and aims to improve performance in ATP tasks, such as increasing the pass rate on benchmarks like MiniF2F.

#### Hybrid Training
While "Hybrid Training" isn't explicitly mentioned, the paper does incorporate several elements that suggest a hybrid approach to training formal reasoning models.  The core of the work involves **continual training**, where pre-existing models (DeepSeek-Prover and Goedel-Prover) are further trained on a mixed dataset. This dataset itself is a hybrid, containing both existing formal statement-proof pairs and **synthetically generated data** designed to instill cognitive behaviors like self-reflection. This combination of real and synthetic data is a key characteristic of hybrid training.  Furthermore, the paper utilizes **reinforcement learning (RL)**, which could be seen as another element in the hybrid strategy.  The RL component uses rewards derived from the Lean 4 compiler to guide the model towards generating valid proofs. This blends supervised learning (the continual training) with reinforcement learning, creating a comprehensive and adaptive training regime. The design choices reflect a deliberate effort to integrate various learning paradigms.

#### Lean4 as Reward
**Lean4, acting as a reward function**, is a compelling strategy for improving automated theorem proving. **By leveraging the Lean4 compiler to verify proof validity**, the system obtains valuable feedback on whether the generated proofs are syntactically correct and logically sound. This binary feedback, acting as a reward signal, enables reinforcement learning agents to optimize their proof generation strategies. **The use of Lean4's feedback is advantageous as it offers deterministic and objective evaluation**. However, this approach solely relies on final proof verification. **It might miss opportunities for intermediate rewards during proof construction**, potentially leading to less efficient exploration. Further, designing reward functions that incorporate intermediate steps could boost the performance.

#### Cognitive Models
From the context, the work emphasizes **integrating human-like reasoning** (verification, backtracking, subgoal setting) into formal theorem provers. The paper suggests that without these cognitive abilities, reinforcement learning (RL) algorithms struggle to achieve significant improvements. It also highlights the idea that directly instilling meta-thinking capabilities into Language Models (LLMs) may be more effective than relying solely on RL, and suggests a paradigm shift towards **zero RL training**. A key point is the authors' suspicion that the **underperformance of RL strategies** in formal reasoning might stem from neglecting these fundamental cognitive aspects, paving the way for integrating the cognitive behavior to achieve zero RL training.

#### RL Limitations
The paper acknowledges limitations related to Reinforcement Learning (RL) in formal reasoning. The base prover model appears weaker compared to LLMs used in natural language post-training, hindering full RL potential. Despite integrating cognitive behaviors and careful prompt selection, stronger RL performance didn't fully materialize. The observed weakening of self-reflection capacities after RL suggests challenges in effectively integrating these behaviors into weaker base LLMs. **This implies that the success of RL is highly dependent on the capabilities of the underlying model**, and simply applying RL techniques without addressing the core model's limitations may not yield significant improvements. **Further research is needed to improve the base model itself** before expecting substantial gains from RL.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.06122/x2.png)

> 🔼 Figure 2 is a bar chart that visualizes the distribution of mathematical domains across different Lean 4 datasets.  The x-axis represents various mathematical domains, such as calculus, linear algebra, logic, number theory, etc. The y-axis shows the ratio or proportion of each domain within a specific dataset. The figure compares the distribution of mathematical domains in four training datasets (Lean Workbook, Goedel-Prover, STP Lean, and NuminaMath) and two test datasets (MiniF2F and ProofNet). This allows for a comparison of the training data's representativeness compared to the test datasets, giving insight into potential biases or imbalances in the training data.  The chart provides valuable insights into whether the training data adequately covers the range of mathematical concepts present in the test sets, which is crucial for model generalizability.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distributions of math domains in various Lean 4 dataset. Lean Workbook, Goedel-Prover, STP Lean and NuminaMath are training set. MiniF2F and ProofNet are test set.
> </details>



![](https://arxiv.org/html/2504.06122/x3.png)

> 🔼 Figure 3 illustrates the exploration capabilities of the base models (DeepSeek-Prover-v1.5-SFT and Goedel-Prover-SFT) before reinforcement learning.  The metric 'pass@16' represents the rate at which the model produces valid proofs (with at least 16 steps being successfully verified), while varying the sampling temperature. A higher pass@16 rate at lower temperatures indicates that the model is less prone to exploring unexpected or less optimal tactics during proof generation; conversely, a high pass@16 rate at higher temperatures suggests a greater capacity for exploration and discovery of alternative proof paths. This figure is crucial for evaluating the readiness of the base models for reinforcement learning, as it highlights their balance between exploration and exploitation during proof generation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Exploration ability: pass@16 measures how well base models explore.
> </details>



![](https://arxiv.org/html/2504.06122/x8.png)

> 🔼 This figure displays two reward curves, one for Leanabell-Prover-DS-RL and the other for Leanabell-Prover-GD-RL, illustrating the change in reward over the course of their respective reinforcement learning (RL) training processes.  The x-axis represents the training step, while the y-axis represents the reward received by the model. The curves visualize the learning progress of each model, indicating how effectively they learned to generate valid proofs during training.  The differences between the curves could reflect the effect of varying initial model parameters or training data.
> <details>
> <summary>read the caption</summary>
> Figure 4: Left: Reward curve during training Leanabell-Prover-Prover-DS-RL. Right: Reward curve during training Leanabell-Prover-Prover-GD-RL.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.28.28">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.28.28.29.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.28.28.29.1.1" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.29.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.28.28.29.1.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.29.1.2.1" style="font-size:90%;">Sample budget</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.28.28.29.1.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.29.1.3.1" style="font-size:90%;">miniF2F-test</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-left:14.5pt;padding-right:14.5pt;">
<span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">TheoremLlama [</span><cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib28" title="">28</a></cite><span class="ltx_text" id="S4.T2.1.1.1.2.2" style="font-size:90%;">]</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="33.6\%" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mn id="S4.T2.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml">33.6</mn><mo id="S4.T2.1.1.1.1.m1.1.1.1" mathsize="90%" xref="S4.T2.1.1.1.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1">percent</csymbol><cn id="S4.T2.1.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T2.1.1.1.1.m1.1.1.2">33.6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">33.6\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">33.6 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.3.3.3" style="padding-left:14.5pt;padding-right:14.5pt;">
<span class="ltx_text" id="S4.T2.3.3.3.3.1" style="font-size:90%;">DeepSeek-Prover-v1 [</span><cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib32" title="">32</a></cite><span class="ltx_text" id="S4.T2.3.3.3.3.2" style="font-size:90%;">]</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mn id="S4.T2.2.2.2.1.m1.1.1" mathsize="90%" xref="S4.T2.2.2.2.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><cn id="S4.T2.2.2.2.1.m1.1.1.cmml" type="integer" xref="S4.T2.2.2.2.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="46.1\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.3.3.3.2.m1.1"><semantics id="S4.T2.3.3.3.2.m1.1a"><mrow id="S4.T2.3.3.3.2.m1.1.1" xref="S4.T2.3.3.3.2.m1.1.1.cmml"><mrow id="S4.T2.3.3.3.2.m1.1.1.2" xref="S4.T2.3.3.3.2.m1.1.1.2.cmml"><mn id="S4.T2.3.3.3.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.3.3.3.2.m1.1.1.2.2.cmml">46.1</mn><mo id="S4.T2.3.3.3.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.3.3.3.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.3.3.3.2.m1.1.1.1" mathsize="90%" xref="S4.T2.3.3.3.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.3.3.3.2.m1.1.1.3" xref="S4.T2.3.3.3.2.m1.1.1.3.cmml"><mn id="S4.T2.3.3.3.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.3.3.3.2.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.3.3.3.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.3.3.3.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.2.m1.1b"><apply id="S4.T2.3.3.3.2.m1.1.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.3.3.3.2.m1.1.1.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.3.3.3.2.m1.1.1.2.cmml" xref="S4.T2.3.3.3.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.3.3.3.2.m1.1.1.2.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.3.3.3.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.3.3.3.2.m1.1.1.2.2">46.1</cn></apply><apply id="S4.T2.3.3.3.2.m1.1.1.3.cmml" xref="S4.T2.3.3.3.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.3.3.3.2.m1.1.1.3.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.3.3.3.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.3.3.3.2.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.2.m1.1c">46.1\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.2.m1.1d">46.1 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.4.4.2" rowspan="3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.4.4.4.2.1" style="font-size:90%;">DeepSeek-Prover-v1.5-Base [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib33" title="">33</a></cite>]</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.4.4.4.3.1" style="font-size:90%;">128</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="29.7\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mrow id="S4.T2.4.4.4.1.m1.1.1" xref="S4.T2.4.4.4.1.m1.1.1.cmml"><mrow id="S4.T2.4.4.4.1.m1.1.1.2" xref="S4.T2.4.4.4.1.m1.1.1.2.cmml"><mn id="S4.T2.4.4.4.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.4.4.4.1.m1.1.1.2.2.cmml">29.7</mn><mo id="S4.T2.4.4.4.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.4.4.4.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.4.4.4.1.m1.1.1.1" mathsize="90%" xref="S4.T2.4.4.4.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.4.4.4.1.m1.1.1.3" xref="S4.T2.4.4.4.1.m1.1.1.3.cmml"><mn id="S4.T2.4.4.4.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.4.4.4.1.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.4.4.4.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.4.4.4.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><apply id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.4.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.4.4.4.1.m1.1.1.2.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.4.4.4.1.m1.1.1.2.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.4.4.4.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.4.4.4.1.m1.1.1.2.2">29.7</cn></apply><apply id="S4.T2.4.4.4.1.m1.1.1.3.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.4.4.4.1.m1.1.1.3.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.4.4.4.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.4.4.4.1.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">29.7\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">29.7 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.5.5.5.2.1" style="font-size:90%;">3200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="39.2\%" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mrow id="S4.T2.5.5.5.1.m1.1.1" xref="S4.T2.5.5.5.1.m1.1.1.cmml"><mn id="S4.T2.5.5.5.1.m1.1.1.2" mathsize="90%" xref="S4.T2.5.5.5.1.m1.1.1.2.cmml">39.2</mn><mo id="S4.T2.5.5.5.1.m1.1.1.1" mathsize="90%" xref="S4.T2.5.5.5.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><apply id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.5.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.1">percent</csymbol><cn id="S4.T2.5.5.5.1.m1.1.1.2.cmml" type="float" xref="S4.T2.5.5.5.1.m1.1.1.2">39.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">39.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">39.2 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.6.6.6.2.1" style="font-size:90%;">6400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="42.2\%" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mrow id="S4.T2.6.6.6.1.m1.1.1" xref="S4.T2.6.6.6.1.m1.1.1.cmml"><mn id="S4.T2.6.6.6.1.m1.1.1.2" mathsize="90%" xref="S4.T2.6.6.6.1.m1.1.1.2.cmml">42.2</mn><mo id="S4.T2.6.6.6.1.m1.1.1.1" mathsize="90%" xref="S4.T2.6.6.6.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><apply id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.6.6.6.1.m1.1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1.1">percent</csymbol><cn id="S4.T2.6.6.6.1.m1.1.1.2.cmml" type="float" xref="S4.T2.6.6.6.1.m1.1.1.2">42.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">42.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">42.2 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.7.7.7.2" rowspan="4" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.7.7.7.2.1" style="font-size:90%;">DeepSeek-Prover-v1.5-SFT [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib33" title="">33</a></cite>]</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.7.7.7.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="48.2\%\pm 0.6\%" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mrow id="S4.T2.7.7.7.1.m1.1.1" xref="S4.T2.7.7.7.1.m1.1.1.cmml"><mrow id="S4.T2.7.7.7.1.m1.1.1.2" xref="S4.T2.7.7.7.1.m1.1.1.2.cmml"><mn id="S4.T2.7.7.7.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.7.7.7.1.m1.1.1.2.2.cmml">48.2</mn><mo id="S4.T2.7.7.7.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.7.7.7.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.7.7.7.1.m1.1.1.1" mathsize="90%" xref="S4.T2.7.7.7.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.7.7.7.1.m1.1.1.3" xref="S4.T2.7.7.7.1.m1.1.1.3.cmml"><mn id="S4.T2.7.7.7.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.7.7.7.1.m1.1.1.3.2.cmml">0.6</mn><mo id="S4.T2.7.7.7.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.7.7.7.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><apply id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.7.7.7.1.m1.1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.7.7.7.1.m1.1.1.2.cmml" xref="S4.T2.7.7.7.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.7.7.7.1.m1.1.1.2.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.7.7.7.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.7.7.7.1.m1.1.1.2.2">48.2</cn></apply><apply id="S4.T2.7.7.7.1.m1.1.1.3.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.7.7.7.1.m1.1.1.3.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.7.7.7.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.7.7.7.1.m1.1.1.3.2">0.6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">48.2\%\pm 0.6\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">48.2 % ± 0.6 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.8.8.8.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="49.6\%\pm 0.7\%" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.1.m1.1a"><mrow id="S4.T2.8.8.8.1.m1.1.1" xref="S4.T2.8.8.8.1.m1.1.1.cmml"><mrow id="S4.T2.8.8.8.1.m1.1.1.2" xref="S4.T2.8.8.8.1.m1.1.1.2.cmml"><mn id="S4.T2.8.8.8.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.8.8.8.1.m1.1.1.2.2.cmml">49.6</mn><mo id="S4.T2.8.8.8.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.8.8.8.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.8.8.8.1.m1.1.1.1" mathsize="90%" xref="S4.T2.8.8.8.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.8.8.8.1.m1.1.1.3" xref="S4.T2.8.8.8.1.m1.1.1.3.cmml"><mn id="S4.T2.8.8.8.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.8.8.8.1.m1.1.1.3.2.cmml">0.7</mn><mo id="S4.T2.8.8.8.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.8.8.8.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.m1.1b"><apply id="S4.T2.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.8.8.8.1.m1.1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.8.8.8.1.m1.1.1.2.cmml" xref="S4.T2.8.8.8.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.8.8.8.1.m1.1.1.2.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.8.8.8.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.8.8.8.1.m1.1.1.2.2">49.6</cn></apply><apply id="S4.T2.8.8.8.1.m1.1.1.3.cmml" xref="S4.T2.8.8.8.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.8.8.8.1.m1.1.1.3.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.8.8.8.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.8.8.8.1.m1.1.1.3.2">0.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.m1.1c">49.6\%\pm 0.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.m1.1d">49.6 % ± 0.7 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10">
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.1.m1.1a"><mn id="S4.T2.9.9.9.1.m1.1.1" mathsize="90%" xref="S4.T2.9.9.9.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.1.m1.1b"><cn id="S4.T2.9.9.9.1.m1.1.1.cmml" type="integer" xref="S4.T2.9.9.9.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="50.4\%\pm 0.4\%" class="ltx_Math" display="inline" id="S4.T2.10.10.10.2.m1.1"><semantics id="S4.T2.10.10.10.2.m1.1a"><mrow id="S4.T2.10.10.10.2.m1.1.1" xref="S4.T2.10.10.10.2.m1.1.1.cmml"><mrow id="S4.T2.10.10.10.2.m1.1.1.2" xref="S4.T2.10.10.10.2.m1.1.1.2.cmml"><mn id="S4.T2.10.10.10.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.10.10.10.2.m1.1.1.2.2.cmml">50.4</mn><mo id="S4.T2.10.10.10.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.10.10.10.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.10.10.10.2.m1.1.1.1" mathsize="90%" xref="S4.T2.10.10.10.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.10.10.10.2.m1.1.1.3" xref="S4.T2.10.10.10.2.m1.1.1.3.cmml"><mn id="S4.T2.10.10.10.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.10.10.10.2.m1.1.1.3.2.cmml">0.4</mn><mo id="S4.T2.10.10.10.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.10.10.10.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.2.m1.1b"><apply id="S4.T2.10.10.10.2.m1.1.1.cmml" xref="S4.T2.10.10.10.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.10.10.10.2.m1.1.1.1.cmml" xref="S4.T2.10.10.10.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.10.10.10.2.m1.1.1.2.cmml" xref="S4.T2.10.10.10.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.10.10.10.2.m1.1.1.2.1.cmml" xref="S4.T2.10.10.10.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.10.10.10.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.10.10.10.2.m1.1.1.2.2">50.4</cn></apply><apply id="S4.T2.10.10.10.2.m1.1.1.3.cmml" xref="S4.T2.10.10.10.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.10.10.10.2.m1.1.1.3.1.cmml" xref="S4.T2.10.10.10.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.10.10.10.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.10.10.10.2.m1.1.1.3.2">0.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.2.m1.1c">50.4\%\pm 0.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.2.m1.1d">50.4 % ± 0.4 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="3200" class="ltx_Math" display="inline" id="S4.T2.11.11.11.1.m1.1"><semantics id="S4.T2.11.11.11.1.m1.1a"><mn id="S4.T2.11.11.11.1.m1.1.1" mathsize="90%" xref="S4.T2.11.11.11.1.m1.1.1.cmml">3200</mn><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.1.m1.1b"><cn id="S4.T2.11.11.11.1.m1.1.1.cmml" type="integer" xref="S4.T2.11.11.11.1.m1.1.1">3200</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.1.m1.1c">3200</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.1.m1.1d">3200</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="53.3\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.12.12.12.2.m1.1"><semantics id="S4.T2.12.12.12.2.m1.1a"><mrow id="S4.T2.12.12.12.2.m1.1.1" xref="S4.T2.12.12.12.2.m1.1.1.cmml"><mrow id="S4.T2.12.12.12.2.m1.1.1.2" xref="S4.T2.12.12.12.2.m1.1.1.2.cmml"><mn id="S4.T2.12.12.12.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.12.12.12.2.m1.1.1.2.2.cmml">53.3</mn><mo id="S4.T2.12.12.12.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.12.12.12.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.12.12.12.2.m1.1.1.1" mathsize="90%" xref="S4.T2.12.12.12.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.12.12.12.2.m1.1.1.3" xref="S4.T2.12.12.12.2.m1.1.1.3.cmml"><mn id="S4.T2.12.12.12.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.12.12.12.2.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.12.12.12.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.12.12.12.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.2.m1.1b"><apply id="S4.T2.12.12.12.2.m1.1.1.cmml" xref="S4.T2.12.12.12.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.12.12.12.2.m1.1.1.1.cmml" xref="S4.T2.12.12.12.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.12.12.12.2.m1.1.1.2.cmml" xref="S4.T2.12.12.12.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.12.12.12.2.m1.1.1.2.1.cmml" xref="S4.T2.12.12.12.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.12.12.12.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.12.12.12.2.m1.1.1.2.2">53.3</cn></apply><apply id="S4.T2.12.12.12.2.m1.1.1.3.cmml" xref="S4.T2.12.12.12.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.12.12.12.2.m1.1.1.3.1.cmml" xref="S4.T2.12.12.12.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.12.12.12.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.12.12.12.2.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.2.m1.1c">53.3\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.2.m1.1d">53.3 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.13.13.13.2" rowspan="4" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.13.13.13.2.1" style="font-size:90%;">DeepSeek-Prover-v1.5-RL [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib33" title="">33</a></cite>]</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.13.13.13.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.13.13.13.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="50.0\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.13.13.13.1.m1.1"><semantics id="S4.T2.13.13.13.1.m1.1a"><mrow id="S4.T2.13.13.13.1.m1.1.1" xref="S4.T2.13.13.13.1.m1.1.1.cmml"><mrow id="S4.T2.13.13.13.1.m1.1.1.2" xref="S4.T2.13.13.13.1.m1.1.1.2.cmml"><mn id="S4.T2.13.13.13.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.13.13.13.1.m1.1.1.2.2.cmml">50.0</mn><mo id="S4.T2.13.13.13.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.13.13.13.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.13.13.13.1.m1.1.1.1" mathsize="90%" xref="S4.T2.13.13.13.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.13.13.13.1.m1.1.1.3" xref="S4.T2.13.13.13.1.m1.1.1.3.cmml"><mn id="S4.T2.13.13.13.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.13.13.13.1.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.13.13.13.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.13.13.13.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.1.m1.1b"><apply id="S4.T2.13.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.13.13.13.1.m1.1.1.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.13.13.13.1.m1.1.1.2.cmml" xref="S4.T2.13.13.13.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.13.13.13.1.m1.1.1.2.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.13.13.13.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.13.13.13.1.m1.1.1.2.2">50.0</cn></apply><apply id="S4.T2.13.13.13.1.m1.1.1.3.cmml" xref="S4.T2.13.13.13.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.13.13.13.1.m1.1.1.3.1.cmml" xref="S4.T2.13.13.13.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.13.13.13.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.13.13.13.1.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.1.m1.1c">50.0\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.1.m1.1d">50.0 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.14.14">
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.14.14.14.2.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="50.7\%\pm 0.4\%" class="ltx_Math" display="inline" id="S4.T2.14.14.14.1.m1.1"><semantics id="S4.T2.14.14.14.1.m1.1a"><mrow id="S4.T2.14.14.14.1.m1.1.1" xref="S4.T2.14.14.14.1.m1.1.1.cmml"><mrow id="S4.T2.14.14.14.1.m1.1.1.2" xref="S4.T2.14.14.14.1.m1.1.1.2.cmml"><mn id="S4.T2.14.14.14.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.14.14.14.1.m1.1.1.2.2.cmml">50.7</mn><mo id="S4.T2.14.14.14.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.14.14.14.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.14.14.14.1.m1.1.1.1" mathsize="90%" xref="S4.T2.14.14.14.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.14.14.14.1.m1.1.1.3" xref="S4.T2.14.14.14.1.m1.1.1.3.cmml"><mn id="S4.T2.14.14.14.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.14.14.14.1.m1.1.1.3.2.cmml">0.4</mn><mo id="S4.T2.14.14.14.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.14.14.14.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.1.m1.1b"><apply id="S4.T2.14.14.14.1.m1.1.1.cmml" xref="S4.T2.14.14.14.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.14.14.14.1.m1.1.1.1.cmml" xref="S4.T2.14.14.14.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.14.14.14.1.m1.1.1.2.cmml" xref="S4.T2.14.14.14.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.14.14.14.1.m1.1.1.2.1.cmml" xref="S4.T2.14.14.14.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.14.14.14.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.14.14.14.1.m1.1.1.2.2">50.7</cn></apply><apply id="S4.T2.14.14.14.1.m1.1.1.3.cmml" xref="S4.T2.14.14.14.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.14.14.14.1.m1.1.1.3.1.cmml" xref="S4.T2.14.14.14.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.14.14.14.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.14.14.14.1.m1.1.1.3.2">0.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.1.m1.1c">50.7\%\pm 0.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.1.m1.1d">50.7 % ± 0.4 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16.16">
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.15.15.15.1.m1.1"><semantics id="S4.T2.15.15.15.1.m1.1a"><mn id="S4.T2.15.15.15.1.m1.1.1" mathsize="90%" xref="S4.T2.15.15.15.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.1.m1.1b"><cn id="S4.T2.15.15.15.1.m1.1.1.cmml" type="integer" xref="S4.T2.15.15.15.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="51.6\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.16.16.16.2.m1.1"><semantics id="S4.T2.16.16.16.2.m1.1a"><mrow id="S4.T2.16.16.16.2.m1.1.1" xref="S4.T2.16.16.16.2.m1.1.1.cmml"><mrow id="S4.T2.16.16.16.2.m1.1.1.2" xref="S4.T2.16.16.16.2.m1.1.1.2.cmml"><mn id="S4.T2.16.16.16.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.16.16.16.2.m1.1.1.2.2.cmml">51.6</mn><mo id="S4.T2.16.16.16.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.16.16.16.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.16.16.16.2.m1.1.1.1" mathsize="90%" xref="S4.T2.16.16.16.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.16.16.16.2.m1.1.1.3" xref="S4.T2.16.16.16.2.m1.1.1.3.cmml"><mn id="S4.T2.16.16.16.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.16.16.16.2.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.16.16.16.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.16.16.16.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.2.m1.1b"><apply id="S4.T2.16.16.16.2.m1.1.1.cmml" xref="S4.T2.16.16.16.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.16.16.16.2.m1.1.1.1.cmml" xref="S4.T2.16.16.16.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.16.16.16.2.m1.1.1.2.cmml" xref="S4.T2.16.16.16.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.16.16.16.2.m1.1.1.2.1.cmml" xref="S4.T2.16.16.16.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.16.16.16.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.16.16.16.2.m1.1.1.2.2">51.6</cn></apply><apply id="S4.T2.16.16.16.2.m1.1.1.3.cmml" xref="S4.T2.16.16.16.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.16.16.16.2.m1.1.1.3.1.cmml" xref="S4.T2.16.16.16.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.16.16.16.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.16.16.16.2.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.2.m1.1c">51.6\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.2.m1.1d">51.6 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18.18">
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="3200" class="ltx_Math" display="inline" id="S4.T2.17.17.17.1.m1.1"><semantics id="S4.T2.17.17.17.1.m1.1a"><mn id="S4.T2.17.17.17.1.m1.1.1" mathsize="90%" xref="S4.T2.17.17.17.1.m1.1.1.cmml">3200</mn><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.1.m1.1b"><cn id="S4.T2.17.17.17.1.m1.1.1.cmml" type="integer" xref="S4.T2.17.17.17.1.m1.1.1">3200</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.1.m1.1c">3200</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.1.m1.1d">3200</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.18.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="54.9\%\pm 0.7\%" class="ltx_Math" display="inline" id="S4.T2.18.18.18.2.m1.1"><semantics id="S4.T2.18.18.18.2.m1.1a"><mrow id="S4.T2.18.18.18.2.m1.1.1" xref="S4.T2.18.18.18.2.m1.1.1.cmml"><mrow id="S4.T2.18.18.18.2.m1.1.1.2" xref="S4.T2.18.18.18.2.m1.1.1.2.cmml"><mn id="S4.T2.18.18.18.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.18.18.18.2.m1.1.1.2.2.cmml">54.9</mn><mo id="S4.T2.18.18.18.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.18.18.18.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.18.18.18.2.m1.1.1.1" mathsize="90%" xref="S4.T2.18.18.18.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.18.18.18.2.m1.1.1.3" xref="S4.T2.18.18.18.2.m1.1.1.3.cmml"><mn id="S4.T2.18.18.18.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.18.18.18.2.m1.1.1.3.2.cmml">0.7</mn><mo id="S4.T2.18.18.18.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.18.18.18.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.2.m1.1b"><apply id="S4.T2.18.18.18.2.m1.1.1.cmml" xref="S4.T2.18.18.18.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.18.18.18.2.m1.1.1.1.cmml" xref="S4.T2.18.18.18.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.18.18.18.2.m1.1.1.2.cmml" xref="S4.T2.18.18.18.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.18.18.18.2.m1.1.1.2.1.cmml" xref="S4.T2.18.18.18.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.18.18.18.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.18.18.18.2.m1.1.1.2.2">54.9</cn></apply><apply id="S4.T2.18.18.18.2.m1.1.1.3.cmml" xref="S4.T2.18.18.18.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.18.18.18.2.m1.1.1.3.1.cmml" xref="S4.T2.18.18.18.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.18.18.18.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.18.18.18.2.m1.1.1.3.2">0.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.2.m1.1c">54.9\%\pm 0.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.2.m1.1d">54.9 % ± 0.7 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.20.20.20.3" rowspan="2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.20.20.20.3.1" style="font-size:90%;">STP [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib7" title="">7</a></cite>]</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.19.19.19.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.19.19.19.1.m1.1"><semantics id="S4.T2.19.19.19.1.m1.1a"><mn id="S4.T2.19.19.19.1.m1.1.1" mathsize="90%" xref="S4.T2.19.19.19.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.1.m1.1b"><cn id="S4.T2.19.19.19.1.m1.1.1.cmml" type="integer" xref="S4.T2.19.19.19.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.20.20.20.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="51.6\%\pm 0.5\%" class="ltx_Math" display="inline" id="S4.T2.20.20.20.2.m1.1"><semantics id="S4.T2.20.20.20.2.m1.1a"><mrow id="S4.T2.20.20.20.2.m1.1.1" xref="S4.T2.20.20.20.2.m1.1.1.cmml"><mrow id="S4.T2.20.20.20.2.m1.1.1.2" xref="S4.T2.20.20.20.2.m1.1.1.2.cmml"><mn id="S4.T2.20.20.20.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.20.20.20.2.m1.1.1.2.2.cmml">51.6</mn><mo id="S4.T2.20.20.20.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.20.20.20.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.20.20.20.2.m1.1.1.1" mathsize="90%" xref="S4.T2.20.20.20.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.20.20.20.2.m1.1.1.3" xref="S4.T2.20.20.20.2.m1.1.1.3.cmml"><mn id="S4.T2.20.20.20.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.20.20.20.2.m1.1.1.3.2.cmml">0.5</mn><mo id="S4.T2.20.20.20.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.20.20.20.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.2.m1.1b"><apply id="S4.T2.20.20.20.2.m1.1.1.cmml" xref="S4.T2.20.20.20.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.20.20.20.2.m1.1.1.1.cmml" xref="S4.T2.20.20.20.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.20.20.20.2.m1.1.1.2.cmml" xref="S4.T2.20.20.20.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.20.20.20.2.m1.1.1.2.1.cmml" xref="S4.T2.20.20.20.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.20.20.20.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.20.20.20.2.m1.1.1.2.2">51.6</cn></apply><apply id="S4.T2.20.20.20.2.m1.1.1.3.cmml" xref="S4.T2.20.20.20.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.20.20.20.2.m1.1.1.3.1.cmml" xref="S4.T2.20.20.20.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.20.20.20.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.20.20.20.2.m1.1.1.3.2">0.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.2.m1.1c">51.6\%\pm 0.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.2.m1.1d">51.6 % ± 0.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.22">
<td class="ltx_td ltx_align_center" id="S4.T2.21.21.21.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="3200" class="ltx_Math" display="inline" id="S4.T2.21.21.21.1.m1.1"><semantics id="S4.T2.21.21.21.1.m1.1a"><mn id="S4.T2.21.21.21.1.m1.1.1" mathsize="90%" xref="S4.T2.21.21.21.1.m1.1.1.cmml">3200</mn><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.1.m1.1b"><cn id="S4.T2.21.21.21.1.m1.1.1.cmml" type="integer" xref="S4.T2.21.21.21.1.m1.1.1">3200</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.1.m1.1c">3200</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.1.m1.1d">3200</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.2" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="54.9\%\pm 0.7\%" class="ltx_Math" display="inline" id="S4.T2.22.22.22.2.m1.1"><semantics id="S4.T2.22.22.22.2.m1.1a"><mrow id="S4.T2.22.22.22.2.m1.1.1" xref="S4.T2.22.22.22.2.m1.1.1.cmml"><mrow id="S4.T2.22.22.22.2.m1.1.1.2" xref="S4.T2.22.22.22.2.m1.1.1.2.cmml"><mn id="S4.T2.22.22.22.2.m1.1.1.2.2" mathsize="90%" xref="S4.T2.22.22.22.2.m1.1.1.2.2.cmml">54.9</mn><mo id="S4.T2.22.22.22.2.m1.1.1.2.1" mathsize="90%" xref="S4.T2.22.22.22.2.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.22.22.22.2.m1.1.1.1" mathsize="90%" xref="S4.T2.22.22.22.2.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.22.22.22.2.m1.1.1.3" xref="S4.T2.22.22.22.2.m1.1.1.3.cmml"><mn id="S4.T2.22.22.22.2.m1.1.1.3.2" mathsize="90%" xref="S4.T2.22.22.22.2.m1.1.1.3.2.cmml">0.7</mn><mo id="S4.T2.22.22.22.2.m1.1.1.3.1" mathsize="90%" xref="S4.T2.22.22.22.2.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.2.m1.1b"><apply id="S4.T2.22.22.22.2.m1.1.1.cmml" xref="S4.T2.22.22.22.2.m1.1.1"><csymbol cd="latexml" id="S4.T2.22.22.22.2.m1.1.1.1.cmml" xref="S4.T2.22.22.22.2.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.22.22.22.2.m1.1.1.2.cmml" xref="S4.T2.22.22.22.2.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.22.22.22.2.m1.1.1.2.1.cmml" xref="S4.T2.22.22.22.2.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.22.22.22.2.m1.1.1.2.2.cmml" type="float" xref="S4.T2.22.22.22.2.m1.1.1.2.2">54.9</cn></apply><apply id="S4.T2.22.22.22.2.m1.1.1.3.cmml" xref="S4.T2.22.22.22.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.22.22.22.2.m1.1.1.3.1.cmml" xref="S4.T2.22.22.22.2.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.22.22.22.2.m1.1.1.3.2.cmml" type="float" xref="S4.T2.22.22.22.2.m1.1.1.3.2">0.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.2.m1.1c">54.9\%\pm 0.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.2.m1.1d">54.9 % ± 0.7 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.23.23.23.2" rowspan="2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.23.23.23.2.1" style="font-size:90%;">Goedel-Prover-SFT [<cite class="ltx_cite ltx_citemacro_citenum"><a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib15" title="">15</a></cite>]</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.23.23.23.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.23.23.23.3.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.23.23.23.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="57.6\%\pm 0.7\%" class="ltx_Math" display="inline" id="S4.T2.23.23.23.1.m1.1"><semantics id="S4.T2.23.23.23.1.m1.1a"><mrow id="S4.T2.23.23.23.1.m1.1.1" xref="S4.T2.23.23.23.1.m1.1.1.cmml"><mrow id="S4.T2.23.23.23.1.m1.1.1.2" xref="S4.T2.23.23.23.1.m1.1.1.2.cmml"><mn id="S4.T2.23.23.23.1.m1.1.1.2.2" mathsize="90%" xref="S4.T2.23.23.23.1.m1.1.1.2.2.cmml">57.6</mn><mo id="S4.T2.23.23.23.1.m1.1.1.2.1" mathsize="90%" xref="S4.T2.23.23.23.1.m1.1.1.2.1.cmml">%</mo></mrow><mo id="S4.T2.23.23.23.1.m1.1.1.1" mathsize="90%" xref="S4.T2.23.23.23.1.m1.1.1.1.cmml">±</mo><mrow id="S4.T2.23.23.23.1.m1.1.1.3" xref="S4.T2.23.23.23.1.m1.1.1.3.cmml"><mn id="S4.T2.23.23.23.1.m1.1.1.3.2" mathsize="90%" xref="S4.T2.23.23.23.1.m1.1.1.3.2.cmml">0.7</mn><mo id="S4.T2.23.23.23.1.m1.1.1.3.1" mathsize="90%" xref="S4.T2.23.23.23.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.1.m1.1b"><apply id="S4.T2.23.23.23.1.m1.1.1.cmml" xref="S4.T2.23.23.23.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.23.23.23.1.m1.1.1.1.cmml" xref="S4.T2.23.23.23.1.m1.1.1.1">plus-or-minus</csymbol><apply id="S4.T2.23.23.23.1.m1.1.1.2.cmml" xref="S4.T2.23.23.23.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.23.23.23.1.m1.1.1.2.1.cmml" xref="S4.T2.23.23.23.1.m1.1.1.2.1">percent</csymbol><cn id="S4.T2.23.23.23.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.23.23.23.1.m1.1.1.2.2">57.6</cn></apply><apply id="S4.T2.23.23.23.1.m1.1.1.3.cmml" xref="S4.T2.23.23.23.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.23.23.23.1.m1.1.1.3.1.cmml" xref="S4.T2.23.23.23.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.23.23.23.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.23.23.23.1.m1.1.1.3.2">0.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.1.m1.1c">57.6\%\pm 0.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.1.m1.1d">57.6 % ± 0.7 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24">
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.24.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="3200" class="ltx_Math" display="inline" id="S4.T2.24.24.24.1.m1.1"><semantics id="S4.T2.24.24.24.1.m1.1a"><mn id="S4.T2.24.24.24.1.m1.1.1" mathsize="90%" xref="S4.T2.24.24.24.1.m1.1.1.cmml">3200</mn><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.1.m1.1b"><cn id="S4.T2.24.24.24.1.m1.1.1.cmml" type="integer" xref="S4.T2.24.24.24.1.m1.1.1">3200</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.1.m1.1c">3200</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.1.m1.1d">3200</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.24.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.24.24.24.2.1" style="font-size:90%;">62.7%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.30.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.28.28.30.1.1" rowspan="3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.30.1.1.1" style="font-size:90%;">Leanabell-Prover-DS-SFT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.30.1.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.30.1.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.30.1.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.30.1.3.1" style="font-size:90%;">54.9%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.31.2">
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.31.2.1" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.31.2.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.31.2.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.31.2.2.1" style="font-size:90%;">55.3%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.25">
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.25.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.25.25.25.1.m1.1"><semantics id="S4.T2.25.25.25.1.m1.1a"><mn id="S4.T2.25.25.25.1.m1.1.1" mathsize="90%" xref="S4.T2.25.25.25.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.1.m1.1b"><cn id="S4.T2.25.25.25.1.m1.1.1.cmml" type="integer" xref="S4.T2.25.25.25.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.25.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.25.25.25.2.1" style="font-size:90%;">56.7%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.32.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.28.28.32.3.1" rowspan="3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.32.3.1.1" style="font-size:90%;">Leanabell-Prover-DS-RL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.32.3.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.32.3.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.32.3.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.32.3.3.1" style="font-size:90%;">56.6%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.33.4">
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.33.4.1" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.33.4.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.33.4.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.33.4.2.1" style="font-size:90%;">57.4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.26.26.26">
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.26.26.26.1.m1.1"><semantics id="S4.T2.26.26.26.1.m1.1a"><mn id="S4.T2.26.26.26.1.m1.1.1" mathsize="90%" xref="S4.T2.26.26.26.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.26.1.m1.1b"><cn id="S4.T2.26.26.26.1.m1.1.1.cmml" type="integer" xref="S4.T2.26.26.26.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.26.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.26.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.26.26.26.2.1" style="font-size:90%;">59.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.34.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.28.28.34.5.1" rowspan="3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.34.5.1.1" style="font-size:90%;">Leanabell-Prover-GD-SFT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.34.5.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.34.5.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.34.5.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.34.5.3.1" style="font-size:90%;">58.2%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.35.6">
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.35.6.1" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.35.6.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.35.6.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.35.6.2.1" style="font-size:90%;">59.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.27.27.27">
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.27.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.27.27.27.1.m1.1"><semantics id="S4.T2.27.27.27.1.m1.1a"><mn id="S4.T2.27.27.27.1.m1.1.1" mathsize="90%" xref="S4.T2.27.27.27.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.27.1.m1.1b"><cn id="S4.T2.27.27.27.1.m1.1.1.cmml" type="integer" xref="S4.T2.27.27.27.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.27.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.27.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.27.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.27.27.27.2.1" style="font-size:90%;">59.4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.36.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.28.28.36.7.1" rowspan="4" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.36.7.1.1" style="font-size:90%;">Leanabell-Prover-GD-RL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.36.7.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.36.7.2.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.36.7.3" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.36.7.3.1" style="font-size:90%;">59.8%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.37.8">
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.37.8.1" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.37.8.1.1" style="font-size:90%;">64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.37.8.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.37.8.2.1" style="font-size:90%;">60.7%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.28">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.28.28.28.1" style="padding-left:14.5pt;padding-right:14.5pt;"><math alttext="128" class="ltx_Math" display="inline" id="S4.T2.28.28.28.1.m1.1"><semantics id="S4.T2.28.28.28.1.m1.1a"><mn id="S4.T2.28.28.28.1.m1.1.1" mathsize="90%" xref="S4.T2.28.28.28.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.28.1.m1.1b"><cn id="S4.T2.28.28.28.1.m1.1.1.cmml" type="integer" xref="S4.T2.28.28.28.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.28.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.28.1.m1.1d">128</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.28.28.28.2" style="padding-left:14.5pt;padding-right:14.5pt;"><span class="ltx_text" id="S4.T2.28.28.28.2.1" style="font-size:90%;">61.1%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the Leanabell-Prover model's performance against other state-of-the-art methods on the MiniF2F benchmark dataset.  The table shows the average accuracy and standard deviation of each method at various sample budgets.  Specifically, it compares the Leanabell-Prover's performance using two different base models (DeepSeek-Prover-v1.5-SFT and Goedel-Prover-SFT) for both supervised fine-tuning (SFT) and reinforcement learning (RL) training, highlighting the impact of the chosen base model and training approach on the final results.
> <details>
> <summary>read the caption</summary>
> Table 2:  Comparison with state-of-the-art methods on the miniF2F-test dataset. The notation μ±σplus-or-minus𝜇𝜎\mu\pm\sigmaitalic_μ ± italic_σ denotes the average accuracy μ𝜇\muitalic_μ and the standard deviation σ𝜎\sigmaitalic_σ. “DS” and “GD” refer to using the DeepSeek-Prover-v1.5-SFT and Goedel-Prover-SFT as base models to continue SFT and RL training, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A1.5.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.5.4.5.1">
<th class="ltx_td ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.5.4.5.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.5.4.5.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.5.1.2.1">
<span class="ltx_p" id="A1.5.4.5.1.2.1.1" style="width:173.4pt;"><span class="ltx_text ltx_font_bold" id="A1.5.4.5.1.2.1.1.1">Example 1</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.5.4.5.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.5.1.3.1">
<span class="ltx_p" id="A1.5.4.5.1.3.1.1" style="width:173.4pt;"><span class="ltx_text ltx_font_bold" id="A1.5.4.5.1.3.1.1.1">Example 2</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.5.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="A1.5.4.4.5" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.4.5.1">
<span class="ltx_p" id="A1.5.4.4.5.1.1" style="width:52.0pt;"><span class="ltx_text ltx_font_bold" id="A1.5.4.4.5.1.1.1">Informal Statement</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.3.2.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.3.2.2.2.2">
<span class="ltx_p" id="A1.3.2.2.2.2.2" style="width:173.4pt;">Solve for <math alttext="x" class="ltx_Math" display="inline" id="A1.2.1.1.1.1.1.m1.1"><semantics id="A1.2.1.1.1.1.1.m1.1a"><mi id="A1.2.1.1.1.1.1.m1.1.1" xref="A1.2.1.1.1.1.1.m1.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A1.2.1.1.1.1.1.m1.1b"><ci id="A1.2.1.1.1.1.1.m1.1.1.cmml" xref="A1.2.1.1.1.1.1.m1.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.2.1.1.1.1.1.m1.1c">x</annotation><annotation encoding="application/x-llamapun" id="A1.2.1.1.1.1.1.m1.1d">italic_x</annotation></semantics></math> in the given inequality: <math alttext="x^{2}-2x-24&lt;0" class="ltx_Math" display="inline" id="A1.3.2.2.2.2.2.m2.1"><semantics id="A1.3.2.2.2.2.2.m2.1a"><mrow id="A1.3.2.2.2.2.2.m2.1.1" xref="A1.3.2.2.2.2.2.m2.1.1.cmml"><mrow id="A1.3.2.2.2.2.2.m2.1.1.2" xref="A1.3.2.2.2.2.2.m2.1.1.2.cmml"><msup id="A1.3.2.2.2.2.2.m2.1.1.2.2" xref="A1.3.2.2.2.2.2.m2.1.1.2.2.cmml"><mi id="A1.3.2.2.2.2.2.m2.1.1.2.2.2" xref="A1.3.2.2.2.2.2.m2.1.1.2.2.2.cmml">x</mi><mn id="A1.3.2.2.2.2.2.m2.1.1.2.2.3" xref="A1.3.2.2.2.2.2.m2.1.1.2.2.3.cmml">2</mn></msup><mo id="A1.3.2.2.2.2.2.m2.1.1.2.1" xref="A1.3.2.2.2.2.2.m2.1.1.2.1.cmml">−</mo><mrow id="A1.3.2.2.2.2.2.m2.1.1.2.3" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.cmml"><mn id="A1.3.2.2.2.2.2.m2.1.1.2.3.2" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.2.cmml">2</mn><mo id="A1.3.2.2.2.2.2.m2.1.1.2.3.1" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.1.cmml">⁢</mo><mi id="A1.3.2.2.2.2.2.m2.1.1.2.3.3" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.3.cmml">x</mi></mrow><mo id="A1.3.2.2.2.2.2.m2.1.1.2.1a" xref="A1.3.2.2.2.2.2.m2.1.1.2.1.cmml">−</mo><mn id="A1.3.2.2.2.2.2.m2.1.1.2.4" xref="A1.3.2.2.2.2.2.m2.1.1.2.4.cmml">24</mn></mrow><mo id="A1.3.2.2.2.2.2.m2.1.1.1" xref="A1.3.2.2.2.2.2.m2.1.1.1.cmml">&lt;</mo><mn id="A1.3.2.2.2.2.2.m2.1.1.3" xref="A1.3.2.2.2.2.2.m2.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.3.2.2.2.2.2.m2.1b"><apply id="A1.3.2.2.2.2.2.m2.1.1.cmml" xref="A1.3.2.2.2.2.2.m2.1.1"><lt id="A1.3.2.2.2.2.2.m2.1.1.1.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.1"></lt><apply id="A1.3.2.2.2.2.2.m2.1.1.2.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2"><minus id="A1.3.2.2.2.2.2.m2.1.1.2.1.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.1"></minus><apply id="A1.3.2.2.2.2.2.m2.1.1.2.2.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.2"><csymbol cd="ambiguous" id="A1.3.2.2.2.2.2.m2.1.1.2.2.1.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.2">superscript</csymbol><ci id="A1.3.2.2.2.2.2.m2.1.1.2.2.2.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.2.2">𝑥</ci><cn id="A1.3.2.2.2.2.2.m2.1.1.2.2.3.cmml" type="integer" xref="A1.3.2.2.2.2.2.m2.1.1.2.2.3">2</cn></apply><apply id="A1.3.2.2.2.2.2.m2.1.1.2.3.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.3"><times id="A1.3.2.2.2.2.2.m2.1.1.2.3.1.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.1"></times><cn id="A1.3.2.2.2.2.2.m2.1.1.2.3.2.cmml" type="integer" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.2">2</cn><ci id="A1.3.2.2.2.2.2.m2.1.1.2.3.3.cmml" xref="A1.3.2.2.2.2.2.m2.1.1.2.3.3">𝑥</ci></apply><cn id="A1.3.2.2.2.2.2.m2.1.1.2.4.cmml" type="integer" xref="A1.3.2.2.2.2.2.m2.1.1.2.4">24</cn></apply><cn id="A1.3.2.2.2.2.2.m2.1.1.3.cmml" type="integer" xref="A1.3.2.2.2.2.2.m2.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.3.2.2.2.2.2.m2.1c">x^{2}-2x-24&lt;0</annotation><annotation encoding="application/x-llamapun" id="A1.3.2.2.2.2.2.m2.1d">italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT - 2 italic_x - 24 &lt; 0</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.5.4.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.4.4.2">
<span class="ltx_p" id="A1.5.4.4.4.2.2" style="width:173.4pt;">Prove that <math alttext="\ln(e^{\pi})" class="ltx_Math" display="inline" id="A1.4.3.3.3.1.1.m1.2"><semantics id="A1.4.3.3.3.1.1.m1.2a"><mrow id="A1.4.3.3.3.1.1.m1.2.2.1" xref="A1.4.3.3.3.1.1.m1.2.2.2.cmml"><mi id="A1.4.3.3.3.1.1.m1.1.1" xref="A1.4.3.3.3.1.1.m1.1.1.cmml">ln</mi><mo id="A1.4.3.3.3.1.1.m1.2.2.1a" xref="A1.4.3.3.3.1.1.m1.2.2.2.cmml">⁡</mo><mrow id="A1.4.3.3.3.1.1.m1.2.2.1.1" xref="A1.4.3.3.3.1.1.m1.2.2.2.cmml"><mo id="A1.4.3.3.3.1.1.m1.2.2.1.1.2" stretchy="false" xref="A1.4.3.3.3.1.1.m1.2.2.2.cmml">(</mo><msup id="A1.4.3.3.3.1.1.m1.2.2.1.1.1" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1.cmml"><mi id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.2" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1.2.cmml">e</mi><mi id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.3" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1.3.cmml">π</mi></msup><mo id="A1.4.3.3.3.1.1.m1.2.2.1.1.3" stretchy="false" xref="A1.4.3.3.3.1.1.m1.2.2.2.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A1.4.3.3.3.1.1.m1.2b"><apply id="A1.4.3.3.3.1.1.m1.2.2.2.cmml" xref="A1.4.3.3.3.1.1.m1.2.2.1"><ln id="A1.4.3.3.3.1.1.m1.1.1.cmml" xref="A1.4.3.3.3.1.1.m1.1.1"></ln><apply id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.cmml" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1"><csymbol cd="ambiguous" id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.1.cmml" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1">superscript</csymbol><ci id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.2.cmml" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1.2">𝑒</ci><ci id="A1.4.3.3.3.1.1.m1.2.2.1.1.1.3.cmml" xref="A1.4.3.3.3.1.1.m1.2.2.1.1.1.3">𝜋</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.4.3.3.3.1.1.m1.2c">\ln(e^{\pi})</annotation><annotation encoding="application/x-llamapun" id="A1.4.3.3.3.1.1.m1.2d">roman_ln ( italic_e start_POSTSUPERSCRIPT italic_π end_POSTSUPERSCRIPT )</annotation></semantics></math> is equal to <math alttext="\pi" class="ltx_Math" display="inline" id="A1.5.4.4.4.2.2.m2.1"><semantics id="A1.5.4.4.4.2.2.m2.1a"><mi id="A1.5.4.4.4.2.2.m2.1.1" xref="A1.5.4.4.4.2.2.m2.1.1.cmml">π</mi><annotation-xml encoding="MathML-Content" id="A1.5.4.4.4.2.2.m2.1b"><ci id="A1.5.4.4.4.2.2.m2.1.1.cmml" xref="A1.5.4.4.4.2.2.m2.1.1">𝜋</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.5.4.4.4.2.2.m2.1c">\pi</annotation><annotation encoding="application/x-llamapun" id="A1.5.4.4.4.2.2.m2.1d">italic_π</annotation></semantics></math>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.5.4.6.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A1.5.4.6.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.6.1.1.1">
<span class="ltx_p" id="A1.5.4.6.1.1.1.1" style="width:52.0pt;"><span class="ltx_text ltx_font_bold" id="A1.5.4.6.1.1.1.1.1">Formalizer Output</span></span>
</span>
</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A1.5.4.6.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.6.1.2.1">
<span class="ltx_p" id="A1.5.4.6.1.2.1.1" style="width:173.4pt;">
<span class="ltx_listing ltx_lst_language_lean ltx_lstlisting ltx_listing" id="A1.5.4.6.1.2.1.1.1"><span class="ltx_listing_data"><a download="" href="data:text/plain;base64,dGhlb3JlbSBsZWFuX3dvcmtib29rICh4IDog4oSdKSA6IHheMiAtIDIqeCAtIDI0IDwgMCDihpQgeCDiiIggU2V0LklvbyAoLTQpIDYgOj0gYnkgc29ycnk=">⬇</a></span>
<span class="ltx_listingline" id="lstnumberx4"><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.1">theorem</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.2"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.3">lean_workbook</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.4"> </span>(<span class="ltx_text ltx_lst_identifier" id="lstnumberx4.5">x</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.6"> </span>:<span class="ltx_text ltx_lst_space" id="lstnumberx4.7"> </span>ℝ)<span class="ltx_text ltx_lst_space" id="lstnumberx4.8"> </span>:<span class="ltx_text ltx_lst_space" id="lstnumberx4.9"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.10">x</span>^2<span class="ltx_text ltx_lst_space" id="lstnumberx4.11"> </span>-<span class="ltx_text ltx_lst_space" id="lstnumberx4.12"> </span>2*<span class="ltx_text ltx_lst_identifier" id="lstnumberx4.13">x</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.14"> </span>-<span class="ltx_text ltx_lst_space" id="lstnumberx4.15"> </span>24<span class="ltx_text ltx_lst_space" id="lstnumberx4.16"> </span>&lt;<span class="ltx_text ltx_lst_space" id="lstnumberx4.17"> </span>0<span class="ltx_text ltx_lst_space" id="lstnumberx4.18"> </span>↔<span class="ltx_text ltx_lst_space" id="lstnumberx4.19"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.20">x</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.21"> </span>∈<span class="ltx_text ltx_lst_space" id="lstnumberx4.22"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.23">Set</span>.<span class="ltx_text ltx_lst_identifier" id="lstnumberx4.24">Ioo</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.25"> </span>(-4)<span class="ltx_text ltx_lst_space" id="lstnumberx4.26"> </span>6<span class="ltx_text ltx_lst_space" id="lstnumberx4.27"> </span>:=<span class="ltx_text ltx_lst_space" id="lstnumberx4.28"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.29">by</span><span class="ltx_text ltx_lst_space" id="lstnumberx4.30"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx4.31">sorry</span>
</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A1.5.4.6.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.5.4.6.1.3.1">
<span class="ltx_p" id="A1.5.4.6.1.3.1.1" style="width:173.4pt;">
<span class="ltx_listing ltx_lst_language_lean ltx_lstlisting ltx_listing" id="A1.5.4.6.1.3.1.1.1"><span class="ltx_listing_data"><a download="" href="data:text/plain;base64,dGhlb3JlbSBsZWFuX3dvcmtib29rIDogUmVhbC5sb2cgKFJlYWwuZXhwIM+AKSA9IM+AIDo9IGJ5IHNvcnJ5">⬇</a></span>
<span class="ltx_listingline" id="lstnumberx5"><span class="ltx_text ltx_lst_identifier" id="lstnumberx5.1">theorem</span><span class="ltx_text ltx_lst_space" id="lstnumberx5.2"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx5.3">lean_workbook</span><span class="ltx_text ltx_lst_space" id="lstnumberx5.4"> </span>:<span class="ltx_text ltx_lst_space" id="lstnumberx5.5"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx5.6">Real</span>.<span class="ltx_text ltx_lst_identifier" id="lstnumberx5.7">log</span><span class="ltx_text ltx_lst_space" id="lstnumberx5.8"> </span>(<span class="ltx_text ltx_lst_identifier" id="lstnumberx5.9">Real</span>.<span class="ltx_text ltx_lst_identifier" id="lstnumberx5.10">exp</span><span class="ltx_text ltx_lst_space" id="lstnumberx5.11"> </span>π)<span class="ltx_text ltx_lst_space" id="lstnumberx5.12"> </span>=<span class="ltx_text ltx_lst_space" id="lstnumberx5.13"> </span>π<span class="ltx_text ltx_lst_space" id="lstnumberx5.14"> </span>:=<span class="ltx_text ltx_lst_space" id="lstnumberx5.15"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx5.16">by</span><span class="ltx_text ltx_lst_space" id="lstnumberx5.17"> </span><span class="ltx_text ltx_lst_identifier" id="lstnumberx5.18">sorry</span>
</span>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases two examples of how the formalizer, a component of the Leanabell-Prover system, translates informal mathematical statements into formal Lean 4 code.  The input column shows the informal statements, while the output column shows the corresponding formal Lean 4 code generated by the formalizer. This demonstrates the formalizer's ability to convert natural language mathematical problems into a format suitable for automated theorem proving.
> <details>
> <summary>read the caption</summary>
> Table 3: Examples of formalizer inputs and outputs for two examples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">CC Test (%)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">FC Test (%)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.1.2.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Formalizer A <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib15" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">48.1</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.1.3.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Formalizer B <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.06122v1#bib.bib15" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">88.5</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">80.4</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T4.1.4.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Ours Formalizer</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.4.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">77.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.4.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">49.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a quality evaluation of a formalizer's performance in converting informal mathematical statements into formal Lean 4 code.  The assessment uses two metrics: Compiling Correctness (CC) which measures the percentage of generated Lean 4 code that compiles successfully; and Faithfulness and Completeness (FC), indicating how well the generated code faithfully and completely represents the original informal statement's meaning. The table compares the performance of the authors' formalizer with two existing formalizers from related work by Lin et al. (2025).
> <details>
> <summary>read the caption</summary>
> Table 4: Quality assessment of the formalized statement. “CC” refers to Compiling Correctness (CC) Test and “FC” refers to Faithfulness and Completeness (FC) Test.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06122/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06122/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}