---
title: "Draft Model Knows When to Stop: A Self-Verification Length Policy for Speculative Decoding"
summary: "Self-VerIfication length Policy (SVIP) dynamically adjusts speculative decoding draft lengths based on token difficulty, achieving up to 20% faster large language model inference."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tencent AI Lab",]
showSummary: true
date: 2024-11-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.18462 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyin Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.18462" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.18462" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/draft-model-knows-when-to-stop-a-self" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.18462/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Speculative decoding accelerates large language model inference by using a smaller, faster model to generate draft sequences, which are then verified by a larger model. However, current methods use a fixed draft length, which is inefficient as token generation difficulty varies greatly. This paper introduces SVIP, a new method that dynamically adjusts the draft sequence length based on the predicted difficulty of each token. 

SVIP determines this difficulty using a lower bound of the acceptance rate, approximating it with the draft model's entropy, which is readily available during inference.  Experimental results show that SVIP significantly improves speed across several benchmarks and is compatible with various existing methods, resulting in substantial improvements in wall-time.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SVIP, a novel dynamic draft length policy, significantly speeds up large language model inference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SVIP is training-free and compatible with most existing speculative decoding methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SVIP demonstrates consistent improvements across various models and benchmarks, showing its broad applicability. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it significantly improves the speed of large language model inference** by addressing a key limitation of existing speculative decoding methods.  Its novel self-verification length policy (SVIP) is training-free and easily adaptable to various models and frameworks, making it highly relevant to the broader NLP community. **The findings open avenues for developing more efficient and faster LLM inference systems**, particularly beneficial for resource-intensive applications.

------
#### Visual Insights



![](https://arxiv.org/html/2411.18462/x1.png)

> 🔼 The figure illustrates how the difficulty of generating tokens varies within a sequence.  A draft model is used to predict tokens which are then verified by a more powerful target model.  Some tokens, like common greetings, are easy for the draft model to predict and thus have high acceptance rates (many draft tokens are accepted and verified). Other tokens, such as those requiring complex reasoning or domain-specific knowledge, are much harder for the draft model to accurately predict. This results in a lower acceptance rate, with fewer draft tokens being accepted for these more difficult parts of the sentence.
> <details>
> <summary>read the caption</summary>
> Figure 1: The “difficulty” of tokens varies in a sequence, resulting in different numbers of accepted draft tokens at different positions.
> </details>





{{< table-caption >}}
| Methods | MT-Bench | Trans. | Sum. | QA | Math | RAG | Avg. |
|---|---|---|---|---|---|---|---| 
| Pythia<sub>(6.9B, 160M)</sub> Const. | 1.45 | 1.47 | 1.24 | 1.43 | 1.52 | 1.42 | 1.42 |
| Heuristics | 1.51 | 1.58 | 1.34 | 1.58 | 1.64 | 1.51 | 1.53 |
| SVIP | **1.63** | **1.62** | **1.45** | **1.67** | **1.72** | **1.66** | **1.63<sub>(+14.8%)</sub>** |
| Qwen2.5<sub>(14B, 0.5B)</sub> Const. | 1.08 | 0.87 | 1.11 | 0.92 | 1.43 | 0.99 | 1.07 |
| Heuristics | 1.10 | 0.91 | 1.10 | 0.92 | 1.34 | 1.03 | 1.07 |
| SVIP | **1.33** | **1.12** | **1.37** | **1.14** | **1.57** | **1.23** | **1.29<sub>(+20.6%)</sub>** |
| LLaMA-3<sub>(70B, 8B)</sub> Const. | 2.04 | 2.48 | 2.56 | 2.34 | 2.32 | 2.28 | 2.34 |
| Heuristics | 2.30 | **3.13** | 3.33 | 2.61 | 2.52 | **2.63** | 2.76 |
| SVIP | **2.31** | 3.04 | **3.48** | **2.63** | **2.89** | 2.59 | **2.83<sub>(+20.9%)</sub>** |{{< /table-caption >}}

> 🔼 This table presents the speedup achieved by using the Self-Verification length Policy (SVIP) for speculative decoding compared to a baseline approach of using only the target language model for autoregressive decoding.  The speedup is calculated across six different tasks within the SpecBench benchmark, using three different large language models (Pythia, Qwen, and LLaMA) with their corresponding smaller draft models.  Results are shown for two baseline methods ('Const' for constant draft length and 'Heuristics' for a heuristic-based draft length) and SVIP. The percentage improvement of SVIP over the target-model-only approach is indicated in parentheses.
> <details>
> <summary>read the caption</summary>
> Table 1: Speedup over target-model-only autoregressive decoding on SpecBench.
> </details>





### In-depth insights


#### SVIP: Core Algorithm
The core algorithm of SVIP revolves around dynamically adjusting the length of draft sequences in speculative decoding.  Instead of a fixed draft length, **SVIP leverages the entropy of the draft model's token distribution** to determine when to stop drafting and begin verification.  A lower bound on the system's acceptance rate, approximated by the draft model's entropy, guides this decision.  **High entropy indicates difficult tokens**, prompting earlier termination of the draft sequence, while **low entropy signals easier tokens**, allowing for longer drafts.  This adaptive approach aims to optimize speed without sacrificing accuracy, achieving significant wall-clock time improvements over baseline methods.  **SVIP is inherently training-free**, requiring only the draft model's probability distribution. The algorithm's simplicity and compatibility with various existing speculative decoding frameworks highlight its practical value for enhancing LLM inference efficiency.

#### Entropy-Based Policy
An entropy-based policy for speculative decoding offers a novel approach to optimizing the efficiency of large language models.  The core idea revolves around **dynamically adjusting the length of draft sequences generated by a lightweight model** based on the inherent uncertainty, or entropy, of the predicted token distributions. By analyzing the entropy of each draft token, the policy can intelligently decide when to continue drafting or to verify the draft with a more powerful model.  This **avoids the limitations of fixed-length draft policies**, which often fail to account for the varying difficulty of token generation across different tasks and contexts.  A low entropy signifies high confidence, thus justifying longer drafts to enhance efficiency. Conversely, high entropy signals uncertainty, prompting early verification to minimize wasted computation on uncertain predictions.  **The policy’s adaptability improves both speed and acceptance rates** compared to fixed-length counterparts, yielding substantial wall-clock speedups across various benchmarks and model sizes. The training-free nature further enhances its practicality and compatibility with existing speculative decoding frameworks.

#### Speculative Decoding
Speculative decoding is a crucial technique accelerating large language model (LLM) inference.  It leverages a faster, lightweight draft model to predict token sequences, which are subsequently verified by a more powerful, but slower, target model. This approach avoids the computationally expensive autoregressive generation of every token by the target model. The efficiency gains are significant, especially for longer sequences. However, traditional methods employ a fixed draft length, failing to account for varying levels of difficulty in generating different tokens. **This limitation can reduce efficiency**, as some tokens are easily predicted, while others may require significant computation.  **Dynamic draft length policies address this by adjusting the length of the draft sequence based on the difficulty of the tokens.**  Such policies offer a self-verifying approach, adapting based on the probability of acceptance by the target model.  This adaptability leads to **substantial speed improvements** over methods with fixed draft lengths, maximizing the advantages of speculative decoding without compromising generation quality. The use of entropy, as an indicator of draft token uncertainty, is particularly insightful for controlling the length of draft sequences.  It provides a practical, training-free method for optimizing efficiency.  The research demonstrates consistent improvements across multiple LLMs and speculative decoding frameworks, proving the effectiveness and general applicability of dynamic draft length policies.

#### Dynamic Draft Length
The concept of "Dynamic Draft Length" in speculative decoding addresses a critical limitation of traditional methods.  **Fixed-length draft sequences** ignore the inherent variability in token generation difficulty.  Some tokens are easier for the draft model to predict (e.g., common words, simple phrases), while others are significantly more complex (e.g., knowledge-intensive, reasoning-heavy). A dynamic approach, therefore, allows the model to adapt its draft length based on this difficulty. By considering factors like **token entropy or acceptance probability**, the model can generate longer drafts for simpler tokens (improving efficiency) and shorter drafts for complex tokens (reducing unnecessary computation). This results in **significant improvements in speed and efficiency** without compromising the quality of the generated text. The key benefit is a system that is more robust and adapts to different generation tasks, offering better wall-clock speedups compared to approaches relying on fixed-length drafting.

#### Long-Form Generation
The section on "Long-Form Generation" in this research paper is crucial because it **tests the scalability and generalizability** of the proposed Self-Verification Interval Policy (SVIP) beyond the typical short-sequence tasks.  By evaluating SVIP on the generation of sequences up to 8K tokens, the authors move beyond the limitations of previous speculative decoding methods that mostly focus on shorter outputs. This is important because **long-form generation poses unique challenges** due to increased computational cost and the potential for cumulative errors in draft sequences.  The results demonstrate that SVIP not only maintains its effectiveness but also shows an **even greater speedup** in this scenario, particularly highlighting the advantage of dynamically adapting the draft length according to the inherent difficulty of the tokens.  This **validates the robustness** of SVIP and suggests its wider applicability in various practical applications dealing with the generation of longer text, such as document summarization, story writing, or code generation, where the ability to efficiently produce high-quality long-form content is crucial.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.18462/x4.png)

> 🔼 This figure displays the relationship between draft model entropy and two key aspects of speculative decoding: the probability of draft tokens being accepted by the target model, and the lengths of accepted draft sequences. The top row shows that lower draft model entropy correlates with higher acceptance probabilities, while the bottom row reveals that lower entropy also corresponds to longer sequences of accepted draft tokens.  This visualization underscores the variability in drafting difficulty and motivates the need for a dynamic draft length policy that adapts to varying levels of prediction uncertainty.
> <details>
> <summary>read the caption</summary>
> Figure 2: The correlation between draft model entropy and draft token acceptance probability (top) and lengths of accepted draft seqeunces (bottom).
> </details>



![](https://arxiv.org/html/2411.18462/x5.png)

> 🔼 Figure 3 presents histograms showing the distribution of the ratio between the cross-entropy (Hq,p) and the draft entropy (Hq) for three different large language models. The cross-entropy measures the dissimilarity between the probability distributions generated by the draft and target language models.  The draft entropy quantifies the uncertainty in the draft model's predictions. The histograms reveal that for the vast majority of tokens, this ratio remains within a narrow range.  This key observation supports the paper's approximation that the cross-entropy (Hq,p) can be estimated efficiently using only the draft entropy (Hq) multiplied by a constant value. This simplification is crucial for the algorithm’s efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution histograms of the entropy ratio Hq,p/Hqsubscript𝐻𝑞𝑝subscript𝐻𝑞H_{q,p}/H_{q}italic_H start_POSTSUBSCRIPT italic_q , italic_p end_POSTSUBSCRIPT / italic_H start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT. For most tokens, this ratio falls into a narrow range, indicating that the cross entropy Hq,psubscript𝐻𝑞𝑝H_{q,p}italic_H start_POSTSUBSCRIPT italic_q , italic_p end_POSTSUBSCRIPT can be approximated by a constant multiplication of the draft entropy Hqsubscript𝐻𝑞H_{q}italic_H start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2411.18462/x8.png)

> 🔼 Figure 4 illustrates the relationship between the theoretical acceptance probability of draft tokens and their entropy.  The figure compares three values: the actual acceptance probability calculated using Equation (2) from the paper; a lower bound on this probability derived from Equation (5), which uses the cross-entropy between the draft and target language models; and an estimated lower bound that simplifies Equation (5) by approximating cross-entropy as a constant multiple of draft model entropy. The tokens are ordered on the x-axis according to their actual acceptance probability, enabling a visual comparison of the actual and estimated probabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison between the actual acceptance probability from Equation (2), the acceptance probability lower bound from Equation (5), and the estimated lower bound after approximating the cross entropy Hq,psubscript𝐻𝑞𝑝H_{q,p}italic_H start_POSTSUBSCRIPT italic_q , italic_p end_POSTSUBSCRIPT with a constant multiplication of Hqsubscript𝐻𝑞H_{q}italic_H start_POSTSUBSCRIPT italic_q end_POSTSUBSCRIPT. Each position on the x-axis corresponds to a token, which has been sorted according to the actual acceptance probability.
> </details>



![](https://arxiv.org/html/2411.18462/x12.png)

> 🔼 Figure 5 presents a comparison of the performance of three different draft length policies (Constant, Heuristics, and SVIP) on the SpecBench benchmark using Qwen-2.5 and LLaMA-3 language models.  The top half shows results for Qwen-2.5, while the bottom half shows results for LLaMA-3.  For each model and policy, the figure displays three key metrics: the average generated draft length (the average number of tokens generated by the draft model before verification), the average accepted draft length (the average number of tokens accepted by the target model after verification), and the overall acceptance rate (the percentage of draft tokens accepted by the target model). The figure clearly demonstrates that SVIP consistently leads to shorter generated draft lengths and significantly higher acceptance rates compared to both the Constant and Heuristics baselines, thereby indicating its superior efficiency in speculative decoding.
> <details>
> <summary>read the caption</summary>
> Figure 5: The average generated draft length, accepted draft length, and acceptance rate of Qwen2.5 (top) and LLaMA-3 (bottom) on SpecBench. Compared with the two baselines, SVIP leads to a shorter draft length and a much higher acceptance rate.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
|                     | Methods | 128 | 256 | 512 | 1K  | 2K  | 4K  | 6K  | 8K  |
| :------------------ | :------- | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Pythia _(6.9B, 160M)_ | Const.   | 0.68 | 0.69 | 0.69 | 0.70 | 0.72 | 0.90 | 0.89 | 0.87 |
|                     | Heuristics | 0.88 | 0.88 | 0.88 | 0.88 | 0.90 | 1.21 | 1.25 | 1.23 |
|                     | SVIP      | **1.07** | **1.08** | **1.08** | **1.07** | **1.08** | **1.43** | **1.44** | **1.41** |
| Qwen2.5 _(14B, 0.5B)_ | Const.   | 0.98 | 0.97 | 0.95 | 0.96 | 0.98 | 1.00 | 1.02 | 1.04 |
|                     | Heuristics | 1.01 | 0.99 | 0.98 | 1.00 | 1.02 | 1.03 | 1.04 | 1.06 |
|                     | SVIP      | **1.29** | **1.29** | **1.30** | **1.31** | **1.32** | **1.33** | **1.33** | **1.35** |
| LLaMA-3 _(70B, 8B)_   | Const.   | **1.74** | **1.74** | **1.77** | **1.78** | 1.82 | 1.90 | 1.93 | 1.94 |
|                     | Heuristics | 1.53 | 1.56 | 1.61 | 1.63 | 1.68 | 1.77 | 1.83 | 1.84 |
|                     | SVIP      | 1.69 | 1.72 | 1.75 | **1.78** | **1.86** | **1.96** | **2.01** | **2.02** |{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by different methods (Const, Heuristics, SVIP) on the MT-Bench benchmark for various text generation lengths (128, 256, 512, 1K, 2K, 4K, 6K, 8K tokens).  It shows how the performance of each method changes as the length of the generated text increases, allowing for a comparison of their efficiency in long-form text generation.  The speedup is calculated relative to a baseline of using only the target model for autoregressive decoding.
> <details>
> <summary>read the caption</summary>
> Table 2: Speedup on MT-Bench with different generation length.
> </details>

{{< table-caption >}}
|       | Methods       | MT-Bench | Code | Finance | GSM  | Spider | Avg. |
| :---- | :------------- | :------- | :---- | :------- | :---- | :------ | :---- |
| 7B    | GliDe          | 1.95     | 2.04  | 1.91     | 1.98  | 1.69    | 1.95 |
|       | +SVIP          | 2.00     | 2.12  | 2.03     | 2.01  | 1.63    | 2.02 |
|       | GliDe + CaPE   | 2.36     | 2.57  | 2.29     | 2.51  | 1.97    | 2.40 |
|       | +SVIP          | **2.56** | **2.65** | **2.49** | **2.54** | **2.08** | **2.52** |
| 13B   | GliDe          | 2.22     | 2.41  | 2.15     | 2.31  | 1.85    | 2.24 |
|       | +SVIP          | 2.31     | 2.43  | 2.17     | 2.35  | 1.85    | 2.28 |
|       | GliDe + CaPE   | **2.73** | 2.86  | **2.66** | 2.80  | 2.24    | 2.73 |
|       | +SVIP          | 2.72     | **2.93** | **2.66** | **2.85** | **2.27** | **2.76** |
| 33B   | GliDe          | 2.12     | 2.25  | 2.09     | 2.29  | 1.99    | 2.18 |
|       | +SVIP          | **2.29** | **2.40** | **2.20** | **2.42** | **2.03** | **2.30** |
|       | GliDe + CaPE   | 2.08     | 1.98  | 2.10     | 2.13  | 1.76    | 2.03 |
|       | +SVIP          | **2.13** | **2.02** | **2.15** | **2.16** | **1.82** | **2.08** |{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by using SVIP in conjunction with GliDe and CaPE models.  It compares the performance of using these methods with and without SVIP across various tasks in the MT-Bench benchmark.  Vicuna models of various sizes (7B, 13B, and 33B parameters) are used as base models for the experiments.  The speedup is calculated relative to the performance of GliDe and CaPE alone.
> <details>
> <summary>read the caption</summary>
> Table 3: Speedup comparison with GliDe & CaPE, using Vicuna as the base model.
> </details>

{{< table-caption >}}
| Methods | MT-Bench | H-Eval | GSM8K | Alpaca | CNN/DM | QA | Avg. |
|---|---|---|---|---|---|---|---|---|
| LLaMA-2 7B | EAGLE-2 | 3.10 | 3.61 | 3.15 | 3.10 | 2.76 | 2.84 | 3.10 |
|  + SVIP | **3.16** | **3.66** | **3.18** | **3.13** | **2.82** | **3.02** | **3.16** |
| LLaMA-2 13B | EAGLE-2 | 3.38 | **4.12** | 3.41 | 3.25 | 3.01 | 2.98 | 3.41 |
|  + SVIP | **3.41** | 4.09 | **3.45** | **3.34** | **3.05** | **3.17** | **3.46** |
| Vicuna 7B | EAGLE-2 | 2.66 | 2.84 | **2.77** | 2.48 | 2.31 | 2.13 | 2.58 |
|  + SVIP | **2.84** | **2.97** | 2.75 | **2.66** | **2.42** | **2.30** | **2.73** |
| Vicuna 13B | EAGLE-2 | 2.85 | 3.31 | 2.93 | 2.74 | 2.48 | 2.30 | 2.83 |
|  + SVIP | **2.94** | **3.49** | **3.19** | **2.89** | **2.60** | **2.53** | **2.98** |{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by using the SVIP method on top of the EAGLE-2 speculative decoding framework.  Two sets of base language models are used: LLaMA-2-Chat and Vicuna, each tested in 7B and 13B parameter variants. The speedup is calculated relative to using only the target model without any speculative decoding.  The speedup is shown across multiple benchmark tasks (MT-Bench, H-Eval, GSM8K, Alpaca, CNN/DM, QA) and provides a comparison of the performance gain using SVIP.
> <details>
> <summary>read the caption</summary>
> Table 4: Speedup comparison with EAGLE-2, using LLaMA-2-Chat and Vicuna as the base models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T5.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.6.6.7.1">
<td class="ltx_td ltx_border_tt" id="A3.T5.6.6.7.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.2"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.2.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.3"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.3.1">MT-Bench</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.4"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.4.1">Trans.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.5"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.5.1">Sum.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.6"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.6.1">QA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.7"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.7.1">Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.8"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.8.1">RAG</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T5.6.6.7.1.9"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.7.1.9.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="A3.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.1.1" rowspan="3"><span class="ltx_text" id="A3.T5.1.1.1.1.1">Pythia <math alttext="{}_{\text{ 6.9B, 160M}}" class="ltx_Math" display="inline" id="A3.T5.1.1.1.1.1.m1.1"><semantics id="A3.T5.1.1.1.1.1.m1.1a"><msub id="A3.T5.1.1.1.1.1.m1.1.1" xref="A3.T5.1.1.1.1.1.m1.1.1.cmml"><mi id="A3.T5.1.1.1.1.1.m1.1.1a" xref="A3.T5.1.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A3.T5.1.1.1.1.1.m1.1.1.1" xref="A3.T5.1.1.1.1.1.m1.1.1.1a.cmml"> 6.9B, 160M</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.1.1.1.1.1.m1.1b"><apply id="A3.T5.1.1.1.1.1.m1.1.1.cmml" xref="A3.T5.1.1.1.1.1.m1.1.1"><ci id="A3.T5.1.1.1.1.1.m1.1.1.1a.cmml" xref="A3.T5.1.1.1.1.1.m1.1.1.1"><mtext id="A3.T5.1.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A3.T5.1.1.1.1.1.m1.1.1.1"> 6.9B, 160M</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.1.1.1.1.1.m1.1c">{}_{\text{ 6.9B, 160M}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.1.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT 6.9B, 160M end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.1.2">Const.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.3">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.4">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.5">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.6">0.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.7">0.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.1.1.8">0.64</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.1.1.1.9">0.65</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6.8.2">
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.8.2.1">Heuristics</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.2">0.82</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.3">0.83</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.4">0.85</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.5">0.83</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.6">0.83</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.8.2.7">0.83</td>
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.8.2.8">0.83</td>
</tr>
<tr class="ltx_tr" id="A3.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="A3.T5.2.2.2.2">SVIP</td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.3"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.3.1">1.05</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.4"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.4.1">1.02</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.5"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.5.1">1.03</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.6"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.6.1">1.01</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.7"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.7.1">1.03</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.8"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.8.1">1.00</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.2.2.2.1"><span class="ltx_text ltx_font_bold" id="A3.T5.2.2.2.1.1">1.02<sub class="ltx_sub" id="A3.T5.2.2.2.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A3.T5.2.2.2.1.1.1.1">(+56.9%)</span></sub></span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.3.3.3.1" rowspan="3"><span class="ltx_text" id="A3.T5.3.3.3.1.1">Qwen2.5 <math alttext="{}_{\text{ 14B, 0.5B}}" class="ltx_Math" display="inline" id="A3.T5.3.3.3.1.1.m1.1"><semantics id="A3.T5.3.3.3.1.1.m1.1a"><msub id="A3.T5.3.3.3.1.1.m1.1.1" xref="A3.T5.3.3.3.1.1.m1.1.1.cmml"><mi id="A3.T5.3.3.3.1.1.m1.1.1a" xref="A3.T5.3.3.3.1.1.m1.1.1.cmml"></mi><mtext id="A3.T5.3.3.3.1.1.m1.1.1.1" xref="A3.T5.3.3.3.1.1.m1.1.1.1a.cmml"> 14B, 0.5B</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.3.3.3.1.1.m1.1b"><apply id="A3.T5.3.3.3.1.1.m1.1.1.cmml" xref="A3.T5.3.3.3.1.1.m1.1.1"><ci id="A3.T5.3.3.3.1.1.m1.1.1.1a.cmml" xref="A3.T5.3.3.3.1.1.m1.1.1.1"><mtext id="A3.T5.3.3.3.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A3.T5.3.3.3.1.1.m1.1.1.1"> 14B, 0.5B</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.3.3.3.1.1.m1.1c">{}_{\text{ 14B, 0.5B}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.3.3.3.1.1.m1.1d">start_FLOATSUBSCRIPT 14B, 0.5B end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.3.3.3.2">Const.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.3">1.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.4">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.5">0.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.6">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.7">1.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.3.3.3.8">0.86</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.3.3.3.9">0.96</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6.9.3">
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.9.3.1">Heuristics</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.2">1.02</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.3">0.94</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.4">0.93</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.5">0.88</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.6">1.22</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.9.3.7">0.91</td>
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.9.3.8">0.99</td>
</tr>
<tr class="ltx_tr" id="A3.T5.4.4.4">
<td class="ltx_td ltx_align_left" id="A3.T5.4.4.4.2">SVIP</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.3"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.3.1">1.24</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.4"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.4.1">1.08</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.5"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.5.1">1.19</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.6"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.6.1">1.11</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.7"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.7.1">1.47</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.8"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.8.1">1.10</span></td>
<td class="ltx_td ltx_align_left" id="A3.T5.4.4.4.1"><span class="ltx_text ltx_font_bold" id="A3.T5.4.4.4.1.1">1.20<sub class="ltx_sub" id="A3.T5.4.4.4.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A3.T5.4.4.4.1.1.1.1">(+25.0%)</span></sub></span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T5.5.5.5.1" rowspan="3"><span class="ltx_text" id="A3.T5.5.5.5.1.1">LLaMA-3 <math alttext="{}_{\text{ 70B, 8B}}" class="ltx_Math" display="inline" id="A3.T5.5.5.5.1.1.m1.1"><semantics id="A3.T5.5.5.5.1.1.m1.1a"><msub id="A3.T5.5.5.5.1.1.m1.1.1" xref="A3.T5.5.5.5.1.1.m1.1.1.cmml"><mi id="A3.T5.5.5.5.1.1.m1.1.1a" xref="A3.T5.5.5.5.1.1.m1.1.1.cmml"></mi><mtext id="A3.T5.5.5.5.1.1.m1.1.1.1" xref="A3.T5.5.5.5.1.1.m1.1.1.1a.cmml"> 70B, 8B</mtext></msub><annotation-xml encoding="MathML-Content" id="A3.T5.5.5.5.1.1.m1.1b"><apply id="A3.T5.5.5.5.1.1.m1.1.1.cmml" xref="A3.T5.5.5.5.1.1.m1.1.1"><ci id="A3.T5.5.5.5.1.1.m1.1.1.1a.cmml" xref="A3.T5.5.5.5.1.1.m1.1.1.1"><mtext id="A3.T5.5.5.5.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A3.T5.5.5.5.1.1.m1.1.1.1"> 70B, 8B</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.5.5.5.1.1.m1.1c">{}_{\text{ 70B, 8B}}</annotation><annotation encoding="application/x-llamapun" id="A3.T5.5.5.5.1.1.m1.1d">start_FLOATSUBSCRIPT 70B, 8B end_FLOATSUBSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.5.5.5.2">Const.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.3"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.3.1">1.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.4"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.4.1">1.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.5">1.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.6"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.6.1">1.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.7"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.7.1">1.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.5.5.8">1.54</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.5.5.5.9"><span class="ltx_text ltx_font_bold" id="A3.T5.5.5.5.9.1">1.60</span></td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6.10.4">
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.10.4.1">Heuristics</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.2">1.56</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.3">1.55</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.4"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.10.4.4.1">1.76</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.5">1.49</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.6">1.61</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.10.4.7">1.55</td>
<td class="ltx_td ltx_align_left" id="A3.T5.6.6.10.4.8">1.58</td>
</tr>
<tr class="ltx_tr" id="A3.T5.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.6.6.6.2">SVIP</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.3">1.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.4">1.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.5">1.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.6">1.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.7">1.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.6.6.6.8"><span class="ltx_text ltx_font_bold" id="A3.T5.6.6.6.8.1">1.56</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.6.6.6.1">1.58<sub class="ltx_sub" id="A3.T5.6.6.6.1.1"><span class="ltx_text ltx_font_italic" id="A3.T5.6.6.6.1.1.1">(-1.3%)</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by the SVIP method compared to baseline methods (constant and heuristic draft length policies) on the SpecBench benchmark.  The speedup is calculated relative to using only the target language model without speculative decoding. Importantly, this table's results utilize temperature sampling during token generation, a different approach than used in other tables of the paper.
> <details>
> <summary>read the caption</summary>
> Table 5: Speedup on SpecBench using temperature sampling.
> </details>

{{< table-caption >}}
| Model | Methods | 128 | 256 | 512 | 1K | 2K | 4K | 6K | 8K |
|---|---|---|---|---|---|---|---|---|---| 
| Pythia<sub>(6.9B, 160M)</sub> | Const. | 1.10 | 1.30 | 1.50 | 1.66 | 1.82 | 1.20 | 1.11 | 1.04 |
|  | Heuristics | 1.25 | 1.45 | 1.65 | 1.81 | 2.02 | 1.50 | 1.46 | 1.41 |
|  | SVIP | **1.41** | **1.62** | **1.83** | **2.01** | **2.21** | **1.71** | **1.60** | **1.52** |
| Qwen2.5<sub>(14B, 0.5B)</sub> | Const. | 1.05 | 1.08 | 1.15 | 1.29 | 1.44 | 1.54 | 1.60 | 1.67 |
|  | Heuristics | 1.04 | 1.06 | 1.13 | 1.32 | 1.54 | 1.72 | 1.85 | 1.97 |
|  | SVIP | **1.30** | **1.34** | **1.42** | **1.57** | **1.74** | **1.87** | **1.98** | **2.10** |
| LLaMA-3<sub>(70B, 8B)</sub> | Const. | 2.06 | 2.18 | 2.31 | 2.45 | 2.58 | 2.72 | 2.77 | 2.78 |
|  | Heuristics | 2.26 | 2.46 | 2.73 | 3.07 | 3.48 | 3.90 | 4.15 | 4.26 |
|  | SVIP | **2.31** | **2.56** | **2.86** | **3.21** | **3.59** | **4.00** | **4.23** | **4.33** |{{< /table-caption >}}
> 🔼 This table presents the speedup achieved by using the SVIP method compared to baseline methods (constant and heuristics) on the MT-Bench dataset for various generation lengths when greedy decoding is employed.  The results are broken down by model (Pythia, Qwen, LLaMA) and show the speedup factor for different output sequence lengths ranging from 128 to 8192 tokens. This demonstrates SVIP's performance on long-form text generation.
> <details>
> <summary>read the caption</summary>
> Table 6: Speedup on MT-Bench with different generation length using greedy decoding.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.18462/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.18462/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}