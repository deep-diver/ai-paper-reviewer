---
title: "Fietje: An open, efficient LLM for Dutch"
summary: "Fietje: an open-source, efficient Dutch language model outperforming larger models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 KU Leuven",]
showSummary: true
date: 2024-12-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.15450 {{< /keyword >}}
{{< keyword icon="writer" >}} Bram Vanroy et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.15450" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.15450" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/fietje-an-open-efficient-llm-for-dutch" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.15450/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many large language models (LLMs) primarily focus on English, leaving other languages under-resourced.  This creates a significant barrier for researchers and developers working on these less-represented languages, as they often lack access to high-quality, readily available language models.  The limited availability of resources hinders progress in natural language processing research and applications for those languages.  The lack of open-source models also makes it difficult to reproduce and verify existing research, thereby slowing the development process.

This paper introduces Fietje, an open-source family of small language models (SLMs) specifically designed for the Dutch language.  **Fietje was developed using a transparent and reproducible approach**,  making its training data, model weights, and evaluation code publicly available to the research community.  The model demonstrates competitive results compared to larger language models.  The researchers also evaluated Fietje and other models on a range of benchmarks to highlight the significant progress made in the field, particularly showcasing how efficient smaller models are now surpassing older, larger models.  **This work thus addresses a critical need in the Dutch NLP community and wider multilingual language model research**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Fietje, a family of small language models (SLMs), is specifically designed for the Dutch language, demonstrating competitive results with larger language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The project emphasizes transparency and reproducibility by making model weights, datasets, training, and evaluation code publicly available. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluation results across various benchmarks showcase rapid progress in smaller models, with Fietje demonstrating competitive performance despite its relatively small size. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **Fietje**, a new open-source, efficient language model for Dutch, addressing the scarcity of such resources. Its open nature promotes reproducibility and further development, while its performance challenges existing models, indicating promising avenues in efficient LLM development for under-resourced languages.  This work also highlights the importance of high-quality data and appropriate evaluation metrics in LLM research, setting a valuable example for future studies.

------
#### Visual Insights



![](https://arxiv.org/html/2412.15450/x1.png)

> 🔼 This figure shows the relationship between model size and median performance across all the benchmark tasks considered in the paper.  The x-axis represents the model size in billions of parameters, and the y-axis represents the median F1 score across all benchmark tasks.  The plot allows for a visual comparison of the performance of different models with varying sizes, indicating whether larger models consistently outperform smaller models in the context of this study.
> <details>
> <summary>read the caption</summary>
> (a) All models
> </details>





{{< table-caption >}}
| name | date | size | type | Dutch-specific | data transparency | training transparency | finetuned from | wiki fertility | wiki tps | wiki s |
|---|---|---|---|---|---|---|---|---|---|---|
| **fietje-2b** | 4/24 | 2.8B | base | yes | yes | yes | phi-2 | 2.05 | 9501.41 ± 0.66 | 440.41 ± 0.03 |
| **fietje-2b-chat** | 4/24 | 2.8B | chat | yes | yes | yes | fietje-2b-instruct | 2.05 | 9501.41 ± 0.66 | 440.41 ± 0.03 |
| **fietje-2b-instruct** | 4/24 | 2.8B | instruct | yes | yes | yes | fietje-2b | 2.05 | 9501.70 ± 4.72 | 440.40 ± 0.22 |
| **GEITje-7B-ultra** | 1/24 | 7.2B | chat | yes | yes | yes | GEITje-7B | 1.97 | 4035.27 ± 0.64 | 999.42 ± 0.16 |
| **Llama-3.2-3B-Instruct** | 9/24 | 3.2B | instruct | no | partly | partly | Llama-3.2-3B | 1.74 | 7884.63 ± 0.36 | 451.97 ± 0.02 |
| **phi-2** | 12/23 | 2.8B | base | no | no | no | none | 2.05 | 9631.95 ± 16.12 | 434.44 ± 0.73 |
| **Phi-3.5-mini-instruct** | 8/24 | 3.8B | instruct | underspecified | no | no | none | 1.89 | 6633.85 ± 0.68 | 584.14 ± 0.06 |
| **Mistral-7B-Instruct-v0.1** | 9/23 | 7.2B | instruct | no | unclear<sup class="ltx_note_mark">16</sup> | no | none | 1.97 | 4027.81 ± 1.14 | 1001.27 ± 0.28 |
| **Mistral-7B-v0.1** | 9/23 | 7.2B | base | no | no | no | Mistral-7B-v0.1 | 1.97 | 4046.46 ± 0.67 | 996.66 ± 0.16 |
| **Qwen2.5-3B-Instruct** | 9/24 | 3.1B | instruct | underspecified | no | no | Qwen2.5-3B | 1.82 | 8094.26 ± 0.53 | 459.94 ± 0.03 |
| **GEITje-7B** | 12/23 | 7.2B | base | yes | partly | yes | Mistral-7B-v0.1 | 1.97 | 4021.61 ± 1.64 | 1002.82 ± 0.41 |
| **tweety-7b-dutch-v24a** | 5/24 | 7.4B | base | yes | yes | partly | Mistral-7B-v0.1 | 1.41 | 3979.88 ± 2.12 | 728.56 ± 0.39 |
| **Boreas-7B** | 4/24 | 7.2B | base | yes | partly | partly | Mistral-7B-v0.1 | 1.97 | 4032.05 ± 15.28 | 1000.23 ± 3.78 |
| **Boreas-7B-chat** | 4/24 | 7.2B | instruct | yes | partly | partly | Boreas-7B | 1.97 | 4034.36 ± 0.69 | 999.65 ± 0.17 |{{< /table-caption >}}

> 🔼 This table compares various large language models (LLMs), focusing on their suitability for Dutch language processing.  It details model characteristics such as size (in parameters), type (base, instruct, or chat), whether it was specifically trained for Dutch, the model it was fine-tuned from (if applicable), and the transparency of its data and training procedures (i.e., how reproducible the model is).  Key performance metrics are provided, including 'wiki fertility' (average number of tokens required to encode a single word in Dutch Wikipedia), 'wiki tps' (tokens processed per second on a portion of Dutch Wikipedia), and 'wiki s' (processing time for the same portion). These metrics provide insights into each model's efficiency and speed. The data for 'wiki tps' and 'wiki s' were collected under controlled conditions on a single RTX 3090 GPU using bfloat16 precision and Flash Attention 2, with a batch size of 1 and context length at the model's maximum or 8192 tokens. Reported means and confidence intervals (CI) are based on three runs.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of benchmarked models. Dutch-specific: did the model undergo (re-)training specifically for Dutch? data/training transparency: are the data and training procedure described in detail (reproducible) and is the data and training code publicly available? wiki fertility: how many tokens are needed on average to encode one word, calculated on full Dutch Wikipedia. Lower = more efficient. wiki tps: Tokens-per-second throughput on first 10,000 Wikipedia documents. How many tokens can the model process per second. wiki s: Processing time of first 10,000 Wikipedia documents. Lower = faster. wiki tps and wiki s were calculated on an isolated RTX 3090 in bfloat16 with Flash Attention 2 enabled. Batch size was 1 and all models’ maximum context length was used, or 8192 at most. The reported mean metrics and their CI are based on the results of three runs.
> </details>





### In-depth insights


#### Open Dutch LLM
The concept of an "Open Dutch LLM" is significant because it addresses the scarcity of publicly available, high-quality language models for the Dutch language.  **Open-source LLMs foster collaboration and research**, enabling further development and improvement by a wider community.  An open model allows researchers and developers to examine its architecture, training data, and performance, identifying areas for refinement.  **Transparency in model creation is crucial for building trust and ensuring responsible AI development.** This approach also promotes accessibility, empowering individuals and organizations to leverage advanced language technology without significant financial or infrastructural barriers.  However, an open model may also pose risks including potential misuse, and the need to address bias and maintain quality control.  Therefore, establishing clear guidelines and ethical considerations surrounding its use is essential.

#### Phi-2 Adaptation
The adaptation of Phi-2, a relatively small English-centric language model, to Dutch presents a compelling case study in efficient cross-lingual transfer learning.  **The choice of Phi-2 as a base model prioritizes resource efficiency**, leveraging its existing architecture and knowledge for adaptation rather than training a much larger model from scratch.  This approach is particularly relevant for resource-constrained environments, where building large models from scratch isn't feasible.  The success of this adaptation is also contingent on the quality and quantity of the training data used. The paper highlights the importance of using a high-quality dataset, suggesting that continued pretraining with 28 billion carefully filtered Dutch tokens yields significant improvements.  **Transparency is a key aspect of this work**, with both the datasets and the code used for adaptation being openly accessible to promote reproducibility and future development.  The evaluation results, while showing competitive performance against larger models at the time of publication, also underscore the rapid pace of innovation in the field of multilingual LLMs.  **Evaluating the adapted model's performance on a range of benchmarks provides insights into its strengths and weaknesses across diverse tasks**, offering a rich perspective on the effectiveness and limitations of this particular adaptation strategy.

#### Benchmark Results
The benchmark results section of a research paper is crucial for evaluating the performance of a model.  A thoughtful analysis should go beyond simply presenting the scores. It should delve into **statistical significance** of differences between models, considering confidence intervals to avoid overinterpreting minor variations.  The choice of benchmarks themselves is important; a diverse set covering various aspects of language understanding is essential for a comprehensive evaluation.  **Strengths and weaknesses** of different models in different tasks should be highlighted, as well as any unexpected results.  Furthermore, the analysis must contextualize the results by comparing them to related work. **Comparisons** with both smaller and larger models are essential to gauge the true impact of the studied model and to uncover unexpected trends. Finally, a discussion of the limitations of the benchmarks and potential biases should be included.  This allows the readers to gauge the robustness and generalizability of the findings.

#### Multilingual Impact
Analyzing the multilingual impact of language models reveals crucial insights.  The study highlights that **models trained on predominantly English data often underperform on other languages**, emphasizing the need for multilingual training.  While larger models might be expected to perform better, **smaller, recently released multilingual models often surpass larger, older, monolingual models**, demonstrating rapid advancements in the field. This shift underscores the importance of considering not just model size, but also **training data composition and release date** when assessing performance.  Furthermore, the research reveals significant performance discrepancies across various tasks, indicating that **multilingual capabilities don't guarantee consistent performance** across all benchmarks.  This nuanced perspective emphasizes the complexities of multilingual language modeling and the ongoing need for improved evaluation benchmarks specifically tailored to address the unique characteristics of diverse languages.

#### Future Directions
Future research should prioritize expanding high-quality Dutch datasets for training and evaluation, focusing on diverse text types and addressing the scarcity of instruction-tuned and preference-aligned data.  **Improving the transparency and reproducibility of future LLM development** is crucial, including detailed documentation of datasets, training procedures, and evaluation metrics.  Research should also explore innovative cross-lingual transfer techniques, moving beyond simple adaptation strategies and investigating more sophisticated methods that effectively leverage multilingual data while preserving nuances of the Dutch language.  **Benchmarking must advance** beyond relying solely on machine-translated datasets; creating robust, culturally sensitive, and fluent Dutch language evaluation benchmarks is critical for assessing true progress and capturing the capabilities of LLMs in Dutch effectively. Finally, further investigation is warranted into the interplay between model size, multilingual training, and performance on diverse tasks, aiming for efficient, high-performing LLMs that address the challenges of low-resource languages such as Dutch.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.15450/x2.png)

> 🔼 This figure shows the relationship between model size and median performance across multiple benchmark tasks, but only includes models that were not specifically adapted for the Dutch language.  It helps to visualize if larger models inherently perform better, without the confounding factor of language-specific tuning. The graph allows for comparison of performance across different model sizes, focusing on general multilingual capabilities rather than adaptations for a particular language.
> <details>
> <summary>read the caption</summary>
> (b) Without modified models
> </details>



![](https://arxiv.org/html/2412.15450/x3.png)

> 🔼 This figure compares the median performance of various large language models (LLMs) across multiple benchmark tasks against their model size (in billions of parameters).  It visualizes the relationship between model size and performance, showing whether larger models necessarily lead to better results. The figure is split into two subfigures: (a) includes all models evaluated; (b) limits the comparison to models that were not specifically adapted for Dutch, offering a clearer view of size's effect without the confounding factor of language-specific adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Model size vs. median performance
> </details>



![](https://arxiv.org/html/2412.15450/x4.png)

> 🔼 This figure shows the relationship between model size (in billions of parameters) and the median performance across all benchmark tasks for all the models considered in the paper.  The x-axis represents model size, while the y-axis shows the weighted F1 score, a common metric used to evaluate the performance of models on classification tasks.  The plot helps to visualize whether larger models generally perform better and whether there are clear trends based on model size.
> <details>
> <summary>read the caption</summary>
> (a) All models
> </details>



![](https://arxiv.org/html/2412.15450/x5.png)

> 🔼 This figure is a bar chart visualizing the relationship between model size (in billions of parameters) and median performance across multiple benchmarks.  However, unlike Figure 1(a), which includes all models, Figure 1(b) focuses only on those models that were not specifically fine-tuned or adapted for the Dutch language.  This allows for a more direct comparison of the inherent capabilities of different base models, without the influence of targeted Dutch language adaptations.
> <details>
> <summary>read the caption</summary>
> (b) Without modified models
> </details>



![](https://arxiv.org/html/2412.15450/x6.png)

> 🔼 This figure illustrates the relationship between the release date of the language models and their median performance across various benchmark tasks.  It shows that more recently released models generally outperform older models, even when controlling for model size. This suggests that ongoing advancements in the field are leading to improvements in model capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model release date vs. median performance
> </details>



![](https://arxiv.org/html/2412.15450/x7.png)

> 🔼 This figure shows the performance of various language models on the AI2 Reasoning Challenge (ARC) benchmark.  The x-axis represents the different language models tested, while the y-axis shows the weighted F1 score achieved by each model.  The plot visually compares the performance of different models—including those specifically adapted for Dutch and those which are multilingual—on this reasoning task.  The error bars indicate the 95% confidence intervals, which reflect the uncertainty in the model's performance.
> <details>
> <summary>read the caption</summary>
> (a) ARC
> </details>



![](https://arxiv.org/html/2412.15450/x8.png)

> 🔼 This figure shows the performance of various language models on the Dutch Book Review Dataset (DBRD) sentiment analysis benchmark.  The x-axis represents the different language models evaluated, and the y-axis shows their weighted F1 scores. The models are ranked based on their performance on this specific sentiment analysis task, showcasing the relative strengths and weaknesses of each model in classifying Dutch book reviews as positive or negative.
> <details>
> <summary>read the caption</summary>
> (b) DBRD
> </details>



![](https://arxiv.org/html/2412.15450/x9.png)

> 🔼 This bar chart displays the performance of various language models on the Dutch CoLA benchmark, which evaluates grammatical acceptability in Dutch.  The models are ranked on the weighted F1 score, with higher scores indicating better performance.  The chart allows comparison of different models based on their size (number of parameters) and release date to understand how model architecture, size, training data, and release timing affect performance on this specific task.
> <details>
> <summary>read the caption</summary>
> (c) Dutch CoLA
> </details>



![](https://arxiv.org/html/2412.15450/x10.png)

> 🔼 This figure shows the performance of various language models on the Global MMLU (Massive Multitask Language Understanding) benchmark.  The Global MMLU benchmark assesses a model's ability to solve a wide range of problems across various academic and professional fields, reflecting the breadth of knowledge and reasoning abilities of the model.  The x-axis represents the different language models, and the y-axis represents their performance scores on the Global MMLU benchmark. Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> (d) Global-MMLU
> </details>



![](https://arxiv.org/html/2412.15450/x11.png)

> 🔼 Figure 3(e) displays the results of the XLWIC (Cross-lingual Word-in-Context) benchmark.  XLWIC assesses a model's ability to perform word sense disambiguation. The chart shows the performance (weighted F1 score) of various models on this task, highlighting the relative strengths and weaknesses of different models in distinguishing between different meanings of a word within context.  The models are compared on this task. 
> <details>
> <summary>read the caption</summary>
> (e) XLWIC
> </details>



![](https://arxiv.org/html/2412.15450/x12.png)

> 🔼 This figure presents a bar chart visualization for each benchmark used in the paper to evaluate the performance of various language models.  The benchmarks cover different aspects of LLM capabilities, including reasoning (ARC), sentiment analysis (DBRD), grammatical acceptability (Dutch CoLA),  world knowledge and language understanding (Global MMLU), and word sense disambiguation (XLWIC). Each bar in the chart represents the weighted F1 score achieved by a particular model on a specific benchmark.  The figure allows for a comparison of model performance across the different benchmarks and helps in understanding the strengths and weaknesses of each model in various language tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results per benchmark
> </details>



![](https://arxiv.org/html/2412.15450/x13.png)

> 🔼 This figure shows the performance of various language models on the ARC (AI2 Reasoning Challenge) benchmark.  The x-axis represents the different language models, and the y-axis shows their weighted F1 scores.  The models are ranked by their performance on this specific benchmark, providing a visual comparison of their reasoning abilities.
> <details>
> <summary>read the caption</summary>
> (a) ARC
> </details>



![](https://arxiv.org/html/2412.15450/x14.png)

> 🔼 This bar chart displays the weighted F1 scores achieved by various language models on the Dutch Book Review Dataset (DBRD) sentiment analysis benchmark.  The models are ranked by their performance, illustrating the relative strengths and weaknesses of different approaches to Dutch natural language processing. The chart helps to visualize the differences in accuracy across different models, particularly in identifying positive and negative sentiment in Dutch book reviews.
> <details>
> <summary>read the caption</summary>
> (b) DBRD
> </details>



![](https://arxiv.org/html/2412.15450/x15.png)

> 🔼 This figure shows the performance of various language models on the Dutch CoLA benchmark.  The Dutch CoLA benchmark evaluates a model's ability to assess the grammatical acceptability of Dutch sentences.  The x-axis represents the different language models, and the y-axis represents the weighted F1 score, a metric measuring the accuracy of the model's grammaticality judgments.  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> (c) Dutch CoLA
> </details>



![](https://arxiv.org/html/2412.15450/x16.png)

> 🔼 This bar chart displays the weighted F1 scores achieved by various language models on the Global MMLU (Massive Multitask Language Understanding) benchmark.  The x-axis represents the different language models tested, while the y-axis shows their corresponding weighted F1 scores.  This benchmark assesses a model's ability to solve a range of tasks spanning different academic and professional fields.  The chart visually compares the performance of different models, highlighting their strengths and weaknesses on this comprehensive evaluation.
> <details>
> <summary>read the caption</summary>
> (d) Global-MMLU
> </details>



![](https://arxiv.org/html/2412.15450/x17.png)

> 🔼 Figure 3(e) displays the results of the XLWIC benchmark.  The XLWIC (Cross-lingual Word-in-Context) benchmark evaluates the ability of language models to perform word sense disambiguation in Dutch. The y-axis represents the weighted F1 score, indicating the performance of different models on this task. The x-axis shows the different models tested, including both Dutch-specific models and multilingual models. The graph helps to compare the performance of these models on word sense disambiguation within the context of the study.
> <details>
> <summary>read the caption</summary>
> (e) XLWIC
> </details>



![](https://arxiv.org/html/2412.15450/x18.png)

> 🔼 This figure displays the performance of various language models across five different benchmark tasks: ARC (reasoning), DBRD (sentiment analysis), Dutch CoLA (grammaticality), Global MMLU (world knowledge), and XLWIC-NL (word sense disambiguation).  The x-axis represents the model size in billions of parameters, and the y-axis represents the weighted F1 score, a metric reflecting the model's performance. Each data point represents a specific model's performance on a particular benchmark, allowing for comparison of model performance relative to both task and size.  The figure helps to visualize the relationships between model size, task type, and overall performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance vs. size across all benchmarks
> </details>



![](https://arxiv.org/html/2412.15450/x19.png)

> 🔼 This bar chart displays the performance of various language models on the ARC (AI2 Reasoning Challenge) benchmark.  The x-axis represents the different language models, while the y-axis shows their weighted F1 scores.  The chart visually compares the performance of Fietje and its variants against other models, both Dutch-specific and multilingual, highlighting relative strengths and weaknesses in reasoning tasks.
> <details>
> <summary>read the caption</summary>
> (a) ARC
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.15450/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.15450/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}