---
title: "CCI3.0-HQ: a large-scale Chinese dataset of high quality designed for pre-training large language models"
summary: "The paper introduces CCI3.0-HQ, a large-scale, high-quality Chinese dataset for pre-training LLMs.  Using a novel two-stage filtering pipeline, CCI3.0-HQ significantly outperforms existing Chinese dat....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
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
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Comparison of Two Quality Annotation Methods" >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Evaluation of Different Quality Classifiers" >}}
{{< /table-caption >}}


</details>

------

