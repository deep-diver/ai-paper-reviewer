---
title: "Revisiting In-Context Learning with Long Context Language Models"
summary: "Long-context models surprisingly show that simple random sampling of examples is as effective as sophisticated methods for in-context learning, shifting the focus to efficient context utilization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Google DeepMind",]
showSummary: true
date: 2024-12-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.16926 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinheon Baek et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.16926" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.16926" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/revisiting-in-context-learning-with-long" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.16926/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

In-context learning (ICL) traditionally focused on meticulously selecting optimal training examples for language models due to limited context window sizes.  However, recent advancements in Long Context Language Models (LCLMs) allow for a significantly larger number of examples. This paper investigates whether established sample selection strategies remain beneficial in this new many-shot ICL paradigm.

This research systematically re-examines various sample selection techniques across diverse tasks and datasets using LCLMs. Surprisingly, they found that simple random sampling is surprisingly effective, achieving comparable or even better results than sophisticated methods. This finding suggests a paradigm shift, emphasizing the importance of efficient context utilization rather than optimizing example selection. The study introduces a novel data augmentation approach that further improves ICL performance, especially for low-resource tasks by effectively leveraging the expanded capacity of LCLMs. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Simple random sampling of examples is as effective as complex selection methods in many-shot ICL with long-context language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The challenge of ICL has shifted from selecting optimal examples to effectively utilizing the increased context window capacity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Data augmentation substantially improves ICL performance, especially for low-resource tasks, by filling the context window and effectively leveraging LCLM capacity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it challenges existing assumptions in in-context learning (ICL) with the advent of long-context language models (LCLMs).  **It highlights the shift from optimizing example selection to maximizing context utilization**, opening avenues for improving ICL efficiency and effectiveness. The findings also have broad implications for resource-constrained tasks and robustness to noise in LCLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2412.16926/x1.png)

> 🔼 This figure compares the performance of various sample selection methods in many-shot in-context learning (ICL) using Long Context Language Models (LCLMs).  The methods tested include: Retrieval (selecting similar examples), Diversity (maximizing example variety), Curriculum (arranging examples from easiest to hardest), and Hard (using only challenging examples).  A baseline Random selection method is also included.  The results show that sophisticated sample selection techniques do not significantly improve performance over the simple random approach and sometimes perform worse.  A final method, Augmentation, generates additional examples to supplement existing ones, demonstrating substantial performance gains for low-resource tasks (translation, reasoning, classification) where available data is limited compared to the context window size of the LCLM.
> <details>
> <summary>read the caption</summary>
> Figure 1: Results of various sample selection approaches in many-shot ICL with LCLMs. Approaches include Retrieval that selects examples similar to the target query, Diversity that aims for maximizing example variety, Curriculum that arranges examples in order from easiest to hardest, and Hard that uses only challenging examples, alongside Random that selects examples without any constraints. Results indicate that sample selection methods provide no significant improvement over the naive (random) approach and sometimes perform worse. Meanwhile, Augmentation refers to the approach that generates additional demonstrations and uses them along with original samples for ICL, for low-resource tasks (such as translation, reasoning, and classification) that do not contain enough samples to utilize the full capacity of LCLMs, showing substantial performance gains.
> </details>





{{< table-caption >}}
| **LCLMs** | **Methods** | **Tran.** | **Summ.** | **Reas.** | **Clas.** | **Total** |
|---|---|---|---|---|---|---|
| **Gemini Pro** | Relevance | 0 / 6 | 0 / 3 | 0 / 4 | 0 / 5 | 0 / 18 |
|  | Diversity | 0 / 6 | 0 / 3 | 1 / 4 | 2 / 5 | 3 / 18 |
|  | Curriculum | 1 / 6 | 0 / 3 | 0 / 4 | 1 / 5 | 2 / 18 |
|  | Hard | 0 / 6 | 0 / 3 | 1 / 4 | 0 / 5 | 1 / 18 |
| **Gemini Flash** | Relevance | 0 / 6 | 0 / 3 | 0 / 4 | 2 / 5 | 2 / 18 |
|  | Diversity | 0 / 6 | 0 / 3 | 0 / 4 | 2 / 5 | 2 / 18 |
|  | Curriculum | 0 / 6 | 0 / 3 | 0 / 4 | 0 / 5 | 0 / 18 |
|  | Hard | 0 / 6 | 0 / 3 | 0 / 4 | 0 / 5 | 0 / 18 |
| **Llama 3.1** | Relevance | 1 / 6 | 0 / 3 | 1 / 4 | 1 / 5 | 3 / 18 |
|  | Diversity | 0 / 6 | 0 / 3 | 0 / 4 | 2 / 5 | 2 / 18 |
|  | Curriculum | 0 / 6 | 0 / 3 | 0 / 4 | 1 / 5 | 1 / 18 |
|  | Hard | 0 / 6 | 0 / 3 | 0 / 4 | 2 / 5 | 2 / 18 |
| **Total** | Relevance | 1 / 18 | 0 / 9 | 1 / 12 | 3 / 15 | 5 / 54 |
|  | Diversity | 0 / 18 | 0 / 9 | 1 / 12 | 6 / 15 | 7 / 54 |
|  | Curriculum | 1 / 18 | 0 / 9 | 0 / 12 | 2 / 15 | 3 / 54 |
|  | Hard | 0 / 18 | 0 / 9 | 1 / 12 | 2 / 15 | 3 / 54 |{{< /table-caption >}}

> 🔼 This table presents a statistical analysis comparing the performance of different sample selection methods against a simple random selection approach.  It shows the number of times (out of the total number of experiments conducted within each task) that sophisticated methods demonstrated statistically significant improvement over random selection, using a t-test with a 95% confidence level. The tasks considered are translation, summarization, reasoning, and classification.  This analysis helps determine if more complex sample selection strategies offer a substantial performance advantage over a simpler random approach, especially for LCLMs.
> <details>
> <summary>read the caption</summary>
> Table 1: Counting the statistical significance of sophisticated selection approaches over random selection on each experiment instance, by conducting the t-test with 95% confidence threshold. Tran., Summ., Reas, Clas, denote translation, summarization, reasoning, and classification tasks, respectively.
> </details>





### In-depth insights


#### Long-Context ICL
The concept of "Long-Context ICL" signifies a paradigm shift in In-Context Learning (ICL).  Traditional ICL, limited by shorter context windows in Language Models (LMs), heavily relied on optimizing sample selection to maximize performance with few examples. **Long-Context ICL leverages the expanded context capacity of Long Context Language Models (LCLMs) to accommodate significantly more examples.** This raises the question of whether sophisticated sample selection strategies remain crucial in this many-shot regime.  Surprisingly, research suggests that **simple random sample selection can be surprisingly effective**, potentially obviating the need for complex selection techniques. This is because the primary challenge shifts from selecting optimal examples to **maximizing context utilization**.  However, the immense context length of LCLMs introduces new challenges:  **efficiently utilizing this increased capacity and mitigating the adverse effects of noise or irrelevant data**.  Addressing these challenges will require novel approaches beyond sample selection, potentially including techniques such as data augmentation to improve ICL performance.

#### Many-Shot ICL
The concept of "Many-Shot ICL" (In-Context Learning) within the context of Long Context Language Models (LCLMs) signifies a paradigm shift in how we approach few-shot learning.  Previously, limited context windows in language models restricted the number of examples that could be used for ICL, necessitating sophisticated example selection strategies.  **LCLMs, however, dramatically increase the context capacity, enabling the inclusion of a far greater number of examples (many-shot).** This raises the question of whether meticulously selected examples still offer substantial improvements over a simpler random sampling approach. The research surprisingly indicates that, in many scenarios, **the benefit of sophisticated sample selection methods diminishes significantly with the increased context length**, suggesting the challenge has fundamentally shifted from selecting *optimal* examples to collecting *sufficient* examples to fully utilize the expanded context capacity.  This finding is crucial because **it simplifies the ICL process, promoting efficiency through methods like key-value caching**. However, the study also highlights a new challenge: **optimally utilizing the enlarged context window**, particularly when dealing with low-resource datasets which may not have enough data to fill the expanded context. This leads to the exploration of data augmentation techniques to artificially expand the dataset and better utilize the LCLM's potential.

#### Sample Selection
The concept of 'sample selection' in the context of in-context learning (ICL) with long context language models (LCLMs) is fundamentally reshaped.  Traditional ICL, limited by short context windows, heavily relied on sophisticated sample selection strategies to optimize model performance with a limited number of examples.  **This paper challenges the prevailing wisdom that complex selection methods (relevance, diversity, curriculum learning) are superior**.  Their experiments across diverse datasets and tasks reveal that with LCLMs and their vastly increased context capacity, **simple random sampling is surprisingly effective, often yielding comparable or even superior results**.  This suggests a **paradigm shift:** the challenge is no longer primarily about selecting the *best* examples but rather about effectively *utilizing* the available context length by providing enough examples.  This is further emphasized by their proposed data augmentation strategy, showing **substantial performance gains (5%)** by effectively filling the context window, proving that the sheer quantity of data is more important than careful selection in a many-shot ICL regime. The study highlights that while sophisticated methods have some minor benefits with limited number of examples, this advantage quickly disappears in the LCLM setting, where random sampling provides a simpler, more scalable, and efficient approach.

#### Data Augmentation
The research paper explores data augmentation as a method to improve the performance of In-Context Learning (ICL) with Long Context Language Models (LCLMs).  The core idea is that while LCLMs offer expanded context windows, available datasets may not fully utilize this capacity. **Data augmentation addresses this by generating synthetic examples to supplement the existing dataset**, thereby maximizing the use of the LCLM's context length. The method involves two steps: generating synthetic examples through prompting the LCLM with real examples and then filtering out low-quality synthetic examples using a quality assessment function.  **This augmentation approach is shown to significantly boost ICL performance, especially for low-resource tasks**. The findings challenge the conventional focus on optimal example selection in ICL, suggesting that for LCLMs, **efficient use of the available context is more crucial than sophisticated selection methods**.  However, the study also notes that the quality of synthetic examples matters and further research could improve the synthesis process.  Overall, **data augmentation presents a valuable approach to bridge the gap between LCLM capacity and data availability** in ICL.

#### LCLM Robustness
The robustness of Long Context Language Models (LCLMs) to noise and variations in input data is a critical aspect of their effectiveness.  **The study reveals a surprising finding:** LCLMs demonstrate considerable robustness to noisy examples, especially in simpler tasks, even when a significant portion of the input data is corrupted. This suggests that the capacity of LCLMs to process massive amounts of context allows them to effectively filter out or mitigate the influence of individual noisy data points.  However, this robustness is not universal and **complex tasks show increased vulnerability to noise** as the proportion of noisy data increases.  This difference in behavior likely reflects the inherent complexity of the tasks themselves; straightforward tasks may be less affected by noise because the underlying patterns are more easily identifiable even with some noisy data.  More importantly, the study highlights a trade-off between the benefits of using large context windows and the risk of performance degradation due to noise.  While the large context capacity allows for many examples, introducing too many noisy examples can negatively impact performance. Therefore, **carefully considering the quality of data and perhaps using data augmentation strategies** is vital for harnessing the full potential of LCLMs while maintaining robustness.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.16926/x8.png)

> 🔼 Figure 2 presents a comprehensive comparison of various sample selection methods within the in-context learning (ICL) paradigm using three different long-context language models (LCLMs): Gemini Pro, Gemini Flash, and Llama 3.1.  The results are shown across four distinct tasks—translation, summarization, reasoning, and extreme classification—and encompass 18 diverse datasets. Each bar in the chart represents the average performance of a specific sample selection method for a given task and dataset combination. Error bars denote the standard deviation, indicating performance variability. This visualization enables a detailed assessment of the effectiveness of different sample selection techniques in the context of many-shot ICL using LCLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Detailed results of various sample selection approaches on ICL with LCLMs, such as Gemini Pro (Top), Gemini Flash (Middle), and Llama 3.1 (Bottom), across four different tasks (translation, summarization, reasoning, and extreme classification) with 18 datasets. Each bar represents the averaged performance, with the upper and lower limits indicating standard deviation.
> </details>



![](https://arxiv.org/html/2412.16926/x9.png)

> 🔼 This figure displays the performance of In-context Learning (ICL) with Gemini Pro across four different tasks (summarization, translation, reasoning, and classification) as the number of ICL examples varies.  The results are averages across multiple runs for each task.  It shows how performance changes with the number of examples provided in the context window.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results with varying the number of examples for ICL with Gemini Pro, where we average the results for each task.
> </details>



![](https://arxiv.org/html/2412.16926/x10.png)

> 🔼 This figure displays the impact of noisy examples on the performance of Long Context Language Models (LCLMs) in In-Context Learning (ICL).  Different noise ratios (percentage of noisy examples) are tested across four tasks: summarization, translation, reasoning, and classification.  For each task, multiple datasets are used, and the relative performance is calculated compared to a baseline of zero noise. The y-axis shows the relative performance (percentage), and the x-axis shows the noise ratio (%). Averaged results across multiple runs are presented. The figure visually demonstrates how LCLM performance degrades as the percentage of noisy examples increases, with the degradation being more significant in certain tasks (e.g., low resource translation).
> <details>
> <summary>read the caption</summary>
> Figure 4: Results with varying the ratio of noisy examples within the context of LCLMs, where we report the relative performance over the ICL without noisy examples (i.e., the noise ratio of 0) and the results are averaged over multiple runs.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Methods | Summarization | Translation | Reasoning | Classification |
|---|---|---|---|---|
| Random | 0.310 ± 0.004 | 0.553 ± 0.004 | 0.650 ± 0.023 | 0.539 ± 0.007 |
| Ascending | 0.307 ± 0.006 | 0.557 ± 0.004 | 0.641 ± 0.027 | 0.534 ± 0.010 |
| Descending | 0.309 ± 0.003 | 0.552 ± 0.007 | 0.648 ± 0.021 | 0.539 ± 0.005 |{{< /table-caption >}}
> 🔼 This table presents the results of an experiment investigating the impact of the order of in-context learning (ICL) examples on the performance of long-context language models (LCLMs). Three ordering methods were compared: 'Ascending' (examples most similar to the query appear first), 'Descending' (most similar examples appear last), and 'Random' (examples are shuffled). The table shows the average performance and standard deviation for each ordering method across four different tasks: summarization, translation, reasoning, and classification. This helps determine whether LCLM performance is sensitive to ICL example order, particularly in many-shot scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: Results with varying the order of ICL samples, where Ascending and Descending represent cases where examples closer to the query appear earlier and later in the LCLM context, respectively. In contrast, random denotes the case where examples are arranged randomly without a specific order.
> </details>

{{< table-caption >}}
LCLMs|Methods|ENG to BEM|ENG to KMR|ENG to EWE|ENG to SPA|ENG to FRA|ENG to DEU|Date|Salient
---|---|---|---|---|---|---|---|---|---
**Gemini Pro**|Random|0.470 ± 0.003|0.439 ± 0.001|0.419 ± 0.004|0.580 ± 0.006|0.734 ± 0.002|0.676 ± 0.010|0.854 ± 0.009|0.776 ± 0.035|
**Gemini Pro**|Best Selection|0.470 ± 0.004|0.443 ± 0.004|0.418 ± 0.002|0.583 ± 0.004|**0.745** ± 0.005|0.676 ± 0.004|**0.896** ± 0.021|0.772 ± 0.017|
---|---|---|---|---|---|---|---|---|---
**Gemini Pro**|Augmentation|**0.487** ± 0.007|**0.469** ± 0.003|**0.437** ± 0.003|**0.595** ± 0.005|0.748 ± 0.007|0.694 ± 0.005|**0.927** ± 0.019|0.784 ± 0.018|
LCLMs|Methods|Tracking7|Web|Banking77|DialogRE|Discovery|FewNERD|GoEmotion|Average
---|---|---|---|---|---|---|---|---|---
**Gemini Pro**|Random|0.294 ± 0.029|0.675 ± 0.021|0.878 ± 0.002|0.661 ± 0.009|0.195 ± 0.007|0.568 ± 0.012|0.393 ± 0.007|0.574 ± 0.010|
**Gemini Pro**|Best Selection|0.311 ± 0.031|**0.700** ± 0.028|**0.886** ± 0.004|**0.709** ± 0.014|0.204 ± 0.011|0.569 ± 0.006|**0.413** ± 0.006|0.586 ± 0.011|
---|---|---|---|---|---|---|---|---|---
**Gemini Pro**|Augmentation|0.307 ± 0.031|**0.768** ± 0.040|**0.889** ± 0.004|**0.698** ± 0.010|**0.209** ± 0.009|0.574 ± 0.008|**0.428** ± 0.006|**0.601** ± 0.012|
LCLMs|Methods|ENG to BEM|ENG to KMR|ENG to EWE|ENG to SPA|ENG to FRA|ENG to DEU|Date|Salient
---|---|---|---|---|---|---|---|---|---
**Gemini Flash**|Random|0.419 ± 0.006|0.427 ± 0.004|0.363 ± 0.002|0.573 ± 0.004|0.726 ± 0.004|0.666 ± 0.005|0.754 ± 0.022|0.682 ± 0.019|
**Gemini Flash**|Best Selection|0.421 ± 0.002|0.434 ± 0.002|0.360 ± 0.003|0.575 ± 0.002|0.732 ± 0.003|0.673 ± 0.001|0.777 ± 0.030|0.687 ± 0.015|
---|---|---|---|---|---|---|---|---|---
**Gemini Flash**|Augmentation|**0.436** ± 0.006|**0.460** ± 0.002|**0.378** ± 0.004|**0.594** ± 0.007|0.737 ± 0.010|0.676 ± 0.012|**0.804** ± 0.037|**0.714** ± 0.013|
LCLMs|Methods|Tracking7|Web|Banking77|DialogRE|Discovery|FewNERD|GoEmotion|Average
---|---|---|---|---|---|---|---|---|---
**Gemini Flash**|Random|0.256 ± 0.030|0.582 ± 0.033|0.868 ± 0.004|0.541 ± 0.008|0.065 ± 0.007|0.521 ± 0.006|0.362 ± 0.016|0.520 ± 0.011|
**Gemini Flash**|Best Selection|0.270 ± 0.031|0.566 ± 0.031|0.872 ± 0.006|0.547 ± 0.012|**0.083** ± 0.007|**0.532** ± 0.002|**0.385** ± 0.006|0.528 ± 0.010|
---|---|---|---|---|---|---|---|---|---
**Gemini Flash**|Augmentation|0.281 ± 0.035|0.609 ± 0.040|**0.880** ± 0.006|**0.578** ± 0.025|**0.090** ± 0.005|**0.537** ± 0.009|**0.392** ± 0.015|**0.544** ± 0.015{{< /table-caption >}}
> 🔼 This table presents the results of In-Context Learning (ICL) experiments using Long Context Language Models (LCLMs) on four tasks: translation, reasoning, summarization, and classification.  It compares three approaches: 1) Random sampling (no sample selection), 2) Best Selection (the best performing sophisticated selection method for each dataset), and 3) Augmentation (a new method combining randomly selected samples with generated demonstrations).  The table shows the performance of each approach for several different datasets, highlighting statistically significant improvements (in bold) over the Random approach.  Llama is excluded from the Augmentation tests because its context window is much smaller than Gemini's, rendering augmentation unnecessary in that case.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of LCLM-enabled ICL on four different tasks, where Random indicates the naive sample selection approach without selection criteria, Best Selection indicates the model that achieves the best performance among sophisticated sample selection methods for each experiment unit, and Augmentation indicates the proposed approach that generates demonstrations and uses them alongside original samples with random selection. We emphasize statistically significant results over Random in bold. We exclude Llama from the augmentation scenario as its context capacity is approximately ten times smaller than that of Gemini, allowing it to fully utilize its available context with the original examples alone, making augmentation unnecessary.
> </details>

{{< table-caption >}}
| Methods | Translation | Reasoning | Classification |
|---|---|---|---|
| Augmentation | **0.571** ± 0.005 | **0.696** ± 0.027 | **0.560** ± 0.008 |
| w/o Filtering | 0.552 ± 0.005 | 0.666 ± 0.031 | 0.548 ± 0.009 |
| w/o Original | 0.544 ± 0.002 | 0.611 ± 0.025 | 0.531 ± 0.007 |
| Only Original | 0.553 ± 0.004 | 0.650 ± 0.023 | 0.539 ± 0.007 |{{< /table-caption >}}
> 🔼 This ablation study investigates the individual and combined contributions of filtering and original samples to the performance of the augmentation approach.  'w/o Filtering' shows the results when augmented samples are used without the filtering process. 'w/o Original' presents the results using only the augmented samples, excluding the original samples.  'Only Original' shows the baseline performance, using only the original samples without any augmentation. This analysis reveals the impact of each component on the overall improvement achieved by the augmentation method.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on ablation study, where w/o Filtering and w/o Original denote the ICL results based on augmented samples without filtering and without original samples, respectively. Only Original is the performance without generated samples.
> </details>

{{< table-caption >}}
| Types | Prompts |
|---|---| 
| Translation | You are an expert translator. I am going to give you one or more example pairs of text snippets where the first is in {SOURCE_LANGUAGE} and the second is a translation of the first snippet into {TARGET_LANGUAGE}. The sentences will be written as the following format: {SOURCE_LANGUAGE}: &lt;first sentence&gt; {TARGET_LANGUAGE}: &lt;translated first sentence&gt; After the example pairs, I am going to provide another sentence in {SOURCE_LANGUAGE} and I want you to translate it into {TARGET_LANGUAGE}. Give only the translation, and no extra commentary, formatting, or chattiness. Translate the text from {SOURCE_LANGUAGE} to {TARGET_LANGUAGE}. {EXAMPLES} {TARGET_QUERY} |
| Summarization | You are an expert in article summarization. I am going to give you one or more example pairs of article and its summary in fluent English. The pairs will be written as the following format: Article: &lt;article&gt; Summary: &lt;summary&gt; After the example pairs, I am going to provide another article and I want you to summarize it. Give only the summary, and no extra commentary, formatting, or chattiness. {EXAMPLES} {TARGET_QUERY} |
| Reasoning | You are an expert in multiple-choice question answering tasks. I am going to give you one or more example pairs of question and its answer in a multiple-choice question answering format. The pairs will be written as the following format: Question: &lt;question&gt; Answer: &lt;answer&gt; After the example pairs, I am going to provide another question and I want you to predict its answer. Give only the answer that follows a consistent format as in the provided examples, and no extra commentary, formatting, or chattiness. {EXAMPLES} {TARGET_QUERY} |{{< /table-caption >}}
> 🔼 This table presents the prompts used in the many-shot in-context learning (ICL) experiments for three different tasks: translation, summarization, and reasoning.  Each prompt provides example input-output pairs followed by a target input for the model to predict the output. The examples aim to guide the model's behavior for the specific task. The table details the structure of the input to be given to the model in each case.
> <details>
> <summary>read the caption</summary>
> Table 5: A list of prompts that we use for many-shot ICL on translation, summarization, and reasoning tasks.
> </details>

{{< table-caption >}}
| Types | Prompts |
|---|---| 
| BANKING77 | I am going to give you one or more example pairs of customer service query and its intent.The pairs will be written as the following format:service query: &lt;query&gt;intent category: &lt;category&gt;After the example pairs, I am going to provide another customer service query and I want you to classify the label of it that must be one among the intent categories provided in the examples. Give only the category, and no extra commentary, formatting, or chattiness.{EXAMPLES}{TARGET_QUERY}| 
| DialogRE | I am going to give you one or more examples of the dialogue, the list of entity pairs within it, and their corresponding relation types.The examples will be written as the following format:Dialogue: &lt;dialogue&gt;The list of k entity pairs are (&lt;entity 1&gt;, &lt;entity 2&gt;), …The k respective relations between each entity pair are: &lt;relation&gt;, …After the examples, I am going to provide another dialogue along with its associated entity pairs, and I want you to classify their corresponding relation types that must be one among the relation types provided in the examples. Give only the relations, and no extra commentary, formatting, or chattiness.{EXAMPLES}{TARGET_QUERY}| 
| Discovery | I am going to give you one or more example pairs of two sentences and the conjunction word between them.The pairs will be written as the following format:&lt;sentence 1&gt; ( ) &lt;sentence 2&gt;the most suitable conjunction word in the previous ( ) is &lt;conjunction word&gt;After the example pairs, I am going to provide another two sentences and I want you to classify the conjunction word between them that must be one among the conjunction words provided in the examples. Give only the conjunction word, and no extra commentary, formatting, or chattiness.{EXAMPLES}{TARGET_QUERY}| 
| FewNERD | I am going to give you one or more examples of the sentence, the named entities within it, and their corresponding entity types.The examples will be written as the following format:Sentence: &lt;sentence&gt;&lt;named entity&gt;: &lt;entity type&gt;After the example pairs, I am going to provide another comment and I want you to classify the label of it that must be one among the emotion categories provided in the examples. Give only the category, and no extra commentary, formatting, or chattiness.{EXAMPLES}{TARGET_QUERY}| 
| GoEmotion | I am going to give you one or more example pairs of comment and its emotion category.The pairs will be written as the following format:comment: &lt;comment&gt;emotion category: &lt;category&gt;After the example pairs, I am going to provide another sentence, and I want you to classify the named entities within it and their corresponding entity types that must be one among the entity types provided in the examples. Give only the named entities and their corresponding entity types, and no extra commentary, formatting, or chattiness.{EXAMPLES}{TARGET_QUERY}|{{< /table-caption >}}
> 🔼 This table details the prompts used in the many-shot in-context learning (ICL) experiments for five extreme classification tasks.  Each prompt provides a specific instruction format, example pairs for the model to learn from, and a final query for the model to classify. The five tasks covered include: BANKING77 (customer service queries), DialogRE (dialogue relation extraction), Discovery (conjunction word prediction), FewNERD (named entity recognition), and GoEmotion (emotion classification).
> <details>
> <summary>read the caption</summary>
> Table 6: A list of prompts that we use for many-shot ICL on five different extreme classification tasks.
> </details>

{{< table-caption >}}
| Types | Prompts |
|---|---| 
| Generation | You are an expert in data augmentation. You will be provided with a series of demonstrations that show how a task is performed. Your objective is to generate a new example that closely follows the pattern, structure, and style of the demonstrations. Carefully analyze the key steps, transitions, and output style in the provided demonstrations. Then, create a new sample that maintains consistency in format and correctness while introducing variety in content. <br> Here are the demonstrations: <br> {EXAMPLES} <br> Now, as an expert, generate a new sample that aligns with the original demonstrations: | 
| Filtering | You are an expert in assessing data quality. Given the original set of samples, your task is to carefully evaluate the provided sample in comparison to the original samples. Based on your expertise, determine whether the provided sample is of high quality, meeting or exceeding the standards set by the original set. <br> Here are the original samples: <br> {EXAMPLES} <br> Now, as an expert, evaluate the provided sample: <br> {GENERATED_SAMPLE} <br> Please provide only a single numerical rating (1, 2, 3, 4, or 5) based on the quality of the sample, without any additional commentary, formatting, or chattiness. |{{< /table-caption >}}
> 🔼 Table 7 presents the prompts used in the data augmentation process.  The first prompt instructs the language model to generate new examples similar in style and content to a provided set of examples. The second prompt guides the model to evaluate the quality of a synthetically generated example by assigning a score based on its adherence to the style and quality of the original examples.
> <details>
> <summary>read the caption</summary>
> Table 7: A list of prompts that we use for generating synthetic demonstrations and filtering them of low-quality.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.16926/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.16926/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}