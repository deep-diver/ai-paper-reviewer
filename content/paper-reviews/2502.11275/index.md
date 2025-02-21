---
title: "Cuckoo: An IE Free Rider Hatched by Massive Nutrition in LLM's Nest"
summary: "Cuckoo: a novel information extraction (IE) model leverages LLM pre-training data, achieving superior performance in few-shot settings by reframing next-token prediction as token extraction."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Extraction", "🏢 UC San Diego",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11275 {{< /keyword >}}
{{< keyword icon="writer" >}} Letian Peng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11275" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11275" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11275/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Information Extraction (IE) models have lagged behind Large Language Models (LLMs) due to the scarcity of high-quality pre-training data.  Traditional IE pre-training requires labor-intensive annotation of data in specific formats, unlike LLMs which can use any token in a sentence for pre-training.  This makes scaling up IE pre-training challenging.

This research introduces Cuckoo, a novel approach that addresses these issues.  Instead of creating new data, **Cuckoo cleverly repurposes the massive amounts of data already used to train LLMs.** It does this by adapting the next-token prediction (NTP) paradigm used in LLM training to create a new paradigm called Next Tokens Extraction (NTE).  This method allows Cuckoo to learn effectively from LLM data, eliminating the need for additional, expensive data annotation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The proposed 'Next Tokens Extraction' (NTE) paradigm uses LLM pre-training and post-training data to effectively train an IE model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Cuckoo model outperforms existing pre-trained IE models in few-shot scenarios for traditional and complex instruction-following IE tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cuckoo demonstrates efficiency improvements in terms of parameters and inference time compared to NTP-based LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it presents a novel and efficient method for information extraction (IE) pre-training, leveraging the massive datasets used for Large Language Models (LLMs).  This addresses a major bottleneck in IE research—the scarcity of high-quality, pre-trained data. **The 'free-rider' approach offers significant cost and time savings**, paving the way for more accessible and advanced IE models. The findings will be especially valuable for researchers seeking to improve their IE models without the huge resource investment associated with traditional methods.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11275/x1.png)

> 🔼 The figure illustrates how Cuckoo, an information extraction (IE) model, leverages the vast amount of data used to train large language models (LLMs). Instead of requiring separate, painstakingly annotated data for training, Cuckoo re-purposes the next-token prediction (NTP) task of LLMs.  Specifically, it identifies duplicate spans of text within the LLM's training data and frames the prediction of those spans as an extraction task. By assigning BIO tags (Begin, Inside, Outside) to these spans, Cuckoo efficiently creates a large, diverse training dataset.  This allows it to adapt to various IE tasks during inference simply by modifying the prompt. This makes Cuckoo a flexible and effective IE model that benefits from ongoing LLM advancements without requiring extra manual annotation.
> <details>
> <summary>read the caption</summary>
> Figure 1: \ourtakes a free ride on LLM resources (e.g., C4 and TuluV3 (Lambert et al., 2024)) by formalizing next token prediction for duplicative spans as extraction in the BIO paradigm. During the inference, the prompts can be adjusted to different extractive tasks, making \oura versatile IE model.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1.1.1" style="width:34.1pt;">Level</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.2.1.1" style="width:156.5pt;">Example</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.1.1.1" style="width:34.1pt;">Basic</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.2.1.1" style="width:156.5pt;">Organization</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.3.2.1.1">
<span class="ltx_p" id="S4.T1.1.1.3.2.1.1.1" style="width:34.1pt;">Query</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.3.2.2.1">
<span class="ltx_p" id="S4.T1.1.1.3.2.2.1.1" style="width:156.5pt;">Which organization launched the campaign?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T1.1.1.4.3.1" rowspan="3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.3.1.1">
<span class="ltx_p" id="S4.T1.1.1.4.3.1.1.1" style="width:34.1pt;"><span class="ltx_text" id="S4.T1.1.1.4.3.1.1.1.1">Instruction</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T1.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.3.2.1">
<span class="ltx_p" id="S4.T1.1.1.4.3.2.1.1" style="width:156.5pt;">Organization (Disambiguation: The organization entity must be a subject of any active action in the context.)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table categorizes information extraction (IE) tasks into three levels of complexity based on the level of understanding required to perform the task.  Level 1 (Basic IE) involves simple entity extraction, such as named entity recognition, where the task is clearly defined by a single label. Level 2 (Query-based IE) requires understanding a sentence-level query, such as machine reading comprehension, where the goal is to extract information to answer a question. Level 3 (Instruction-following IE) necessitates understanding complex extraction instructions, similar to instructions given to large language models (LLMs), demanding a deeper level of comprehension.
> <details>
> <summary>read the caption</summary>
> Table 1: IE targets of different understanding levels.
> </details>





### In-depth insights


#### LLM-IE Synergy
LLM-IE synergy explores the powerful combination of Large Language Models (LLMs) and Information Extraction (IE).  **LLMs provide the contextual understanding and fluency needed to improve IE's accuracy and efficiency**, especially in complex scenarios where traditional rule-based or machine learning methods struggle.  Conversely, **IE enhances LLMs by providing structured data that improves reasoning and knowledge grounding**. This bidirectional improvement creates a potent feedback loop: better IE fuels superior LLM performance, which in turn leads to more effective IE.  The key lies in **finding innovative ways to leverage LLMs' strengths for IE tasks**, such as utilizing LLMs' pre-trained knowledge or fine-tuning them for specific IE applications.  This synergy also addresses the challenges of data scarcity in IE by enabling the creation of large-scale, high-quality training datasets derived from the massive datasets used for LLM training.  **The future of LLM-IE synergy involves exploring efficient transfer learning techniques and developing robust evaluation metrics** that fully capture the benefits of this combined approach.

#### NTE Paradigm
The core of the research paper revolves around the proposed "Next Tokens Extraction" (NTE) paradigm, a novel approach to information extraction (IE).  **NTE cleverly repurposes the next-token prediction (NTP) mechanism, a cornerstone of large language models (LLMs), for the task of IE.** Instead of predicting the next token, NTE identifies tokens already present in the input context and assigns them BIO tags, effectively framing extraction as a modified form of prediction.  This approach allows IE models to directly leverage the massive high-quality data used in LLM training, thus bypassing the need for laborious and costly manual annotation of IE-specific datasets. The significant advantage of this methodology is that it facilitates the creation of a large, diverse, and cost-effective training dataset, leading to enhanced IE model performance, particularly in few-shot scenarios.  Moreover, **NTE enables the IE models to adapt effectively to a range of IE tasks**, from basic entity recognition to complex instruction-following tasks, without requiring extensive retraining or prompt engineering. The adaptability is crucial for efficient and versatile IE systems and is a key strength demonstrated by the Cuckoo model developed in the study.

#### Cuckoo's Edge
The heading "Cuckoo's Edge" aptly captures the paper's central theme: **leveraging the massive datasets of Large Language Models (LLMs)** for Information Extraction (IE) tasks.  The paper cleverly positions IE models as "free riders," benefiting from pre-trained LLM resources without the heavy cost of manual annotation.  This approach, dubbed "Next Token Extraction" (NTE), transforms the LLM's next-token prediction task into an extraction problem, achieving **significant efficiency gains and data scaling**.  The name "Cuckoo," a bird known for its parasitic breeding habits, metaphorically highlights this strategy of resourceful data utilization.  The "edge" thus represents the model's superior performance enabled by this innovative approach. By capitalizing on pre-trained LLM data, Cuckoo demonstrates **scalability and adaptability**, consistently outperforming traditional IE methods, particularly in few-shot learning scenarios. The paper further establishes that Cuckoo's performance improves alongside advancements in LLM training, showcasing its ability to **evolve with ongoing LLM progress** without manual intervention. Therefore, the "Cuckoo's Edge" speaks to the model's competitive advantage due to its efficient use of existing resources and its capacity for future growth. 

#### Scalability & Limits
The scalability and limitations of any Information Extraction (IE) system are crucial.  This paper's approach, using Next Token Extraction (NTE) to leverage Large Language Model (LLM) data, offers significant scalability advantages. **By reframing the problem as token extraction from existing LLM training data**, the need for expensive, manually annotated IE datasets is largely mitigated. This allows the system to readily benefit from advancements in LLM training, achieving scalability without extensive manual effort.  However, **limits exist**; the reliance on duplicated spans within the LLM data for NTE might lead to biases or missed opportunities for novel extraction patterns. The model's performance is intrinsically linked to the quality and diversity of the LLM data. Additionally, while the NTE approach enhances efficiency, it might not fully capture the nuances of complex IE tasks that require sophisticated reasoning.  Further research could explore diversifying data sources,  incorporating specialized label embeddings, and refining the model architecture to fully address potential limitations and further enhance scalability.

#### Future of IE
The future of information extraction (IE) is bright, driven by the synergy between **large language models (LLMs)** and innovative techniques like **next token extraction (NTE)**.  While traditional IE methods face limitations in scaling due to annotation costs, NTE leverages the massive datasets used to train LLMs, providing a cost-effective and efficient way to train powerful IE models.  Future research could explore enhancing NTE by incorporating **label embeddings** for improved efficiency and **advanced model architectures** for greater accuracy and scalability. **Combining diverse data sources**, both pre-trained and post-trained, will lead to more robust and versatile IE models.   The incorporation of **in-context learning** capabilities, already observed in LLMs, offers significant opportunities to adapt IE models to new tasks with minimal training. Lastly, investigation into different **verbalization techniques** for instructing the model will enhance performance and adaptability, paving the way for more human-friendly and powerful IE tools.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11275/x2.png)

> 🔼 Figure 2 illustrates a comparison of several information extraction (IE) pre-training datasets across three key aspects: scale (number of instances), cost (financial resources needed for data acquisition), and diversity (variety of contexts and data sources).  The figure highlights that the dataset used in the Cuckoo model stands out due to its massive scale (102.6M instances), zero cost (leveraging freely available LLM pre-training and post-training data), and high diversity (the model is trained on data from diverse sources, leading to improved adaptability).  Importantly, the Cuckoo dataset's unique characteristic is its ability to evolve with ongoing advancements in large language model (LLM) data preparation. Unlike traditional methods, the Cuckoo dataset requires no additional manual effort to adapt to improvements in LLM training pipelines.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of scale, cost, and diversity among different IE pre-training datasets. Our data collection for \ouris free by converting LLM’s learning resources, which forces the tagger to learn from diverse contexts. \ourcan also evolve with the data collection for LLM’s post-training.
> </details>



![](https://arxiv.org/html/2502.11275/x3.png)

> 🔼 This figure illustrates how the performance of the Cuckoo model improves as it is trained on increasingly larger and more diverse datasets from LLMs' post-training.  The x-axis represents different dimensions of evaluation for information extraction (IE) tasks, while the y-axis shows the performance scores. The shaded region for each dimension represents the range from two standard deviations below the mean (μ-2σ) to two standard deviations above the mean (μ+2σ).  The figure visually demonstrates Cuckoo's ability to evolve its performance in various aspects of IE by leveraging improvements in LLM training data, highlighting its 'free rider' advantage.
> <details>
> <summary>read the caption</summary>
> Figure 3: The evolution of Cuckoo with LLM’s post-training resources. Domain [μ−2⁢σ,μ+2⁢σ]𝜇2𝜎𝜇2𝜎[\mu-2\sigma,\mu+2\sigma][ italic_μ - 2 italic_σ , italic_μ + 2 italic_σ ] is annotated under each evaluation dimension.
> </details>



![](https://arxiv.org/html/2502.11275/x4.png)

> 🔼 Figure 4 investigates the in-context learning capabilities of Cuckoo and other IE models. In-context learning refers to a model's ability to adapt to a new task using only a few examples provided within the input context. The figure compares Cuckoo's performance on two datasets (CONLL2003 and SQUAD) with and without in-context examples against the performance of other IE models, such as NuNER and MRQA. It demonstrates that Cuckoo exhibits in-context learning ability, improving its performance with the addition of in-context examples. Conversely, other IE models pre-trained using different resources do not show a similar ability. This highlights Cuckoo's unique capacity to adapt and learn in context, a characteristic often associated with large language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: In-context tagging ability emerges in Cuckoo but not in IE models pre-trained by other resources.
> </details>



![](https://arxiv.org/html/2502.11275/x5.png)

> 🔼 This figure displays the impact of increasing the size of the training dataset on the performance of the Cuckoo model.  Two separate scaling experiments are shown: one starting with 4.1M instances from the C4 dataset, and another scaling up to 100M instances. The plots show how performance on three types of information extraction tasks (Basic IE, Query-based IE, and Instruction-following IE) varies with dataset size, demonstrating the effects of data scaling on Cuckoo's capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: The data scaling trend of \ouron the early 4.14.14.14.1M C4 instances and the massive 100100100100M instances.
> </details>



![](https://arxiv.org/html/2502.11275/x6.png)

> 🔼 This figure compares the performance of Cuckoo and several LLMs on few-shot information extraction (IE) tasks.  It shows that Cuckoo, even without extensive fine-tuning, outperforms both open-source and closed-source LLMs across various IE tasks. The results highlight Cuckoo's superior efficiency and adaptability in learning from limited examples, demonstrating the effectiveness of its next token extraction (NTE) paradigm.
> <details>
> <summary>read the caption</summary>
> Figure 6: The performance comparison between \ourand LLMs on few-shot IE performance.
> </details>



![](https://arxiv.org/html/2502.11275/x7.png)

> 🔼 This figure demonstrates how the performance of different pre-trained information extraction (IE) models changes as the amount of adaptive supervision data increases.  Adaptive supervision refers to fine-tuning the model on a small set of examples for a specific task. The experiment uses the CoNLL2003 dataset and evaluates performance using the F1 score. The results show that as the number of training examples increases, the performance of all models improves. However, Cuckoo and Rainbow Cuckoo demonstrate significantly better scaling-up performance than NuNER, highlighting the effectiveness of the Cuckoo's pre-training approach.
> <details>
> <summary>read the caption</summary>
> Figure 7: The scaling-up performance on adaptive supervision from CoNLL2003 of pre-trained IE models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.102.102">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.102.102.103.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" colspan="2" id="S4.T2.102.102.103.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.102.102.103.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.102.102.103.1.2">Named Entity Recognition</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.102.102.103.1.3">Relation Extraction</td>
</tr>
<tr class="ltx_tr" id="S4.T2.102.102.104.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.1">CoNLL2003</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.2">BioNLP2004</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.3">MIT-Restaurant</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.4">MIT-Movie</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.5">Avg.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.6">CoNLL2004</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.7">ADE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.102.102.104.2.8">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.8.8.8.9" rowspan="2"><span class="ltx_text" id="S4.T2.8.8.8.9.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.8.8.8.9.1.1" style="width:4.3pt;height:17.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.8pt;transform:translate(-6.75pt,-6.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T2.8.8.8.9.1.1.1">zero</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.8.8.8.10"><span class="ltx_ERROR undefined" id="S4.T2.8.8.8.10.1">\our</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1"><math alttext="35.38" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mn id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml">35.38</mn><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><cn id="S4.T2.1.1.1.1.m1.1.1.cmml" type="float" xref="S4.T2.1.1.1.1.m1.1.1">35.38</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">35.38</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">35.38</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2"><math alttext="23.62" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mn id="S4.T2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.m1.1.1.cmml">23.62</mn><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><cn id="S4.T2.2.2.2.2.m1.1.1.cmml" type="float" xref="S4.T2.2.2.2.2.m1.1.1">23.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">23.62</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">23.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3.3"><math alttext="8.11" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><mn id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml">8.11</mn><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><cn id="S4.T2.3.3.3.3.m1.1.1.cmml" type="float" xref="S4.T2.3.3.3.3.m1.1.1">8.11</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">8.11</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">8.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4"><math alttext="9.06" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.4.m1.1a"><mn id="S4.T2.4.4.4.4.m1.1.1" xref="S4.T2.4.4.4.4.m1.1.1.cmml">9.06</mn><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m1.1b"><cn id="S4.T2.4.4.4.4.m1.1.1.cmml" type="float" xref="S4.T2.4.4.4.4.m1.1.1">9.06</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m1.1c">9.06</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m1.1d">9.06</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.5"><math alttext="19.04" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.5.m1.1a"><mn id="S4.T2.5.5.5.5.m1.1.1" xref="S4.T2.5.5.5.5.m1.1.1.cmml">19.04</mn><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.1b"><cn id="S4.T2.5.5.5.5.m1.1.1.cmml" type="float" xref="S4.T2.5.5.5.5.m1.1.1">19.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.1c">19.04</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.1d">19.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6.6"><math alttext="48.95" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><mn id="S4.T2.6.6.6.6.m1.1.1" xref="S4.T2.6.6.6.6.m1.1.1.cmml">48.95</mn><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><cn id="S4.T2.6.6.6.6.m1.1.1.cmml" type="float" xref="S4.T2.6.6.6.6.m1.1.1">48.95</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">48.95</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">48.95</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.7"><math alttext="34.67" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.7.m1.1a"><mn id="S4.T2.7.7.7.7.m1.1.1" xref="S4.T2.7.7.7.7.m1.1.1.cmml">34.67</mn><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m1.1b"><cn id="S4.T2.7.7.7.7.m1.1.1.cmml" type="float" xref="S4.T2.7.7.7.7.m1.1.1">34.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m1.1c">34.67</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m1.1d">34.67</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8.8"><math alttext="41.81" class="ltx_Math" display="inline" id="S4.T2.8.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.8.m1.1a"><mn id="S4.T2.8.8.8.8.m1.1.1" xref="S4.T2.8.8.8.8.m1.1.1.cmml">41.81</mn><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.8.m1.1b"><cn id="S4.T2.8.8.8.8.m1.1.1.cmml" type="float" xref="S4.T2.8.8.8.8.m1.1.1">41.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.8.m1.1c">41.81</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.8.m1.1d">41.81</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.16.16.16.9">Rainbow <span class="ltx_ERROR undefined" id="S4.T2.16.16.16.9.1">\our</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.1"><math alttext="38.56" class="ltx_Math" display="inline" id="S4.T2.9.9.9.1.m1.1"><semantics id="S4.T2.9.9.9.1.m1.1a"><mn id="S4.T2.9.9.9.1.m1.1.1" xref="S4.T2.9.9.9.1.m1.1.1.cmml">38.56</mn><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.1.m1.1b"><cn id="S4.T2.9.9.9.1.m1.1.1.cmml" type="float" xref="S4.T2.9.9.9.1.m1.1.1">38.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.1.m1.1c">38.56</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.1.m1.1d">38.56</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.2"><math alttext="22.07" class="ltx_Math" display="inline" id="S4.T2.10.10.10.2.m1.1"><semantics id="S4.T2.10.10.10.2.m1.1a"><mn id="S4.T2.10.10.10.2.m1.1.1" xref="S4.T2.10.10.10.2.m1.1.1.cmml">22.07</mn><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.2.m1.1b"><cn id="S4.T2.10.10.10.2.m1.1.1.cmml" type="float" xref="S4.T2.10.10.10.2.m1.1.1">22.07</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.2.m1.1c">22.07</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.2.m1.1d">22.07</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.3"><math alttext="35.38" class="ltx_Math" display="inline" id="S4.T2.11.11.11.3.m1.1"><semantics id="S4.T2.11.11.11.3.m1.1a"><mn id="S4.T2.11.11.11.3.m1.1.1" xref="S4.T2.11.11.11.3.m1.1.1.cmml">35.38</mn><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.3.m1.1b"><cn id="S4.T2.11.11.11.3.m1.1.1.cmml" type="float" xref="S4.T2.11.11.11.3.m1.1.1">35.38</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.3.m1.1c">35.38</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.3.m1.1d">35.38</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.4"><math alttext="29.53" class="ltx_Math" display="inline" id="S4.T2.12.12.12.4.m1.1"><semantics id="S4.T2.12.12.12.4.m1.1a"><mn id="S4.T2.12.12.12.4.m1.1.1" xref="S4.T2.12.12.12.4.m1.1.1.cmml">29.53</mn><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.4.m1.1b"><cn id="S4.T2.12.12.12.4.m1.1.1.cmml" type="float" xref="S4.T2.12.12.12.4.m1.1.1">29.53</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.4.m1.1c">29.53</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.4.m1.1d">29.53</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.5"><math alttext="31.39" class="ltx_Math" display="inline" id="S4.T2.13.13.13.5.m1.1"><semantics id="S4.T2.13.13.13.5.m1.1a"><mn id="S4.T2.13.13.13.5.m1.1.1" xref="S4.T2.13.13.13.5.m1.1.1.cmml">31.39</mn><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.5.m1.1b"><cn id="S4.T2.13.13.13.5.m1.1.1.cmml" type="float" xref="S4.T2.13.13.13.5.m1.1.1">31.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.5.m1.1c">31.39</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.5.m1.1d">31.39</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.6"><math alttext="53.81" class="ltx_Math" display="inline" id="S4.T2.14.14.14.6.m1.1"><semantics id="S4.T2.14.14.14.6.m1.1a"><mn id="S4.T2.14.14.14.6.m1.1.1" xref="S4.T2.14.14.14.6.m1.1.1.cmml">53.81</mn><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.6.m1.1b"><cn id="S4.T2.14.14.14.6.m1.1.1.cmml" type="float" xref="S4.T2.14.14.14.6.m1.1.1">53.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.6.m1.1c">53.81</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.6.m1.1d">53.81</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.15.15.7"><math alttext="62.01" class="ltx_Math" display="inline" id="S4.T2.15.15.15.7.m1.1"><semantics id="S4.T2.15.15.15.7.m1.1a"><mn id="S4.T2.15.15.15.7.m1.1.1" xref="S4.T2.15.15.15.7.m1.1.1.cmml">62.01</mn><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.7.m1.1b"><cn id="S4.T2.15.15.15.7.m1.1.1.cmml" type="float" xref="S4.T2.15.15.15.7.m1.1.1">62.01</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.7.m1.1c">62.01</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.7.m1.1d">62.01</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.8"><math alttext="57.91" class="ltx_Math" display="inline" id="S4.T2.16.16.16.8.m1.1"><semantics id="S4.T2.16.16.16.8.m1.1a"><mn id="S4.T2.16.16.16.8.m1.1.1" xref="S4.T2.16.16.16.8.m1.1.1.cmml">57.91</mn><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.8.m1.1b"><cn id="S4.T2.16.16.16.8.m1.1.1.cmml" type="float" xref="S4.T2.16.16.16.8.m1.1.1">57.91</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.8.m1.1c">57.91</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.8.m1.1d">57.91</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.24.24.24.9" rowspan="10"><span class="ltx_text" id="S4.T2.24.24.24.9.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.24.24.24.9.1.1" style="width:6.9pt;height:36.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-14.75pt,-14.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T2.24.24.24.9.1.1.1">few-shot</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.24.24.24.10">OPT-C4-TuluV3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.17.17.17.1"><math alttext="50.24" class="ltx_Math" display="inline" id="S4.T2.17.17.17.1.m1.1"><semantics id="S4.T2.17.17.17.1.m1.1a"><mn id="S4.T2.17.17.17.1.m1.1.1" xref="S4.T2.17.17.17.1.m1.1.1.cmml">50.24</mn><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.1.m1.1b"><cn id="S4.T2.17.17.17.1.m1.1.1.cmml" type="float" xref="S4.T2.17.17.17.1.m1.1.1">50.24</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.1.m1.1c">50.24</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.1.m1.1d">50.24</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.2"><math alttext="39.76" class="ltx_Math" display="inline" id="S4.T2.18.18.18.2.m1.1"><semantics id="S4.T2.18.18.18.2.m1.1a"><mn id="S4.T2.18.18.18.2.m1.1.1" xref="S4.T2.18.18.18.2.m1.1.1.cmml">39.76</mn><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.2.m1.1b"><cn id="S4.T2.18.18.18.2.m1.1.1.cmml" type="float" xref="S4.T2.18.18.18.2.m1.1.1">39.76</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.2.m1.1c">39.76</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.2.m1.1d">39.76</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.19.19.19.3"><math alttext="58.91" class="ltx_Math" display="inline" id="S4.T2.19.19.19.3.m1.1"><semantics id="S4.T2.19.19.19.3.m1.1a"><mn id="S4.T2.19.19.19.3.m1.1.1" xref="S4.T2.19.19.19.3.m1.1.1.cmml">58.91</mn><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.3.m1.1b"><cn id="S4.T2.19.19.19.3.m1.1.1.cmml" type="float" xref="S4.T2.19.19.19.3.m1.1.1">58.91</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.3.m1.1c">58.91</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.3.m1.1d">58.91</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.20.20.20.4"><math alttext="56.33" class="ltx_Math" display="inline" id="S4.T2.20.20.20.4.m1.1"><semantics id="S4.T2.20.20.20.4.m1.1a"><mn id="S4.T2.20.20.20.4.m1.1.1" xref="S4.T2.20.20.20.4.m1.1.1.cmml">56.33</mn><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.4.m1.1b"><cn id="S4.T2.20.20.20.4.m1.1.1.cmml" type="float" xref="S4.T2.20.20.20.4.m1.1.1">56.33</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.4.m1.1c">56.33</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.4.m1.1d">56.33</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.5"><math alttext="50.56" class="ltx_Math" display="inline" id="S4.T2.21.21.21.5.m1.1"><semantics id="S4.T2.21.21.21.5.m1.1a"><mn id="S4.T2.21.21.21.5.m1.1.1" xref="S4.T2.21.21.21.5.m1.1.1.cmml">50.56</mn><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.5.m1.1b"><cn id="S4.T2.21.21.21.5.m1.1.1.cmml" type="float" xref="S4.T2.21.21.21.5.m1.1.1">50.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.5.m1.1c">50.56</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.5.m1.1d">50.56</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.22.22.22.6"><math alttext="47.14" class="ltx_Math" display="inline" id="S4.T2.22.22.22.6.m1.1"><semantics id="S4.T2.22.22.22.6.m1.1a"><mn id="S4.T2.22.22.22.6.m1.1.1" xref="S4.T2.22.22.22.6.m1.1.1.cmml">47.14</mn><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.6.m1.1b"><cn id="S4.T2.22.22.22.6.m1.1.1.cmml" type="float" xref="S4.T2.22.22.22.6.m1.1.1">47.14</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.6.m1.1c">47.14</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.6.m1.1d">47.14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.23.23.23.7"><math alttext="45.66" class="ltx_Math" display="inline" id="S4.T2.23.23.23.7.m1.1"><semantics id="S4.T2.23.23.23.7.m1.1a"><mn id="S4.T2.23.23.23.7.m1.1.1" xref="S4.T2.23.23.23.7.m1.1.1.cmml">45.66</mn><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.7.m1.1b"><cn id="S4.T2.23.23.23.7.m1.1.1.cmml" type="float" xref="S4.T2.23.23.23.7.m1.1.1">45.66</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.7.m1.1c">45.66</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.7.m1.1d">45.66</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.24.24.24.8"><math alttext="46.40" class="ltx_Math" display="inline" id="S4.T2.24.24.24.8.m1.1"><semantics id="S4.T2.24.24.24.8.m1.1a"><mn id="S4.T2.24.24.24.8.m1.1.1" xref="S4.T2.24.24.24.8.m1.1.1.cmml">46.40</mn><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.8.m1.1b"><cn id="S4.T2.24.24.24.8.m1.1.1.cmml" type="float" xref="S4.T2.24.24.24.8.m1.1.1">46.40</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.8.m1.1c">46.40</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.8.m1.1d">46.40</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.32.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.32.32.32.9">RoBERTa</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.25.1"><math alttext="33.75" class="ltx_Math" display="inline" id="S4.T2.25.25.25.1.m1.1"><semantics id="S4.T2.25.25.25.1.m1.1a"><mn id="S4.T2.25.25.25.1.m1.1.1" xref="S4.T2.25.25.25.1.m1.1.1.cmml">33.75</mn><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.1.m1.1b"><cn id="S4.T2.25.25.25.1.m1.1.1.cmml" type="float" xref="S4.T2.25.25.25.1.m1.1.1">33.75</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.1.m1.1c">33.75</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.1.m1.1d">33.75</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.2"><math alttext="32.91" class="ltx_Math" display="inline" id="S4.T2.26.26.26.2.m1.1"><semantics id="S4.T2.26.26.26.2.m1.1a"><mn id="S4.T2.26.26.26.2.m1.1.1" xref="S4.T2.26.26.26.2.m1.1.1.cmml">32.91</mn><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.26.2.m1.1b"><cn id="S4.T2.26.26.26.2.m1.1.1.cmml" type="float" xref="S4.T2.26.26.26.2.m1.1.1">32.91</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.26.2.m1.1c">32.91</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.26.2.m1.1d">32.91</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.27.27.3"><math alttext="62.15" class="ltx_Math" display="inline" id="S4.T2.27.27.27.3.m1.1"><semantics id="S4.T2.27.27.27.3.m1.1a"><mn id="S4.T2.27.27.27.3.m1.1.1" xref="S4.T2.27.27.27.3.m1.1.1.cmml">62.15</mn><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.27.3.m1.1b"><cn id="S4.T2.27.27.27.3.m1.1.1.cmml" type="float" xref="S4.T2.27.27.27.3.m1.1.1">62.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.27.3.m1.1c">62.15</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.27.3.m1.1d">62.15</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.28.4"><math alttext="58.32" class="ltx_Math" display="inline" id="S4.T2.28.28.28.4.m1.1"><semantics id="S4.T2.28.28.28.4.m1.1a"><mn id="S4.T2.28.28.28.4.m1.1.1" xref="S4.T2.28.28.28.4.m1.1.1.cmml">58.32</mn><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.28.4.m1.1b"><cn id="S4.T2.28.28.28.4.m1.1.1.cmml" type="float" xref="S4.T2.28.28.28.4.m1.1.1">58.32</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.28.4.m1.1c">58.32</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.28.4.m1.1d">58.32</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.5"><math alttext="46.80" class="ltx_Math" display="inline" id="S4.T2.29.29.29.5.m1.1"><semantics id="S4.T2.29.29.29.5.m1.1a"><mn id="S4.T2.29.29.29.5.m1.1.1" xref="S4.T2.29.29.29.5.m1.1.1.cmml">46.80</mn><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.29.5.m1.1b"><cn id="S4.T2.29.29.29.5.m1.1.1.cmml" type="float" xref="S4.T2.29.29.29.5.m1.1.1">46.80</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.29.5.m1.1c">46.80</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.29.5.m1.1d">46.80</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.6"><math alttext="34.16" class="ltx_Math" display="inline" id="S4.T2.30.30.30.6.m1.1"><semantics id="S4.T2.30.30.30.6.m1.1a"><mn id="S4.T2.30.30.30.6.m1.1.1" xref="S4.T2.30.30.30.6.m1.1.1.cmml">34.16</mn><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.30.6.m1.1b"><cn id="S4.T2.30.30.30.6.m1.1.1.cmml" type="float" xref="S4.T2.30.30.30.6.m1.1.1">34.16</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.30.6.m1.1c">34.16</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.30.6.m1.1d">34.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.31.31.7"><math alttext="2.15" class="ltx_Math" display="inline" id="S4.T2.31.31.31.7.m1.1"><semantics id="S4.T2.31.31.31.7.m1.1a"><mn id="S4.T2.31.31.31.7.m1.1.1" xref="S4.T2.31.31.31.7.m1.1.1.cmml">2.15</mn><annotation-xml encoding="MathML-Content" id="S4.T2.31.31.31.7.m1.1b"><cn id="S4.T2.31.31.31.7.m1.1.1.cmml" type="float" xref="S4.T2.31.31.31.7.m1.1.1">2.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.31.31.7.m1.1c">2.15</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.31.31.7.m1.1d">2.15</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.32.32.32.8"><math alttext="18.15" class="ltx_Math" display="inline" id="S4.T2.32.32.32.8.m1.1"><semantics id="S4.T2.32.32.32.8.m1.1a"><mn id="S4.T2.32.32.32.8.m1.1.1" xref="S4.T2.32.32.32.8.m1.1.1.cmml">18.15</mn><annotation-xml encoding="MathML-Content" id="S4.T2.32.32.32.8.m1.1b"><cn id="S4.T2.32.32.32.8.m1.1.1.cmml" type="float" xref="S4.T2.32.32.32.8.m1.1.1">18.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.32.32.8.m1.1c">18.15</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.32.32.8.m1.1d">18.15</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.40.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.40.40.40.9">MRQA</th>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.1"><math alttext="72.45" class="ltx_Math" display="inline" id="S4.T2.33.33.33.1.m1.1"><semantics id="S4.T2.33.33.33.1.m1.1a"><mn id="S4.T2.33.33.33.1.m1.1.1" xref="S4.T2.33.33.33.1.m1.1.1.cmml">72.45</mn><annotation-xml encoding="MathML-Content" id="S4.T2.33.33.33.1.m1.1b"><cn id="S4.T2.33.33.33.1.m1.1.1.cmml" type="float" xref="S4.T2.33.33.33.1.m1.1.1">72.45</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.33.33.33.1.m1.1c">72.45</annotation><annotation encoding="application/x-llamapun" id="S4.T2.33.33.33.1.m1.1d">72.45</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.34.34.34.2"><math alttext="55.93" class="ltx_Math" display="inline" id="S4.T2.34.34.34.2.m1.1"><semantics id="S4.T2.34.34.34.2.m1.1a"><mn id="S4.T2.34.34.34.2.m1.1.1" xref="S4.T2.34.34.34.2.m1.1.1.cmml">55.93</mn><annotation-xml encoding="MathML-Content" id="S4.T2.34.34.34.2.m1.1b"><cn id="S4.T2.34.34.34.2.m1.1.1.cmml" type="float" xref="S4.T2.34.34.34.2.m1.1.1">55.93</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.34.34.34.2.m1.1c">55.93</annotation><annotation encoding="application/x-llamapun" id="S4.T2.34.34.34.2.m1.1d">55.93</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.35.35.35.3"><math alttext="68.68" class="ltx_Math" display="inline" id="S4.T2.35.35.35.3.m1.1"><semantics id="S4.T2.35.35.35.3.m1.1a"><mn id="S4.T2.35.35.35.3.m1.1.1" xref="S4.T2.35.35.35.3.m1.1.1.cmml">68.68</mn><annotation-xml encoding="MathML-Content" id="S4.T2.35.35.35.3.m1.1b"><cn id="S4.T2.35.35.35.3.m1.1.1.cmml" type="float" xref="S4.T2.35.35.35.3.m1.1.1">68.68</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.35.35.35.3.m1.1c">68.68</annotation><annotation encoding="application/x-llamapun" id="S4.T2.35.35.35.3.m1.1d">68.68</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.36.36.36.4"><math alttext="66.26" class="ltx_Math" display="inline" id="S4.T2.36.36.36.4.m1.1"><semantics id="S4.T2.36.36.36.4.m1.1a"><mn id="S4.T2.36.36.36.4.m1.1.1" xref="S4.T2.36.36.36.4.m1.1.1.cmml">66.26</mn><annotation-xml encoding="MathML-Content" id="S4.T2.36.36.36.4.m1.1b"><cn id="S4.T2.36.36.36.4.m1.1.1.cmml" type="float" xref="S4.T2.36.36.36.4.m1.1.1">66.26</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.36.36.36.4.m1.1c">66.26</annotation><annotation encoding="application/x-llamapun" id="S4.T2.36.36.36.4.m1.1d">66.26</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.37.37.37.5"><math alttext="65.83" class="ltx_Math" display="inline" id="S4.T2.37.37.37.5.m1.1"><semantics id="S4.T2.37.37.37.5.m1.1a"><mn id="S4.T2.37.37.37.5.m1.1.1" xref="S4.T2.37.37.37.5.m1.1.1.cmml">65.83</mn><annotation-xml encoding="MathML-Content" id="S4.T2.37.37.37.5.m1.1b"><cn id="S4.T2.37.37.37.5.m1.1.1.cmml" type="float" xref="S4.T2.37.37.37.5.m1.1.1">65.83</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.37.37.37.5.m1.1c">65.83</annotation><annotation encoding="application/x-llamapun" id="S4.T2.37.37.37.5.m1.1d">65.83</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.38.38.38.6"><math alttext="66.23" class="ltx_Math" display="inline" id="S4.T2.38.38.38.6.m1.1"><semantics id="S4.T2.38.38.38.6.m1.1a"><mn id="S4.T2.38.38.38.6.m1.1.1" xref="S4.T2.38.38.38.6.m1.1.1.cmml">66.23</mn><annotation-xml encoding="MathML-Content" id="S4.T2.38.38.38.6.m1.1b"><cn id="S4.T2.38.38.38.6.m1.1.1.cmml" type="float" xref="S4.T2.38.38.38.6.m1.1.1">66.23</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.38.38.38.6.m1.1c">66.23</annotation><annotation encoding="application/x-llamapun" id="S4.T2.38.38.38.6.m1.1d">66.23</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.39.39.39.7"><math alttext="67.44" class="ltx_Math" display="inline" id="S4.T2.39.39.39.7.m1.1"><semantics id="S4.T2.39.39.39.7.m1.1a"><mn id="S4.T2.39.39.39.7.m1.1.1" xref="S4.T2.39.39.39.7.m1.1.1.cmml">67.44</mn><annotation-xml encoding="MathML-Content" id="S4.T2.39.39.39.7.m1.1b"><cn id="S4.T2.39.39.39.7.m1.1.1.cmml" type="float" xref="S4.T2.39.39.39.7.m1.1.1">67.44</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.39.39.39.7.m1.1c">67.44</annotation><annotation encoding="application/x-llamapun" id="S4.T2.39.39.39.7.m1.1d">67.44</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.40.40.40.8"><math alttext="66.84" class="ltx_Math" display="inline" id="S4.T2.40.40.40.8.m1.1"><semantics id="S4.T2.40.40.40.8.m1.1a"><mn id="S4.T2.40.40.40.8.m1.1.1" xref="S4.T2.40.40.40.8.m1.1.1.cmml">66.84</mn><annotation-xml encoding="MathML-Content" id="S4.T2.40.40.40.8.m1.1b"><cn id="S4.T2.40.40.40.8.m1.1.1.cmml" type="float" xref="S4.T2.40.40.40.8.m1.1.1">66.84</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.40.40.40.8.m1.1c">66.84</annotation><annotation encoding="application/x-llamapun" id="S4.T2.40.40.40.8.m1.1d">66.84</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.48.48.48">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.48.48.48.9"><span class="ltx_ERROR undefined" id="S4.T2.48.48.48.9.1">\our</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.41.41.41.1"><math alttext="73.60" class="ltx_Math" display="inline" id="S4.T2.41.41.41.1.m1.1"><semantics id="S4.T2.41.41.41.1.m1.1a"><mn id="S4.T2.41.41.41.1.m1.1.1" xref="S4.T2.41.41.41.1.m1.1.1.cmml">73.60</mn><annotation-xml encoding="MathML-Content" id="S4.T2.41.41.41.1.m1.1b"><cn id="S4.T2.41.41.41.1.m1.1.1.cmml" type="float" xref="S4.T2.41.41.41.1.m1.1.1">73.60</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.41.41.41.1.m1.1c">73.60</annotation><annotation encoding="application/x-llamapun" id="S4.T2.41.41.41.1.m1.1d">73.60</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.42.42.42.2"><math alttext="57.00" class="ltx_Math" display="inline" id="S4.T2.42.42.42.2.m1.1"><semantics id="S4.T2.42.42.42.2.m1.1a"><mn id="S4.T2.42.42.42.2.m1.1.1" xref="S4.T2.42.42.42.2.m1.1.1.cmml">57.00</mn><annotation-xml encoding="MathML-Content" id="S4.T2.42.42.42.2.m1.1b"><cn id="S4.T2.42.42.42.2.m1.1.1.cmml" type="float" xref="S4.T2.42.42.42.2.m1.1.1">57.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.42.42.42.2.m1.1c">57.00</annotation><annotation encoding="application/x-llamapun" id="S4.T2.42.42.42.2.m1.1d">57.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.43.43.43.3"><math alttext="67.63" class="ltx_Math" display="inline" id="S4.T2.43.43.43.3.m1.1"><semantics id="S4.T2.43.43.43.3.m1.1a"><mn id="S4.T2.43.43.43.3.m1.1.1" xref="S4.T2.43.43.43.3.m1.1.1.cmml">67.63</mn><annotation-xml encoding="MathML-Content" id="S4.T2.43.43.43.3.m1.1b"><cn id="S4.T2.43.43.43.3.m1.1.1.cmml" type="float" xref="S4.T2.43.43.43.3.m1.1.1">67.63</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.43.43.43.3.m1.1c">67.63</annotation><annotation encoding="application/x-llamapun" id="S4.T2.43.43.43.3.m1.1d">67.63</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.44.44.44.4"><math alttext="67.12" class="ltx_Math" display="inline" id="S4.T2.44.44.44.4.m1.1"><semantics id="S4.T2.44.44.44.4.m1.1a"><mn id="S4.T2.44.44.44.4.m1.1.1" xref="S4.T2.44.44.44.4.m1.1.1.cmml">67.12</mn><annotation-xml encoding="MathML-Content" id="S4.T2.44.44.44.4.m1.1b"><cn id="S4.T2.44.44.44.4.m1.1.1.cmml" type="float" xref="S4.T2.44.44.44.4.m1.1.1">67.12</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.44.44.44.4.m1.1c">67.12</annotation><annotation encoding="application/x-llamapun" id="S4.T2.44.44.44.4.m1.1d">67.12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.45.45.45.5"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T2.45.45.45.5.1">66.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.46.46.46.6"><math alttext="69.57" class="ltx_Math" display="inline" id="S4.T2.46.46.46.6.m1.1"><semantics id="S4.T2.46.46.46.6.m1.1a"><mn id="S4.T2.46.46.46.6.m1.1.1" xref="S4.T2.46.46.46.6.m1.1.1.cmml">69.57</mn><annotation-xml encoding="MathML-Content" id="S4.T2.46.46.46.6.m1.1b"><cn id="S4.T2.46.46.46.6.m1.1.1.cmml" type="float" xref="S4.T2.46.46.46.6.m1.1.1">69.57</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.46.46.46.6.m1.1c">69.57</annotation><annotation encoding="application/x-llamapun" id="S4.T2.46.46.46.6.m1.1d">69.57</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.47.47.47.7"><math alttext="71.70" class="ltx_Math" display="inline" id="S4.T2.47.47.47.7.m1.1"><semantics id="S4.T2.47.47.47.7.m1.1a"><mn id="S4.T2.47.47.47.7.m1.1.1" xref="S4.T2.47.47.47.7.m1.1.1.cmml">71.70</mn><annotation-xml encoding="MathML-Content" id="S4.T2.47.47.47.7.m1.1b"><cn id="S4.T2.47.47.47.7.m1.1.1.cmml" type="float" xref="S4.T2.47.47.47.7.m1.1.1">71.70</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.47.47.47.7.m1.1c">71.70</annotation><annotation encoding="application/x-llamapun" id="S4.T2.47.47.47.7.m1.1d">71.70</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.48.48.48.8"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T2.48.48.48.8.1">70.63</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.57.57.57">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.49.49.49.1">    Only Pre-train</th>
<td class="ltx_td ltx_align_center" id="S4.T2.50.50.50.2"><math alttext="72.46" class="ltx_Math" display="inline" id="S4.T2.50.50.50.2.m1.1"><semantics id="S4.T2.50.50.50.2.m1.1a"><mn id="S4.T2.50.50.50.2.m1.1.1" xref="S4.T2.50.50.50.2.m1.1.1.cmml">72.46</mn><annotation-xml encoding="MathML-Content" id="S4.T2.50.50.50.2.m1.1b"><cn id="S4.T2.50.50.50.2.m1.1.1.cmml" type="float" xref="S4.T2.50.50.50.2.m1.1.1">72.46</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.50.50.50.2.m1.1c">72.46</annotation><annotation encoding="application/x-llamapun" id="S4.T2.50.50.50.2.m1.1d">72.46</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.51.51.51.3"><math alttext="55.87" class="ltx_Math" display="inline" id="S4.T2.51.51.51.3.m1.1"><semantics id="S4.T2.51.51.51.3.m1.1a"><mn id="S4.T2.51.51.51.3.m1.1.1" xref="S4.T2.51.51.51.3.m1.1.1.cmml">55.87</mn><annotation-xml encoding="MathML-Content" id="S4.T2.51.51.51.3.m1.1b"><cn id="S4.T2.51.51.51.3.m1.1.1.cmml" type="float" xref="S4.T2.51.51.51.3.m1.1.1">55.87</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.51.51.51.3.m1.1c">55.87</annotation><annotation encoding="application/x-llamapun" id="S4.T2.51.51.51.3.m1.1d">55.87</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.52.52.52.4"><math alttext="66.87" class="ltx_Math" display="inline" id="S4.T2.52.52.52.4.m1.1"><semantics id="S4.T2.52.52.52.4.m1.1a"><mn id="S4.T2.52.52.52.4.m1.1.1" xref="S4.T2.52.52.52.4.m1.1.1.cmml">66.87</mn><annotation-xml encoding="MathML-Content" id="S4.T2.52.52.52.4.m1.1b"><cn id="S4.T2.52.52.52.4.m1.1.1.cmml" type="float" xref="S4.T2.52.52.52.4.m1.1.1">66.87</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.52.52.52.4.m1.1c">66.87</annotation><annotation encoding="application/x-llamapun" id="S4.T2.52.52.52.4.m1.1d">66.87</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.53.53.53.5"><math alttext="67.23" class="ltx_Math" display="inline" id="S4.T2.53.53.53.5.m1.1"><semantics id="S4.T2.53.53.53.5.m1.1a"><mn id="S4.T2.53.53.53.5.m1.1.1" xref="S4.T2.53.53.53.5.m1.1.1.cmml">67.23</mn><annotation-xml encoding="MathML-Content" id="S4.T2.53.53.53.5.m1.1b"><cn id="S4.T2.53.53.53.5.m1.1.1.cmml" type="float" xref="S4.T2.53.53.53.5.m1.1.1">67.23</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.53.53.53.5.m1.1c">67.23</annotation><annotation encoding="application/x-llamapun" id="S4.T2.53.53.53.5.m1.1d">67.23</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.54.54.54.6"><math alttext="65.61" class="ltx_Math" display="inline" id="S4.T2.54.54.54.6.m1.1"><semantics id="S4.T2.54.54.54.6.m1.1a"><mn id="S4.T2.54.54.54.6.m1.1.1" xref="S4.T2.54.54.54.6.m1.1.1.cmml">65.61</mn><annotation-xml encoding="MathML-Content" id="S4.T2.54.54.54.6.m1.1b"><cn id="S4.T2.54.54.54.6.m1.1.1.cmml" type="float" xref="S4.T2.54.54.54.6.m1.1.1">65.61</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.54.54.54.6.m1.1c">65.61</annotation><annotation encoding="application/x-llamapun" id="S4.T2.54.54.54.6.m1.1d">65.61</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.55.55.55.7"><math alttext="68.14" class="ltx_Math" display="inline" id="S4.T2.55.55.55.7.m1.1"><semantics id="S4.T2.55.55.55.7.m1.1a"><mn id="S4.T2.55.55.55.7.m1.1.1" xref="S4.T2.55.55.55.7.m1.1.1.cmml">68.14</mn><annotation-xml encoding="MathML-Content" id="S4.T2.55.55.55.7.m1.1b"><cn id="S4.T2.55.55.55.7.m1.1.1.cmml" type="float" xref="S4.T2.55.55.55.7.m1.1.1">68.14</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.55.55.55.7.m1.1c">68.14</annotation><annotation encoding="application/x-llamapun" id="S4.T2.55.55.55.7.m1.1d">68.14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.56.56.56.8"><math alttext="69.39" class="ltx_Math" display="inline" id="S4.T2.56.56.56.8.m1.1"><semantics id="S4.T2.56.56.56.8.m1.1a"><mn id="S4.T2.56.56.56.8.m1.1.1" xref="S4.T2.56.56.56.8.m1.1.1.cmml">69.39</mn><annotation-xml encoding="MathML-Content" id="S4.T2.56.56.56.8.m1.1b"><cn id="S4.T2.56.56.56.8.m1.1.1.cmml" type="float" xref="S4.T2.56.56.56.8.m1.1.1">69.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.56.56.56.8.m1.1c">69.39</annotation><annotation encoding="application/x-llamapun" id="S4.T2.56.56.56.8.m1.1d">69.39</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.57.57.57.9"><math alttext="68.77" class="ltx_Math" display="inline" id="S4.T2.57.57.57.9.m1.1"><semantics id="S4.T2.57.57.57.9.m1.1a"><mn id="S4.T2.57.57.57.9.m1.1.1" xref="S4.T2.57.57.57.9.m1.1.1.cmml">68.77</mn><annotation-xml encoding="MathML-Content" id="S4.T2.57.57.57.9.m1.1b"><cn id="S4.T2.57.57.57.9.m1.1.1.cmml" type="float" xref="S4.T2.57.57.57.9.m1.1.1">68.77</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.57.57.57.9.m1.1c">68.77</annotation><annotation encoding="application/x-llamapun" id="S4.T2.57.57.57.9.m1.1d">68.77</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.66.66.66">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.58.58.58.1">    Only Post-train</th>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.59.2"><math alttext="72.80" class="ltx_Math" display="inline" id="S4.T2.59.59.59.2.m1.1"><semantics id="S4.T2.59.59.59.2.m1.1a"><mn id="S4.T2.59.59.59.2.m1.1.1" xref="S4.T2.59.59.59.2.m1.1.1.cmml">72.80</mn><annotation-xml encoding="MathML-Content" id="S4.T2.59.59.59.2.m1.1b"><cn id="S4.T2.59.59.59.2.m1.1.1.cmml" type="float" xref="S4.T2.59.59.59.2.m1.1.1">72.80</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.59.59.59.2.m1.1c">72.80</annotation><annotation encoding="application/x-llamapun" id="S4.T2.59.59.59.2.m1.1d">72.80</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.60.60.60.3"><math alttext="56.10" class="ltx_Math" display="inline" id="S4.T2.60.60.60.3.m1.1"><semantics id="S4.T2.60.60.60.3.m1.1a"><mn id="S4.T2.60.60.60.3.m1.1.1" xref="S4.T2.60.60.60.3.m1.1.1.cmml">56.10</mn><annotation-xml encoding="MathML-Content" id="S4.T2.60.60.60.3.m1.1b"><cn id="S4.T2.60.60.60.3.m1.1.1.cmml" type="float" xref="S4.T2.60.60.60.3.m1.1.1">56.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.60.60.60.3.m1.1c">56.10</annotation><annotation encoding="application/x-llamapun" id="S4.T2.60.60.60.3.m1.1d">56.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.61.61.61.4"><math alttext="66.02" class="ltx_Math" display="inline" id="S4.T2.61.61.61.4.m1.1"><semantics id="S4.T2.61.61.61.4.m1.1a"><mn id="S4.T2.61.61.61.4.m1.1.1" xref="S4.T2.61.61.61.4.m1.1.1.cmml">66.02</mn><annotation-xml encoding="MathML-Content" id="S4.T2.61.61.61.4.m1.1b"><cn id="S4.T2.61.61.61.4.m1.1.1.cmml" type="float" xref="S4.T2.61.61.61.4.m1.1.1">66.02</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.61.61.61.4.m1.1c">66.02</annotation><annotation encoding="application/x-llamapun" id="S4.T2.61.61.61.4.m1.1d">66.02</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.62.62.62.5"><math alttext="67.10" class="ltx_Math" display="inline" id="S4.T2.62.62.62.5.m1.1"><semantics id="S4.T2.62.62.62.5.m1.1a"><mn id="S4.T2.62.62.62.5.m1.1.1" xref="S4.T2.62.62.62.5.m1.1.1.cmml">67.10</mn><annotation-xml encoding="MathML-Content" id="S4.T2.62.62.62.5.m1.1b"><cn id="S4.T2.62.62.62.5.m1.1.1.cmml" type="float" xref="S4.T2.62.62.62.5.m1.1.1">67.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.62.62.62.5.m1.1c">67.10</annotation><annotation encoding="application/x-llamapun" id="S4.T2.62.62.62.5.m1.1d">67.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.63.63.63.6"><math alttext="65.51" class="ltx_Math" display="inline" id="S4.T2.63.63.63.6.m1.1"><semantics id="S4.T2.63.63.63.6.m1.1a"><mn id="S4.T2.63.63.63.6.m1.1.1" xref="S4.T2.63.63.63.6.m1.1.1.cmml">65.51</mn><annotation-xml encoding="MathML-Content" id="S4.T2.63.63.63.6.m1.1b"><cn id="S4.T2.63.63.63.6.m1.1.1.cmml" type="float" xref="S4.T2.63.63.63.6.m1.1.1">65.51</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.63.63.63.6.m1.1c">65.51</annotation><annotation encoding="application/x-llamapun" id="S4.T2.63.63.63.6.m1.1d">65.51</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.64.64.64.7"><math alttext="68.66" class="ltx_Math" display="inline" id="S4.T2.64.64.64.7.m1.1"><semantics id="S4.T2.64.64.64.7.m1.1a"><mn id="S4.T2.64.64.64.7.m1.1.1" xref="S4.T2.64.64.64.7.m1.1.1.cmml">68.66</mn><annotation-xml encoding="MathML-Content" id="S4.T2.64.64.64.7.m1.1b"><cn id="S4.T2.64.64.64.7.m1.1.1.cmml" type="float" xref="S4.T2.64.64.64.7.m1.1.1">68.66</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.64.64.64.7.m1.1c">68.66</annotation><annotation encoding="application/x-llamapun" id="S4.T2.64.64.64.7.m1.1d">68.66</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.65.65.65.8"><math alttext="69.75" class="ltx_Math" display="inline" id="S4.T2.65.65.65.8.m1.1"><semantics id="S4.T2.65.65.65.8.m1.1a"><mn id="S4.T2.65.65.65.8.m1.1.1" xref="S4.T2.65.65.65.8.m1.1.1.cmml">69.75</mn><annotation-xml encoding="MathML-Content" id="S4.T2.65.65.65.8.m1.1b"><cn id="S4.T2.65.65.65.8.m1.1.1.cmml" type="float" xref="S4.T2.65.65.65.8.m1.1.1">69.75</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.65.65.65.8.m1.1c">69.75</annotation><annotation encoding="application/x-llamapun" id="S4.T2.65.65.65.8.m1.1d">69.75</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.66.66.66.9"><math alttext="69.21" class="ltx_Math" display="inline" id="S4.T2.66.66.66.9.m1.1"><semantics id="S4.T2.66.66.66.9.m1.1a"><mn id="S4.T2.66.66.66.9.m1.1.1" xref="S4.T2.66.66.66.9.m1.1.1.cmml">69.21</mn><annotation-xml encoding="MathML-Content" id="S4.T2.66.66.66.9.m1.1b"><cn id="S4.T2.66.66.66.9.m1.1.1.cmml" type="float" xref="S4.T2.66.66.66.9.m1.1.1">69.21</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.66.66.66.9.m1.1c">69.21</annotation><annotation encoding="application/x-llamapun" id="S4.T2.66.66.66.9.m1.1d">69.21</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.75.75.75">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.67.67.67.1">MultiNERD<sup class="ltx_sup" id="S4.T2.67.67.67.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.67.67.67.1.1.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.68.68.68.2"><math alttext="66.78" class="ltx_Math" display="inline" id="S4.T2.68.68.68.2.m1.1"><semantics id="S4.T2.68.68.68.2.m1.1a"><mn id="S4.T2.68.68.68.2.m1.1.1" xref="S4.T2.68.68.68.2.m1.1.1.cmml">66.78</mn><annotation-xml encoding="MathML-Content" id="S4.T2.68.68.68.2.m1.1b"><cn id="S4.T2.68.68.68.2.m1.1.1.cmml" type="float" xref="S4.T2.68.68.68.2.m1.1.1">66.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.68.68.68.2.m1.1c">66.78</annotation><annotation encoding="application/x-llamapun" id="S4.T2.68.68.68.2.m1.1d">66.78</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.69.69.69.3"><math alttext="54.62" class="ltx_Math" display="inline" id="S4.T2.69.69.69.3.m1.1"><semantics id="S4.T2.69.69.69.3.m1.1a"><mn id="S4.T2.69.69.69.3.m1.1.1" xref="S4.T2.69.69.69.3.m1.1.1.cmml">54.62</mn><annotation-xml encoding="MathML-Content" id="S4.T2.69.69.69.3.m1.1b"><cn id="S4.T2.69.69.69.3.m1.1.1.cmml" type="float" xref="S4.T2.69.69.69.3.m1.1.1">54.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.69.69.69.3.m1.1c">54.62</annotation><annotation encoding="application/x-llamapun" id="S4.T2.69.69.69.3.m1.1d">54.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.70.70.70.4"><math alttext="64.16" class="ltx_Math" display="inline" id="S4.T2.70.70.70.4.m1.1"><semantics id="S4.T2.70.70.70.4.m1.1a"><mn id="S4.T2.70.70.70.4.m1.1.1" xref="S4.T2.70.70.70.4.m1.1.1.cmml">64.16</mn><annotation-xml encoding="MathML-Content" id="S4.T2.70.70.70.4.m1.1b"><cn id="S4.T2.70.70.70.4.m1.1.1.cmml" type="float" xref="S4.T2.70.70.70.4.m1.1.1">64.16</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.70.70.70.4.m1.1c">64.16</annotation><annotation encoding="application/x-llamapun" id="S4.T2.70.70.70.4.m1.1d">64.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.71.71.71.5"><math alttext="66.30" class="ltx_Math" display="inline" id="S4.T2.71.71.71.5.m1.1"><semantics id="S4.T2.71.71.71.5.m1.1a"><mn id="S4.T2.71.71.71.5.m1.1.1" xref="S4.T2.71.71.71.5.m1.1.1.cmml">66.30</mn><annotation-xml encoding="MathML-Content" id="S4.T2.71.71.71.5.m1.1b"><cn id="S4.T2.71.71.71.5.m1.1.1.cmml" type="float" xref="S4.T2.71.71.71.5.m1.1.1">66.30</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.71.71.71.5.m1.1c">66.30</annotation><annotation encoding="application/x-llamapun" id="S4.T2.71.71.71.5.m1.1d">66.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.72.72.72.6"><math alttext="60.59" class="ltx_Math" display="inline" id="S4.T2.72.72.72.6.m1.1"><semantics id="S4.T2.72.72.72.6.m1.1a"><mn id="S4.T2.72.72.72.6.m1.1.1" xref="S4.T2.72.72.72.6.m1.1.1.cmml">60.59</mn><annotation-xml encoding="MathML-Content" id="S4.T2.72.72.72.6.m1.1b"><cn id="S4.T2.72.72.72.6.m1.1.1.cmml" type="float" xref="S4.T2.72.72.72.6.m1.1.1">60.59</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.72.72.72.6.m1.1c">60.59</annotation><annotation encoding="application/x-llamapun" id="S4.T2.72.72.72.6.m1.1d">60.59</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.73.73.73.7"><math alttext="57.52" class="ltx_Math" display="inline" id="S4.T2.73.73.73.7.m1.1"><semantics id="S4.T2.73.73.73.7.m1.1a"><mn id="S4.T2.73.73.73.7.m1.1.1" xref="S4.T2.73.73.73.7.m1.1.1.cmml">57.52</mn><annotation-xml encoding="MathML-Content" id="S4.T2.73.73.73.7.m1.1b"><cn id="S4.T2.73.73.73.7.m1.1.1.cmml" type="float" xref="S4.T2.73.73.73.7.m1.1.1">57.52</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.73.73.73.7.m1.1c">57.52</annotation><annotation encoding="application/x-llamapun" id="S4.T2.73.73.73.7.m1.1d">57.52</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.74.74.74.8"><math alttext="45.10" class="ltx_Math" display="inline" id="S4.T2.74.74.74.8.m1.1"><semantics id="S4.T2.74.74.74.8.m1.1a"><mn id="S4.T2.74.74.74.8.m1.1.1" xref="S4.T2.74.74.74.8.m1.1.1.cmml">45.10</mn><annotation-xml encoding="MathML-Content" id="S4.T2.74.74.74.8.m1.1b"><cn id="S4.T2.74.74.74.8.m1.1.1.cmml" type="float" xref="S4.T2.74.74.74.8.m1.1.1">45.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.74.74.74.8.m1.1c">45.10</annotation><annotation encoding="application/x-llamapun" id="S4.T2.74.74.74.8.m1.1d">45.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.75.75.75.9"><math alttext="51.31" class="ltx_Math" display="inline" id="S4.T2.75.75.75.9.m1.1"><semantics id="S4.T2.75.75.75.9.m1.1a"><mn id="S4.T2.75.75.75.9.m1.1.1" xref="S4.T2.75.75.75.9.m1.1.1.cmml">51.31</mn><annotation-xml encoding="MathML-Content" id="S4.T2.75.75.75.9.m1.1b"><cn id="S4.T2.75.75.75.9.m1.1.1.cmml" type="float" xref="S4.T2.75.75.75.9.m1.1.1">51.31</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.75.75.75.9.m1.1c">51.31</annotation><annotation encoding="application/x-llamapun" id="S4.T2.75.75.75.9.m1.1d">51.31</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.84.84.84">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.76.76.76.1">NuNER<sup class="ltx_sup" id="S4.T2.76.76.76.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.76.76.76.1.1.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.77.77.77.2"><math alttext="74.15" class="ltx_Math" display="inline" id="S4.T2.77.77.77.2.m1.1"><semantics id="S4.T2.77.77.77.2.m1.1a"><mn id="S4.T2.77.77.77.2.m1.1.1" xref="S4.T2.77.77.77.2.m1.1.1.cmml">74.15</mn><annotation-xml encoding="MathML-Content" id="S4.T2.77.77.77.2.m1.1b"><cn id="S4.T2.77.77.77.2.m1.1.1.cmml" type="float" xref="S4.T2.77.77.77.2.m1.1.1">74.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.77.77.77.2.m1.1c">74.15</annotation><annotation encoding="application/x-llamapun" id="S4.T2.77.77.77.2.m1.1d">74.15</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.78.78.78.3"><math alttext="56.36" class="ltx_Math" display="inline" id="S4.T2.78.78.78.3.m1.1"><semantics id="S4.T2.78.78.78.3.m1.1a"><mn id="S4.T2.78.78.78.3.m1.1.1" xref="S4.T2.78.78.78.3.m1.1.1.cmml">56.36</mn><annotation-xml encoding="MathML-Content" id="S4.T2.78.78.78.3.m1.1b"><cn id="S4.T2.78.78.78.3.m1.1.1.cmml" type="float" xref="S4.T2.78.78.78.3.m1.1.1">56.36</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.78.78.78.3.m1.1c">56.36</annotation><annotation encoding="application/x-llamapun" id="S4.T2.78.78.78.3.m1.1d">56.36</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.79.79.79.4"><math alttext="68.57" class="ltx_Math" display="inline" id="S4.T2.79.79.79.4.m1.1"><semantics id="S4.T2.79.79.79.4.m1.1a"><mn id="S4.T2.79.79.79.4.m1.1.1" xref="S4.T2.79.79.79.4.m1.1.1.cmml">68.57</mn><annotation-xml encoding="MathML-Content" id="S4.T2.79.79.79.4.m1.1b"><cn id="S4.T2.79.79.79.4.m1.1.1.cmml" type="float" xref="S4.T2.79.79.79.4.m1.1.1">68.57</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.79.79.79.4.m1.1c">68.57</annotation><annotation encoding="application/x-llamapun" id="S4.T2.79.79.79.4.m1.1d">68.57</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.80.80.5"><math alttext="64.88" class="ltx_Math" display="inline" id="S4.T2.80.80.80.5.m1.1"><semantics id="S4.T2.80.80.80.5.m1.1a"><mn id="S4.T2.80.80.80.5.m1.1.1" xref="S4.T2.80.80.80.5.m1.1.1.cmml">64.88</mn><annotation-xml encoding="MathML-Content" id="S4.T2.80.80.80.5.m1.1b"><cn id="S4.T2.80.80.80.5.m1.1.1.cmml" type="float" xref="S4.T2.80.80.80.5.m1.1.1">64.88</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.80.80.80.5.m1.1c">64.88</annotation><annotation encoding="application/x-llamapun" id="S4.T2.80.80.80.5.m1.1d">64.88</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.81.81.81.6"><math alttext="65.99" class="ltx_Math" display="inline" id="S4.T2.81.81.81.6.m1.1"><semantics id="S4.T2.81.81.81.6.m1.1a"><mn id="S4.T2.81.81.81.6.m1.1.1" xref="S4.T2.81.81.81.6.m1.1.1.cmml">65.99</mn><annotation-xml encoding="MathML-Content" id="S4.T2.81.81.81.6.m1.1b"><cn id="S4.T2.81.81.81.6.m1.1.1.cmml" type="float" xref="S4.T2.81.81.81.6.m1.1.1">65.99</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.81.81.81.6.m1.1c">65.99</annotation><annotation encoding="application/x-llamapun" id="S4.T2.81.81.81.6.m1.1d">65.99</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.7"><math alttext="65.12" class="ltx_Math" display="inline" id="S4.T2.82.82.82.7.m1.1"><semantics id="S4.T2.82.82.82.7.m1.1a"><mn id="S4.T2.82.82.82.7.m1.1.1" xref="S4.T2.82.82.82.7.m1.1.1.cmml">65.12</mn><annotation-xml encoding="MathML-Content" id="S4.T2.82.82.82.7.m1.1b"><cn id="S4.T2.82.82.82.7.m1.1.1.cmml" type="float" xref="S4.T2.82.82.82.7.m1.1.1">65.12</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.82.82.82.7.m1.1c">65.12</annotation><annotation encoding="application/x-llamapun" id="S4.T2.82.82.82.7.m1.1d">65.12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.83.83.83.8"><math alttext="63.71" class="ltx_Math" display="inline" id="S4.T2.83.83.83.8.m1.1"><semantics id="S4.T2.83.83.83.8.m1.1a"><mn id="S4.T2.83.83.83.8.m1.1.1" xref="S4.T2.83.83.83.8.m1.1.1.cmml">63.71</mn><annotation-xml encoding="MathML-Content" id="S4.T2.83.83.83.8.m1.1b"><cn id="S4.T2.83.83.83.8.m1.1.1.cmml" type="float" xref="S4.T2.83.83.83.8.m1.1.1">63.71</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.83.83.83.8.m1.1c">63.71</annotation><annotation encoding="application/x-llamapun" id="S4.T2.83.83.83.8.m1.1d">63.71</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.84.84.84.9"><math alttext="64.42" class="ltx_Math" display="inline" id="S4.T2.84.84.84.9.m1.1"><semantics id="S4.T2.84.84.84.9.m1.1a"><mn id="S4.T2.84.84.84.9.m1.1.1" xref="S4.T2.84.84.84.9.m1.1.1.cmml">64.42</mn><annotation-xml encoding="MathML-Content" id="S4.T2.84.84.84.9.m1.1b"><cn id="S4.T2.84.84.84.9.m1.1.1.cmml" type="float" xref="S4.T2.84.84.84.9.m1.1.1">64.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.84.84.84.9.m1.1c">64.42</annotation><annotation encoding="application/x-llamapun" id="S4.T2.84.84.84.9.m1.1d">64.42</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.93.93.93">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.85.85.85.1">MetaIE<sup class="ltx_sup" id="S4.T2.85.85.85.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.85.85.85.1.1.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.86.86.86.2"><math alttext="71.33" class="ltx_Math" display="inline" id="S4.T2.86.86.86.2.m1.1"><semantics id="S4.T2.86.86.86.2.m1.1a"><mn id="S4.T2.86.86.86.2.m1.1.1" xref="S4.T2.86.86.86.2.m1.1.1.cmml">71.33</mn><annotation-xml encoding="MathML-Content" id="S4.T2.86.86.86.2.m1.1b"><cn id="S4.T2.86.86.86.2.m1.1.1.cmml" type="float" xref="S4.T2.86.86.86.2.m1.1.1">71.33</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.86.86.86.2.m1.1c">71.33</annotation><annotation encoding="application/x-llamapun" id="S4.T2.86.86.86.2.m1.1d">71.33</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.87.87.87.3"><math alttext="55.63" class="ltx_Math" display="inline" id="S4.T2.87.87.87.3.m1.1"><semantics id="S4.T2.87.87.87.3.m1.1a"><mn id="S4.T2.87.87.87.3.m1.1.1" xref="S4.T2.87.87.87.3.m1.1.1.cmml">55.63</mn><annotation-xml encoding="MathML-Content" id="S4.T2.87.87.87.3.m1.1b"><cn id="S4.T2.87.87.87.3.m1.1.1.cmml" type="float" xref="S4.T2.87.87.87.3.m1.1.1">55.63</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.87.87.87.3.m1.1c">55.63</annotation><annotation encoding="application/x-llamapun" id="S4.T2.87.87.87.3.m1.1d">55.63</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.88.88.88.4"><math alttext="70.08" class="ltx_Math" display="inline" id="S4.T2.88.88.88.4.m1.1"><semantics id="S4.T2.88.88.88.4.m1.1a"><mn id="S4.T2.88.88.88.4.m1.1.1" xref="S4.T2.88.88.88.4.m1.1.1.cmml">70.08</mn><annotation-xml encoding="MathML-Content" id="S4.T2.88.88.88.4.m1.1b"><cn id="S4.T2.88.88.88.4.m1.1.1.cmml" type="float" xref="S4.T2.88.88.88.4.m1.1.1">70.08</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.88.88.88.4.m1.1c">70.08</annotation><annotation encoding="application/x-llamapun" id="S4.T2.88.88.88.4.m1.1d">70.08</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.89.89.89.5"><math alttext="65.23" class="ltx_Math" display="inline" id="S4.T2.89.89.89.5.m1.1"><semantics id="S4.T2.89.89.89.5.m1.1a"><mn id="S4.T2.89.89.89.5.m1.1.1" xref="S4.T2.89.89.89.5.m1.1.1.cmml">65.23</mn><annotation-xml encoding="MathML-Content" id="S4.T2.89.89.89.5.m1.1b"><cn id="S4.T2.89.89.89.5.m1.1.1.cmml" type="float" xref="S4.T2.89.89.89.5.m1.1.1">65.23</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.89.89.89.5.m1.1c">65.23</annotation><annotation encoding="application/x-llamapun" id="S4.T2.89.89.89.5.m1.1d">65.23</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.90.90.90.6"><math alttext="65.57" class="ltx_Math" display="inline" id="S4.T2.90.90.90.6.m1.1"><semantics id="S4.T2.90.90.90.6.m1.1a"><mn id="S4.T2.90.90.90.6.m1.1.1" xref="S4.T2.90.90.90.6.m1.1.1.cmml">65.57</mn><annotation-xml encoding="MathML-Content" id="S4.T2.90.90.90.6.m1.1b"><cn id="S4.T2.90.90.90.6.m1.1.1.cmml" type="float" xref="S4.T2.90.90.90.6.m1.1.1">65.57</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.90.90.90.6.m1.1c">65.57</annotation><annotation encoding="application/x-llamapun" id="S4.T2.90.90.90.6.m1.1d">65.57</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.91.91.91.7"><math alttext="64.81" class="ltx_Math" display="inline" id="S4.T2.91.91.91.7.m1.1"><semantics id="S4.T2.91.91.91.7.m1.1a"><mn id="S4.T2.91.91.91.7.m1.1.1" xref="S4.T2.91.91.91.7.m1.1.1.cmml">64.81</mn><annotation-xml encoding="MathML-Content" id="S4.T2.91.91.91.7.m1.1b"><cn id="S4.T2.91.91.91.7.m1.1.1.cmml" type="float" xref="S4.T2.91.91.91.7.m1.1.1">64.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.91.91.91.7.m1.1c">64.81</annotation><annotation encoding="application/x-llamapun" id="S4.T2.91.91.91.7.m1.1d">64.81</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.92.92.92.8"><math alttext="64.40" class="ltx_Math" display="inline" id="S4.T2.92.92.92.8.m1.1"><semantics id="S4.T2.92.92.92.8.m1.1a"><mn id="S4.T2.92.92.92.8.m1.1.1" xref="S4.T2.92.92.92.8.m1.1.1.cmml">64.40</mn><annotation-xml encoding="MathML-Content" id="S4.T2.92.92.92.8.m1.1b"><cn id="S4.T2.92.92.92.8.m1.1.1.cmml" type="float" xref="S4.T2.92.92.92.8.m1.1.1">64.40</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.92.92.92.8.m1.1c">64.40</annotation><annotation encoding="application/x-llamapun" id="S4.T2.92.92.92.8.m1.1d">64.40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.93.93.93.9"><math alttext="64.61" class="ltx_Math" display="inline" id="S4.T2.93.93.93.9.m1.1"><semantics id="S4.T2.93.93.93.9.m1.1a"><mn id="S4.T2.93.93.93.9.m1.1.1" xref="S4.T2.93.93.93.9.m1.1.1.cmml">64.61</mn><annotation-xml encoding="MathML-Content" id="S4.T2.93.93.93.9.m1.1b"><cn id="S4.T2.93.93.93.9.m1.1.1.cmml" type="float" xref="S4.T2.93.93.93.9.m1.1.1">64.61</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.93.93.93.9.m1.1c">64.61</annotation><annotation encoding="application/x-llamapun" id="S4.T2.93.93.93.9.m1.1d">64.61</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.102.102.102">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.94.94.94.1">Rainbow <span class="ltx_ERROR undefined" id="S4.T2.94.94.94.1.1">\our</span><sup class="ltx_sup" id="S4.T2.94.94.94.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.94.94.94.1.2.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.95.95.95.2"><math alttext="79.94" class="ltx_Math" display="inline" id="S4.T2.95.95.95.2.m1.1"><semantics id="S4.T2.95.95.95.2.m1.1a"><mn id="S4.T2.95.95.95.2.m1.1.1" xref="S4.T2.95.95.95.2.m1.1.1.cmml">79.94</mn><annotation-xml encoding="MathML-Content" id="S4.T2.95.95.95.2.m1.1b"><cn id="S4.T2.95.95.95.2.m1.1.1.cmml" type="float" xref="S4.T2.95.95.95.2.m1.1.1">79.94</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.95.95.95.2.m1.1c">79.94</annotation><annotation encoding="application/x-llamapun" id="S4.T2.95.95.95.2.m1.1d">79.94</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.96.96.96.3"><math alttext="58.39" class="ltx_Math" display="inline" id="S4.T2.96.96.96.3.m1.1"><semantics id="S4.T2.96.96.96.3.m1.1a"><mn id="S4.T2.96.96.96.3.m1.1.1" xref="S4.T2.96.96.96.3.m1.1.1.cmml">58.39</mn><annotation-xml encoding="MathML-Content" id="S4.T2.96.96.96.3.m1.1b"><cn id="S4.T2.96.96.96.3.m1.1.1.cmml" type="float" xref="S4.T2.96.96.96.3.m1.1.1">58.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.96.96.96.3.m1.1c">58.39</annotation><annotation encoding="application/x-llamapun" id="S4.T2.96.96.96.3.m1.1d">58.39</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.97.97.97.4"><math alttext="70.30" class="ltx_Math" display="inline" id="S4.T2.97.97.97.4.m1.1"><semantics id="S4.T2.97.97.97.4.m1.1a"><mn id="S4.T2.97.97.97.4.m1.1.1" xref="S4.T2.97.97.97.4.m1.1.1.cmml">70.30</mn><annotation-xml encoding="MathML-Content" id="S4.T2.97.97.97.4.m1.1b"><cn id="S4.T2.97.97.97.4.m1.1.1.cmml" type="float" xref="S4.T2.97.97.97.4.m1.1.1">70.30</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.97.97.97.4.m1.1c">70.30</annotation><annotation encoding="application/x-llamapun" id="S4.T2.97.97.97.4.m1.1d">70.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.98.98.98.5"><math alttext="67.00" class="ltx_Math" display="inline" id="S4.T2.98.98.98.5.m1.1"><semantics id="S4.T2.98.98.98.5.m1.1a"><mn id="S4.T2.98.98.98.5.m1.1.1" xref="S4.T2.98.98.98.5.m1.1.1.cmml">67.00</mn><annotation-xml encoding="MathML-Content" id="S4.T2.98.98.98.5.m1.1b"><cn id="S4.T2.98.98.98.5.m1.1.1.cmml" type="float" xref="S4.T2.98.98.98.5.m1.1.1">67.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.98.98.98.5.m1.1c">67.00</annotation><annotation encoding="application/x-llamapun" id="S4.T2.98.98.98.5.m1.1d">67.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.99.99.99.6"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T2.99.99.99.6.1">68.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.100.100.100.7"><math alttext="70.47" class="ltx_Math" display="inline" id="S4.T2.100.100.100.7.m1.1"><semantics id="S4.T2.100.100.100.7.m1.1a"><mn id="S4.T2.100.100.100.7.m1.1.1" xref="S4.T2.100.100.100.7.m1.1.1.cmml">70.47</mn><annotation-xml encoding="MathML-Content" id="S4.T2.100.100.100.7.m1.1b"><cn id="S4.T2.100.100.100.7.m1.1.1.cmml" type="float" xref="S4.T2.100.100.100.7.m1.1.1">70.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.100.100.100.7.m1.1c">70.47</annotation><annotation encoding="application/x-llamapun" id="S4.T2.100.100.100.7.m1.1d">70.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.101.101.101.8"><math alttext="76.05" class="ltx_Math" display="inline" id="S4.T2.101.101.101.8.m1.1"><semantics id="S4.T2.101.101.101.8.m1.1a"><mn id="S4.T2.101.101.101.8.m1.1.1" xref="S4.T2.101.101.101.8.m1.1.1.cmml">76.05</mn><annotation-xml encoding="MathML-Content" id="S4.T2.101.101.101.8.m1.1b"><cn id="S4.T2.101.101.101.8.m1.1.1.cmml" type="float" xref="S4.T2.101.101.101.8.m1.1.1">76.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.101.101.101.8.m1.1c">76.05</annotation><annotation encoding="application/x-llamapun" id="S4.T2.101.101.101.8.m1.1d">76.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.102.102.102.9"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T2.102.102.102.9.1">73.26</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of various models on basic information extraction (IE) tasks.  It compares Cuckoo, a novel IE model introduced in the paper, against several existing state-of-the-art IE models and different pre-training approaches. The evaluation focuses on named entity recognition and relationship extraction tasks using established benchmark datasets. The table highlights Cuckoo's superior performance, particularly in few-shot scenarios, indicating its effectiveness in adapting to diverse IE tasks.  It also analyzes variations of the Cuckoo model—specifically, models trained only with pre-training or post-training data—to understand the impact of each stage on its overall performance. The results show that Cuckoo benefits significantly from the massive pre-training data used by LLMs and efficiently leverages both pre-training and post-training data. The 'In-domain Transfer'  results illustrate Cuckoo's improved performance when the test data matches the pre-training data format and task, confirming the impact of data-centric training paradigm.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on Basic IE Tasks. ††{\dagger}†: In-domain Transfer. (Transfer learning on the same task and format as the pre-training stage.)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.52.52">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.52.52.53.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S4.T3.52.52.53.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.52.52.53.1.2">SQuAD</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.52.52.53.1.3">SQuAD-V2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.52.52.53.1.4">DROP</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.52.52.53.1.5">Avg.</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.4.5" rowspan="2"><span class="ltx_text" id="S4.T3.4.4.4.5.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.4.4.4.5.1.1" style="width:4.3pt;height:17.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.8pt;transform:translate(-6.75pt,-6.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.4.4.4.5.1.1.1">zero</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.4.6"><span class="ltx_ERROR undefined" id="S4.T3.4.4.4.6.1">\our</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1"><math alttext="48.82" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mn id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">48.82</mn><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><cn id="S4.T3.1.1.1.1.m1.1.1.cmml" type="float" xref="S4.T3.1.1.1.1.m1.1.1">48.82</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">48.82</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">48.82</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.2"><math alttext="49.16" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mn id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml">49.16</mn><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><cn id="S4.T3.2.2.2.2.m1.1.1.cmml" type="float" xref="S4.T3.2.2.2.2.m1.1.1">49.16</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">49.16</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">49.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.3"><math alttext="38.41" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mn id="S4.T3.3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.cmml">38.41</mn><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><cn id="S4.T3.3.3.3.3.m1.1.1.cmml" type="float" xref="S4.T3.3.3.3.3.m1.1.1">38.41</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">38.41</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">38.41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4"><math alttext="45.46" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mn id="S4.T3.4.4.4.4.m1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.cmml">45.46</mn><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><cn id="S4.T3.4.4.4.4.m1.1.1.cmml" type="float" xref="S4.T3.4.4.4.4.m1.1.1">45.46</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">45.46</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">45.46</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.8.8.8.5">Rainbow <span class="ltx_ERROR undefined" id="S4.T3.8.8.8.5.1">\our</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.1"><math alttext="82.79" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mn id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml">82.79</mn><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><cn id="S4.T3.5.5.5.1.m1.1.1.cmml" type="float" xref="S4.T3.5.5.5.1.m1.1.1">82.79</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">82.79</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">82.79</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.2"><math alttext="57.67" class="ltx_Math" display="inline" id="S4.T3.6.6.6.2.m1.1"><semantics id="S4.T3.6.6.6.2.m1.1a"><mn id="S4.T3.6.6.6.2.m1.1.1" xref="S4.T3.6.6.6.2.m1.1.1.cmml">57.67</mn><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.2.m1.1b"><cn id="S4.T3.6.6.6.2.m1.1.1.cmml" type="float" xref="S4.T3.6.6.6.2.m1.1.1">57.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.2.m1.1c">57.67</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.2.m1.1d">57.67</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.3"><math alttext="61.62" class="ltx_Math" display="inline" id="S4.T3.7.7.7.3.m1.1"><semantics id="S4.T3.7.7.7.3.m1.1a"><mn id="S4.T3.7.7.7.3.m1.1.1" xref="S4.T3.7.7.7.3.m1.1.1.cmml">61.62</mn><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.3.m1.1b"><cn id="S4.T3.7.7.7.3.m1.1.1.cmml" type="float" xref="S4.T3.7.7.7.3.m1.1.1">61.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.3.m1.1c">61.62</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.3.m1.1d">61.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.4"><math alttext="67.36" class="ltx_Math" display="inline" id="S4.T3.8.8.8.4.m1.1"><semantics id="S4.T3.8.8.8.4.m1.1a"><mn id="S4.T3.8.8.8.4.m1.1.1" xref="S4.T3.8.8.8.4.m1.1.1.cmml">67.36</mn><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.4.m1.1b"><cn id="S4.T3.8.8.8.4.m1.1.1.cmml" type="float" xref="S4.T3.8.8.8.4.m1.1.1">67.36</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.4.m1.1c">67.36</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.4.m1.1d">67.36</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.12.12.12.5" rowspan="10"><span class="ltx_text" id="S4.T3.12.12.12.5.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T3.12.12.12.5.1.1" style="width:6.9pt;height:36.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-14.75pt,-14.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T3.12.12.12.5.1.1.1">few-shot</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.12.12.12.6">OPT-C4-TuluV3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.1"><math alttext="39.80" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mn id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml">39.80</mn><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><cn id="S4.T3.9.9.9.1.m1.1.1.cmml" type="float" xref="S4.T3.9.9.9.1.m1.1.1">39.80</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">39.80</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">39.80</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.2"><math alttext="53.81" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.m1.1"><semantics id="S4.T3.10.10.10.2.m1.1a"><mn id="S4.T3.10.10.10.2.m1.1.1" xref="S4.T3.10.10.10.2.m1.1.1.cmml">53.81</mn><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.m1.1b"><cn id="S4.T3.10.10.10.2.m1.1.1.cmml" type="float" xref="S4.T3.10.10.10.2.m1.1.1">53.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.m1.1c">53.81</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.m1.1d">53.81</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.11.11.3"><math alttext="31.00" class="ltx_Math" display="inline" id="S4.T3.11.11.11.3.m1.1"><semantics id="S4.T3.11.11.11.3.m1.1a"><mn id="S4.T3.11.11.11.3.m1.1.1" xref="S4.T3.11.11.11.3.m1.1.1.cmml">31.00</mn><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.3.m1.1b"><cn id="S4.T3.11.11.11.3.m1.1.1.cmml" type="float" xref="S4.T3.11.11.11.3.m1.1.1">31.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.3.m1.1c">31.00</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.3.m1.1d">31.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.12.4"><math alttext="41.54" class="ltx_Math" display="inline" id="S4.T3.12.12.12.4.m1.1"><semantics id="S4.T3.12.12.12.4.m1.1a"><mn id="S4.T3.12.12.12.4.m1.1.1" xref="S4.T3.12.12.12.4.m1.1.1.cmml">41.54</mn><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.4.m1.1b"><cn id="S4.T3.12.12.12.4.m1.1.1.cmml" type="float" xref="S4.T3.12.12.12.4.m1.1.1">41.54</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.4.m1.1c">41.54</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.4.m1.1d">41.54</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.16.16.16.5">RoBERTa</th>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.13.1"><math alttext="31.86" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.1.m1.1a"><mn id="S4.T3.13.13.13.1.m1.1.1" xref="S4.T3.13.13.13.1.m1.1.1.cmml">31.86</mn><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.m1.1b"><cn id="S4.T3.13.13.13.1.m1.1.1.cmml" type="float" xref="S4.T3.13.13.13.1.m1.1.1">31.86</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.m1.1c">31.86</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.m1.1d">31.86</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.2"><math alttext="48.55" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.m1.1"><semantics id="S4.T3.14.14.14.2.m1.1a"><mn id="S4.T3.14.14.14.2.m1.1.1" xref="S4.T3.14.14.14.2.m1.1.1.cmml">48.55</mn><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.m1.1b"><cn id="S4.T3.14.14.14.2.m1.1.1.cmml" type="float" xref="S4.T3.14.14.14.2.m1.1.1">48.55</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.m1.1c">48.55</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.m1.1d">48.55</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.3"><math alttext="9.16" class="ltx_Math" display="inline" id="S4.T3.15.15.15.3.m1.1"><semantics id="S4.T3.15.15.15.3.m1.1a"><mn id="S4.T3.15.15.15.3.m1.1.1" xref="S4.T3.15.15.15.3.m1.1.1.cmml">9.16</mn><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.3.m1.1b"><cn id="S4.T3.15.15.15.3.m1.1.1.cmml" type="float" xref="S4.T3.15.15.15.3.m1.1.1">9.16</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.3.m1.1c">9.16</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.3.m1.1d">9.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.4"><math alttext="29.86" class="ltx_Math" display="inline" id="S4.T3.16.16.16.4.m1.1"><semantics id="S4.T3.16.16.16.4.m1.1a"><mn id="S4.T3.16.16.16.4.m1.1.1" xref="S4.T3.16.16.16.4.m1.1.1.cmml">29.86</mn><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.4.m1.1b"><cn id="S4.T3.16.16.16.4.m1.1.1.cmml" type="float" xref="S4.T3.16.16.16.4.m1.1.1">29.86</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.4.m1.1c">29.86</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.4.m1.1d">29.86</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.20.20.20.5">MultiNERD</th>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.17.1"><math alttext="42.85" class="ltx_Math" display="inline" id="S4.T3.17.17.17.1.m1.1"><semantics id="S4.T3.17.17.17.1.m1.1a"><mn id="S4.T3.17.17.17.1.m1.1.1" xref="S4.T3.17.17.17.1.m1.1.1.cmml">42.85</mn><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.1.m1.1b"><cn id="S4.T3.17.17.17.1.m1.1.1.cmml" type="float" xref="S4.T3.17.17.17.1.m1.1.1">42.85</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.1.m1.1c">42.85</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.1.m1.1d">42.85</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.18.2"><math alttext="50.99" class="ltx_Math" display="inline" id="S4.T3.18.18.18.2.m1.1"><semantics id="S4.T3.18.18.18.2.m1.1a"><mn id="S4.T3.18.18.18.2.m1.1.1" xref="S4.T3.18.18.18.2.m1.1.1.cmml">50.99</mn><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.2.m1.1b"><cn id="S4.T3.18.18.18.2.m1.1.1.cmml" type="float" xref="S4.T3.18.18.18.2.m1.1.1">50.99</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.2.m1.1c">50.99</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.2.m1.1d">50.99</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.19.3"><math alttext="30.12" class="ltx_Math" display="inline" id="S4.T3.19.19.19.3.m1.1"><semantics id="S4.T3.19.19.19.3.m1.1a"><mn id="S4.T3.19.19.19.3.m1.1.1" xref="S4.T3.19.19.19.3.m1.1.1.cmml">30.12</mn><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.19.3.m1.1b"><cn id="S4.T3.19.19.19.3.m1.1.1.cmml" type="float" xref="S4.T3.19.19.19.3.m1.1.1">30.12</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.19.3.m1.1c">30.12</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.19.3.m1.1d">30.12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.20.20.20.4"><math alttext="41.32" class="ltx_Math" display="inline" id="S4.T3.20.20.20.4.m1.1"><semantics id="S4.T3.20.20.20.4.m1.1a"><mn id="S4.T3.20.20.20.4.m1.1.1" xref="S4.T3.20.20.20.4.m1.1.1.cmml">41.32</mn><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.20.4.m1.1b"><cn id="S4.T3.20.20.20.4.m1.1.1.cmml" type="float" xref="S4.T3.20.20.20.4.m1.1.1">41.32</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.20.4.m1.1c">41.32</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.20.4.m1.1d">41.32</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.24.24.24.5">NuNER</th>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.1"><math alttext="61.60" class="ltx_Math" display="inline" id="S4.T3.21.21.21.1.m1.1"><semantics id="S4.T3.21.21.21.1.m1.1a"><mn id="S4.T3.21.21.21.1.m1.1.1" xref="S4.T3.21.21.21.1.m1.1.1.cmml">61.60</mn><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.21.1.m1.1b"><cn id="S4.T3.21.21.21.1.m1.1.1.cmml" type="float" xref="S4.T3.21.21.21.1.m1.1.1">61.60</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.21.1.m1.1c">61.60</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.21.1.m1.1d">61.60</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.22.22.22.2"><math alttext="52.67" class="ltx_Math" display="inline" id="S4.T3.22.22.22.2.m1.1"><semantics id="S4.T3.22.22.22.2.m1.1a"><mn id="S4.T3.22.22.22.2.m1.1.1" xref="S4.T3.22.22.22.2.m1.1.1.cmml">52.67</mn><annotation-xml encoding="MathML-Content" id="S4.T3.22.22.22.2.m1.1b"><cn id="S4.T3.22.22.22.2.m1.1.1.cmml" type="float" xref="S4.T3.22.22.22.2.m1.1.1">52.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.22.22.2.m1.1c">52.67</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.22.22.2.m1.1d">52.67</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.23.23.23.3"><math alttext="37.37" class="ltx_Math" display="inline" id="S4.T3.23.23.23.3.m1.1"><semantics id="S4.T3.23.23.23.3.m1.1a"><mn id="S4.T3.23.23.23.3.m1.1.1" xref="S4.T3.23.23.23.3.m1.1.1.cmml">37.37</mn><annotation-xml encoding="MathML-Content" id="S4.T3.23.23.23.3.m1.1b"><cn id="S4.T3.23.23.23.3.m1.1.1.cmml" type="float" xref="S4.T3.23.23.23.3.m1.1.1">37.37</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.23.23.3.m1.1c">37.37</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.23.23.3.m1.1d">37.37</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.24.24.24.4"><math alttext="50.55" class="ltx_Math" display="inline" id="S4.T3.24.24.24.4.m1.1"><semantics id="S4.T3.24.24.24.4.m1.1a"><mn id="S4.T3.24.24.24.4.m1.1.1" xref="S4.T3.24.24.24.4.m1.1.1.cmml">50.55</mn><annotation-xml encoding="MathML-Content" id="S4.T3.24.24.24.4.m1.1b"><cn id="S4.T3.24.24.24.4.m1.1.1.cmml" type="float" xref="S4.T3.24.24.24.4.m1.1.1">50.55</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.24.24.4.m1.1c">50.55</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.24.24.4.m1.1d">50.55</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.28.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.28.28.28.5">MetaIE</th>
<td class="ltx_td ltx_align_center" id="S4.T3.25.25.25.1"><math alttext="74.59" class="ltx_Math" display="inline" id="S4.T3.25.25.25.1.m1.1"><semantics id="S4.T3.25.25.25.1.m1.1a"><mn id="S4.T3.25.25.25.1.m1.1.1" xref="S4.T3.25.25.25.1.m1.1.1.cmml">74.59</mn><annotation-xml encoding="MathML-Content" id="S4.T3.25.25.25.1.m1.1b"><cn id="S4.T3.25.25.25.1.m1.1.1.cmml" type="float" xref="S4.T3.25.25.25.1.m1.1.1">74.59</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.25.25.25.1.m1.1c">74.59</annotation><annotation encoding="application/x-llamapun" id="S4.T3.25.25.25.1.m1.1d">74.59</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.26.26.2"><math alttext="62.54" class="ltx_Math" display="inline" id="S4.T3.26.26.26.2.m1.1"><semantics id="S4.T3.26.26.26.2.m1.1a"><mn id="S4.T3.26.26.26.2.m1.1.1" xref="S4.T3.26.26.26.2.m1.1.1.cmml">62.54</mn><annotation-xml encoding="MathML-Content" id="S4.T3.26.26.26.2.m1.1b"><cn id="S4.T3.26.26.26.2.m1.1.1.cmml" type="float" xref="S4.T3.26.26.26.2.m1.1.1">62.54</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.26.26.26.2.m1.1c">62.54</annotation><annotation encoding="application/x-llamapun" id="S4.T3.26.26.26.2.m1.1d">62.54</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.27.27.27.3"><math alttext="30.73" class="ltx_Math" display="inline" id="S4.T3.27.27.27.3.m1.1"><semantics id="S4.T3.27.27.27.3.m1.1a"><mn id="S4.T3.27.27.27.3.m1.1.1" xref="S4.T3.27.27.27.3.m1.1.1.cmml">30.73</mn><annotation-xml encoding="MathML-Content" id="S4.T3.27.27.27.3.m1.1b"><cn id="S4.T3.27.27.27.3.m1.1.1.cmml" type="float" xref="S4.T3.27.27.27.3.m1.1.1">30.73</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.27.27.27.3.m1.1c">30.73</annotation><annotation encoding="application/x-llamapun" id="S4.T3.27.27.27.3.m1.1d">30.73</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.28.28.28.4"><math alttext="55.95" class="ltx_Math" display="inline" id="S4.T3.28.28.28.4.m1.1"><semantics id="S4.T3.28.28.28.4.m1.1a"><mn id="S4.T3.28.28.28.4.m1.1.1" xref="S4.T3.28.28.28.4.m1.1.1.cmml">55.95</mn><annotation-xml encoding="MathML-Content" id="S4.T3.28.28.28.4.m1.1b"><cn id="S4.T3.28.28.28.4.m1.1.1.cmml" type="float" xref="S4.T3.28.28.28.4.m1.1.1">55.95</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.28.28.28.4.m1.1c">55.95</annotation><annotation encoding="application/x-llamapun" id="S4.T3.28.28.28.4.m1.1d">55.95</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.32.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.32.32.32.5"><span class="ltx_ERROR undefined" id="S4.T3.32.32.32.5.1">\our</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.1"><math alttext="77.47" class="ltx_Math" display="inline" id="S4.T3.29.29.29.1.m1.1"><semantics id="S4.T3.29.29.29.1.m1.1a"><mn id="S4.T3.29.29.29.1.m1.1.1" xref="S4.T3.29.29.29.1.m1.1.1.cmml">77.47</mn><annotation-xml encoding="MathML-Content" id="S4.T3.29.29.29.1.m1.1b"><cn id="S4.T3.29.29.29.1.m1.1.1.cmml" type="float" xref="S4.T3.29.29.29.1.m1.1.1">77.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.29.29.29.1.m1.1c">77.47</annotation><annotation encoding="application/x-llamapun" id="S4.T3.29.29.29.1.m1.1d">77.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.30.30.30.2"><math alttext="64.06" class="ltx_Math" display="inline" id="S4.T3.30.30.30.2.m1.1"><semantics id="S4.T3.30.30.30.2.m1.1a"><mn id="S4.T3.30.30.30.2.m1.1.1" xref="S4.T3.30.30.30.2.m1.1.1.cmml">64.06</mn><annotation-xml encoding="MathML-Content" id="S4.T3.30.30.30.2.m1.1b"><cn id="S4.T3.30.30.30.2.m1.1.1.cmml" type="float" xref="S4.T3.30.30.30.2.m1.1.1">64.06</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.30.30.30.2.m1.1c">64.06</annotation><annotation encoding="application/x-llamapun" id="S4.T3.30.30.30.2.m1.1d">64.06</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.3"><math alttext="54.25" class="ltx_Math" display="inline" id="S4.T3.31.31.31.3.m1.1"><semantics id="S4.T3.31.31.31.3.m1.1a"><mn id="S4.T3.31.31.31.3.m1.1.1" xref="S4.T3.31.31.31.3.m1.1.1.cmml">54.25</mn><annotation-xml encoding="MathML-Content" id="S4.T3.31.31.31.3.m1.1b"><cn id="S4.T3.31.31.31.3.m1.1.1.cmml" type="float" xref="S4.T3.31.31.31.3.m1.1.1">54.25</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.31.31.31.3.m1.1c">54.25</annotation><annotation encoding="application/x-llamapun" id="S4.T3.31.31.31.3.m1.1d">54.25</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.32.32.32.4"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.32.32.32.4.1">65.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.37.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.33.33.33.1">    Only Pre-train</th>
<td class="ltx_td ltx_align_center" id="S4.T3.34.34.34.2"><math alttext="75.64" class="ltx_Math" display="inline" id="S4.T3.34.34.34.2.m1.1"><semantics id="S4.T3.34.34.34.2.m1.1a"><mn id="S4.T3.34.34.34.2.m1.1.1" xref="S4.T3.34.34.34.2.m1.1.1.cmml">75.64</mn><annotation-xml encoding="MathML-Content" id="S4.T3.34.34.34.2.m1.1b"><cn id="S4.T3.34.34.34.2.m1.1.1.cmml" type="float" xref="S4.T3.34.34.34.2.m1.1.1">75.64</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.34.34.34.2.m1.1c">75.64</annotation><annotation encoding="application/x-llamapun" id="S4.T3.34.34.34.2.m1.1d">75.64</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.35.35.35.3"><math alttext="63.36" class="ltx_Math" display="inline" id="S4.T3.35.35.35.3.m1.1"><semantics id="S4.T3.35.35.35.3.m1.1a"><mn id="S4.T3.35.35.35.3.m1.1.1" xref="S4.T3.35.35.35.3.m1.1.1.cmml">63.36</mn><annotation-xml encoding="MathML-Content" id="S4.T3.35.35.35.3.m1.1b"><cn id="S4.T3.35.35.35.3.m1.1.1.cmml" type="float" xref="S4.T3.35.35.35.3.m1.1.1">63.36</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.35.35.35.3.m1.1c">63.36</annotation><annotation encoding="application/x-llamapun" id="S4.T3.35.35.35.3.m1.1d">63.36</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.36.36.36.4"><math alttext="52.81" class="ltx_Math" display="inline" id="S4.T3.36.36.36.4.m1.1"><semantics id="S4.T3.36.36.36.4.m1.1a"><mn id="S4.T3.36.36.36.4.m1.1.1" xref="S4.T3.36.36.36.4.m1.1.1.cmml">52.81</mn><annotation-xml encoding="MathML-Content" id="S4.T3.36.36.36.4.m1.1b"><cn id="S4.T3.36.36.36.4.m1.1.1.cmml" type="float" xref="S4.T3.36.36.36.4.m1.1.1">52.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.36.36.36.4.m1.1c">52.81</annotation><annotation encoding="application/x-llamapun" id="S4.T3.36.36.36.4.m1.1d">52.81</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.37.37.5"><math alttext="63.94" class="ltx_Math" display="inline" id="S4.T3.37.37.37.5.m1.1"><semantics id="S4.T3.37.37.37.5.m1.1a"><mn id="S4.T3.37.37.37.5.m1.1.1" xref="S4.T3.37.37.37.5.m1.1.1.cmml">63.94</mn><annotation-xml encoding="MathML-Content" id="S4.T3.37.37.37.5.m1.1b"><cn id="S4.T3.37.37.37.5.m1.1.1.cmml" type="float" xref="S4.T3.37.37.37.5.m1.1.1">63.94</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.37.37.37.5.m1.1c">63.94</annotation><annotation encoding="application/x-llamapun" id="S4.T3.37.37.37.5.m1.1d">63.94</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.42.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.38.38.38.1">    Only Post-train</th>
<td class="ltx_td ltx_align_center" id="S4.T3.39.39.39.2"><math alttext="77.05" class="ltx_Math" display="inline" id="S4.T3.39.39.39.2.m1.1"><semantics id="S4.T3.39.39.39.2.m1.1a"><mn id="S4.T3.39.39.39.2.m1.1.1" xref="S4.T3.39.39.39.2.m1.1.1.cmml">77.05</mn><annotation-xml encoding="MathML-Content" id="S4.T3.39.39.39.2.m1.1b"><cn id="S4.T3.39.39.39.2.m1.1.1.cmml" type="float" xref="S4.T3.39.39.39.2.m1.1.1">77.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.39.39.39.2.m1.1c">77.05</annotation><annotation encoding="application/x-llamapun" id="S4.T3.39.39.39.2.m1.1d">77.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.40.40.40.3"><math alttext="62.39" class="ltx_Math" display="inline" id="S4.T3.40.40.40.3.m1.1"><semantics id="S4.T3.40.40.40.3.m1.1a"><mn id="S4.T3.40.40.40.3.m1.1.1" xref="S4.T3.40.40.40.3.m1.1.1.cmml">62.39</mn><annotation-xml encoding="MathML-Content" id="S4.T3.40.40.40.3.m1.1b"><cn id="S4.T3.40.40.40.3.m1.1.1.cmml" type="float" xref="S4.T3.40.40.40.3.m1.1.1">62.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.40.40.40.3.m1.1c">62.39</annotation><annotation encoding="application/x-llamapun" id="S4.T3.40.40.40.3.m1.1d">62.39</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.41.41.41.4"><math alttext="54.80" class="ltx_Math" display="inline" id="S4.T3.41.41.41.4.m1.1"><semantics id="S4.T3.41.41.41.4.m1.1a"><mn id="S4.T3.41.41.41.4.m1.1.1" xref="S4.T3.41.41.41.4.m1.1.1.cmml">54.80</mn><annotation-xml encoding="MathML-Content" id="S4.T3.41.41.41.4.m1.1b"><cn id="S4.T3.41.41.41.4.m1.1.1.cmml" type="float" xref="S4.T3.41.41.41.4.m1.1.1">54.80</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.41.41.41.4.m1.1c">54.80</annotation><annotation encoding="application/x-llamapun" id="S4.T3.41.41.41.4.m1.1d">54.80</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.42.42.42.5"><math alttext="64.75" class="ltx_Math" display="inline" id="S4.T3.42.42.42.5.m1.1"><semantics id="S4.T3.42.42.42.5.m1.1a"><mn id="S4.T3.42.42.42.5.m1.1.1" xref="S4.T3.42.42.42.5.m1.1.1.cmml">64.75</mn><annotation-xml encoding="MathML-Content" id="S4.T3.42.42.42.5.m1.1b"><cn id="S4.T3.42.42.42.5.m1.1.1.cmml" type="float" xref="S4.T3.42.42.42.5.m1.1.1">64.75</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.42.42.42.5.m1.1c">64.75</annotation><annotation encoding="application/x-llamapun" id="S4.T3.42.42.42.5.m1.1d">64.75</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.47.47.47">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.43.43.43.1">MRQA<sup class="ltx_sup" id="S4.T3.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.43.43.43.1.1.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.44.44.44.2"><math alttext="80.07" class="ltx_Math" display="inline" id="S4.T3.44.44.44.2.m1.1"><semantics id="S4.T3.44.44.44.2.m1.1a"><mn id="S4.T3.44.44.44.2.m1.1.1" xref="S4.T3.44.44.44.2.m1.1.1.cmml">80.07</mn><annotation-xml encoding="MathML-Content" id="S4.T3.44.44.44.2.m1.1b"><cn id="S4.T3.44.44.44.2.m1.1.1.cmml" type="float" xref="S4.T3.44.44.44.2.m1.1.1">80.07</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.44.44.44.2.m1.1c">80.07</annotation><annotation encoding="application/x-llamapun" id="S4.T3.44.44.44.2.m1.1d">80.07</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.45.45.45.3"><math alttext="66.22" class="ltx_Math" display="inline" id="S4.T3.45.45.45.3.m1.1"><semantics id="S4.T3.45.45.45.3.m1.1a"><mn id="S4.T3.45.45.45.3.m1.1.1" xref="S4.T3.45.45.45.3.m1.1.1.cmml">66.22</mn><annotation-xml encoding="MathML-Content" id="S4.T3.45.45.45.3.m1.1b"><cn id="S4.T3.45.45.45.3.m1.1.1.cmml" type="float" xref="S4.T3.45.45.45.3.m1.1.1">66.22</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.45.45.45.3.m1.1c">66.22</annotation><annotation encoding="application/x-llamapun" id="S4.T3.45.45.45.3.m1.1d">66.22</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.46.46.46.4"><math alttext="54.46" class="ltx_Math" display="inline" id="S4.T3.46.46.46.4.m1.1"><semantics id="S4.T3.46.46.46.4.m1.1a"><mn id="S4.T3.46.46.46.4.m1.1.1" xref="S4.T3.46.46.46.4.m1.1.1.cmml">54.46</mn><annotation-xml encoding="MathML-Content" id="S4.T3.46.46.46.4.m1.1b"><cn id="S4.T3.46.46.46.4.m1.1.1.cmml" type="float" xref="S4.T3.46.46.46.4.m1.1.1">54.46</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.46.46.46.4.m1.1c">54.46</annotation><annotation encoding="application/x-llamapun" id="S4.T3.46.46.46.4.m1.1d">54.46</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.47.47.47.5"><math alttext="66.92" class="ltx_Math" display="inline" id="S4.T3.47.47.47.5.m1.1"><semantics id="S4.T3.47.47.47.5.m1.1a"><mn id="S4.T3.47.47.47.5.m1.1.1" xref="S4.T3.47.47.47.5.m1.1.1.cmml">66.92</mn><annotation-xml encoding="MathML-Content" id="S4.T3.47.47.47.5.m1.1b"><cn id="S4.T3.47.47.47.5.m1.1.1.cmml" type="float" xref="S4.T3.47.47.47.5.m1.1.1">66.92</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.47.47.47.5.m1.1c">66.92</annotation><annotation encoding="application/x-llamapun" id="S4.T3.47.47.47.5.m1.1d">66.92</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.52.52.52">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.48.48.48.1">Rainbow <span class="ltx_ERROR undefined" id="S4.T3.48.48.48.1.1">\our</span><sup class="ltx_sup" id="S4.T3.48.48.48.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.48.48.48.1.2.1">†</span></sup>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.49.49.49.2"><math alttext="86.57" class="ltx_Math" display="inline" id="S4.T3.49.49.49.2.m1.1"><semantics id="S4.T3.49.49.49.2.m1.1a"><mn id="S4.T3.49.49.49.2.m1.1.1" xref="S4.T3.49.49.49.2.m1.1.1.cmml">86.57</mn><annotation-xml encoding="MathML-Content" id="S4.T3.49.49.49.2.m1.1b"><cn id="S4.T3.49.49.49.2.m1.1.1.cmml" type="float" xref="S4.T3.49.49.49.2.m1.1.1">86.57</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.49.49.49.2.m1.1c">86.57</annotation><annotation encoding="application/x-llamapun" id="S4.T3.49.49.49.2.m1.1d">86.57</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.50.50.50.3"><math alttext="69.41" class="ltx_Math" display="inline" id="S4.T3.50.50.50.3.m1.1"><semantics id="S4.T3.50.50.50.3.m1.1a"><mn id="S4.T3.50.50.50.3.m1.1.1" xref="S4.T3.50.50.50.3.m1.1.1.cmml">69.41</mn><annotation-xml encoding="MathML-Content" id="S4.T3.50.50.50.3.m1.1b"><cn id="S4.T3.50.50.50.3.m1.1.1.cmml" type="float" xref="S4.T3.50.50.50.3.m1.1.1">69.41</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.50.50.50.3.m1.1c">69.41</annotation><annotation encoding="application/x-llamapun" id="S4.T3.50.50.50.3.m1.1d">69.41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.51.51.51.4"><math alttext="64.64" class="ltx_Math" display="inline" id="S4.T3.51.51.51.4.m1.1"><semantics id="S4.T3.51.51.51.4.m1.1a"><mn id="S4.T3.51.51.51.4.m1.1.1" xref="S4.T3.51.51.51.4.m1.1.1.cmml">64.64</mn><annotation-xml encoding="MathML-Content" id="S4.T3.51.51.51.4.m1.1b"><cn id="S4.T3.51.51.51.4.m1.1.1.cmml" type="float" xref="S4.T3.51.51.51.4.m1.1.1">64.64</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.51.51.51.4.m1.1c">64.64</annotation><annotation encoding="application/x-llamapun" id="S4.T3.51.51.51.4.m1.1d">64.64</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.52.52.52.5"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T3.52.52.52.5.1">73.54</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different models on query-based information extraction (IE) tasks.  The models are evaluated using three well-known datasets: SQUAD, SQUAD-V2, and DROP.  The results show the F1 score for each model on each dataset, indicating their ability to accurately answer questions based on provided contexts.  The 'In-domain Transfer' designation ('†') signifies the performance of a model trained on data from the same task and format as that of the evaluation, allowing for a comparison of in-domain versus out-of-domain generalization.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison on Query-based IE Tasks. ††{\dagger}†: In-domain Transfer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.38.38">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.38.38.39.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" colspan="2" id="S4.T4.38.38.39.1.1">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.38.38.39.1.2">Disamb.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.38.38.39.1.3">Prefer.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.38.38.39.1.4">Misc.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.38.38.40.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="2" id="S4.T4.38.38.40.2.1">Base Task</th>
<td class="ltx_td ltx_align_center" id="S4.T4.38.38.40.2.2">NER</td>
<td class="ltx_td ltx_align_center" id="S4.T4.38.38.40.2.3">MRC</td>
<td class="ltx_td ltx_align_center" id="S4.T4.38.38.40.2.4">NER</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.3.4" rowspan="2"><span class="ltx_text" id="S4.T4.3.3.3.4.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T4.3.3.3.4.1.1" style="width:4.3pt;height:17.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.8pt;transform:translate(-6.75pt,-6.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T4.3.3.3.4.1.1.1">zero</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.3.3.5"><span class="ltx_ERROR undefined" id="S4.T4.3.3.3.5.1">\our</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1"><math alttext="13.88" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mn id="S4.T4.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.m1.1.1.cmml">13.88</mn><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><cn id="S4.T4.1.1.1.1.m1.1.1.cmml" type="float" xref="S4.T4.1.1.1.1.m1.1.1">13.88</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">13.88</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">13.88</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.2"><math alttext="35.56" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mn id="S4.T4.2.2.2.2.m1.1.1" xref="S4.T4.2.2.2.2.m1.1.1.cmml">35.56</mn><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><cn id="S4.T4.2.2.2.2.m1.1.1.cmml" type="float" xref="S4.T4.2.2.2.2.m1.1.1">35.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">35.56</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">35.56</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3"><math alttext="2.93" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mn id="S4.T4.3.3.3.3.m1.1.1" xref="S4.T4.3.3.3.3.m1.1.1.cmml">2.93</mn><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><cn id="S4.T4.3.3.3.3.m1.1.1.cmml" type="float" xref="S4.T4.3.3.3.3.m1.1.1">2.93</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">2.93</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">2.93</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.6.6.6.4">Rainbow <span class="ltx_ERROR undefined" id="S4.T4.6.6.6.4.1">\our</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.1"><math alttext="21.93" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mn id="S4.T4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.1.m1.1.1.cmml">21.93</mn><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><cn id="S4.T4.4.4.4.1.m1.1.1.cmml" type="float" xref="S4.T4.4.4.4.1.m1.1.1">21.93</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">21.93</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">21.93</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.2"><math alttext="60.81" class="ltx_Math" display="inline" id="S4.T4.5.5.5.2.m1.1"><semantics id="S4.T4.5.5.5.2.m1.1a"><mn id="S4.T4.5.5.5.2.m1.1.1" xref="S4.T4.5.5.5.2.m1.1.1.cmml">60.81</mn><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.2.m1.1b"><cn id="S4.T4.5.5.5.2.m1.1.1.cmml" type="float" xref="S4.T4.5.5.5.2.m1.1.1">60.81</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.2.m1.1c">60.81</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.2.m1.1d">60.81</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.3"><math alttext="14.62" class="ltx_Math" display="inline" id="S4.T4.6.6.6.3.m1.1"><semantics id="S4.T4.6.6.6.3.m1.1a"><mn id="S4.T4.6.6.6.3.m1.1.1" xref="S4.T4.6.6.6.3.m1.1.1.cmml">14.62</mn><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.3.m1.1b"><cn id="S4.T4.6.6.6.3.m1.1.1.cmml" type="float" xref="S4.T4.6.6.6.3.m1.1.1">14.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.3.m1.1c">14.62</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.3.m1.1d">14.62</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.9.9.9.4" rowspan="10"><span class="ltx_text" id="S4.T4.9.9.9.4.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T4.9.9.9.4.1.1" style="width:6.9pt;height:36.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.4pt;transform:translate(-14.75pt,-14.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="S4.T4.9.9.9.4.1.1.1">few-shot</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.9.5">OPT-C4-TuluV3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.7.7.1"><math alttext="28.56" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><mn id="S4.T4.7.7.7.1.m1.1.1" xref="S4.T4.7.7.7.1.m1.1.1.cmml">28.56</mn><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><cn id="S4.T4.7.7.7.1.m1.1.1.cmml" type="float" xref="S4.T4.7.7.7.1.m1.1.1">28.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">28.56</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">28.56</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.8.8.2"><math alttext="53.68" class="ltx_Math" display="inline" id="S4.T4.8.8.8.2.m1.1"><semantics id="S4.T4.8.8.8.2.m1.1a"><mn id="S4.T4.8.8.8.2.m1.1.1" xref="S4.T4.8.8.8.2.m1.1.1.cmml">53.68</mn><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.2.m1.1b"><cn id="S4.T4.8.8.8.2.m1.1.1.cmml" type="float" xref="S4.T4.8.8.8.2.m1.1.1">53.68</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.2.m1.1c">53.68</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.2.m1.1d">53.68</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.9.9.9.3"><math alttext="37.19" class="ltx_Math" display="inline" id="S4.T4.9.9.9.3.m1.1"><semantics id="S4.T4.9.9.9.3.m1.1a"><mn id="S4.T4.9.9.9.3.m1.1.1" xref="S4.T4.9.9.9.3.m1.1.1.cmml">37.19</mn><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.3.m1.1b"><cn id="S4.T4.9.9.9.3.m1.1.1.cmml" type="float" xref="S4.T4.9.9.9.3.m1.1.1">37.19</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.3.m1.1c">37.19</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.3.m1.1d">37.19</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.12.12.12.4">RoBERTa</th>
<td class="ltx_td ltx_align_center" id="S4.T4.10.10.10.1"><math alttext="12.29" class="ltx_Math" display="inline" id="S4.T4.10.10.10.1.m1.1"><semantics id="S4.T4.10.10.10.1.m1.1a"><mn id="S4.T4.10.10.10.1.m1.1.1" xref="S4.T4.10.10.10.1.m1.1.1.cmml">12.29</mn><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.1.m1.1b"><cn id="S4.T4.10.10.10.1.m1.1.1.cmml" type="float" xref="S4.T4.10.10.10.1.m1.1.1">12.29</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.1.m1.1c">12.29</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.1.m1.1d">12.29</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.11.11.11.2"><math alttext="6.04" class="ltx_Math" display="inline" id="S4.T4.11.11.11.2.m1.1"><semantics id="S4.T4.11.11.11.2.m1.1a"><mn id="S4.T4.11.11.11.2.m1.1.1" xref="S4.T4.11.11.11.2.m1.1.1.cmml">6.04</mn><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.2.m1.1b"><cn id="S4.T4.11.11.11.2.m1.1.1.cmml" type="float" xref="S4.T4.11.11.11.2.m1.1.1">6.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.2.m1.1c">6.04</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.2.m1.1d">6.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.12.3"><math alttext="9.71" class="ltx_Math" display="inline" id="S4.T4.12.12.12.3.m1.1"><semantics id="S4.T4.12.12.12.3.m1.1a"><mn id="S4.T4.12.12.12.3.m1.1.1" xref="S4.T4.12.12.12.3.m1.1.1.cmml">9.71</mn><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.12.3.m1.1b"><cn id="S4.T4.12.12.12.3.m1.1.1.cmml" type="float" xref="S4.T4.12.12.12.3.m1.1.1">9.71</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.12.3.m1.1c">9.71</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.12.3.m1.1d">9.71</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.15.15.15.4">MultiNERD</th>
<td class="ltx_td ltx_align_center" id="S4.T4.13.13.13.1"><math alttext="31.71^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.13.13.13.1.m1.1"><semantics id="S4.T4.13.13.13.1.m1.1a"><msup id="S4.T4.13.13.13.1.m1.1.1" xref="S4.T4.13.13.13.1.m1.1.1.cmml"><mn id="S4.T4.13.13.13.1.m1.1.1.2" xref="S4.T4.13.13.13.1.m1.1.1.2.cmml">31.71</mn><mo id="S4.T4.13.13.13.1.m1.1.1.3" xref="S4.T4.13.13.13.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.13.13.13.1.m1.1b"><apply id="S4.T4.13.13.13.1.m1.1.1.cmml" xref="S4.T4.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.13.13.13.1.m1.1.1.1.cmml" xref="S4.T4.13.13.13.1.m1.1.1">superscript</csymbol><cn id="S4.T4.13.13.13.1.m1.1.1.2.cmml" type="float" xref="S4.T4.13.13.13.1.m1.1.1.2">31.71</cn><ci id="S4.T4.13.13.13.1.m1.1.1.3.cmml" xref="S4.T4.13.13.13.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.13.13.1.m1.1c">31.71^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.13.13.1.m1.1d">31.71 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.14.14.14.2"><math alttext="30.84" class="ltx_Math" display="inline" id="S4.T4.14.14.14.2.m1.1"><semantics id="S4.T4.14.14.14.2.m1.1a"><mn id="S4.T4.14.14.14.2.m1.1.1" xref="S4.T4.14.14.14.2.m1.1.1.cmml">30.84</mn><annotation-xml encoding="MathML-Content" id="S4.T4.14.14.14.2.m1.1b"><cn id="S4.T4.14.14.14.2.m1.1.1.cmml" type="float" xref="S4.T4.14.14.14.2.m1.1.1">30.84</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.14.14.14.2.m1.1c">30.84</annotation><annotation encoding="application/x-llamapun" id="S4.T4.14.14.14.2.m1.1d">30.84</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.15.15.15.3"><math alttext="44.68^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.15.15.15.3.m1.1"><semantics id="S4.T4.15.15.15.3.m1.1a"><msup id="S4.T4.15.15.15.3.m1.1.1" xref="S4.T4.15.15.15.3.m1.1.1.cmml"><mn id="S4.T4.15.15.15.3.m1.1.1.2" xref="S4.T4.15.15.15.3.m1.1.1.2.cmml">44.68</mn><mo id="S4.T4.15.15.15.3.m1.1.1.3" xref="S4.T4.15.15.15.3.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.15.15.15.3.m1.1b"><apply id="S4.T4.15.15.15.3.m1.1.1.cmml" xref="S4.T4.15.15.15.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.15.15.15.3.m1.1.1.1.cmml" xref="S4.T4.15.15.15.3.m1.1.1">superscript</csymbol><cn id="S4.T4.15.15.15.3.m1.1.1.2.cmml" type="float" xref="S4.T4.15.15.15.3.m1.1.1.2">44.68</cn><ci id="S4.T4.15.15.15.3.m1.1.1.3.cmml" xref="S4.T4.15.15.15.3.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.15.15.15.3.m1.1c">44.68^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.15.15.15.3.m1.1d">44.68 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.18.18.18.4">NuNER</th>
<td class="ltx_td ltx_align_center" id="S4.T4.16.16.16.1"><math alttext="31.40^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.16.16.16.1.m1.1"><semantics id="S4.T4.16.16.16.1.m1.1a"><msup id="S4.T4.16.16.16.1.m1.1.1" xref="S4.T4.16.16.16.1.m1.1.1.cmml"><mn id="S4.T4.16.16.16.1.m1.1.1.2" xref="S4.T4.16.16.16.1.m1.1.1.2.cmml">31.40</mn><mo id="S4.T4.16.16.16.1.m1.1.1.3" xref="S4.T4.16.16.16.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.16.16.16.1.m1.1b"><apply id="S4.T4.16.16.16.1.m1.1.1.cmml" xref="S4.T4.16.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.16.16.16.1.m1.1.1.1.cmml" xref="S4.T4.16.16.16.1.m1.1.1">superscript</csymbol><cn id="S4.T4.16.16.16.1.m1.1.1.2.cmml" type="float" xref="S4.T4.16.16.16.1.m1.1.1.2">31.40</cn><ci id="S4.T4.16.16.16.1.m1.1.1.3.cmml" xref="S4.T4.16.16.16.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.16.16.16.1.m1.1c">31.40^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.16.16.16.1.m1.1d">31.40 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.17.17.17.2"><math alttext="51.01" class="ltx_Math" display="inline" id="S4.T4.17.17.17.2.m1.1"><semantics id="S4.T4.17.17.17.2.m1.1a"><mn id="S4.T4.17.17.17.2.m1.1.1" xref="S4.T4.17.17.17.2.m1.1.1.cmml">51.01</mn><annotation-xml encoding="MathML-Content" id="S4.T4.17.17.17.2.m1.1b"><cn id="S4.T4.17.17.17.2.m1.1.1.cmml" type="float" xref="S4.T4.17.17.17.2.m1.1.1">51.01</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.17.17.17.2.m1.1c">51.01</annotation><annotation encoding="application/x-llamapun" id="S4.T4.17.17.17.2.m1.1d">51.01</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.18.18.18.3"><math alttext="44.32^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.18.18.18.3.m1.1"><semantics id="S4.T4.18.18.18.3.m1.1a"><msup id="S4.T4.18.18.18.3.m1.1.1" xref="S4.T4.18.18.18.3.m1.1.1.cmml"><mn id="S4.T4.18.18.18.3.m1.1.1.2" xref="S4.T4.18.18.18.3.m1.1.1.2.cmml">44.32</mn><mo id="S4.T4.18.18.18.3.m1.1.1.3" xref="S4.T4.18.18.18.3.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.18.18.18.3.m1.1b"><apply id="S4.T4.18.18.18.3.m1.1.1.cmml" xref="S4.T4.18.18.18.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.18.18.18.3.m1.1.1.1.cmml" xref="S4.T4.18.18.18.3.m1.1.1">superscript</csymbol><cn id="S4.T4.18.18.18.3.m1.1.1.2.cmml" type="float" xref="S4.T4.18.18.18.3.m1.1.1.2">44.32</cn><ci id="S4.T4.18.18.18.3.m1.1.1.3.cmml" xref="S4.T4.18.18.18.3.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.18.18.18.3.m1.1c">44.32^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.18.18.18.3.m1.1d">44.32 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.21.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.21.21.21.4">MetaIE</th>
<td class="ltx_td ltx_align_center" id="S4.T4.19.19.19.1"><math alttext="29.77^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.19.19.19.1.m1.1"><semantics id="S4.T4.19.19.19.1.m1.1a"><msup id="S4.T4.19.19.19.1.m1.1.1" xref="S4.T4.19.19.19.1.m1.1.1.cmml"><mn id="S4.T4.19.19.19.1.m1.1.1.2" xref="S4.T4.19.19.19.1.m1.1.1.2.cmml">29.77</mn><mo id="S4.T4.19.19.19.1.m1.1.1.3" xref="S4.T4.19.19.19.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.19.19.19.1.m1.1b"><apply id="S4.T4.19.19.19.1.m1.1.1.cmml" xref="S4.T4.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.19.19.19.1.m1.1.1.1.cmml" xref="S4.T4.19.19.19.1.m1.1.1">superscript</csymbol><cn id="S4.T4.19.19.19.1.m1.1.1.2.cmml" type="float" xref="S4.T4.19.19.19.1.m1.1.1.2">29.77</cn><ci id="S4.T4.19.19.19.1.m1.1.1.3.cmml" xref="S4.T4.19.19.19.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.19.19.19.1.m1.1c">29.77^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.19.19.19.1.m1.1d">29.77 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.20.20.20.2"><math alttext="56.12" class="ltx_Math" display="inline" id="S4.T4.20.20.20.2.m1.1"><semantics id="S4.T4.20.20.20.2.m1.1a"><mn id="S4.T4.20.20.20.2.m1.1.1" xref="S4.T4.20.20.20.2.m1.1.1.cmml">56.12</mn><annotation-xml encoding="MathML-Content" id="S4.T4.20.20.20.2.m1.1b"><cn id="S4.T4.20.20.20.2.m1.1.1.cmml" type="float" xref="S4.T4.20.20.20.2.m1.1.1">56.12</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.20.20.20.2.m1.1c">56.12</annotation><annotation encoding="application/x-llamapun" id="S4.T4.20.20.20.2.m1.1d">56.12</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.21.21.21.3"><math alttext="47.35^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.21.21.21.3.m1.1"><semantics id="S4.T4.21.21.21.3.m1.1a"><msup id="S4.T4.21.21.21.3.m1.1.1" xref="S4.T4.21.21.21.3.m1.1.1.cmml"><mn id="S4.T4.21.21.21.3.m1.1.1.2" xref="S4.T4.21.21.21.3.m1.1.1.2.cmml">47.35</mn><mo id="S4.T4.21.21.21.3.m1.1.1.3" xref="S4.T4.21.21.21.3.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.21.21.21.3.m1.1b"><apply id="S4.T4.21.21.21.3.m1.1.1.cmml" xref="S4.T4.21.21.21.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.21.21.21.3.m1.1.1.1.cmml" xref="S4.T4.21.21.21.3.m1.1.1">superscript</csymbol><cn id="S4.T4.21.21.21.3.m1.1.1.2.cmml" type="float" xref="S4.T4.21.21.21.3.m1.1.1.2">47.35</cn><ci id="S4.T4.21.21.21.3.m1.1.1.3.cmml" xref="S4.T4.21.21.21.3.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.21.21.21.3.m1.1c">47.35^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.21.21.21.3.m1.1d">47.35 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.24.24.24.4"><span class="ltx_ERROR undefined" id="S4.T4.24.24.24.4.1">\our</span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.22.22.22.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T4.22.22.22.1.1">34.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.23.23.23.2"><math alttext="62.53" class="ltx_Math" display="inline" id="S4.T4.23.23.23.2.m1.1"><semantics id="S4.T4.23.23.23.2.m1.1a"><mn id="S4.T4.23.23.23.2.m1.1.1" xref="S4.T4.23.23.23.2.m1.1.1.cmml">62.53</mn><annotation-xml encoding="MathML-Content" id="S4.T4.23.23.23.2.m1.1b"><cn id="S4.T4.23.23.23.2.m1.1.1.cmml" type="float" xref="S4.T4.23.23.23.2.m1.1.1">62.53</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.23.23.23.2.m1.1c">62.53</annotation><annotation encoding="application/x-llamapun" id="S4.T4.23.23.23.2.m1.1d">62.53</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.24.24.24.3"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T4.24.24.24.3.1">49.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.28.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.25.25.25.1">    Only Pre-train</th>
<td class="ltx_td ltx_align_center" id="S4.T4.26.26.26.2"><math alttext="32.21" class="ltx_Math" display="inline" id="S4.T4.26.26.26.2.m1.1"><semantics id="S4.T4.26.26.26.2.m1.1a"><mn id="S4.T4.26.26.26.2.m1.1.1" xref="S4.T4.26.26.26.2.m1.1.1.cmml">32.21</mn><annotation-xml encoding="MathML-Content" id="S4.T4.26.26.26.2.m1.1b"><cn id="S4.T4.26.26.26.2.m1.1.1.cmml" type="float" xref="S4.T4.26.26.26.2.m1.1.1">32.21</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.26.26.26.2.m1.1c">32.21</annotation><annotation encoding="application/x-llamapun" id="S4.T4.26.26.26.2.m1.1d">32.21</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.27.27.27.3"><math alttext="59.64" class="ltx_Math" display="inline" id="S4.T4.27.27.27.3.m1.1"><semantics id="S4.T4.27.27.27.3.m1.1a"><mn id="S4.T4.27.27.27.3.m1.1.1" xref="S4.T4.27.27.27.3.m1.1.1.cmml">59.64</mn><annotation-xml encoding="MathML-Content" id="S4.T4.27.27.27.3.m1.1b"><cn id="S4.T4.27.27.27.3.m1.1.1.cmml" type="float" xref="S4.T4.27.27.27.3.m1.1.1">59.64</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.27.27.27.3.m1.1c">59.64</annotation><annotation encoding="application/x-llamapun" id="S4.T4.27.27.27.3.m1.1d">59.64</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.28.28.28.4"><math alttext="46.05" class="ltx_Math" display="inline" id="S4.T4.28.28.28.4.m1.1"><semantics id="S4.T4.28.28.28.4.m1.1a"><mn id="S4.T4.28.28.28.4.m1.1.1" xref="S4.T4.28.28.28.4.m1.1.1.cmml">46.05</mn><annotation-xml encoding="MathML-Content" id="S4.T4.28.28.28.4.m1.1b"><cn id="S4.T4.28.28.28.4.m1.1.1.cmml" type="float" xref="S4.T4.28.28.28.4.m1.1.1">46.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.28.28.28.4.m1.1c">46.05</annotation><annotation encoding="application/x-llamapun" id="S4.T4.28.28.28.4.m1.1d">46.05</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.32.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.29.29.29.1">    Only Post-train</th>
<td class="ltx_td ltx_align_center" id="S4.T4.30.30.30.2"><math alttext="34.28" class="ltx_Math" display="inline" id="S4.T4.30.30.30.2.m1.1"><semantics id="S4.T4.30.30.30.2.m1.1a"><mn id="S4.T4.30.30.30.2.m1.1.1" xref="S4.T4.30.30.30.2.m1.1.1.cmml">34.28</mn><annotation-xml encoding="MathML-Content" id="S4.T4.30.30.30.2.m1.1b"><cn id="S4.T4.30.30.30.2.m1.1.1.cmml" type="float" xref="S4.T4.30.30.30.2.m1.1.1">34.28</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.30.30.30.2.m1.1c">34.28</annotation><annotation encoding="application/x-llamapun" id="S4.T4.30.30.30.2.m1.1d">34.28</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.31.31.31.3"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T4.31.31.31.3.1">64.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.32.32.32.4"><math alttext="47.28" class="ltx_Math" display="inline" id="S4.T4.32.32.32.4.m1.1"><semantics id="S4.T4.32.32.32.4.m1.1a"><mn id="S4.T4.32.32.32.4.m1.1.1" xref="S4.T4.32.32.32.4.m1.1.1.cmml">47.28</mn><annotation-xml encoding="MathML-Content" id="S4.T4.32.32.32.4.m1.1b"><cn id="S4.T4.32.32.32.4.m1.1.1.cmml" type="float" xref="S4.T4.32.32.32.4.m1.1.1">47.28</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.32.32.32.4.m1.1c">47.28</annotation><annotation encoding="application/x-llamapun" id="S4.T4.32.32.32.4.m1.1d">47.28</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.35.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.35.35.35.4">MRQA</th>
<td class="ltx_td ltx_align_center" id="S4.T4.33.33.33.1"><math alttext="29.33" class="ltx_Math" display="inline" id="S4.T4.33.33.33.1.m1.1"><semantics id="S4.T4.33.33.33.1.m1.1a"><mn id="S4.T4.33.33.33.1.m1.1.1" xref="S4.T4.33.33.33.1.m1.1.1.cmml">29.33</mn><annotation-xml encoding="MathML-Content" id="S4.T4.33.33.33.1.m1.1b"><cn id="S4.T4.33.33.33.1.m1.1.1.cmml" type="float" xref="S4.T4.33.33.33.1.m1.1.1">29.33</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.33.33.33.1.m1.1c">29.33</annotation><annotation encoding="application/x-llamapun" id="S4.T4.33.33.33.1.m1.1d">29.33</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.34.34.34.2"><math alttext="66.83^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.34.34.34.2.m1.1"><semantics id="S4.T4.34.34.34.2.m1.1a"><msup id="S4.T4.34.34.34.2.m1.1.1" xref="S4.T4.34.34.34.2.m1.1.1.cmml"><mn id="S4.T4.34.34.34.2.m1.1.1.2" xref="S4.T4.34.34.34.2.m1.1.1.2.cmml">66.83</mn><mo id="S4.T4.34.34.34.2.m1.1.1.3" xref="S4.T4.34.34.34.2.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.34.34.34.2.m1.1b"><apply id="S4.T4.34.34.34.2.m1.1.1.cmml" xref="S4.T4.34.34.34.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.34.34.34.2.m1.1.1.1.cmml" xref="S4.T4.34.34.34.2.m1.1.1">superscript</csymbol><cn id="S4.T4.34.34.34.2.m1.1.1.2.cmml" type="float" xref="S4.T4.34.34.34.2.m1.1.1.2">66.83</cn><ci id="S4.T4.34.34.34.2.m1.1.1.3.cmml" xref="S4.T4.34.34.34.2.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.34.34.34.2.m1.1c">66.83^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.34.34.34.2.m1.1d">66.83 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.35.35.35.3"><math alttext="48.67" class="ltx_Math" display="inline" id="S4.T4.35.35.35.3.m1.1"><semantics id="S4.T4.35.35.35.3.m1.1a"><mn id="S4.T4.35.35.35.3.m1.1.1" xref="S4.T4.35.35.35.3.m1.1.1.cmml">48.67</mn><annotation-xml encoding="MathML-Content" id="S4.T4.35.35.35.3.m1.1b"><cn id="S4.T4.35.35.35.3.m1.1.1.cmml" type="float" xref="S4.T4.35.35.35.3.m1.1.1">48.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.35.35.35.3.m1.1c">48.67</annotation><annotation encoding="application/x-llamapun" id="S4.T4.35.35.35.3.m1.1d">48.67</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.38.38.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.38.38.38.4">Rainbow <span class="ltx_ERROR undefined" id="S4.T4.38.38.38.4.1">\our</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.36.36.36.1"><math alttext="\textbf{37.75}^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.36.36.36.1.m1.1"><semantics id="S4.T4.36.36.36.1.m1.1a"><msup id="S4.T4.36.36.36.1.m1.1.1" xref="S4.T4.36.36.36.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T4.36.36.36.1.m1.1.1.2" xref="S4.T4.36.36.36.1.m1.1.1.2a.cmml">37.75</mtext><mo id="S4.T4.36.36.36.1.m1.1.1.3" xref="S4.T4.36.36.36.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.36.36.36.1.m1.1b"><apply id="S4.T4.36.36.36.1.m1.1.1.cmml" xref="S4.T4.36.36.36.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.36.36.36.1.m1.1.1.1.cmml" xref="S4.T4.36.36.36.1.m1.1.1">superscript</csymbol><ci id="S4.T4.36.36.36.1.m1.1.1.2a.cmml" xref="S4.T4.36.36.36.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T4.36.36.36.1.m1.1.1.2.cmml" xref="S4.T4.36.36.36.1.m1.1.1.2">37.75</mtext></ci><ci id="S4.T4.36.36.36.1.m1.1.1.3.cmml" xref="S4.T4.36.36.36.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.36.36.36.1.m1.1c">\textbf{37.75}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.36.36.36.1.m1.1d">37.75 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.37.37.37.2"><math alttext="\textbf{70.95}^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.37.37.37.2.m1.1"><semantics id="S4.T4.37.37.37.2.m1.1a"><msup id="S4.T4.37.37.37.2.m1.1.1" xref="S4.T4.37.37.37.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T4.37.37.37.2.m1.1.1.2" xref="S4.T4.37.37.37.2.m1.1.1.2a.cmml">70.95</mtext><mo id="S4.T4.37.37.37.2.m1.1.1.3" xref="S4.T4.37.37.37.2.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.37.37.37.2.m1.1b"><apply id="S4.T4.37.37.37.2.m1.1.1.cmml" xref="S4.T4.37.37.37.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.37.37.37.2.m1.1.1.1.cmml" xref="S4.T4.37.37.37.2.m1.1.1">superscript</csymbol><ci id="S4.T4.37.37.37.2.m1.1.1.2a.cmml" xref="S4.T4.37.37.37.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T4.37.37.37.2.m1.1.1.2.cmml" xref="S4.T4.37.37.37.2.m1.1.1.2">70.95</mtext></ci><ci id="S4.T4.37.37.37.2.m1.1.1.3.cmml" xref="S4.T4.37.37.37.2.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.37.37.37.2.m1.1c">\textbf{70.95}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.37.37.37.2.m1.1d">70.95 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.38.38.38.3"><math alttext="\textbf{51.86}^{\dagger}" class="ltx_Math" display="inline" id="S4.T4.38.38.38.3.m1.1"><semantics id="S4.T4.38.38.38.3.m1.1a"><msup id="S4.T4.38.38.38.3.m1.1.1" xref="S4.T4.38.38.38.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S4.T4.38.38.38.3.m1.1.1.2" xref="S4.T4.38.38.38.3.m1.1.1.2a.cmml">51.86</mtext><mo id="S4.T4.38.38.38.3.m1.1.1.3" xref="S4.T4.38.38.38.3.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S4.T4.38.38.38.3.m1.1b"><apply id="S4.T4.38.38.38.3.m1.1.1.cmml" xref="S4.T4.38.38.38.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.38.38.38.3.m1.1.1.1.cmml" xref="S4.T4.38.38.38.3.m1.1.1">superscript</csymbol><ci id="S4.T4.38.38.38.3.m1.1.1.2a.cmml" xref="S4.T4.38.38.38.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S4.T4.38.38.38.3.m1.1.1.2.cmml" xref="S4.T4.38.38.38.3.m1.1.1.2">51.86</mtext></ci><ci id="S4.T4.38.38.38.3.m1.1.1.3.cmml" xref="S4.T4.38.38.38.3.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.38.38.38.3.m1.1c">\textbf{51.86}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.38.38.38.3.m1.1d">51.86 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different models on instruction-following information extraction (IE) tasks.  Three types of instruction-following IE tasks are evaluated: disambiguation, preference, and miscellaneous. The table shows the performance of Cuckoo and its variants, as well as other baseline models, on these tasks.  The 'In-domain Transfer' mark indicates when a model is evaluated on the same task as its pre-training stage. Results highlight Cuckoo's ability to adapt to various instruction-following IE scenarios, demonstrating its versatility and effectiveness compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison on Instruction-following IE tasks for disambiguation (Disamb.), preference (Prefer.), and miscellaneous (Misc.). ††{\dagger}†: In-domain Transfer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.13.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.2">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.3">Long</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.4">Short</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1">AnsSim <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.5">DualEM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.5.5"><span class="ltx_ERROR undefined" id="S4.T5.5.5.5.5.1">\our</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.2.1"><math alttext="57.84" class="ltx_Math" display="inline" id="S4.T5.2.2.2.1.m1.1"><semantics id="S4.T5.2.2.2.1.m1.1a"><mn id="S4.T5.2.2.2.1.m1.1.1" xref="S4.T5.2.2.2.1.m1.1.1.cmml">57.84</mn><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.1.m1.1b"><cn id="S4.T5.2.2.2.1.m1.1.1.cmml" type="float" xref="S4.T5.2.2.2.1.m1.1.1">57.84</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.1.m1.1c">57.84</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.1.m1.1d">57.84</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.3.2"><math alttext="51.39" class="ltx_Math" display="inline" id="S4.T5.3.3.3.2.m1.1"><semantics id="S4.T5.3.3.3.2.m1.1a"><mn id="S4.T5.3.3.3.2.m1.1.1" xref="S4.T5.3.3.3.2.m1.1.1.cmml">51.39</mn><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.2.m1.1b"><cn id="S4.T5.3.3.3.2.m1.1.1.cmml" type="float" xref="S4.T5.3.3.3.2.m1.1.1">51.39</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.2.m1.1c">51.39</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.2.m1.1d">51.39</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.4.4.3"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T5.4.4.4.3.1">40.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.5.5.4"><math alttext="11.67" class="ltx_Math" display="inline" id="S4.T5.5.5.5.4.m1.1"><semantics id="S4.T5.5.5.5.4.m1.1a"><mn id="S4.T5.5.5.5.4.m1.1.1" xref="S4.T5.5.5.5.4.m1.1.1.cmml">11.67</mn><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.4.m1.1b"><cn id="S4.T5.5.5.5.4.m1.1.1.cmml" type="float" xref="S4.T5.5.5.5.4.m1.1.1">11.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.4.m1.1c">11.67</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.4.m1.1d">11.67</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T5.9.9.9">
<td class="ltx_td ltx_align_left" id="S4.T5.9.9.9.5">MRQA</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6.1"><math alttext="62.61" class="ltx_Math" display="inline" id="S4.T5.6.6.6.1.m1.1"><semantics id="S4.T5.6.6.6.1.m1.1a"><mn id="S4.T5.6.6.6.1.m1.1.1" xref="S4.T5.6.6.6.1.m1.1.1.cmml">62.61</mn><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.1.m1.1b"><cn id="S4.T5.6.6.6.1.m1.1.1.cmml" type="float" xref="S4.T5.6.6.6.1.m1.1.1">62.61</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.1.m1.1c">62.61</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.1.m1.1d">62.61</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.7.7.7.2"><math alttext="61.05" class="ltx_Math" display="inline" id="S4.T5.7.7.7.2.m1.1"><semantics id="S4.T5.7.7.7.2.m1.1a"><mn id="S4.T5.7.7.7.2.m1.1.1" xref="S4.T5.7.7.7.2.m1.1.1.cmml">61.05</mn><annotation-xml encoding="MathML-Content" id="S4.T5.7.7.7.2.m1.1b"><cn id="S4.T5.7.7.7.2.m1.1.1.cmml" type="float" xref="S4.T5.7.7.7.2.m1.1.1">61.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.7.7.2.m1.1c">61.05</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.7.7.2.m1.1d">61.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.8.8.3"><math alttext="48.17" class="ltx_Math" display="inline" id="S4.T5.8.8.8.3.m1.1"><semantics id="S4.T5.8.8.8.3.m1.1a"><mn id="S4.T5.8.8.8.3.m1.1.1" xref="S4.T5.8.8.8.3.m1.1.1.cmml">48.17</mn><annotation-xml encoding="MathML-Content" id="S4.T5.8.8.8.3.m1.1b"><cn id="S4.T5.8.8.8.3.m1.1.1.cmml" type="float" xref="S4.T5.8.8.8.3.m1.1.1">48.17</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.8.8.3.m1.1c">48.17</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.8.8.3.m1.1d">48.17</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.9.9.9.4"><math alttext="12.32" class="ltx_Math" display="inline" id="S4.T5.9.9.9.4.m1.1"><semantics id="S4.T5.9.9.9.4.m1.1a"><mn id="S4.T5.9.9.9.4.m1.1.1" xref="S4.T5.9.9.9.4.m1.1.1.cmml">12.32</mn><annotation-xml encoding="MathML-Content" id="S4.T5.9.9.9.4.m1.1b"><cn id="S4.T5.9.9.9.4.m1.1.1.cmml" type="float" xref="S4.T5.9.9.9.4.m1.1.1">12.32</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.9.9.4.m1.1c">12.32</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.9.9.4.m1.1d">12.32</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T5.13.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.13.13.13.5">Rainbow <span class="ltx_ERROR undefined" id="S4.T5.13.13.13.5.1">\our</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.10.10.10.1"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T5.10.10.10.1.1">67.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.11.11.11.2"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T5.11.11.11.2.1">63.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.12.12.12.3"><math alttext="44.58" class="ltx_Math" display="inline" id="S4.T5.12.12.12.3.m1.1"><semantics id="S4.T5.12.12.12.3.m1.1a"><mn id="S4.T5.12.12.12.3.m1.1.1" xref="S4.T5.12.12.12.3.m1.1.1.cmml">44.58</mn><annotation-xml encoding="MathML-Content" id="S4.T5.12.12.12.3.m1.1b"><cn id="S4.T5.12.12.12.3.m1.1.1.cmml" type="float" xref="S4.T5.12.12.12.3.m1.1.1">44.58</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.12.12.12.3.m1.1c">44.58</annotation><annotation encoding="application/x-llamapun" id="S4.T5.12.12.12.3.m1.1d">44.58</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.13.13.13.4"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T5.13.13.13.4.1">18.95</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of instruction-following capabilities in different information extraction (IE) models. Focusing on the 'preference' instruction type as an example, it compares the performance of various models in handling instructions to select either the longest or shortest answers.  The analysis delves into the models' ability to distinguish between and correctly respond to different instruction types, revealing insights into their adaptability and nuanced understanding of instructions.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed analysis on the instruction-following ability of IE models with preference as an example.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.1" style="width:42.7pt;">Target</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T6.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.2.1.1" style="width:148.0pt;">Template</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.2.1.1.1.1" style="width:42.7pt;">Entity</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.2.1.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1.2.1.1.1">User:</span> [Context] Question: What is the [Label] mentioned? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1.2.1.1.2">Assistant:</span> Answer: The [Label] is</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.2.1.1">
<span class="ltx_p" id="A2.T6.1.1.3.2.1.1.1" style="width:42.7pt;">Relation (Kill)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.2.2.1">
<span class="ltx_p" id="A2.T6.1.1.3.2.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.2.2.1.1.1">User:</span> [Context] Question: Who does [Entity] kill? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.2.2.1.1.2">Assistant:</span> Answer: [Entity] kills</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.4.3.1.1">
<span class="ltx_p" id="A2.T6.1.1.4.3.1.1.1" style="width:42.7pt;">Relation (Live)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.4.3.2.1">
<span class="ltx_p" id="A2.T6.1.1.4.3.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.4.3.2.1.1.1">User:</span> [Context] Question: Where does [Entity] live in? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.4.3.2.1.1.2">Assistant:</span> Answer: [Entity] lives in</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.5.4.1.1">
<span class="ltx_p" id="A2.T6.1.1.5.4.1.1.1" style="width:42.7pt;">Relation (Work)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.5.4.2.1">
<span class="ltx_p" id="A2.T6.1.1.5.4.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.5.4.2.1.1.1">User:</span> [Context] Question: Who does [Entity] work for? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.5.4.2.1.1.2">Assistant:</span> Answer: [Entity] works for</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.6.5.1.1">
<span class="ltx_p" id="A2.T6.1.1.6.5.1.1.1" style="width:42.7pt;">Relation (Located)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.6.5.2.1">
<span class="ltx_p" id="A2.T6.1.1.6.5.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.5.2.1.1.1">User:</span> [Context] Question: Where is [Entity] located in? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.5.2.1.1.2">Assistant:</span> Answer: [Entity] is located in</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.7.6.1.1">
<span class="ltx_p" id="A2.T6.1.1.7.6.1.1.1" style="width:42.7pt;">Relation (Based)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.7.6.2.1">
<span class="ltx_p" id="A2.T6.1.1.7.6.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.7.6.2.1.1.1">User:</span> [Context] Question: Where is [Entity] based in? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.7.6.2.1.1.2">Assistant:</span> Answer: [Entity] is based in</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.8.7.1.1">
<span class="ltx_p" id="A2.T6.1.1.8.7.1.1.1" style="width:42.7pt;">Relation (Adverse)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.8.7.2.1">
<span class="ltx_p" id="A2.T6.1.1.8.7.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.7.2.1.1.1">User:</span> [Context] Question: What is the adverse effect of [Entity]? <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.7.2.1.1.2">Assistant:</span> Answer: The adverse effect of [Entity] is</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.9.8.1.1">
<span class="ltx_p" id="A2.T6.1.1.9.8.1.1.1" style="width:42.7pt;">Query</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.9.8.2.1">
<span class="ltx_p" id="A2.T6.1.1.9.8.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.9.8.2.1.1.1">User:</span> [Context] Question: [Question] <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.9.8.2.1.1.2">Assistant:</span> Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.10.9.1.1">
<span class="ltx_p" id="A2.T6.1.1.10.9.1.1.1" style="width:42.7pt;">Instruction (Entity)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.10.9.2.1">
<span class="ltx_p" id="A2.T6.1.1.10.9.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.9.2.1.1.1">User:</span> [Context] Question: What is the [Label] mentioned? ([Instruction]) <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.10.9.2.1.1.2">Assistant:</span> Answer: The [Label] is</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T6.1.1.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.11.10.1.1">
<span class="ltx_p" id="A2.T6.1.1.11.10.1.1.1" style="width:42.7pt;">Instruction (Query)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T6.1.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.11.10.2.1">
<span class="ltx_p" id="A2.T6.1.1.11.10.2.1.1" style="width:148.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.11.10.2.1.1.1">User:</span> [Context] Question: [Question] ([Instruction]) <span class="ltx_text ltx_font_bold" id="A2.T6.1.1.11.10.2.1.1.2">Assistant:</span> Answer:</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the various templates used in the paper's experiments across different information extraction (IE) tasks.  These templates guide the interaction between a user and an AI assistant, providing clear instructions for extracting specific information.  The templates are categorized to facilitate different IE tasks such as simple entity extraction, extraction with context understanding, and relation extraction. Each template showcases how the user provides context and asks a question, while the assistant's expected response demonstrates the desired extraction type.
> <details>
> <summary>read the caption</summary>
> Table 6: The templates used in our experiments for different tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.1.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.1.1.1" style="width:22.8pt;">Task</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.2.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.2.1.1" style="width:42.7pt;">Dataset</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A3.T7.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.1.1.3.1">
<span class="ltx_p" id="A3.T7.1.1.1.1.3.1.1" style="width:113.8pt;">Instruction</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.2.1.1">
<span class="ltx_p" id="A3.T7.1.1.2.2.1.1.1" style="width:22.8pt;">Disamb.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.2.2.1">
<span class="ltx_p" id="A3.T7.1.1.2.2.2.1.1" style="width:42.7pt;">CoNLL2003</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.2.2.3.1">
<span class="ltx_p" id="A3.T7.1.1.2.2.3.1.1" style="width:113.8pt;">The organization entity must be a subject of any active action in the context.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.3.3">
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.3.3.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.3.2.1">
<span class="ltx_p" id="A3.T7.1.1.3.3.2.1.1" style="width:42.7pt;">BioBLP2004</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.3.3.3.1">
<span class="ltx_p" id="A3.T7.1.1.3.3.3.1.1" style="width:113.8pt;">The provided context must contain some descriptive information about the protein.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.4.4">
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.4.4.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.4.4.2.1">
<span class="ltx_p" id="A3.T7.1.1.4.4.2.1.1" style="width:42.7pt;">Restaurant</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.4.4.3.1">
<span class="ltx_p" id="A3.T7.1.1.4.4.3.1.1" style="width:113.8pt;">The rating should describe a food or drink mentioned in the sentence.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.5.5.1.1">
<span class="ltx_p" id="A3.T7.1.1.5.5.1.1.1" style="width:22.8pt;">Prefer.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.5.5.2.1">
<span class="ltx_p" id="A3.T7.1.1.5.5.2.1.1" style="width:42.7pt;">SQuAD</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.5.5.3.1">
<span class="ltx_p" id="A3.T7.1.1.5.5.3.1.1" style="width:113.8pt;">Give the longest answer</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.6.6">
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.6.6.1"></td>
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.6.6.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.6.6.3.1">
<span class="ltx_p" id="A3.T7.1.1.6.6.3.1.1" style="width:113.8pt;">Give the shortest answer</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.7.7">
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.7.7.1"></td>
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.7.7.2"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T7.1.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.7.7.3.1">
<span class="ltx_p" id="A3.T7.1.1.7.7.3.1.1" style="width:113.8pt;">Give a concise answer</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.8.8.1.1">
<span class="ltx_p" id="A3.T7.1.1.8.8.1.1.1" style="width:22.8pt;">Misc.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.8.8.2.1">
<span class="ltx_p" id="A3.T7.1.1.8.8.2.1.1" style="width:42.7pt;">CoNLL2003</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.8.8.3.1">
<span class="ltx_p" id="A3.T7.1.1.8.8.3.1.1" style="width:113.8pt;">Miscellaneous includes events, nationalities and products but not person, location or organization.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.9.9">
<td class="ltx_td ltx_align_top" id="A3.T7.1.1.9.9.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.9.9.2.1">
<span class="ltx_p" id="A3.T7.1.1.9.9.2.1.1" style="width:42.7pt;">Restaurant</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T7.1.1.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.9.9.3.1">
<span class="ltx_p" id="A3.T7.1.1.9.9.3.1.1" style="width:113.8pt;">Miscellaneous includes amenity, hours and price but not rating, dish, or location.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.1.10.10">
<td class="ltx_td ltx_align_top ltx_border_bb" id="A3.T7.1.1.10.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.10.10.2.1">
<span class="ltx_p" id="A3.T7.1.1.10.10.2.1.1" style="width:42.7pt;">Movie</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A3.T7.1.1.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T7.1.1.10.10.3.1">
<span class="ltx_p" id="A3.T7.1.1.10.10.3.1.1" style="width:113.8pt;">Miscellaneous includes actor, soundtrack and quote but not director, opinion, or plot.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 details the specific instructions used for the instruction-following IE experiments.  It lists three instruction types (Disambiguation, Preference, Miscellaneous) and the specific instructions used within each type for several datasets (CoNLL2003, BioNLP2004, Restaurant, Movie, SQUAD).  The instructions aim to test the model's ability to follow instructions of varying complexity and specificity for different IE tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: The specific instructions used for instruction-following IE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A5.T8.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T8.4.4.5.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T8.4.4.5.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.5.1.1.1">
<span class="ltx_p" id="A5.T8.4.4.5.1.1.1.1" style="width:28.5pt;">Rephrase</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T8.4.4.5.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.5.1.2.1">
<span class="ltx_p" id="A5.T8.4.4.5.1.2.1.1" style="width:170.7pt;">New Template/Label</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T8.4.4.6.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="A5.T8.4.4.6.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.6.1.1.1">
<span class="ltx_p" id="A5.T8.4.4.6.1.1.1.1" style="width:28.5pt;">Template</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.4.4.6.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.6.1.2.1">
<span class="ltx_p" id="A5.T8.4.4.6.1.2.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T8.4.4.6.1.2.1.1.1">User:</span> [Context] Instruction: Extract [Label] from the text above. <span class="ltx_text ltx_font_bold" id="A5.T8.4.4.6.1.2.1.1.2">Assistant:</span> [Label]:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.4.7.2">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row" id="A5.T8.4.4.7.2.1"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.4.4.7.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.7.2.2.1">
<span class="ltx_p" id="A5.T8.4.4.7.2.2.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="A5.T8.4.4.7.2.2.1.1.1">User:</span> List all [Label] entities: [Context] <span class="ltx_text ltx_font_bold" id="A5.T8.4.4.7.2.2.1.1.2">Assistant:</span> Here are [Label] entities: 1.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="A5.T8.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.1.1.2.1">
<span class="ltx_p" id="A5.T8.1.1.1.2.1.1" style="width:28.5pt;">Label</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.1.1.1.1.1">
<span class="ltx_p" id="A5.T8.1.1.1.1.1.1" style="width:170.7pt;">(CoNLL2003) Person <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.1.1.1.1.1.1.m1.1"><semantics id="A5.T8.1.1.1.1.1.1.m1.1a"><mo id="A5.T8.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="A5.T8.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.1.1.1.1.1.1.m1.1b"><ci id="A5.T8.1.1.1.1.1.1.m1.1.1.cmml" xref="A5.T8.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math> Name</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.2.2.2">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row" id="A5.T8.2.2.2.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.2.2.2.1.1">
<span class="ltx_p" id="A5.T8.2.2.2.1.1.1" style="width:170.7pt;">(BioBLP2004) DNA <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.2.2.2.1.1.1.m1.1"><semantics id="A5.T8.2.2.2.1.1.1.m1.1a"><mo id="A5.T8.2.2.2.1.1.1.m1.1.1" stretchy="false" xref="A5.T8.2.2.2.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.2.2.2.1.1.1.m1.1b"><ci id="A5.T8.2.2.2.1.1.1.m1.1.1.cmml" xref="A5.T8.2.2.2.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.2.2.2.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.2.2.2.1.1.1.m1.1d">→</annotation></semantics></math> Deoxyribonucleic acid</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.3.3.3">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row" id="A5.T8.3.3.3.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T8.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.3.3.3.1.1">
<span class="ltx_p" id="A5.T8.3.3.3.1.1.1" style="width:170.7pt;">(Restaurant) Rating <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.3.3.3.1.1.1.m1.1"><semantics id="A5.T8.3.3.3.1.1.1.m1.1a"><mo id="A5.T8.3.3.3.1.1.1.m1.1.1" stretchy="false" xref="A5.T8.3.3.3.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.3.3.3.1.1.1.m1.1b"><ci id="A5.T8.3.3.3.1.1.1.m1.1.1.cmml" xref="A5.T8.3.3.3.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.3.3.3.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.3.3.3.1.1.1.m1.1d">→</annotation></semantics></math> Recommendation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T8.4.4.4">
<th class="ltx_td ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="A5.T8.4.4.4.2"></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A5.T8.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T8.4.4.4.1.1">
<span class="ltx_p" id="A5.T8.4.4.4.1.1.1" style="width:170.7pt;">(Movie) Genre <math alttext="\rightarrow" class="ltx_Math" display="inline" id="A5.T8.4.4.4.1.1.1.m1.1"><semantics id="A5.T8.4.4.4.1.1.1.m1.1a"><mo id="A5.T8.4.4.4.1.1.1.m1.1.1" stretchy="false" xref="A5.T8.4.4.4.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="A5.T8.4.4.4.1.1.1.m1.1b"><ci id="A5.T8.4.4.4.1.1.1.m1.1.1.cmml" xref="A5.T8.4.4.4.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T8.4.4.4.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="A5.T8.4.4.4.1.1.1.m1.1d">→</annotation></semantics></math> Category</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents variations of the templates and labels used to test the robustness of the Cuckoo model.  It shows different ways of phrasing instructions or naming entities, to evaluate how well the model handles variations in wording, ensuring its adaptability and reliability across different forms of expression.
> <details>
> <summary>read the caption</summary>
> Table 8: The template/label variants used for robustness testing.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11275/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11275/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}