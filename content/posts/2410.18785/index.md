---
title: "Should We Really Edit Language Models? On the Evaluation of Edited Language Models"
summary: "This paper comprehensively evaluates various language model editing methods, finding that they generally cause performance degradation and safety issues, especially when scaling to many edits.  Curren....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
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
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2: Results on evaluating the impact of different editing methods and numbers of edits on edited language models (base model). All editing is conducted on COUNTERFACT dataset with a fixed seed for a fair comparison. For all 4 tasks in this table, the higher score indicates a better performance. MEND and GRACE are not available for Mistral-7B." >}}
{{< /table-caption >}}


</details>

------

