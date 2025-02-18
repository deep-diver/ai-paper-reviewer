---
title: "System Message Generation for User Preferences using Open-Source Models"
summary: "SYSGEN: A novel pipeline generates effective system messages for LLMs using open-source models, improving model responses and addressing data scarcity in supervised fine-tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Upstage AI",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11330 {{< /keyword >}}
{{< keyword icon="writer" >}} Minbyul Jeong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11330" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11330" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11330/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many applications using Large Language Models (LLMs) rely on effective system messages to guide the model's behavior, but publicly available datasets are often limited. This paper introduces SYSGEN, a novel pipeline designed to generate system messages tailored to user preferences. The lack of publicly available and properly aligned data is a significant challenge in the LLM field; SYSGEN aims to address this by leveraging open-source models to create high-quality system messages automatically. 



SYSGEN's pipeline involves four phases: generating system messages based on key functionalities, filtering and reorganizing them, verifying these functionalities, and generating new, well-aligned assistant responses. Experiments across various open-source models demonstrate substantial performance improvements on the Multifacet benchmark, showcasing better alignment between model responses and system messages, without sacrificing performance on other unseen benchmarks.  The key contribution is the generation of diverse system messages that enhance model adaptability across diverse user requirements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SYSGEN automatically generates diverse system messages tailored to various user instructions, overcoming licensing and resource constraints of existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Training LLMs on SYSGEN data improves alignment with system messages and user instructions across various open-source models, significantly boosting performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SYSGEN addresses data scarcity and licensing issues while maintaining minimal performance impact on other unseen benchmarks, showcasing its efficiency and robustness in improving LLMs’ behavior. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models (LLMs).  It addresses the critical challenge of generating effective system messages, which significantly impact LLM performance and alignment. The proposed method, SYSGEN, offers a data-efficient solution by automatically generating diverse and well-aligned system messages using open-source models, thereby overcoming limitations of existing datasets. This contribution is highly relevant to current research trends in improving LLM adaptability, safety, and ethical considerations, opening new avenues for data augmentation and fine-tuning techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11330/extracted/6208615/figure/motivation_figure.png)

> 🔼 The SYSGEN pipeline consists of two stages:  First, it automatically generates system messages by identifying eight key functionalities (role, content, task, action, style, background, tool, format) within existing supervised fine-tuning (SFT) datasets that lack system messages. These functionalities are tagged with specific phrases.  Second, the pipeline leverages these newly generated system messages to produce better aligned assistant responses that are more consistent with user instructions.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Our SysGen pipeline provides two main points: system message generation and newly-generated answer. We manually select eight key fuctionalities of system messages and generate phrases with specific tags to original SFT datasets that lack of system messages. Our pipeline generates better aligned assistant responses with system messages given user-oriented instruction.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.1.1.1.2">Words Composition</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.1.3.1">BERTScore</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.1.4.1">BLEURT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.1.5.1">GLEU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.6" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.1.6.1">Len.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.1">R1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2">R2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.3">RL</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.3.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.2">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3">15.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.4">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.5">81.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.6">33.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.7">28.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.8">1.35</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.1">Qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2">44.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3">23.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4">30.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.5">85.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.6">39.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.7">39.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.8">1.55</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.1.5.1">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.2">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.3">32.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.4">41.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.5">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.6">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.7">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.5.8">1.89</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the newly generated answers against the original answers, evaluating various aspects of quality.  Specifically, it assesses word overlap using ROUGE scores (ROUGE-1, ROUGE-2, ROUGE-L), semantic similarity using BERTScore and BLEURT scores, fluency using GLEU score, and the average length of both the original and generated answers. The comparison allows for a detailed analysis of the impact of the system message generation on the quality and characteristics of the model's responses.
> <details>
> <summary>read the caption</summary>
> Table 1: A statistic that measures the words composition (Rouge-1,-2, and -L), semantic similarity (BERTScore and BLEURT), fluency (GLEU), and average context length of the newly-generated answer compared to average context length of the original answer.
> </details>





### In-depth insights


#### SYSGEN Pipeline
The SYSGEN pipeline is a novel approach to generating high-quality system messages for large language models (LLMs).  Its core innovation lies in **automatically generating diverse system messages** tailored to user instructions, addressing the limitations of existing datasets which often lack system messages or are subject to strict licensing. The pipeline consists of four phases: (1) generating system messages using open-source models based on eight key functionalities; (2) filtering and reorganizing those messages for consistency; (3) verifying the accuracy of generated functionalities using a LLM-as-a-judge method; (4) generating refined assistant responses aligned with the improved system messages. This data augmentation process leads to **substantial improvements** in LLM performance, especially in aligning model responses with user instructions, without negatively affecting performance on unseen benchmarks.  **SYSGEN's strength lies in its ability to overcome data limitations**, creating training datasets that enable better adaptability and alignment in open-source LLMs.

#### Model Alignment
Model alignment, in the context of large language models (LLMs), is a critical area focusing on ensuring that a model's behavior aligns with the user's intent and societal values.  **Misalignment** can lead to outputs that are nonsensical, biased, toxic, or otherwise harmful.  Effective alignment strategies are crucial for building trustworthy and beneficial AI systems.  The paper likely explores various techniques for achieving better model alignment, such as **reinforcement learning from human feedback (RLHF)**, **adversarial training**, or **data augmentation** to improve the quality of training data.  **Benchmarking** plays a significant role in evaluating alignment success, measuring how well a model follows instructions and avoids generating unsafe or undesirable content.  The research probably investigates the challenges of achieving robust alignment across various domains and user preferences, as well as the trade-offs between alignment and other model capabilities like fluency and efficiency.  The ultimate goal is to develop methods that promote alignment while maintaining the utility and functionality of LLMs.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper is crucial for establishing the validity and effectiveness of the proposed method.  **Comprehensive benchmarking** should involve multiple established datasets, covering diverse aspects of the problem domain.  The selection of benchmarks should be justified, highlighting their relevance and representativeness.  **Quantitative results**, presented clearly through tables and graphs, are essential.  Metrics used for evaluation need to be carefully chosen and their appropriateness explained.  **Statistical significance** testing should be conducted to ensure the observed improvements are not due to random chance.  Furthermore, the discussion should go beyond simply reporting numbers; it should analyze the results in depth, comparing performance across different benchmarks and relating the findings to the paper's hypotheses.  **Limitations of the benchmarks** should be acknowledged, along with potential biases.  Finally, a comparison with state-of-the-art methods is crucial to position the proposed approach within the existing literature. A strong 'Benchmark Results' section convincingly demonstrates the practical value and potential impact of the research.

#### SYSGEN Limitations
The SYSGEN pipeline, while innovative, presents several limitations.  **Its reliance on single-turn conversations** restricts its applicability to more complex, multi-turn interactions, a crucial aspect of real-world LLM deployments. The reliance on readily available datasets, while convenient, **limits the diversity of system message functionalities** explored, particularly noticeable in the underrepresentation of tools and background information.  Furthermore, while the pipeline aims to mitigate performance degradation on unseen benchmarks, **it doesn't fully address potential bias** introduced by the training data or the open-source models themselves.  The need for future research is highlighted by the **under-exploration of system message generation in various formats**, such as multiple-choice questions, which are prevalent in evaluation benchmarks. Finally, the **limited evaluation data**, using only a subset of generated datasets for qualitative analysis, suggests the need for a more robust and comprehensive validation process to confidently assess the generalizability of SYSGEN's output.

#### Future Directions
Future research should prioritize expanding SYSGEN's capabilities to handle **multi-turn conversations**, a crucial aspect of real-world interactions currently unsupported.  Addressing this limitation would significantly enhance the system's practical applicability.  Further investigation into the impact of different **data formats** on SYSGEN's performance is warranted, as the current evaluation may be skewed by the specific characteristics of the chosen datasets. Exploring alternative methods of generating system messages, potentially employing **different open-source LLMs** or incorporating human-in-the-loop strategies, could reveal additional improvements.  A thorough comparative analysis against proprietary models will provide valuable insights into the relative strengths and weaknesses of the SYSGEN approach. Lastly, investigating the **generalizability** of SYSGEN across diverse languages and domains is crucial for establishing its broader relevance and impact.  This multi-faceted approach would pave the way for a more robust and versatile system.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11330/x1.png)

> 🔼 The SYSGEN pipeline consists of four phases.  Phase 1 gathers SFT datasets lacking system messages and uses open-source LLMs to generate system messages with eight key functionality tags. Phase 2 filters out incorrectly generated tags and reorganizes them for consistency. Phase 3 employs an LLM-as-a-judge approach with self-model feedback to remove empty, overly specific, or unnatural phrases. Finally, Phase 4 removes tags to create natural system messages and generates new, aligned assistant responses along with user instructions.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overall SysGen data construction pipeline. Our pipeline consists of four phases: (Phase 1) We gather SFT datasets which do not contain system messages and use open-source models to generate system messages with manually selected eight key fuctionality tags. (Phase 2) We then remove incorrectly generated tag tokens and reorganize tags with phrases in a predefined order for consistency. (Phase 3) We use a LLM-as-a-judge approach with self-model feedback to filter out empty, overly specific, and unnatural phrases. (Phase 4) We finally remove tags to create natural system messages and generate new responses along with the user instructions.
> </details>



![](https://arxiv.org/html/2502.11330/x2.png)

> 🔼 This figure displays the results of a comparative analysis using GPT-4 to determine which response, the original or the newly generated one, is more appropriate for a given user query. The y-axis represents the percentage, indicating the likelihood of GPT-4 selecting the newly generated response as superior. Ideally, this percentage should be above 50%, suggesting that the newly generated responses are indeed better aligned with user intent. The chart presents the comparative results across various datasets, offering a visual representation of the model's effectiveness in generating more appropriate responses.
> <details>
> <summary>read the caption</summary>
> Figure 3:  A statistic that verifies whether the newly-generated answer is more suitable for the user query than the original answer. It records the probability that GPT-4o would respond with the newly-generated answer being better than the original answer (the probability should ideally exceed 50%).
> </details>



![](https://arxiv.org/html/2502.11330/x3.png)

> 🔼 This figure displays the results of an evaluation performed using GPT-4, a large language model, to assess the alignment between newly generated system messages and their corresponding assistant responses.  The evaluation involved 20 samples from each of several data sources, resulting in a total of 100 samples per model. The results visually represent the degree of alignment, likely showing the percentage of responses deemed aligned or not aligned with their corresponding system messages.
> <details>
> <summary>read the caption</summary>
> Figure 4:  The GPT4o LLM-as-a-judge results of measuring the alignment between generated system messages and new assistant responses. We use 20 samples for each data source which sums up to 100 samples in total per models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">Models</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.2.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.1.1.1"># of instances</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.1.2.1">(Original → P2 Filtering → P4 Answer Generation)</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2">806,796 → 602,750 (74.7%) → 586,831 (72.7%)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.1">Qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2">806,796 → 806,602 (99.9%) → 775,830 (96.2%)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.4.1">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.4.2">806,796 → 774,613 (96.0%) → 773,878 (95.9%)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the number of data instances remaining after each processing stage of the SYSGEN pipeline and the corresponding percentage for various open-source language models.  The stages include initial data gathering, filtering, and the generation of new assistant responses.  It shows how the data size changes throughout the SYSGEN data augmentation process and provides a measure of data retention for each model.
> <details>
> <summary>read the caption</summary>
> Table 2: We provide remaining instances and percentage after adopting SysGen data per open-source models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.2.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.1.1.1"># of instances</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.2.1.2.1">(Original → P2 Filtering → P4 Answer Generation)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the Multifacet benchmark, which assesses how well different language models align with both system messages and user instructions when generating responses.  The benchmark scores range from 1 to 5, with higher scores indicating better alignment.  The table includes results for both proprietary models (like GPT-3.5 and GPT-4) and open-source models (such as LLaMA, Qwen, and Phi-4).  It also shows the improvement achieved by fine-tuning open-source models on data generated using the SysGen pipeline.  The results marked with † were taken directly from the original Multifacet paper by Lee et al., 2024.
> <details>
> <summary>read the caption</summary>
> Table 3: Multifacet benchmark evaluates how well a model aligns with both the system message and user instruction when generating responses. We provide baseline models (proprietary and open-source), models that trained on data generated using SysGen. A higher score is better and the maximum score is up to 5. ††\dagger† signifies the results were taken from the Multifacet (Lee et al., 2024) paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.3">
<tr class="ltx_tr" id="S4.T3.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.2" rowspan="2"><span class="ltx_text" id="S4.T3.3.3.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.3.4.2.1.1">
<span class="ltx_tr" id="S4.T3.3.3.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.2.1.1.1.1.1">Parameter</span></span></span>
<span class="ltx_tr" id="S4.T3.3.3.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.4.2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.2.1.1.2.1.1">Scale</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T3.3.3.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.3.1">Multifacet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.4.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.4.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.1.1">AlpacaEval</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.2.1">FLASK</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.3.1">Koala</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.5.5.1">Self-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.6.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.6.1.1">Proprietary Models</span></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.8"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.1.1">GPT-3.5-Turbo-0125<math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.3">4.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.4">3.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.5">4.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.6">3.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.7">3.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.8">3.91</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T3.2.2.2.1">GPT-4-0613<math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.3">4.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.4">4.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.5">4.18</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.6">4.16</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.7">4.13</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.8">4.10</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.3.1">GPT-4-Turbo-0125<math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3">4.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.4">4.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.5">4.61</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.6">4.45</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.7">4.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.8">4.35</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.7.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.7.1.1">Open-Source Models</span></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.4"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.5"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.6"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.7"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.7.8"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.8.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.3">4.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.4">3.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.5">4.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.6">4.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.7">4.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.8.8">4.12</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.9">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.9.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.3">4.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.4">4.07</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.5">4.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.6">4.27</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.7">4.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.8">4.26</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.10">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.10.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.3">4.53</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.4">4.24</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.5">4.51</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.6">4.39</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.7">4.40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.8">4.41</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.11">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S4.T3.3.3.11.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.11.1.1">Open-Source Models (Fine-tuning on <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.3.3.11.1.1.1">SysGen</span> dataset)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.3.3.12.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.3">4.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.4">3.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.5">4.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.6">4.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.7">4.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.12.8">4.21</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.13">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.13.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.2">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.3">4.40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.4">4.11</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.5">4.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.6">4.22</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.7">4.25</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.13.8">4.28</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.3.3.14.1">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.2">14B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.3">4.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.4">4.63</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.5">4.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.6">4.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.7">4.49</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.14.8">4.54</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of knowledge distillation (KD) experiments.  The experiments used data generated by the SYSGEN pipeline, specifically using the Phi-4 model as the source.  The table likely shows performance metrics (e.g., accuracy, F1-score) on a benchmark dataset for various open-source language models, both before and after knowledge distillation from the SYSGEN-generated data. This demonstrates the effectiveness of the SYSGEN-generated data in improving model performance, even when the models weren't originally trained with system messages.
> <details>
> <summary>read the caption</summary>
> Table 4:  We conduct a knowledge distillation (KD) experiments leveraging data generated by SysGen pipeline using Phi-4.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.2.2" rowspan="2"><span class="ltx_text" id="S5.T4.1.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T4.1.1.2.2.1.1">
<span class="ltx_tr" id="S5.T4.1.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.1.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.2.1.1.1.1.1">Parameter</span></span></span>
<span class="ltx_tr" id="S5.T4.1.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.1.1.2.2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.2.1.1.2.1.1">Scale</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S5.T4.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.3.1">Multifacet</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.2.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.4.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.1.1">AE</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.2.1">FL</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.3.1">Ko</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.4.1">MT</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.3.5.1">SI</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.4.1"><span class="ltx_text ltx_font_italic" id="S5.T4.1.1.4.1.1">Open-Source Models</span></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.2"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.3"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.4"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.6"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.7"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.1.1.4.8"></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.5.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.2">10.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.3">3.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.4">3.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.5">3.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.6">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.7">3.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.5.8">3.19</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T4.1.1.6.1">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.2">9B</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.3">4.10</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.4">3.80</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.5">4.26</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.6">4.15</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.7">3.92</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.6.8">4.05</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="8" id="S5.T4.1.1.1.1">
<span class="ltx_text ltx_font_italic" id="S5.T4.1.1.1.1.1">Open-source Models</span> <math alttext="+" class="ltx_Math" display="inline" id="S5.T4.1.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.1.m1.1a"><mo id="S5.T4.1.1.1.1.m1.1.1" xref="S5.T4.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.1.m1.1b"><plus id="S5.T4.1.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.1.m1.1d">+</annotation></semantics></math> <span class="ltx_text ltx_font_italic" id="S5.T4.1.1.1.1.2">KD (Fine-tuning on <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T4.1.1.1.1.2.1">SysGen</span> dataset)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.1.1.7.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.2">10.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.3">3.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.4">3.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.5">3.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.6">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.7">3.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.7.8">3.76 (+0.57)</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.1.1.8.1">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.2">9B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.3">4.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.4">4.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.5">4.30</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.6">4.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.7">4.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.8.8">4.23 (+0.18)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the performance of various open-source language models on the Open LLM Leaderboard 2 benchmark.  The models were tested under different conditions:  using their original, unmodified weights; fine-tuned on standard supervised fine-tuning (SFT) datasets; fine-tuned on datasets augmented with system messages generated by the SYSGEN pipeline; and finally, models that underwent knowledge distillation using data from the SYSGEN pipeline. The key finding highlighted is that incorporating system messages into the training process does not cause a substantial decrease in the performance on unseen benchmarks, indicating that the SYSGEN pipeline successfully enhances model performance without negative side effects.
> <details>
> <summary>read the caption</summary>
> Table 5: We utilize the Open LLM Leaderboard 2 score as the unseen benchmark. This reveals the key finding that adding system messages to existing SFT datasets does not lead to significant performance degradation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.1.1">
<tr class="ltx_tr" id="S5.T5.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.2.2" rowspan="2"><span class="ltx_text" id="S5.T5.1.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T5.1.1.2.2.1.1">
<span class="ltx_tr" id="S5.T5.1.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.1.1.1.1.1">Parameter</span></span></span>
<span class="ltx_tr" id="S5.T5.1.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.1.1.2.2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.1.1.2.1.1">Scale</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S5.T5.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.3.1">Unseen Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.2.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.4.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.1.1">MMLU</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.2.1">MMLU-Pro</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.3.1">ARC-c</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.4.1">GPQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.5.1">HellaSwag</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.6.1">IFEVAL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.7.1">MATHQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.3.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.8.1">BBH</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S5.T5.1.1.4.1"><span class="ltx_text ltx_font_italic" id="S5.T5.1.1.4.1.1">Open-Source Models</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.5.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.2">10.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.3">63.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.4">30.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.5">63.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.6">30.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.7">86.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.8">38.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.9">36.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.10">37.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.5.11">48.31</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.6.1">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.2">9B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.3">73.27</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.4">32.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.5">67.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6">31.05</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.7">81.92</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.8">74.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.9">38.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.10">41.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.11">55.31</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.7.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.3">67.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.4">40.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.5">54.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.6">34.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7">79.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.8">50.71</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.9">39.53</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.10">70.85</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.11">54.83</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.8.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.3">79.73</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.4">51.22</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.5">67.39</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.6">45.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.7">82.31</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8">79.83</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.9">42.12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.10">78.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.11">65.79</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.9.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.3">84.56</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.4">70.12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.5">68.26</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.6">55.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.7">84.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.8">62.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9">48.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.10">79.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.11">69.37</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S5.T5.1.1.10.1"><span class="ltx_text ltx_font_italic" id="S5.T5.1.1.10.1.1">Open-Source Models (Fine-tuning on original SFT Dataset)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.11.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.2">10.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.3">62.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.4">29.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.5">58.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.6">29.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.7">81.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.8">31.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.9">37.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.10">32.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.11.11">45.30 (-3.01)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.12">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.12.1">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.2">9B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.3">71.85</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.4">31.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.5">62.57</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.6">30.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.7">77.54</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.8">69.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.9">39.12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.10">37.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.12.11">52.47 (-2.84)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.13">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.13.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.3">65.34</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.4">36.85</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.5">54.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.6">33.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.7">77.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.8">35.64</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.9">40.03</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.10">62.83</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.11">50.85 (-3.98)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.14">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.14.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.3">75.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.4">49.85</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.5">66.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.6">43.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.7">80.99</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.8">62.57</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.9">43.28</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.10">71.17</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.11">61.82 (-3.97)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.15">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.15.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.3">80.27</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.4">66.58</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.5">66.27</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.6">52.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.7">83.39</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.8">55.83</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.9">49.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.10">75.49</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.15.11">66.33 (-6.04)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S5.T5.1.1.16.1"><span class="ltx_text ltx_font_italic" id="S5.T5.1.1.16.1.1">Open-Source Models (Fine-tuning on <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T5.1.1.16.1.1.1">SysGen</span> dataset)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.17.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.3">66.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.4">39.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.5">54.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.6">34.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.7">78.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.8">46.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.9">42.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.10">68.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.17.11">54.02 (-0.81)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.18">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.18.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.3">78.92</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.4">43.38</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.5">66.82</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.6">44.46</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.7">80.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.8">74.59</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.9">43.23</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.10">76.28</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.11">63.58 (-2.20)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.19">
<td class="ltx_td ltx_align_left" id="S5.T5.1.1.19.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.2">14B</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.3">83.27</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.4">68.77</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.5">67.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.6">55.18</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.7">84.31</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.8">57.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.9">50.23</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.10">77.12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.19.11">68.08 (-1.29)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="11" id="S5.T5.1.1.1.1">
<span class="ltx_text ltx_font_italic" id="S5.T5.1.1.1.1.1">Open-source Models</span> <math alttext="+" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.m1.1.1" xref="S5.T5.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><plus id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">+</annotation></semantics></math> <span class="ltx_text ltx_font_italic" id="S5.T5.1.1.1.1.2">Knowledge Distillation (Fine-tuning on <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S5.T5.1.1.1.1.2.1">SysGen</span> dataset))</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.20.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.2">10.7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.3">59.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.4">29.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.5">62.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.6">30.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.7">85.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.8">34.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.9">38.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.10">35.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.11">47.12 (-1.19)</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.21">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.1.1.21.1">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.2">9B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.3">72.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.4">31.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.5">66.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.6">30.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.7">81.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.8">71.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.9">40.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.10">40.38</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.1.1.21.11">54.37 (-0.94)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different approaches to using system messages and their impact on model performance.  The study examines four conditions: (1) No system message, using the original supervised fine-tuning (SFT) dataset; (2) A common system message, where a generic prompt like 'You are a helpful AI assistant' is used; (3) A system message generated by the SYSGEN pipeline but without the newly generated assistant response, to isolate the impact of the system message itself; (4) The full SYSGEN approach, utilizing both the generated system message and the newly generated assistant response. The results show that simply using a generic system message doesn't significantly improve the model, while the complete SYSGEN method yields better performance on the Multifacet benchmark and avoids substantial degradation on unseen benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation studies of using system message and assistant’s response. Using a common system message or generated system message does not provide insightful difference. Newly-generated answer and its corresponding system message can increase system abilities with lower decrease in unseen benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1">
<tr class="ltx_tr" id="S6.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1.1.2.1">
<tr class="ltx_tr" id="S6.T6.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1.1.1.1">Multifacet</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1.2.1.1">(Average)</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T6.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1.1.3.1">
<tr class="ltx_tr" id="S6.T6.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.3.1.1.1.1">Unseen Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.3.1.2.1.1">(Average)</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.2.1"><span class="ltx_text ltx_font_italic" id="S6.T6.1.1.2.1.1">No System Message</span></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.2.2"></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.2.3"></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.3.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.2">3.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.3.3">50.85</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="S6.T6.1.1.4.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.2">4.26</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.3">66.33</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S6.T6.1.1.5.1.1">Common System Message</span></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.5.2"></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.5.3"></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.6.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.6.2">3.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.6.3">51.23</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="S6.T6.1.1.7.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.2">4.23</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.7.3">66.52</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.8.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T6.1.1.8.1.1">SysGen<span class="ltx_text ltx_font_italic" id="S6.T6.1.1.8.1.1.1"> without A’</span></span></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.8.2"></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.8.3"></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.9.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.9.2">4.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.9.3">51.89</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.10">
<td class="ltx_td ltx_align_left" id="S6.T6.1.1.10.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.10.2">4.38</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.10.3">66.12</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.11.1"><span class="ltx_text ltx_font_smallcaps" id="S6.T6.1.1.11.1.1">SysGen</span></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.11.2"></td>
<td class="ltx_td ltx_border_t" id="S6.T6.1.1.11.3"></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T6.1.1.12.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.12.2">4.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.12.3">54.02</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T6.1.1.13.1">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.1.1.13.2">4.54</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T6.1.1.13.3">68.08</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment investigating the impact of incorporating system messages into user instructions.  It shows that performance tends to decrease when system messages are included within the user's instructions, rather than being presented separately in the designated system message field. The degree of this performance decrease is impacted by the model's training history with system messages—models trained extensively on system messages show less of a performance decline when system messages are included in the user instruction.  The table further indicates that knowledge distillation (KD) techniques were employed, highlighting this method's role in the experiment.
> <details>
> <summary>read the caption</summary>
> Table 7: There is a tendency for the score to decrease when the system message is reflected in the user instruction. The more a model is trained on system messages, the better it is to place them in the system role. KD indicates the knowledge distillation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1.1.2.1">
<tr class="ltx_tr" id="S6.T6.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1.1.1.1">Multifacet</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.2.1.2.1.1">(Average)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of the system message generation phase within the SYSGEN pipeline.  It details the frequency of each of eight key functionality tags (Role, Content, Task, Action, Style, Background, Tool, Format) generated by the pipeline across three different open-source language models (LLaMA-3.1-8B-instruct, Qwen2.5-14b-instruct, and Phi-4).  The counts represent the number of times each tag successfully appeared in the generated system messages. This data offers insights into the effectiveness and balance of the tag generation process within the SYSGEN pipeline for each model.
> <details>
> <summary>read the caption</summary>
> Table 8: Statistics of generated tags using SysGen pipeline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T6.1.1.1.3.1">
<tr class="ltx_tr" id="S6.T6.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.3.1.1.1.1">Unseen Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T6.1.1.1.3.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.3.1.2.1.1">(Average)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a statistical overview of several Supervised Fine-Tuning (SFT) datasets.  For each dataset, it shows the average length of user queries and model responses, indicates whether system messages are present in the dataset, and lists the domains covered by the data within the dataset. This allows for a comparison of dataset characteristics and helps to understand the nature of the training data used for various large language models.
> <details>
> <summary>read the caption</summary>
> Table 9: Data statistics of SFT datasets. We provide the average length of query and answer, the presence of system messages, and covering domains.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T7.1.1">
<tr class="ltx_tr" id="S6.T7.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.2.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T7.1.1.2.2">
<table class="ltx_tabular ltx_align_middle" id="S6.T7.1.1.2.2.1">
<tr class="ltx_tr" id="S6.T7.1.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.2.2.1.1.1.1">Multifacet Average</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.2.2.1.2.1.1">(Use system role → Use user role)</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.1.1.3.1"><span class="ltx_text ltx_font_italic" id="S6.T7.1.1.3.1.1">Open-source Models</span></td>
<td class="ltx_td ltx_border_t" id="S6.T7.1.1.3.2"></td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.1.1.4.1">Solar-10.7B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.1.4.2">3.19 → 2.98</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.5">
<td class="ltx_td ltx_align_left" id="S6.T7.1.1.5.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.5.2">4.12 → 4.09</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.6">
<td class="ltx_td ltx_align_left" id="S6.T7.1.1.6.1">Qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.6.2">4.26 → 4.13</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.7">
<td class="ltx_td ltx_align_left" id="S6.T7.1.1.7.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.7.2">4.41 → 4.26</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S6.T7.1.1.8.1">
<span class="ltx_text ltx_font_italic" id="S6.T7.1.1.8.1.1">Open-source Models</span> (with <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T7.1.1.8.1.2">SysGen</span>)</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.1.1.9.1">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.1.9.2">4.21 → 4.13</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.10">
<td class="ltx_td ltx_align_left" id="S6.T7.1.1.10.1">Qwen2.5-14B-instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.10.2">4.28 → 4.16</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.11">
<td class="ltx_td ltx_align_left" id="S6.T7.1.1.11.1">Phi-4</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.11.2">4.54 → 4.38</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S6.T7.1.1.1.1">
<span class="ltx_text ltx_font_italic" id="S6.T7.1.1.1.1.1">Open-source Models</span> <math alttext="+" class="ltx_Math" display="inline" id="S6.T7.1.1.1.1.m1.1"><semantics id="S6.T7.1.1.1.1.m1.1a"><mo id="S6.T7.1.1.1.1.m1.1.1" xref="S6.T7.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T7.1.1.1.1.m1.1b"><plus id="S6.T7.1.1.1.1.m1.1.1.cmml" xref="S6.T7.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T7.1.1.1.1.m1.1d">+</annotation></semantics></math> KD (with <span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S6.T7.1.1.1.1.2">SysGen</span>)</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S6.T7.1.1.12.1">Solar-10.7b-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T7.1.1.12.2">3.76 → 3.64</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a sample of system messages and corresponding assistant responses generated using the SYSGEN pipeline.  It showcases the pipeline's ability to create diverse and contextually relevant system messages from a dataset that originally lacked them. The example shown originates from the Airoboros dataset (Jondurbin, 2024), illustrating the system messages' impact on aligning assistant responses with user instructions.
> <details>
> <summary>read the caption</summary>
> Table 10: Generated instance of SysGen data. The original data is originated from Airoboros (Jondurbin, 2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T7.1.1.2.2.1">
<tr class="ltx_tr" id="S6.T7.1.1.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.2.2.1.1.1.1">Multifacet Average</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T7.1.1.2.2.1.2.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.2.2.1.2.1.1">(Use system role → Use user role)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 shows the prompt used to instruct open-source large language models (LLMs) to generate system messages.  The prompt provides examples of well-formed system messages, highlighting eight key functionalities (task, tool, style, action, content, background, role, format) that should be included. The instruction is to generate a system message based on a given conversational history, using the specified formatting for each functionality.  The prompt is designed to guide the model in creating effective and relevant system messages by providing clear examples and instructions on how to structure the output.
> <details>
> <summary>read the caption</summary>
> Table 11: The prompt of generating system messages using open-source models. Italic text part such as “Conversational History” is filled with input text.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.1.1">
<tr class="ltx_tr" id="A1.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T8.1.1.1.1">Tags</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.1.1.1.2">LLaMA-3.1-8B-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.1.1.1.3">Qwen2.5-14b-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.1.1.1.4">Phi-4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T8.1.1.2.1">Role</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.2">576,341</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.3">753,579</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.2.4">745,751</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.3.1">Content</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.2">580,231</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.3">739,892</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.3.4">743,311</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.4.1">Task</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.2">579,558</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.3">765,331</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.4.4">735,298</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.5">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.5.1">Action</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.2">495,301</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.3">382,358</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.5.4">662,589</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.6.1">Style</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.2">283,579</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.3">598,553</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.6.4">603,918</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.7">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.7.1">Background</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.2">293,791</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.3">539,757</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.7.4">553,791</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.8">
<td class="ltx_td ltx_align_left" id="A1.T8.1.1.8.1">Tool</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.2">10,238</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.3">132,038</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.8.4">90,989</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T8.1.1.9.1">Format</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.1.9.2">327,909</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.1.9.3">401,593</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.1.1.9.4">538,973</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used in Phase 3 of the SYSGEN pipeline.  The prompt instructs an LLM to act as a verifier, evaluating the accuracy of tags applied to system messages.  The LLM is given a 'filtered system message' (a cleaned-up version) and an 'annotated system message' (the original, tagged version). It must compare these, assessing each tag's accuracy based on eight specified functionalities (task, tool, style, action, content, background, role, format). The LLM then provides feedback for each tag, labeling them as 'Good', 'Bad', or 'None' to indicate whether the tag is correct, incorrect, or missing.
> <details>
> <summary>read the caption</summary>
> Table 12: The prompt of verification of key functionalities (phase 3) using open-source models with annotated system messages and filtered system messages. Italic text part is filled with input text.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.1.1">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.2"># of instances</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.3">Avg. Query Length</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.4">Avg. Answer Length</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.5">Containing System Message</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T9.1.1.1.6">Covering Domains</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T9.1.1.2.1">Capybara</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.2">41,301</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.3">300.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.4">1423.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.5">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.6">reasoning, logic, subjects, conversations, pop-culture, STEM</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T9.1.1.3.1">Airoboros</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2">59,277</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.3">507.26</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.4">1110.62</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.5">simple system message</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.6">mathematics, MATHJSON, character’s descriptions</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T9.1.1.4.1">OrcaMath</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.2">200,035</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3">238.87</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.4">878.43</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.5">✗</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.6">school mathematics, math word problems</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.5">
<td class="ltx_td ltx_align_left" id="A1.T9.1.1.5.1">Magicoder</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.2">111,183</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.3">652.53</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4">1552.41</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.5">✗</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.6">code solution</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T9.1.1.6.1">MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.1.1.6.2">395,000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.1.1.6.3">213.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.1.1.6.4">498.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.1.1.6.5">✗</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.1.1.6.6">mathematics</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt used to assess the quality of responses generated by the system.  It outlines the method for using a proprietary language model (like GPT-4) to compare an original response against a newly generated response. The user provides an instruction and two responses—one original and one new. The evaluator uses the prompt to determine which response better aligns with the given instruction.
> <details>
> <summary>read the caption</summary>
> Table 13: The prompt of answer quality check through the proprietary model (e.g., GPT4o). Italic text part is filled with input text.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11330/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11330/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}