---
title: "Understanding R1-Zero-Like Training: A Critical Perspective"
summary: "R1-Zero Training Critically Analyzed!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 Sea AI Lab",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20783 {{< /keyword >}}
{{< keyword icon="writer" >}} Zichen Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20783" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20783" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20783/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

DeepSeek's R1-Zero uses Reinforcement Learning (RL) to boost Large Language Models (LLMs) reasoning without fine-tuning. This work analyzes R1-Zero-like training, focusing on base models and RL components. It finds that base models like DeepSeek-V3-Base already show Aha moment while Qwen2.5 models show reasoning skills sans prompt templates, hinting at pretraining biases. 



The paper finds optimization bias in Group Relative Policy Optimization (GRPO), inflating response length. To fix this, they present Dr. GRPO which maintains reasoning but uses tokens more efficiently. With these insights, they make a minimalist R1-Zero setup, getting 43.3% accuracy on AIME 2024 using a 7B base model.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Base models' pretraining characteristics significantly influence RL performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GRPO optimization has biases; Dr. GRPO addresses these, improving token efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A minimalist R1-Zero recipe achieves state-of-the-art performance on AIME 2024 with a 7B model. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper critically examines **R1-Zero-like training**, offering a minimalist recipe that improves **token efficiency and performance** in LLMs. It’s important for researchers aiming to enhance LLM reasoning capabilities efficiently, providing insights into **pretraining characteristics and optimization biases**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20783/x1.png)

> 🔼 Figure 1 demonstrates the improvements achieved by Dr. GRPO, a modified version of the GRPO algorithm.  The left panel displays the mathematical formula for Dr. GRPO, highlighting the removal of length and standard deviation normalization terms which were present in the original GRPO (Shao et al., 2024). This modification addresses biases in GRPO that led to the generation of excessively long, incorrect responses. The right panel shows a graph comparing the token efficiency of GRPO and Dr. GRPO during reinforcement learning. Dr. GRPO is shown to be significantly more efficient in terms of tokens used, preventing the model from generating increasingly long incorrect outputs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Left: Dr. GRPO introduces simple yet significant modifications to address the biases in GRPO (Shao et al., 2024), by removing the length and std normalization terms. Right: Our unbiased optimizer effectively prevents the model from generating progressively longer incorrect responses, thereby enhancing token efficiency.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Base model + Template</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.2">AIME24</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.3">AMC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.4">MATH500</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.5">Minerva</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.6">OlympiadBench</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.7.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.1">Qwen2.5-Math-1.5B</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.2"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.3"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.4"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.5"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.6"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.2.1.7"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.1">   (4-shot prompting)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.2">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.3">20.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.4">50.4</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.5">12.1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.6">15.9</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2.7">19.7</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.1">   R1 template</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.2">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.3">9.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.4">21.2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.5">6.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.6">2.2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3.7">7.9</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.1">   Qwen template</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.5.4.2.1">20.0</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.3">32.5</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.4">33.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.5">12.5</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.6">22.8</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.4.7">24.2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.5" style="background-color:#C9E5EF;">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.1"><span class="ltx_text" id="S2.T1.1.6.5.1.1" style="background-color:#C9E5EF;">   No template</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.2"><span class="ltx_text" id="S2.T1.1.6.5.2.1" style="background-color:#C9E5EF;">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.3.1" style="background-color:#C9E5EF;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.4.1" style="background-color:#C9E5EF;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.5.1" style="background-color:#C9E5EF;">15.1</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.6.1" style="background-color:#C9E5EF;">28.4</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.6.5.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.5.7.1" style="background-color:#C9E5EF;">33.1</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.7.6.1">Qwen2.5-Math-7B</td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.2"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.3"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.4"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.5"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.6"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.1.7.6.7"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.1">   (4-shot prompting)</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.2">3.3</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.3">22.5</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.4">61.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.5">10.7</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.6">20.9</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.8.7.7">23.8</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.1">   R1 template</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.2">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.3">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.4">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.5">0.0</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.6">0.1</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.9.8.7">0.0</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.1">   Qwen template</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.10.9.2.1">16.7</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.3">38.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.4">50.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.5">9.9</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.6">16.6</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.10.9.7">26.5</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.10" style="background-color:#C9E5EF;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.11.10.1"><span class="ltx_text" id="S2.T1.1.11.10.1.1" style="background-color:#C9E5EF;">   No template</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.2"><span class="ltx_text" id="S2.T1.1.11.10.2.1" style="background-color:#C9E5EF;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.3.1" style="background-color:#C9E5EF;">45.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.4.1" style="background-color:#C9E5EF;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.5.1" style="background-color:#C9E5EF;">21.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.6.1" style="background-color:#C9E5EF;">34.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.11.10.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.11.10.7.1" style="background-color:#C9E5EF;">38.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of experiments evaluating the performance of Qwen2.5-Math models (1.5B and 7B parameter versions) on five benchmark datasets (AIME24, AMC, MATH500, Minerva, and OlympiadBench).  The table compares performance across three different prompting methods:  using a standard R1 template, a Qwen-Math template, and no template at all.  The key observation is that Qwen2.5-Math models achieve peak performance when no template is used, suggesting a potential bias in their pretraining data where question-answer pairs might have been concatenated.
> <details>
> <summary>read the caption</summary>
> Table 1: Qwen2.5-Math models might be pretrained on concatenated question-answer text, resulting in peak performance when no template is applied.
> </details>





### In-depth insights


#### RL Bias in GRPO
The paper identifies **biases in Group Relative Policy Optimization (GRPO)** that can skew reinforcement learning outcomes. It pinpoints two key biases: **response-level length bias and question-level difficulty bias**. The length bias, stemming from normalization by response length, favors shorter correct answers and longer incorrect ones. The difficulty bias, arising from question-level normalization, overweights easier or harder questions, leading to inaccurate adjustments. These biases impact token efficiency and optimization accuracy, causing unintended behaviors.

#### Dr. GRPO: Fixes Bias
The paper identifies biases in Group Relative Policy Optimization (GRPO) that affect LLM fine-tuning. Dr. GRPO is introduced as a solution, **removing length and std normalization terms** to address these biases. **It prevents models from generating excessively long, incorrect responses**, improving token efficiency. **This optimization leads to better reasoning** by focusing on accurate content. Dr. GRPO effectively fixes biases in GRPO, achieving better token efficiency while maintaining or improving reasoning.

#### No template unlocks
**Base language models can possess inherent capabilities without explicit templates.** Some models might be pre-trained in ways that allow them to answer questions directly, **circumventing the need for specific prompting strategies.** This can suggest **hidden biases or pre-existing knowledge** baked into the model during training. **The effectiveness of R1-Zero training is dependent on base model quality.** Understanding how pretraining influences performance is critical for designing effective RL strategies, as **a base model with strong intrinsic reasoning abilities may require different techniques for further improvement** than a model starting from scratch.  **This approach challenges the conventional wisdom** that all LLMs require careful prompt engineering to elicit reasoning skills.

#### Aha emerges early
**Early emergence of the "Aha!" moment** in AI models refers to a significant cognitive shift. This transition marks a point where the model can display enhanced reasoning. **Pre-trained models may already possess latent reasoning capabilities**. When they are unlocked, it can lead to dramatic improvements. This can drastically reduce the need for extensive re-training. This rapid cognitive development emphasizes the efficiency of tapping into a model's pre-existing skills. The swift insight is also significant from a training perspective, highlighting where models can leverage existing frameworks to improve its capabilities.

#### Math pretraining+
**Math pretraining** as a concept suggests leveraging mathematical datasets or tasks during the pre-training phase of a model to enhance its mathematical reasoning capabilities. This can potentially lead to improved performance on downstream tasks that require mathematical skills. The '+' symbol could indicate a few things: an enhanced approach to **math pre-training**, combination of **math pre-training** with other methods, or something of interest that need more information. By incorporating mathematical knowledge into the pre-training process, models can learn relevant patterns, relationships, and problem-solving strategies. The quality, diversity, and scale of the math pretraining data would be critical factors influencing the effectiveness of this approach, alongside the specific pre-training objectives and model architecture. A key benefit could be improved sample efficiency during fine-tuning on specialized math tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20783/x2.png)

> 🔼 This figure compares the performance of various language models on several mathematical reasoning benchmarks.  The models include those trained with RL (Reinforcement Learning) methods and others without.  The model Oat-Zero-7B, trained using a minimalist RL approach described in section 1 of the paper, is highlighted.  The graph shows that Oat-Zero-7B achieves competitive results compared to other models, particularly on the AIME 2024 benchmark. For a more detailed breakdown of results across various benchmarks, please refer to Appendix B.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model performance comparison. Oat-Zero-7B is RL-tuned with our minimalist recipe described in Sec. 1 (third paragraph). Please see App. B for more results.
> </details>



![](https://arxiv.org/html/2503.20783/x3.png)

> 🔼 Figure 3 presents a comparison of different large language models (LLMs) across three key attributes: Question-Answering Ability, Exploration Ability, and Self-Reflection.  Question-Answering Ability shows the proportion of direct answers provided by each LLM versus those that continued or expanded upon the question without a clear answer. Exploration Ability is measured using 'pass@8', indicating the model's ability to explore a variety of potential answers to a question. Self-Reflection is assessed by combining keyword-based and LLM-based detection methods (detailed in Appendix C) to identify instances where the model demonstrates reflection or self-correction in its responses. This figure provides a comprehensive view of the baseline capabilities of various LLMs before any reinforcement learning (RL) is applied.
> <details>
> <summary>read the caption</summary>
> Figure 3: Model attributes across three aspects. Question-Answering Ability: the extent to which a pretrained language model provides a direct answer to a question rather than continuing or expanding upon it; Exploration Ability: pass@8 measures how well base models explore; Self-Reflection: counts are obtained through cross-validation between keyword-based detection and LLM-based detection, as detailed in Appendix C.
> </details>



![](https://arxiv.org/html/2503.20783/x4.png)

> 🔼 This figure showcases examples from the DeepSeek-V3-Base model demonstrating self-reflective behavior, a phenomenon known as the 'Aha moment,'  even before reinforcement learning (RL) fine-tuning.  The examples illustrate the model's ability to pause, reconsider its approach, and even explicitly mention steps like verifying the problem's conditions or acknowledging overthinking. This demonstrates that the 'Aha moment' is not solely a product of RL training but can also be present, to some degree, in well-pretrained base models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Cases showing that DeepSeek-V3-Base already exhibits “Aha moment” even before RL tunning.
> </details>



![](https://arxiv.org/html/2503.20783/x5.png)

> 🔼 Figure 5 illustrates how the Group Relative Policy Optimization (GRPO) algorithm, used in reinforcement learning for large language models (LLMs), introduces bias into the optimization process.  The effective advantage (a<sub>i,t</sub>) calculated by GRPO is a reweighted version of the true, unbiased advantage (Ã<sub>i,t</sub> = R(q, o<sub>i</sub>) - mean(R)).  This reweighting depends on the standard deviation of rewards (std(R)) and the length of the response (|o<sub>i</sub>|).  The figure visually represents these effects, showing that shorter correct responses and longer incorrect responses are given disproportionately high weight in the optimization, leading to a bias favoring longer responses.  The sizes of blue circles represent the magnitude of the unbiased advantage, and the length of orange arrows represents the effective advantage after weighting by standard deviation and response length.
> <details>
> <summary>read the caption</summary>
> Figure 5: Illustration of the biases in GRPO. Note that the effective advantage of GRPO ai,tsubscript𝑎𝑖𝑡a_{i,t}italic_a start_POSTSUBSCRIPT italic_i , italic_t end_POSTSUBSCRIPT is equivalent to a reweighted version of the unbiased advantage A~i,t=R⁢(𝐪,𝐨i)−mean⁡(𝐑)subscript~𝐴𝑖𝑡𝑅𝐪subscript𝐨𝑖mean𝐑\tilde{A}_{i,t}=R({\mathbf{q}},{\mathbf{o}}_{i})-\operatorname{mean}(\mathbf{R})over~ start_ARG italic_A end_ARG start_POSTSUBSCRIPT italic_i , italic_t end_POSTSUBSCRIPT = italic_R ( bold_q , bold_o start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ) - roman_mean ( bold_R ). The terms std⁡(𝐑)std𝐑\operatorname{std}(\mathbf{R})roman_std ( bold_R ) and |𝐨i|subscript𝐨𝑖|{\mathbf{o}}_{i}|| bold_o start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT | could bias the optimization by assigning different weights to different questions and responses, as denoted by the sizes of the blue circles and the lengths of the orange arrows.
> </details>



![](https://arxiv.org/html/2503.20783/x6.png)

> 🔼 This figure compares the performance of Dr. GRPO and GRPO, two reinforcement learning optimization algorithms, during the training of a large language model for mathematical reasoning. The top part shows the training dynamics, illustrating how rewards, output length (overall, correct, and incorrect), change over training iterations for both algorithms. The bottom part displays the evaluation results on various mathematical reasoning benchmarks, showing the average benchmark scores achieved by each algorithm. The plots reveal that Dr. GRPO is more efficient in terms of token usage compared to GRPO and achieves comparable or better performance on the benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of Dr. GRPO and GRPO in terms of training dynamics (Top) and evaluation results (Bottom).
> </details>



![](https://arxiv.org/html/2503.20783/x7.png)

> 🔼 This figure displays the average accuracy across multiple benchmarks achieved during reinforcement learning (RL) training.  Different line graphs represent the performance using various combinations of question sets (containing different types and difficulty levels of math questions) and prompting templates (R1, Qwen-Math, and No Template). The x-axis represents the number of policy iterations during RL training, while the y-axis shows the average accuracy across the benchmarks. This allows for a comparison of how the choice of template and question set complexity impacts the effectiveness of the RL training process.
> <details>
> <summary>read the caption</summary>
> Figure 7: The average benchmark accuracy of different {template, question set} combinations during RL training.
> </details>



![](https://arxiv.org/html/2503.20783/x8.png)

> 🔼 Figure 8 presents a comparative analysis of different base models' performance in reinforcement learning (RL) for reasoning tasks, and a comparison of two RL optimization algorithms, Dr. GRPO and GRPO. The left panel shows the average benchmark accuracy across various models over the course of RL training. The right panel focuses on the difference between Dr. GRPO and GRPO, highlighting their impact on both reasoning accuracy and the length of model responses.  The solid lines represent reasoning accuracy, while dashed lines depict the response length. This visualization helps to understand the effects of different base models and optimization algorithms on the effectiveness and efficiency of RL fine-tuning for LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 8: Left: The average benchmark performance curves of different base models. Right: The comparison between Dr. GRPO and GRPO with respect to reasoning accuracy (solid lines) and model response length (dashed lines).
> </details>



![](https://arxiv.org/html/2503.20783/x9.png)

> 🔼 Figure 9 presents a bar chart visualizing the frequency of self-reflection keywords across different language models.  The data encompasses 40,000 responses, resulting from 500 questions, each with 8 responses generated at 10 different temperature settings. Each bar represents a model and keyword, showing how many times each keyword appeared in that model's responses. The y-axis is logarithmic, highlighting the variation in keyword usage across models.
> <details>
> <summary>read the caption</summary>
> Figure 9: Count of keyword occurrences out of 40,000 responses (500 questions ×\times× 8 responses per question ×\times× 10 temperatures). y is in log scale.
> </details>



![](https://arxiv.org/html/2503.20783/x10.png)

> 🔼 This figure shows two examples where automated methods for detecting self-reflection in large language model outputs fail.  Case (a) demonstrates a false positive from keyword-based detection, where the presence of keywords associated with self-reflection doesn't actually reflect true self-reflection in the response content. Case (b) illustrates a false positive from LLM-based detection, highlighting a situation where an LLM incorrectly identifies a response as demonstrating self-reflection despite the absence of such behavior.  These examples illustrate the challenges in accurately identifying self-reflection in LLM outputs using automated techniques.
> <details>
> <summary>read the caption</summary>
> Figure 10: Case (a): a false positive in keyword-based detection. Case (b): a false positive in LLM-based detection.
> </details>



![](https://arxiv.org/html/2503.20783/x11.png)

> 🔼 Figure 11 displays a comparison of three methods used to detect self-reflection in large language model responses: keyword-based detection, LLM-based detection, and a cross-validation method combining the two.  The analysis focuses on 500 questions, each with eight responses generated at different temperature settings. A question is classified as exhibiting self-reflection if at least one of its eight responses shows evidence of self-reflection according to the chosen method. The figure visually represents how the count of questions identified as self-reflective varies across the different detection methods and across different temperature settings, allowing for a comparison of the effectiveness and limitations of each approach.
> <details>
> <summary>read the caption</summary>
> Figure 11: Comparison of keyword-based detection, LLM-based detection, and cross detection. Self-reflections are counted at the question level across 500 questions, where a question is marked as having self-reflection if at least one of its eight responses exhibits self-reflection.
> </details>



![](https://arxiv.org/html/2503.20783/x12.png)

> 🔼 Figure 12 presents a comparison of response categories from the MATH dataset for two models: DeepSeek-V3-Base (a pre-trained model) and DeepSeek-R1-Zero (a model fine-tuned using reinforcement learning).  The figure displays the distribution of response types (correct, incorrect, unformatted, truncated) across various difficulty levels (levels 2-5) within the MATH dataset for both models. This visual comparison highlights the impact of R1-Zero training on response quality and the shift in response categories after reinforcement learning is applied.
> <details>
> <summary>read the caption</summary>
> Figure 12: Breakdown of response categories across difficulty levels in the MATH dataset for DeepSeek-V3-Base and DeepSeek-R1-Zero.
> </details>



![](https://arxiv.org/html/2503.20783/x13.png)

> 🔼 This figure displays the accuracy difference between DeepSeek-R1-Zero model responses that contain self-reflection and those that do not, for each question in a dataset.  It illustrates the extent to which the presence of self-reflection in a response correlates with improved accuracy.  Each data point represents a question, and the y-axis value indicates the difference in accuracy between responses with and without self-reflection for that specific question.
> <details>
> <summary>read the caption</summary>
> Figure 13: Accuracy difference between responses with and without self-reflection for each question (responses sampled from DeepSeek-R1-Zero).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.5.6.1.1">Repository</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.5.6.1.2">Code Link</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.6.1.3">Unbiased?</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.1.1.2">trl <cite class="ltx_cite ltx_citemacro_citep">(von Werra et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.20783v1#bib.bib32" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.1.3"><a class="ltx_ref ltx_href" href="https://github.com/huggingface/trl/blob/07cfe1677e552b7d5c92b7740e5b2f0b057661d8/trl/trainer/ppo_trainer.py#L573C1-L574C1" title="">PPO Loss</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1"><svg class="ltx_picture" height="10.02" id="S3.T2.1.1.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.2.2.2">OpenRLHF <cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.20783v1#bib.bib11" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.2.3"><a class="ltx_ref ltx_href" href="https://github.com/OpenRLHF/OpenRLHF/blob/15d31511d7f63c410bdbea8be34854aafc90c0ac/openrlhf/models/loss.py#L76" title="">PPO Loss</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.1"><svg class="ltx_picture" height="10.02" id="S3.T2.2.2.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.3.3.2">verl <cite class="ltx_cite ltx_citemacro_citep">(Sheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.20783v1#bib.bib28" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.3.3"><a class="ltx_ref ltx_href" href="https://github.com/volcengine/verl/blob/c6dc8b73cf011aa75b8c6a47b0322f50aed800ad/verl/trainer/ppo/core_algos.py#L301" title="">PPO Loss</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.1"><svg class="ltx_picture" height="10.02" id="S3.T2.3.3.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.4.4.2">SimpleRL-Zero <cite class="ltx_cite ltx_citemacro_citep">(Zeng et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.20783v1#bib.bib36" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.4.4.3"><a class="ltx_ref ltx_href" href="https://github.com/hkust-nlp/simpleRL-reason/blob/41c9a893ea17dc4b5399dc2e5a14a53d81b373f6/train/openrlhf/models/loss.py#L48" title="">PPO Loss</a></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.1"><svg class="ltx_picture" height="10.02" id="S3.T2.4.4.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S3.T2.5.5.2">Open-Reasoner-Zero <cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.20783v1#bib.bib12" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S3.T2.5.5.3"><a class="ltx_ref ltx_href" href="https://github.com/Open-Reasoner-Zero/Open-Reasoner-Zero/blob/e008f6d95f0b9a0e992f6b8bac912515b50a4634/orz/ppo/actors.py#L130" title="">PPO Loss</a></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.5.5.1"><svg class="ltx_picture" height="10.02" id="S3.T2.5.5.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares several open-source implementations of Proximal Policy Optimization (PPO) algorithms commonly used in Large Language Model (LLM) training.  It highlights that many of these implementations normalize the loss function by response length. This normalization introduces a length bias, which is not aligned with the unbiased PPO objective function. The table lists repositories and links to code for several widely used PPO loss implementations, indicating whether each contains this length bias.
> <details>
> <summary>read the caption</summary>
> Table 2: Many open-sourced PPO implementations contain length bias.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.1.1.1">Question set</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.1.2.1">Description</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.3.1.1">ORZ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.3.1.2">Combining AIME, Numina-Math, Tulu3 MATH; diverse and large amount (57k)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.4.2.1">MATH</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.4.2.2">High-school math competition questions (12k)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.5.3.1">GSM</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.5.3.2">Simpler grade-school math questions (8k)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.1.1.2">ASDiv</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.1.1">Basic algebra (<math alttext="+-\times\div)" class="ltx_math_unparsed" display="inline" id="S3.T3.1.1.1.m1.4"><semantics id="S3.T3.1.1.1.m1.4a"><mrow id="S3.T3.1.1.1.m1.4b"><mo id="S3.T3.1.1.1.m1.1.1" rspace="0em">+</mo><mo id="S3.T3.1.1.1.m1.2.2" lspace="0em" rspace="0em">−</mo><mo id="S3.T3.1.1.1.m1.3.3" lspace="0em" rspace="0em">×</mo><mo id="S3.T3.1.1.1.m1.4.4" lspace="0em" rspace="0em">÷</mo><mo id="S3.T3.1.1.1.m1.4.5" stretchy="false">)</mo></mrow><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.4c">+-\times\div)</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.4d">+ - × ÷ )</annotation></semantics></math> questions (2k)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents four different question sets used in the paper's experiments. Each set is characterized by its difficulty level and the range of mathematical concepts covered.  The sets are:  1. **ORZ:** A large and diverse set combining questions from various sources, including AIME, Numina-Math, and Tulu3 MATH. 2. **MATH:** Questions from high-school math competitions. 3. **GSM:** Simpler questions, suitable for grade school levels. 4. **ASDiv:**  Basic algebraic questions involving addition, subtraction, multiplication, and division.  These different question sets allow the researchers to evaluate the robustness and generalization of their models under varied conditions.
> <details>
> <summary>read the caption</summary>
> Table 3: Different question sets that have different levels of difficulty and coverage.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1">Base model + Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">AIME24</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">AMC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">MATH500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">Minerva</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">OlympiadBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.1.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-<span class="ltx_text" id="A2.T4.1.2.2.1.1" style="color:#990066;">1.5B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.2.2.2.1">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">33.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">12.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">22.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">24.2</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-1.5B*</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">61.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">15.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">28.4</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">33.1</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4.4" style="background-color:#C9E5EF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T4.1.4.4.1.1" style="background-color:#C9E5EF;">Oat-Zero-1.5B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.2.1" style="background-color:#C9E5EF;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.3.1" style="background-color:#C9E5EF;">53.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.4.1" style="background-color:#C9E5EF;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.5.1" style="background-color:#C9E5EF;">25.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.6.1" style="background-color:#C9E5EF;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.4.7.1" style="background-color:#C9E5EF;">42.1</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.1.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">R1-Distill-Qwen-1.5B @ 3k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">17.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">22.0</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.1.1" style="color:#8C8C8C;">R1-Distill-Qwen-1.5B @ 8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.2.1" style="color:#8C8C8C;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.3.1" style="color:#8C8C8C;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.4.1" style="color:#8C8C8C;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.5.1" style="color:#8C8C8C;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.6.1" style="color:#8C8C8C;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.6.6.7.1" style="color:#8C8C8C;">41.5</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">48.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">40.2</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">39.8</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">Llama-3.2-<span class="ltx_text" id="A2.T4.1.8.8.1.1" style="color:#990066;">3B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">2.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">6.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">6.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;">1.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;">3.3</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.9.9" style="background-color:#EDF6FA;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.1.1" style="background-color:#EDF6FA;">+ RL w. Dr. GRPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.2.1" style="background-color:#EDF6FA;">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.3.1" style="background-color:#EDF6FA;">7.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.4.1" style="background-color:#EDF6FA;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.5.1" style="background-color:#EDF6FA;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.6.1" style="background-color:#EDF6FA;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.9.9.7.1" style="background-color:#EDF6FA;">6.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">Llama-3.2-3B-FineMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">3.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">5.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">6.0</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.11.11" style="background-color:#EDF6FA;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.1.1" style="background-color:#EDF6FA;">+ RL w. Dr. GRPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.2.1" style="background-color:#EDF6FA;">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.11.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.3.1" style="background-color:#EDF6FA;">10.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.11.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.4.1" style="background-color:#EDF6FA;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.5.1" style="background-color:#EDF6FA;">12.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.11.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.6.1" style="background-color:#EDF6FA;">9.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.11.11.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.11.11.7.1" style="background-color:#EDF6FA;">14.8</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">Llama-3.2-3B-NuminaQA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;">0.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;">0.1</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;">0.14</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.13.13" style="background-color:#C9E5EF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.13.13.1.1" style="background-color:#C9E5EF;">+ RL w. Dr. GRPO (<span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T4.1.13.13.1.1.1">Oat-Zero-3B</span>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.13.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.2.1" style="background-color:#C9E5EF;">6.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.13.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.3.1" style="background-color:#C9E5EF;">18.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.13.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.4.1" style="background-color:#C9E5EF;">50.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.13.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.5.1" style="background-color:#C9E5EF;">14.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.13.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.6.1" style="background-color:#C9E5EF;">14.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.13.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.13.13.7.1" style="background-color:#C9E5EF;">20.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.14.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">Llama-3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">6.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;">15.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;">38.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;">11.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.14.14.6" style="padding-left:2.0pt;padding-right:2.0pt;">12.6</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.14.14.7" style="padding-left:2.0pt;padding-right:2.0pt;">17.1</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.15.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-<span class="ltx_text" id="A2.T4.1.15.15.1.1" style="color:#990066;">7B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.15.15.2.1">16.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">38.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.5" style="padding-left:2.0pt;padding-right:2.0pt;">9.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A2.T4.1.15.15.6" style="padding-left:2.0pt;padding-right:2.0pt;">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.15.15.7" style="padding-left:2.0pt;padding-right:2.0pt;">26.5</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.16.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-7B*</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.16.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.16.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.16.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">21.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.16.16.6" style="padding-left:2.0pt;padding-right:2.0pt;">34.7</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.16.16.7" style="padding-left:2.0pt;padding-right:2.0pt;">38.2</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.17.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">SimpleRL-Zero-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.17.17.3" style="padding-left:2.0pt;padding-right:2.0pt;">60.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.17.17.4" style="padding-left:2.0pt;padding-right:2.0pt;">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.17.17.5" style="padding-left:2.0pt;padding-right:2.0pt;">27.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.17.17.6" style="padding-left:2.0pt;padding-right:2.0pt;">40.3</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.17.17.7" style="padding-left:2.0pt;padding-right:2.0pt;">46.6</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;">PRIME-Zero-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.18.18.3.1">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.18.18.4.1">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.18.18.5.1">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.18.18.6" style="padding-left:2.0pt;padding-right:2.0pt;">40.9</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.18.18.7" style="padding-left:2.0pt;padding-right:2.0pt;">48.0</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.19.19.1" style="padding-left:2.0pt;padding-right:2.0pt;">OpenReasoner-Zero-7B @ 3k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.19.19.2" style="padding-left:2.0pt;padding-right:2.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.19.19.3" style="padding-left:2.0pt;padding-right:2.0pt;">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.19.19.4" style="padding-left:2.0pt;padding-right:2.0pt;">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.19.19.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.19.19.6" style="padding-left:2.0pt;padding-right:2.0pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.19.19.7" style="padding-left:2.0pt;padding-right:2.0pt;">43.0</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.20.20.1" style="padding-left:2.0pt;padding-right:2.0pt;">OpenReasoner-Zero-7B @ 8k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.20.20.2" style="padding-left:2.0pt;padding-right:2.0pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.20.20.3" style="padding-left:2.0pt;padding-right:2.0pt;">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.20.20.4" style="padding-left:2.0pt;padding-right:2.0pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.20.20.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.20.20.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.20.20.6.1">47.9</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.20.20.7" style="padding-left:2.0pt;padding-right:2.0pt;">45.9</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.21.21" style="background-color:#C9E5EF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.21.21.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A2.T4.1.21.21.1.1" style="background-color:#C9E5EF;">Oat-Zero-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.21.21.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.21.21.2.1" style="background-color:#C9E5EF;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.21.21.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.21.21.3.1" style="background-color:#C9E5EF;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.21.21.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.21.21.4.1" style="background-color:#C9E5EF;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.21.21.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.21.21.5.1" style="background-color:#C9E5EF;">30.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.21.21.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.21.21.6.1" style="background-color:#C9E5EF;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.21.21.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.21.21.7.1" style="background-color:#C9E5EF;">51.4</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.1.22.22.1" style="padding-left:2.0pt;padding-right:2.0pt;">R1-Distill-Qwen-7B @ 3k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.22.22.2" style="padding-left:2.0pt;padding-right:2.0pt;">10.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.22.22.3" style="padding-left:2.0pt;padding-right:2.0pt;">26.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.22.22.4" style="padding-left:2.0pt;padding-right:2.0pt;">60.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.22.22.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A2.T4.1.22.22.6" style="padding-left:2.0pt;padding-right:2.0pt;">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.22.22.7" style="padding-left:2.0pt;padding-right:2.0pt;">28.5</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.1.23.23.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.1.1" style="color:#8C8C8C;">R1-Distill-Qwen-7B @ 8k</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.23.23.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.2.1" style="color:#8C8C8C;">33.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.23.23.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.3.1" style="color:#8C8C8C;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.23.23.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.4.1" style="color:#8C8C8C;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.23.23.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.5.1" style="color:#8C8C8C;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A2.T4.1.23.23.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.6.1" style="color:#8C8C8C;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.23.23.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A2.T4.1.23.23.7.1" style="color:#8C8C8C;">54.7</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.1" style="padding-left:2.0pt;padding-right:2.0pt;">Qwen2.5-Math-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.2" style="padding-left:2.0pt;padding-right:2.0pt;">16.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.3" style="padding-left:2.0pt;padding-right:2.0pt;">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.4" style="padding-left:2.0pt;padding-right:2.0pt;">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A2.T4.1.24.24.6" style="padding-left:2.0pt;padding-right:2.0pt;">42.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.24.24.7" style="padding-left:2.0pt;padding-right:2.0pt;">45.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comprehensive comparison of benchmark scores across various large language models (LLMs).  The models are evaluated on five key benchmarks: AIME2024, AMC, MATH500, Minerva, and OlympiadBench.  The table showcases performance for LLMs with three different base model sizes (1.5B, 3B, and 7B parameters), including both standard and instruction-tuned versions.  A key focus is on the 'Oat-Zero' models, which are fine-tuned using the minimalist RL training recipe described in Section 1 of the paper. Notably, results are shown for models both with and without prompt templates; results using 'no template' are marked with an asterisk (*) as these scores represent the peak performance achievable by the base model itself, before any RL tuning is applied. This approach provides insight into the intrinsic capabilities of the base model independent of the effects of RL or prompting.
> <details>
> <summary>read the caption</summary>
> Table 4: A comparison on benchmark scores. Oat-Zero models are RL-tuned by our minimalist recipe (Sec. 1). * means we employ the best template (no template) to generate answers, such that the test scores are highest and can faithfully reflect the capabilities of the base models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A4.F12.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.F12.fig1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.F12.fig1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.F12.fig1.1.1.1.1.1">Category</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A4.F12.fig1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.F12.fig1.1.1.1.2.1">Base</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="A4.F12.fig1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.F12.fig1.1.1.1.3.1">R1-Zero</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.F12.fig1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.F12.fig1.1.2.1.1">Unformatted</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.F12.fig1.1.2.1.2">880.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.F12.fig1.1.2.1.3">7870.3</td>
</tr>
<tr class="ltx_tr" id="A4.F12.fig1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.F12.fig1.1.3.2.1">Correct</th>
<td class="ltx_td ltx_align_right" id="A4.F12.fig1.1.3.2.2">621.3</td>
<td class="ltx_td ltx_align_right" id="A4.F12.fig1.1.3.2.3">4965.4</td>
</tr>
<tr class="ltx_tr" id="A4.F12.fig1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.F12.fig1.1.4.3.1">Incorrect</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.F12.fig1.1.4.3.2">1038.9</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A4.F12.fig1.1.4.3.3">8206.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of average response lengths generated by two different language models: DeepSeek-V3-Base and DeepSeek-R1-Zero.  The comparison is broken down by response category (Unformatted, Correct, Incorrect, Truncated) to show how the length of responses varies depending on the correctness and format of the generated text. This analysis helps in understanding the impact of reinforcement learning (R1-Zero) on response length and provides insights into the model's behavior.
> <details>
> <summary>read the caption</summary>
> Table 5: Average response string lengths across categories for DeepSeek-V3-Base (Base) and DeepSeek-R1-Zero (R1-Zero).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20783/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20783/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}