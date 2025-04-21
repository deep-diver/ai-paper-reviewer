---
title: "Could Thinking Multilingually Empower LLM Reasoning?"
summary: "LLMs can reason better multilingually! Paper shows multilingual reasoning boosts performance, revealing the full potential is still untapped."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Nanjing University",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11833 {{< /keyword >}}
{{< keyword icon="writer" >}} Changjiang Gao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11833" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11833" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11833/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) often show an "English bias," performing better in English than other languages. However, using certain other languages can yield better performance in reasoning tasks. The study seeks to quantify the potential of multilingual thinking and compare it to English thinking. The work demonstrates that multilingual reasoning can achieve significantly higher performance upper bounds than English-only reasoning, suggesting that the full potential of multilingual thinking is yet to be tapped.



To estimate the upper bound of harnessing multilingualism, the authors aggregated model responses to translated parallel inputs on GPQA and MGSM tasks, using Acc@k to measure performance. The study is conducted using LLaMA3.1-70B, Qwen2.5-72B and R1-distill-LLaMA3.1-70B.  The results showed that **multilingual thinking can ideally boost GPQA accuracy** from ~45 to ~90, and MGSM from ~90 to ~100. Further experiments analyze language selection, text quality, and answer selection methods to determine factors affecting multilingual reasoning potential.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multilingual reasoning can significantly improve the performance of LLMs on reasoning tasks, outperforming English-only approaches. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Existing answer selection methods struggle to fully leverage the potential of multilingual reasoning due to limitations and biases. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The gains from multilingual reasoning are robust to variations in translation quality and language choice. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **quantifies the potential of multilingual reasoning** in LLMs, revealing that performance upper bounds in multilingual settings exceeds monolingual. It uncovers the limitations of existing answer selection methods and **provides insights for future research** to fully harness multilingualism for reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11833/x1.png)

> 🔼 This figure compares the performance of several large language models (LLMs) on two reasoning tasks, GPQA and MGSM, when the tasks are presented in different languages.  It shows the accuracy of the models (Acc@k) across multiple languages including English, and highlights in red when a particular non-English language outperforms English for a given model and task. This demonstrates that the performance of LLMs is not consistently higher when tasks are in English, challenging the commonly held belief of an 'English bias' in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: English is not always better than other languages. Evaluation results on the human-translated GPQA Rein et al. (2023) and MGSM Shi et al. (2023) datasets (obtained from Huang et al. (2025)). The red cells indicate greater-than-English scores.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.1">Combo</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1"><math alttext="\overline{\textbf{Acc}}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mover accent="true" id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.m1.1.1.2a.cmml">Acc</mtext><mo id="S3.T1.1.1.1.m1.1.1.1" xref="S3.T1.1.1.1.m1.1.1.1.cmml">¯</mo></mover><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><ci id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1.1">¯</ci><ci id="S3.T1.1.1.1.m1.1.1.2a.cmml" xref="S3.T1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.m1.1.1.2">Acc</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\overline{\textbf{Acc}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">over¯ start_ARG Acc end_ARG</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.1">Acc@4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.2.1.1">Qwen2.5-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.2">Best</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.3">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.4">74.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.1">Worst</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2">37.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.3">65.6</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.1">Random</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.2">41.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3">70.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.5.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.5.1.1">LLaMA3.1-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.5.2">Best</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.5.3">38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.5.4">73.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.6.1">Worst</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.2">32.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.6.3">65.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.1">Random</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.2">36.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.3">70.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.8.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.8.1.1">R1-Distill-LLaMA-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.8.2">Best</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.8.3">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.8.4">80.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.1">Worst</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.2">34.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.3">64.7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.10.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.2">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.3">75.5</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the robustness of multilingual reasoning's upper bound against variations in language selection for the GPQA dataset. It shows the average accuracy (Acc) and the probability of at least one correct answer among four (Acc@4) using three different language combinations: the best-performing combination, the worst-performing combination, and a random combination.  The results highlight that despite the average accuracy fluctuating across different combinations, the improvement provided by multilingual reasoning (Acc@4) remains consistently high, regardless of the specific language choices used.
> <details>
> <summary>read the caption</summary>
> Table 1: Multilingual upper bound is robust to language combination choices. Mean Acc (Acc¯¯Acc\overline{\textbf{Acc}}over¯ start_ARG Acc end_ARG) and Acc@4 of the best, worst and random language combinations (Combo) with the Multilingual setting on the human-translated GPQA dataset. While Acc¯¯Acc\overline{\text{Acc}}over¯ start_ARG Acc end_ARG varies, the gain in Acc@k𝑘kitalic_k remains high.
> </details>





### In-depth insights


#### Multilingual +
When it comes to multilingual approaches in language models, the addition of "+" signifies an extension beyond basic translation. This suggests delving into the nuanced advantages of using multiple languages for reasoning. **The exploration of leveraging various linguistic structures could lead to more robust and adaptable models.** Furthermore, it hints at methodologies for enhancing model performance through techniques like data augmentation using translated data or employing cross-lingual transfer learning. The "+" might also imply a strategy for mitigating biases present in models trained primarily on English data. **Investigating how different languages contribute unique information or reasoning pathways is crucial.** Finally, It could be a comparison that highlights differences and similarities in reasoning across languages, offering insights for improvement.

#### Selection Crucial
Selecting the most accurate answer from multiple options is **critical** for enhancing performance in tasks that demand reasoning. Effective strategies involve optimizing the selection process. Given the limited effectiveness of answer selection, it suggests that current approaches don't fully harness the potential of more effective strategies. This challenge calls for **innovative selection methods**. The selection is **sensitive** to the method used. A need for more effective selection strategy remains **elusive**.

#### Beyond English
The research underscores the limitations of relying solely on English in LLM reasoning, highlighting instances where other languages yield superior performance. This "English bias" can hinder true multilingual understanding. **Exploring alternative languages for reasoning tasks could unlock untapped potential**, revealing nuances and insights missed when confined to English-centric processing. The gains from multilingual thinking surpass baselines, underscoring the **benefit of linguistic diversity in problem-solving**. Future research should focus on stable selection methods to effectively use multilingualism for enhanced reasoning.

#### Language Bias
The research paper acknowledges that **large language models (LLMs) often exhibit a significant 'English bias,'** performing better when tasks are presented in English. However, the paper explores instances where other languages yield superior performance in reasoning tasks, suggesting that **multilingual reasoning can potentially surpass English-only reasoning**. This phenomenon challenges the notion that aligning non-English reasoning with English behaviors is the optimal approach. This bias is a consequence of the **dominance of English in training resources**, leading to models that are fine-tuned to excel in English-centric tasks. Furthermore, it emphasizes the need to **investigate how to better harness multilingual capabilities** to mitigate this bias and enhance the overall performance of LLMs.

#### Difficulty Match
The heading suggests an exploration of how well the difficulty of the questions aligns with the capabilities of different languages. It delves into the idea that **specific languages might be better suited** for handling questions of varying difficulty levels. This implies a nuanced understanding of how linguistic features interact with problem-solving. **Certain languages can compensate for errors made in others**. It is reasonable to expect varying accuracy across different difficulty questions, highlighting the need for multilingual reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11833/x2.png)

> 🔼 Figure 2 illustrates different input methods used to evaluate multilingual reasoning in LLMs.  It compares five approaches: 1) **Multilingual:** Questions are translated into multiple languages before being fed to the model. 2) **Repeat:** The same English question is input multiple times to the model, using different random seeds for each run.  3) **Paraphrase:** The original English question is paraphrased using an LLM before being fed into the model. 4) **Repeat-Mix:**  Combines the Repeat and Multilingual methods; half the inputs are repeated questions and half are translated versions. 5) **Paraphrase-Mix:** Combines Paraphrase and Multilingual in a similar 50/50 ratio. The diagram visually represents these techniques, helping to understand the different ways input variations impact the model's reasoning performance. The figure is essential in evaluating whether the performance improvements observed in multilingual settings are simply due to random variation in input or decoding.
> <details>
> <summary>read the caption</summary>
> Figure 2: An introduction to input samples across various comparison methods, including Multilingual, Repeat, Paraphrase, Repeat-Mix, and Paraphrase-Mix.
> </details>



![](https://arxiv.org/html/2504.11833/x3.png)

> 🔼 This figure compares the performance upper bounds achieved by three different approaches on the human-translated GPQA dataset: Multilingual, Repeat, and Paraphrase.  The Multilingual approach involves translating the questions into multiple languages and aggregating model responses, while Repeat and Paraphrase represent baselines using multiple runs with the same input and paraphrased inputs respectively.  The Acc@17 metric indicates the probability of obtaining at least one correct answer from 17 model responses.  The results show that the Multilingual approach consistently outperforms the Repeat and Paraphrase baselines across three different LLMs (Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B), highlighting the potential benefits of leveraging multilingualism in LLM reasoning tasks. The y-axis represents the accuracy (Acc@17), and the x-axis shows three different LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Compared to Repeat and Paraphrase, Multilingual demonstrates a higher performance upper bound. Acc@17 scores of Multilingual, Paraphrase and Repeat settings of the three models on the human-translated GPQA dataset.
> </details>



![](https://arxiv.org/html/2504.11833/x4.png)

> 🔼 Figure 4 presents a graph comparing the performance of three different methods—Multilingual, Paraphrase, and Repeat—on the GPQA dataset using the Qwen2.5-72B model.  The x-axis represents the increasing number of languages or answer candidates (k), while the y-axis shows the corresponding Acc@k score. Acc@k indicates the probability that at least one of the top k answers is correct. The graph demonstrates that the Multilingual approach significantly outperforms both Paraphrase and Repeat methods, especially when the number of languages or candidates exceeds three (k>3). The Multilingual approach shows a consistently increasing advantage as more languages or candidates are considered, highlighting the benefit of utilizing multiple languages for improved reasoning performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Multilingual surpasses Paraphrase and Repeat in Acc@k𝑘kitalic_k after k=3𝑘3k=3italic_k = 3 in a growing margin. Best Acc@k𝑘kitalic_k (out of 17) of Multilingual, Paraphrase and Repeat settings for Qwen2.5-72B with increasing numbers of languages or candidates on the human-translated GPQA dataset.
> </details>



![](https://arxiv.org/html/2504.11833/x5.png)

> 🔼 This figure displays the distribution of Acc@4 scores for all possible combinations of four languages when using the Qwen2.5-72B model on the human-translated GPQA dataset.  It compares the performance of the Multilingual approach against baselines using only paraphrased English inputs or repeated runs with the same English input. The figure shows that the Multilingual method consistently achieves higher Acc@4 scores, demonstrating the potential of multilingual reasoning to improve the upper bound of model performance. The different boxes represent the various methods used to prepare the inputs, highlighting the consistent superior performance of the multilingual approach.
> <details>
> <summary>read the caption</summary>
> Figure 5: Fully utilizing non-English languages can improve the upper bound. Distribution of Acc@4 scores of all possible 4-candidate-combinations with Qwen2.5-72B on the human-translated GPQA dataset, under different settings.
> </details>



![](https://arxiv.org/html/2504.11833/x6.png)

> 🔼 This figure displays the robustness of the multilingual upper bound in reasoning tasks. It compares the performance (Acc@4) across various 4-language combinations within a multilingual setting, differentiating between datasets with human-translated and machine-translated questions. Error bars represent the variation in performance (minimum and maximum Acc@4 scores). The results demonstrate consistent high performance, suggesting that multilingual reasoning benefits are not significantly affected by translation quality.
> <details>
> <summary>read the caption</summary>
> Figure 6: The Multilingual upper bound is stable regardless of the question translation quality. Comparison of Acc@4 on human- and machine-translated GPQA dataset among all possible 4-language combinations in Multilingual setting. The values and error bars denote mean, max and min scores.
> </details>



![](https://arxiv.org/html/2504.11833/x7.png)

> 🔼 This figure illustrates the performance of three different methods (Multilingual, Paraphrase, and Repeat) on the GPQA dataset using the Qwen2.5-72B model.  The x-axis represents the increasing number of languages or candidates (k), and the y-axis shows the Vote@k score, indicating the accuracy of the majority vote among k answers.  The Multilingual method uses translations of the questions into different languages before feeding them to the model.  The Paraphrase method uses paraphrased versions of the original questions. The Repeat method runs the model multiple times on the same questions with different random seeds.  Both human-translated and machine-translated versions of the Multilingual approach are included for comparison. The graph demonstrates that while accuracy (Acc@k) generally increases with more languages or candidates for the Multilingual method (as shown in a previous figure), majority voting (Vote@k) does not necessarily follow the same trend; it does not consistently improve with an increasing number of languages, suggesting limitations of majority voting as an answer selection strategy. 
> <details>
> <summary>read the caption</summary>
> Figure 7: Voting performance does not increase with candidate number. Best Vote@k𝑘kitalic_k (out of 17) of Paraphrase, Repeat and Multilingual with human (Multilingual-h) and machine translation (Multilingual-m) on the GPQA dataset for Qwen2.5-72B with increasing numbers of languages or candidates.
> </details>



![](https://arxiv.org/html/2504.11833/x8.png)

> 🔼 Figure 8 presents a box plot visualizing the sensitivity of multilingual reasoning performance to the quality of language combinations used.  It compares the Vote@4 scores (accuracy after majority voting from 4 candidates) obtained from three different methods: Repeat (repeatedly feeding the same English prompt to the model), Paraphrase (feeding paraphrased English prompts), and Multilingual (feeding translated versions of the prompt in multiple languages). The comparison includes results using both human-translated (Multilingual-h) and machine-translated (Multilingual-m) multilingual prompts.  The box plots show the mean, maximum, and minimum scores for each method, providing a comprehensive view of the performance variation and the impact of translation quality on the success of the multilingual approach.
> <details>
> <summary>read the caption</summary>
> Figure 8: Multilingual performance is sensitive to the optimality of the language combination. Comparison of Vote@4 of Repeat, Paraphrase and Multilingual with human (Multilingual-h) and machine translation (Multilingual-m) on the GPQA dataset. The values and error bars denote mean, max and min scores.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Best Combo</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Random Combo</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1">Acc@4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.1">Vote@4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.3.1">Acc@4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.4.1">Vote@4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1" rowspan="4"><span class="ltx_text" id="S4.T2.1.1.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.1.1.1">
<span class="ltx_tr" id="S4.T2.1.1.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.1.1.1.1.1">Qwen2.5-</span></span>
<span class="ltx_tr" id="S4.T2.1.1.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.1.1.1.2.1">72B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.4">53.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.5">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.6.1">53.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2">71.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.3.1">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.5">52.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">74.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3">54.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5">51.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.6.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.2.1">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.4.1">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.5">52.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.7.1" rowspan="4"><span class="ltx_text" id="S4.T2.1.1.7.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.7.1.1.1">
<span class="ltx_tr" id="S4.T2.1.1.7.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.7.1.1.1.1.1">LLaMA3.1-</span></span>
<span class="ltx_tr" id="S4.T2.1.1.7.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.7.1.1.1.2.1">70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.3">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.4">50.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.5">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7.6">49.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.2">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3">51.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.5.1">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.2">73.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.3">49.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.9.4.1">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.5">48.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.10.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.2.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.10.3.1">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.4">68.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.5">49.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.11.1" rowspan="4"><span class="ltx_text" id="S4.T2.1.1.11.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.11.1.1.1">
<span class="ltx_tr" id="S4.T2.1.1.11.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.11.1.1.1.1.1">R1-Distill-</span></span>
<span class="ltx_tr" id="S4.T2.1.1.11.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.11.1.1.1.2.1">LLaMA-70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.3">77.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.4">63.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.5">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.11.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.6.1">62.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.2">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.3">60.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.4">71.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.5">59.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.2">80.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.3">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.13.4.1">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.5">60.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.14.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.14.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.14.2.1">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.14.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.14.3.1">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.14.4">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.14.5">60.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different answer selection methods for multilingual reasoning on the GPQA dataset.  It contrasts the accuracy at k=4 (Acc@4) and majority voting at k=4 (Vote@4). Results are shown for the best combination of four languages (Best Combo) out of seventeen, a random selection of four languages (Random Combo), and for both human and machine translated versions of the dataset. The goal is to assess whether answer selection methods fully capture the benefits of multilingual reasoning, and the table highlights a significant discrepancy between Acc@4 and Vote@4 for multilingual approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Answer selection is challenging and critical for effective Multilingual reasoning. Comparison of Acc@4 and Vote@4 with the best (Best Combo) and random 4-combinations (Random Combo) out of 17 languages/candidates with respect to Acc@4, for each model under different settings on the human-translated (Multilingual-h) and machine-translated (Multilingual-m) GPQA datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">LC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">EA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">QT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.6.1">Acc@4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.7.1">Vote@4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.1" rowspan="8"><span class="ltx_text" id="S4.T3.1.1.2.1.1"><span class="ltx_text" id="S4.T3.1.1.2.1.1.1"></span> <span class="ltx_text" id="S4.T3.1.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.2.1.1.2.1">
<span class="ltx_tr" id="S4.T3.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.2.1.1.2.1.1.1">Qwen2.5-</span></span>
<span class="ltx_tr" id="S4.T3.1.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.2.1.1.2.1.2.1">72B</span></span>
</span></span> <span class="ltx_text" id="S4.T3.1.1.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.5">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.6">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.7.1">53.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.3.4">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.5.1">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.6">52.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.5">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.6">48.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.5.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.6">51.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.6.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.6">53.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.5">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.6">50.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.8.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.5">61.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.8.6">52.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.9.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.5">62.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.6">52.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.10.1" rowspan="8"><span class="ltx_text" id="S4.T3.1.1.10.1.1"><span class="ltx_text" id="S4.T3.1.1.10.1.1.1"></span> <span class="ltx_text" id="S4.T3.1.1.10.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.10.1.1.2.1">
<span class="ltx_tr" id="S4.T3.1.1.10.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.10.1.1.2.1.1.1">LLaMA3.1-</span></span>
<span class="ltx_tr" id="S4.T3.1.1.10.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.10.1.1.2.1.2.1">70B</span></span>
</span></span> <span class="ltx_text" id="S4.T3.1.1.10.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.10.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.10.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.10.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.10.5">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.10.6">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.10.7">49.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.11.4">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.5.1">68.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.6.1">51.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.5">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.12.6">46.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.13">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.13.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.5">61.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.13.6">47.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.14">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.14.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.5">65.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.14.6">50.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.15">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.15.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.5">62.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.15.6">46.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.16">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.16.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.5">63.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.16.6">50.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.17">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.17.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.5">65.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.17.6">49.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.1.1.18.1" rowspan="8"><span class="ltx_text" id="S4.T3.1.1.18.1.1"><span class="ltx_text" id="S4.T3.1.1.18.1.1.1"></span> <span class="ltx_text" id="S4.T3.1.1.18.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.18.1.1.2.1">
<span class="ltx_tr" id="S4.T3.1.1.18.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.18.1.1.2.1.1.1">R1-Distill-</span></span>
<span class="ltx_tr" id="S4.T3.1.1.18.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.18.1.1.2.1.2.1">LLaMA-70B</span></span>
</span></span> <span class="ltx_text" id="S4.T3.1.1.18.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.18.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.18.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.18.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.18.5">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.18.6">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.18.7">62.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.19">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.19.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.19.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.19.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.19.4">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.19.5">71.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.19.6">59.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.20">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.20.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.20.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.20.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.20.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.20.5">75.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.20.6">64.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.21">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.21.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.5">73.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.21.6">59.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.22">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.22.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.5">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.22.6">58.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.23">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.23.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.23.5.1">76.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.23.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.23.6.1">66.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.24">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.24.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.24.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.24.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.24.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.24.5">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.24.6">56.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.25">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.25.1">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.25.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.25.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.1.25.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.25.5">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.25.6">57.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different prompt-based strategies for answer selection in the context of multilingual reasoning.  It contrasts the performance (measured by Acc@4 and Vote@4) of three prompt engineering techniques: Language Constraint (LC), English Allowance (EA), and Question Translation (QT).  The results are compared against baseline approaches using random combinations of answers from the Repeat and Paraphrase methods. The goal is to investigate the effectiveness of each method and whether self-translation within the prompts significantly improves the multilingual reasoning capabilities of the Language Model.  All results are based on the English GPQA dataset.
> <details>
> <summary>read the caption</summary>
> Table 3: Different prompt-based settings show little performance difference, and self-translation is not the key setting. Acc@4 and Vote@4 of prompt-based selection methods, compared with the random-4 performances of Repeat and Paraphrase on the English GPQA dataset. LC, EA and QT stand for Language Constraint, English Allowance and Question Translation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1">Setting</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.1">Acc@4*</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.1">Vote@4*</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.1">Judge@4*</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.1" rowspan="4"><span class="ltx_text" id="S4.T4.1.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.2.1.1.1">
<span class="ltx_tr" id="S4.T4.1.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.2.1.1.1.1.1">Qwen2.5-</span></span>
<span class="ltx_tr" id="S4.T4.1.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.2.1.1.1.2.1">72B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.3">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.4">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.5">48.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2">63.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.3.1">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.4.1">50.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.4.2.1">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3">53.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4">48.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.2">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.3">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4">46.4</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.6.1" rowspan="4"><span class="ltx_text" id="S4.T4.1.6.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.6.1.1.1">
<span class="ltx_tr" id="S4.T4.1.6.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.6.1.1.1.1.1">LLaMA3.1-</span></span>
<span class="ltx_tr" id="S4.T4.1.6.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.6.1.1.1.2.1">70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.3">62.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.4">50.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.5.1">47.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7">
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.2">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.3">49.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.4">46.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.2">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.3">50.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.4">39.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9">
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.9.2.1">67.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.9.3.1">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.4">41.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.10.1" rowspan="4"><span class="ltx_text" id="S4.T4.1.10.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.10.1.1.1">
<span class="ltx_tr" id="S4.T4.1.10.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.10.1.1.1.1.1">R1-Distill-</span></span>
<span class="ltx_tr" id="S4.T4.1.10.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.10.1.1.1.2.1">LLaMA-70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.2">Repeat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.3">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.4">57.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.5">57.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11">
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.1">Paraphrase</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.2">71.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.3">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.4">58.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12">
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.1">Multilingual-h</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.12.2.1">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.3">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.4">60.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.1">Multilingual-m</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.2">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.13.3.1">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.13.4.1">62.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of different answer selection methods (Repeat, Paraphrase, Multilingual, Multilingual with human translations, Multilingual with machine translations) using the LLM-as-a-judge approach on the GPQA dataset.  It shows that only the R1-Distill-LLaMA-70B model exhibits a clear Multilingual advantage with this method. For other models, the benefits of multilingualism are less pronounced or even absent, suggesting that the LLM-as-a-judge method may not be ideal for harnessing the full potential of multilingual reasoning. The reduced number of runs (4) for this table, compared to previous tables, reflects the cost of using the LLM-as-a-judge selection approach.
> <details>
> <summary>read the caption</summary>
> Table 4: LLM-as-a-judge exhibits Multilingual advantage only with R1-Distill-LLaMA-70B, which is not satisfactory. LLM-as-a-judge performance on the human-translated (Multilingual-h) and machine-translated (Multilingual-m) GPQA datasets. The asterisks(*) indicate that we only include 4 runs in each setting, using the best language combination for the dataset due to the cost of LLM judging, so the results are different from those in the previous tables.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1">
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.2.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1.1.1.1">Combo</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1.2.1.1">Lang</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.3.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1.1.1.1">Easy</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1.2.1.1">Undergrad</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.4.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.4.1.1.1.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.4.1.2.1.1">Undergrad</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.5.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.5.1.1.1.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.5.1.2.1.1">Grad</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.1.6">
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.6.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.6.1.1.1.1">Post-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.6.1.2.1.1">Grad</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.1.1.2.1" rowspan="4"><span class="ltx_text" id="S5.T5.1.1.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.2.1.1.1">
<span class="ltx_tr" id="S5.T5.1.1.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.2.1.1.1.1.1">Qwen2.5-</span></span>
<span class="ltx_tr" id="S5.T5.1.1.2.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.2.1.1.1.2.1">72B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2">en</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.3">47.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.4.1">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.5">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.6.1">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.1">es</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.2.1">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.3">44.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.4.1">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.3.5">38.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.1">ja</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.2">47.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.3">46.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.4">41.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.4.5">35.3</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.1">th</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.2">47.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.3">41.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.4">39.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5">32.4</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.1.1.6.1" rowspan="4"><span class="ltx_text" id="S5.T5.1.1.6.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.6.1.1.1">
<span class="ltx_tr" id="S5.T5.1.1.6.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.6.1.1.1.1.1">LLaMA3.1-</span></span>
<span class="ltx_tr" id="S5.T5.1.1.6.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.6.1.1.1.2.1">70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6.2">fr</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.3.1">47.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.4.1">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.5.1">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.6.6">35.3</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.1">ko</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.2">23.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.3">39.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.4">37.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.7.5.1">38.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.8">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.1">sw</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.8.2.1">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.3">31.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.4">30.1</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.5">35.3</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.9">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.1">vi</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.9.2.1">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.3">38.6</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.4">39.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.9.5.1">38.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.1.1.10.1" rowspan="4"><span class="ltx_text" id="S5.T5.1.1.10.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.10.1.1.1">
<span class="ltx_tr" id="S5.T5.1.1.10.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.10.1.1.1.1.1">R1-Distill-</span></span>
<span class="ltx_tr" id="S5.T5.1.1.10.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.10.1.1.1.2.1">LLaMA-70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.10.2">ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.10.3">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.10.4">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.10.5">48.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.10.6">41.2</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.11">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.11.1">es</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.11.2">66.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.11.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.11.3.1">58.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.11.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.11.4.1">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.11.5.1">58.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.12">
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.1">ko</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.12.2.1">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.3">54.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.4">47.7</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.5">50.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.13.1">sr</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.13.2">57.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.13.3">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.13.4">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.13.5">35.3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of different languages on the Graduate-level Google-Proof Q&A (GPQA) dataset, categorized by question difficulty levels (Easy, Hard Undergraduate, Hard Post-Undergraduate, and Hard Graduate).  The languages included are those from the best-performing combinations in the multilingual experiments. The data shows how certain languages perform better on specific difficulty levels, suggesting a correlation between language and question difficulty. Each difficulty level might have one or more languages with better performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Languages to some extent match difficulty levels. Per-language accuracies across difficulty levels on the human-translated GPQA dataset, where the languages are from the best-performing combinations (Combo Lang). Each difficulty has one or more advantage languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.2.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1.1.1.1">Combo</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.2.1.2.1.1">Lang</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the key languages that contribute most to the accuracy of each model (Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B) on two reasoning tasks (GPQA and MGSM).  The 'key advantage languages' were identified using a method called minority-majority overlap. This approach filters languages based on their accuracy in answering questions that were correctly answered by either only a few languages or a large majority of languages.  The table highlights that specific languages are consistently strong performers across different models, suggesting some languages might be inherently better suited for specific reasoning tasks.  The presence of cross-model overlap in key advantage languages further supports this observation.
> <details>
> <summary>read the caption</summary>
> Table 6: Each model has key advantage languages that often compensate for errors in other languages in the two tasks, and there is cross-model overlap. Key advantage languages (Advantage Langs) found by minority-majority overlap that filters language leading accuracy on questions correctly answered by a few or many tested languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.3.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1.1.1.1">Easy</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.3.1.2.1.1">Undergrad</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments using prompt-based answer selection methods on a multilingual question answering task.  It shows the tendency of language models to favor specific languages (often English or a single high-resource language) over others when given different prompt constraints, despite the availability of many languages in the dataset. The chosen rates of English and the most frequently chosen non-English language are presented for each model and setting, highlighting a bias towards a limited subset of languages.
> <details>
> <summary>read the caption</summary>
> Table 7: With prompt-based answer selection, models have a strong tendency to choose 1-2 certain languages instead of all others. Chosen rates of English and the highest non-English language, with the prompt-based answer selection methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.4.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.4.1.1.1.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.4.1.2.1.1">Undergrad</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of using an LLM-as-a-judge method for answer selection in multilingual reasoning tasks. It shows the rates at which each language was chosen by the judge model, broken down into whether the chosen answer was correct or incorrect. The key finding is that most models exhibit a bias towards choosing certain languages regardless of answer accuracy.  Only the R1-Distill-LLaMA model consistently favored the correct answers across all the tested languages. The languages analyzed are the ones yielding the best performance in earlier experiments.
> <details>
> <summary>read the caption</summary>
> Table 8: With LLM-as-a-judge answer selection, the models care more for the language instead of the correctness of the answer, and only R1-Distill-LLaMA revealed steady preference of the correct answers in all the judged languages. Language chosen rates in Multilingual LLM-as-a-judge answer selection, where P⁢(Chosen|Correct)𝑃conditionalChosenCorrectP(\mathrm{Chosen}|\mathrm{Correct})italic_P ( roman_Chosen | roman_Correct ) refers to the chosen rate of this language when its answer is correct, and P⁢(Chosen|Incorrect)𝑃conditionalChosenIncorrectP(\mathrm{Chosen}|\mathrm{Incorrect})italic_P ( roman_Chosen | roman_Incorrect ) when the answer is incorrect. The tested languages are from the best-performing combinations in the experiments in §4.3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.5.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.5.1.1.1.1">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.5.1.2.1.1">Grad</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt templates used in the experiments for both the GPQA and MGSM tasks. It shows the system prompts and user prompts used in different experimental settings, such as default, prompt-based selection with and without translation.  For each setting, it specifies the instructions given to the language model to guide its reasoning process.
> <details>
> <summary>read the caption</summary>
> Table 9: The prompt template we used in experiments for each task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.1.6.1">
<tr class="ltx_tr" id="S5.T5.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.6.1.1.1.1">Post-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.6.1.2.1.1">Grad</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Repeat method applied to the MGSM (Mathematical and Scientific Generalization and Mixture) task.  It shows the accuracy (Acc), accuracy at k (Acc@k), and majority voting accuracy at k (Major@k) for different settings (best, worst, and random) across three leading large language models: Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B.  The results help quantify the impact of simply repeating the input on reasoning performance across models.
> <details>
> <summary>read the caption</summary>
> Table 10: The results of the Repeat method on the MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.1.1">
<tr class="ltx_tr" id="S5.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.1.3.1">Advantage Langs</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.2">
<td class="ltx_td ltx_border_t" id="S5.T6.1.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.2">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.2.3">ja,en,<span class="ltx_text" id="S5.T6.1.1.2.3.1" style="color:#34C724;">fr</span>,hu</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.3">
<td class="ltx_td" id="S5.T6.1.1.3.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.2">LLaMA3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.3.3">hu,en,<span class="ltx_text" id="S5.T6.1.1.3.3.1" style="color:#34C724;">fr</span>,ru,de</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.4">
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.1"><span class="ltx_text" id="S5.T6.1.1.4.1.1">GPQA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.2">R1-Distill-LLaMA-70B</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.4.3">es,vi,cs,<span class="ltx_text" id="S5.T6.1.1.4.3.1" style="color:#34C724;">fr</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.5">
<td class="ltx_td ltx_border_t" id="S5.T6.1.1.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.5.2">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.1.5.3">
<span class="ltx_text" id="S5.T6.1.1.5.3.1" style="color:#34C724;">ko</span>,ar,es,<span class="ltx_text" id="S5.T6.1.1.5.3.2" style="color:#34C724;">en</span>,sr,vi,hu</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.6">
<td class="ltx_td" id="S5.T6.1.1.6.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.2">LLaMA3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.1.6.3">ru,<span class="ltx_text" id="S5.T6.1.1.6.3.1" style="color:#34C724;">ko</span>,<span class="ltx_text" id="S5.T6.1.1.6.3.2" style="color:#34C724;">en</span>,es,vi,de</td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.7.1"><span class="ltx_text" id="S5.T6.1.1.7.1.1">MGSM</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.7.2">R1-Distill-LLaMA-70B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.1.7.3">sr,ar,<span class="ltx_text" id="S5.T6.1.1.7.3.1" style="color:#34C724;">ko</span>,<span class="ltx_text" id="S5.T6.1.1.7.3.2" style="color:#34C724;">en</span>,cs,hu</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Paraphrase method on the MGSM (Mathematical and Scientific Generalization and Mathematical problem solving) task.  It shows the accuracy (Acc), accuracy at k (Acc@4), and majority voting accuracy (Major@4) achieved by three different large language models (LLMs): Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B. For each LLM, results are shown for the best, worst, and randomly selected paraphrased versions of the input questions. The table allows comparison of the performance of each model using different paraphrases of the input questions.
> <details>
> <summary>read the caption</summary>
> Table 11: The results of the Paraphrase method on the MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.1">
<tr class="ltx_tr" id="S5.T7.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T7.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.2.1">LC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1">EA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T7.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.4.1">QT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.5.1">En</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.6">
<span class="ltx_text" id="S5.T7.1.1.6.1"></span> <span class="ltx_text" id="S5.T7.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T7.1.1.6.2.1">
<span class="ltx_tr" id="S5.T7.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T7.1.1.6.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.2.1.1.1.1">Max</span></span></span>
<span class="ltx_tr" id="S5.T7.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T7.1.1.6.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.6.2.1.2.1.1">Non-En</span></span></span>
</span></span><span class="ltx_text" id="S5.T7.1.1.6.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.2.1" rowspan="6"><span class="ltx_text" id="S5.T7.1.2.1.1">Qwen2.5-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.2.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.5">4.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.6">45.5</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.3">
<td class="ltx_td ltx_align_center" id="S5.T7.1.3.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.3.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.3.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.3.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.4">
<td class="ltx_td ltx_align_center" id="S5.T7.1.4.1">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.4.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.4.4">99.7</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.4.5">0.3</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.5">
<td class="ltx_td ltx_align_center" id="S5.T7.1.5.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.5.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.5.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.5.4">62.1</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.5.5">17.2</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.6">
<td class="ltx_td ltx_align_center" id="S5.T7.1.6.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.6.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.6.4">99.8</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.6.5">0.2</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.7">
<td class="ltx_td ltx_align_center" id="S5.T7.1.7.1">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.7.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.7.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.7.4">99.8</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.7.5">0.2</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.8.1" rowspan="6"><span class="ltx_text" id="S5.T7.1.8.1.1">LLaMA3.1-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.8.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.8.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.8.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.8.5">1.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.8.6">83.4</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.9">
<td class="ltx_td ltx_align_center" id="S5.T7.1.9.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.9.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.9.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.9.4">46.5</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.9.5">53.3</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.10">
<td class="ltx_td ltx_align_center" id="S5.T7.1.10.1">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.10.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.10.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.10.4">99.7</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.10.5">0.2</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.11">
<td class="ltx_td ltx_align_center" id="S5.T7.1.11.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.11.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.11.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.11.4">25.6</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.11.5">52.5</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.12">
<td class="ltx_td ltx_align_center" id="S5.T7.1.12.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.12.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.12.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.12.4">85.6</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.12.5">14.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.13">
<td class="ltx_td ltx_align_center" id="S5.T7.1.13.1">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.13.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.13.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.13.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.13.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T7.1.14.1" rowspan="6"><span class="ltx_text" id="S5.T7.1.14.1.1">R1-Distill-LLaMA-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.14.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.14.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T7.1.14.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.14.5">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.14.6">0.0</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.15">
<td class="ltx_td ltx_align_center" id="S5.T7.1.15.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.15.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.15.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.15.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.15.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.16">
<td class="ltx_td ltx_align_center" id="S5.T7.1.16.1">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.16.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.16.3">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.16.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.16.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.17">
<td class="ltx_td ltx_align_center" id="S5.T7.1.17.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.17.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.17.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.17.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.17.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.18">
<td class="ltx_td ltx_align_center" id="S5.T7.1.18.1">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.18.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T7.1.18.3">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.18.4">99.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.1.18.5">0.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.19">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.19.1">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.19.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T7.1.19.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.19.4">99.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.19.5">0.1</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Multilingual method on the MGSM (Mathematical and Scientific Generalization and Mathematical Synthesis) task.  For the Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B language models, it shows the accuracy (Acc), accuracy at k (Acc@4), and majority voting accuracy (Major@4) achieved using four different languages, comparing the best performing combination, the worst performing combination, and a random selection of languages.  The table illustrates the impact of multilingualism on reasoning performance for a specific mathematical reasoning task.
> <details>
> <summary>read the caption</summary>
> Table 12: The results of the Multilingual method on the MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.4.4">
<tr class="ltx_tr" id="S5.T8.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T8.4.4.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T8.4.4.5.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_tt" colspan="3" id="S5.T8.4.4.5.2"><span class="ltx_text ltx_font_bold" id="S5.T8.4.4.5.2.1">Human-Translated Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T8.4.4.5.3"><span class="ltx_text ltx_font_bold" id="S5.T8.4.4.5.3.1">Machine-Translated Dataset</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S5.T8.4.4.4.5.1">Lang</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.1.1.1.1">
<table class="ltx_tabular ltx_align_middle" id="S5.T8.1.1.1.1.1">
<tr class="ltx_tr" id="S5.T8.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.1.1.1.1.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})" class="ltx_Math" display="inline" id="S5.T8.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.1.1.1.1.m1.1a"><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.2" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3a.cmml">Correct</mtext></mrow><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.1.1.1.1.m1.1b"><apply id="S5.T8.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1"><times id="S5.T8.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.2"></times><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3">Correct</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.1.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.1.1.1.1.m1.1d">P ( Chosen | Correct )</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.2.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="S5.T8.2.2.2.2.1">
<tr class="ltx_tr" id="S5.T8.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.2.2.2.2.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})" class="ltx_Math" display="inline" id="S5.T8.2.2.2.2.1.1.1.m1.1"><semantics id="S5.T8.2.2.2.2.1.1.1.m1.1a"><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.2" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3a.cmml">Incorrect</mtext></mrow><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.2.1.1.1.m1.1b"><apply id="S5.T8.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1"><times id="S5.T8.2.2.2.2.1.1.1.m1.1.1.2.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.2"></times><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3">Incorrect</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.2.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.2.1.1.1.m1.1d">P ( Chosen | Incorrect )</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.6"><span class="ltx_text ltx_font_bold" id="S5.T8.4.4.4.6.1">Lang</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.3.3.3.3">
<table class="ltx_tabular ltx_align_middle" id="S5.T8.3.3.3.3.1">
<tr class="ltx_tr" id="S5.T8.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.3.3.3.3.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})" class="ltx_Math" display="inline" id="S5.T8.3.3.3.3.1.1.1.m1.1"><semantics id="S5.T8.3.3.3.3.1.1.1.m1.1a"><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.2" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3a.cmml">Correct</mtext></mrow><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.3.1.1.1.m1.1b"><apply id="S5.T8.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1"><times id="S5.T8.3.3.3.3.1.1.1.m1.1.1.2.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.2"></times><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3">Correct</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.3.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.3.1.1.1.m1.1d">P ( Chosen | Correct )</annotation></semantics></math></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.4">
<table class="ltx_tabular ltx_align_middle" id="S5.T8.4.4.4.4.1">
<tr class="ltx_tr" id="S5.T8.4.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.4.4.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})" class="ltx_Math" display="inline" id="S5.T8.4.4.4.4.1.1.1.m1.1"><semantics id="S5.T8.4.4.4.4.1.1.1.m1.1a"><mrow id="S5.T8.4.4.4.4.1.1.1.m1.1.1" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.3" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.4.4.4.4.1.1.1.m1.1.1.2" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3a.cmml">Incorrect</mtext></mrow><mo id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.4.4.4.4.1.1.1.m1.1b"><apply id="S5.T8.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1"><times id="S5.T8.4.4.4.4.1.1.1.m1.1.1.2.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.2"></times><ci id="S5.T8.4.4.4.4.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.3.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.4.4.4.4.1.1.1.m1.1.1.1.1.1.3">Incorrect</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.4.4.4.4.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.4.4.4.4.1.1.1.m1.1d">P ( Chosen | Incorrect )</annotation></semantics></math></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.4.4.6.1" rowspan="4"><span class="ltx_text" id="S5.T8.4.4.6.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T8.4.4.6.1.1.1">
<span class="ltx_tr" id="S5.T8.4.4.6.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.6.1.1.1.1.1">Qwen2.5-</span></span>
<span class="ltx_tr" id="S5.T8.4.4.6.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.6.1.1.1.2.1">72B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.6.2">en</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.6.3">42.3</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T8.4.4.6.4">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.6.5">ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.6.6">6.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.6.7">8.1</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.7">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.7.1">es</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.7.2">37.8</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.7.3">32.4</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.7.4">de</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.7.5">36.2</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.7.6">36.5</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.8">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.8.1">ja</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.8.2">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.8.3">15.1</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.8.4">ja</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.8.5">22.0</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.8.6">17.0</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.9">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.9.1">th</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.9.2">7.4</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.9.3">6.2</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.9.4">zh</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.9.5">42.9</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.9.6">32.2</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.4.4.10.1" rowspan="4"><span class="ltx_text" id="S5.T8.4.4.10.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T8.4.4.10.1.1.1">
<span class="ltx_tr" id="S5.T8.4.4.10.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.10.1.1.1.1.1">LLaMA3.1-</span></span>
<span class="ltx_tr" id="S5.T8.4.4.10.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.10.1.1.1.2.1">70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.10.2">fr</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.10.3">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T8.4.4.10.4">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.10.5">de</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.10.6">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.10.7">21.5</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.11">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.11.1">ko</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.11.2">27.6</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.11.3">26.6</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.11.4">en</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.11.5">54.3</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.11.6">45.4</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.12">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.12.1">sw</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.12.2">10.8</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.12.3">15.0</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.12.4">hu</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.12.5">10.8</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.12.6">13.6</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.13">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.13.1">vi</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.13.2">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.13.3">19.7</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.13.4">ru</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.13.5">17.4</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.13.6">17.4</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T8.4.4.14.1" rowspan="4"><span class="ltx_text" id="S5.T8.4.4.14.1.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T8.4.4.14.1.1.1">
<span class="ltx_tr" id="S5.T8.4.4.14.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.14.1.1.1.1.1">R1-Distill-</span></span>
<span class="ltx_tr" id="S5.T8.4.4.14.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.4.4.14.1.1.1.2.1">LLaMA-70B</span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.14.2">ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.14.3">17.2</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S5.T8.4.4.14.4">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.14.5">ar</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.14.6">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.14.7">8.2</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.15">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.15.1">es</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.15.2">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.15.3">40.0</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.15.4">es</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.15.5">37.7</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.15.6">32.6</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.16">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.16.1">ko</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.16.2">28.7</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S5.T8.4.4.16.3">23.2</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.16.4">ru</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.16.5">26.5</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.16.6">13.7</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.17">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.17.1">sr</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.17.2">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S5.T8.4.4.17.3">8.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.17.4">vi</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.17.5">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T8.4.4.17.6">26.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Repeat-Mix method applied to the MGSM (Mathematical and Scientific Generalization and Modeling) task.  Repeat-Mix combines elements of the Repeat and Multilingual methods, utilizing a 50/50 proportion of both. The table displays performance metrics for three leading Large Language Models (LLMs): Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B. For each model, the table showcases the results from the best performing language combination, the worst combination, and a random selection of languages. Performance is assessed using accuracy (Acc), accuracy at k (Acc@k), and majority voting accuracy at k (Major@k). This provides insights into the robustness and potential benefits of combining multilingual and repeated input strategies for improved reasoning performance.
> <details>
> <summary>read the caption</summary>
> Table 13: The results of the Repeat-Mix method on the MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.1.1.1.1.1">
<tr class="ltx_tr" id="S5.T8.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.1.1.1.1.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})" class="ltx_Math" display="inline" id="S5.T8.1.1.1.1.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.1.1.1.1.m1.1a"><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.2" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3a.cmml">Correct</mtext></mrow><mo id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.1.1.1.1.m1.1b"><apply id="S5.T8.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1"><times id="S5.T8.1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.2"></times><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.1.1.1.1.1.1.1.m1.1.1.1.1.1.3">Correct</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.1.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.1.1.1.1.m1.1d">P ( Chosen | Correct )</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 14 presents the results of the Paraphrase-Mix method applied to the MGSM (Mathematical and Scientific Generalization and Mathematical Reasoning) task. The Paraphrase-Mix method combines the Paraphrase and Multilingual approaches, using a 50/50 proportion. The table shows the accuracy (Acc), accuracy at k (Acc@4), and majority voting accuracy (Major@4) for three different models (Qwen2.5-72B, LLaMA3.1-70B, and R1-Distill-LLaMA-70B) across various language combinations. The 'Best', 'Worst', and 'Random' combinations represent the optimal, worst, and randomly selected language combinations from a total of 17 languages, respectively.
> <details>
> <summary>read the caption</summary>
> Table 14: The results of the Paraphrase-Mix method on the MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.2.2.2.2.1">
<tr class="ltx_tr" id="S5.T8.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.2.2.2.2.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})" class="ltx_Math" display="inline" id="S5.T8.2.2.2.2.1.1.1.m1.1"><semantics id="S5.T8.2.2.2.2.1.1.1.m1.1a"><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.2" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3a.cmml">Incorrect</mtext></mrow><mo id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.2.1.1.1.m1.1b"><apply id="S5.T8.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1"><times id="S5.T8.2.2.2.2.1.1.1.m1.1.1.2.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.2"></times><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.3.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.2.2.2.2.1.1.1.m1.1.1.1.1.1.3">Incorrect</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.2.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Incorrect}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.2.1.1.1.m1.1d">P ( Chosen | Incorrect )</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results obtained using the Multilingual method on the Google-translated MGSM (Mathematical and Scientific Generalization and Mathematical problem Solving) dataset.  It shows the accuracy (Acc), accuracy at k (Acc@4), and majority accuracy at k (Major@4) achieved by different language combinations across three different large language models (LLMs). The results highlight the performance variations depending on the selection of languages for multilingual reasoning in the MGSM task, using Google-translated questions.
> <details>
> <summary>read the caption</summary>
> Table 15: The results of the Multilingual method on the Google translated MGSM task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.3.3.3.3.1">
<tr class="ltx_tr" id="S5.T8.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T8.3.3.3.3.1.1.1"><math alttext="\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})" class="ltx_Math" display="inline" id="S5.T8.3.3.3.3.1.1.1.m1.1"><semantics id="S5.T8.3.3.3.3.1.1.1.m1.1a"><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3a.cmml">P</mtext><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.2" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml"><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.2" stretchy="false" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2a.cmml">Chosen</mtext><mo fence="false" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1.cmml">|</mo><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3a.cmml">Correct</mtext></mrow><mo id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.3" stretchy="false" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.3.1.1.1.m1.1b"><apply id="S5.T8.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1"><times id="S5.T8.3.3.3.3.1.1.1.m1.1.1.2.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.2"></times><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.3.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.3">P</mtext></ci><apply id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.1">conditional</csymbol><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.2">Chosen</mtext></ci><ci id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3a.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3.cmml" xref="S5.T8.3.3.3.3.1.1.1.m1.1.1.1.1.1.3">Correct</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.3.1.1.1.m1.1c">\textbf{P}(\mathrm{\textbf{Chosen}}|\mathrm{\textbf{Correct}})</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.3.1.1.1.m1.1d">P ( Chosen | Correct )</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of three large language models (LLMs) using the LLM-as-a-judge method on the MGSM (Mathematical and Scientific Generalization and Synthesis) dataset.  The LLM-as-a-judge approach involves using an LLM to compare and select the best answer from multiple candidate answers.  The table shows the accuracy (Acc@k), majority voting accuracy (Major@k), and LLM-judge accuracy (Judge@k) for each model under different settings: Repeat, Paraphrase and Multilingual (using specific languages for multilingual settings). The results help to assess the effectiveness of different answer selection methods in multilingual reasoning.
> <details>
> <summary>read the caption</summary>
> Table 16: LLM-as-a-judge performance on MGSM dataset
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11833/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11833/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}