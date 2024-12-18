---
title: "OmniEval: An Omnidirectional and Automatic RAG Evaluation Benchmark in Financial Domain"
summary: "OmniEval: Automatic benchmark for evaluating financial RAG systems."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Gaoling School of Artificial Intelligence, Renmin University of China",]
showSummary: true
date: 2024-12-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.13018 {{< /keyword >}}
{{< keyword icon="writer" >}} Shuting Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.13018" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.13018" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/omnieval-an-omnidirectional-and-automatic-rag" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.13018/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Retrieval-Augmented Generation (RAG) is gaining traction, especially in specialized fields like finance where LLMs often lack specific knowledge.  Current RAG evaluation methods are limited, lacking diversity in scenarios and metrics. Evaluating financial RAG is crucial for practical application, given the unique challenges of the domain.

To address this, the paper introduces **OmniEval, a new benchmark for evaluating financial RAG systems**.  It uses a **multi-agent technique with GPT-4** to automatically generate data, ensuring scalability, and a rigorous **multi-stage evaluation process that covers both retrieval and generation stages**.  It also incorporates **human annotation to enhance data quality** and introduces **novel model-based metrics** to provide a deeper insight into RAG system performance, going beyond traditional rule-based metrics.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OmniEval offers multi-dimensional evaluation of financial RAG systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark uses GPT-4 and human annotation for a robust dataset. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Multi-stage evaluation assesses retrieval & generation, revealing performance variation across topics & tasks {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**OmniEval offers a valuable resource for researchers exploring RAG in specialized domains.** Its focus on finance provides a much-needed testbed for evaluating models' abilities to handle expert knowledge. **The benchmark's automatic data generation method offers scalability**, while the multi-faceted evaluation approach provides a **comprehensive performance profile, highlighting areas for model improvement.**  This opens new avenues for research in robust RAG systems, particularly for specialized fields.  It also emphasizes the need for advanced evaluation strategies beyond basic metrics to thoroughly assess performance in these complex scenarios, pushing for more nuanced and effective RAG models in the future.

------
#### Visual Insights



![](https://arxiv.org/html/2412.13018/x3.png)

> 🔼 This figure visualizes the four-step data generation pipeline of OmniEval to build evaluation data instances. Step 1 is topic classification, which receives a document from the knowledge corpus and utilizes a topic classification agent to automatically recognize and classify which domain topic the document belongs to. Step 2 is initial data generation. For a specified document and its related domain topic, a data generation agent is requested to generate a question-answer (QA) pair and its most relevant passage within the document, which corresponds to a specific RAG task. Step 3 is automatic data quality inspection, which utilizes a quality inspection agent to inspect the quality of the generated data instance from step 2 and only retains the high-quality instances. The last step is manual quality inspection and correction, which incorporates human experts to check the generated data instances and further correct some flawed instances to ensure the quality of the final evaluation dataset.
> <details>
> <summary>read the caption</summary>
> Figure 1: The visualization of OmniEval’s generation pipeline of evaluation data.
> </details>





{{< table-caption >}}
| Benchmark | Evaluation Scenarios | Data Generation | Evaluation Metrics | Evaluation Models |
|---|---|---|---|---| 
| | Task-spe. | Manual | Rule | Retriever |
| | Topic-spe. | Auto. | Model | Generator |
| | | | Human | |
| PIXIU [Xie et al. (2023)] | ✓ | ✗ | ✓ | ✗ |
| | ✗ | ✗ | ✗ | ✓ |
| DISC-FinLLM [Chen et al. (2023)] | ✓ | ✗ | ✓ | ✓ |
|  | ✗ | ✓ | ✓ | ✓ |
| FinanceBench [Islam et al. (2023)] | ✓ | ✓ | ✗ | ✗ |
| | ✓ | ✓ | ✗ | ✗ |
| AlphaFin [Li et al. (2024)] | ✓ | ✗ | ✓ | ✓ |
| | ✗ | ✗ | ✓ | ✓ |
| FinBen [Xie et al. (2024)] | ✓ | ✗ | ✓ | ✓ |
| | ✗ | ✗ | ✗ | ✓ |
| FinTextQA [Chen et al. (2024a)] | ✓ | ✗ | ✓ | ✓ |
|  | ✗ | ✗ | ✗ | ✓ |
| OmniEval | ✓ | ✓ | ✓ | ✓ |
|  | ✓ | ✓ | ✓ | ✓ |{{< /table-caption >}}

> 🔼 This table compares OmniEval with other existing financial benchmarks like PIXIU, DISC-FinLLM, FinanceBench, AlphaFin, FinBen, and FinTextQA across different evaluation aspects. These aspects include whether the benchmark supports Task-specific or Topic-specific scenarios, utilizes Manual or Automated data generation methods, employs rule-based or model-based evaluation metrics, and offers evaluations based on retriever and generator models.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison between our proposed benchmark with existing financial benchmarks. “Auto.” is short for “Automated-generated”, “Spe.” is short for “Specific”.
> </details>





### In-depth insights


#### Financial RAG Benchmark
A **Financial RAG Benchmark** assesses Retrieval Augmented Generation models in the financial domain.  Such a benchmark would ideally test a model's ability to accurately and reliably answer finance-related questions using external knowledge sources. Key aspects of this benchmark may include **evaluating performance** across diverse financial topics (e.g., investment, insurance), question types (e.g., factual, analytical), and data formats (e.g., numerical data, text).  A robust benchmark would consider metrics like accuracy, completeness, and **hallucination detection**, as well as the retrieval quality of supporting evidence. Given the sensitivity and importance of accuracy in financial contexts, a strong financial RAG benchmark is crucial for building **trustworthy and practical** applications of LLMs in finance.

#### Multi-Stage & Multi-Metric Eval
**Multi-stage evaluation** assesses the entire RAG pipeline, analyzing retriever and generator performance separately and jointly. This granular approach helps pinpoint specific weaknesses.  Retrieval quality is especially critical in vertical domains where general retrievers may lack specialized knowledge. **Multi-metric evaluation** complements this by employing diverse metrics. Traditional metrics like Rouge and MAP provide quantitative assessments, while LLM-based metrics evaluate high-level aspects such as hallucination, comprehensiveness, and numerical accuracy, offering a more nuanced understanding of RAG system performance.

#### GPT-4 Data Generation
**GPT-4's role in data generation revolutionizes benchmark creation**.  Its automated capabilities offer scalability and adaptability across domains, exemplified by the financial benchmark OmniEval. Combining GPT-4's generation with human annotation enhances quality and ensures relevance. This multi-dimensional approach, considering topics and tasks, allows for fine-grained evaluation of RAG systems, pushing the boundaries of LLM capabilities in specialized fields.

#### Vertical Domain Challenges
**Vertical domain challenges** for LLMs like GPT-4 are significant.  Specialized areas like finance require **deep domain expertise** and accurate handling of **complex terminology**.  Current LLMs, trained on broad data, often lack this **precision** and may generate **hallucinations or inaccuracies**.  This necessitates models with strong **reasoning abilities** beyond surface knowledge. Evaluation is crucial, requiring benchmarks that test **retrieval and generation stages** using diverse tasks and topics.  Moreover, effective **human evaluation** of generated answers for **accuracy, completeness, and hallucination** is essential, along with automated metrics. Building **robust and reliable** vertical domain LLMs is critical for real-world applications.

#### LLM-Based Metrics
**LLM-based metrics** present a significant advancement in evaluating the quality of RAG systems, moving beyond traditional, often limited rule-based metrics.  By leveraging the nuanced understanding of LLMs, these metrics can assess high-level aspects like **hallucination, completeness, and the actual utilization of retrieved information**.  This is crucial in specialized domains like finance, where factual accuracy and in-depth reasoning are paramount.  However, the reliability of LLM-based metrics depends heavily on the quality of the LLM used for evaluation.  Supervised fine-tuning, as demonstrated with Qwen-2.5-7B-Instruct, plays a vital role in enhancing accuracy and aligning the LLM's judgment with human evaluation.  While promising, further research into mitigating biases and ensuring robustness across various LLMs is essential for broader adoption and reliance on these advanced evaluation methods.  The dependence on high-quality training data for these LLMs also necessitates continuous efforts in data collection and annotation, especially in niche domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.13018/x4.png)

> 🔼 This figure shows the two systems used for building the benchmark, OmniEval: a topic system and a task system.  The topic system consists of 16 financial topics, such as retail banking, commercial banking, and investment banking. The task system comprises 5 RAG tasks, including extractive QA, multi-hop reasoning QA, contrast QA, long-form QA, and conversational QA.
> <details>
> <summary>read the caption</summary>
> Figure 2: Topic & task systems used for building our benchmark.
> </details>



![](https://arxiv.org/html/2412.13018/x5.png)

> 🔼 This bar chart presents the distribution of manual inspection results on the quality of automatically generated data. The results are categorized into 'Bad Case (1-2)', 'Middle Case (3)', and 'Good Case (4-5)' based on a 5-point scale assessment by human annotators. The 'Acceptable Case (3-5)' represents the total percentage of instances deemed acceptable or better.  The high percentage of acceptable cases validates the automatic data generation approach.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistical information of manual inspection.
> </details>



![](https://arxiv.org/html/2412.13018/x6.png)

> 🔼 This figure visualizes the Rouge-L scores of a Retrieval-Augmented Generation (RAG) system composed of the GTE-Qwen2.5-1.5B retriever and the Yi15-34B large language model (LLM) across various financial topics and question answering task types. The x-axis represents the financial topics, while the y-axis corresponds to the different RAG tasks. The color intensity of each cell in the matrix indicates the Rouge-L score, providing a comprehensive overview of the system's performance across diverse scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of matrix-based evaluation of GTE-Qwen2.5-1.5B+Yi15-34B on Rouge-L.
> </details>



![](https://arxiv.org/html/2412.13018/x7.png)

> 🔼 This figure visualizes the Rouge-L scores of a Retrieval-Augmented Generation (RAG) system across different financial topics and question-answering tasks.  The RAG system combines the GTE-Qwen2.5-1.5B retriever with the Deepseek-v2-chat large language model (LLM). The visualization uses a heatmap, where each cell represents the Rouge-L score for a specific combination of topic (e.g., Retail Banking, Stock Market) and task (e.g., Extractive QA, Multi-hop Reasoning QA). The color intensity of each cell corresponds to the Rouge-L score, with darker colors indicating higher scores.  This matrix-based visualization allows for a detailed analysis of the RAG system's performance across various scenarios, revealing strengths and weaknesses in different areas.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of matrix-based evaluation of GTE-Qwen2.5-1.5B+Deepseek-v2-chat on Rouge-L.
> </details>



![](https://arxiv.org/html/2412.13018/x8.png)

> 🔼 This figure visualizes the Rouge-L scores of a Retrieval-Augmented Generation (RAG) system, combining the GTE-Qwen2.5-1.5B retriever and the Qwen2.5-72B generator.  The visualization is presented as a heatmap, where rows represent different question answering (QA) tasks (Extractive QA, Multi-hop Reasoning QA, Contrast QA, Long-form QA, and Conversational QA) and columns represent various financial topics (e.g., Retail Banking, Commercial Banking, Stock Market, etc.). Each cell in the heatmap represents the Rouge-L score of the RAG system on the corresponding topic and task combination, providing a fine-grained performance analysis across different scenarios. The color intensity of each cell indicates the magnitude of the Rouge-L score, with darker colors representing higher scores and thus better performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Visualization of matrix-based evaluation of GTE-Qwen2.5-1.5B+Qwen2.5-72B on Rouge-L.
> </details>



![](https://arxiv.org/html/2412.13018/x9.png)

> 🔼 This figure visualizes the Rouge-L scores of a Retrieval-Augmented Generation (RAG) system comprising the GTE-Qwen2.5-1.5B retriever and Llama3.1-70B generator, evaluated across various financial topics (Retail Banking, Commercial Banking, etc.) and question answering tasks (Extractive QA, Multi-hop Reasoning QA, etc.).  The heatmap represents the Rouge-L score for each topic-task combination, providing a fine-grained performance analysis.
> <details>
> <summary>read the caption</summary>
> Figure 7: Visualization of matrix-based evaluation of GTE-Qwen2.5-1.5B+Llama3.1-70B on Rouge-L.
> </details>



![](https://arxiv.org/html/2412.13018/x10.png)

> 🔼 This heatmap figure visualizes the distribution of the training dataset across different RAG scenarios, defined by the combination of 5 financial tasks (Extractive QA, Multi-hop Reasoning QA, Contrast QA, Long-form QA, and Conversational QA) and 16 financial topics (Retail Banking, Commercial Banking, Investment Banking, Stock Market, Bond Market, Fund, Derivatives Markets, Life Insurance, Property Insurance, Health insurance, Blockchain, Artificial Intelligence, Big Data, Anti-Money Laundering (AML), Compliance Audit, and Regulatory Reports).  The color intensity represents the number of instances in each scenario, with darker shades indicating a higher number of samples.
> <details>
> <summary>read the caption</summary>
> Figure 8: Statistical information of the automated-generated training set.
> </details>



![](https://arxiv.org/html/2412.13018/x11.png)

> 🔼 This heatmap visualizes the distribution of the automated-generated test instances across different topics (Retail Banking, Commercial Banking, etc.) and RAG task types (Extractive QA, Multi-hop Reasoning QA, etc.). The color intensity represents the number of instances in each topic-task combination, with warmer colors indicating a higher number of instances. This allows for analyzing the dataset's composition and potential biases toward specific topics or tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: Statistical information of the automated-generated test set.
> </details>



![](https://arxiv.org/html/2412.13018/x12.png)

> 🔼 This table visualizes the number of instances included in each subset of the human-annotated test set. The rows represent the five financial QA tasks defined, namely 'Extractive QA,' 'Multi-hop Reasoning QA,' 'Constract QA,' 'Long-form QA,' and 'Conversational QA.' The columns represent 16 financial topics, including 'Retail Banking,' 'Commercial Banking,' 'Investment Banking,' 'Stock Market,' 'Bond Market,' 'Fund,' 'Derivatives Markets,' 'Life Insurance,' 'Property Insurance,' 'Health Insurance,' 'Blockchain,' 'Artificial Intelligence,' 'Big Data,' 'Anti-Money Laundering,' 'Compliance Audit,' and 'Regulatory Reports.' Each cell in the heatmap represents the number of questions for a given task and topic, with cells coloured with higher numbers meaning more instances in that topical or task subsets.
> <details>
> <summary>read the caption</summary>
> Figure 10: Statistical information of the human-annotated test set.
> </details>



![](https://arxiv.org/html/2412.13018/x13.png)

> 🔼 This figure presents a bar chart visualizing the topic-wise performance evaluation of different large language models (LLMs) on an automatically generated dataset.  The evaluation metrics likely include Rouge-L and other related metrics. The x-axis represents various topics in the financial domain such as 'Retail Banking,' 'Commercial Banking,' 'Investment Banking,' etc., and the y-axis likely represents the performance scores. Different colors represent various LLMs being evaluated, providing a comparison across models. The figure aims to show how each LLM performs across different financial topics and to highlight the variation in performance due to topic specialization.
> <details>
> <summary>read the caption</summary>
> Figure 11: The topic-specific evaluation results on the auto-generated set.
> </details>



![](https://arxiv.org/html/2412.13018/x14.png)

> 🔼 This figure visualizes the performance of different RAG models across various financial topics on a human-annotated dataset.  The x-axis represents the topics like retail banking, commercial banking, investment banking, etc. and the y-axis shows the Rouge-L scores, indicating the models' text generation quality. Different colors correspond to different large language models (LLMs) used for generation after retrieving context. The results demonstrate how performance can vary based on the specific financial topic, suggesting that certain topics might be more challenging for current RAG models than others due to nuances in domain-specific language or knowledge requirements.
> <details>
> <summary>read the caption</summary>
> Figure 12: The topic-specific evaluation results on the human-annotated set.
> </details>



![](https://arxiv.org/html/2412.13018/x15.png)

> 🔼 This bar chart presents the evaluation results of different Large Language Models (LLMs) across five specific tasks within the financial domain, using the automated-generated dataset. The tasks include Extractive Question Answering, Multi-hop Reasoning Question Answering, Contrast Question Answering, Long-form Question Answering, and Conversational Question Answering. The LLMs evaluated are deepseek-v2-chat, llama3-70b-instruct, qwen2-72b, and yi15-34b.  The performance metric used is Rouge-L, which measures the longest common subsequence between the generated text and the reference text. Higher Rouge-L scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Figure 13: The task-specific evaluation results on the auto-generated set.
> </details>



![](https://arxiv.org/html/2412.13018/x16.png)

> 🔼 This figure presents a bar graph illustrating the performance of four large language models (LLMs) across five distinct financial question-answering tasks using the human-annotated evaluation dataset.  Rouge-L scores are used to measure performance.  The tasks include extractive question answering, multi-hop reasoning, contrast question answering, long-form question answering, and conversational question answering.  The LLMs evaluated are DeepSeek-v2-chat, Llama3.1-70b-Instruct, Qwen2.5-72b, and Yi15-34b. The results indicate performance variations among the models and across the tasks.
> <details>
> <summary>read the caption</summary>
> Figure 14: The task-specific evaluation results on the human-annotated set.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Data Source | Data Type | Doc. Count | Length Sum. | Avg. Length per Doc. |
|---|---|---|---|---| 
| BSCF-DB | DB - JSON | 193,774 | 23,631,875 | 122 |
| BSCF-PDF | PDF - TXT | 3,082 | 10,587,648 | 3,435 |
| FinGLM | PDF - TXT | 55,595 | 97,296,690 | 1,750 |
| Wiki-Fin | JSON | 3,367 | 5,679,758 | 1,687 |
| BAAI-Fin | JSON | 48,124 | 70,014,858 | 1,455 |
| Official Websits | JSON | 58,616 | 45,837,298 | 782 |{{< /table-caption >}}
> 🔼 This table presents statistics of the diverse data sources used to construct the knowledge corpus.  It lists the data source, the data type, the number of documents, the total length of text across all documents, and the average length of each document.
> <details>
> <summary>read the caption</summary>
> Table 2: Statistical information of our diverse data sources. “Doc.”, “Sum.”, and “Avg.” are short for “Document”, “summation”, and “Average”.
> </details>

{{< table-caption >}}
| Setting | Base Model | $\kappa$ | Accuracy |
|---|---|---|---| 
| Zero-shot | Llama3.1-8B-Inst | 39.70 | 55.60 |
| Zero-shot | Llama3.1-70B-Inst | 54.14 | 66.40 |
| Zero-shot | Qwen2.5-7B-Inst | 48.05 | 62.00 |
| Zero-shot | Qwen2.5-32B-Inst | <u>61.44</u> | <u>71.60</u> |
| Zero-shot | Qwen2.5-72B-Inst | 55.38 | 67.20 |
| Lora | Llama3.1-8B-Inst | 48.63 | 62.80 |
| Lora | Qwen2.5-7B-Inst | **64.86** | **74.40** |{{< /table-caption >}}
> 🔼 This table presents the accuracy scores of different large language models (LLMs) when evaluated against human annotations on five model-based metrics for assessing Retrieval-Augmented Generation (RAG) systems in the financial domain. These metrics are: accuracy, completeness, hallucination, utilization, and numerical accuracy. The LLMs are evaluated in zero-shot and Lora fine-tuned settings and compared against a fine-tuned LLM specifically trained for evaluation tasks. The table demonstrates the performance improvement achieved by the supervised fine-tuning of the LLM evaluator.
> <details>
> <summary>read the caption</summary>
> Table 3: Experimental results of model-based evaluator.
> </details>

{{< table-caption >}}
| Models | MAP ↑ | MRR ↑ | Rouge-L ↑ | F1 ↑ | ACC ↑ | HAL ↓ | COM ↑ | UTL ↑ | NAC ↑ |
|---|---|---|---|---|---|---|---|---|---|
|  |  |  |  |  |  |  |  |  |  |
| Automated-generated evaluation set |  |  |  |  |  |  |  |  |  |
| Jina-zh | 0.3395 | 0.3469 | 0.1662 | 0.2553 | 0.3908 | 0.0794 | 0.5981 | 0.5078 | 0.2837 |
| BGE-large-zh | 0.3777 | 0.3865 | 0.1693 | 0.2541 | 0.4080 | **0.0597** | 0.6048 | 0.5194 | **0.3124** |
| BGE-M3 | **0.3961** | **0.4057** | **0.1746** | **0.2593** | **0.4091** | 0.0634 | **0.6092** | **0.5203** | 0.3060 |
| GTE-Qwen2-1.5b | **0.4370** | **0.4491** | **0.1778** | **0.2563** | **0.4326** | **0.0467** | **0.6256** | **0.5613** | **0.3293** |
|  |  |  |  |  |  |  |  |  |  |
| Human-annotated evaluation set |  |  |  |  |  |  |  |  |  |
| Jina-zh | 0.3458 | 0.3533 | 0.2341 | 0.3821 | 0.4089 | 0.0886 | 0.5930 | 0.5163 | 0.3073 |
| BGE-large-zh | **0.4153** | **0.4252** | 0.2435 | 0.3870 | 0.4325 | 0.0718 | **0.6224** | 0.5367 | **0.3545** |
| BGE-M3 | 0.4152 | 0.4236 | **0.2517** | **0.3913** | **0.4450** | **0.0709** | **0.6208** | **0.5410** | 0.3472 |
| GTE-Qwen2-1.5b | **0.4443** | **0.4574** | **0.2528** | **0.3919** | **0.4476** | **0.0618** | 0.6190 | **0.5576** | **0.3595** |{{< /table-caption >}}
> 🔼 This table presents the evaluation results of various retrieval models (Jina-zh, BGE-large-zh, BGE-M3, and GTE-Qwen2-1.5b) when combined with a fixed large language model (Qwen2.5-72B) for retrieval-augmented generation. The metrics used for evaluation include Mean Average Precision (MAP), Mean Reciprocal Rank (MRR), Rouge-L, F1 score, Accuracy (ACC), Hallucination (HAL), Completeness (COM), Utilization (UTL), and Numerical Accuracy (NAC).  The results are presented for both automated-generated and human-annotated evaluation sets.
> <details>
> <summary>read the caption</summary>
> Table 4: The overall results of retrieval models with the generator being set as Qwen2.5-72B.
> </details>

{{< table-caption >}}
| Retriever | Generator | Rouge-L ↑ | F1 ↑ | ACC ↑ | HAL ↓ | COM ↑ | UTL ↑ | NAC ↑ |
|---|---|---|---|---|---|---|---|---| 
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Automated-generated evaluation set | | | | | | | | |
| CLOSE | Yi15-34B | 0.0326 | 0.0673 | 0.1573 | - | 0.5063 | - | 0.0693 |
| CLOSE | Deepseek-v2-chat | 0.1861 | 0.3709 | 0.3587 | - | 0.5755 | - | 0.1121 |
| CLOSE | Qwen2.5-72B | 0.1607 | 0.3222 | 0.3788 | - | 0.6017 | - | 0.1256 |
| CLOSE | Llama3-70B-Instruct | 0.1993 | 0.3989 | 0.3238 | - | 0.5284 | - | 0.0677 |
| GTE-Qwen2-1.5B | Yi15-34B | 0.0593 | 0.0958 | 0.3402 | **0.0597** | 0.5778 | 0.4229 | 0.1682 |
| GTE-Qwen2-1.5B | Deepseek-v2-chat | **0.2279** | **0.3300** | 0.4099 | 0.0634 | **0.6072** | **0.5197** | **0.3175** |
| GTE-Qwen2-1.5B | Qwen2.5-72B | 0.1778 | 0.2563 | **0.4326** | **0.0467** | **0.6256** | **0.5613** | **0.3293** |
| GTE-Qwen2-1.5B | Llama3-70B-Instruct | **0.3235** | **0.4810** | **0.4398** | 0.0792 | 0.5926 | 0.4754 | 0.3088 |
| Human-annotated evaluation set | | | | | | | | |
| CLOSE | Yi15-34B | 0.0497 | 0.1161 | 0.1461 | - | 0.4987 | - | 0.0749 |
| CLOSE | Deepseek-v2-chat | 0.2250 | 0.4353 | 0.3306 | - | 0.5541 | - | 0.1153 |
| CLOSE | Qwen2.5-72B | 0.2082 | 0.4191 | 0.3405 | - | 0.5754 | - | 0.1241 |
| CLOSE | Llama3-70B-Instruct | 0.2195 | 0.4183 | 0.2859 | - | 0.5133 | - | 0.0659 |
| GTE-Qwen2-1.5B | Yi15-34B | 0.0887 | 0.1583 | 0.3366 | **0.0648** | 0.5821 | 0.4234 | 0.1856 |
| GTE-Qwen2-1.5B | Deepseek-v2-chat | **0.2916** | **0.4353** | 0.4234 | 0.0750 | **0.6006** | **0.5160** | 0.3213 |
| GTE-Qwen2-1.5B | Qwen2.5-72B | 0.2528 | 0.3919 | **0.4476** | **0.0618** | **0.6190** | **0.5576** | **0.3595** |
| GTE-Qwen2-1.5B | Llama3-70B-Instruct | **0.3390** | **0.5042** | **0.4433** | 0.1131 | 0.5745 | 0.4764 | **0.3268** |{{< /table-caption >}}
> 🔼 This table presents the evaluation results of different RAG models using various LLMs as generators. The table is divided into two sections: one for the automated-generated evaluation set and the other for the human-annotated evaluation set.  Within each set, different LLMs (Yi15-34B, Deepseek-v2-chat, Qwen2.5-72B, Llama3-70B-Instruct) are used as generators, and their performance is evaluated with GTE-Qwen2-1.5B as the retriever. 'CLOSE' indicates that only the LLMs are used, without any retrieval augmentation. The evaluation metrics include Rouge-L, F1, ACC (accuracy), HAL (hallucination), COM (completeness), UTL (utilization), and NAC (numerical accuracy).
> <details>
> <summary>read the caption</summary>
> Table 5: The overall evaluation results on final responses of RAG models.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.13018/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13018/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}