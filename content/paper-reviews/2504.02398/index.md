---
title: "Scaling Analysis of Interleaved Speech-Text Language Models"
summary: "Interleaved Speech-Text Language Models scale more efficiently than textless ones!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Speech Recognition", "🏢 Hebrew University of Jerusalem",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02398 {{< /keyword >}}
{{< keyword icon="writer" >}} Gallil Maimon et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02398" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02398" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02398/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing Speech Language Model (SLM) scaling analysis paints a bleak picture, leading some to question the feasibility of training high-quality SLMs. However, modern SLMs are often initialised from pre-trained TextLMs using speech-text interleaving to allow knowledge transfer. This raises the question if interleaved SLMs scale more efficiently than textless SLMs. Despite the great results, the scaling properties of such training paradigms remains unclear.



In this paper the authors conduct scaling analysis of interleaved SLMs by training several dozen and analysing the scaling trends. The results indicate that the scaling-dynamics are significantly different than textless-SLMs, suggesting one should allocate notably more of the compute budget for increasing model size over training tokens. Results suggest, that the scaled up model achieves comparable performance with leading models on speech semantic metrics while using less compute and data than other approaches. We open source models, samples, and data - https://pages.cs.huji.ac.il/adiyoss-lab/sims/.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Interleaved SLMs scale more efficiently with compute than textless SLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Scaling dynamics of interleaved SLMs differ significantly from textless SLMs, requiring more compute for model size. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} High-quality TextLMs with synthetic data can optimize scaling capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers **scaling analysis for interleaved SLMs**, crucial for optimizing compute allocation. It challenges textless-SLM scaling laws, suggesting distinct scaling dynamics. The opensource models and data foster further research, accelerating progress in efficient and high-quality SLM development.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02398/x1.png)

> 🔼 This figure displays a scaling analysis of interleaved speech language models (SLMs) by comparing the best performing model for each compute budget.  The graphs illustrate how various metrics (such as cross-entropy loss and semantic speech evaluation scores) change as the compute budget (measured in FLOPs) increases. Different colored lines represent different model families or training approaches.  The key finding is that interleaved SLMs scale more efficiently with compute than textless SLMs (as reported by Cuervo & Marxer (2024)), which is a significant improvement.
> <details>
> <summary>read the caption</summary>
> Figure 1: Analysing metric scaling of interleaved SLMs, considering the best model per-compute. We compare scaling trends to textless SLMs (Cuervo & Marxer, 2024). \gmFont maybe still a touch small?
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S3.T1.6.7.1.1">Training Data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="S3.T1.6.7.1.2">Metric</th>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S3.T1.6.6.7">Real</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.6.6.8">Syn.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.1.1.1">sBLIMP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.2.2.2">sSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.3.3.3">MS_sSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.4.4.4">tSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.5.5.5">MS_tSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.6.6.6">Val. CE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.6.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.8.1.1">✓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.6.8.1.2">✗</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.3">56.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.4">54.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.5">52.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.6">72.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.7">78.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.8.1.8"><span class="ltx_text ltx_font_bold" id="S3.T1.6.8.1.8.1">1.96129</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.9.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.9.2.1">✗</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.6.9.2.2">✓</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.3">52.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.4"><span class="ltx_text ltx_font_bold" id="S3.T1.6.9.2.4.1">61.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.5">54.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.6">81.24</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.7">72.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.9.2.8">3.44569</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.10.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.10.3.1">✓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.6.10.3.2">✓</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.6.10.3.3.1">56.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.4">59.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.6.10.3.5.1">54.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.6.10.3.6.1">81.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.6.10.3.7.1">81.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.10.3.8">1.98267</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment evaluating the impact of using synthetic data in training an interleaved speech-text language model.  The model used was a Qwen2.5-0.5B architecture. The experiment compared models trained with only real speech data, only synthetic speech data, and a combination of both.  The performance is measured using several metrics to assess both grammatical and semantic abilities of the model.
> <details>
> <summary>read the caption</summary>
> Table 1: Analysing impact of training with/without synthetic data on SLM performance, by training an interleaved Qwen2.5-0.5B based model.
> </details>





### In-depth insights


#### SLM Scaling++
**SLM Scaling++** could denote an advanced or improved methodology for scaling Speech Language Models (SLMs). This might involve novel techniques to enhance the efficiency of scaling, potentially addressing limitations of existing methods. The '++' suggests improvements in data utilization, compute allocation, or architectural design. It could also signify a focus on robustness across diverse speech patterns or a refined approach to handling the complexities of speech data. Further research in this area might explore how to optimize SLM performance with limited resources or achieve superior results compared to traditional scaling methods.

#### Interleaving Gain
**Interleaving gain** refers to the performance boost achieved by training speech language models (SLMs) with a mix of speech and text data. Research indicates that interleaved SLMs scale more efficiently with compute, outperforming textless SLMs. This gain arises because text data provides semantic context, while speech data grounds the model in acoustic reality. The optimal balance between model size and training tokens shifts, with more compute allocated to increasing model size.  TWIST initialisation and the selection of good base model for interleaving, is very important to achieve the benefit out of it. Synthetic data, particularly when combined with real speech data, further enhances interleaving gain, but careful evaluation across diverse speakers is crucial for avoiding biases. Overall, interleaving is a promising strategy for creating high-quality SLMs with existing resources. Also, the quality of text-based base LM is very important.

#### SIMS Analysis
The "SIMS Analysis" section likely delves into the core findings of the paper, focusing on the scaling behavior of interleaved speech-text language models (SLMs). **It probably showcases how performance metrics evolve with increasing compute resources, model sizes, and training data.** This section probably involves a detailed comparison between interleaved SLMs and textless-SLMs, highlighting the superior scaling efficiency of the former. **The analysis likely investigates the impact of factors like TextLM initialization, synthetic data usage, and model families on overall performance.** It may also explore the optimal allocation of compute budget between model parameters and training tokens, aiming to maximize the semantic abilities of the SLMs.

#### Model Selection
While the paper doesn't explicitly have a section titled "Model Selection", the research implicitly addresses it through experimentation and analysis. The authors explore different **TextLM families** (Qwen, Llama, etc.) to initialize their interleaved SLMs, empirically assessing their impact on performance. This systematic comparison reveals that not all model families are equal, highlighting the importance of careful selection. Furthermore, the exploration of **synthetic data integration** acts as a method for model selection, determining the optimal balance between real and synthetic data to improve generalization. Ultimately, the scaling analysis contributes to model selection by identifying the ideal model size for a given compute budget, guiding practitioners towards the most efficient allocation of resources. They suggest selecting a SLM which shows good performance in smaller scale models (0.5-1B), then using larger versions of the same model. The study advocates for prioritizing **high-quality TextLMs** for initialization and allocating a larger portion of the compute budget to model parameters rather than training tokens. This emphasis demonstrates a thoughtful consideration of model selection criteria beyond simply maximizing data quantity.

#### TTS Data Boost
The document explores the impact of synthetic data, specifically leveraging **Text-to-Speech (TTS) systems** to augment training datasets for Speech Language Models (SLMs). The core idea revolves around using TTS to generate speech audio from text corpora. The models trained solely on synthetic data perform well on metrics involving single speaker but show weakness during different speakers. Using a mixture of real and synthetic data can alleviate this, thus partially replacing real data with synthetic data. Also, **data diversity** is crucial. Validation loss may not accurately reflect semantic performance due to inherent biases. It supports the use of synthetic data by suggesting leveraging TTS-generated data and enhance SLM training. It is important to recognise that **evaluation should include a range of metrics**, particularly involving varied and previously unseen speakers.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02398/x2.png)

> 🔼 This figure compares the performance of several Speech Language Models (SLMs) trained for 20,000 steps using the same training recipe, but initialized from different pre-trained Text Language Models (TextLMs).  Each SLM's performance is evaluated using three metrics: Multi-speaker Spoken StoryCloze (MS-sSC), Multi-speaker Topic StoryCloze (MS-tSC), and validation cross-entropy. The models are ordered on the x-axis by the number of parameters (model size), from largest to smallest.  The y-axis shows the performance score for each metric.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparing SLMs trained with the same recipe for 20k steps, from different TextLM initialisations. Models are sorted by parameter count from large to small.
> </details>



![](https://arxiv.org/html/2504.02398/x3.png)

> 🔼 This figure compares the performance of three different types of speech language models (SLMs) based on the Qwen2.5-0.5B architecture. The three models are: (1) an interleaved SLM trained with TWIST initialization; (2) an interleaved SLM trained without TWIST initialization; and (3) a non-interleaved SLM (denoted GSLM).  The comparison is made across a range of training steps, showing the evolution of performance metrics (multi-speaker tSC and validation speech cross-entropy) over time. The purpose of this comparison is to analyze the impact of both interleaving and TWIST initialization on the scaling behavior of SLMs.  Additional performance metrics are available in Appendix 6 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparing SLMs based on Qwen2.5-0.5B with interleaving, without interleaving and without TWIST initialisation (denoted GSLM). This helps analyse the impact of these choices on performance and thus on scaling analysis. See Appendix 6 for other metrics.
> </details>



![](https://arxiv.org/html/2504.02398/x4.png)

> 🔼 This figure displays the results of an experiment comparing the performance of interleaved speech language models (SLMs) with varying model sizes and compute budgets.  The performance metric used is the validation loss on speech-only data.  The graph shows how the speech-only validation loss changes depending on both the model size (number of parameters) and the compute budget (in FLOPs). This analysis helps determine the optimal balance between model size and compute resources for achieving the lowest speech-only validation loss in interleaved SLMs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparing the loss on speech only of interleaved SLMs of different model sizes trained for specific compute budgets.
> </details>



![](https://arxiv.org/html/2504.02398/x5.png)

> 🔼 Figure 5 presents a comparison of the performance of three different language models trained using the OPT125M base model: one with both interleaving and TWIST initialization, one with only interleaving, and one trained without either technique. The results show that the benefits of interleaving and TWIST initialization, which were significant for the Qwen2.5-0.5B model (shown in Figure 3), are less pronounced for the OPT125M model.  Specifically, the performance differences between the three models are smaller with OPT125M.  The figure shows the multi-speaker tSC metric (semantic understanding) and validation speech cross-entropy plotted against training steps for each of the three models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparing SLMs based on OPT125M with interleaving, without interleaving and without TWIST initialisation. Comparing to the Figure 3, we can see that OPT125 benefits less from interleaving and TWIST initialisation compared to Qwen2.5-0.5B.
> </details>



![](https://arxiv.org/html/2504.02398/x6.png)

> 🔼 Figure 6 presents a comparison of three different training approaches for speech language models (SLMs) using the Qwen2.5-0.5B architecture. The three methods compared are: interleaved training with TWIST initialization, interleaved training without TWIST initialization, and speech-only training with TWIST initialization.  The figure displays the results for three different metrics: Multi-Speaker sSC, Multi-Speaker tSC, and validation speech cross-entropy, plotted against the number of training steps. The results show the impact of interleaving and TWIST initialization on SLM performance.  The results using the Multi-Speaker sSC and tSC metrics show more variance than Figure 3, which might be attributed to their closer proximity to randomness in the experimental setup.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparing SLMs based on Qwen2.5-0.5B with interleaving, without interleaving and without TWIST initialisation. This compliments Figure 3, yet results are a bit more noisy, perhaps because they are nearer to random.
> </details>



![](https://arxiv.org/html/2504.02398/x7.png)

> 🔼 Figure 7 displays the scaling behavior of interleaved speech language models (SLMs) using the multi-speaker Spoken StoryCloze (sSC) metric.  It complements Figure 4, which showed similar scaling analysis using a different metric (multi-speaker tSC).  The figure shows how well the models perform on the sSC metric as model size and compute budget are increased.  The results exhibit more noise than those in Figure 4, possibly because the sSC metric's values are closer together (less variance) compared to the tSC metric, making the trends less clear and more susceptible to random fluctuations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Analysing the scaling properties of interleaved SLMs regarding multi-speaker sSC. This compliments Figure 4, yet results are a bit more noisy, perhaps because they are nearer to random.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.2.2.3.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.2.3.1.2">Params</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T2.2.2.3.1.3">C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="S5.T2.2.2.3.1.4">Multi-Speaker sSC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S5.T2.2.2.3.1.5">Multi-Speaker tSC</th>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.4.2">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S5.T2.2.2.4.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.2.2.4.2.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r" id="S5.T2.2.2.4.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.4">S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.5">S→T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.6">T→S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.7">T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="S5.T2.2.2.4.2.8">Orig.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.9">S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.10">S→T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.11">T→S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.12">T</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.4.2.13">Orig.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T2.2.2.2.3">SpiritLM* (L2)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.4">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.2.2.5">7.5e21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.6.1">62.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.7.1">68.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.8"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.8.1">62.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.9">72.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.1.1.1.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mi id="S5.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S5.T2.1.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><emptyset id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.10"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.10.1">90.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.11"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.11.1">94.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.12"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.12.1">79.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.13"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.13.1">97.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mi id="S5.T2.2.2.2.2.m1.1.1" mathvariant="normal" xref="S5.T2.2.2.2.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><emptyset id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.5.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.2.5.1.1">SIMS (L3)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.2">3.2B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.5.1.3">5.9e19</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.4">58.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.5">66.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.6">60.56</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.7"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.5.1.7.1">73.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.5.1.8">74.40</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.9">86.22</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.10">90.37</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.5.1.11.1">76.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.5.1.12.1">96.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.5.1.13">95.88</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.6.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.2.6.2.1">SIMS (Q)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.2">1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.6.2.3">2e20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.4">55.80</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.5">60.73</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.6">58.28</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.7">66.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.6.2.8">71.78</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.9">83.87</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.10">76.91</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.11">71.73</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.12">92.73</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.6.2.13">95.88</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.7.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.2.7.3.1">SIMS (Q)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.2">3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.7.3.3">2e20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.4">57.00</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.5">61.38</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.6">58.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.7">65.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.7.3.8">73.86</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.9">85.36</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.10">75.16</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.11">71.11</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.12">88.88</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.7.3.13">97.22</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.8.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T2.2.2.8.4.1">SIMS (Q)</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.2">7.6B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.8.4.3">2e20</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.4">58.73</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.5">66.23</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.6">60.10</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.8.4.7.1">72.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.2.8.4.8">75.09</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.9">87.67</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.10">91.35</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.11">76.11</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.8.4.12.1">96.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.2.8.4.13">97.92</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2.9.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T2.2.2.9.5.1">SIMS (Q)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.2">7.6B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.2.9.5.3">6.86e20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.9.5.4.1">60.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.9.5.5.1">67.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.9.5.6.1">60.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.7">72.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.2.2.9.5.8">75.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.9.5.9.1">88.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.2.9.5.10.1">93.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.11">75.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.12">95.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.2.9.5.13">97.92</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of cross-modal semantic capabilities across various interleaved speech language models (SLMs).  It contrasts the performance of models initialized from different text language models (LLaMa and Qwen2.5) and trained with varying compute budgets. The table shows how well these models generalize to different speakers, evaluating their performance on several speech-related semantic tasks (multi-speaker Spoken StoryCloze (SSC) and Topic-StoryCloze (tSC)). For completeness, the original performance of the TextLM before interleaved training is also provided. Notably, one model's results (SpiritLM) are based on official model weights that were trained 75% longer than initially documented, providing a more comprehensive comparison.
> <details>
> <summary>read the caption</summary>
> Table 2: Analysing the cross-modal semantic abilities of different interleaved SLMs. We also report the performance of the original TextLM before training under Orig. L - indicates LLaMa TextLM initialisation, while Q - is Qwen2.5. *We use the official model weights, which were trained for 75%percent7575\%75 % longer than originally reported by Nguyen et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.24.24">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.5.5.5.6">Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.5.5.5.7">Params.</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.5.5.5.8">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1">sBLIMP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.2.2.2">sSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.3.3.3">tSC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.4.4.4.4">GenPPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.5.5.5.5">Self-BLEU<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mo id="S5.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><ci id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.7.7.7.3">GSLM <cite class="ltx_cite ltx_citemacro_citep">(Lakhotia et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib35" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.7.7.7.4">100M</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.7.7.7.5">1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.6">54.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.7">53.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.8">66.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.6.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.1.m1.1a"><mi id="S5.T3.6.6.6.1.m1.1.1" mathvariant="normal" xref="S5.T3.6.6.6.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.m1.1b"><emptyset id="S5.T3.6.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.6.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.7.7.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.7.7.7.2.m1.1"><semantics id="S5.T3.7.7.7.2.m1.1a"><mi id="S5.T3.7.7.7.2.m1.1.1" mathvariant="normal" xref="S5.T3.7.7.7.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.2.m1.1b"><emptyset id="S5.T3.7.7.7.2.m1.1.1.cmml" xref="S5.T3.7.7.7.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.25.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.25.1.1">TWIST-7B <cite class="ltx_cite ltx_citemacro_citep">(Hassid et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib20" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.24.24.25.1.2">7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.25.1.3">36B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.25.1.4">59.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.25.1.5">55.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.25.1.6">74.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.25.1.7">93.74</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.25.1.8">3.06</td>
</tr>
<tr class="ltx_tr" id="S5.T3.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.9.9.9.3">TWIST-13B <cite class="ltx_cite ltx_citemacro_citep">(Hassid et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib20" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.9.9.9.4">13B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.9.9.9.5">36B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.6">59.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.7">55.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.8">76.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.8.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.8.8.8.1.m1.1"><semantics id="S5.T3.8.8.8.1.m1.1a"><mi id="S5.T3.8.8.8.1.m1.1.1" mathvariant="normal" xref="S5.T3.8.8.8.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.1.m1.1b"><emptyset id="S5.T3.8.8.8.1.m1.1.1.cmml" xref="S5.T3.8.8.8.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.9.9.9.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.9.9.9.2.m1.1"><semantics id="S5.T3.9.9.9.2.m1.1a"><mi id="S5.T3.9.9.9.2.m1.1.1" mathvariant="normal" xref="S5.T3.9.9.9.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.9.2.m1.1b"><emptyset id="S5.T3.9.9.9.2.m1.1.1.cmml" xref="S5.T3.9.9.9.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.9.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.9.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.12.12.12.4">SyllableLM <cite class="ltx_cite ltx_citemacro_citep">(Baade et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib2" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.12.12.12.5">300M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.12.12.12.6">16B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.7"><span class="ltx_text ltx_font_bold" id="S5.T3.12.12.12.7.1">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.10.10.10.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.10.10.10.1.m1.1"><semantics id="S5.T3.10.10.10.1.m1.1a"><mi id="S5.T3.10.10.10.1.m1.1.1" mathvariant="normal" xref="S5.T3.10.10.10.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.10.1.m1.1b"><emptyset id="S5.T3.10.10.10.1.m1.1.1.cmml" xref="S5.T3.10.10.10.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.10.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.10.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.8">75.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.11.11.11.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.11.11.11.2.m1.1"><semantics id="S5.T3.11.11.11.2.m1.1a"><mi id="S5.T3.11.11.11.2.m1.1.1" mathvariant="normal" xref="S5.T3.11.11.11.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.11.11.11.2.m1.1b"><emptyset id="S5.T3.11.11.11.2.m1.1.1.cmml" xref="S5.T3.11.11.11.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.11.11.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.11.11.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.12.12.12.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.12.12.12.3.m1.1"><semantics id="S5.T3.12.12.12.3.m1.1a"><mi id="S5.T3.12.12.12.3.m1.1.1" mathvariant="normal" xref="S5.T3.12.12.12.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.12.12.12.3.m1.1b"><emptyset id="S5.T3.12.12.12.3.m1.1.1.cmml" xref="S5.T3.12.12.12.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.12.12.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.12.12.3.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.26.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.26.2.1">Slam -DPO <cite class="ltx_cite ltx_citemacro_citep">(Maimon et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib38" title="">2025a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.24.24.26.2.2">358M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.26.2.3">16.7B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.26.2.4">58.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.26.2.5">58.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.26.2.6">80.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.26.2.7">67.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.26.2.8">3.25</td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.27.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.27.3.1">Slam <cite class="ltx_cite ltx_citemacro_citep">(Maimon et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib38" title="">2025a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.24.24.27.3.2">358M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.27.3.3">16.7B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.27.3.4">61.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.27.3.5">61.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.27.3.6">84.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.27.3.7">46.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.27.3.8">3.75</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.14.14.14.3">AlignSLM <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib36" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.14.14.14.4">7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.14.14.14.5">36 + 158B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.6">62.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.7">61.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.8">86.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.13.13.13.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.13.13.13.1.m1.1"><semantics id="S5.T3.13.13.13.1.m1.1a"><mi id="S5.T3.13.13.13.1.m1.1.1" mathvariant="normal" xref="S5.T3.13.13.13.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.13.13.13.1.m1.1b"><emptyset id="S5.T3.13.13.13.1.m1.1.1.cmml" xref="S5.T3.13.13.13.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.13.13.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.13.13.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.14.14.14.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.14.14.14.2.m1.1"><semantics id="S5.T3.14.14.14.2.m1.1a"><mi id="S5.T3.14.14.14.2.m1.1.1" mathvariant="normal" xref="S5.T3.14.14.14.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.14.14.14.2.m1.1b"><emptyset id="S5.T3.14.14.14.2.m1.1.1.cmml" xref="S5.T3.14.14.14.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.14.14.14.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.14.14.14.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.16.16.16.3"><cite class="ltx_cite ltx_citemacro_citet">Cuervo &amp; Marxer (<a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib11" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="S5.T3.16.16.16.4">823M</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.16.16.16.5">82B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.6">61.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.7">56.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.8">78.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.15.15.15.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.15.15.15.1.m1.1"><semantics id="S5.T3.15.15.15.1.m1.1a"><mi id="S5.T3.15.15.15.1.m1.1.1" mathvariant="normal" xref="S5.T3.15.15.15.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.15.15.15.1.m1.1b"><emptyset id="S5.T3.15.15.15.1.m1.1.1.cmml" xref="S5.T3.15.15.15.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.15.15.15.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.15.15.15.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.16.16.16.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.16.16.16.2.m1.1"><semantics id="S5.T3.16.16.16.2.m1.1a"><mi id="S5.T3.16.16.16.2.m1.1.1" mathvariant="normal" xref="S5.T3.16.16.16.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.16.16.16.2.m1.1b"><emptyset id="S5.T3.16.16.16.2.m1.1.1.cmml" xref="S5.T3.16.16.16.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.16.16.16.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.16.16.16.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.20.20.20.5"><cite class="ltx_cite ltx_citemacro_citet">Zeng et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib64" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.20.20.20.6">9B</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.17.17.17.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S5.T3.17.17.17.1.m1.1"><semantics id="S5.T3.17.17.17.1.m1.1a"><mo id="S5.T3.17.17.17.1.m1.1.1" xref="S5.T3.17.17.17.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S5.T3.17.17.17.1.m1.1b"><csymbol cd="latexml" id="S5.T3.17.17.17.1.m1.1.1.cmml" xref="S5.T3.17.17.17.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.17.17.17.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S5.T3.17.17.17.1.m1.1d">∼</annotation></semantics></math>1T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.18.18.18.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.18.18.18.2.m1.1"><semantics id="S5.T3.18.18.18.2.m1.1a"><mi id="S5.T3.18.18.18.2.m1.1.1" mathvariant="normal" xref="S5.T3.18.18.18.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.18.18.18.2.m1.1b"><emptyset id="S5.T3.18.18.18.2.m1.1.1.cmml" xref="S5.T3.18.18.18.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.18.18.18.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.18.18.18.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.20.20.20.7">62.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.20.20.20.8">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.19.19.19.3"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.19.19.19.3.m1.1"><semantics id="S5.T3.19.19.19.3.m1.1a"><mi id="S5.T3.19.19.19.3.m1.1.1" mathvariant="normal" xref="S5.T3.19.19.19.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.19.19.19.3.m1.1b"><emptyset id="S5.T3.19.19.19.3.m1.1.1.cmml" xref="S5.T3.19.19.19.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.19.19.19.3.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.19.19.19.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.20.20.20.4"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.20.20.20.4.m1.1"><semantics id="S5.T3.20.20.20.4.m1.1a"><mi id="S5.T3.20.20.20.4.m1.1.1" mathvariant="normal" xref="S5.T3.20.20.20.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.20.20.20.4.m1.1b"><emptyset id="S5.T3.20.20.20.4.m1.1.1.cmml" xref="S5.T3.20.20.20.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.20.20.20.4.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.20.20.20.4.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.22.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.22.22.22.3">Moshi <cite class="ltx_cite ltx_citemacro_citep">(Défossez et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.22.22.22.4">7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.22.22.22.5">720B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.6">58.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.7">60.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.8">83.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.21.21.21.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.21.21.21.1.m1.1"><semantics id="S5.T3.21.21.21.1.m1.1a"><mi id="S5.T3.21.21.21.1.m1.1.1" mathvariant="normal" xref="S5.T3.21.21.21.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.21.21.21.1.m1.1b"><emptyset id="S5.T3.21.21.21.1.m1.1.1.cmml" xref="S5.T3.21.21.21.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.21.21.21.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.21.21.21.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.22.22.22.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.22.22.22.2.m1.1"><semantics id="S5.T3.22.22.22.2.m1.1a"><mi id="S5.T3.22.22.22.2.m1.1.1" mathvariant="normal" xref="S5.T3.22.22.22.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.22.22.22.2.m1.1b"><emptyset id="S5.T3.22.22.22.2.m1.1.1.cmml" xref="S5.T3.22.22.22.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.22.22.22.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.22.22.22.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.24.3">SpiritLM <cite class="ltx_cite ltx_citemacro_citep">(Nguyen et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib42" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T3.24.24.24.4">7B</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.24.24.24.5">100B</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.24.6">58.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.24.7">61.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.24.8">82.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.23.23.23.1"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.23.23.23.1.m1.1"><semantics id="S5.T3.23.23.23.1.m1.1a"><mi id="S5.T3.23.23.23.1.m1.1.1" mathvariant="normal" xref="S5.T3.23.23.23.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.23.23.23.1.m1.1b"><emptyset id="S5.T3.23.23.23.1.m1.1.1.cmml" xref="S5.T3.23.23.23.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.23.23.23.1.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.23.23.23.1.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T3.24.24.24.2"><math alttext="\emptyset" class="ltx_Math" display="inline" id="S5.T3.24.24.24.2.m1.1"><semantics id="S5.T3.24.24.24.2.m1.1a"><mi id="S5.T3.24.24.24.2.m1.1.1" mathvariant="normal" xref="S5.T3.24.24.24.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S5.T3.24.24.24.2.m1.1b"><emptyset id="S5.T3.24.24.24.2.m1.1.1.cmml" xref="S5.T3.24.24.24.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.24.24.24.2.m1.1c">\emptyset</annotation><annotation encoding="application/x-llamapun" id="S5.T3.24.24.24.2.m1.1d">∅</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T3.24.24.28.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.24.24.28.4.1">SIMS (ours)</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.24.24.28.4.2">7B</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.24.24.28.4.3">15B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.28.4.4">59.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.28.4.5"><span class="ltx_text ltx_font_bold" id="S5.T3.24.24.28.4.5.1">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.28.4.6"><span class="ltx_text ltx_font_bold" id="S5.T3.24.24.28.4.6.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.28.4.7"><span class="ltx_text ltx_font_bold" id="S5.T3.24.24.28.4.7.1">37.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.24.24.28.4.8">4.15</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the proposed SIMS model with other existing Speech Language Models (SLMs).  The upper half shows results for textless SLMs (models trained only on speech data), while the lower half shows results for joint speech-text SLMs (models trained on both speech and text data).  The comparison is based on several key evaluation metrics, including sBLIMP (measuring grammatical ability), SSC and tSC (measuring semantic ability), GenPPL (general perplexity) and Self-BLEU (measuring fluency).  This allows for a comprehensive assessment of SIMS's performance relative to state-of-the-art techniques, highlighting its strengths and weaknesses in different aspects of speech understanding and generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparing SIMS to existing SLMs. Results on the upper block of the table correspond to textless-SLMs, while results on the bottom correspond to joint speech-text SLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.14.14">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.14.14.15.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T4.14.14.15.1.1">Dataset</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.14.14.15.1.2">Number of Hours</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.14.14.15.1.3">Number of Tokens</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T4.2.2.2.3">Libri-Light <cite class="ltx_cite ltx_citemacro_citep">(Kahn et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib30" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.1.1.1"><math alttext="50K" class="ltx_Math" display="inline" id="A1.T4.1.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.1.m1.1a"><mrow id="A1.T4.1.1.1.1.m1.1.1" xref="A1.T4.1.1.1.1.m1.1.1.cmml"><mn id="A1.T4.1.1.1.1.m1.1.1.2" xref="A1.T4.1.1.1.1.m1.1.1.2.cmml">50</mn><mo id="A1.T4.1.1.1.1.m1.1.1.1" xref="A1.T4.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.1.1.1.1.m1.1.1.3" xref="A1.T4.1.1.1.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.1.m1.1b"><apply id="A1.T4.1.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.1.m1.1.1"><times id="A1.T4.1.1.1.1.m1.1.1.1.cmml" xref="A1.T4.1.1.1.1.m1.1.1.1"></times><cn id="A1.T4.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.1.1.1.1.m1.1.1.2">50</cn><ci id="A1.T4.1.1.1.1.m1.1.1.3.cmml" xref="A1.T4.1.1.1.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.1.m1.1c">50K</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.1.m1.1d">50 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.2.2"><math alttext="3.5B" class="ltx_Math" display="inline" id="A1.T4.2.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.2.m1.1a"><mrow id="A1.T4.2.2.2.2.m1.1.1" xref="A1.T4.2.2.2.2.m1.1.1.cmml"><mn id="A1.T4.2.2.2.2.m1.1.1.2" xref="A1.T4.2.2.2.2.m1.1.1.2.cmml">3.5</mn><mo id="A1.T4.2.2.2.2.m1.1.1.1" xref="A1.T4.2.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.2.2.2.2.m1.1.1.3" xref="A1.T4.2.2.2.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.2.m1.1b"><apply id="A1.T4.2.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.2.m1.1.1"><times id="A1.T4.2.2.2.2.m1.1.1.1.cmml" xref="A1.T4.2.2.2.2.m1.1.1.1"></times><cn id="A1.T4.2.2.2.2.m1.1.1.2.cmml" type="float" xref="A1.T4.2.2.2.2.m1.1.1.2">3.5</cn><ci id="A1.T4.2.2.2.2.m1.1.1.3.cmml" xref="A1.T4.2.2.2.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.2.m1.1c">3.5B</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.2.m1.1d">3.5 italic_B</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.4.4.4.3">LibriSpeech <cite class="ltx_cite ltx_citemacro_citep">(Panayotov et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib43" title="">2015</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3.1"><math alttext="960" class="ltx_Math" display="inline" id="A1.T4.3.3.3.1.m1.1"><semantics id="A1.T4.3.3.3.1.m1.1a"><mn id="A1.T4.3.3.3.1.m1.1.1" xref="A1.T4.3.3.3.1.m1.1.1.cmml">960</mn><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.1.m1.1b"><cn id="A1.T4.3.3.3.1.m1.1.1.cmml" type="integer" xref="A1.T4.3.3.3.1.m1.1.1">960</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.1.m1.1c">960</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.1.m1.1d">960</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.4.2"><math alttext="67M" class="ltx_Math" display="inline" id="A1.T4.4.4.4.2.m1.1"><semantics id="A1.T4.4.4.4.2.m1.1a"><mrow id="A1.T4.4.4.4.2.m1.1.1" xref="A1.T4.4.4.4.2.m1.1.1.cmml"><mn id="A1.T4.4.4.4.2.m1.1.1.2" xref="A1.T4.4.4.4.2.m1.1.1.2.cmml">67</mn><mo id="A1.T4.4.4.4.2.m1.1.1.1" xref="A1.T4.4.4.4.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.4.4.4.2.m1.1.1.3" xref="A1.T4.4.4.4.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.4.2.m1.1b"><apply id="A1.T4.4.4.4.2.m1.1.1.cmml" xref="A1.T4.4.4.4.2.m1.1.1"><times id="A1.T4.4.4.4.2.m1.1.1.1.cmml" xref="A1.T4.4.4.4.2.m1.1.1.1"></times><cn id="A1.T4.4.4.4.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.4.4.4.2.m1.1.1.2">67</cn><ci id="A1.T4.4.4.4.2.m1.1.1.3.cmml" xref="A1.T4.4.4.4.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.4.2.m1.1c">67M</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.4.2.m1.1d">67 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.6.6.6.3">SWC <cite class="ltx_cite ltx_citemacro_citep">(Baumann et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib3" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.1"><math alttext="750" class="ltx_Math" display="inline" id="A1.T4.5.5.5.1.m1.1"><semantics id="A1.T4.5.5.5.1.m1.1a"><mn id="A1.T4.5.5.5.1.m1.1.1" xref="A1.T4.5.5.5.1.m1.1.1.cmml">750</mn><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.5.1.m1.1b"><cn id="A1.T4.5.5.5.1.m1.1.1.cmml" type="integer" xref="A1.T4.5.5.5.1.m1.1.1">750</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.5.1.m1.1c">750</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.5.1.m1.1d">750</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.6.2"><math alttext="19M" class="ltx_Math" display="inline" id="A1.T4.6.6.6.2.m1.1"><semantics id="A1.T4.6.6.6.2.m1.1a"><mrow id="A1.T4.6.6.6.2.m1.1.1" xref="A1.T4.6.6.6.2.m1.1.1.cmml"><mn id="A1.T4.6.6.6.2.m1.1.1.2" xref="A1.T4.6.6.6.2.m1.1.1.2.cmml">19</mn><mo id="A1.T4.6.6.6.2.m1.1.1.1" xref="A1.T4.6.6.6.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.6.6.6.2.m1.1.1.3" xref="A1.T4.6.6.6.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.6.2.m1.1b"><apply id="A1.T4.6.6.6.2.m1.1.1.cmml" xref="A1.T4.6.6.6.2.m1.1.1"><times id="A1.T4.6.6.6.2.m1.1.1.1.cmml" xref="A1.T4.6.6.6.2.m1.1.1.1"></times><cn id="A1.T4.6.6.6.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.6.6.6.2.m1.1.1.2">19</cn><ci id="A1.T4.6.6.6.2.m1.1.1.3.cmml" xref="A1.T4.6.6.6.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.6.2.m1.1c">19M</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.6.2.m1.1d">19 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.8.8.8.3">Tedlium <cite class="ltx_cite ltx_citemacro_citep">(Hernandez et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib21" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.7.1"><math alttext="1.6K" class="ltx_Math" display="inline" id="A1.T4.7.7.7.1.m1.1"><semantics id="A1.T4.7.7.7.1.m1.1a"><mrow id="A1.T4.7.7.7.1.m1.1.1" xref="A1.T4.7.7.7.1.m1.1.1.cmml"><mn id="A1.T4.7.7.7.1.m1.1.1.2" xref="A1.T4.7.7.7.1.m1.1.1.2.cmml">1.6</mn><mo id="A1.T4.7.7.7.1.m1.1.1.1" xref="A1.T4.7.7.7.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.7.7.7.1.m1.1.1.3" xref="A1.T4.7.7.7.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.7.1.m1.1b"><apply id="A1.T4.7.7.7.1.m1.1.1.cmml" xref="A1.T4.7.7.7.1.m1.1.1"><times id="A1.T4.7.7.7.1.m1.1.1.1.cmml" xref="A1.T4.7.7.7.1.m1.1.1.1"></times><cn id="A1.T4.7.7.7.1.m1.1.1.2.cmml" type="float" xref="A1.T4.7.7.7.1.m1.1.1.2">1.6</cn><ci id="A1.T4.7.7.7.1.m1.1.1.3.cmml" xref="A1.T4.7.7.7.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.7.1.m1.1c">1.6K</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.7.1.m1.1d">1.6 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.8.2"><math alttext="110M" class="ltx_Math" display="inline" id="A1.T4.8.8.8.2.m1.1"><semantics id="A1.T4.8.8.8.2.m1.1a"><mrow id="A1.T4.8.8.8.2.m1.1.1" xref="A1.T4.8.8.8.2.m1.1.1.cmml"><mn id="A1.T4.8.8.8.2.m1.1.1.2" xref="A1.T4.8.8.8.2.m1.1.1.2.cmml">110</mn><mo id="A1.T4.8.8.8.2.m1.1.1.1" xref="A1.T4.8.8.8.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.8.8.8.2.m1.1.1.3" xref="A1.T4.8.8.8.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.8.2.m1.1b"><apply id="A1.T4.8.8.8.2.m1.1.1.cmml" xref="A1.T4.8.8.8.2.m1.1.1"><times id="A1.T4.8.8.8.2.m1.1.1.1.cmml" xref="A1.T4.8.8.8.2.m1.1.1.1"></times><cn id="A1.T4.8.8.8.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.8.8.8.2.m1.1.1.2">110</cn><ci id="A1.T4.8.8.8.2.m1.1.1.3.cmml" xref="A1.T4.8.8.8.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.8.2.m1.1c">110M</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.8.2.m1.1d">110 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.10.10.10.3">PeopleSpeech <cite class="ltx_cite ltx_citemacro_citep">(Galvez et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib18" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.9.1"><math alttext="7K" class="ltx_Math" display="inline" id="A1.T4.9.9.9.1.m1.1"><semantics id="A1.T4.9.9.9.1.m1.1a"><mrow id="A1.T4.9.9.9.1.m1.1.1" xref="A1.T4.9.9.9.1.m1.1.1.cmml"><mn id="A1.T4.9.9.9.1.m1.1.1.2" xref="A1.T4.9.9.9.1.m1.1.1.2.cmml">7</mn><mo id="A1.T4.9.9.9.1.m1.1.1.1" xref="A1.T4.9.9.9.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.9.9.9.1.m1.1.1.3" xref="A1.T4.9.9.9.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.9.9.9.1.m1.1b"><apply id="A1.T4.9.9.9.1.m1.1.1.cmml" xref="A1.T4.9.9.9.1.m1.1.1"><times id="A1.T4.9.9.9.1.m1.1.1.1.cmml" xref="A1.T4.9.9.9.1.m1.1.1.1"></times><cn id="A1.T4.9.9.9.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.9.9.9.1.m1.1.1.2">7</cn><ci id="A1.T4.9.9.9.1.m1.1.1.3.cmml" xref="A1.T4.9.9.9.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.9.9.9.1.m1.1c">7K</annotation><annotation encoding="application/x-llamapun" id="A1.T4.9.9.9.1.m1.1d">7 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.10.2"><math alttext="480M" class="ltx_Math" display="inline" id="A1.T4.10.10.10.2.m1.1"><semantics id="A1.T4.10.10.10.2.m1.1a"><mrow id="A1.T4.10.10.10.2.m1.1.1" xref="A1.T4.10.10.10.2.m1.1.1.cmml"><mn id="A1.T4.10.10.10.2.m1.1.1.2" xref="A1.T4.10.10.10.2.m1.1.1.2.cmml">480</mn><mo id="A1.T4.10.10.10.2.m1.1.1.1" xref="A1.T4.10.10.10.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.10.10.10.2.m1.1.1.3" xref="A1.T4.10.10.10.2.m1.1.1.3.cmml">M</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.10.10.10.2.m1.1b"><apply id="A1.T4.10.10.10.2.m1.1.1.cmml" xref="A1.T4.10.10.10.2.m1.1.1"><times id="A1.T4.10.10.10.2.m1.1.1.1.cmml" xref="A1.T4.10.10.10.2.m1.1.1.1"></times><cn id="A1.T4.10.10.10.2.m1.1.1.2.cmml" type="integer" xref="A1.T4.10.10.10.2.m1.1.1.2">480</cn><ci id="A1.T4.10.10.10.2.m1.1.1.3.cmml" xref="A1.T4.10.10.10.2.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.10.10.10.2.m1.1c">480M</annotation><annotation encoding="application/x-llamapun" id="A1.T4.10.10.10.2.m1.1d">480 italic_M</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T4.12.12.12.3">VoxPopuli <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib55" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.11.1"><math alttext="24K" class="ltx_Math" display="inline" id="A1.T4.11.11.11.1.m1.1"><semantics id="A1.T4.11.11.11.1.m1.1a"><mrow id="A1.T4.11.11.11.1.m1.1.1" xref="A1.T4.11.11.11.1.m1.1.1.cmml"><mn id="A1.T4.11.11.11.1.m1.1.1.2" xref="A1.T4.11.11.11.1.m1.1.1.2.cmml">24</mn><mo id="A1.T4.11.11.11.1.m1.1.1.1" xref="A1.T4.11.11.11.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.11.11.11.1.m1.1.1.3" xref="A1.T4.11.11.11.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.11.11.11.1.m1.1b"><apply id="A1.T4.11.11.11.1.m1.1.1.cmml" xref="A1.T4.11.11.11.1.m1.1.1"><times id="A1.T4.11.11.11.1.m1.1.1.1.cmml" xref="A1.T4.11.11.11.1.m1.1.1.1"></times><cn id="A1.T4.11.11.11.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.11.11.11.1.m1.1.1.2">24</cn><ci id="A1.T4.11.11.11.1.m1.1.1.3.cmml" xref="A1.T4.11.11.11.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.11.11.11.1.m1.1c">24K</annotation><annotation encoding="application/x-llamapun" id="A1.T4.11.11.11.1.m1.1d">24 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.12.2"><math alttext="1.64B" class="ltx_Math" display="inline" id="A1.T4.12.12.12.2.m1.1"><semantics id="A1.T4.12.12.12.2.m1.1a"><mrow id="A1.T4.12.12.12.2.m1.1.1" xref="A1.T4.12.12.12.2.m1.1.1.cmml"><mn id="A1.T4.12.12.12.2.m1.1.1.2" xref="A1.T4.12.12.12.2.m1.1.1.2.cmml">1.64</mn><mo id="A1.T4.12.12.12.2.m1.1.1.1" xref="A1.T4.12.12.12.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.12.12.12.2.m1.1.1.3" xref="A1.T4.12.12.12.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.12.12.12.2.m1.1b"><apply id="A1.T4.12.12.12.2.m1.1.1.cmml" xref="A1.T4.12.12.12.2.m1.1.1"><times id="A1.T4.12.12.12.2.m1.1.1.1.cmml" xref="A1.T4.12.12.12.2.m1.1.1.1"></times><cn id="A1.T4.12.12.12.2.m1.1.1.2.cmml" type="float" xref="A1.T4.12.12.12.2.m1.1.1.2">1.64</cn><ci id="A1.T4.12.12.12.2.m1.1.1.3.cmml" xref="A1.T4.12.12.12.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.12.12.12.2.m1.1c">1.64B</annotation><annotation encoding="application/x-llamapun" id="A1.T4.12.12.12.2.m1.1d">1.64 italic_B</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T4.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T4.14.14.14.3">sTinyStories <cite class="ltx_cite ltx_citemacro_citep">(Maimon et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02398v1#bib.bib38" title="">2025a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.13.13.13.1"><math alttext="30K" class="ltx_Math" display="inline" id="A1.T4.13.13.13.1.m1.1"><semantics id="A1.T4.13.13.13.1.m1.1a"><mrow id="A1.T4.13.13.13.1.m1.1.1" xref="A1.T4.13.13.13.1.m1.1.1.cmml"><mn id="A1.T4.13.13.13.1.m1.1.1.2" xref="A1.T4.13.13.13.1.m1.1.1.2.cmml">30</mn><mo id="A1.T4.13.13.13.1.m1.1.1.1" xref="A1.T4.13.13.13.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.13.13.13.1.m1.1.1.3" xref="A1.T4.13.13.13.1.m1.1.1.3.cmml">K</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.13.13.13.1.m1.1b"><apply id="A1.T4.13.13.13.1.m1.1.1.cmml" xref="A1.T4.13.13.13.1.m1.1.1"><times id="A1.T4.13.13.13.1.m1.1.1.1.cmml" xref="A1.T4.13.13.13.1.m1.1.1.1"></times><cn id="A1.T4.13.13.13.1.m1.1.1.2.cmml" type="integer" xref="A1.T4.13.13.13.1.m1.1.1.2">30</cn><ci id="A1.T4.13.13.13.1.m1.1.1.3.cmml" xref="A1.T4.13.13.13.1.m1.1.1.3">𝐾</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.13.13.13.1.m1.1c">30K</annotation><annotation encoding="application/x-llamapun" id="A1.T4.13.13.13.1.m1.1d">30 italic_K</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.14.14.14.2"><math alttext="2.2B" class="ltx_Math" display="inline" id="A1.T4.14.14.14.2.m1.1"><semantics id="A1.T4.14.14.14.2.m1.1a"><mrow id="A1.T4.14.14.14.2.m1.1.1" xref="A1.T4.14.14.14.2.m1.1.1.cmml"><mn id="A1.T4.14.14.14.2.m1.1.1.2" xref="A1.T4.14.14.14.2.m1.1.1.2.cmml">2.2</mn><mo id="A1.T4.14.14.14.2.m1.1.1.1" xref="A1.T4.14.14.14.2.m1.1.1.1.cmml">⁢</mo><mi id="A1.T4.14.14.14.2.m1.1.1.3" xref="A1.T4.14.14.14.2.m1.1.1.3.cmml">B</mi></mrow><annotation-xml encoding="MathML-Content" id="A1.T4.14.14.14.2.m1.1b"><apply id="A1.T4.14.14.14.2.m1.1.1.cmml" xref="A1.T4.14.14.14.2.m1.1.1"><times id="A1.T4.14.14.14.2.m1.1.1.1.cmml" xref="A1.T4.14.14.14.2.m1.1.1.1"></times><cn id="A1.T4.14.14.14.2.m1.1.1.2.cmml" type="float" xref="A1.T4.14.14.14.2.m1.1.1.2">2.2</cn><ci id="A1.T4.14.14.14.2.m1.1.1.3.cmml" xref="A1.T4.14.14.14.2.m1.1.1.3">𝐵</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.14.14.14.2.m1.1c">2.2B</annotation><annotation encoding="application/x-llamapun" id="A1.T4.14.14.14.2.m1.1d">2.2 italic_B</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the datasets used for training speech language models in the study.  It lists each dataset's name, the number of hours of audio data it contains, and the total number of tokens (individual units of speech and text) available in the training subset. The datasets include Libri-Light, LibriSpeech, SWC, Tedlium, PeopleSpeech, VoxPopuli, and a synthetic dataset called sTinyStories.
> <details>
> <summary>read the caption</summary>
> Table 4: Dataset train set sizes that we use.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02398/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02398/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}