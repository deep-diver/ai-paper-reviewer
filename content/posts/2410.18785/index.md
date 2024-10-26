---
title: "Should We Really Edit Language Models? On the Evaluation of Edited Language Models"
summary: "This paper comprehensively evaluates various language model editing methods, finding that they generally cause performance degradation and safety issues, especially when scaling to many edits.  Curren....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

This paper comprehensively evaluates various language model editing methods, finding that they generally cause performance degradation and safety issues, especially when scaling to many edits.  Current methods are only suitable for small-scale updates, motivating further research on more robust and reliable editing techniques.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18785" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper is important because it provides a comprehensive evaluation of existing language model editing methods, revealing their limitations and potential negative impacts.  This is crucial for guiding future research towards more practical and reliable methods, especially regarding safety and scalability.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing language model editing methods cause inevitable performance deterioration on general benchmarks, even with a small number of edits. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Instruction-tuned models are more robust to editing and larger models are more resistant to edits than smaller models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The safety of edited language models is significantly weakened, even for those safety-aligned models, with even a small number of edits. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Illustration about the model editing and its pitfalls in retaining edited knowledge. Left panel: model editing methods can efficiently update knowledge within language models; Right panel: when scaling editing to thousands, the model can't retain edited knowledge, see [16] for details.")





{{< table-caption caption="🔽 Table 1: Evaluation results of GPT2-XL. experiments are conducted on a sever with 8 RTX 4090 GPUs." >}}
| Method w/o Edit | # Edits | GPT2-XL | GPT2-XL | GPT2-XL | GPT2-XL |
| --- | --- | --- | --- | --- | --- |
| Method w/o Edit | # Edits | MMLU | GSM8K | BBH | CSQA |
| Method w/o Edit | 0 | 0.2098 | 0.0144 | 0.0382 | 0.1941 |
| PMET | 10 | 0.2104 | 0.0159 | 0.0377 | 0.1941 |
| PMET | 20 | 0.1081 | 0.0144 | 0.0117 | 0.2048 |
| PMET | 50 | 0 | 0 | 0 | 0 |
| PMET | 100 | 0 | 0 | 0 | 0 |
| PMET | 500 | 0 | 0 | 0 | 0 |
| PMET | 1000 | 0 | 0 | 0 | 0 |
| MEND | 10 | 0.2096 | 0.0144 | 0.0377 | 0.1949 |
| MEND | 30 | 0.2094 | 0.0152 | 0.0388 | 0.1941 |
| MEND | 100 | 0.2098 | 0.0144 | 0.0380 | 0.1957 |
| MEND | 500 | 0.2100 | 0.0144 | 0.0382 | 0.1941 |
| MEND | 1000 | 0.2099 | 0.0144 | 0.0381 | 0.1933 |
| KN | 500 | 0 | 0 | 0 | 0 |
| KN | 1000 | 0 | 0 | 0 | 0 |
| MEMIT | 500 | 0.2112 | 0.0159 | 0.0363 | 0.1957 |
| MEMIT | 1000 | 0.2097 | 0.0152 | 0.0193 | 0.199 |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| Method w/o Edit | # Edits | Llama2-7B-Chat | Llama2-7B-Chat | Llama2-7B-Chat | Llama2-7B-Chat | Mistral-7B-Instruct | Mistral-7B-Instruct | Mistral-7B-Instruct | Mistral-7B-Instruct |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Method w/o Edit | # Edits | MMLU | GSM8K | BBH | CSQA | MMLU | GSM8K | BBH | CSQA |
| Method w/o Edit | 0 | 0.4516 | 0.2032 | 0.3997 | 0.6134 | 0.5350 | 0.3450 | 0.4668 | 0.6601 |
| ROME | 1 | 0.4576 | 0.1531 | 0.3985 | 0.5938 | 0.5364 | 0.3442 | 0.4667 | 0.6699 |
| ROME | 5 | 0.4587 | 0.1425 | 0.3976 | 0.5839 | 0.5354 | 0.3442 | 0.4648 | 0.6618 |
| ROME | 10 | 0.4578 | 0.1471 | 0.3974 | 0.5864 | 0.5333 | 0.3366 | 0.4684 | 0.6634 |
| ROME | 20 | 0.4416 | 0.1471 | 0.3828 | 0.5602 | 0.5310 | 0.3397 | 0.4693 | 0.6519 |
| ROME | 50 | 0.2700 | 0.0409 | 0.2838 | 0.2048 | 0.4115 | 0.2517 | 0.3888 | 0.4636 |
| ROME | 100 | 0.0007 | 0.0152 | 0 | 0 | 0.1884 | 0.0190 | 0.1884 | 0.0026 |
| MEMIT | 1 | 0.4715 | 0.2085 | 0.4106 | 0.6143 | 0.5356 | 0.3450 | 0.4664 | 0.6683 |
| MEMIT | 5 | 0.4717 | 0.1895 | 0.4114 | 0.6233 | 0.5345 | 0.3419 | 0.4656 | 0.6675 |
| MEMIT | 10 | 0.4704 | 0.2047 | 0.4132 | 0.6151 | 0.5357 | 0.3434 | 0.4674 | 0.6716 |
| MEMIT | 20 | 0.4698 | 0.1956 | 0.4087 | 0.6405 | 0.5358 | 0.3465 | 0.4670 | 0.6667 |
| MEMIT | 50 | 0.4682 | 0.2039 | 0.4017 | 0.6405 | 0.5328 | 0.3487 | 0.4643 | 0.6536 |
| MEMIT | 100 | 0.4485 | 0.1850 | 0.3959 | 0.6044 | 0 | 0 | 0 | 0 |
| PMET | 1 | 0.4583 | 0.1471 | 0.3988 | 0.5930 | 0.5357 | 0.3465 | 0.6658 | 0.4663 |
| PMET | 5 | 0.4586 | 0.1448 | 0.4001 | 0.5897 | 0.5356 | 0.3457 | 0.6691 | 0.4669 |
| PMET | 10 | 0.4593 | 0.1471 | 0.4017 | 0.5930 | 0.5348 | 0.3450 | 0.6691 | 0.4662 |
| PMET | 20 | 0.4588 | 0.1456 | 0.4010 | 0.5872 | 0.5360 | 0.3397 | 0.6618 | 0.4570 |
| PMET | 50 | 0.4584 | 0.1448 | 0.4019 | 0.5905 | 0 | 0 | 0 | 0 |
| PMET | 100 | 0.4590 | 0.1448 | 0.3960 | 0.5930 | 0 | 0 | 0 | 0 |
| MEND KN | 10 | 0.4731 | 0.2100 | 0.4097 | 0.6216 | - |  | - |  |
| MEND KN | 20 | 0.4729 | 0.2024 | 0.4057 | 0.6102 | 一 | - | - | - |
| MEND KN | 50 | 0.4728 | 0.2024 | 0.4101 | 0.6183 | - | - | - | - |
| MEND KN | 100 | 0.4731 | 0.2009 | 0.4093 | 0.6183 | - | - | - | - |
| MEND KN | 200 | 0.4738 | 0.2100 | 0.4030 | 0.6249 | - | - | - |  |
| MEND KN | 500 | 0.4732 | 0.2168 | 0.4089 | 0.6192 | - | - | - | - |
| MEND KN | 1000 | 0.4728 | 0.2138 | 0.4118 | 0.6224 | - | - | - | - |
| MEND KN | 10 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| MEND KN | 20 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
| MEND KN | 50 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| Model | Method | # Edits | MMLU↑ | GSM8K↑ | BBH↑ | CSQA↑ |
| --- | --- | --- | --- | --- | --- | --- |
| Pythia-160M | w/o Edit | 0 | 0.2435 | 0.0174 | 0.0742 | 0.1884 |
| Pythia-160M | ROME | 10 | 0 | 0 | 0 | 0 |
| Pythia-160M | ROME | 50 | 0 | 0 | 0 | 0 |
| Pythia-160M | ROME | 100 | 0 | 0 | 0 | 0 |
| Pythia-160M | MEMIT | 10 | 0.2460 | 0.0212 | 0.0785 | 0.2056 |
| Pythia-160M | MEMIT | 50 | 0.2447 | 0.0227 | 0.0755 | 0.1982 |
| Pythia-160M | MEMIT | 100 | 0.2468 | 0.0235 | 0.0743 | 0.1990 |
| Pythia-410M | w/o Edit | 0 | 0.2614 | 0.0144 | 0.2497 | 0.2064 |
| Pythia-410M | ROME | 10 | 0 | 0 | 0 | 0 |
| Pythia-410M | ROME | 50 | 0 | 0 | 0 | 0 |
| Pythia-410M | ROME | 100 | 0 | 0 | 0 | 0 |
| Pythia-410M | MEMIT | 10 | 0.2628 | 0.0182 | 0.2476 | 0.2015 |
| Pythia-410M | MEMIT | 50 | 0.2629 | 0.0144 | 0.2482 | 0.2080 |
| Pythia-410M | MEMIT | 100 | 0.2627 | 0.0190 | 0.2490 | 0.2048 |
| Pythia-1B | w/o Edit | 0 | 0.2552 | 0.0273 | 0.2535 | 0.1892 |
| Pythia-1B | ROME | 10 | 0.2547 | 0.0083 | 0.0052 | 0.2039 |
| Pythia-1B | ROME | 50 | 0.0017 | 0 | 0 | 0 |
| Pythia-1B | ROME | 100 | 0 | 0 | 0 | 0 |
| Pythia-1B | MEMIT | 10 | 0.2562 | 0.0265 | 0.2545 | 0.1908 |
| Pythia-1B | MEMIT | 50 | 0.2539 | 0.0265 | 0.2544 | 0.2015 |
| Pythia-1B | MEMIT | 100 | 0.2547 | 0.0258 | 0.2532 | 0.2064 |
| Pythia-2.8B | w/o Edit | 0 | 0.2800 | 0.0364 | 0.2870 | 0.2146 |
| Pythia-2.8B | ROME | 10 | 0.2272 | 0.0008 | 0.0004 | 0.1990 |
| Pythia-2.8B | ROME | 50 | 0.0001 | 0.0191 | 0 | 0 |
| Pythia-2.8B | ROME | 100 | 0 | 0 | 0 | 0 |
| Pythia-2.8B | MEMIT | 10 | 0.2547 | 0.0303 | 0.2774 | 0.2154 |
| Pythia-2.8B | MEMIT | 50 | 0.2554 | 0.0349 | 0.2758 | 0.2269 |
| Pythia-2.8B | MEMIT | 100 | 0.2559 | 0.0318 | 0.2749 | 0.2179 |
| Pythia-6.9B Pythia-12B | w/o Edit | 0 | 0.2565 | 0.0318 | 0.2762 | 0.2260 |
| Pythia-6.9B Pythia-12B | ROME | 10 | 0.0189 | 0 | 0 | 0 |
| Pythia-6.9B Pythia-12B | ROME | 50 | 0 | 0 | 0 | 0 |
| Pythia-6.9B Pythia-12B | ROME | 100 | 0 | 0 | 0 | 0 |
| Pythia-6.9B Pythia-12B | MEMIT | 10 | 0.2547 | 0.0303 | 0.2774 | 0.2154 |
| Pythia-6.9B Pythia-12B | MEMIT | 50 | 0.2554 | 0.0349 | 0.2758 | 0.2269 |
| Pythia-6.9B Pythia-12B | MEMIT | 100 | 0.2559 | 0.0318 | 0.2749 | 0.2179 |
| Pythia-6.9B Pythia-12B | w/o Edit ROME | 0 | 0.2621 | 0.0485 | 0.2868 | 0.2375 |
| Pythia-6.9B Pythia-12B | w/o Edit ROME | 10 | 0.0263 | 0.0380 | 0 | 0 |
| Pythia-6.9B Pythia-12B | w/o Edit ROME | 0 | 0.0380 | 0 | 0 |  |
| Pythia-6.9B Pythia-12B | w/o Edit ROME | 50 100 | 0 | 0.0380 | 0 | 0 |
| Pythia-6.9B Pythia-12B | MEMIT | 10 | 0.2615 | 0.0462 | 0.2878 | 0.2408 |
| Pythia-6.9B Pythia-12B | MEMIT | 50 | 0.2633 | 0.0531 | 0.2916 | 0.2514 |
| Pythia-6.9B Pythia-12B | MEMIT | 100 | 0.2587 | 0.0523 | 0.2925 | 0.2465 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| Method | # Edits | Llama2-7B | Llama2-7B | Llama2-7B-chat | Llama2-7B-chat | Mixtral-7B | Mixtral-7B | Mixtral-7B-Instruct | Mixtral-7B-Instruct |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Method | # Edits | TruthfulQA | Toxigen | TruthfulQA | Toxigen | TruthfulQA | Toxigen | TruthfulQA | Toxigen |
| w/o Edits | 0 | 0.2521 | 0.4284 | 0.3023 | 0.5177 | 0.2815 | 0.4247 | 0.3917 | 0.4896 |
| w/o Edits | 1 | 0.2521 | 0.4296 | 0.2921 | 0.5196 | 0.2815 | 0.4247 | 0.3941 | 0.4810 |
| ROME | 5 | 0.2497 | 0.4272 | 0.2997 | 0.5072 | 0.2815 | 0.4247 | 0.3929 | 0.4896 |
| ROME | 10 | 0.2485 | 0.4296 | 0.2962 | 0.5080 | 0.2742 | 0.4235 | 0.3892 | 0.4737 |
| ROME | 20 | 0.2411 | 0.4284 | 0.2913 | 0.4871 | 0.2742 | 0.4247 | 0.3868 | 0.4737 |
| ROME | 50 | 0.2411 | 0.4101 | 0.2497 | 0.4957 | 0.2350 | 0.4247 | 0.2644 | 0.4504 |
| ROME | 100 | 0.2729 | 0.4982 | 0.2974 | 0.5141 | 0.2509 | 0.5667 | 0.2827 | 0.5251 |
| MEMIT | 1 | 0.2509 | 0.4284 | 0.2999 | 0.5116 | 0.2815 | 0.4272 | 0.3905 | 0.4859 |
| MEMIT | 5 | 0.2497 | 0.4272 | 0.2950 | 0.5116 | 0.2803 | 0.4272 | 0.3929 | 0.4908 |
| MEMIT | 10 | 0.2497 | 0.4284 | 0.2925 | 0.5153 | 0.2815 | 0.4259 | 0.3929 | 0.4847 |
| MEMIT | 20 | 0.2460 | 0.4308 | 0.2999 | 0.5018 | 0.2791 | 0.4259 | 0.3917 | 0.4908 |
| MEMIT | 50 | 0.2399 | 0.4308 | 0.2815 | 0.5153 | 0.2668 | 0.4308 | 0.3807 | 0.4774 |
| MEMIT | 100 | 0.1922 | 0.4321 | 0.2472 | 0.4896 | 0.2375 | 0.4627 | 0.2350 | 0.5838 |
| PMET | 1 | 0.2521 | 0.4296 | 0.2974 | 0.5163 | 0.2815 | 0.4247 | 0.3917 | 0.4823 |
| PMET | 5 | 0.2497 | 0.4272 | 0.2988 | 0.5175 | 0.2815 | 0.4247 | 0.3917 | 0.4835 |
| PMET | 10 | 0.2485 | 0.4296 | 0.2964 | 0.5190 | 0.2840 | 0.4235 | 0.3929 | 0.4847 |
| PMET | 20 | 0.2411 | 0.4284 | 0.2974 | 0.5141 | 0.2740 | 0.4247 | 0.3905 | 0.4908 |
| PMET | 50 | 0.2411 | 0.4100 | 0.2962 | 0.5129 | 0.2350 | 0.4247 | 0.2375 | 0.4333 |
| PMET | 100 | 0.2729 | 0.4982 | 0.2962 | 0.5165 | 0.2509 | 0.5667 | 0.2350 | 0.4333 |
| PMET | 500 | 0.2350 | 0.4259 | 0.2362 | 0.5667 | - | - | - | - |
| PMET | 1000 | 0.2362 | 0.4308 | 0.2350 | 0.5667 | - | - | - | - |
| MEND | 10 | 0.2472 | 0.4308 | 0.2974 | 0.5141 | - | - | - |  |
| MEND | 20 | 0.2546 | 0.4296 | 0.2999 | 0.5104 |  | - |  |  |
| MEND | 50 | 0.2521 | 0.4296 | 0.2938 | 0.5153 | - | 、 | - |  |
| MEND | 100 | 0.2521 | 0.4296 | 0.3035 | 0.5153 | 、 | - | - |  |
| MEND | 500 | 0.2521 | 0.4308 | 0.3035 | 0.5080 | - | - | - |  |
| MEND | 1000 | 0.2485 | 0.4308 | 0.2950 | 0.5055 | - | - | - | - |
| KN | 10 | 0.2350 | 0.4333 | 0.2277 | 0.4333 | 0.2889 | 0.4308 |  |  |
| KN | 50 | 0.2399 | 0.5667 | 0.2399 | 0.4590 | 0.2558 | 0.5667 | - |  |
| KN | 100 | 0.2350 | 0.5667 | 0.2399 | 0.4590 | 0.2583 | 0.5667 | - | - |
| KN | 500 | 0.2362 | 0.4333 | 0.2392 | 0.4590 | 0.2583 | 0.5667 | - | - |
| KN | 1000 | 0.2313 | 0.4333 | 0.2399 | 0.4590 | 0.2583 | 0.5667 | - |  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| DATASET | TASK TYPE | # FEW-SHOT | # TEST | METRIC | EVALUATION METHOD |
| --- | --- | --- | --- | --- | --- |
| MMLU 27 | World Knowledge | 5 | 14,079 | Accuracy | Generation-Based |
| BBH 28 | World Knowledge | 3 | 6,511 | Accuracy | Generation-Based |
| GSM8K 39 | Arithmetic | 8 | 1,319 | Exact match | Generation-Based |
| CSQA* 40 | Commonsense | 7 | 1,221 | Accuracy | Generation-Based |
| TriviaQA 41 | Reading Comprehension | 0 | 17,900 | Exact match | Generation-Based |
| TruthfulQA 42 | Truthful | 0 | 817 | Accuracy | Sequence-Based |
| ToxiGen 43 | Hate Speech | 0 | 940 | Accuracy | Sequence-Based |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| Method | With vLLM | With vLLM | With vLLM | Without vLLM | Without vLLM | Without vLLM |
| --- | --- | --- | --- | --- | --- | --- |
| Method | MMLU | GSM8K | CSQA | MMLU | GSM8K | CSQA |
| Llama2-7B | 103 | 5 | 26 | 840 | 7 | 42 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
| Method | Llama2-7B | Llama2-7B | Llama2-7B | GPT2-XL | GPT2-XL | GPT2-XL |
| --- | --- | --- | --- | --- | --- | --- |
| Method | 10 | 50 | 100 | 10 | 50 | 100 |
| ROME | 2m1s | 9m53s | 16m31s | 59s | 4m4s | 8mlls |
| MEMIT | 4m30s | 20m29s | 40m14s | 2m10s | 8m24s | 17m23s |
| GRACE | 10s | 1m3s | 2mls | 5s | 31s | 1m2s |
| MEND | 24s | 1m34s | 2m17s | 11s | 52s | 1m24s |
| SERAC | 20s | 1m7s | 1m24s | 14s | 1m12s | 2m15s |
{{< /table-caption >}}


</details>

------

