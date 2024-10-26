---
title: "Why Does the Effective Context Length of LLMs Fall Short?"
summary: "Large language models (LLMs) don't use their full context window due to a skewed distribution of positional information during training.  The authors introduce STRING, a training-free method that shif....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Large language models (LLMs) don't use their full context window due to a skewed distribution of positional information during training.  The authors introduce STRING, a training-free method that shifts position embeddings to improve performance on long context tasks.  STRING dramatically improves performance on open-source LLMs, even outperforming some commercial models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18745" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper investigates why the effective context length of large language models (LLMs) falls short of their claimed context window size. The authors attribute this limitation to a left-skewed frequency distribution of relative positions in the LLM's pre-training data.  They propose STRING, a training-free method that shifts well-trained positions to enhance performance and demonstrate significant improvements in multiple LLMs on long-context benchmarks.  The findings highlight a critical limitation in current LLM designs and provide a potential solution.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The effective context length of LLMs is often significantly less than their training length due to a left-skewed frequency distribution of relative positional indices. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} STRING, a training-free method, shifts well-trained position embeddings to enhance performance within existing training lengths, improving long context capabilities without additional training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed STRING method achieves state-of-the-art results on popular long-context benchmarks for open-source LLMs, surpassing even some commercial models in performance. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_17_0.png "🔼 Analyzing effective context length of LLMs pretrained on SlimPajama with respect to training length, token consumption, and position frequency. In Figure 2b, we use the model effective length as the X-axis, and the Y-axis indicates the number of times the model was exposed to that specific position during training.")





{{< table-caption caption="🔽 Needle-in-a-Haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Model | Ltrain | ReRoPE | NTK | RoPE(origin) | Self-Extend | YaRN | DCA | STRING |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| TinyLlama-1.3B (ours) | 2k | 62.8 | 62.0 | 56.6 | 60.2 | 68.6 | 74.4 | 84.6 |
| TinyLlama-1.1B-3T | 2k | 77.2 | 79.8 | 69.8 | 83.2 | 88.0 | 80.2 | 97.2 |
| Llama-2-7B | 4k | 98.6 | 98.6 | 98.0 | 95.4 | 98.0 | 91.6 | 100.0 |
| Llama-3-8B | 8k | 99.6 | 100.0 | 99.8 | 99.8 | 100.0 | 99.9 | 99.6 |
| LWM-7B-base | 32k | 25.2 | 19.4 | 31.8 | 29.0 | 22.2 | 28.8 | 50.4 |
| Mistral-7B-base | 32k | 54.5 | 42.2 | 52.8 | 54.2 | 48.2 | 64.2 | 73.0 |
| Llama-3.1-8B | 128k | 53.6 | 71.2 | 66.0 | 65.8 | 68.8 | 72.8 | 95.2 |
| Average | - | 67.3 | 67.6 | 67.8 | 69.6 | 70.5 | 73.1 | 85.7 |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_17_1.png "🔼 Analyzing effective context length of LLMs pretrained on SlimPajama with respect to training length, token consumption, and position frequency. In Figure 2b, we use the model effective length as the X-axis, and the Y-axis indicates the number of times the model was exposed to that specific position during training.")

![](figures/figures_19_0.png "🔼 Analyzing effective context length of LLMs pretrained on SlimPajama with respect to training length, token consumption, and position frequency. In Figure 2b, we use the model effective length as the X-axis, and the Y-axis indicates the number of times the model was exposed to that specific position during training.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Needle-in-a-haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  Ltrain means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Models | Effective/Claimed | NIAH | VT | Aggregation | QA | Avg. (13 tasks) |
| --- | --- | --- | --- | --- | --- | --- |
| Llama2-chat | 4K / 4K | 96.9 | 89.7 | 84.8 | 49.7 | 85.6 |
| GPT-4-1106-preview | 64K / 128K | 84.8 | 99.6 | 79.7 | 59.0 | 81.2 |
| GLM4 (Open-source best) | 64K / 1M | 94.4 | 97.7 | 49.7 | 63.6 | 83.1 |
| LWM (7B) | 4K / 128K | 83.4 | 15.2 | 29.1 | 52.6 | 65.0 |
| Phi3-medium (14B) | 8K / 128K | 51.3 | 26.0 | 43.5 | 38.0 | 46.1 |
| Llama3.1 (8B) | 32K / 128K | 92.6 | 70.4 | 36.2 | 58.8 | 77.0 |
| + YaRN | 32K / 128K | 94.7 | 39.8 | 38.2 | 58.8 | 76.3 |
| + DCA | 32K / 128K | 89.5 | 62.5 | 39.2 | 55.2 | 74.4 |
| + Self-Extend | 32K / 128K | 94.9 | 65.0 | 37.3 | 49.8 | 76.8 |
| + ReRoPE | 32K / 128K | 90.0 | 56.3 | 38.7 | 56.9 | 74.4 |
| + STRING | 32K / 128K | 94.0 | 88.1 | 37.6 | 62.7 | 80.0 |
| Yi (34B) | 32K / 200K | 90.2 | 76.8 | 43.4 | 59.9 | 77.3 |
| GradientAI/Llama3 (70B) | 16K / 1M | 84.9 | 56.2 | 41.4 | 59.8 | 72.1 |
| Mixtral (8x22B) | 32K / 64K | 23.8 | 0.0 | 69.7 | 40.8 | 31.7 |
| Command-R-plus (104B) | 32K / 128K | 65.7 | 97.2 | 59.5 | 39.2 | 63.1 |
| Llama3.1 (70B) | 64K / 128K | 78.9 | 59.2 | 39.8 | 47.6 | 66.6 |
| + STRING | 100K / 128K | 92.7 | 95.6 | 50.0 | 63.0 | 81.7 |
| Qwen2 (72B) | 64K / 128K | 48.0 | 79.0 | 70.3 | 47.2 | 53.7 |
| + STRING (new SOTA) | 100K / 128K | 91.2 | 98.4 | 83.7 | 52.2 | 84.6 |
| Test Length: 100K |  |  |  |  |  |  |
| Llama3.1-STRING (70B) | 100K / 128K | 94.6 | 97.8 | 72.1 | 67.3 | 87.2 |
| Qwen2-STRING (72B) | 100K / 128K | 93.9 | 97.7 | 88.1 | 57.8 | 87.8 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Comparison of STRING with three leading commercial long-context models on InfiniteBench. Each model is evaluated using a maximum context length of 128K." >}}
| Tasks | Commercial Models | Commercial Models | Commercial Models | Llama3.1 8B | Llama3.1 8B | Llama3.1 70B | Llama3.1 70B |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Tasks | GPT-4 | Claude2 | Kimi-chat | RoPE(origin) | STRING | RoPE(origin) | STRING |
| En.Sum | 14.73 | 14.45 | 17.93 | 26.00 | 28.22 | 26.89 | 27.64 |
| En.QA | 22.22 | 11.97 | 16.52 | 10.05 | 10.20 | 13.68 | 16.73 |
| En.MC | 67.25 | 62.88 | 72.49 | 65.50 | 70.30 | 76.41 | 81.98 |
| En.Dia | 8.50 | 46.50 | 11.50 | 20.00 | 19.50 | 18.00 | 30.50 |
| Retr.PassKey | 100.00 | 97.80 | 98.14 | 100.00 | 100.00 | 100.00 | 100.00 |
| Retr.Number | 100.00 | 98.14 | 94.42 | 99.32 | 99.89 | 100.00 | 100.00 |
| Retr.KV | 89.00 | 65.40 | 53.60 | 42.00 | 83.00 | 2.22 | 76.07 |
| Code.debug | 39.59 | 2.28 | 18.02 | 22.84 | 26.90 | 29.20 | 32.80 |
| Math.find | 60.00 | 32.29 | 12.57 | 32.18 | 34.87 | 40.92 | 46.28 |
| Avg. | 55.69 | 47.96 | 43.91 | 46.43 | 52.54 | 45.25 | 56.88 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Needle-in-a-haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  Ltrain means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Model | Ltrain | HF PATH | Peak Failure Depth | Acc |
| --- | --- | --- | --- | --- |
| GPT-4-128K |  | - | 0-33.3% | 100.0 |
| Trained on open-source data |  |  |  |  |
| TinyLlama-1.3b-1T(ours) | 2k |  | 0-33.3% | 56.6 |
| TinyLlama-1.1b-1T | 2k | TimyLicon/Tinyliama/LIB-interneciatex-4806-IT | 0-33.3% | 38.0 |
| TinyLlama-1.1b-3T | 2k | TheyJlamaYIng liam.I.IB-uternesdinep:14211421 | 0-33.3% | 69.8 |
| Pythia-1.4b | 2k | EleutherAI/pythia-1.4b | 0-33.3% | 22.5 |
| OpenLlama-3B | 2k | openlm-research/open_llama_3b | 0-33.3% | 85.0 |
| Llama2-7B | 4k | meta-llama/Llama-2-7b | 0-33.3% | 98.0 |
| Llama3-8B | 8k | meta-llama/Llama-3-7b | 0-33.3% | 99.8 |
| Together-base | 32k | togethercomputer/Llama-2-7B-32K | 0-33.3% | 63.0 |
| LWM-base | 32k | LargeWorldModel/LWM-Text-32K | 0-33.3% | 31.8 |
| Mistral-base | 32k | alpindale/Mistral-7B-v0.2-hf | 0-33.3% | 52.8 |
| Llama3.1-8B | 128k | meta-Ilama/Meta-Llama-3.1-8B | 0-33.3% | 66.0 |
| Yarn-base | 128k | NousResearch/Yam-Llama-2-7b-128k | 0-33.3% | 32.4 |
| Yi-6b-200k | 200k | 01-ai/Yi-6B-200K | 0-33.3% | 20.8 |
| Gradient-Llama3-8B | 262k | graiientaiLlama-3-70B-Instruct-Graien-256k | 0-33.3% | 46.0 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Needle-in-a-haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Haystack Needles Query | There is an important info hidden inside a lot of irrelevant text. Find it and memorize them. I will quiz you about the important information there.\n\n July 2006I've discovered a handy test for figuring out what you're addicted to. Imagine you were going to spend the weekend at a friend's house on a little island off the coast of Maine. There are no shops on the island and you won't be able to leave while you're there. Also, you've never been to this house before, so you can't assume it will have more than any house might. What, besides clothes and toiletries, do you make a point of packing? That's what you're addicted to... One of the magic numbers is 144231. they're going to issue a public report tracking how this specific tranche of money is spent, NFTs are a new territory, and this way of using them is especially new, but I'm excited about its potential. And I'm excited to see what happens with this particular auction, because unlike an NFT representing something that has already happened, this NFT gets better as the price gets higher.The reserve price was about $2.5 million, because that's what it takes for the name to be accurate: that's what it costs to... One of the magic numbers is 543171. you can 't expect an idea to be novel to everyone. Any insight that you have will probably have already been had by at least one of the world's 7 billion people. But it's sufficient if an idea is novel to a lot of readers.Ditto for correctness, importance, and strength. In effect the four components One of the magic numbers is 264468. And we were always far ahead of them in features.Sometimes, in desperation, competitors would try to introduce features that we didn't have. But with Lisp our development cycle was so fast that we could sometimes duplicate a new feature within a day or two of a competitor announcing it in a press release. By the time journalists covering the press release got round to One of the magic numbers is 423103. nThere is a founder community just as there's a VC community. They all know one another, and techniques spread rapidly between them. If one tries a new programming language or a new hosting provider and gets good results, 6 months later half of... \n\n What are the magic numbers mentioned in the provided text?\n The numbers are |
| --- | --- |
| Answer | [144231, 543171, 264468, 423103] |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Needle-in-a-haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  Ltrain means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Llama 3 report | Read the following paper about Llama 3. Answer the question based on the paper. \n\n The Llama 3 Herd of Models\n Llama Team, AI @ Metal\n\n 1A detailed contributor list can be found in the appendix of this paper.Modern artificial intelligence (AI) systems are powered by foundation models. This paper presents a new set of foundation models, called Llama 3. It is a herd of language models that natively support multilinguality... |
| --- | --- |
| Question Llama 3 RoPE 3 STRING | How many long-context training stages does Llama3 have? Please describe them (The answer is in Section 3.4.2 of Llama Team (2024) ) Llama3 is a large language model developed by Meta AI, and it has several training stages to achieve its impressive performance. The training stages are as follows: 1 Initial Pre-Training: In this stage, Llama3 is pre-trained using AdamW with a peak learning rate of 8x10-5, a linear warm-up of 8,000 steps, and a cosine learning rate schedule decaying to 8x10-7 over 1,200,000 steps. 2. Long Context Pre-Training: In this stage, Llama3 is trained on long sequences to support context windows of up to 128K tokens. The model is gradually adapted to the increased context length in increments, starting from the original 8K context window and ending in the final 128K X(cannot follow instruction) Llama3 has six stages of long-context training, starting from an 8K context window and ending in a 128K context window. This long-context pre-training stage was performed using approximately 800B training tokens. V totally the same as decribed in Section 3.4.2 Answer explanation: The question requires the reader to identify the number of long- context training stages in Llama3 and describe them |
| Llama | Describe the differences in model architecture between Llama3 and Llama2 (The Llama Team (2024) ) The paper describes Llama3 as a dense Transformer model with 405B parameters, while Llama2 is not specified to have a specific model architecture. However, based on the context, it can be inferred that Llama2 is likely a dense Transformer model as well, but with fewer parameters than Llama3. The paper highlights that Llama3 makes minimal architectural modifications to Llama2, suggesting that the main differences between the two models lie in the scale and hyperparameters rather than the architecture itself. X(not the |
| Question Llama 3 RoPE Llama 3 STRING | answer is in Section 3.2 of addressing question) The main differences between Llama-3 and Llama-2 are: 1. Llama-3 uses grouped query attention (GQA) with 8 key-value heads to improve inference speed and reduce the size of key-value caches during decoding. 2. Llama-3 uses an attention mask that prevents self- attention between different documents within the same sequence. 3. Llama-3 has a larger vocabulary with 128K tokens, which includes 100K tokens from the tiktoken tokenizer and 28K additional tokens to better support non-English languages. 4. Llama-3 increases the RoPE base frequency hyperparameter to 500,000, which enables better support for longer contexts.⌀ |
| Question Llama 3 RoPE | How does Llama3 perform context parallelism in training (The answer is in Section 3.3.2 of Llama Team (2024)) A. By using a combination of tensor parallelism, pipeline parallelism, and data parallelism. B. By using a combination of pipeline parallelism and data parallelism. C. By using a combination of tensor parallelism and data parallelism. D. By using a combination of context parallelism, pipeline parallelism, and data parallelism.E. By using only data parallelism. Answer: DX(deviated from the question) in training is implemented the communication and computation in the critical path. V |
|  |  |
|  |  |
| Llama 3 STRING | The context parallelism Llama-3 using an all-gather based method, where the key (K) and value (V) tensors are first all-gathered and then the attention output is computed for the local query (Q tensor chunk. This approach is used to support different types of attention masks, such as the document mask, and to balance |
| Question Llama 3 RoPE | What are the two criteria used to assess successful adaptation in long-context training (The answer is in Section 3.4.2 of Llama Team (2024)) Model performance on short-context evaluations and needle-in-a-haystack tasks. V correct but incomplete |
| Llama 3 STRING | The two criteria used to assess successful adaptation in long-context training are: 1. Model performance on short-context evaluations has recovered completely. 2. The model perfectly solves "needle in a haystack" tasks up to that length. These criteria are mentioned in Section 3.4.2 of the paper. V |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Needle-in-a-haystack (4 needles) results of 7 base models across various methods (columns reordered from smallest to largest average) where  Ltrain  means the size of the training context window. All the models were tested using their training length. The number of test cases is 500." >}}
| Llama 3 report | Read the following paper about Llama 3. Answer the question based on the paper. \n\n The Llama 3 Herd of Models\n Llama Team, AI @ Meta 1\n\n 1A detailed contributor list can be found in the appendix of this paper.Modern artificial intelligence (AI) systems are powered by foundation models. This paper presents a new set of foundation models, called Llama 3. It is a herd of language models that natively support multilinguality, coding, reasoning, and tool usage. Our largest model is a dense Transformer with 405B parameters and a context window of up to 128K tokens. This paper presents an extensive empirical evaluation of Llama 3. We find that Llama 3 delivers... |
| --- | --- |
| Question | At which stages does the llama3 team average the models (The answer is in Section 4.1.5 of Llama Team (2024) ) |
| Llama 3 RoPE | obtained from experiments using various versions of data or hyperparameters at each RM, SFT, or DPO stage? The answer is 4.1.6, Iterative Rounds, and 4.1.6, Iterative RoundsX(not fluent) |
| Llama 3 STRING | The Llama 3 team averages models obtained from experiments using various versions of data or hyperparameters at each RM, SFT, or DPO stage.V |
| Question | Describe the sources of Llama3's SFT data (The answer is in Section 4.2.2 of Llama Team (2024) ) |
| Llama 3 RoPE | Llama3's SFT data is sourced from various places, including human annotations, other NLP tasks, and translated data. Human annotations are collected from linguists and native speakers, and are used to create open-ended prompts that represent real-world use cases. X(hallucination! it describes the multilingual SFT data) |
| Llama 3 STRING | In the paper, it is stated that the SFT data is comprised of the following sources: "prompts from our human annotation collection with rejection-sampled responses" and "synthetic data targeting specific capabilities" · Additionally, it is mentioned that the SFT data is also comprised of "human-curated data" and "small amounts of human-curated data" for certain capabilities. The Llama3 team uses a combination of model-based and rule- based techniques to filter out low-quality training samples and improve overall model performance.V (More accurate) |
| Question | From what is Llama-3's multilingual SFT data derived (The answer is in Section 4.3.2 ) of Llama Team (2024)) |
| Llama 3 RoPE | Human annotations, data from other NLP tasks, rejection sampled data, and translated reasoning data. V |
| Llama 3 STRING | The multilingual SFT data is primarily derived from sources such as human annotations, data from other NLP tasks, rejection sampled data, and translated reasoning data. V |
| Question | How do the authors verify the long context code reasoning of Llama-3 (The answer is in Section 4.3.4 of Llama Team (2024)) |
| Llama 3 RoPE | They select the most commonly depended-upon files, specifically those referenced by at least five other files, and remove one of these key files from a repository.X(not addressing the question) |
| Llama 3 STRING | The authors verify the long context code reasoning of Llama-3 by parsing Python files to identify import statements and determine their dependencies. From here, they select the most commonly depended-upon files, specifically those referenced by at least five other files. They remove one of these key files from a repository and prompt the model to identify which files depended on the missing file and to generate the necessary missing code. V |
| Question | How does the llama3 team solve the Hallucinations issues (The answer is in Section 4.3.6 of Llama Team (2024)) |
| Llama 3 RoPE | They follow the principle that post-training should align the model to "know what it knows" rather than add knowledge, and generate data that aligns model generations with subsets of factual data present in the pre-training data.X(in complete) |
| Llama 3 STRING | The authors use a knowledge probing technique to align the model generations with subsets of factual data present in the pre-training data. This data generation process involves extracting a data snippet from the pre-training data, generating a factual question about these snippets, sampling responses from the model, scoring the correctness of the generations, scoring the informativeness of the generations, and generating a refusal for responses that are consistently informative and incorrect across the generations. V |
{{< /table-caption >}}


</details>

------

