---
title: "Scaling Diffusion Language Models via Adaptation from Autoregressive Models"
summary: "This paper presents a novel method for efficiently scaling diffusion language models (DLMs) by adapting pre-trained autoregressive language models.  The proposed technique, which unifies the modeling ....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This paper presents a novel method for efficiently scaling diffusion language models (DLMs) by adapting pre-trained autoregressive language models.  The proposed technique, which unifies the modeling objectives and addresses architectural differences between AR and diffusion models, successfully creates competitive DLMs across multiple benchmarks. The authors release a suite of open-source DLMs, furthering research and development in this area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17891" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper is important because it introduces a novel method for scaling up diffusion language models (DLMs) by adapting pre-trained autoregressive language models (AR LMs), addressing the challenge of training DLMs from scratch at scale.  The proposed approach bridges the gap between AR and diffusion modeling objectives, leading to competitive performance on various benchmarks.  This work also contributes a suite of open-source DLMs for further research and development.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Adapting pre-trained AR LMs to build DLMs is efficient and effective, outperforming previous smaller-scale DLMs and being competitive with AR LMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A continual pre-training approach using less than 200B tokens successfully converts AR models of various sizes into DLMs, demonstrating scalability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The released open-source DLMs exhibit strong capabilities in text generation, in-context learning, and infilling, demonstrating the potential of this adaptation approach. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png "🔼 The overview of our approach to adapt autoregressive (AR) models to diffusion models. Left: The shift operation in AR models enables the output layer hi to approximate the distribution of next tokens Xi+1 in hidden representations through the cross entropy (CE) loss. Middle: We remove the causal mask gradually during training eventually making our model bi-directional. Right: inside the diffusion models we shift the logits to compute the loss with the next token (i.e., the loss on hi would be with respect to xi+1), while perceptually, the diffusion models are still functioning as recovering the original signals (since hi corresponds to xi+1 in AR loss).")





{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
| Algorithm 1 Adaptation Training | Algorithm 1 Adaptation Training | Algorithm 2 Sampling |
| --- | --- | --- |
| 1: | Input: network f⌀ initialized by existing models, training corpus Pdata (x1⌀n ), mask token m. | 1: Input: Trained diffusion model f⌀, sampling al- gorithm T, mask token m, start token S. |
| 2: | Output: model parameters 0. | 2: Output: generated sample X⌀. |
| 3: | repeat | 3: Initialize x1in = m. |
| 4: | Draw x1⌀n ~ Pdata and set labels ← xJ:N | 4: for t = T, · · · , do 1 |
| 5: | Sample t E Uniform(0, 1) | 5: Forward logits ← f⌀(x1:N) |
| 6: | Sample x1:N ~ q(xt|xo) | 6: Sample ⌀1:N ~ Categorical(T (logits)) |
| 7: | Anneal the attention mask attn_mask | 7: for n = 1, · · · , N do |
| 8: | Forward logits ← f⌀ (x1in) with attn_mask | 8: xt-1 = q(xt-1|x7, x⌀ ) ▷ Eq.4 |
| 9: | Right shift logits by one position | 9: end for |
| 10: | Lt = 1/8xt,m CE(logits, labels) ▷ Eq.7 | 10: Right shift x1iN = [s, x]=1] |
| 11: | Backprop with Lt and update 0 | 11: end for |
| 12: | until end training | 12: Return x2⌀n |
{{< /table-caption >}}


------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
| Model | Size | Type | QA TriQA | Word Lamb. | HSwag | CommonSense Wino. | SIQA | Reasoning PIQA | Math GSM8K* | Infilling ROCStories | Code |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| GPT2-S | 127M | AR | 4.0 | 25.9 | 29.9 | 48.5 | 35.7 | 62.1 | 44.8 | (7.8/0.8/7.4) | (1.6) |
| SEDD-S | 170M | DD | 1.5 | 12.4 | 30.2 | 50.1 | 34.4 | 55.6 | 45.3 | 11.9/0.7/10.9 | 0.7 |
| DiffuGPT-S | 127M | DD | 2.0 | 45.0 | 33.4 | 50.8 | 37.0 | 57.7 | 50.2 | 13.7/1.4/12.6 | 0.3 |
| GPT2-M | 355M | AR | 6.7 | 37.7 | 38.3 | 50.7 | 37.7 | 67.4 | 45.6 | (8.6/0.9/8.2) | (2.6) |
| SEDD-M | 424M | DD | 1.8 | 23.1 | 31.5 | 49.0 | 35.4 | 56.1 | 53.5 | 13.1/1.4/12.2 | 0.5 |
| DiffuGPT-M | 355M | DD | 3.8 | 60.5 | 37.2 | 52.6 | 39.0 | 59.6 | 61.8 | 18.7/2.7/17.0 | 2.9 |
| Plaid1B | 1.3B | CD | 1.2 | 8.6 | 39.3 | 51.3 | 32.3 | 54.5 | 32.6 | 12.1/1.1/11.2 | 0.1 |
| LLaMA2 | 7B | AR | 45.4 | 68.8 | 74.9 | 67.1 | 44.8 | 78.3 | 58.6 | (11.6/2.1/10.5) | (1.7) |
| DiffuLLaMA | 7B | DD | 18.5 | 70.9 | 58.7 | 56.4 | 43.2 | 63.3 | 63.1 | 23.3/5.5/21.2 | 15.5 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
| Models | MAWPS | SATMath | TriviaQA |
| --- | --- | --- | --- |
| LLaMA2 | 63.5 | 24.5 | 45.4 |
| DiffuLLaMA-ZS | 9.7 | <1 | 18.5 |
| DiffuLLaMA-FS | 31.3 | 23.6 | 20.9 |
| DiffuLLaMA-SC | 33.1 | 27.7 | 26.0 |
| DiffuLLaMA-@k | 40.8 | 57.7 | 34.1 |
| DiffuLLaMA-CoT | 28.7 | 9.5 | - |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
|  |  | GPT2-S GPT2-M |
| --- | --- | --- |
|  | 44.8 | 45.6 |
|  | 19.2 | 20.2 |
|  | 33.5 | 34.5 |
|  | 43.3 | 47.2 |
|  | 45.4 | 49.7 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
| Models | Training steps | Global batch size | Context length |
| --- | --- | --- | --- |
| SEDD (Lou et al., 2024) | 400k | 512 | 1024 |
| MD4 (Shi et al., 2024) | 1000k | 512 | 1024 |
| DiffuGPT-S | 1000k | 256 | 512 |
| DiffuGPT-M | 160k | 1280 | 1024 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comprehensive evaluation of different diffusion language models and the same scale pre-trained autoregressive models. There are 3 types of these models: AR for autoregressive, DD for discrete diffusion and CD for continuous diffusion. For the infilling task, we use ROUGE-1/2/L score; for other tasks, we use the accuracy (%) metric. * indicates we finetune GSM8K on models; other tasks are all in zero-shot setting. Numbers in the () indicate that AR models are only given prefix for infilling tasks. We bold the best performance among diffusion language models and underline results that surpass their base models." >}}
| Length | Attention | DiffuLLaMA (sec) | LLaMA (sec) |
| --- | --- | --- | --- |
| 512 | flash-attention 2 | 12.5 | 9.2 |
| 1024 | SDPA | 13.2 | 16.3 |
| 1024 | flash-attention 2 | 13.3 | 17.5 |
| 1024 | vanilla | 16.2 | 17.2 |
| 2048 | SDPA | 28.5 | 29.5 |
| 2048 | flash-attention 2 | 23.5 | 35.7 |
| 2048 | vanilla | 38.1 | 32.8 |
{{< /table-caption >}}


</details>

------

