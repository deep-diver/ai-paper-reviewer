---
title: "Patience Is The Key to Large Language Model Reasoning"
summary: "Boosting Large Language Model (LLM) reasoning without massive datasets: A novel training method encourages 'patient' reasoning, improving accuracy by up to 6.7% on benchmark tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2024-11-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.13082 {{< /keyword >}}
{{< keyword icon="writer" >}} Yijiong Yu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.13082" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.13082" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/patience-is-the-key-to-large-language-model" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.13082/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often prioritize speed over accuracy, especially in complex tasks like mathematical problem-solving.  Existing methods to improve reasoning usually involve extensive and costly training data. This limits their practical application. The current research identifies the importance of  **'patient reasoning'** - allowing more time for the model to carefully consider a problem before giving a response - as a key factor impacting LLM performance. 

The study proposes a novel training method to address this. Instead of creating new complex datasets, it uses a simple preference optimization approach.  This involves training the model to favor more detailed reasoning steps by presenting examples of thorough solutions as 'positive' and concise solutions as 'negative'.  The result demonstrates a substantial increase in performance in math problem-solving benchmarks, showing that the **'patient' LLM strategy is effective**. This offers a more cost-effective way to improve LLM reasoning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A simple training method significantly improves LLM reasoning by prioritizing detailed responses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method enhances accuracy in mathematical problem-solving without needing extensive new data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach achieves a performance increase on benchmark tasks while remaining computationally feasible. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it offers a simple yet effective solution to improve large language models' reasoning abilities.  **It challenges the common practice of prioritizing speed over accuracy in LLM inference, demonstrating that encouraging 'patient' reasoning through a novel training approach significantly enhances performance**. This work opens new avenues for enhancing LLMs without relying on expensive, large-scale datasets, making it highly relevant to current research trends focusing on improving LLM reasoning and efficiency.

------
#### Visual Insights



![](https://arxiv.org/html/2411.13082/extracted/6012215/patient_dpo.png)

> 🔼 This figure illustrates the workflow of the proposed method. It starts with collecting mathematical problems and generating initial solutions using an LLM.  These solutions are then refined by prompting the LLM to provide more detailed and patient reasoning steps, creating positive examples.  Concurrently, the concise original solutions serve as negative examples.  These positive and negative examples are used in a preference optimization process (DPO) to fine-tune a base language model. The ultimate goal is to train the model to favor more thorough and elaborate reasoning processes when solving problems.
> <details>
> <summary>read the caption</summary>
> Figure 1: The overall process of our methods.
> </details>





{{< table-caption >}}
| Method | gsm8k | math | time |
|---|---|---|---|
| baseline | 81.2 | 48.8 | 7.2 |
| ours | 87.9 | 49.0 | 10.9 |{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of a baseline language model and a model enhanced by the proposed method.  The comparison is done across two benchmark datasets (gsm8k and MATH), showing both accuracy percentages and average inference time (in seconds).  This allows for an evaluation of the trade-off between improved accuracy and increased processing time resulting from the optimization technique.
> <details>
> <summary>read the caption</summary>
> Table 1: The accuracy (%) and the average time consumption (seconds) of the based model and the model optimized by out methods on gsm8k and MATH.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.13082/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13082/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13082/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13082/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13082/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}