---
title: "Fully Open Source Moxin-7B Technical Report"
summary: "Moxin-LLM: A fully open-source 7B parameter LLM achieving superior zero-shot performance, promoting transparency and reproducibility in AI research."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Northeastern University",]
showSummary: true
date: 2024-12-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.06845 {{< /keyword >}}
{{< keyword icon="writer" >}} Pu Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.06845" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.06845" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/fully-open-source-moxin-7b-technical-report" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.06845/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The development of large language models (LLMs) has been dominated by proprietary models, raising concerns about transparency and access. While open-source LLMs exist, many lack crucial components like training data and code, hindering further research and innovation.  This limits the ability for researchers to build upon existing work and slows down the progress of the field. 



To address this, researchers developed Moxin 7B, a fully open-source LLM adhering to the Model Openness Framework. This means all components are publicly available, including code, data, and intermediate checkpoints.  Benchmark tests show that Moxin 7B outperforms existing open-source models in zero-shot evaluations and performs competitively in few-shot evaluations. This makes Moxin 7B a valuable contribution to the field,  promoting reproducible research and fostering collaboration within the open-source AI community.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Moxin 7B is a fully open-source LLM, promoting transparency and reproducibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It achieves superior zero-shot performance compared to other 7B parameter LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model adheres to the Model Openness Framework (MOF), setting a new standard for open science in AI research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces **Moxin 7B**, a fully open-source LLM that addresses the critical issue of transparency and reproducibility in the field.  By adhering to the Model Openness Framework (MOF), it provides a valuable resource for research and allows for easier customization and deployment. The superior zero-shot performance compared to other 7B models further highlights its significance. This work also promotes open science practices and encourages further innovation within the open-source LLM community.

------
#### Visual Insights





{{< table-caption >}}
| Parameter | Value |
|---|---| 
| n_layers | 36 |
| dim | 4096 |
| head_dim | 128 |
| hidden_dim | 14336 |
| n_heads | 32 |
| n_kv_heads | 8 |{{< /table-caption >}}

> 🔼 This table details the hyperparameters used in the architecture of the Moxin 7B model.  It shows the values set for key parameters that define the model's structure and behavior, including the number of layers, dimensions, head dimensions, hidden dimensions, and number of heads. These parameters are crucial for understanding the model's complexity and computational requirements.
> <details>
> <summary>read the caption</summary>
> Table 1: Parameter setting.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.06845/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.06845/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}