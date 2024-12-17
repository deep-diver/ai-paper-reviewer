---
title: "RetroLLM: Empowering Large Language Models to Retrieve Fine-grained Evidence within Generation"
summary: "RetroLLM unifies retrieval & generation in LLMs, boosting accuracy and cutting costs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Renmin University of China",]
showSummary: true
date: 2024-12-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.11919 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiaoxi Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.11919" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.11919" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/retrollm-empowering-large-language-models-to" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.11919/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) excel at generating text but can hallucinate facts.  Retrieval-augmented generation (RAG) addresses this by incorporating external knowledge, but current methods have limitations. They require separate retrieval models, add computational overhead, introduce redundant information, and lack joint optimization of retrieval and generation processes.  These issues hinder the performance and efficiency of LLMs in knowledge-intensive tasks.Existing RAG methods employ dense retrievers, resulting in high deployment costs and input token overload. Generative retrievers offer joint optimization potential but require mapping generated IDs back to content, disrupting seamless integration. Prefix constrained approaches suffer from false pruning issues due to excessive initial choices and limited future awareness, hindering correct evidence generation.  Improving RAG efficiency and accuracy requires addressing these limitations.

RetroLLM integrates retrieval and generation into a single process within LLMs, generating evidence directly from the corpus using constrained decoding. It uses hierarchical FM-Index constraints to predict clues and identify a subset of candidate documents, reducing the decoding space and mitigating false pruning.  A forward-looking constrained decoding strategy enhances evidence accuracy by scoring future sequence relevance. By unifying retrieval and generation, **RetroLLM simplifies the RAG architecture, eliminates the need for separate embedding models, improves flexibility, and allows for joint optimization**.  The results demonstrate RetroLLM's superior performance across various QA datasets, **significantly reducing token consumption** compared to traditional RAG methods while maintaining **high accuracy**. This unified framework with enhanced decoding offers a promising direction for efficient and accurate retrieval-augmented generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RetroLLM unifies retrieval and generation into a single process within LLMs, enhancing efficiency and allowing joint optimization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Hierarchical FM-Index constraints reduce false pruning during evidence generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Forward-looking constrained decoding improves evidence accuracy by considering future sequence relevance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**RetroLLM offers a novel approach to retrieval-augmented generation, streamlining the process and reducing computational costs.  Researchers interested in enhancing language model accuracy, efficiency, and knowledge integration will find this work valuable. It paves the way for more effective and efficient RAG systems by demonstrating the potential of unified architectures. It also introduces innovative techniques like hierarchical FM-Index constraints and forward-looking decoding, encouraging further exploration of constrained decoding strategies.**

------
#### Visual Insights



![](https://arxiv.org/html/2412.11919/x1.png)

> 🔼 This figure compares different retrieval-augmented generation (RAG) frameworks. Traditional RAG uses a separate retriever to fetch documents, while generative RAG generates document IDs. Both feed retrieved content to an LLM for answer generation. Our RetroLLM combines retrieval and generation into a single process, using FM-Index constraints to retrieve evidence directly within the LLM's decoding process.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comparison of retrieval-augmented generation frameworks. (a) Traditional RAG uses a dense retriever for document matching, while (b) generative RAG relies on constrained DocID generation. Both require feeding retrieved document text into the LLM for answer generation. (c) Our RetroLLM unifies retrieval and generation in a single auto-regressive decoding process, leveraging FM-Index constraints to retrieve fine-grained evidence.
> </details>





{{< table-caption >}}
| Method | In-domain Datasets | | | | | Out-of-domain Datasets | | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---| 
| | NQ | | | TriviaQA | | | HotpotQA | | | PopQA | | | 2WIKI | | |
| | Acc | F1 | Tok | Acc | F1 | Tok | Acc | F1 | Tok | Acc | F1 | Tok | Acc | F1 | Tok |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| 
| ***Direct Generation*** | | | | | | | | | | | | | | |
| Llama2-7B | 27.6 | 30.1 | 50 | 56.1 | 60.2 | 52 | 21.2 | 26.5 | 56 | 24.2 | 26.4 | 43 | 20.9 | 24.3 | 54 |
| Mistral-7B | 30.4 | 25.2 | 57 | 58.8 | 58.6 | 57 | 27.0 | 23.6 | 65 | 25.8 | 25.2 | 45 | 36.5 | 18.7 | 58 |
| Qwen-7B | 21.8 | 21.3 | 52 | 45.1 | 48.1 | 54 | 21.3 | 27.5 | 57 | 17.1 | 18.7 | 45 | 22.4 | 28.1 | 53 |
| ChatGPT | - | - | - | <span style="color:grey;">77.0</span> | <span style="color:grey;">52.9</span> | - | <span style="color:grey;">33.8</span> | <span style="color:grey;">24.0</span> | - | <span style="color:grey;">26.6</span> | <span style="color:grey;">13.2</span> | - | <span style="color:grey;">38.0</span> | <span style="color:grey;">21.3</span> | - |
| ***Retrieval-augmented Generation*** | | | | | | | | | | | | | | |
| Naive RAG | **52.4** | 41.1 | 919 | 69.3 | 65.9 | **915** | **37.8** | 35.8 | **960** | 47.7 | 38.6 | 944 | **38.7** | 21.7 | **1000** |
| REPLUG | 41.6 | 41.2 | **903** | 65.4 | 66.5 | 939 | 27.8 | 31.7 | 965 | 38.2 | 37.0 | **921** | 24.5 | 20.8 | 1007 |
| Self-RAG | 41.8 | 45.2 | 1203 | 64.1 | 53.4 | 1267 | 32.1 | 29.6 | 1354 | 39.7 | 32.7 | 1236 | 30.3 | 25.7 | 1272 |
| IRCoT | 49.6 | 45.9 | 1598 | 66.0 | 66.1 | 1715 | 37.3 | **41.5** | 1842 | **59.8** | **45.6** | 1667 | 29.4 | **32.4** | 1707 |
| Iter-RetGen | 51.7 | **48.4** | 3002 | **71.0** | **69.9** | 2461 | 37.2 | 39.0 | 2545 | 51.7 | **47.5** | 2509 | 29.2 | 21.5 | 2669 |
| Adaptive-RAG | 50.5 | 46.6 | 946 | 65.1 | 65.6 | 958 | 37.1 | 39.1 | 2080 | 58.3 | 40.4 | 1681 | 32.1 | 28.4 | 2580 |
| ***Retrieval within Generation*** | | | | | | | | | | | | | | | 
| RetroLLM (Ours) | **61.6** | **49.8** | **302** | **74.3** | **72.8** | **287** | **61.9** | **47.2** | **607** | **65.7** | 43.0 | **355** | **48.9** | **36.2** | **661** |{{< /table-caption >}}

> 🔼 This table presents the overall performance of various methods on five open-domain question answering datasets, including NQ, TriviaQA, PopQA, HotpotQA, and 2WikiMultiHop.  These datasets encompass both single-hop and multi-hop question answering tasks, evaluating a model's ability to answer questions requiring different levels of reasoning complexity. The table compares direct generation methods (Llama, Mistral, Qwen, ChatGPT) with retrieval-augmented generation methods (Naive RAG, REPLUG, Self-RAG, IRCOT, Iter-RetGen, Adaptive-RAG) and the proposed method (RetroLLM). Performance is measured using accuracy, F1 score, and token count, with the best and second-best results highlighted for each method and dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall performance on open-domain QA datasets, including single-hop and multi-hop QA tasks. The best results are in bold and the second are underlined. Results from non-proprietary models are in gray color.
> </details>





### In-depth insights


#### Unified RAG Framework
A **unified RAG framework** integrates retrieval and generation within a single model. This approach offers several advantages over traditional RAG methods that use separate retriever and generator components.  It enables **joint optimization** of retrieval and generation, leading to improved performance and deeper understanding of their interaction.  A unified framework also **reduces deployment costs** by eliminating the need for maintaining a separate retrieval model and its associated index. It allows for **dynamic retrieval granularity**, enabling the model to decide how much evidence to retrieve based on the query's complexity. Furthermore, direct evidence generation within the unified framework avoids the inclusion of full retrieved documents as input, thus **reducing input token length** and mitigating distraction from redundant information.  However, such frameworks necessitate addressing challenges like **false pruning** during constrained evidence generation. This can be mitigated via techniques like hierarchical constraints and forward-looking decoding to improve accuracy and efficiency.

#### Constrained Decoding
**Constrained decoding** in LLMs directs text generation by enforcing rules or limitations.  This is crucial for controlling output, ensuring factual accuracy by grounding generation in external knowledge, and generating text adhering to specific formats or structures.  However, **overly strict constraints** risk **false pruning**, where valid generation paths are prematurely eliminated, hindering output quality.  Balancing constraint strictness with generation flexibility is key for effective constrained decoding.

#### Hierarchical FM-Index
**RetroLLM** introduces a hierarchical FM-Index to enhance retrieval accuracy and efficiency.  It constructs two indexes: a **global** index on the entire corpus for initial clue generation and **document-level** indexes for precise evidence extraction. This two-tiered approach allows for broad initial searching, constrained by the corpus's global FM-Index, to identify relevant documents. Subsequently, the document-specific FM-Indexes allow for granular evidence generation, reducing irrelevant decoding. This hierarchical structure addresses the challenge of false pruning in constrained decoding by first narrowing down the search space with clue generation. This two-stage retrieval within generation method enhances both accuracy and efficiency.

#### Forward-Looking Decoding
**Forward-looking decoding** enhances evidence generation by enabling the model to consider future context.  It identifies potential future windows containing clues, scores their relevance to the query, and adjusts decoding probabilities accordingly.  This **mitigates false pruning** in constrained decoding by favoring tokens leading to relevant future windows, thus improving the generation of coherent and accurate evidence.

#### Retrieval Accuracy, Efficiency
**RetroLLM effectively balances retrieval accuracy and efficiency.**  It demonstrates superior R@1 compared to other methods in single-hop QA, and outperforms all methods in multi-hop QA while retrieving fewer passages. Although slightly slower than naive RAG, its reduced token consumption (approximately 2.1x less than naive RAG and 6x less than Iter-RetGen) makes it more efficient overall. This is because RetroLLM retrieves fine-grained evidence and dynamically adjusts the amount retrieved, optimizing the trade-off between sufficient information and conciseness for LLM processing.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.11919/x2.png)

> 🔼 This figure presents an empirical study on the false pruning problem in constrained evidence generation, comparing the relevance scores of generated sequences under corpus-level and document-level FM-Index constraints with labeled evidence sequences. It aims to demonstrate how restricting FM-Index constraints to a curated subset of relevant documents (document-level) effectively mitigates false pruning compared to using corpus-level constraints.
> <details>
> <summary>read the caption</summary>
> (a) Sequence Relevance
> </details>



![](https://arxiv.org/html/2412.11919/x3.png)

> 🔼 This figure presents a bar chart comparing the overall accuracies of constrained evidence generation using a corpus-level FM-Index versus a document-level FM-Index across various beam sizes (1, 5, 10). The results show that constraining the search space to a curated subset of relevant documents (document-level FM-Index) significantly improves the overall accuracy of evidence generation compared to using the entire corpus (corpus-level FM-Index), especially for smaller beam sizes. The experiment is used for mitigating the false pruning problem.
> <details>
> <summary>read the caption</summary>
> (b) Overall Accuracy
> </details>



![](https://arxiv.org/html/2412.11919/x4.png)

> 🔼 This figure presents an empirical study on the false pruning problem in constrained evidence generation. It compares two approaches: using a corpus-level FM-Index and a document-level FM-Index.  Figure 2(a) shows how the relevance score between the query and generated evidence prefix changes over the first 30 generated tokens, comparing corpus-level constraints, document-level constraints, and labeled data.  A higher relevance score indicates better alignment with the query. Figure 2(b) compares the overall accuracy of evidence generation using different beam sizes for both corpus-level and document-level constraints.  The findings demonstrate that using a document-level FM-Index significantly mitigates false pruning, as the relevance scores remain higher and overall accuracy improves with increasing beam size. Conversely, using a corpus-level FM-Index leads to a sharp drop in relevance and lower accuracy, highlighting the severity of the false pruning issue when using broader constraints.
> <details>
> <summary>read the caption</summary>
> Figure 2: Empirical Study on false pruning problem in constrained evidence generation, comparing corpus-level and document-level FM-Index approaches.
> </details>



![](https://arxiv.org/html/2412.11919/x5.png)

> 🔼 RetroLLM unifies retrieval and generation within a single decoding process. It uses a hierarchical, forward-looking FM-Index constraint approach.  First, RetroLLM generates clues constrained by a global FM-Index to identify relevant documents. Then, it generates evidence constrained by document-specific FM-Indexes, guided by forward-looking relevance scores based on future windows within candidate documents. Finally, after sufficient evidence is generated, it produces the final answer.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Overview of the RetroLLM Framework, which retrieves fine-grained evidence through a hierarchical, forward-looking FM-Index constrained generation process. During generation, the model autonomously determines whether to generate additional evidence or provide the final answer, based on the sufficiency of the current context.
> </details>



![](https://arxiv.org/html/2412.11919/x6.png)

> 🔼 This figure, located in the 'Experimental Results' section (specifically section 4.4), illustrates the impact of different base language models (LLMs) and their parameter sizes on the accuracy of RetroLLM.  Three LLM series – Mistral, Llama3, and Qwen2.5 – are evaluated with parameter sizes ranging from 1 billion to 14 billion. The x-axis represents the LLM's parameter size, while the y-axis represents the accuracy achieved on a suite of five open-domain question answering datasets. The plot helps visualize how model scale affects performance, showing a general trend of increasing accuracy with larger parameter sizes.
> <details>
> <summary>read the caption</summary>
> (a) Parameters vs. Accuracy
> </details>



![](https://arxiv.org/html/2412.11919/x7.png)

> 🔼 This line graph demonstrates the change in F1 score as the number of parameters in the base language model changes. The number of parameters is presented along the x-axis and F1 score along the y-axis.
> <details>
> <summary>read the caption</summary>
> (b) Parameters vs. F1
> </details>



![](https://arxiv.org/html/2412.11919/x8.png)

> 🔼 This figure analyzes the effect of different base Large Language Models (LLMs) and their parameter sizes on the performance of RetroLLM.  It uses three LLM families (Mistral, Llama3, and Qwen2.5) with sizes varying from 1B to 14B parameters and reports average performance metrics (accuracy and F1 score) across five datasets (NQ, TriviaQA, HotpotQA, PopQA, 2WikiMultiHop). Subfigure (a) shows the trend of accuracy as the parameter size increases, and subfigure (b) depicts the same trend for the F1 score.  This allows for a comparison of model performance and scaling trends across different LLMs and their sizes when used within the RetroLLM framework.
> <details>
> <summary>read the caption</summary>
> Figure 4: Impact of performance with different base LLMs, reporting average performance on five datasets.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Single-hop QA | | | Multi-hop QA | | |
|---|---|---|---|---|---|---| 
| | R@1 | R@5 | Num | R@1 | R@5 | Num |
| BM25 | 37.8 | 56.3 | 5 | 26.9 | 43.1 | 5 |
| SPLADE-v3 | 50.6 | 69.7 | 5 | 27.5 | 42.9 | 5 |
| E5 | 54.3 | **74.3** | 5 | 26.9 | 45.9 | 5 |
| BGE | 53.3 | 72.8 | 5 | 27.4 | 46.8 | 5 |
| Naive Constrain | 15.7 | 31.7 | 5 | 10.6 | 20.3 | 5 |
| RetroLLM | **56.6** | 67.9 | **3.29** | **29.3** | **49.6** | **4.24** |{{< /table-caption >}}
> 🔼 Retrieval performance of RetroLLM compared to sparse, dense, and generative retrieval methods on single-hop and multi-hop open-domain question answering datasets. RetroLLM uses fewer passages while achieving better R@1 accuracy in single-hop and higher accuracy in multi-hop QA, unlike baselines using fixed passage numbers.  The naive constrained beam search approach performs significantly worse, highlighting challenges with false pruning.
> <details>
> <summary>read the caption</summary>
> Table 2: Analysis of retrieval performance of RetroLLM, compared with sparse, dense, and generative retrieval methods. We report average performance on three single-hop and two multi-hop QA datasets.
> </details>

{{< table-caption >}}
| Method | In-domain | | Out-of-domain | |
|---|---|---|---|---| 
| | Acc | F1 | Acc | F1 |
| RetroLLM | **66.0** | **56.6** | **57.3** | **39.6** |
| w/o Future Window | 44.3 | 43.2 | 40.9 | 33.8 |
| w/o Clue Generation | 60.6 | 52.1 | 56.4 | 38.1 |
| w/o Clue Expansion | 49.6 | 45.1 | 44.1 | 35.4 |
| w/ Naive Constraints | 27.2 | 28.0 | 21.8 | 20.7 |
| w/o Constraints | 41.6 | 43.0 | 31.6 | 28.1 |{{< /table-caption >}}
> 🔼 This table presents the ablation study results, showing the impact of different components within the RetroLLM framework on both in-domain and out-of-domain question answering performance.  It evaluates the importance of the hierarchical FM-Index constraints, forward-looking decoding, and clue generation/expansion strategies by removing them individually and observing the changes in accuracy and F1 score.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Studies of RetroLLM, considering in-domain and out-of-domain performance.
> </details>

{{< table-caption >}}
| Method | Latency (ms) |  |  | Token Num |  |  | # P | 
|---|---|---|---|---|---|---|---| 
|  | Retr | Gen | Total | In | Out | Total | F1 | 
| Naive RAG | **54** | **528** | **582** | 902 | **17** | 919 | 41.1 | 
| SelfRAG | 89 | 3180 | 3269 | 1096 | 107 | 1203 | 45.2 | 
| Iter-RetGen | 274 | 2058 | 2332 | 2963 | 39 | 3002 | 48.4 | 
| IRCoT | 83 | 1759 | 1842 | 1535 | 63 | 1598 | 46.6 | 
| RetroLLM | - | - | 786 | **18** | 297 | **315** | **49.8** |{{< /table-caption >}}
> 🔼 This table compares the efficiency of RetroLLM with other RAG methods, focusing on three key aspects: 1. **Latency**: It measures the average query processing time, indicating how quickly each method retrieves and processes information.  2. **Token Count**: It analyzes the number of input and output tokens used by each model. Input tokens are related to the query length, context length, and evidence length, while output tokens represent the generated evidence and final answer. 3. **Performance (F1)**: It presents the F1 scores for each method on a question-answering task, reflecting the overall effectiveness in answering questions.  This comprehensive comparison allows for evaluating the trade-offs between efficiency (latency and token usage) and performance (F1) for different RAG approaches.
> <details>
> <summary>read the caption</summary>
> Table 4: Efficiency Analysis of RetroLLM, comparing query latency, number of tokens and performance (# P).
> </details>

{{< table-caption >}}
| Task | Dataset | # Train | # Test |
|---|---|---|---| 
| Single-hop QA | NQ | 79,168 | 3,610 |
| Single-hop QA | TriviaQA | 78,785 | 11,313 |
| Single-hop QA | PopQA | / | 14,267 |
| Multi-hop QA | HotpotQA | 90,447 | 7,405 |
| Multi-hop QA | 2WIKI | / | 12,576 |
| **Retrieval Corpus** | **# Passages** | **# Documents** | |
| Wikipedia | 21,015,324 | 3,232,907 | |{{< /table-caption >}}
> 🔼 This table presents statistics on the datasets used for evaluating single-hop and multi-hop question answering, along with details of the Wikipedia corpus used for retrieval.
> <details>
> <summary>read the caption</summary>
> Table 5: Detailed statistics of datasets and retrieval corpus utilized in our experiments.
> </details>

{{< table-caption >}}
| Method | NQ | | | TriviaQA | | | HotpotQA | | | PopQA | | | 2WIKI | | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| 
| | R@1 | R@5 | Num | R@1 | R@5 | Num | R@1 | R@5 | Num | R@1 | R@5 | Num | R@1 | R@5 | Num |
| **_Sparse Retrieval_** | | | | | | | | | | | | | | | |
| BM25 | 24.1 | 46.2 | 5 | 49.6 | 68.5 | 5 | 31.2 | 48.7 | 5 | 39.6 | 54.3 | 5 | 22.6 | 37.5 | 5 |
| SPLADE-v3 | 45.4 | 68.0 | 5 | 58.8 | 75.9 | 5 | 32.9 | 45.3 | 5 | 47.6 | 65.2 | 5 | 22.2 | 40.6 | 5 |
| **_Dense Retrieval_** | | | | | | | | | | | | | | | |
| E5 | **55.7** | **77.3** | 5 | **61.6** | **77.8** | 5 | 32.3 | 52.0 | 5 | 51.7 | **70.9** | 5 | 21.6 | 39.8 | 5 |
| BGE | 50.3 | 73.6 | 5 | 58.7 | 75.1 | 5 | 33.7 | 54.7 | 5 | 50.8 | 69.6 | 5 | 21.1 | 38.9 | 5 |
| **_Generative Retrieval_** | | | | | | | | | | | | | | | |
| Naive Constrain | 13.1 | 26.9 | 5 | 23.0 | 46.9 | 5 | 11.8 | 21.6 | 5 | 10.9 | 21.2 | 5 | 9.4 | 19.0 | 5 |
| RetroLLM | 51.6 | 62.5 | **3.20** | 61.1 | 71.0 | **2.80** | **35.6** | **57.3** | **3.86** | **57.0** | 70.1 | **4.07** | **23.0** | **41.8** | **4.40** |{{< /table-caption >}}
> 🔼 This table presents detailed retrieval performance on five open-domain question answering datasets, comparing traditional sparse and dense retrieval methods with the proposed generative retrieval approach, RetroLLM. It shows the recall at different cutoff points (R@1, R@5) and the average number of passages or evidence retrieved by each method. The results demonstrate the effectiveness of RetroLLM in efficiently retrieving relevant passages or evidence.
> <details>
> <summary>read the caption</summary>
> Table 6: Detailed retrieval performance on five open-domain QA datasets, comparing sparse, dense, and generative approaches. The best results are highlighted in Bold.
> </details>

{{< table-caption >}}
| Base Model | In-domain Datasets |       |   |       |   |       |   | Out-of-domain Datasets |       |   |
| :-------- | :---------------- | :---- | :- | :---- | :- | :---- | :- | :---------------------- | :---- | :- | :- |
|           | NQ                | Acc   | F1 | Tok  | TriviaQA | Acc   | F1 | Tok  | HotpotQA | Acc   | F1 | Tok  | PopQA | Acc   | F1 | Tok  | 2WIKI | Acc   | F1 | Tok |
| *Llama3 Series* |                  |       |   |       |         |       |   |       |          |       |   |       |       |       |   |       |       |       |   |
| Llama3.2-1B |                  | 54.4  | 35.8 | 260  |         | 64.4  | 52.9 | 288  |          | 58.8  | 33.5 | 573  |       | 63.3  | 32.9 | 344  |       | 44.5  | 28.5 | **583** |
| Llama3.2-3B |                  | 58.9  | 45.4 | 278  |         | 67.8  | 62.1 | 267  |          | 61.3  | 37.8 | 609  |       | 64.7  | 40.4 | 338  |       | 47.3  | 32.2 | 632 |
| Llama3-8B  |                  | 59.2  | 46.4 | 306  |         | 72.7  | 69.3 | 256  |          | 62.2  | **47.4** | 575  |       | 65.2  | 41.4 | 338  |       | 48.7  | 36.1 | 668 |
| *Qwen2.5 Series* |                  |       |   |       |         |       |   |       |          |       |   |       |       |       |   |       |       |       |   |
| Qwen2.5-1.5B |                  | 50.1  | 34.3 | **200** |         | 57.2  | 51.2 | **170** |          | 57.0  | 32.6 | **539** |       | 59.5  | 32.6 | **286** |       | 47.5  | 26.3 | 650 |
| Qwen2.5-3B  |                  | 52.1  | 36.8 | 236  |         | 61.4  | 56.3 | 212  |          | 60.6  | 34.1 | 628  |       | 64.0  | 34.8 | 336  |       | 48.1  | 30.6 | 694 |
| Qwen2.5-7B  |                  | 54.9  | 42.3 | 230  |         | 64.5  | 62.4 | 196  |          | 61.9  | 42.0 | 549  |       | 62.8  | 37.1 | 313  |       | 48.7  | 32.5 | 634 |
| Qwen2.5-14B |                  | 58.6  | **50.6** | 225  |         | 72.8  | 69.5 | 186  |          | **62.6** | 45.9 | 568  |       | 64.3  | 40.8 | 343  |       | **51.3** | **36.9** | 687 |
| *Mistral Series* |                  |       |   |       |         |       |   |       |          |       |   |       |       |       |   |       |       |       |   |
| Mistral-7B |                  | **61.6** | 49.8 | 302  |         | **74.3** | **72.8** | 287  |          | 61.9  | 47.2 | 607  |       | **65.7** | **43.0** | 355  |       | 48.9  | 36.2 | 661 |{{< /table-caption >}}
> 🔼 This table presents a detailed performance comparison of RetroLLM across various backbone Large Language Models (LLMs), including the Llama3, Qwen2.5, and Mistral series.  These LLMs vary in parameter size from 1 billion to 14 billion, and all have undergone instruction tuning. The table showcases RetroLLM's performance with each LLM on several open-domain Question Answering datasets, including NQ, TriviaQA, HotpotQA, PopQA, and 2WikiMultiHopQA. Performance is measured using accuracy, F1-score, and token count.  The highest scores for each metric and dataset are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 7: Detailed performance comparison of RetroLLM using various base models, including the Llama3 series, Qwen-2.5 series, and Mistral series, with parameter sizes ranging from 1B to 14B. All base models we used are the instruction-tuned versions. The best results are highlighted in Bold.
> </details>

{{< table-caption >}}
| # Num | In-domain Datasets | | | Out-of-domain Datasets | | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | NQ | | TriviaQA | | HotpotQA | | PopQA | | 2WIKI | |
| | Acc | F1 | Acc | F1 | Acc | F1 | Acc | F1 | Acc | F1 |
| **1** | 42.2 | 40.5 | 59.3 | 61.6 | 50.6 | 44.2 | 43.9 | 40.9 | 35.1 | 31.3 |
| **2** | 50.6 | 42.3 | 66.3 | 65.9 | 59.8 | 43.8 | 52.8 | 45.9 | 39.8 | 34.6 |
| **3** | 54.4 | 42.5 | 69.3 | 67.2 | 61.9 | 43.0 | 55.7 | 45.5 | 42.1 | 34.5 |
| **4** | 56.7 | 43.1 | 70.9 | 67.6 | 64.6 | 41.0 | 57.7 | 45.7 | 43.9 | 34.8 |
| **5** | 61.5 | 49.4 | 74.6 | 72.9 | 66.8 | 43.0 | 59.4 | 46.8 | 45.9 | 36.6 |
| **6** | 61.7 | 49.5 | 74.6 | 73.0 | 67.4 | 42.8 | 60.1 | 47.1 | 47.9 | 37.1 |
| **7** | 61.7 | 49.5 | 74.6 | 72.9 | 67.6 | 42.5 | 60.8 | 47.0 | 48.4 | 36.5 |
| **8** | 61.7 | 49.5 | 74.6 | 72.9 | 68.0 | 42.7 | 61.2 | 46.9 | 48.6 | 37.2 |
| **9** | 61.7 | 49.5 | 74.6 | 72.9 | 68.0 | 42.7 | 61.6 | 47.1 | 48.7 | 37.0 |
| **10** | 61.7 | 49.5 | 74.6 | 72.9 | 68.5 | 42.7 | 61.9 | 47.1 | 48.9 | 36.2 |{{< /table-caption >}}
> 🔼 This table presents the detailed performance of RetroLLM when varying the maximum number of retrieved evidence pieces. It analyzes the impact of retrieving different amounts of evidence (from 1 to 10) on the model's performance across both single-hop and multi-hop question answering datasets, considering metrics such as accuracy and F1 score. The table demonstrates that increasing retrieved evidence initially boosts performance but can lead to diminishing returns or even declines after a certain point, particularly in multi-hop scenarios, where redundant information can hinder the model's ability to find correct answers.
> <details>
> <summary>read the caption</summary>
> Table 8: Detailed performance with different number of generated evidence.
> </details>

{{< table-caption >}}
| Dataset | Question | Labeled Answer | Model Input | Model Output | 
|---|---|---|---|---| 
| NQ Dataset | when does the movie the star come out? | ["November 17, 2017"] | Question: when does the movie the star come out? <br/> Your Response: | <clue> The Star </clue> the film, then titled "The Lamb", was given an official release date of December 8, 2017. On June 20, 2016, it was announced that Brian Henson and Lisa Henson from the Jim Henson Company would be executive producers for the film, now titled "The Star", making it the first Henson-produced film for Sony since "The Adventures of Elmo in Grouchland" in 1999. <sep> The film’s title was changed from the working title "Dog Years", in a mutual decision between the filmmakers and A24 (who made the suggestion). It was released on February 22, 2018, through DirecTV Cinema before being released in a limited release and through video on demand on March 30, 2018. <sep> Chenoweth, Tracy Morgan, Tyler Perry, and Oprah Winfrey. The film was released by Columbia Pictures through its parental label Sony Pictures Entertainment on <span style="color:#00994D;">November 17, 2017</span> in the United States. The film received mixed reviews and grossed over $62 million worldwide. </evidence> The answer is <span style="color:#00994D;">November 17, 2017</span>. | 
| TriviaQA Dataset | Who was the man behind The Chipmunks? | ["David Seville"] | Question: Who was the man behind The Chipmunks? <br/> Your Response: | <clue> The Chipmunks </clue> 1972), better known by the stage name <span style="color:#00994D;">David Seville</span>, was an American singer-songwriter and actor, best known for creating the novelty musical group The Chipmunks (now better known as "Alvin and the Chipmunks"). Initially a stage and film actor, he rose to prominence in 1958 with the songs "Witch Doctor" and "The Chipmunk Song (Christmas Don’t Be Late)", which both became "Billboard" number-one singles. </evidence> The answer is <span style="color:#00994D;">David Seville</span>. | 
| PopQA Dataset | What is Carsten Carlsen’s occupation? | ["pianist", "composer"] | Question: What is Carsten Carlsen’s occupation? <br/> Your Response: | <clue> Carlsen </clue> Carsten Carlsen (5 June 1892 – 28 August 1961) was a Norwegian <span style="color:#00994D;">pianist</span> and <span style="color:#00994D;">composer</span>. Carsten Marensius Carlsen was born in Oslo, Norway. His parents were Anton Carlsen (1862–1943) and Louise Larsen (1876–1957). <sep> Carlsen has directed more than 25 films, 19 for which he wrote the screenplay. In 2006, he received the Golden Swan Lifetime Achievement Award at the Copenhagen International Film Festival. Carlsen was born on 4 June 1927 in Aalborg, Denmark. </evidence> The answer is <span style="color:#00994D;">pianist</span> and <span style="color:#00994D;">composer</span>. |{{< /table-caption >}}
> 🔼 This table presents examples of RetroLLM's performance on single-hop question answering datasets. It highlights how RetroLLM generates clues (highlighted in orange) to focus its search for evidence and then generates evidence snippets (highlighted in blue) from Wikipedia to answer the given questions.
> <details>
> <summary>read the caption</summary>
> Table 9: Examples from RetroLLM on single-hop QA datasets, with special tokens used in the clue and evidence generation stages highlighted in  orange box and  blue box, respectively. All generated evidence is from Wikipedia.
> </details>

{{< table-caption >}}
| Example #1 from HotpotQA Dataset |                                                                                                                       |
| -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| Question:                        | Which American audio engineer and clandestine chemist, who was a key figure in the San Francisco Bay Area hippie movement during the 1960s recorded the album "Old and in the Way?" |
| Labeled Answer:                 | ["Owsley Stanley"]                                                                                                     |
| Results by RetroLLM             |                                                                                                                       |
| Model Input:                     | Question: Which American audio engineer and clandestine chemist, who was a key figure in the San Francisco Bay Area hippie movement during the 1960s recorded the album "Old and in the Way?" |
| Your Response:                   |                                                                                                                       |
| Model Output:                    | <|clue|> Old and in the Way <|sep|> Owsley Stanley <|/clue|> <|evidence|> Owsley Stanley III (January 19, 1935 – March 12, 2011) was an American audio engineer and clandestine chemist. He was a key figure in the San Francisco Bay Area hippie movement during the 1960s and played a pivotal role in the decade’s counterculture. <|sep|> Old & In the Way (album) Old & In the Way is the self-titled first album by the bluegrass band Old & In the Way. It was recorded 8 October 1973 at The Boarding House in San Francisco by Owsley Stanley and Vickie Babcock. <|sep|> The 1960s, elements of the expanding Beat movement were incorporated into the hippie and larger counterculture movements. Neal Cassady, as the driver for Ken Kesey’s bus Furthur, was the primary bridge between these two generations. Ginsberg’s work also became an integral element of early 1960s hippie culture. <|sep|> In San Francisco, including Quicksilver Messenger Service, Jefferson Airplane, early Jefferson Starship, Old & In the Way, Janis Joplin, Big Brother and the Holding Company, Taj Mahal, Santana, Miles Davis, The Flying Burrito Brothers, Jimi Hendrix, Johnny Cash, and Blue Cheer. <|/evidence|> The answer is Owsley Stanley. |
| Example #2 from 2WikiMultiHopQA Dataset |                                                                                                                       |
| Question:                        | Where was the director of film Ronnie Rocket born?                                                                       |
| Labeled Answer:                 | ["Missoula", "Missoula, Montana"]                                                                                     |
| Results by RetroLLM             |                                                                                                                       |
| Model Input:                     | Question: Where was the director of film Ronnie Rocket born?                                                                       |
| Your Response:                   |                                                                                                                       |
| Model Output:                    | <|clue|> Ronnie Rocket <|/clue|> <|evidence|> Ronnie Rocket is an unfinished film project written by David Lynch, who also intended to direct it. Begun after the success of Lynch’s 1977 film "Eraserhead", "Ronnie Rocket" was shelved after Lynch felt he would be unable to find financial backing for the project. <|sep|> The script to the AFI, but they rejected it as they felt the planned 45-minute runtime was too long for such a figurative, nonlinear script. After the success of "Eraserhead", Lynch decided to focus on the screenplay of his second film, entitled "Ronnie Rocket", which he also wanted to direct. <|sep|> He can use to produce music or cause destruction. The boy names himself Ronnie Rocket and becomes a rock star, befriending a tap-dancer named Electra-Cute. The film was to make use of several themes that have since become recurring elements within David Lynch’s works, with a write-up for "The A.V. <|sep|> Dave Dennison, Max and Dani Dennison’s father, in Disney’s "Hocus Pocus". Rocket was born in Bangor, Maine, the son of Mary Aurelia (Fogler) and Sumner Abbott "Ham" Claverie. <|sep|> In 2008, Refn co-founded the Copenhagen-based production company Space Rocket Nation. Refn was born in Copenhagen, Denmark, and raised partly in New York, United States. Refn’s parents are Danish film director and editor Anders Refn and cinematographer Vibeke Winding. <|sep|> The two realized that "Ronnie Rocket" was unlikely to find sufficient financing to be produced, Lynch asked to see some already-written scripts to work from for his next film instead. Cornfeld found four scripts he felt Lynch would be interested in, but on hearing the name of the first, the director decided his next project would be "The Elephant Man". <|sep|> His next film, settling on what would become 1980’s "The Elephant Man". "Ronnie Rocket" was to feature many of the elements which have since come to be seen as Lynch’s hallmarks; including industrial art direction, 1950s popular culture and physical deformity. <|sep|> He shared with Billy Williams. Taylor was born in Hampstead, London and entered the film industry in his late teens working for Gainsborough Pictures at Lime Grove in Shepherds Bush. Taylor’s first film was as a clapper boy on "The Young Mr Pitt" (1942). <|sep|> In his films have earned them a reputation as works that "disturb, offend or mystify" general audiences. Although born in Missoula, Montana, Lynch spent his youth traveling across the United States due to his father Donald’s job for the Department of Agriculture; as a result, Lynch attended school across several states. <|/evidence|> The answer is Missoula, Montana. |{{< /table-caption >}}
> 🔼 This table presents examples of RetroLLM's performance on multi-hop Question Answering datasets, showing how it generates clues (highlighted in orange) and evidence (highlighted in blue) to answer complex questions.  The examples demonstrate the model's ability to synthesize information from multiple sources within Wikipedia to arrive at the correct answer.
> <details>
> <summary>read the caption</summary>
> Table 10: Examples from RetroLLM on multi-hop QA datasets, with special tokens used in the clue and evidence generation stages highlighted in  orange box and  blue box, respectively. All generated evidence is from Wikipedia.
> </details>

{{< table-caption >}}
| Example #1 from NQ Dataset | | 
| --- | --- | 
| **Question:** | who got the first nobel prize in physics? |
| **Labeled Answer:** | ["Wilhelm Conrad Röntgen"] |
| **Results by RetroLLM** | |
| **Model Input:** | Question: who got the first nobel prize in physics? |
| **Model Output:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.5.1.1.1.1.pic1.png" /> Nobel Prize <img src="https://arxiv.org/html/2412.11919/A6.T11.6.2.2.2.2.pic2.png" /> Physics <img src="https://arxiv.org/html/2412.11919/A6.T11.7.3.3.3.3.pic3.png" /> <img src="https://arxiv.org/html/2412.11919/A6.T11.8.4.4.4.4.pic4.png" /> the others being the Nobel Prize in Chemistry, Nobel Prize in Literature, Nobel Peace Prize, and Nobel Prize in Physiology or Medicine. The first Nobel Prize in Physics was awarded to physicist <span style="color:#00994D;">Wilhelm Röntgen</span> in recognition of the extraordinary services he rendered by the discovery of the remarkable rays (or X-rays). <img src="https://arxiv.org/html/2412.11919/A6.T11.9.5.5.5.5.pic5.png" /> The answer is <span style="color:#00994D;">Wilhelm Röntgen</span>. |
| **Results by Naive Constrained Beam Search** | |
| **Model Input:** | Question: who got the first nobel prize in physics? |
| **Model Output (beam_size = 5):** | |
| **Beam 1:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.10.6.1.1.1.pic1.png" /> in 1901, the first year of play for the American League. The modern-era record for lowest batting average for a player that qualified for the batting title is .197 by roger maris in 1962. <img src="https://arxiv.org/html/2412.11919/A6.T11.11.7.2.2.2.pic2.png" /> The answer is <span style="color:#FF0000;">Roger Maris</span>. |
| **Beam 2:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.12.8.1.1.1.pic1.png" /> the first physics and chemistry laboratory in a Danish school in 1903, the inclusion of housekeeping in the curriculum, and the first girls’ school to include carpentry in the curriculum in 1904. <img src="https://arxiv.org/html/2412.11919/A6.T11.13.9.2.2.2.pic2.png" /> The answer is <span style="color:#FF0000;">1903</span>. |
| **Beam 3:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.14.10.1.1.1.pic1.png" /> william johnson Jonathan Elliot (historian) Jonathan Elliot (17842̆0131846) was a 19th-century <img src="https://arxiv.org/html/2412.11919/A6.T11.15.11.2.2.2.pic2.png" /> The answer is <span style="color:#FF0000;">Jonathan Elliot</span>. |
| **Beam 4:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.16.12.1.1.1.pic1.png" /> the first physics Nobel prize winner born in an Arab country. In 2015, Cohen-Tannoudji signed the M̈ainau Declaration 2015ẅhich calls for a boycott of israel. <img src="https://arxiv.org/html/2412.11919/A6.T11.17.13.2.2.2.pic2.png" /> The answer is <span style="color:#FF0000;">Cohen - Tannoudji</span>. |
| **Beam 5:** | <img src="https://arxiv.org/html/2412.11919/A6.T11.18.14.1.1.1.pic1.png" /> the first prize was awarded in 2004. He was the sixth of the seven children in the Shaw family, and was nicknamed Uncle Six (L̈uk Sook)̈. <img src="https://arxiv.org/html/2412.11919/A6.T11.19.15.2.2.2.pic2.png" /> The answer is <span style="color:#FF0000;">He was the sixth of the seven children in the Shaw family</span>. |{{< /table-caption >}}
> 🔼 This table presents a side-by-side comparison of RetroLLM and a naive constrained beam search approach for a single-hop question from the Natural Questions (NQ) dataset, focusing on evidence generation. Special tokens used during clue and evidence generation are highlighted, with correct and incorrect generated content clearly marked.  This example demonstrates how RetroLLM effectively identifies and utilizes relevant evidence, while the naive approach struggles with false pruning and generates irrelevant or incoherent content.
> <details>
> <summary>read the caption</summary>
> Table 11: An example comparing outputs from RetroLLM and the naive constrained beam search method. Special tokens used during the clue and evidence generation stages are highlighted in  orange boxes and  blue boxes, respectively. Content colored in green indicates correct (or partially correct) answers, whereas content colored in red indicates incorrect answers. All generated evidence is from Wikipedia.
> </details>

{{< table-caption >}}
| Example #2 from TriviaQA Dataset |                                      |
| ----------------------------- | ---------------------------------------- |
| **Question:**                 | Who was the man behind The Chipmunks? |
| **Labeled Answer:**           | ["David Seville"]                     |
| **Results by RetroLLM**       |                                      |
| **Model Input:**              | Question: Who was the man behind The Chipmunks? |
| **Model Output:**             | <|clue|> The Chipmunks <|/clue|> <|evidence|> known by the stage name David Seville, was an American singer-songwriter and actor, best known for creating the novelty musical group The Chipmunks (now better known as "Alvin and the Chipmunks"). Initially a stage and film actor, he rose to prominence in 1958 with the songs "Witch Doctor" and "The Chipmunk Song (Christmas Don’t Be Late),", which both became "Billboard" number-one singles. <|/evidence|> The answer is David Seville. |
| **Results by Naive Constrained Beam Search** |                                      |
| **Model Input:** | Question: Who was the man behind The Chipmunks? |
| **Model Output (beam_size = 5):** |                |                          |
| **Beam 1:**                  | <|evidence|> david was optioned to the Triple-A Richmond Braves to start the 1992 season. He made his major league debut for the Braves on <|/evidence|> The answer is David. |
| **Beam 2:**                  | <|evidence|> the chipmunks’ speech was created by speeding up sound clips of normal speech. In a number of the shorts that followed, many of these same sound clips were reused, but the chipmunks’ voices were created by using a higher pitch on the original recordings. <|/evidence|> The answer is Ross Bagdasarian. |
| **Beam 3:**                  | <|evidence|> alvinophilia is a partialism in which a man or woman is attracted to the human navel. According to a study, it is a moderately prevalent fetish among men, and less so among women. <|/evidence|> The answer is Alvin. |
| **Beam 4:**                  | <|evidence|> the chipmunks are also mostly supplemental prey but are considered more easily caught than tree squirrels, considering that they are more habitual terrestrial foragers. <|/evidence|> The answer is Alvin. |
| **Beam 5:**                  | <|evidence|> the chipmunks are also mostly supplemental prey but are considered more easily caught than tree squirrels, considering that they are more habitual terrestrial foragers. <|/evidence|> The answer is Tree Squirrels. |{{< /table-caption >}}
> 🔼 This table presents a comparison of RetroLLM and a naive constrained beam search method on a question from the TriviaQA dataset.  It highlights how RetroLLM effectively uses clues and evidence to arrive at the correct answer ('David Seville'), while the naive approach, due to false pruning, generates irrelevant and incoherent evidence, leading to incorrect answers like 'David', 'Ross Bagdasarian', 'Alvin', and 'Tree Squirrels'.  The table also visually demonstrates the use of special tokens for clue and evidence generation.
> <details>
> <summary>read the caption</summary>
> Table 12: An example comparing outputs from RetroLLM and the naive constrained beam search method. Special tokens used during the clue and evidence generation stages are highlighted in  orange boxes and  blue boxes, respectively. Content colored in green indicates correct answers, whereas content colored in red indicates incorrect answers. All generated evidence is from Wikipedia.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.11919/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11919/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}