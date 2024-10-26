---
title: "CCI3.0-HQ: a large-scale Chinese dataset of high quality designed for pre-training large language models"
summary: "The paper introduces CCI3.0-HQ, a large-scale, high-quality Chinese dataset for pre-training LLMs.  Using a novel two-stage filtering pipeline, CCI3.0-HQ significantly outperforms existing Chinese dat....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

The paper introduces CCI3.0-HQ, a large-scale, high-quality Chinese dataset for pre-training LLMs.  Using a novel two-stage filtering pipeline, CCI3.0-HQ significantly outperforms existing Chinese datasets in benchmarks.  The paper also open-sources a new quality classifier and details the methods used to create the dataset.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18505" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces CCI3.0-HQ, a high-quality 500GB Chinese dataset for pre-training large language models (LLMs).  It significantly improves data quality using a two-stage hybrid filtering pipeline, outperforming existing Chinese datasets in benchmarks. The paper also open-sources a quality classifier and details the methodology.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CCI3.0-HQ is a new, high-quality Chinese dataset for LLM pre-training, significantly outperforming existing datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel two-stage hybrid filtering pipeline was developed and used to enhance data quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The CCI3.0-HQ quality classifier is open-sourced to facilitate broader access to high-quality language models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: Dataset Curation Pipeline")





{{< table-caption caption="🔽 Table 1: Pre-training Model Configuration Parameters" >}}
| Parameter | Value |
| --- | --- |
| attention_dropout | 0.0 |
| bos_token_id | 151849 |
| eos_token_id | 151850 |
| hidden_act | silu |
| hidden_size | 896 |
| intermediate_size | 2432 |
| max_position_embeddings | 4096 |
| num_attention_heads | 14 |
| num_hidden_layers | 24 |
| num_key_value_heads | 2 |
| pad_token_id | 151643 |
| rms_norm_eps | 1e-06 |
| rope_theta | 10000 |
| tie_ word_embeddings | True |
| torch_dtype | bfloat16 |
| vocab_size | 151851 |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Comparison of Dataset Impacts on Model Performance in Mixed and Chinese Dataset Experiments" >}}
| Mixed Dataset Experiment Results | Mixed Dataset Experiment Results | Mixed Dataset Experiment Results | Mixed Dataset Experiment Results | Mixed Dataset Experiment Results |
| --- | --- | --- | --- | --- |
| Metrics | SkyPile | Wanjuan-v1 | CCI3.0 | CCI3.0-HQ |
| ARC-C | 0.270 | 0.277 | 0.265 | 0.269 |
| ARC-E | 0.521 | 0.517 | 0.539 | 0.542 |
| HellaSwag | 0.355 | 0.347 | 0.36 | 0.357 |
| Winograd | 0.507 | 0.502 | 0.498 | 0.523 |
| MMLU | 0.286 | 0.287 | 0.289 | 0.292 |
| OpenbookQA | 0.334 | 0.312 | 0.326 | 0.318 |
| PIQA | 0.651 | 0.651 | 0.652 | 0.648 |
| SIQA | 0.38 | 0.387 | 0.375 | 0.394 |
| CEval | 0.279 | 0.275 | 0.278 | 0.296 |
| CMMLU | 0.294 | 0.286 | 0.292 | 0.309 |
| AverageEnglish | 0.413 | 0.410 | 0.413 | 0.418 |
| AverageChinese | 0.287 | 0.280 | 0.285 | 0.303 |
| Average | 0.388 | 0.384 | 0.388 | 0.395 |
| Chinese Dataset Experiment Results | Chinese Dataset Experiment Results | Chinese Dataset Experiment Results | Chinese Dataset Experiment Results | Chinese Dataset Experiment Results |
| Metrics | SkyPile | Wanjuan-v1 | CCI3.0 | CCI3.0-HQ |
| ARC-C | 0.192 | 0.217 | 0.202 | 0.235 |
| ARC-E | 0.313 | 0.282 | 0.323 | 0.388 |
| HellaSwag | 0.279 | 0.269 | 0.283 | 0.295 |
| Winograd | 0.490 | 0.487 | 0.485 | 0.481 |
| MMLU | 0.244 | 0.254 | 0.245 | 0.259 |
| OpenbookQA | 0.254 | 0.232 | 0.232 | 0.242 |
| PIQA | 0.528 | 0.539 | 0.53 | 0.556 |
| SIQA | 0.387 | 0.377 | 0.372 | 0.382 |
| CEval | 0.305 | 0.279 | 0.294 | 0.331 |
| CMMLU | 0.304 | 0.298 | 0.296 | 0.328 |
| AverageEnglish | 0.336 | 0.332 | 0.334 | 0.355 |
| AverageChinese | 0.304 | 0.289 | 0.295 | 0.329 |
| Average | 0.330 | 0.324 | 0.326 | 0.350 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Comparison of Two Quality Annotation Methods" >}}
| Metrics | DCLM | FineWeb-edu |
| --- | --- | --- |
| ARC-C | 0.211 | 0.235 |
| ARC-E | 0.378 | 0.388 |
| HellaSwag | 0.310 | 0.295 |
| Winograd | 0.485 | 0.481 |
| MMLU | 0.259 | 0.259 |
| OpenbookQA | 0.262 | 0.242 |
| PIQA | 0.571 | 0.556 |
| SIQA | 0.389 | 0.382 |
| CEval | 0.298 | 0.331 |
| CMMLU | 0.311 | 0.328 |
| AverageEnglish | 0.358 | 0.355 |
| AverageChinese | 0.305 | 0.329 |
| Average | 0.348 | 0.350 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Evaluation of Different Quality Classifiers" >}}
| Classifier | Precision | Recall | F1-score |
| --- | --- | --- | --- |
| classifierFineWeb-edu | classifierFineWeb-edu | classifierFineWeb-edu | classifierFineWeb-edu |
| Positive | 0.91 | 0.02 | 0.03 |
| Negative | 0.82 | 1.00 | 0.90 |
| Macro F1 | 0.87 | 0.51 | 0.47 |
| classifierChineseWebText | classifierChineseWebText | classifierChineseWebText | classifierChineseWebText |
| Positive | 0.18 | 0.58 | 0.27 |
| Negative | 0.80 | 0.38 | 0.52 |
| Macro F1 | 0.49 | 0.48 | 0.39 |
| classifierIndustryCorpus2 | classifierIndustryCorpus2 | classifierIndustryCorpus2 | classifierIndustryCorpus2 |
| Positive | 0.32 | 0.86 | 0.47 |
| Negative | 0.95 | 0.59 | 0.73 |
| Macro F1 | 0.64 | 0.73 | 0.60 |
| classifiercc13.0-HQ | classifiercc13.0-HQ | classifiercc13.0-HQ | classifiercc13.0-HQ |
| Positive | 0.86 | 0.38 | 0.53 |
| Negative | 0.88 | 0.99 | 0.93 |
| Macro F1 | 0.87 | 0.68 | 0.73 |
{{< /table-caption >}}


</details>

------

