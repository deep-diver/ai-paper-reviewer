---
title: "SepLLM: Accelerate Large Language Models by Compressing One Segment into One Separator"
summary: "SepLLM shrinks LLMs, speeding them up by over 50% without losing much accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Huawei Noah's Ark Lab",]
showSummary: true
date: 2024-12-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.12094 {{< /keyword >}}
{{< keyword icon="writer" >}} Guoxuan Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.12094" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.12094" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/sepllm-accelerate-large-language-models-by" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.12094/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large language models (LLMs) excel in many tasks but their size makes them slow and expensive to run**. Their attention mechanism, which processes relationships between words, has quadratic complexity, meaning the cost grows rapidly with input length. This limits LLMs' use, especially with longer texts. Existing attempts to make LLMs more efficient often sacrifice accuracy or aren't easily adaptable for training new models.



SepLLM, leverages a key observation: separator tokens (like commas and periods) hold compressed segment information. It accelerates LLMs by having tokens attend only to separators, nearby tokens, and initial tokens. This **sparse attention** allows for over 50% reduction in KV cache usage while maintaining performance. Unlike prior work, SepLLM is implemented for both training and inference, even in streaming settings processing very long sequences. This makes it **more compatible with existing training procedures and hardware, promoting wider adoption**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SepLLM accelerates LLMs by compressing information into separator tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It maintains accuracy while significantly reducing computational costs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SepLLM is effective in both training and inference settings, including streaming applications of up to 4M tokens {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Large language models (LLMs) are powerful but computationally expensive**. This work offers a solution by reducing the computational needs for these models. This is important because it could broaden access to and use of LLMs by lowering the resources needed to use them. By making LLMs more efficient, it might encourage more innovation in how these models are used in various fields.

------
#### Visual Insights



![](https://arxiv.org/html/2412.12094/x3.png)

> 🔼 This figure compares the training loss of the proposed SepLLM architecture against a standard Transformer model.  The x-axes represent both computational cost (TFLOPS) and training time (seconds). The y-axis represents the training loss. The results demonstrate that SepLLM consistently achieves a lower training loss for a given computational budget and trains faster to reach the same loss as the baseline Transformer.  Specifically, it shows around 2.60 loss for SepLLM compared to 2.70 for Vanilla Transformer at roughly 0.5 * 10^9 TFLOPS. Similar results can be observed when considering training time with 2.42 loss for SepLLM vs 2.60 loss for Vanilla Transformer at 100,000 seconds of training.
> <details>
> <summary>read the caption</summary>
> Figure 1: The loss comparison between vanilla Transformer and proposed SepLLM. SepLLM achieves lower loss at different computation costs and different training time consistently.
> </details>





{{< table-caption >}}
|         | GSM8K-CoT |       |   | MMLU |        |       |        |       |
| :------ | :-------- | :---- | :- | :---- | :---- | :---- | :---- | :---- |
|         | flexible  | strict | r.KV(%) | humanities | stem | social | other | Overall |
| Vanilla | 77.79     | 77.26  | 100.00 | 60.49 | 56.61 | 76.50 | 72.19 | 65.72 |
| StrmLLM (*n*=380) | 70.89 | 71.42 | 47.54 | 57.73 | 54.46 | 74.39 | 70.13 | 63.39 |
| StrmLLM (*n*=256) | 69.67 | 68.61 | 26.00 | 62.10 | 54.49 | 73.06 | 69.78 | 62.10 |
| SepLLM (*n*=256) | 77.18 | 77.18 | 47.36 | 57.66 | 56.49 | 76.21 | 72.19 | 64.68 |{{< /table-caption >}}

> 🔼 This table presents the evaluation results of different large language models (LLMs) on two benchmark datasets, GSM8K-CoT (8-shot) and MMLU (5-shot), in a training-free setting.  The models compared are a vanilla Transformer, StreamingLLM, and SepLLM.  The table shows the model performance on each dataset, along with the percentage of key-value (KV) cache usage relative to the vanilla Transformer (r.KV%).  Lower KV cache usage indicates better efficiency.  For SepLLM and StreamingLLM, the KV cache of the first three tokens are always kept.  This table demonstrates the effectiveness of SepLLM in reducing KV cache usage while maintaining performance comparable to the vanilla Transformer.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results and average running time KV cache usage for training-free experiments on GSM8K-CoT 8-shots and MMLU 5-shots. For SepLLM and StreamingLLM, three initial tokens’ KV is kept for this experiment. r.KV(%) here represents the ratio of KV usage at runtime for the respective method compared to Vanilla.
> </details>





### In-depth insights


#### LLM Attention Bias
**LLM attention bias** refers to the tendency of large language models to disproportionately focus on certain tokens during processing.  This bias can arise from various factors, including **model architecture, training data, and specific input sequences**. One common bias is towards **separator tokens** like commas or periods, potentially stemming from their role in segmenting text.  While separators may appear semantically less important, they often provide structural context crucial for understanding.  Another observed bias is towards **initial tokens**, often referred to as attention sinks, which can capture important contextual information early in the sequence.  Understanding and mitigating these biases is essential for **improving LLM performance, interpretability, and efficiency**.

#### SepLLM Framework
The SepLLM framework introduces an innovative approach to **accelerate Large Language Models (LLMs)**. It leverages the observation that separator tokens (e.g., commas, periods) capture significant segment information. By prioritizing attention to these separators alongside initial and neighboring tokens, SepLLM reduces computational demands. This targeted attention mechanism allows for **compressing segment information into separators**, minimizing redundancy.  The framework demonstrates efficacy in various settings, including training-free, from-scratch, and post-training scenarios. Notably, it achieves **substantial KV cache reduction** while maintaining performance.  Furthermore, its tailored streaming design efficiently handles long sequences, making it promising for applications requiring extended context processing, such as **multi-turn dialogues and story generation**.

#### Sparse Attention in Training
**Sparse attention** methods, vital for efficient training of large language models, strategically limit attention computations. Unlike dense attention, where every token attends to all others, sparse attention focuses on a **subset of relevant tokens**, reducing computational overhead from quadratic to linear. Various techniques achieve sparsity, such as fixed patterns (local, global, or random attention) or learned through data-dependent approaches. Integrating sparse attention in training enhances scalability and efficiency, especially for long sequences.  It allows for processing **longer texts and larger models** within computational limits, potentially improving performance.  However, care must be taken to mitigate **information loss** from sparsity through thoughtful mechanism design and parameter tuning.  Research on dynamic sparse attention patterns holds promise for further optimizing this balance.

#### Streaming for LLMs
**Streaming LLMs** tackle the challenge of processing **infinitely long sequences**, crucial for applications like **multi-turn dialogues**.  Traditional LLMs struggle with memory limitations for extended contexts. SepLLM, with its **Tailored Streaming Design**, offers a solution. It leverages a dynamic KV cache with separate stores for initial tokens, separators, and local windows.  This allows efficient retention of crucial information while discarding less relevant older tokens. By compressing segment information into separators, SepLLM maintains performance comparable to full-attention models, even with a much smaller KV cache.  This approach is particularly effective for long sequences, as demonstrated by lower perplexity and faster inference times compared to alternative streaming methods.

#### Separator Token Analysis
**Separator tokens** like commas, periods, or newlines, often overlooked, play a **crucial role** in LLMs.  They act as **information anchors**, receiving higher attention weights than semantically meaningful words. This suggests these tokens effectively **compress segment information**, enabling efficient retrieval without relying on specific content words.  Masking experiments on pre-trained LLMs confirm separators' importance, revealing performance degradation upon removal.  This reinforces the idea that separators delineate segments and act as **information hubs**.  SepLLM leverages this by prioritizing attention to these tokens, leading to significant acceleration while maintaining comparable performance. This points towards a future where seemingly insignificant tokens become vital for efficient language processing.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.12094/x4.png)

> 🔼 This figure visualizes the attention scores within a Llama-3-8B-instruct model across different layers, given the example input 'Natalia sold clips to 48 of her friends in April, and then she sold half as many clips in May…'. It highlights the observation that separator tokens (e.g., commas, periods) receive disproportionately high attention scores compared to other semantically meaningful tokens. This suggests that information about the segments between separators is effectively compressed into the separators themselves.
> <details>
> <summary>read the caption</summary>
> Figure 2: The visualization of attention scores among different layers given the input “Natalia sold clips to 48 of her friends in April, and then she sold half as many clips in May. …”. Note that the separator tokens like “,” and “.” contribute massive attentions.
> </details>



![](https://arxiv.org/html/2412.12094/x5.png)

> 🔼 SepLLM's overall paradigm is visualized in this figure. During training or pre-filling, the attention mask (left side) determines which tokens are attended to. For the given input “ABC,DE.FG ”, only the initial tokens (A, B), separator tokens (',', '.', ' '), and neighboring tokens (based on distance to the current token, denoted as 'n') are considered. Other tokens are masked.  The right side illustrates how the key-value (KV) cache is managed during generation. Only the KV pairs corresponding to the initial, separator, and neighboring tokens are retained in the cache, leading to a significantly smaller KV cache compared to the standard Transformer.
> <details>
> <summary>read the caption</summary>
> Figure 3: The overall paradigm of SepLLM. The left side illustrates the attention mask in the training or pre-filling stage given the input “ABC,DE.FG\n\absent𝑛\backslash n\ italic_n”. The right side illustrates the KV cache management in the generation stage.
> </details>



![](https://arxiv.org/html/2412.12094/x6.png)

> 🔼 SepLLM's framework for handling streaming data, showing its four cache blocks (Initial, Separator, Past Window, and Local Window) and how KV pairs are managed across iterations.  When the total cache usage hits maximum capacity, separator tokens are moved to Separator Cache and others discarded, demonstrating SepLLM's approach to handling infinitely long sequences.
> <details>
> <summary>read the caption</summary>
> Figure 4: Overall framework of the proposed SepLLM tailored for streaming applications. The KV pairs are storaged in four cache blocks (displayed as four columns), and are updated in each iteration (shown in a single row). Once the runtime usage S⁢i⁢z⁢er⁢u⁢n𝑆𝑖𝑧subscript𝑒𝑟𝑢𝑛Size_{run}italic_S italic_i italic_z italic_e start_POSTSUBSCRIPT italic_r italic_u italic_n end_POSTSUBSCRIPT reach the max capacity c, SepLLM move KV caches of separator tokens in Past Window Cache into Separator Cache and drop other KV caches.
> </details>



![](https://arxiv.org/html/2412.12094/x7.png)

> 🔼 This figure shows the training loss curves with respect to training steps for training Pythia-160m-deduped from scratch. 'SepLLM(n=64, H)' indicates that only the first self-attention layer is changed to full-attention while other layers are based on the proposed SepLLM architecture with n=64. 'SepLLM(n=64, H/T)' indicates that both the first and the last self-attention layers are changed to full-attention while other layers are based on the proposed SepLLM architecture with n=64. SepLLM can achieve lower loss compared with Vanilla (original Pythia-160m-deduped with full-attention) and StrmLLM(n=64) during the training process. 
> <details>
> <summary>read the caption</summary>
> (a) Loss w.r.t steps
> </details>



![](https://arxiv.org/html/2412.12094/x8.png)

> 🔼 This plot showcases the ratio of training loss for different models (SepLLM variants, StrmLLM, and Vanilla Transformer) compared to the Vanilla Transformer's loss, plotted against the computational cost (measured in FLOPs). It demonstrates the relative performance efficiency of each model by illustrating how much loss reduction they achieve for a given computational budget.
> <details>
> <summary>read the caption</summary>
> (b) Loss Ratio w.r.t FLOPs
> </details>



![](https://arxiv.org/html/2412.12094/x10.png)

> 🔼 This figure presents training loss curves, comparing the performance of different models (including Vanilla, StrmLLM, and SepLLM variations) with respect to the number of training iterations and FLOPs.  Subfigure (b) specifically highlights the loss ratio of the other methods relative to Vanilla as FLOPs increases, demonstrating SepLLM's efficiency in achieving a lower loss than Vanilla with similar compute.
> <details>
> <summary>read the caption</summary>
> Figure 5: Training loss curves for training from scratch. 5(b) shows the ratio of the loss values of different methods to that of Vanilla with respect to FLOPs.
> </details>



![](https://arxiv.org/html/2412.12094/x11.png)

> 🔼 This figure shows the training loss curves during the post-training phase of SepLLM with different settings of neighboring tokens (n) and learning rates.  SepLLM (n=64, larger lr) uses a cosine learning rate scheduler with warm-up starting from scratch, while SepLLM (n=64) and SepLLM (n=128) continue the cosine decay from the existing checkpoint.  The graph demonstrates that increasing n and using a larger learning rate can lead to faster convergence (lower loss) during post-training.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training loss curves for the post-training.
> </details>



![](https://arxiv.org/html/2412.12094/x12.png)

> 🔼 This figure visualizes the evolution of key-value (KV) caches in a streaming setting. It demonstrates how the number of neighboring tokens (n) and the total runtime KV cache usage (Sizerun) change over time (m). Both n and Sizerun exhibit periodic behavior after a certain point (m0), indicating a dynamic pattern in cache management during streaming sequence generation.  The figure also highlights key parameters like maximum capacity (c), initial cache size (a), separator cache size (s), and local window cache size (w). It visually explains how these parameters influence the periodic behavior of KV cache usage.
> <details>
> <summary>read the caption</summary>
> Figure 7: The evolution of KV caches in the streaming setting.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | ARC-c | ARC-e | LBD-ppl | LBD-acc | LogiQA | PIQA | SciQ | Attn(%) | r.KV(%) |
|---|---|---|---|---|---|---|---|---|---|
| Vanilla | 20.14 | 46.80 | 34.83 | 33.28 | 23.81 | 62.84 | 81.50 | 100.00 | 100.00 |
| StrmLLM(*n*=64) | 20.65 | 47.39 | 44.03 | 26.74 | 21.97 | 63.82 | 75.80 | 16.58 | 15.28 |
| SepLLM(*n*=64) | 19.62 | 46.46 | 40.08 | 28.97 | 26.42 | 63.82 | 80.10 | 25.83 | 25.40 |
| SepLLM(*n*=128) | 19.97 | 47.35 | 30.16 | 33.18 | 22.73 | 64.64 | 82.60 | 35.64 | 32.27 |
| SepLLM(*n*=64,H) | 20.73 | 48.44 | 36.54 | 30.45 | 25.35 | 64.36 | 80.60 | 32.01 | 31.58 |
| SepLLM(*n*=64,H/T) | 21.42 | 47.26 | 33.41 | 32.80 | 22.73 | 63.98 | 81.20 | 38.18 | 37.75 |{{< /table-caption >}}
> 🔼 This table presents the performance of different models on various downstream tasks, including ARC-Challenge, ARC-Easy, LAMBADA (perplexity and accuracy), LogiQA, PIQA, and SciQ. It also shows the percentage of attention used (Attn) and the ratio of key-value cache usage at runtime compared to the vanilla transformer model (r.KV) in a training-from-scratch scenario.
> <details>
> <summary>read the caption</summary>
> Table 2: The performance of downstream tasks and the usage of running-time KV cache in the training from scratch setting.
> </details>

{{< table-caption >}}
| Arch. | StrmLLM | SepLLM |     |   |   | Vanilla |
|---|---|---|---|---|---|---| 
| Setting | n=64 | n=64 | n=128 | n=64,H | n=64,H/T | full |
| FLOPs(%) | 70.11 | 71.77 | 72.58 | 72.83 | 73.90 | 100.0 |
| Attn.(%) | 6.43 | 17.21 | 22.48 | 24.11 | 31.01 | 100.0 |{{< /table-caption >}}
> 🔼 This table shows the comparison of the Floating Point Operations (FLOPs) and the Attention Map Ratio for different model configurations during training from scratch. The Attention Map Ratio represents the proportion of '1's in the lower triangular part of the attention mask matrix, which is an indicator of the sparsity of the attention mechanism.  Lower FLOPs and Attention Map Ratio indicate higher computational efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: The comparison of FLOPs and Attention Map Ratio.
> </details>

{{< table-caption >}}
| PG19 | 1M | 1.5M | 2M | 2.5M | 3M | 3.5M | 4M |
|---|---|---|---|---|---|---|---| 
| **StrmLLM** | 39.5 | 38.2 | 38.3 | 37.6 | 36.4 | 35.8 | 36.1 |
| SepLLM (*s*=32) | 37.7 | 36.6 | 36.6 | 36.0 | 34.9 | 34.2 | 34.5 |
| SepLLM (*s*=64) | 37.1 | 36.0 | 36.1 | 35.4 | 34.3 | 33.7 | 33.9 |{{< /table-caption >}}
> 🔼 This table compares the perplexity of StreamingLLM and SepLLM on the PG19 test set across different context lengths (1 million to 4 million tokens). The KV cache capacity (c) is kept constant at 324, and the Sink Cache size (a) is kept constant at 4 for fair comparison between the two models. The results show that SepLLM consistently outperforms StreamingLLM in terms of perplexity across all tested context lengths while keeping the sink cache size (a) and max KV capacity (c) the same. 
> <details>
> <summary>read the caption</summary>
> Table 4: The perplexity comparison on the PG19 test set (Rae et al., 2020). For fair evaluation, we keep the KV cache capacity c as 324 and keep Sink Cache a as 4 for both StreamingLLM and SepLLM.
> </details>

{{< table-caption >}}
| Length | Methods | _c_ | r.KV | ppl | time (s) |
|---|---|---|---|---|---| 
| 20K | Vanilla | 20K | 10K | 302.6 | 523.8 |
| | StrmLLM | 800 | 800 | 31.5 | 341.2 |
| | SepLLM | 800 | 562 | 28.3 | 325.8 |
| 64K | Vanilla | 64K | 32K | 1090.8 | 3380.6 |
| | StrmLLM | 800 | 800 | 37.9 | 1096.0 |
| | SepLLM | 800 | 562 | 33.4 | 1049.7 |{{< /table-caption >}}
> 🔼 This table presents a comparison of perplexity and runtime performance between vanilla, StreamingLLM, and SepLLM on the PG19 test set. The 'r.KV' column represents the average runtime key-value cache usage during sequence generation. Lower perplexity values indicate better language modeling performance, while shorter runtimes indicate faster inference speed. Different sequence lengths and KV cache capacities are examined. 
> <details>
> <summary>read the caption</summary>
> Table 5: The perplexity and runing time comparison on the PG19 test set (Rae et al., 2020). r.KV means the average runtime KV cache usage in the generation process.
> </details>

{{< table-caption >}}
| *s* | 5K | 10K | 15K | 20K | r.KV |
|---|---|---|---|---|---| 
| 32 | 13.11 | 11.31 | 8.74 | 8.79 | 292 |
| 48 | 13.03 | 11.26 | 8.70 | 8.76 | 300 |
| 64 | 13.01 | 11.17 | 8.67 | 8.72 | 308 |{{< /table-caption >}}
> 🔼 This table presents the perplexity and average runtime key-value (KV) cache usage of the SepLLM model on the WikiText language modeling benchmark. The table explores the impact of varying the Separator Cache size (s), which stores the compressed representations of segments in the input text. Other hyperparameters are fixed: a=4 (Initial Cache size), w=224 (Local Window Cache size), and c=324 (total KV cache capacity).  The goal is to understand how the Separator Cache size affects performance and resource usage during inference.
> <details>
> <summary>read the caption</summary>
> Table 6: The perplexity and average runtime KV cache usage of SepLLM with respect to different Separator Cache sizes (s) on WikiText (Merity et al., 2017), in which a=4, w=224, c=324.
> </details>

{{< table-caption >}}
| Method | *w* | *c* | r.KV | 5K | 10K | 15K | 20K |
|---|---|---|---|---|---|---|---|
| | 320 | 324 | 324 | 13.18 | 11.51 | 8.85 | 8.91 |
| StrmLLM | 512 | 516 | 516 | 12.87 | 11.37 | 8.74 | 8.78 |
| | 796 | 800 | 800 | 11.96 | 11.01 | 8.67 | 8.72 |
| | 224 | 324 | 308 | 13.01 | 11.17 | 8.67 | 8.72 |
| SepLLM | 320 | 516 | 452 | 12.91 | 11.26 | 8.67 | 8.72 |
| | 512 | 800 | 690 | 12.09 | 11.03 | 8.56 | 8.62 |{{< /table-caption >}}
> 🔼 This table presents the average perplexity scores (ppl) and runtime key-value (KV) cache usage of different models on the WikiText language modeling benchmark. Specifically, it compares a standard Transformer model (Vanilla) with StreamingLLM and the proposed SepLLM under various hyperparameter settings for context window size (c), local window size (w), and initial cache size (a). The table explores the impact of these parameters on perplexity across different input lengths (5K, 10K, 15K, and 20K tokens).  The values of 'a' and 's' are fixed to 4 and 64 respectively for a controlled comparison across different values of 'c' and 'w'.
> <details>
> <summary>read the caption</summary>
> Table 7: Average downstream performance (ppl) over different input lengths and average runtime KV usage with different c,w on WikiText, in which a=4 for both methods and s=64 for SepLLM.
> </details>

{{< table-caption >}}
| Method | initial | shift | 5K | 10K | 15K | 20K | r.KV |
|---|---|---|---|---|---|---|---| 
| StrmLLM | ✓ | ✓ | 13.2 | 11.5 | 8.9 | 8.9 | 324 |
| StrmLLM | ✗ | ✓ | 14.6 | 13.2 | 10.8 | 10.9 | 324 |
| StrmLLM | ✓ | ✗ | 425.5 | 513.1 | 509.5 | 506.8 | 324 |
| StrmLLM | ✗ | ✗ | 409.4 | 540.5 | 527.5 | 558.2 | 324 |
| SepLLM | ✓ | ✓ | 13.1 | 11.3 | 8.7 | 8.8 | 292 |
| SepLLM | ✗ | ✓ | 14.9 | 14.3 | 12.4 | 12.5 | 290 |
| SepLLM | ✓ | ✗ | 192.7 | 214.6 | 175.0 | 174.4 | 292 |
| SepLLM | ✗ | ✗ | 226.4 | 264.7 | 227.5 | 228.8 | 290 |{{< /table-caption >}}
> 🔼 This table compares the perplexity and average runtime KV cache usage of two models, SepLLM and StreamingLLM, on the WikiText language modeling benchmark. Various configurations of initial cache size (a) and positional encoding shifting are tested, with c (maximum KV cache capacity) fixed at 324, s (Separator Cache capacity) at 32, and w (Local Window Cache capacity) at 224 for SepLLM.
> <details>
> <summary>read the caption</summary>
> Table 8:  The perplexity and average runtime KV cache usage of SepLLM and StreamingLLM tested on WikiText (Merity et al., 2017). c=324, a=0/4 for both methods. s=32,w=224 for SepLLM
> </details>

{{< table-caption >}}
|                      | Vanilla (Full Attention) | SepLLM (n=64) | SepLLM (n=128) |
|----------------------|--------------------------|-----------------|------------------|
| time per iteration (ms) | 2524.45                 | 1648.11        | 1653.11         |
| samples / second      | 405.82                  | 622.31         | 620.3          |{{< /table-caption >}}
> 🔼 This table compares the training speed of a standard Transformer model (Vanilla, using full attention) with the proposed SepLLM model using two different settings (n=64 and n=128).  It measures and reports the wall-clock time per training iteration and the throughput (samples processed per second) to demonstrate the acceleration achieved by SepLLM during the training process.  The table shows that SepLLM significantly reduces the training time per iteration, leading to higher throughput.
> <details>
> <summary>read the caption</summary>
> Table 9: The details about training acceleration.
> </details>

{{< table-caption >}}
| Backbone | Arch. | _c_ | r.KV | ppl | time(s) |
|---|---|---|---|---|---| 
| | Vanilla | 64K | 32K | 1037.6 | 4160.7 |
| Pythia-6.9B | StrmLLM | 800 | 800 | 15.9 | 1522.6 |
| | SepLLM | 800 | 562 | 15.8 | 1456.0 |
| | Vanilla | 64K | 32K | 1090.8 | 3380.6 |
| Llama-3-8B | StrmLLM | 800 | 800 | 37.9 | 1096.0 |
| | SepLLM | 800 | 562 | 33.4 | 1049.7 |{{< /table-caption >}}
> 🔼 This table compares the performance of SepLLM and StreamingLLM with the vanilla LLaMA 3 and Pythia 6.9B models on the PG19 dataset, generating 64K tokens. The table shows the perplexity and inference time for each model and architecture, with different cache sizes (c) and runtime key-value usage (r.KV).
> <details>
> <summary>read the caption</summary>
> Table 10: The comparison of SepLLM adapted to different architectures.
> </details>

{{< table-caption >}}
| Backbone | *a* | *s* | *w* | *c* | r.KV | ppl | time(s) |
|---|---|---|---|---|---|---|---|
| | 4 | 64 | 256 | 800 | 562 | 13.0 | 445.0 |
| Pythia-6.9B | 4 | 64 | 800 | 1024 | 946 | 12.7 | 450.4 |
| | 4 | 64 | 928 | 1280 | 1138 | 12.7 | 454.4 |
| Pythia-12B | 4 | 64 | 256 | 800 | 562 | 12.1 | 577.0 |{{< /table-caption >}}
> 🔼 This table compares the performance of SepLLM when adapted to different scales of the Pythia model family (6.9B and 12B parameters) on the PG19 dataset, generating 20K tokens. It shows the impact of model scale and KV cache capacity on perplexity and inference time.
> <details>
> <summary>read the caption</summary>
> Table 11: The comparison of SepLLM adapted to Pythia (Biderman et al., 2023) with different scales.
> </details>

{{< table-caption >}}
| Length | Methods | _c_ | r.KV | ppl | time (s) |
|---|---|---|---|---|---| 
| 20K | StrmLLM | 1024 | 1024 | 8.98 | 1512.88 |
| 20K | StrmLLM | 800 | 800 | 9.02 | 1430.59 |
| 20K | SepLLM | 1024 | 906 | 8.92 | 1440.89 |
| 20K | SepLLM | 800 | 690 | 9.00 | 1368.07 |
| 64K | StrmLLM | 1024 | 1024 | 11.01 | 4844.79 |
| 64K | StrmLLM | 800 | 800 | 11.09 | 4623.90 |
| 64K | SepLLM | 1024 | 906 | 10.96 | 4619.63 |
| 64K | SepLLM | 800 | 690 | 11.07 | 4414.72 |{{< /table-caption >}}
> 🔼 This table compares the performance of StreamingLLM and SepLLM, adapted to the Falcon-40B architecture, on generating different lengths of text (20K and 64K tokens). The metrics used for comparison include average runtime KV cache usage (r.KV), perplexity (ppl), and inference time (time(s)). The comparison aims to show the efficiency and performance benefits of SepLLM in handling long text generation with a constrained KV cache size.
> <details>
> <summary>read the caption</summary>
> Table 12: The comparison of SepLLM adapted to Falcon-40B (Almazrouei et al., 2023).
> </details>

{{< table-caption >}}
| Backbone | Algorithm | GSM8K-CoT | r.KV (%) |
|---|---|---|---| 
| Base | Vanilla | 54.44 | 100 |
|  | SepLLM ft. | 55.95 | 47.36 |
| Instruct | Vanilla | 77.26 | 100 |
|  | SepLLM ft. | 77.63 | 47.36 |{{< /table-caption >}}
> 🔼 This table compares the performance of the SepLLM architecture adapted to two versions of the Llama-3-8B model: the base model and the instruction-tuned (instruct) version. It evaluates their performance on the GSM8K-CoT benchmark for reasoning ability, both with and without fine-tuning using SepLLM, and also shows the ratio of KV usage at runtime compared to the full attention baseline.
> <details>
> <summary>read the caption</summary>
> Table 13: The comparison of SepLLM adapted to Llama-3-8B (Dubey et al., 2024) with base or instruct versions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.12094/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12094/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}