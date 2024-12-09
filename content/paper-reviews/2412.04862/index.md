---
title: "EXAONE 3.5: Series of Large Language Models for Real-world Use Cases"
summary: "LG AI Research unveils EXAONE 3.5, a series of instruction-tuned language models (2.4B, 7.8B, and 32B parameters) excelling in real-world tasks, long-context understanding, and general benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 LG AI Research",]
showSummary: true
date: 2024-12-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.04862 {{< /keyword >}}
{{< keyword icon="writer" >}} LG AI Research et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.04862" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.04862" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/exaone-3-5-series-of-large-language-models" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.04862/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) have shown great promise but face challenges in real-world applications.  Smaller models are often less capable, while larger models require significant resources.  There's also a demand for models capable of handling longer contexts. This paper presents EXAONE 3.5, a family of three instruction-tuned LLMs (2.4B, 7.8B, and 32B parameters) designed to address these issues.  They achieve state-of-the-art results on various benchmarks, demonstrating exceptional performance in real-world scenarios and long-context understanding. 

The EXAONE 3.5 models were trained using a two-stage process: pre-training on a massive dataset followed by fine-tuning with instruction data. The researchers also implemented methods to mitigate catastrophic forgetting (the phenomenon where a model forgets previously learned information during training) and data contamination (when test data overlaps with training data).  The results demonstrate the effectiveness of this training approach and the models' ability to handle various tasks, particularly those demanding long-context processing. The models are open-source for research, contributing to broader AI research and potential advancements in various applications.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} EXAONE 3.5 models achieve top performance across multiple benchmarks, showcasing strong instruction-following abilities and long-context understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The models are available for research purposes, promoting collaborative advancements in AI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The 2.4B parameter model demonstrates surprisingly competitive results, highlighting potential for efficient, resource-constrained deployments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **EXAONE 3.5**, a series of instruction-tuned language models, addressing the need for smaller, more efficient models and larger models with enhanced performance.  The open availability of these models facilitates further research and development in various applications, making it a valuable resource for the AI community.  Its focus on real-world use cases and long-context understanding aligns with current research trends, opening new avenues for practical applications and addressing existing limitations in large language models.

------
#### Visual Insights



![](https://arxiv.org/html/2412.04862/x1.png)

> 🔼 The figure illustrates the process of creating instruction-tuning data.  It starts by extracting core knowledge from a massive web corpus and organizing it using a pre-defined taxonomy. This structured knowledge then serves as the basis for generating instruction-tuning datasets. To increase the complexity and diversity of these datasets, an instruction-evolving method is employed, resulting in a final dataset that spans various fields and difficulty levels.
> <details>
> <summary>read the caption</summary>
> Figure 1: A procedure of instruction-tuning data construction. First, we extract the core knowledge from large-volume web corpora and classify it within the taxonomy we defined in advance. Next, instruction-tuning data is generated based on the knowledge. To construct additional training data that is more complex, we leverage an instruction-evolving method [58] that lets the final dataset cover various fields with varying levels of difficulty.
> </details>





{{< table-caption >}}
| Model size | 32B | 7.8B | 2.4B |
|---|---|---|---|
| $d_model$ | 5,120 | 4,096 | 2,560 |
| Number of layers | 64 | 32 | 30 |
| Pre-normalization | True | True | True |
| Non-linearity | SwiGLU [44] | SwiGLU | SwiGLU |
| Feedforward dimension | 27,392 | 14,336 | 7,168 |
| Head type | GQA [3] | GQA | GQA |
| Number of heads | 40 | 32 | 32 |
| Number of KV heads | 8 | 8 | 8 |
| Head size | 128 | 128 | 80 |
| Max sequence length | 32,768 | 32,768 | 32,768 |
| RoPE theta [46] | 1,000,000 | 1,000,000 | 1,000,000 |
| Tokenizer | BBPE [51] | BBPE | BBPE |
| Vocab size | 102,400 | 102,400 | 102,400 |
| Tied word embedding | False | False | True |{{< /table-caption >}}

> 🔼 This table details the architecture and hyperparameters of the three EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters).  It lists key features such as the model size, number of layers, feed-forward dimensions, head types, and maximum sequence length.  The table also specifies implementation details, like the type of pre-normalization used and the activation function.
> <details>
> <summary>read the caption</summary>
> Table 1: Configurations of EXAONE 3.5 language models
> </details>





### In-depth insights


#### EXAONE 3.5 Models
The EXAONE 3.5 models represent a significant advancement in large language models (LLMs), offering improvements in instruction-following, long-context understanding, and overall performance compared to their predecessors and other models of similar size.  **Three model sizes (2.4B, 7.8B, and 32B parameters)** cater to diverse computational resource needs.  The 2.4B model is especially noteworthy for its performance relative to its size, showcasing efficiency for deployment on resource-constrained devices.  The emphasis on real-world scenarios in evaluation highlights the models' practical applicability.  The availability of the models for research purposes facilitates further investigation and development within the AI community.  **Open-sourcing these models** with clear licensing demonstrates a commitment to fostering collaboration and transparency within the field.  However, the acknowledged limitations, such as occasional generation of inappropriate responses and potential biases, must be carefully addressed in future iterations. The report's emphasis on responsible AI development underscores a commitment to ethical considerations in LLM deployment.

#### Training & Tuning
A robust large language model (LLM) necessitates a rigorous training and fine-tuning regimen.  **Pre-training**, often on massive text corpora, equips the model with foundational language understanding and generation capabilities.  This stage is computationally expensive, but crucial for establishing a broad knowledge base.  **Fine-tuning**, conversely, focuses on adapting the pre-trained model to specific tasks or domains using smaller, more targeted datasets.  Instruction tuning, a common fine-tuning approach, refines the model's ability to follow instructions accurately.  **Supervised fine-tuning (SFT)** is also used to align model outputs with human preferences, often via demonstrations of correct behavior.  **Preference optimization**, another essential stage, further refines the model by iteratively optimizing its responses based on rankings of alternative outputs provided by humans or a reward model.  This multi-stage process is vital for creating LLMs that are both knowledgeable and adept at following instructions effectively. The process requires careful consideration of data quality, computational resources, and evaluation metrics to produce high-quality, reliable, and safe models.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper would offer a crucial evaluation of the presented model.  It should detail performance across various established benchmarks, comparing the new model against existing state-of-the-art solutions.  **Key metrics** such as accuracy, precision, recall, and F1 scores should be meticulously reported for each benchmark.  The analysis should go beyond simple numerical results; it needs to **interpret the findings**, explaining strengths and weaknesses across different task types. For instance, superior performance on certain benchmarks might highlight the model's proficiency in specific domains like question answering or natural language inference, while weaker performance in others could indicate areas needing further improvement.  Furthermore, **a discussion of the limitations** of the benchmarks themselves and their suitability for evaluating specific model capabilities is crucial for a well-rounded analysis. This section provides valuable insights into the model's capabilities and potential limitations.  Overall, a robust 'Benchmark Results' section strengthens the paper's credibility and impact.

#### Long Context Use
The capacity to process extended contexts is crucial for the real-world application of large language models (LLMs).  This research highlights the significance of **long-context understanding**, surpassing the limitations of previous models.  The inclusion of benchmarks specifically designed to assess this capability demonstrates a commitment to evaluating performance in realistic scenarios. The paper's exploration of various techniques, such as long-context fine-tuning, further emphasizes this aspect's importance. Results reveal the models' impressive proficiency in handling extensive input lengths.  **This ability to process longer contexts directly impacts the models' usability and accuracy in multifaceted, real-world tasks**, showing superior performance over comparable state-of-the-art models.  The research therefore establishes long-context capabilities as a pivotal factor in assessing the overall efficacy of LLMs.

#### Responsible AI
The section on 'Responsible AI' in this research paper is crucial, highlighting the researchers' commitment to developing and deploying AI models ethically.  They emphasize a multi-faceted approach including a **Responsible AI Development Framework** that incorporates data governance, ethical considerations, and risk management. The openness of the models, while beneficial for research, introduces challenges; thus, they've conducted ethical impact assessments to mitigate potential risks such as bias and misuse.  Their commitment to transparency is evident in their plans to maximize social benefits while ensuring safety and accountability.  This dedication to responsible AI is a **strong positive**, showcasing a proactive approach to the ethical implications of their work and setting a valuable example for others in the field.  The **explicit mention of data compliance protocols** further underscores their dedication to developing and deploying AI models responsibly.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.04862/x2.png)

> 🔼 Figure 2 illustrates the two-stage preference optimization process.  The top half shows how preference data is created:  multiple model responses (y) are generated for a given prompt (x), and a reward model ranks these responses. The best (yw) and worst (yl) responses are then paired with the prompt (x) to form a preference dataset. The bottom half depicts the sequential training process using Direct Alignment Algorithms (DAA): an initial model (M0), pretrained with Supervised Fine-Tuning (SFT), is iteratively improved to create M1 and finally M2, using the preference dataset to refine its alignment with human preferences.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the preference optimization pipeline. (Top) Preference Data Creation: It shows the process of constructing preference data {x,yw,yl}𝑥subscript𝑦𝑤subscript𝑦𝑙\{x,y_{w},y_{l}\}{ italic_x , italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT , italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT } by scoring the responses y𝑦yitalic_y generated from a model for the prompt x𝑥xitalic_x using a reward model. (Bottom) Preference Optimization: Sequential training process where M0subscript𝑀0M_{0}italic_M start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT initialized from the SFT model is trained through DAA to obtain M1subscript𝑀1M_{1}italic_M start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT and M2subscript𝑀2M_{2}italic_M start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2412.04862/x3.png)

> 🔼 This figure displays the performance of EXAONE 3.5 language models on the Needle-in-a-Haystack (NIAH) benchmark, which tests the ability of models to locate and retrieve specific information within long documents.  The x-axis shows the length of the input document in tokens (1k, 4k, 8k, 16k, 32k), while the y-axis indicates the relative position of the target information within the document (0% being the start and 100% the end).  The color-coding (green for success, red for failure) visually represents the model's accuracy in retrieving the information at different positions and context lengths.  The results demonstrate that EXAONE 3.5 models achieve near-perfect accuracy across various document depths and context lengths, in both English and Korean.
> <details>
> <summary>read the caption</summary>
> Figure 3: NIAH results of EXAONE 3.5 language models. The x-axis represents the token length of the input text, while the y-axis shows the relative position within the text, expressed as a percentage (0% corresponds to the beginning, and 100% to the end). The results are represented using a color-coded scheme: green indicates successful retrievals, and red represents unsuccessful ones. EXAONE 3.5 language models achieve near-perfect accuracy in retrieving information across various document depths and context lengths in English and Korean.
> </details>



![](https://arxiv.org/html/2412.04862/extracted/6036302/figures/decontam_fixed.png)

> 🔼 Figure 4 illustrates the data decontamination process used in training the EXAONE 3.5 language models.  The process aims to remove training examples that overlap with the test data, a technique to prevent contamination that would otherwise bias evaluation results and reduce the model's ability to generalize. The figure shows a flowchart summarizing the steps involved: (1) extracting substrings from the test set to create a substring pool, (2) sampling substrings from a training example, (3) checking for matches between the sampled substrings and those in the pool, and (4) removing the training example if matches exceed a threshold.  The improvement over the GPT-4 approach is highlighted: the number of random substrings sampled from each training example (N) is increased from 5 to 10 for stricter decontamination, ensuring a more rigorous removal of contaminated data.
> <details>
> <summary>read the caption</summary>
> Figure 4: A summary of the decontamination method employed to train EXAONE 3.5 language models. Adopting an approach borrowed from the GPT-4 method, we increase the number of random sample to N=10𝑁10N=10italic_N = 10 for stricter decontamination.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model size | 32B | 7.8B | 2.4B |
|---|---|---|---|
| Training tokens | 6.5T | 9T | 6.5T |
| Amount of computation (FLOPs) | 1.25e+24 | 4.21e+23 | 9.36e+22 |{{< /table-caption >}}
> 🔼 This table presents the training data size and computational resource requirements for each of the three EXAONE 3.5 language models (2.4B, 7.8B, and 32B parameters).  It details the number of training tokens used and the amount of computation (in FLOPs) required for training each model. This information provides context regarding the scale of the training effort for each model and allows for comparison across different model sizes.
> <details>
> <summary>read the caption</summary>
> Table 2: The sizes of the training data corpus along with the amounts of computation to build EXAONE 3.5 language models
> </details>

{{< table-caption >}}
| Models | Model size | Training tokens | Amount of computation (ratio) |
|---|---|---|---|
| EXAONE 3.5 | 32B | 6.5T | 1.00 |
| Qwen 2.5 | 32B | 18T | 2.77 |
| Gemma 2 | 27B | 13T | 1.69 |
| Yi 1.5 | 34B | 3.6T | 0.59 |{{< /table-caption >}}
> 🔼 This table compares the computational cost of pre-training the EXAONE 3.5 32B language model against other large language models of similar size.  The cost is approximated by multiplying the model's parameter count by the number of training tokens. While EXAONE 3.5 32B had fewer total computations than Qwen 2.5 32B and Gemma 2 27B, it still achieved competitive performance on benchmark evaluations.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of the total amounts of computations to build models. We approximate the amount of computations as the product of the model size and the number of training tokens. Although the EXAONE 3.5 32B model is behind in the computations compared to Qwen 2.5 and Gemma 2, it has shown competitive performances.
> </details>

{{< table-caption >}}
| Category | Benchmark | Lang | Evaluation Settings | Metric |
|---|---|---|---|---|
| Real-world Use Cases | MT-Bench [59] | EN | LLM-as-a-judge (judge: gpt-4o-2024-08-06) | LLM score |
|  | LiveBench [54] (v2024-08-31) | EN | Ground-truth match | Accuracy |
|  | Arena-Hard-v0.1 [29] | EN | LLM-as-a-judge (judge: gpt-4-1106-preview) | Win rate |
|  | AlpacaEval 2.0 LC [12] | EN | LLM-as-a-judge (judge: gpt-4-1106-preview) | Win rate |
|  | IFEval [61] | EN | Prompt-level / strict accuracy | Accuracy |
|  | KoMT-Bench [42] | KO | LLM-as-a-judge (judge: gpt-4o-2024-08-06) | LLM score |
|  | LogicKor [37] | KO | LLM-as-a-judge (judge: gpt-4-1106-preview) | LLM score |
| Long Context | Needle-In-A-Haystack [23] | EN/KO | Ground-truth match | Accuracy |
|  | LongBench [5] | EN | Ground-truth match | F1, Rouge |
|  | LongRAG [21] (extended) | EN | LLM-as-a-judge (judge: gpt-4o-2024-08-06) | LLM score |
|  | Ko-LongRAG (In-house) | KO | LLM-as-a-judge (judge: gpt-4o-2024-08-06) | LLM score |
|  | Ko-WebRAG (In-house) | KO | LLM-as-a-judge (judge: gpt-4o-2024-08-06) | LLM score |
| General Domain | GSM8K [9] | EN | 0-shot / CoT | Accuracy |
|  | MATH [17, 27] | EN | 0-shot / CoT | Accuracy |
|  | HumanEval [6] | EN | 0-shot | pass@1 |
|  | MBPP [4] | EN | 0-shot (Evalplus base) | pass@1 |
|  | GPQA [40] | EN | 0-shot / CoT | Accuracy |
|  | ARC-C [8] | EN | 0-shot | Accuracy |
|  | BBH [47] | EN | 0-shot / CoT | Accuracy |
|  | MMLU [16] | EN | 0-shot / CoT | Accuracy |
|  | KMMLU [45] | KO | 0-shot / CoT | Accuracy |{{< /table-caption >}}
> 🔼 This table presents a comprehensive overview of the benchmark datasets used to evaluate the EXAONE 3.5 language models.  It details the benchmark name, the languages used in the benchmark, the specific evaluation settings employed (e.g., whether it was a zero-shot evaluation or a chain-of-thought evaluation), and the metrics used to measure the model's performance (e.g., accuracy, F1 score, LLM score).  The benchmarks are categorized into three groups reflecting different aspects of LLM capabilities: real-world use cases, long context understanding, and general domain abilities.  Note that LongRAG has been extended from its original version, and Ko-LongRAG and Ko-WebRAG are custom benchmarks developed by the LG AI Research team.
> <details>
> <summary>read the caption</summary>
> Table 4: The benchmarks used to evaluate the performance of EXAONE 3.5 language models along with their target languages, evaluation settings, and the metrics. LongRAG is extended from the original, and Ko-LongRAG and Ko-WebRAG are in-house benchmarks (see Section 3.4).
> </details>

{{< table-caption >}}
| Models | Real-world Use Cases | Long Context | General Domain |
|---|---|---|---| 
| EXAONE 3.5 32B | **74.3** | **71.1** | **74.8** |
| Qwen 2.5 32B [49] | **69.8** | **66.9** | **78.7** |
| C4AI Command R 32B [10] | 46.0 | 63.4 | 56.8 |
| Gemma 2 27B [48] | 64.2 | - | 68.7 |
| Yi 1.5 34B [2] | 46.9 | - | 53.9 |
| EXAONE 3.5 7.8B | **70.7** | **66.6** | **70.2** |
| Qwen 2.5 7B [49] | 52.7 | 56.1 | **71.0** |
| Llama 3.1 8B [15] | 48.6 | **58.8** | 62.4 |
| Gemma 2 9B [48] | **57.9** | - | 62.9 |
| Phi 3 small (7B) [1] | 41.7 | 33.4 | 63.2 |
| EXAONE 3.5 2.4B | **61.1** | **63.4** | **63.3** |
| Qwen 2.5 3B [49] | **44.5** | 40.7 | **62.1** |
| Qwen 2.5 1.5B [49] | 30.1 | 34.5 | 47.9 |
| Llama 3.2 3B [34] | 36.7 | **44.2** | 54.9 |
| Gemma 2 2B [48] | 41.7 | - | 42.2 |{{< /table-caption >}}
> 🔼 This table compares the performance of the three EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters) against other similar-sized large language models across three benchmark categories: real-world use cases, long context understanding, and general domain tasks.  A dash (-) indicates that a model does not support context lengths greater than 16K tokens.  The best performance in each category is shown in bold, and the second-best is underlined.  Details about the baseline models used for comparison can be found in Appendix D.1 of the paper.
> <details>
> <summary>read the caption</summary>
> Table 5: Overall comparison results of EXAONE 3.5 language models with similar-sized baseline language models. Here, a dash (-) indicates the model does not support context lengths longer than 16K. Bold scores indicate the best performance, and underlined scores mean the second best. The detailed information for each baseline is described in Appendix D.1.
> </details>

{{< table-caption >}}
| Models | MT-Bench | LiveBench | Arena-Hard | AlpacaEval | IFEval | KoMT-Bench | LogicKor | Average |
|---|---|---|---|---|---|---|---|---|
| EXAONE 3.5 32B | **8.51** | **43.0** | **78.6** | **60.6** | **81.7** | **8.05** | **9.06** | **74.3** |
| Qwen 2.5 32B | **8.49** | **50.6** | **67.0** | 41.0 | **78.7** | **7.75** | **8.89** | **69.8** |
| C4AI Command R 32B | 7.38 | 29.7 | 17.0 | 25.9 | 26.1 | 6.72 | 8.24 | 46.0 |
| Gemma 2 27B | 8.28 | 40.0 | 57.5 | **52.2** | 59.7 | 7.19 | 8.56 | 64.2 |
| Yi 1.5 34B | 7.64 | 26.2 | 23.1 | 34.8 | 55.5 | 4.88 | 6.33 | 46.9 |
| EXAONE 3.5 7.8B | **8.29** | **39.8** | **68.7** | **54.2** | **78.9** | **7.96** | **9.08** | **70.7** |
| Qwen 2.5 7B | 6.48 | **35.6** | **48.9** | 31.7 | 72.5 | 5.19 | 6.38 | 52.7 |
| Llama 3.1 8B | 7.59 | 28.3 | 27.7 | 25.7 | **74.5** | 4.85 | 5.99 | 48.6 |
| Gemma 2 9B | **7.64** | 32.1 | 43.6 | **47.3** | 54.7 | **7.10** | **8.05** | **57.9** |
| Phi 3 small (7B) | 7.63 | 27.9 | 26.8 | 29.2 | 59.5 | 3.22 | 3.99 | 41.7 |
| EXAONE 3.5 2.4B | **7.81** | **33.0** | **48.2** | **37.1** | **73.6** | **7.24** | **8.51** | **61.1** |
| Qwen 2.5 3B | **7.21** | **25.7** | **26.4** | 17.4 | 60.8 | **5.68** | 5.21 | **44.5** |
| Qwen 2.5 1.5B | 5.72 | 19.2 | 10.6 | 8.4 | 40.7 | 3.87 | 3.60 | 30.1 |
| Llama 3.2 3B | 6.94 | 24.0 | 14.2 | 18.7 | **70.1** | 3.16 | 2.86 | 36.7 |
| Gemma 2 2B | 7.20 | 20.0 | 19.1 | **29.1** | 50.5 | 4.83 | **5.29** | 41.7 |{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters) against other recently released models of similar sizes across seven real-world use case benchmarks.  The benchmarks assess the models' ability to understand and execute diverse instructions.  Note that the macro average is calculated by multiplying the scores of MT-Bench, KoMT-Bench, and LogicKor by 10, because these benchmarks have a score out of 10, whereas the rest have scores out of 100. Bold scores indicate the best performing model for each benchmark, and underlined scores indicate the second-best performing model.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison results of EXAONE 3.5 language models with similar-sized recently-released language models on seven benchmarks representing real-world use case scenarios. When calculating the macro average, the scores of MT-Bench, KoMT-Bench, and LogicKor are multiplied by 10 because they are scored out of 10 and the rest are scored out of 100. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

{{< table-caption >}}
| Models | LongBench | LongRAG | Ko-LongRAG | Ko-WebRAG | Average |
|---|---|---|---|---|---| 
| EXAONE 3.5 32B | 49.2 | 67.6 | 85.3 | 82.3 | 71.1 |
| Qwen 2.5 32B | 49.1 | 63.6 | 73.5 | 81.3 | 66.9 |
| C4AI Command R 32B | 50.9 | 55.3 | 72.3 | 75.0 | 63.4 |
| Gemma 2 27B | - | - | - | - | - |
| Yi 1.5 34B | - | - | - | - | - |
| EXAONE 3.5 7.8B | 46.0 | 68.3 | 71.7 | 80.3 | 66.6 |
| Qwen 2.5 7B | 47.2 | 60.1 | 55.3 | 61.7 | 56.1 |
| Llama 3.1 8B | 44.6 | 55.1 | 64.8 | 70.7 | 58.8 |
| Gemma 2 9B | - | - | - | - | - |
| Phi 3 small (7B) | 40.6 | 52.7 | 7.7 | 32.7 | 33.4 |
| EXAONE 3.5 2.4B | 42.7 | 63.3 | 74.7 | 73.0 | 63.4 |
| Qwen 2.5 3B | 42.0 | 45.8 | 40.5 | 34.7 | 40.7 |
| Qwen 2.5 1.5B | 37.1 | 39.0 | 33.8 | 28.0 | 34.5 |
| Llama 3.2 3B | 41.7 | 45.9 | 39.3 | 50.0 | 44.2 |
| Gemma 2 2B | - | - | - | - | - |{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models (in 3 sizes: 32B, 7.8B, and 2.4B parameters) against other recently released, similar-sized language models across four long-context benchmarks: LongBench, LongRAG, Ko-LongRAG, and Ko-WebRAG.  The benchmarks assess the models' ability to understand and generate responses from lengthy contexts.  A dash indicates that a model does not support contexts longer than 16K tokens.  The table shows the individual benchmark scores and a macro average across all benchmarks.  Bold scores represent the best performance in each benchmark, while underlined scores denote the second-best performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison results of EXAONE 3.5 language models with similar-sized recently released language models across four benchmarks representing long context scenarios. A dash (-) indicates that the model does not support context lengths longer than 16K. Context lengths for each model are detailed in Table 11. The average score in the rightmost is calculated as a macro average across the benchmarks. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

{{< table-caption >}}
| Models | GSM8K | MATH | HumanEval | MBPP | MMLU | KMMLU | GPQA | ARC-C | BBH | Average |
|---|---|---|---|---|---|---|---|---|---|---|
| EXAONE 3.5 32B | 91.9 | 70.5 | 87.2 | 81.8 | 78.3 | 57.0 | 39.7 | 91.7 | 75.3 | 74.8 |
| Qwen 2.5 32B | 92.0 | 76.5 | 89.0 | 88.9 | 81.4 | 62.1 | 40.9 | 95.1 | 82.7 | 78.7 |
| C4AI Command R 32B | 56.5 | 24.3 | 68.3 | 78.8 | 71.1 | 41.5 | 27.4 | 88.0 | 55.7 | 56.8 |
| Gemma 2 27B | 84.2 | 49.4 | 79.3 | 80.7 | 74.8 | 53.8 | 33.6 | 92.9 | 69.7 | 68.7 |
| Yi 1.5 34B | 83.7 | 52.0 | 5.5 | 35.7 | 75.3 | 41.7 | 30.0 | 93.9 | 67.6 | 53.9 |
| EXAONE 3.5 7.8B | 87.6 | 69.8 | 84.2 | 79.4 | 69.0 | 52.4 | 32.5 | 87.6 | 69.7 | 70.2 |
| Qwen 2.5 7B | 90.4 | 70.4 | 82.3 | 78.8 | 73.1 | 49.9 | 33.1 | 90.6 | 70.1 | 71.0 |
| Llama 3.1 8B | 82.1 | 48.8 | 67.7 | 70.6 | 72.4 | 45.9 | 27.4 | 83.7 | 63.3 | 62.4 |
| Gemma 2 9B | 82.0 | 44.6 | 68.3 | 75.1 | 73.7 | 34.6 | 27.9 | 90.5 | 69.7 | 62.9 |
| Phi 3 small (7B) | 86.3 | 47.8 | 72.6 | 72.0 | 68.8 | 33.4 | 25.3 | 90.4 | 72.5 | 63.2 |
| EXAONE 3.5 2.4B | 82.5 | 60.2 | 76.2 | 74.3 | 60.4 | 45.8 | 28.4 | 79.2 | 62.9 | 63.3 |
| Qwen 2.5 3B | 84.3 | 61.4 | 72.6 | 72.5 | 61.0 | 41.7 | 25.8 | 82.1 | 57.3 | 62.1 |
| Qwen 2.5 1.5B | 69.8 | 48.5 | 55.5 | 65.6 | 48.8 | 5.0 | 23.1 | 72.4 | 42.2 | 47.9 |
| Llama 3.2 3B | 77.4 | 46.6 | 54.9 | 60.6 | 64.9 | 35.0 | 23.2 | 78.0 | 53.8 | 54.9 |
| Gemma 2 2B | 29.8 | 18.7 | 45.7 | 55.0 | 56.1 | 37.4 | 22.6 | 76.3 | 38.2 | 42.2 |}{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models of various sizes (32B, 7.8B, and 2.4B parameters) against other recently released, similarly sized language models across nine widely used general-domain benchmarks.  These benchmarks assess the models' abilities in diverse areas such as solving mathematical problems, generating code, and demonstrating broad factual knowledge. The comparison uses a macro-average of the scores across all nine benchmarks to provide a single, comprehensive performance metric.  Bold scores highlight the top-performing model for each benchmark, while underlined scores indicate the second-best performance. This allows for a clear view of EXAONE 3.5's strengths and weaknesses relative to its competitors in various general reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison results of EXAONE 3.5 models with similar-sized recently-released language models on nine benchmarks representing general scenarios. The macro average is used to evaluate the overall performance. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

{{< table-caption >}}
| Category | Subcategory | Test Cases | Accuracy (32B) | Accuracy (7.8B) | Accuracy (2.4B) |
|---|---|---|---|---|---| 
| Bias | Gender & Sexual Orientation | 295 | 91.2% | 87.5% | 76.6% |
|  | Race & Ethnicity & Nationality | 432 | 86.8% | 85.0% | 72.2% |
|  | Political Affiliation | 720 | 82.8% | 79.9% | 56.7% |
|  | Region | 415 | 87.7% | 84.6% | 69.2% |
|  | Job | 442 | 86.2% | 81.9% | 67.0% |
|  | Miscellaneous | 406 | 85.2% | 86.5% | 73.2% |
|  | **Subtotal** | **2,710** | **86.0%** | **83.5%** | **67.4%** |
| Hate | Gender & Sexual Orientation | 399 | 95.2% | 92.2% | 83.5% |
|  | Race & Ethnicity & Nationality | 749 | 91.6% | 88.4% | 73.8% |
|  | Political Affiliation | 1,164 | 85.7% | 83.4% | 66.2% |
|  | Region | 499 | 92.0% | 87.2% | 74.1% |
|  | Job | 852 | 91.0% | 87.8% | 72.3% |
|  | **Subtotal** | **3,663** | **90.0%** | **86.9%** | **72.2%** |
| Illegal | Illegal | 1,126 | 92.9% | 89.6% | 80.3% |
| Sensitiveness | Contentious | 710 | 83.1% | 86.1% | 79.0% |
|  | Ethical | 966 | 81.2% | 83.7% | 72.8% |
|  | Predictive | 825 | 79.8% | 82.3% | 71.0% |
|  | **Subtotal** | **2,501** | **81.2%** | **83.9%** | **74.0%** |
| **Overall** |  | **10,000** | **87.1%** | **85.6%** | **72.2%** |{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters) on the Korean Large Language Model Trustworthiness Benchmark Data [35].  This benchmark assesses the models' safety and harmlessness by testing their responses to questions involving various harmful and dangerous categories, including bias (gender, race, politics, etc.), hate speech, illegal activities, and sensitive topics. The accuracy is measured as the percentage of times the model correctly selects appropriate answers from a set of provided options for each question.
> <details>
> <summary>read the caption</summary>
> Table 9: Evaluation results of EXAONE 3.5 language models on the Korean Large Language Model Trustworthiness Benchmark Data [35] to assess the model’s harmlessness. The accuracy is determined by the number of times the model selects appropriate options when presented with questions involving various harmful and dangerous categories, such as illegal content.
> </details>

{{< table-caption >}}
| Benchmark | Benchmark example | Contaminated web corpus |
|---|---|---|
| MMLU [16] | A teacher has three packages of stickers. One package contains 56 stickers, another package contains 48 stickers, and the third package contains 58 stickers. If the teacher divides all the stickers equally among 27 students, how many stickers will each student receive? <br> A. 6 stickers <br> B. 9 stickers <br> C. 54 stickers <br> D. 81 stickers <br> Answer: | (…truncated…)  A teacher has three packages of stickers. One package contains 56 stickers, another package contains 48 stickers, and the third package contains 58 stickers. If the teacher divides all the stickers equally among 27 students, how many stickers will each student receive? <br> 6 stickers is correct <br> #4 Last week Mario walked 7 3/4 miles. This week he walked 15 5/6 miles. What is the difference between the distance he walked this week and the distance he walked last week? (…truncated…) |
| KMMLU [45] | 국가가 국민의 생활안정과 복지증진을 위하여 보험의 원리를 도입하여 만든 사회보험의 일종으로 가입자, 사용자 및 국가로부터 일정한 보험료를 받고 이를 재원으로 여러 가지 정형화된 보험금을 지급하는 사회보장제도는? <br> A. 국민건강보험 <br> B. 국민연금 <br> C. 고용보험 <br> D. 산업재해보상보험 <br> 정답: <br> <br> [Translation] What is the social security system, which is  a type of social insurance created by the nation by introducing the principles of insurance to promote stability and welfare of citizens’ lives, and which receives certain premiums from subscribers, employers, and the nation and use these funds to provide various standardized insurance benefits. <br> A. National Health Insurance <br> B. National Pension <br> C. Employment Insurance <br> D. Industrial Accident Compensation Insurance <br> Answer: | (…중략…) 더군다나 개인주의의 확산, 핵가족화의 진전에 따라 전통적인 가족의 역할인 노인부양의 기능이 약화됨으로써 국가개입의 중요성은 더욱 증가하게 되었다. 따라서 국민연금제도는 국가가 국민의 생활안정과 복지증진을 위하여 보험의 원리를 도입하여 만든 사회보험의 일종으로 가입자, 사용자 및 국가로부터 일정한 보험료를 받고 이를 재원으로 여러 가지 정형화된 보험금을 지급하는 사회보장제도이다. (…중략…) <br> <br> [Translation] (…truncated…) Moreover, with the spread of individualism and the rise of nuclear families, the traditional family role of supporting the elderly has weakened, thereby increasing the importance of nation intervention. Accordingly, the National Pension System is  a type of social insurance created by the nation by introducing the principles of insurance to promote stability and welfare of citizens’ lives, and which receives certain premiums from subscribers, employers, and the nation and use these funds to provide various standardized insurance benefits. (…truncated…)|{{< /table-caption >}}
> 🔼 This table showcases examples of text passages found in both a benchmark test dataset and a large web corpus used for training language models.  The grey-highlighted text represents sections that are identical in both sources, demonstrating how training data contamination can occur. The underlined text is the corresponding correct answer to the question from the test set.  This illustrates how existing test examples in training data can lead to artificially inflated evaluation results.
> <details>
> <summary>read the caption</summary>
> Table 10: Examples of contaminated web corpus. The  text highlighted in grey is a part of the text that exists in both a benchmark test set and a web corpus. The text underlined is a corresponding golden answer.
> </details>

{{< table-caption >}}
| Model Name | Context Len. | Link | Release |
|---|---|---|---| 
| Qwen2.5 32B | 128k | https://huggingface.co/Qwen/Qwen2.5-32B-Instruct | Sep., 2024 |
| C4AI Command R 32B | 128k | https://huggingface.co/CohereForAI/c4ai-command-r-08-2024 | Aug., 2024 |
| Gemma 2 27B | 8k | https://huggingface.co/google/gemma-2-27b-it | Jun., 2024 |
| Yi 1.5 34B | 16k | https://huggingface.co/01-ai/Yi-1.5-34B-Chat-16K | May, 2024 |
| Qwen2.5 7B | 128k | https://huggingface.co/Qwen/Qwen2.5-7B-Instruct | Sep., 2024 |
| Llama 3.1 8B | 128k | https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct | Jul., 2024 |
| Gemma 2 9B | 8k | https://huggingface.co/google/gemma-2-9b-it | Jun., 2024 |
| Phi 3 small (7B) | 128k | https://huggingface.co/microsoft/Phi-3-small-128k-instruct | May, 2024 |
| Qwen2.5 3B | 32k | https://huggingface.co/Qwen/Qwen2.5-3B-Instruct | Sep., 2024 |
| Qwen2.5 1.5B | 32k | https://huggingface.co/Qwen/Qwen2.5-1.5B-Instruct | Sep., 2024 |
| Llama 3.2 3B | 128k | https://huggingface.co/meta-llama/Llama-3.2-3B-Instruct | Sep., 2024 |
| Gemma 2 2B | 8k | https://huggingface.co/google/gemma-2-2b-it | Jul., 2024 |{{< /table-caption >}}
> 🔼 This table lists the baseline language models used for comparison in the paper's experiments.  For each model, it provides the model name, the maximum context length supported by the model, a link to the model on Hugging Face, and the release date of the model. This allows readers to easily find and access these models to reproduce the evaluation results presented in the paper and understand the context of the comparisons.
> <details>
> <summary>read the caption</summary>
> Table 11: The list of baseline models used for the evaluation along with their supported context length and released date
> </details>

{{< table-caption >}}
| Language | Configuration | Details |
|---|---|---|
| English | Haystack | Paul Graham essays [23] |
|  | Needle | “The best thing to do in San Francisco is eat a sandwich and sit in Dolores Park on a sunny day.” |
|  | Query | “What is the best thing to do in San Francisco?” |
|  | Instruction | “Analyze the content of the given document to locate the answer to the specified question. If found, provide the exact wording from the document without altering or summarizing it.” |
| Korean | Haystack | AI-Hub⁴ 대규모 구매도서 기반 한국어 말뭉치 데이터 <br> (Large-scale Purchased Book-based Korean Language Corpus from AI-Hub) |
|  | Needle | “광화문에서 가장 재미있는 일은 햇살 좋은 날에 샌드위치를 먹으며 청와대 안에 있는 공원에 앉아 있는 것입니다.” <br> (“The best thing to do at Gwanghwamun is eat a sandwich and sit in the park in the Blue House on a sunny day.”) |
|  | Query | “광화문에서 가장 재미있는 일이 무엇인가요?” <br> (“What is the best thing to do at Gwanghwamun?”) |
|  | Instruction | “주어진 문서를 읽고 질문에 대한 답을 확인하세요. 답을 찾으면, 문서의 원문을 그대로 유지하여 수정이나 해석 없이 반환하세요.” <br> (Identical to the English instruction) |{{< /table-caption >}}
> 🔼 The Needle-in-a-Haystack experiment tests a model's ability to locate and retrieve specific pieces of information (the 'needle') within long stretches of text (the 'haystack').  The experiment uses two types of Haystacks, one English and one Korean, each composed of various texts, designed to act as distractors.  A 'query' is provided to the model to guide it toward the correct information. The table shows the specific texts used in both the English and Korean versions of the experiment as the Haystack, the specific piece of text acting as the Needle, and the query used to prompt the model to find the Needle within the Haystack.
> <details>
> <summary>read the caption</summary>
> Table 12: Detailed configuration of the Needle-In-A-Haystack experiment. The “Needle” refers to a specific text fragment embedded within the “Haystack,” which consists of long distractor texts. The task involves using a “Query” as a cue to identify the needle within the haystack and retrieve the associated values.
> </details>

{{< table-caption >}}
| Models | Single-doc QA | Multi-doc QA | Summarization | Few-shot Learning | Average |
|---|---|---|---|---|---| 
| EXAONE 3.5 32B | 40.1 | 52.9 | 23.1 | 80.1 | 49.2 |
| Qwen 2.5 32B | 43.2 | 54.9 | 26.1 | 72.4 | 49.1 |
| C4AI Command R 32B | 44.6 | 48.9 | 26.4 | 83.6 | 50.9 |
| Gemma 2 27B | - | - | - | - | - |
| Yi 1.5 34B | - | - | - | - | - |
| EXAONE 3.5 7.8B | 38.4 | 47.7 | 22.6 | 75.1 | 46.0 |
| Qwen 2.5 7B | 40.8 | 44.0 | 26.5 | 77.4 | 47.2 |
| Llama 3.1 8B | 39.8 | 41.2 | 27.6 | 69.9 | 44.6 |
| Gemma 2 9B | - | - | - | - | - |
| Phi 3 small (7B) | 33.2 | 26.5 | 26.3 | 76.2 | 40.6 |
| EXAONE 3.5 2.4B | 35.0 | 43.1 | 20.1 | 72.8 | 42.7 |
| Qwen 2.5 3B | 35.5 | 34.7 | 24.7 | 72.9 | 42.0 |
| Qwen 2.5 1.5B | 29.9 | 32.1 | 22.3 | 64.0 | 37.1 |
| Llama 3.2 3B | 33.9 | 34.9 | 25.8 | 72.3 | 41.7 |
| Gemma 2 2B | - | - | - | - | - |{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters) against other recently released language models of similar sizes across four long-context benchmarks.  The benchmarks evaluate performance on Single-document Question Answering, Multi-document Question Answering, Summarization, and Few-shot Learning. Context length capabilities are noted, with a dash (-) indicating models that don't support context lengths over 16k tokens. The overall score for each model is the macro average across all four benchmarks.  Bold scores highlight the top performance, and underlined scores show second-best performance.
> <details>
> <summary>read the caption</summary>
> Table 13: Performance comparison results of EXAONE 3.5 language models with similar-sized recently released language models across four benchmarks representing long context scenarios. Context lengths for each benchmark, as well as model limitations, are detailed in Table 11, where a dash (-) indicates that the model does not support context lengths longer than 16k. The final overall score for each model is calculated as a macro average across the benchmarks. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

{{< table-caption >}}
| Models | NQ Answerable | NQ Unanswerable | NQ Total | Hotpot QA Answerable | Hotpot QA Unanswerable | Hotpot QA Total | Average |
|---|---|---|---|---|---|---|---| 
| EXAONE 3.5 32B | **73.6** | **35.3** | **68.3** | **81.8** | **26.4** | **66.9** | **67.6** |
| Qwen 2.5 32B | 62.3 | **61.2** | **62.1** | 62.9 | **70.6** | **65.0** | **63.6** |
| C4AI Command R 32B | **64.0** | 32.4 | 59.6 | **63.1** | 18.2 | 51.0 | 55.3 |
| Gemma 2 27B | - | - | - | - | - | - | - |
| Yi 1.5 34B | - | - | - | - | - | - | - |
| EXAONE 3.5 7.8B | **72.0** | **41.0** | **67.7** | **74.3** | **53.9** | **68.8** | **68.3** |
| Qwen 2.5 7B | 64.5 | **51.1** | **62.6** | 61.8 | **46.1** | **57.6** | **60.1** |
| Llama 3.1 8B | 63.2 | 15.1 | 56.5 | **67.4** | 16.4 | 53.7 | 55.1 |
| Gemma 2 9B | - | - | - | - | - | - | - |
| Phi 3 small (7B) | **66.8** | 13.7 | 59.4 | 60.2 | 7.1 | 45.9 | 52.7 |
| EXAONE 3.5 2.4B | **67.8** | 25.9 | **62.0** | **73.1** | **41.6** | **64.6** | **63.3** |
| Qwen 2.5 3B | 49.5 | **34.5** | 47.4 | 52.5 | **21.6** | **44.2** | 45.8 |
| Qwen 2.5 1.5B | **49.9** | 18.0 | 45.5 | 43.6 | 2.2 | 32.5 | 39.0 |
| Llama 3.2 3B | 49.4 | **41.7** | **48.3** | **53.6** | 16.0 | 43.5 | **45.9** |
| Gemma 2 2B | - | - | - | - | - | - | - |{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models (32B, 7.8B, and 2.4B parameters) against other recently released models of similar sizes on the LongRAG benchmark.  LongRAG tests the models' ability to answer questions using a large context of text. This table's unique feature is the inclusion of 'unanswerable' cases in the benchmark. These are situations where the provided context does not contain the information necessary to answer the question. The models are evaluated on their ability to both answer answerable questions and correctly identify unanswerable ones.  Performance is measured using an average score across all tasks.  Bold scores indicate the top performance, while underlined scores show the second-best performance for each task.
> <details>
> <summary>read the caption</summary>
> Table 14: Performance comparison results of EXAONE 3.5 language models with similar-sized recently released language models with LongRAG benchmarks. The benchmark is extended with the “Unanswerable” case, which requires models to respond as “Unanswerable” when the information cannot be found within the context. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

{{< table-caption >}}
| Models | Single-doc QA Answerable | Single-doc QA Unanswerable | Single-doc QA Total | Multi-doc QA Answerable | Multi-doc QA Unanswerable | Multi-doc QA Total | Average |
|---|---|---|---|---|---|---|---| 
| EXAONE 3.5 32B | 92.4 | 100.0 | 93.7 | 72.8 | 98.0 | 77.0 | 85.3 |
| Qwen 2.5 32B | 90.0 | 98.0 | 91.3 | 48.4 | 92.0 | 55.7 | 73.5 |
| C4AI Command R 32B | 85.6 | 66.0 | 82.3 | 62.4 | 62.0 | 62.3 | 72.3 |
| Gemma 2 27B | - | - | - | - | - | - | - |
| Yi 1.5 34B | - | - | - | - | - | - | - |
| EXAONE 3.5 7.8B | 68.4 | 100.0 | 73.7 | 64.0 | 98.0 | 69.7 | 71.7 |
| Qwen 2.5 7B | 61.2 | 98.0 | 67.3 | 33.2 | 94.0 | 43.3 | 55.3 |
| Llama 3.1 8B | 78.0 | 76.0 | 77.7 | 56.8 | 28.0 | 52.0 | 64.8 |
| Gemma 2 9B | - | - | - | - | - | - | - |
| Phi 3 small (7B) | 8.0 | 14.0 | 9.0 | 4.8 | 14.0 | 6.3 | 7.7 |
| EXAONE 3.5 2.4B | 80.8 | 100.0 | 84.0 | 61.6 | 84.0 | 65.3 | 74.7 |
| Qwen 2.5 3B | 56.4 | 98.0 | 63.3 | 2.4 | 94.0 | 17.7 | 40.5 |
| Qwen 2.5 1.5B | 22.0 | 96.0 | 34.3 | 21.6 | 92.0 | 33.3 | 33.8 |
| Llama 3.2 3B | 48.8 | 12.0 | 42.7 | 40.0 | 16.0 | 36.0 | 39.3 |
| Gemma 2 2B | - | - | - | - | - | - | - |{{< /table-caption >}}
> 🔼 This table compares the performance of EXAONE 3.5 language models (of sizes 32B, 7.8B, and 2.4B) against other recently released, similarly sized language models. The comparison uses the Ko-LongRAG benchmark, which tests long-context comprehension and retrieval in Korean.  The Ko-LongRAG benchmark includes 'unanswerable' cases, where the models are expected to indicate when the information needed to answer the question is not present in the provided text. The table displays the performance on two subtasks (Single-doc QA and Multi-doc QA) and their average.  Bold scores highlight the best performance for each model size, and underlined scores indicate the second-best performance.
> <details>
> <summary>read the caption</summary>
> Table 15: Performance comparison results of EXAONE 3.5 language models with similar-sized recently released language models with Ko-LongRAG benchmarks. The benchmark is extended with the “Unanswerable” case, which requires models to respond as “Unanswerable” when the information cannot be found within the context. Bold scores indicate the best performance, and underlined scores mean the second best.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.04862/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.04862/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}