---
title: "Over-Tokenized Transformer: Vocabulary is Generally Worth Scaling"
summary: "Boosting Large Language Model (LLM) performance, researchers introduce Over-Tokenized Transformers, decoupling input/output vocabularies to improve language modeling. Scaling input vocabularies improv..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Seed-Foundation-Model Team, Bytedance",]
showSummary: true
date: 2025-01-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.16975 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongzhi Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-29 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.16975" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.16975" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.16975/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large language model (LLM) research primarily focuses on scaling model size and training data. However, **tokenization**, the process of converting text into tokens for model processing, remains less explored in the context of scaling laws.  This paper investigates the impact of **vocabulary size** on LLM performance.  Existing research suggests that increasing the vocabulary size can improve performance but also significantly increases the training cost. This paper aims to improve this area by focusing on efficient model scaling while considering vocabulary size as a critical factor. 

This research introduces **Over-Tokenized Transformers**, a novel framework that decouples input and output vocabularies to improve model scalability.  The researchers discover that scaling up the input vocabulary size leads to a **log-linear relationship** between input vocabulary size and training loss.  This means that using a larger input vocabulary consistently improves model performance.  **They achieve performance comparable to using double-sized baselines** with no extra cost.  The findings highlight the importance of tokenization in scaling laws and suggest new approaches for tokenizer design.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Scaling input vocabularies significantly improves LLM performance without increasing training cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Decoupling input and output vocabularies offers greater flexibility and efficiency in model scaling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Tokenization plays a critical role in scaling laws, and careful tokenizer design is crucial for efficient and powerful LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it challenges conventional wisdom in large language model (LLM) development**. By demonstrating the significant impact of tokenization on model scaling and performance, it opens new avenues for research and development of more efficient and powerful LLMs.  The findings are particularly relevant given the current focus on scaling laws and the ongoing quest for better LLM performance.  Researchers can leverage this work to **improve LLM design and training efficiency**, leading to advancements in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2501.16975/x1.png)

> 🔼 This figure displays the scaling trend of Over-Encoded (OE) models compared to baseline models on the OLMo2 dataset.  The x-axis represents the number of dense parameters (log scale), while the y-axis shows the training loss.  Four lines are plotted: a baseline model and three OE models.  The baseline model's loss is shown for models with 151 million, 400 million, and 1 billion parameters. The three OE models represent different increases in input vocabulary size compared to the baseline: OE-1.2M (12x larger), and OE-12.8M (128x larger).  The training data used to generate these results included 400 billion tokens. Notably, the OE-12.8M model with 400 million parameters achieves a loss comparable to that of the baseline model with 1 billion parameters, demonstrating the effect of increased input vocabulary size on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Scaling trend for Over-Encoded models and baselines on OLMo2. We plot the loss with 400B tokens’ training. For over-encoding, input vocabulary size is extended from 0.1 to 1.2 and 12.8 million (12×12\times12 × and 128×128\times128 × larger than baseline), referred to as OE-1.2M and OE-12.8M. We observe OE-12.8M with 400M parameters matches the baseline with 1B parameters.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.2.2.3">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.2.2.2.4"># Emb. P.</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2">Downstream<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.2.3.1.1">OLMoE-1.3B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.2.3.1.2">51M</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.3.1.3">2.554</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.3.1.4">0.510</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.2.4.2.1">+OE-12.8M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T1.2.2.4.2.2">13.1B</th>
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.4.2.3">2.472 <span class="ltx_text" id="S4.T1.2.2.4.2.3.1" style="font-size:70%;color:#0000FF;">-0.082</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.4.2.4">0.524 <span class="ltx_text" id="S4.T1.2.2.4.2.4.1" style="font-size:70%;color:#0000FF;">+0.014</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.2.5.3.1">OLMoE-7B</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.2.2.5.3.2">102M</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.5.3.3">2.305</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.2.2.5.3.4">0.601</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.2.2.6.4.1">+OE-12.8M</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.2.2.6.4.2">26.3B</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.2.2.6.4.3">2.229 <span class="ltx_text" id="S4.T1.2.2.6.4.3.1" style="font-size:70%;color:#0000FF;">-0.076</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.2.2.6.4.4">0.608 <span class="ltx_text" id="S4.T1.2.2.6.4.4.1" style="font-size:70%;color:#0000FF;">+0.007</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of experiments evaluating the impact of Over-Encoding (OE) on Mixture-of-Experts (MoE) models.  Models were trained with 500 billion tokens. The table compares baseline MoE models (OLMOE) with OE-enhanced versions.  Key metrics include training loss, downstream task performance (averaged across MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy, and PIQA), and the number of embedding parameters.  For each OE model, the improvement in the downstream tasks and loss compared to the baseline is highlighted in blue.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of Over-Encoding on MoE architecture with 500B tokens’ training. The column ‘Emb. P.’ represents ‘Embedding Parameters’. ‘Downstream’ stands for the average of MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy, and PIQA. For ‘+OE’ rows, we provide metric difference with blue labels.
> </details>





### In-depth insights


#### Vocab Scaling Laws
The concept of "Vocab Scaling Laws" in the context of large language models (LLMs) explores the relationship between vocabulary size and model performance.  Intuitively, **a larger vocabulary allows the model to capture more nuanced linguistic information, leading to improved performance**. However, simply increasing vocabulary size isn't a straightforward solution.  The paper investigates this complex relationship, uncovering **a log-linear relationship between input vocabulary size and training loss.** This means that increasing the input vocabulary size exponentially results in a linearly decreasing training loss, suggesting significant potential gains from carefully scaling the vocabulary.  However, the impact of expanding output vocabulary is less clear and might even negatively impact smaller models, highlighting **the need for decoupling input and output vocabulary scaling strategies for optimal performance.**  The authors propose "Over-Tokenized Transformers," a novel framework to leverage these scaling laws, emphasizing the importance of tokenizer design as a critical factor in building more efficient and powerful LLMs.  Further research into this area could uncover even more refined strategies for vocabulary scaling and unlock new advancements in LLM architecture and efficiency.

#### Over-Tokenization
The concept of 'over-tokenization' challenges conventional approaches to tokenization in large language models (LLMs).  Instead of relying on standard tokenizers that produce a fixed vocabulary size, **over-tokenization explores the benefits of significantly expanding the input vocabulary**, often using n-grams (sequences of multiple words). This decoupling of input and output vocabularies allows the model to capture richer contextual information, potentially improving performance, especially for larger models.  However, **simply increasing the output vocabulary size isn't always beneficial**, particularly for smaller models, as it can lead to overfitting or increased computational costs. The research highlights a **log-linear relationship between input vocabulary size and training loss**, suggesting that larger input vocabularies consistently lead to performance improvements.  **Efficient techniques are crucial** for managing the computational challenges of very large vocabularies, such as hierarchical encoding and tensor parallelism, which are essential to make over-tokenization practical.  Overall, the findings demonstrate that **vocabulary scaling is a significant factor in LLM performance** and that carefully considered over-tokenization strategies can lead to more efficient and powerful models.

#### OE/OD Decoupling
The core idea of "OE/OD Decoupling" revolves around **separating the input (Over-Encoding or OE) and output (Over-Decoding or OD) vocabulary scaling processes** in transformer models.  Traditionally, both input and output vocabularies are tightly coupled, often increasing in size simultaneously. This paper argues that this approach is suboptimal, as scaling up the output vocabulary leads to significantly higher computational costs, particularly for smaller models. **Decoupling allows for independent optimization of input and output vocabularies**, leveraging the benefits of a larger input vocabulary (OE) which enhances model representation without incurring the cost of a similarly sized output vocabulary.  The findings strongly suggest that scaling up the input vocabulary alone (OE) consistently improves model performance and scaling efficiency, regardless of model size, while scaling up the output vocabulary (OD) might prove detrimental to smaller models.  **This decoupling technique opens a new path towards creating more efficient and powerful LLMs**, offering a new dimension for model scaling exploration, and highlights the previously under-appreciated importance of tokenization in overall model architecture and scaling laws.

#### Engineering OE
Engineering efficient Over-Encoding (OE) is crucial for practical application.  The core challenge lies in handling the massive input vocabulary generated by n-gram tokenization.  **Naive implementations would lead to impractically large embedding tables**, exceeding available GPU memory. The authors cleverly address this by proposing a **tiled matrix parameterization approach**. This method cleverly maps the vast n-gram vocabulary onto a smaller embedding table through a modulo operation, significantly reducing memory footprint.  Furthermore, they introduce **hierarchical encoding**, combining 1-gram and n-gram embeddings to boost performance while managing costs effectively.  **Tensor parallelism** is strategically leveraged to optimize communication overhead during training, especially crucial when using distributed training frameworks like FSDP. The effectiveness of this engineering is demonstrated by the close performance match between the larger baseline model and the significantly smaller OE model, showcasing the potential for enhancing model scalability and efficiency.  **Addressing memory and communication bottlenecks** via smart engineering is critical for making this approach viable.

#### Future of Tokenization
The future of tokenization in large language models (LLMs) is likely to be characterized by a move towards more sophisticated and adaptable methods.  **Beyond simple byte-pair encoding (BPE) or unigram language models, we can expect to see a rise in techniques that leverage the strengths of various approaches.** This might involve hybrid models combining subword tokenization with character-level or word-level approaches, depending on the specific needs of the model and the data it is trained on.  **We might also see increased use of adaptive tokenization, where the tokenizer is trained alongside the model and adjusts its strategy based on the model's performance.** Another promising direction is the exploration of tokenization methods that go beyond simple segmentation, such as those that incorporate information about word morphology, syntax, or semantics.  These advancements would enable LLMs to achieve a better understanding of language structure and context, leading to significant performance improvements.  **Furthermore, research in efficient and scalable tokenization for extremely large models is crucial.  This could involve exploring techniques to reduce the computational cost of tokenization or the memory footprint of vocabulary embeddings.** The future of tokenization is inextricably linked to the overall advancement of LLMs, and its continued evolution will be instrumental in unlocking even more powerful and efficient models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.16975/x2.png)

> 🔼 This figure displays the results of experiments comparing the performance of language models trained on context-free grammar (CFG) data using different tokenization strategies.  The left panel shows that using 3-gram tokenizers (which consider groups of three consecutive characters) improves the performance of larger language models (85 million parameters) compared to 1-gram tokenizers (considering single characters), but it harms smaller models (2.4 million parameters). This suggests that larger models benefit from the richer information captured by 3-gram tokens, while smaller models might be over-burdened by the increased complexity. The right panel investigates the impact of 3-gram tokenization on encoders (input processing) and decoders (output generation) separately. The results reveal consistent performance improvements when using 3-gram encoders, regardless of the model's size. However, 3-gram decoders hurt the performance of smaller models, highlighting the importance of considering the model size when designing tokenization strategies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance comparison for models trained on CFG data. The left panel compares 1-gram and 3-gram tokenizers, showing that 3-gram improves larger (85M parameters) models but harms smaller (2.4M parameters) ones. The right panel examines 3-gram usage in encoders and decoders, revealing consistent gains with 3-gram encoders regardless of model size, while 3-gram decoders degrade performance in smaller models.
> </details>



![](https://arxiv.org/html/2501.16975/x3.png)

> 🔼 This figure illustrates the difference between a standard GPT (Vanilla GPT) and a GPT model using 2-gram encoding and decoding.  In Vanilla GPT, both input and output tokens are single units (1-gram).  In the 2-gram encoding GPT, the input is encoded as 2-grams (sequences of two consecutive tokens), allowing the model to learn relationships between adjacent tokens. However, the output (prediction) remains 1-gram to maintain a similar inference cost as Vanilla GPT. The 2-gram decoding GPT works inversely. The input remains a 1-gram but the output is a 2-gram prediction. It shows that the 2-gram encoding captures local context, and the 2-gram decoding provides finer-grained supervision signals.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of 2-gram encoding/decoding GPT. Note that 2-gram decoding only preserves the predicted next 1 token though next 2 is predicted, which keeps inference cost identical to the vanilla model.
> </details>



![](https://arxiv.org/html/2501.16975/x4.png)

> 🔼 Figure 4 presents a detailed comparison of training curves between the baseline OLMo2-1B model and the over-encoded model (OE-12.8M) which uses a significantly larger input vocabulary.  The comparison includes training loss and zero-shot performance on several downstream tasks: MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy, and PIQA.  Exponential moving averages (EMA) were applied for smoothing the curves (0.99 for loss and 0.9 for downstream metrics).  The results show a dramatic speedup in convergence for the OE-12.8M model, achieving 5.7x faster convergence in loss compared to the baseline.  Substantial improvements are also observed in the downstream task scores (3.2x on MMLU-Var, 3x on Hellaswag, 2.6x on ARC-Challenge, 3.1x on ARC-Easy, and 3.9x on PIQA).  This demonstrates the substantial performance gains enabled by increasing the input vocabulary size.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training curves for OE-12.8M and baseline model on OLMo2-1B. The metrics are smoothed via exponential moving average with weight 0.99 for loss and 0.9 for downstream tasks. We observe significant convergence acceleration for the OE model: 5.7×5.7\times5.7 × on loss, 3.2×3.2\times3.2 × on MMLU-Var, 3.0×3.0\times3.0 × on Hellaswag, 2.6×2.6\times2.6 × on ARC-Challenge, 3.1×3.1\times3.1 × on ARC-Easy and 3.9×3.9\times3.9 × on PIQA.
> </details>



![](https://arxiv.org/html/2501.16975/x5.png)

> 🔼 This figure displays the log-linear relationship between the input vocabulary size (m) and the training loss (L) observed during experiments.  Specifically, it shows that as the logarithm of the vocabulary size increases linearly, the training loss decreases linearly. This relationship was determined using 500 billion tokens of training data on the OLMoE-1.3B model. The equation representing this relationship is provided:  L = 2.6754 - 0.0256 * log₁₀(m).
> <details>
> <summary>read the caption</summary>
> Figure 5: Log-linear relationship is observed between vocabulary size m𝑚mitalic_m and training loss ℒℒ\mathcal{L}caligraphic_L, i.e. ℒ=2.6754−0.0256×log10⁡mℒ2.67540.0256subscript10𝑚\mathcal{L}=2.6754-0.0256\times\log_{10}{m}caligraphic_L = 2.6754 - 0.0256 × roman_log start_POSTSUBSCRIPT 10 end_POSTSUBSCRIPT italic_m. The values are collected with 500B tokens’ training on OLMoE-1.3B models.
> </details>



![](https://arxiv.org/html/2501.16975/extracted/6161742/figures/cfg_example.png)

> 🔼 This figure is from Allen-Zhu & Li (2024).  The left panel shows the context-free grammar (CFG) rules used to generate synthetic data for the experiments in the paper.  The rules define the relationships between different symbols in the language. The right panel displays an example of a sequence generated using these rules.  This sequence is a string of characters created according to the grammatical rules defined on the left.
> <details>
> <summary>read the caption</summary>
> Figure 6: Left Panel: CFG rules used in our experiments; Right Panel: an example of the generated sequences using the rules. This figure is taken from (Allen-Zhu & Li, 2024).
> </details>



![](https://arxiv.org/html/2501.16975/x6.png)

> 🔼 This figure displays a comprehensive comparison of various metrics between the baseline OLMo2-1B model and the OLMo2-1B model enhanced with Over-Encoding (OE-12.8M).  Metrics include training loss and perplexity, as well as several downstream task evaluation metrics, such as performance on the MMLU, HellaSwag, ARC (Challenge and Easy), PIQA, BoolQ, COPA, CommonsenseQA, and Social-IQA benchmarks.  The visualization allows for a direct assessment of how Over-Encoding impacts both training dynamics and overall model performance across a range of tasks.  Each metric's trend is shown over the course of training, providing insights into convergence speed and final performance.
> <details>
> <summary>read the caption</summary>
> Figure 9: All metrics for OLMo2-1B, comparing OE-12.8M and baseline.
> </details>



![](https://arxiv.org/html/2501.16975/x7.png)

> 🔼 Figure 11 presents a comprehensive comparison of various performance metrics between the OLMoE-1.3B model with over-encoding (OE-12.8M) and its baseline counterpart.  The metrics encompass training loss, validation loss, perplexity scores on several datasets (C4-en, Dolma Books, etc.), and zero-shot performance across numerous downstream tasks (e.g., MMLU-Var, HellaSwag, ARC-Challenge, ARC-Easy, PIQA, etc.). The figure visually depicts the training dynamics and final evaluation scores, offering a detailed assessment of how OE-12.8M impacts both model training efficiency and overall performance across various benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 11: All metrics for OLMoE-1.3B, comparing OE-12.8M and baseline.
> </details>



![](https://arxiv.org/html/2501.16975/x8.png)

> 🔼 This figure presents a comprehensive comparison of various metrics for the OLMoE-7B model with and without over-encoding (OE-12.8M).  Metrics include training loss and perplexity, as well as downstream task performance across several benchmarks like MMLU (various sub-categories), HellaSwag, SciTail, ARC (Challenge and Easy), PIQA, Winogrande, BoolQ, COPA, CommonsenseQA, and SocialIQA.  Each metric is shown over the course of the training process, illustrating the impact of over-encoding on both training dynamics and final performance across a range of tasks.
> <details>
> <summary>read the caption</summary>
> Figure 12: All metrics for OLMoE-7B, comparing OE-12.8M and baseline.
> </details>



![](https://arxiv.org/html/2501.16975/x9.png)

> 🔼 Figure 13 presents a comprehensive comparison of various evaluation metrics for the OLMoE-1.3B model, contrasting the performance achieved using Over-Tokenized Transformers (OT-12.8M) against that of Over-Encoded Transformers (OE-12.8M).  The metrics cover a wide range, including training loss, perplexity, and various downstream benchmark scores across diverse tasks like MMLU (covering STEM, humanities, and social sciences), HellaSwag, ARC (easy and challenge), PIQA, Winogrande, BoolQ, COPA, CommonsenseQA, and SocialIQA.  This detailed visualization allows readers to directly assess the impact of integrating over-decoding with over-encoding, facilitating a comprehensive understanding of the relative strengths and weaknesses of each approach in a large language model setting.
> <details>
> <summary>read the caption</summary>
> Figure 13: All metrics for OLMoE-1.3B, comparing OT-12.8 and OE-12.8M.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.16">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.16.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.16.17.1.1" rowspan="2" style="padding:1.5pt 3.5pt;"><span class="ltx_text" id="S4.T2.16.17.1.1.1">Id</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.16.17.1.2" rowspan="2" style="padding:1.5pt 3.5pt;"><span class="ltx_text" id="S4.T2.16.17.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.16.17.1.3" style="padding:1.5pt 3.5pt;">Train</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.16.17.1.4" style="padding:1.5pt 3.5pt;">Eval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.16.17.1.5" style="padding:1.5pt 3.5pt;">Downstream</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1" style="padding:1.5pt 3.5pt;">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding:1.5pt 3.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.3.3" style="padding:1.5pt 3.5pt;">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4" style="padding:1.5pt 3.5pt;">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.m1.1"><semantics id="S4.T2.4.4.4.m1.1a"><mo id="S4.T2.4.4.4.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.m1.1b"><ci id="S4.T2.4.4.4.m1.1.1.cmml" xref="S4.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5" style="padding:1.5pt 3.5pt;">MMLU-V<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.m1.1"><semantics id="S4.T2.5.5.5.m1.1a"><mo id="S4.T2.5.5.5.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.m1.1b"><ci id="S4.T2.5.5.5.m1.1.1.cmml" xref="S4.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6" style="padding:1.5pt 3.5pt;">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.m1.1a"><mo id="S4.T2.6.6.6.m1.1.1" stretchy="false" xref="S4.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.m1.1b"><ci id="S4.T2.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7" style="padding:1.5pt 3.5pt;">ARC-C<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.m1.1"><semantics id="S4.T2.7.7.7.m1.1a"><mo id="S4.T2.7.7.7.m1.1.1" stretchy="false" xref="S4.T2.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.m1.1b"><ci id="S4.T2.7.7.7.m1.1.1.cmml" xref="S4.T2.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.8" style="padding:1.5pt 3.5pt;">ARC-E<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.m1.1"><semantics id="S4.T2.8.8.8.m1.1a"><mo id="S4.T2.8.8.8.m1.1.1" stretchy="false" xref="S4.T2.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.m1.1b"><ci id="S4.T2.8.8.8.m1.1.1.cmml" xref="S4.T2.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.9" style="padding:1.5pt 3.5pt;">PIQA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.m1.1"><semantics id="S4.T2.9.9.9.m1.1a"><mo id="S4.T2.9.9.9.m1.1.1" stretchy="false" xref="S4.T2.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.m1.1b"><ci id="S4.T2.9.9.9.m1.1.1.cmml" xref="S4.T2.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.18.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.16.18.2.1" style="padding:1.5pt 3.5pt;">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.16.18.2.2" style="padding:1.5pt 3.5pt;">OLMoE-1.3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.3" style="padding:1.5pt 3.5pt;">2.554</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.4" style="padding:1.5pt 3.5pt;">12.864</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.5" style="padding:1.5pt 3.5pt;">2.924</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.6" style="padding:1.5pt 3.5pt;">18.625</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.7" style="padding:1.5pt 3.5pt;">0.327</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.8" style="padding:1.5pt 3.5pt;">0.553</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.9" style="padding:1.5pt 3.5pt;">0.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.10" style="padding:1.5pt 3.5pt;">0.622</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.16.18.2.11" style="padding:1.5pt 3.5pt;">0.727</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.10.10.2" style="padding:1.5pt 3.5pt;">2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.10.10.1" style="padding:1.5pt 3.5pt;">+<math alttext="\mathbb{E}^{3.2\mathrm{M}\times d}(x^{(-2)})" class="ltx_Math" display="inline" id="S4.T2.10.10.1.m1.2"><semantics id="S4.T2.10.10.1.m1.2a"><mrow id="S4.T2.10.10.1.m1.2.2" xref="S4.T2.10.10.1.m1.2.2.cmml"><msup id="S4.T2.10.10.1.m1.2.2.3" xref="S4.T2.10.10.1.m1.2.2.3.cmml"><mi id="S4.T2.10.10.1.m1.2.2.3.2" xref="S4.T2.10.10.1.m1.2.2.3.2.cmml">𝔼</mi><mrow id="S4.T2.10.10.1.m1.2.2.3.3" xref="S4.T2.10.10.1.m1.2.2.3.3.cmml"><mrow id="S4.T2.10.10.1.m1.2.2.3.3.2" xref="S4.T2.10.10.1.m1.2.2.3.3.2.cmml"><mn id="S4.T2.10.10.1.m1.2.2.3.3.2.2" xref="S4.T2.10.10.1.m1.2.2.3.3.2.2.cmml">3.2</mn><mo id="S4.T2.10.10.1.m1.2.2.3.3.2.1" xref="S4.T2.10.10.1.m1.2.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.10.10.1.m1.2.2.3.3.2.3" mathvariant="normal" xref="S4.T2.10.10.1.m1.2.2.3.3.2.3.cmml">M</mi></mrow><mo id="S4.T2.10.10.1.m1.2.2.3.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.10.10.1.m1.2.2.3.3.1.cmml">×</mo><mi id="S4.T2.10.10.1.m1.2.2.3.3.3" xref="S4.T2.10.10.1.m1.2.2.3.3.3.cmml">d</mi></mrow></msup><mo id="S4.T2.10.10.1.m1.2.2.2" xref="S4.T2.10.10.1.m1.2.2.2.cmml">⁢</mo><mrow id="S4.T2.10.10.1.m1.2.2.1.1" xref="S4.T2.10.10.1.m1.2.2.1.1.1.cmml"><mo id="S4.T2.10.10.1.m1.2.2.1.1.2" stretchy="false" xref="S4.T2.10.10.1.m1.2.2.1.1.1.cmml">(</mo><msup id="S4.T2.10.10.1.m1.2.2.1.1.1" xref="S4.T2.10.10.1.m1.2.2.1.1.1.cmml"><mi id="S4.T2.10.10.1.m1.2.2.1.1.1.2" xref="S4.T2.10.10.1.m1.2.2.1.1.1.2.cmml">x</mi><mrow id="S4.T2.10.10.1.m1.1.1.1.1" xref="S4.T2.10.10.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.10.10.1.m1.1.1.1.1.2" stretchy="false" xref="S4.T2.10.10.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T2.10.10.1.m1.1.1.1.1.1" xref="S4.T2.10.10.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.10.10.1.m1.1.1.1.1.1a" xref="S4.T2.10.10.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S4.T2.10.10.1.m1.1.1.1.1.1.2" xref="S4.T2.10.10.1.m1.1.1.1.1.1.2.cmml">2</mn></mrow><mo id="S4.T2.10.10.1.m1.1.1.1.1.3" stretchy="false" xref="S4.T2.10.10.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.10.10.1.m1.2.2.1.1.3" stretchy="false" xref="S4.T2.10.10.1.m1.2.2.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.1.m1.2b"><apply id="S4.T2.10.10.1.m1.2.2.cmml" xref="S4.T2.10.10.1.m1.2.2"><times id="S4.T2.10.10.1.m1.2.2.2.cmml" xref="S4.T2.10.10.1.m1.2.2.2"></times><apply id="S4.T2.10.10.1.m1.2.2.3.cmml" xref="S4.T2.10.10.1.m1.2.2.3"><csymbol cd="ambiguous" id="S4.T2.10.10.1.m1.2.2.3.1.cmml" xref="S4.T2.10.10.1.m1.2.2.3">superscript</csymbol><ci id="S4.T2.10.10.1.m1.2.2.3.2.cmml" xref="S4.T2.10.10.1.m1.2.2.3.2">𝔼</ci><apply id="S4.T2.10.10.1.m1.2.2.3.3.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3"><times id="S4.T2.10.10.1.m1.2.2.3.3.1.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3.1"></times><apply id="S4.T2.10.10.1.m1.2.2.3.3.2.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3.2"><times id="S4.T2.10.10.1.m1.2.2.3.3.2.1.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3.2.1"></times><cn id="S4.T2.10.10.1.m1.2.2.3.3.2.2.cmml" type="float" xref="S4.T2.10.10.1.m1.2.2.3.3.2.2">3.2</cn><ci id="S4.T2.10.10.1.m1.2.2.3.3.2.3.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3.2.3">M</ci></apply><ci id="S4.T2.10.10.1.m1.2.2.3.3.3.cmml" xref="S4.T2.10.10.1.m1.2.2.3.3.3">𝑑</ci></apply></apply><apply id="S4.T2.10.10.1.m1.2.2.1.1.1.cmml" xref="S4.T2.10.10.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="S4.T2.10.10.1.m1.2.2.1.1.1.1.cmml" xref="S4.T2.10.10.1.m1.2.2.1.1">superscript</csymbol><ci id="S4.T2.10.10.1.m1.2.2.1.1.1.2.cmml" xref="S4.T2.10.10.1.m1.2.2.1.1.1.2">𝑥</ci><apply id="S4.T2.10.10.1.m1.1.1.1.1.1.cmml" xref="S4.T2.10.10.1.m1.1.1.1.1"><minus id="S4.T2.10.10.1.m1.1.1.1.1.1.1.cmml" xref="S4.T2.10.10.1.m1.1.1.1.1"></minus><cn id="S4.T2.10.10.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S4.T2.10.10.1.m1.1.1.1.1.1.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.1.m1.2c">\mathbb{E}^{3.2\mathrm{M}\times d}(x^{(-2)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.1.m1.2d">blackboard_E start_POSTSUPERSCRIPT 3.2 roman_M × italic_d end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - 2 ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.3" style="padding:1.5pt 3.5pt;">2.511</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.4" style="padding:1.5pt 3.5pt;">12.319</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.5" style="padding:1.5pt 3.5pt;">2.887</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.6" style="padding:1.5pt 3.5pt;">17.944</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.7" style="padding:1.5pt 3.5pt;">0.340</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.8" style="padding:1.5pt 3.5pt;">0.569</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.9" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.9.1">0.351</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.1">0.656</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.11" style="padding:1.5pt 3.5pt;">0.734</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.11.11.2" style="padding:1.5pt 3.5pt;">3</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.11.11.1" style="padding:1.5pt 3.5pt;">+<math alttext="\mathbb{E}^{6.4\mathrm{M}\times\frac{d}{2}}(x^{(-2)})" class="ltx_Math" display="inline" id="S4.T2.11.11.1.m1.2"><semantics id="S4.T2.11.11.1.m1.2a"><mrow id="S4.T2.11.11.1.m1.2.2" xref="S4.T2.11.11.1.m1.2.2.cmml"><msup id="S4.T2.11.11.1.m1.2.2.3" xref="S4.T2.11.11.1.m1.2.2.3.cmml"><mi id="S4.T2.11.11.1.m1.2.2.3.2" xref="S4.T2.11.11.1.m1.2.2.3.2.cmml">𝔼</mi><mrow id="S4.T2.11.11.1.m1.2.2.3.3" xref="S4.T2.11.11.1.m1.2.2.3.3.cmml"><mrow id="S4.T2.11.11.1.m1.2.2.3.3.2" xref="S4.T2.11.11.1.m1.2.2.3.3.2.cmml"><mn id="S4.T2.11.11.1.m1.2.2.3.3.2.2" xref="S4.T2.11.11.1.m1.2.2.3.3.2.2.cmml">6.4</mn><mo id="S4.T2.11.11.1.m1.2.2.3.3.2.1" xref="S4.T2.11.11.1.m1.2.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.11.11.1.m1.2.2.3.3.2.3" mathvariant="normal" xref="S4.T2.11.11.1.m1.2.2.3.3.2.3.cmml">M</mi></mrow><mo id="S4.T2.11.11.1.m1.2.2.3.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.11.11.1.m1.2.2.3.3.1.cmml">×</mo><mfrac id="S4.T2.11.11.1.m1.2.2.3.3.3" xref="S4.T2.11.11.1.m1.2.2.3.3.3.cmml"><mi id="S4.T2.11.11.1.m1.2.2.3.3.3.2" xref="S4.T2.11.11.1.m1.2.2.3.3.3.2.cmml">d</mi><mn id="S4.T2.11.11.1.m1.2.2.3.3.3.3" xref="S4.T2.11.11.1.m1.2.2.3.3.3.3.cmml">2</mn></mfrac></mrow></msup><mo id="S4.T2.11.11.1.m1.2.2.2" xref="S4.T2.11.11.1.m1.2.2.2.cmml">⁢</mo><mrow id="S4.T2.11.11.1.m1.2.2.1.1" xref="S4.T2.11.11.1.m1.2.2.1.1.1.cmml"><mo id="S4.T2.11.11.1.m1.2.2.1.1.2" stretchy="false" xref="S4.T2.11.11.1.m1.2.2.1.1.1.cmml">(</mo><msup id="S4.T2.11.11.1.m1.2.2.1.1.1" xref="S4.T2.11.11.1.m1.2.2.1.1.1.cmml"><mi id="S4.T2.11.11.1.m1.2.2.1.1.1.2" xref="S4.T2.11.11.1.m1.2.2.1.1.1.2.cmml">x</mi><mrow id="S4.T2.11.11.1.m1.1.1.1.1" xref="S4.T2.11.11.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.11.11.1.m1.1.1.1.1.2" stretchy="false" xref="S4.T2.11.11.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T2.11.11.1.m1.1.1.1.1.1" xref="S4.T2.11.11.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.11.11.1.m1.1.1.1.1.1a" xref="S4.T2.11.11.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S4.T2.11.11.1.m1.1.1.1.1.1.2" xref="S4.T2.11.11.1.m1.1.1.1.1.1.2.cmml">2</mn></mrow><mo id="S4.T2.11.11.1.m1.1.1.1.1.3" stretchy="false" xref="S4.T2.11.11.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.11.11.1.m1.2.2.1.1.3" stretchy="false" xref="S4.T2.11.11.1.m1.2.2.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.1.m1.2b"><apply id="S4.T2.11.11.1.m1.2.2.cmml" xref="S4.T2.11.11.1.m1.2.2"><times id="S4.T2.11.11.1.m1.2.2.2.cmml" xref="S4.T2.11.11.1.m1.2.2.2"></times><apply id="S4.T2.11.11.1.m1.2.2.3.cmml" xref="S4.T2.11.11.1.m1.2.2.3"><csymbol cd="ambiguous" id="S4.T2.11.11.1.m1.2.2.3.1.cmml" xref="S4.T2.11.11.1.m1.2.2.3">superscript</csymbol><ci id="S4.T2.11.11.1.m1.2.2.3.2.cmml" xref="S4.T2.11.11.1.m1.2.2.3.2">𝔼</ci><apply id="S4.T2.11.11.1.m1.2.2.3.3.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3"><times id="S4.T2.11.11.1.m1.2.2.3.3.1.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.1"></times><apply id="S4.T2.11.11.1.m1.2.2.3.3.2.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.2"><times id="S4.T2.11.11.1.m1.2.2.3.3.2.1.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.2.1"></times><cn id="S4.T2.11.11.1.m1.2.2.3.3.2.2.cmml" type="float" xref="S4.T2.11.11.1.m1.2.2.3.3.2.2">6.4</cn><ci id="S4.T2.11.11.1.m1.2.2.3.3.2.3.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.2.3">M</ci></apply><apply id="S4.T2.11.11.1.m1.2.2.3.3.3.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.3"><divide id="S4.T2.11.11.1.m1.2.2.3.3.3.1.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.3"></divide><ci id="S4.T2.11.11.1.m1.2.2.3.3.3.2.cmml" xref="S4.T2.11.11.1.m1.2.2.3.3.3.2">𝑑</ci><cn id="S4.T2.11.11.1.m1.2.2.3.3.3.3.cmml" type="integer" xref="S4.T2.11.11.1.m1.2.2.3.3.3.3">2</cn></apply></apply></apply><apply id="S4.T2.11.11.1.m1.2.2.1.1.1.cmml" xref="S4.T2.11.11.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="S4.T2.11.11.1.m1.2.2.1.1.1.1.cmml" xref="S4.T2.11.11.1.m1.2.2.1.1">superscript</csymbol><ci id="S4.T2.11.11.1.m1.2.2.1.1.1.2.cmml" xref="S4.T2.11.11.1.m1.2.2.1.1.1.2">𝑥</ci><apply id="S4.T2.11.11.1.m1.1.1.1.1.1.cmml" xref="S4.T2.11.11.1.m1.1.1.1.1"><minus id="S4.T2.11.11.1.m1.1.1.1.1.1.1.cmml" xref="S4.T2.11.11.1.m1.1.1.1.1"></minus><cn id="S4.T2.11.11.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S4.T2.11.11.1.m1.1.1.1.1.1.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.1.m1.2c">\mathbb{E}^{6.4\mathrm{M}\times\frac{d}{2}}(x^{(-2)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.1.m1.2d">blackboard_E start_POSTSUPERSCRIPT 6.4 roman_M × divide start_ARG italic_d end_ARG start_ARG 2 end_ARG end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - 2 ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.3" style="padding:1.5pt 3.5pt;">2.507</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.4" style="padding:1.5pt 3.5pt;">12.268</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.5" style="padding:1.5pt 3.5pt;">2.882</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.6" style="padding:1.5pt 3.5pt;">17.851</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.7" style="padding:1.5pt 3.5pt;">0.330</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.8" style="padding:1.5pt 3.5pt;">0.573</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.9" style="padding:1.5pt 3.5pt;">0.341</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.10" style="padding:1.5pt 3.5pt;">0.648</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11" style="padding:1.5pt 3.5pt;">0.731</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.12.12.2" style="padding:1.5pt 3.5pt;">4</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.12.12.1" style="padding:1.5pt 3.5pt;">+<math alttext="\mathbb{E}^{3.2\mathrm{M}\times d|2}(x^{(-2)})" class="ltx_Math" display="inline" id="S4.T2.12.12.1.m1.2"><semantics id="S4.T2.12.12.1.m1.2a"><mrow id="S4.T2.12.12.1.m1.2.2" xref="S4.T2.12.12.1.m1.2.2.cmml"><msup id="S4.T2.12.12.1.m1.2.2.3" xref="S4.T2.12.12.1.m1.2.2.3.cmml"><mi id="S4.T2.12.12.1.m1.2.2.3.2" xref="S4.T2.12.12.1.m1.2.2.3.2.cmml">𝔼</mi><mrow id="S4.T2.12.12.1.m1.2.2.3.3" xref="S4.T2.12.12.1.m1.2.2.3.3.cmml"><mrow id="S4.T2.12.12.1.m1.2.2.3.3.2" xref="S4.T2.12.12.1.m1.2.2.3.3.2.cmml"><mrow id="S4.T2.12.12.1.m1.2.2.3.3.2.2" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.cmml"><mn id="S4.T2.12.12.1.m1.2.2.3.3.2.2.2" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.2.cmml">3.2</mn><mo id="S4.T2.12.12.1.m1.2.2.3.3.2.2.1" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.1.cmml">⁢</mo><mi id="S4.T2.12.12.1.m1.2.2.3.3.2.2.3" mathvariant="normal" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.3.cmml">M</mi></mrow><mo id="S4.T2.12.12.1.m1.2.2.3.3.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.12.12.1.m1.2.2.3.3.2.1.cmml">×</mo><mi id="S4.T2.12.12.1.m1.2.2.3.3.2.3" xref="S4.T2.12.12.1.m1.2.2.3.3.2.3.cmml">d</mi></mrow><mo fence="false" id="S4.T2.12.12.1.m1.2.2.3.3.1" xref="S4.T2.12.12.1.m1.2.2.3.3.1.cmml">|</mo><mn id="S4.T2.12.12.1.m1.2.2.3.3.3" xref="S4.T2.12.12.1.m1.2.2.3.3.3.cmml">2</mn></mrow></msup><mo id="S4.T2.12.12.1.m1.2.2.2" xref="S4.T2.12.12.1.m1.2.2.2.cmml">⁢</mo><mrow id="S4.T2.12.12.1.m1.2.2.1.1" xref="S4.T2.12.12.1.m1.2.2.1.1.1.cmml"><mo id="S4.T2.12.12.1.m1.2.2.1.1.2" stretchy="false" xref="S4.T2.12.12.1.m1.2.2.1.1.1.cmml">(</mo><msup id="S4.T2.12.12.1.m1.2.2.1.1.1" xref="S4.T2.12.12.1.m1.2.2.1.1.1.cmml"><mi id="S4.T2.12.12.1.m1.2.2.1.1.1.2" xref="S4.T2.12.12.1.m1.2.2.1.1.1.2.cmml">x</mi><mrow id="S4.T2.12.12.1.m1.1.1.1.1" xref="S4.T2.12.12.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.12.12.1.m1.1.1.1.1.2" stretchy="false" xref="S4.T2.12.12.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T2.12.12.1.m1.1.1.1.1.1" xref="S4.T2.12.12.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.12.12.1.m1.1.1.1.1.1a" xref="S4.T2.12.12.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S4.T2.12.12.1.m1.1.1.1.1.1.2" xref="S4.T2.12.12.1.m1.1.1.1.1.1.2.cmml">2</mn></mrow><mo id="S4.T2.12.12.1.m1.1.1.1.1.3" stretchy="false" xref="S4.T2.12.12.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.12.12.1.m1.2.2.1.1.3" stretchy="false" xref="S4.T2.12.12.1.m1.2.2.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.1.m1.2b"><apply id="S4.T2.12.12.1.m1.2.2.cmml" xref="S4.T2.12.12.1.m1.2.2"><times id="S4.T2.12.12.1.m1.2.2.2.cmml" xref="S4.T2.12.12.1.m1.2.2.2"></times><apply id="S4.T2.12.12.1.m1.2.2.3.cmml" xref="S4.T2.12.12.1.m1.2.2.3"><csymbol cd="ambiguous" id="S4.T2.12.12.1.m1.2.2.3.1.cmml" xref="S4.T2.12.12.1.m1.2.2.3">superscript</csymbol><ci id="S4.T2.12.12.1.m1.2.2.3.2.cmml" xref="S4.T2.12.12.1.m1.2.2.3.2">𝔼</ci><apply id="S4.T2.12.12.1.m1.2.2.3.3.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3"><csymbol cd="latexml" id="S4.T2.12.12.1.m1.2.2.3.3.1.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.1">conditional</csymbol><apply id="S4.T2.12.12.1.m1.2.2.3.3.2.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2"><times id="S4.T2.12.12.1.m1.2.2.3.3.2.1.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2.1"></times><apply id="S4.T2.12.12.1.m1.2.2.3.3.2.2.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2"><times id="S4.T2.12.12.1.m1.2.2.3.3.2.2.1.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.1"></times><cn id="S4.T2.12.12.1.m1.2.2.3.3.2.2.2.cmml" type="float" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.2">3.2</cn><ci id="S4.T2.12.12.1.m1.2.2.3.3.2.2.3.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2.2.3">M</ci></apply><ci id="S4.T2.12.12.1.m1.2.2.3.3.2.3.cmml" xref="S4.T2.12.12.1.m1.2.2.3.3.2.3">𝑑</ci></apply><cn id="S4.T2.12.12.1.m1.2.2.3.3.3.cmml" type="integer" xref="S4.T2.12.12.1.m1.2.2.3.3.3">2</cn></apply></apply><apply id="S4.T2.12.12.1.m1.2.2.1.1.1.cmml" xref="S4.T2.12.12.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="S4.T2.12.12.1.m1.2.2.1.1.1.1.cmml" xref="S4.T2.12.12.1.m1.2.2.1.1">superscript</csymbol><ci id="S4.T2.12.12.1.m1.2.2.1.1.1.2.cmml" xref="S4.T2.12.12.1.m1.2.2.1.1.1.2">𝑥</ci><apply id="S4.T2.12.12.1.m1.1.1.1.1.1.cmml" xref="S4.T2.12.12.1.m1.1.1.1.1"><minus id="S4.T2.12.12.1.m1.1.1.1.1.1.1.cmml" xref="S4.T2.12.12.1.m1.1.1.1.1"></minus><cn id="S4.T2.12.12.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S4.T2.12.12.1.m1.1.1.1.1.1.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.1.m1.2c">\mathbb{E}^{3.2\mathrm{M}\times d|2}(x^{(-2)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.1.m1.2d">blackboard_E start_POSTSUPERSCRIPT 3.2 roman_M × italic_d | 2 end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - 2 ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.3" style="padding:1.5pt 3.5pt;">2.503</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.4" style="padding:1.5pt 3.5pt;">12.221</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.5" style="padding:1.5pt 3.5pt;">2.877</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.6" style="padding:1.5pt 3.5pt;">17.754</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.7" style="padding:1.5pt 3.5pt;">0.337</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.8" style="padding:1.5pt 3.5pt;">0.575</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.9" style="padding:1.5pt 3.5pt;">0.345</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.10" style="padding:1.5pt 3.5pt;">0.651</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.11" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.11.1">0.740</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.13.2" style="padding:1.5pt 3.5pt;">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.13.13.1" style="padding:1.5pt 3.5pt;">+<math alttext="\mathbb{E}^{3.2\mathrm{M}\times d|4}(x^{(-2)})" class="ltx_Math" display="inline" id="S4.T2.13.13.1.m1.2"><semantics id="S4.T2.13.13.1.m1.2a"><mrow id="S4.T2.13.13.1.m1.2.2" xref="S4.T2.13.13.1.m1.2.2.cmml"><msup id="S4.T2.13.13.1.m1.2.2.3" xref="S4.T2.13.13.1.m1.2.2.3.cmml"><mi id="S4.T2.13.13.1.m1.2.2.3.2" xref="S4.T2.13.13.1.m1.2.2.3.2.cmml">𝔼</mi><mrow id="S4.T2.13.13.1.m1.2.2.3.3" xref="S4.T2.13.13.1.m1.2.2.3.3.cmml"><mrow id="S4.T2.13.13.1.m1.2.2.3.3.2" xref="S4.T2.13.13.1.m1.2.2.3.3.2.cmml"><mrow id="S4.T2.13.13.1.m1.2.2.3.3.2.2" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.cmml"><mn id="S4.T2.13.13.1.m1.2.2.3.3.2.2.2" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.2.cmml">3.2</mn><mo id="S4.T2.13.13.1.m1.2.2.3.3.2.2.1" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.1.cmml">⁢</mo><mi id="S4.T2.13.13.1.m1.2.2.3.3.2.2.3" mathvariant="normal" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.3.cmml">M</mi></mrow><mo id="S4.T2.13.13.1.m1.2.2.3.3.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.13.13.1.m1.2.2.3.3.2.1.cmml">×</mo><mi id="S4.T2.13.13.1.m1.2.2.3.3.2.3" xref="S4.T2.13.13.1.m1.2.2.3.3.2.3.cmml">d</mi></mrow><mo fence="false" id="S4.T2.13.13.1.m1.2.2.3.3.1" xref="S4.T2.13.13.1.m1.2.2.3.3.1.cmml">|</mo><mn id="S4.T2.13.13.1.m1.2.2.3.3.3" xref="S4.T2.13.13.1.m1.2.2.3.3.3.cmml">4</mn></mrow></msup><mo id="S4.T2.13.13.1.m1.2.2.2" xref="S4.T2.13.13.1.m1.2.2.2.cmml">⁢</mo><mrow id="S4.T2.13.13.1.m1.2.2.1.1" xref="S4.T2.13.13.1.m1.2.2.1.1.1.cmml"><mo id="S4.T2.13.13.1.m1.2.2.1.1.2" stretchy="false" xref="S4.T2.13.13.1.m1.2.2.1.1.1.cmml">(</mo><msup id="S4.T2.13.13.1.m1.2.2.1.1.1" xref="S4.T2.13.13.1.m1.2.2.1.1.1.cmml"><mi id="S4.T2.13.13.1.m1.2.2.1.1.1.2" xref="S4.T2.13.13.1.m1.2.2.1.1.1.2.cmml">x</mi><mrow id="S4.T2.13.13.1.m1.1.1.1.1" xref="S4.T2.13.13.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.13.13.1.m1.1.1.1.1.2" stretchy="false" xref="S4.T2.13.13.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T2.13.13.1.m1.1.1.1.1.1" xref="S4.T2.13.13.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.13.13.1.m1.1.1.1.1.1a" xref="S4.T2.13.13.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S4.T2.13.13.1.m1.1.1.1.1.1.2" xref="S4.T2.13.13.1.m1.1.1.1.1.1.2.cmml">2</mn></mrow><mo id="S4.T2.13.13.1.m1.1.1.1.1.3" stretchy="false" xref="S4.T2.13.13.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.13.13.1.m1.2.2.1.1.3" stretchy="false" xref="S4.T2.13.13.1.m1.2.2.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.1.m1.2b"><apply id="S4.T2.13.13.1.m1.2.2.cmml" xref="S4.T2.13.13.1.m1.2.2"><times id="S4.T2.13.13.1.m1.2.2.2.cmml" xref="S4.T2.13.13.1.m1.2.2.2"></times><apply id="S4.T2.13.13.1.m1.2.2.3.cmml" xref="S4.T2.13.13.1.m1.2.2.3"><csymbol cd="ambiguous" id="S4.T2.13.13.1.m1.2.2.3.1.cmml" xref="S4.T2.13.13.1.m1.2.2.3">superscript</csymbol><ci id="S4.T2.13.13.1.m1.2.2.3.2.cmml" xref="S4.T2.13.13.1.m1.2.2.3.2">𝔼</ci><apply id="S4.T2.13.13.1.m1.2.2.3.3.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3"><csymbol cd="latexml" id="S4.T2.13.13.1.m1.2.2.3.3.1.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.1">conditional</csymbol><apply id="S4.T2.13.13.1.m1.2.2.3.3.2.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2"><times id="S4.T2.13.13.1.m1.2.2.3.3.2.1.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2.1"></times><apply id="S4.T2.13.13.1.m1.2.2.3.3.2.2.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2"><times id="S4.T2.13.13.1.m1.2.2.3.3.2.2.1.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.1"></times><cn id="S4.T2.13.13.1.m1.2.2.3.3.2.2.2.cmml" type="float" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.2">3.2</cn><ci id="S4.T2.13.13.1.m1.2.2.3.3.2.2.3.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2.2.3">M</ci></apply><ci id="S4.T2.13.13.1.m1.2.2.3.3.2.3.cmml" xref="S4.T2.13.13.1.m1.2.2.3.3.2.3">𝑑</ci></apply><cn id="S4.T2.13.13.1.m1.2.2.3.3.3.cmml" type="integer" xref="S4.T2.13.13.1.m1.2.2.3.3.3">4</cn></apply></apply><apply id="S4.T2.13.13.1.m1.2.2.1.1.1.cmml" xref="S4.T2.13.13.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="S4.T2.13.13.1.m1.2.2.1.1.1.1.cmml" xref="S4.T2.13.13.1.m1.2.2.1.1">superscript</csymbol><ci id="S4.T2.13.13.1.m1.2.2.1.1.1.2.cmml" xref="S4.T2.13.13.1.m1.2.2.1.1.1.2">𝑥</ci><apply id="S4.T2.13.13.1.m1.1.1.1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1.1.1"><minus id="S4.T2.13.13.1.m1.1.1.1.1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1.1.1"></minus><cn id="S4.T2.13.13.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S4.T2.13.13.1.m1.1.1.1.1.1.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.1.m1.2c">\mathbb{E}^{3.2\mathrm{M}\times d|4}(x^{(-2)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.1.m1.2d">blackboard_E start_POSTSUPERSCRIPT 3.2 roman_M × italic_d | 4 end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - 2 ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.3" style="padding:1.5pt 3.5pt;">2.503</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.4" style="padding:1.5pt 3.5pt;">12.226</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.5" style="padding:1.5pt 3.5pt;">2.876</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.6" style="padding:1.5pt 3.5pt;">17.736</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.7" style="padding:1.5pt 3.5pt;">0.328</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.8" style="padding:1.5pt 3.5pt;">0.575</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.9" style="padding:1.5pt 3.5pt;">0.337</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.10" style="padding:1.5pt 3.5pt;">0.653</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.11" style="padding:1.5pt 3.5pt;">0.734</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.14.14.2" style="padding:1.5pt 3.5pt;">6</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.14.14.1" style="padding:1.5pt 3.5pt;">+<math alttext="\sum_{i\in\{2,3\}}\mathbb{E}_{i}^{3.2\mathrm{M}\times\frac{d}{2}|2}(x^{(-i)})" class="ltx_Math" display="inline" id="S4.T2.14.14.1.m1.4"><semantics id="S4.T2.14.14.1.m1.4a"><mrow id="S4.T2.14.14.1.m1.4.4" xref="S4.T2.14.14.1.m1.4.4.cmml"><msub id="S4.T2.14.14.1.m1.4.4.2" xref="S4.T2.14.14.1.m1.4.4.2.cmml"><mo id="S4.T2.14.14.1.m1.4.4.2.2" xref="S4.T2.14.14.1.m1.4.4.2.2.cmml">∑</mo><mrow id="S4.T2.14.14.1.m1.2.2.2" xref="S4.T2.14.14.1.m1.2.2.2.cmml"><mi id="S4.T2.14.14.1.m1.2.2.2.4" xref="S4.T2.14.14.1.m1.2.2.2.4.cmml">i</mi><mo id="S4.T2.14.14.1.m1.2.2.2.3" xref="S4.T2.14.14.1.m1.2.2.2.3.cmml">∈</mo><mrow id="S4.T2.14.14.1.m1.2.2.2.5.2" xref="S4.T2.14.14.1.m1.2.2.2.5.1.cmml"><mo id="S4.T2.14.14.1.m1.2.2.2.5.2.1" stretchy="false" xref="S4.T2.14.14.1.m1.2.2.2.5.1.cmml">{</mo><mn id="S4.T2.14.14.1.m1.1.1.1.1" xref="S4.T2.14.14.1.m1.1.1.1.1.cmml">2</mn><mo id="S4.T2.14.14.1.m1.2.2.2.5.2.2" xref="S4.T2.14.14.1.m1.2.2.2.5.1.cmml">,</mo><mn id="S4.T2.14.14.1.m1.2.2.2.2" xref="S4.T2.14.14.1.m1.2.2.2.2.cmml">3</mn><mo id="S4.T2.14.14.1.m1.2.2.2.5.2.3" stretchy="false" xref="S4.T2.14.14.1.m1.2.2.2.5.1.cmml">}</mo></mrow></mrow></msub><mrow id="S4.T2.14.14.1.m1.4.4.1" xref="S4.T2.14.14.1.m1.4.4.1.cmml"><msubsup id="S4.T2.14.14.1.m1.4.4.1.3" xref="S4.T2.14.14.1.m1.4.4.1.3.cmml"><mi id="S4.T2.14.14.1.m1.4.4.1.3.2.2" xref="S4.T2.14.14.1.m1.4.4.1.3.2.2.cmml">𝔼</mi><mi id="S4.T2.14.14.1.m1.4.4.1.3.2.3" xref="S4.T2.14.14.1.m1.4.4.1.3.2.3.cmml">i</mi><mrow id="S4.T2.14.14.1.m1.4.4.1.3.3" xref="S4.T2.14.14.1.m1.4.4.1.3.3.cmml"><mrow id="S4.T2.14.14.1.m1.4.4.1.3.3.2" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.cmml"><mrow id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.cmml"><mn id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.2" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.2.cmml">3.2</mn><mo id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.1" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.1.cmml">⁢</mo><mi id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.3" mathvariant="normal" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.3.cmml">M</mi></mrow><mo id="S4.T2.14.14.1.m1.4.4.1.3.3.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.1.cmml">×</mo><mfrac id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.cmml"><mi id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.2" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.2.cmml">d</mi><mn id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.3" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.3.cmml">2</mn></mfrac></mrow><mo fence="false" id="S4.T2.14.14.1.m1.4.4.1.3.3.1" xref="S4.T2.14.14.1.m1.4.4.1.3.3.1.cmml">|</mo><mn id="S4.T2.14.14.1.m1.4.4.1.3.3.3" xref="S4.T2.14.14.1.m1.4.4.1.3.3.3.cmml">2</mn></mrow></msubsup><mo id="S4.T2.14.14.1.m1.4.4.1.2" xref="S4.T2.14.14.1.m1.4.4.1.2.cmml">⁢</mo><mrow id="S4.T2.14.14.1.m1.4.4.1.1.1" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.cmml"><mo id="S4.T2.14.14.1.m1.4.4.1.1.1.2" stretchy="false" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.cmml">(</mo><msup id="S4.T2.14.14.1.m1.4.4.1.1.1.1" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.cmml"><mi id="S4.T2.14.14.1.m1.4.4.1.1.1.1.2" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.2.cmml">x</mi><mrow id="S4.T2.14.14.1.m1.3.3.1.1" xref="S4.T2.14.14.1.m1.3.3.1.1.1.cmml"><mo id="S4.T2.14.14.1.m1.3.3.1.1.2" stretchy="false" xref="S4.T2.14.14.1.m1.3.3.1.1.1.cmml">(</mo><mrow id="S4.T2.14.14.1.m1.3.3.1.1.1" xref="S4.T2.14.14.1.m1.3.3.1.1.1.cmml"><mo id="S4.T2.14.14.1.m1.3.3.1.1.1a" xref="S4.T2.14.14.1.m1.3.3.1.1.1.cmml">−</mo><mi id="S4.T2.14.14.1.m1.3.3.1.1.1.2" xref="S4.T2.14.14.1.m1.3.3.1.1.1.2.cmml">i</mi></mrow><mo id="S4.T2.14.14.1.m1.3.3.1.1.3" stretchy="false" xref="S4.T2.14.14.1.m1.3.3.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.14.14.1.m1.4.4.1.1.1.3" stretchy="false" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.1.m1.4b"><apply id="S4.T2.14.14.1.m1.4.4.cmml" xref="S4.T2.14.14.1.m1.4.4"><apply id="S4.T2.14.14.1.m1.4.4.2.cmml" xref="S4.T2.14.14.1.m1.4.4.2"><csymbol cd="ambiguous" id="S4.T2.14.14.1.m1.4.4.2.1.cmml" xref="S4.T2.14.14.1.m1.4.4.2">subscript</csymbol><sum id="S4.T2.14.14.1.m1.4.4.2.2.cmml" xref="S4.T2.14.14.1.m1.4.4.2.2"></sum><apply id="S4.T2.14.14.1.m1.2.2.2.cmml" xref="S4.T2.14.14.1.m1.2.2.2"><in id="S4.T2.14.14.1.m1.2.2.2.3.cmml" xref="S4.T2.14.14.1.m1.2.2.2.3"></in><ci id="S4.T2.14.14.1.m1.2.2.2.4.cmml" xref="S4.T2.14.14.1.m1.2.2.2.4">𝑖</ci><set id="S4.T2.14.14.1.m1.2.2.2.5.1.cmml" xref="S4.T2.14.14.1.m1.2.2.2.5.2"><cn id="S4.T2.14.14.1.m1.1.1.1.1.cmml" type="integer" xref="S4.T2.14.14.1.m1.1.1.1.1">2</cn><cn id="S4.T2.14.14.1.m1.2.2.2.2.cmml" type="integer" xref="S4.T2.14.14.1.m1.2.2.2.2">3</cn></set></apply></apply><apply id="S4.T2.14.14.1.m1.4.4.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1"><times id="S4.T2.14.14.1.m1.4.4.1.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.2"></times><apply id="S4.T2.14.14.1.m1.4.4.1.3.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3"><csymbol cd="ambiguous" id="S4.T2.14.14.1.m1.4.4.1.3.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3">superscript</csymbol><apply id="S4.T2.14.14.1.m1.4.4.1.3.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3"><csymbol cd="ambiguous" id="S4.T2.14.14.1.m1.4.4.1.3.2.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3">subscript</csymbol><ci id="S4.T2.14.14.1.m1.4.4.1.3.2.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.2.2">𝔼</ci><ci id="S4.T2.14.14.1.m1.4.4.1.3.2.3.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.2.3">𝑖</ci></apply><apply id="S4.T2.14.14.1.m1.4.4.1.3.3.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3"><csymbol cd="latexml" id="S4.T2.14.14.1.m1.4.4.1.3.3.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.1">conditional</csymbol><apply id="S4.T2.14.14.1.m1.4.4.1.3.3.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2"><times id="S4.T2.14.14.1.m1.4.4.1.3.3.2.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.1"></times><apply id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2"><times id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.1"></times><cn id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.2.cmml" type="float" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.2">3.2</cn><ci id="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.3.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.2.3">M</ci></apply><apply id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3"><divide id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3"></divide><ci id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.2">𝑑</ci><cn id="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.3.cmml" type="integer" xref="S4.T2.14.14.1.m1.4.4.1.3.3.2.3.3">2</cn></apply></apply><cn id="S4.T2.14.14.1.m1.4.4.1.3.3.3.cmml" type="integer" xref="S4.T2.14.14.1.m1.4.4.1.3.3.3">2</cn></apply></apply><apply id="S4.T2.14.14.1.m1.4.4.1.1.1.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.1.1"><csymbol cd="ambiguous" id="S4.T2.14.14.1.m1.4.4.1.1.1.1.1.cmml" xref="S4.T2.14.14.1.m1.4.4.1.1.1">superscript</csymbol><ci id="S4.T2.14.14.1.m1.4.4.1.1.1.1.2.cmml" xref="S4.T2.14.14.1.m1.4.4.1.1.1.1.2">𝑥</ci><apply id="S4.T2.14.14.1.m1.3.3.1.1.1.cmml" xref="S4.T2.14.14.1.m1.3.3.1.1"><minus id="S4.T2.14.14.1.m1.3.3.1.1.1.1.cmml" xref="S4.T2.14.14.1.m1.3.3.1.1"></minus><ci id="S4.T2.14.14.1.m1.3.3.1.1.1.2.cmml" xref="S4.T2.14.14.1.m1.3.3.1.1.1.2">𝑖</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.1.m1.4c">\sum_{i\in\{2,3\}}\mathbb{E}_{i}^{3.2\mathrm{M}\times\frac{d}{2}|2}(x^{(-i)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.1.m1.4d">∑ start_POSTSUBSCRIPT italic_i ∈ { 2 , 3 } end_POSTSUBSCRIPT blackboard_E start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 3.2 roman_M × divide start_ARG italic_d end_ARG start_ARG 2 end_ARG | 2 end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - italic_i ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.3" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.3.1">2.495</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.4" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.4.1">12.127</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.5" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.5.1">2.870</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.6" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.6.1">17.638</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.7" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.7.1">0.340</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.8" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.14.14.8.1">0.578</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.9" style="padding:1.5pt 3.5pt;">0.330</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.10" style="padding:1.5pt 3.5pt;">0.636</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.11" style="padding:1.5pt 3.5pt;">0.738</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.15.15.2" style="padding:1.5pt 3.5pt;">7</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.15.15.1" style="padding:1.5pt 3.5pt;">+<math alttext="\mathbb{E}^{12.8\mathrm{M}\times d}(x^{(-2)})" class="ltx_Math" display="inline" id="S4.T2.15.15.1.m1.2"><semantics id="S4.T2.15.15.1.m1.2a"><mrow id="S4.T2.15.15.1.m1.2.2" xref="S4.T2.15.15.1.m1.2.2.cmml"><msup id="S4.T2.15.15.1.m1.2.2.3" xref="S4.T2.15.15.1.m1.2.2.3.cmml"><mi id="S4.T2.15.15.1.m1.2.2.3.2" xref="S4.T2.15.15.1.m1.2.2.3.2.cmml">𝔼</mi><mrow id="S4.T2.15.15.1.m1.2.2.3.3" xref="S4.T2.15.15.1.m1.2.2.3.3.cmml"><mrow id="S4.T2.15.15.1.m1.2.2.3.3.2" xref="S4.T2.15.15.1.m1.2.2.3.3.2.cmml"><mn id="S4.T2.15.15.1.m1.2.2.3.3.2.2" xref="S4.T2.15.15.1.m1.2.2.3.3.2.2.cmml">12.8</mn><mo id="S4.T2.15.15.1.m1.2.2.3.3.2.1" xref="S4.T2.15.15.1.m1.2.2.3.3.2.1.cmml">⁢</mo><mi id="S4.T2.15.15.1.m1.2.2.3.3.2.3" mathvariant="normal" xref="S4.T2.15.15.1.m1.2.2.3.3.2.3.cmml">M</mi></mrow><mo id="S4.T2.15.15.1.m1.2.2.3.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.15.15.1.m1.2.2.3.3.1.cmml">×</mo><mi id="S4.T2.15.15.1.m1.2.2.3.3.3" xref="S4.T2.15.15.1.m1.2.2.3.3.3.cmml">d</mi></mrow></msup><mo id="S4.T2.15.15.1.m1.2.2.2" xref="S4.T2.15.15.1.m1.2.2.2.cmml">⁢</mo><mrow id="S4.T2.15.15.1.m1.2.2.1.1" xref="S4.T2.15.15.1.m1.2.2.1.1.1.cmml"><mo id="S4.T2.15.15.1.m1.2.2.1.1.2" stretchy="false" xref="S4.T2.15.15.1.m1.2.2.1.1.1.cmml">(</mo><msup id="S4.T2.15.15.1.m1.2.2.1.1.1" xref="S4.T2.15.15.1.m1.2.2.1.1.1.cmml"><mi id="S4.T2.15.15.1.m1.2.2.1.1.1.2" xref="S4.T2.15.15.1.m1.2.2.1.1.1.2.cmml">x</mi><mrow id="S4.T2.15.15.1.m1.1.1.1.1" xref="S4.T2.15.15.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.15.15.1.m1.1.1.1.1.2" stretchy="false" xref="S4.T2.15.15.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="S4.T2.15.15.1.m1.1.1.1.1.1" xref="S4.T2.15.15.1.m1.1.1.1.1.1.cmml"><mo id="S4.T2.15.15.1.m1.1.1.1.1.1a" xref="S4.T2.15.15.1.m1.1.1.1.1.1.cmml">−</mo><mn id="S4.T2.15.15.1.m1.1.1.1.1.1.2" xref="S4.T2.15.15.1.m1.1.1.1.1.1.2.cmml">2</mn></mrow><mo id="S4.T2.15.15.1.m1.1.1.1.1.3" stretchy="false" xref="S4.T2.15.15.1.m1.1.1.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.15.15.1.m1.2.2.1.1.3" stretchy="false" xref="S4.T2.15.15.1.m1.2.2.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.1.m1.2b"><apply id="S4.T2.15.15.1.m1.2.2.cmml" xref="S4.T2.15.15.1.m1.2.2"><times id="S4.T2.15.15.1.m1.2.2.2.cmml" xref="S4.T2.15.15.1.m1.2.2.2"></times><apply id="S4.T2.15.15.1.m1.2.2.3.cmml" xref="S4.T2.15.15.1.m1.2.2.3"><csymbol cd="ambiguous" id="S4.T2.15.15.1.m1.2.2.3.1.cmml" xref="S4.T2.15.15.1.m1.2.2.3">superscript</csymbol><ci id="S4.T2.15.15.1.m1.2.2.3.2.cmml" xref="S4.T2.15.15.1.m1.2.2.3.2">𝔼</ci><apply id="S4.T2.15.15.1.m1.2.2.3.3.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3"><times id="S4.T2.15.15.1.m1.2.2.3.3.1.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3.1"></times><apply id="S4.T2.15.15.1.m1.2.2.3.3.2.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3.2"><times id="S4.T2.15.15.1.m1.2.2.3.3.2.1.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3.2.1"></times><cn id="S4.T2.15.15.1.m1.2.2.3.3.2.2.cmml" type="float" xref="S4.T2.15.15.1.m1.2.2.3.3.2.2">12.8</cn><ci id="S4.T2.15.15.1.m1.2.2.3.3.2.3.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3.2.3">M</ci></apply><ci id="S4.T2.15.15.1.m1.2.2.3.3.3.cmml" xref="S4.T2.15.15.1.m1.2.2.3.3.3">𝑑</ci></apply></apply><apply id="S4.T2.15.15.1.m1.2.2.1.1.1.cmml" xref="S4.T2.15.15.1.m1.2.2.1.1"><csymbol cd="ambiguous" id="S4.T2.15.15.1.m1.2.2.1.1.1.1.cmml" xref="S4.T2.15.15.1.m1.2.2.1.1">superscript</csymbol><ci id="S4.T2.15.15.1.m1.2.2.1.1.1.2.cmml" xref="S4.T2.15.15.1.m1.2.2.1.1.1.2">𝑥</ci><apply id="S4.T2.15.15.1.m1.1.1.1.1.1.cmml" xref="S4.T2.15.15.1.m1.1.1.1.1"><minus id="S4.T2.15.15.1.m1.1.1.1.1.1.1.cmml" xref="S4.T2.15.15.1.m1.1.1.1.1"></minus><cn id="S4.T2.15.15.1.m1.1.1.1.1.1.2.cmml" type="integer" xref="S4.T2.15.15.1.m1.1.1.1.1.1.2">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.1.m1.2c">\mathbb{E}^{12.8\mathrm{M}\times d}(x^{(-2)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.1.m1.2d">blackboard_E start_POSTSUPERSCRIPT 12.8 roman_M × italic_d end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - 2 ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.3" style="padding:1.5pt 3.5pt;">2.493</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.4" style="padding:1.5pt 3.5pt;">12.100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.5" style="padding:1.5pt 3.5pt;">2.881</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.6" style="padding:1.5pt 3.5pt;">17.832</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.7" style="padding:1.5pt 3.5pt;">0.334</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.8" style="padding:1.5pt 3.5pt;">0.569</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.9" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.9.1">0.343</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.10" style="padding:1.5pt 3.5pt;">0.643</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.11" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.15.15.11.1">0.730</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.16.16.2" style="padding:1.5pt 3.5pt;">8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.16.16.1" style="padding:1.5pt 3.5pt;">+<math alttext="\sum_{i\in\{2,3\}}\mathbb{E}_{i}^{12.8\mathrm{M}\times\frac{d}{2}|2}(x^{(-i)})" class="ltx_Math" display="inline" id="S4.T2.16.16.1.m1.4"><semantics id="S4.T2.16.16.1.m1.4a"><mrow id="S4.T2.16.16.1.m1.4.4" xref="S4.T2.16.16.1.m1.4.4.cmml"><msub id="S4.T2.16.16.1.m1.4.4.2" xref="S4.T2.16.16.1.m1.4.4.2.cmml"><mo id="S4.T2.16.16.1.m1.4.4.2.2" xref="S4.T2.16.16.1.m1.4.4.2.2.cmml">∑</mo><mrow id="S4.T2.16.16.1.m1.2.2.2" xref="S4.T2.16.16.1.m1.2.2.2.cmml"><mi id="S4.T2.16.16.1.m1.2.2.2.4" xref="S4.T2.16.16.1.m1.2.2.2.4.cmml">i</mi><mo id="S4.T2.16.16.1.m1.2.2.2.3" xref="S4.T2.16.16.1.m1.2.2.2.3.cmml">∈</mo><mrow id="S4.T2.16.16.1.m1.2.2.2.5.2" xref="S4.T2.16.16.1.m1.2.2.2.5.1.cmml"><mo id="S4.T2.16.16.1.m1.2.2.2.5.2.1" stretchy="false" xref="S4.T2.16.16.1.m1.2.2.2.5.1.cmml">{</mo><mn id="S4.T2.16.16.1.m1.1.1.1.1" xref="S4.T2.16.16.1.m1.1.1.1.1.cmml">2</mn><mo id="S4.T2.16.16.1.m1.2.2.2.5.2.2" xref="S4.T2.16.16.1.m1.2.2.2.5.1.cmml">,</mo><mn id="S4.T2.16.16.1.m1.2.2.2.2" xref="S4.T2.16.16.1.m1.2.2.2.2.cmml">3</mn><mo id="S4.T2.16.16.1.m1.2.2.2.5.2.3" stretchy="false" xref="S4.T2.16.16.1.m1.2.2.2.5.1.cmml">}</mo></mrow></mrow></msub><mrow id="S4.T2.16.16.1.m1.4.4.1" xref="S4.T2.16.16.1.m1.4.4.1.cmml"><msubsup id="S4.T2.16.16.1.m1.4.4.1.3" xref="S4.T2.16.16.1.m1.4.4.1.3.cmml"><mi id="S4.T2.16.16.1.m1.4.4.1.3.2.2" xref="S4.T2.16.16.1.m1.4.4.1.3.2.2.cmml">𝔼</mi><mi id="S4.T2.16.16.1.m1.4.4.1.3.2.3" xref="S4.T2.16.16.1.m1.4.4.1.3.2.3.cmml">i</mi><mrow id="S4.T2.16.16.1.m1.4.4.1.3.3" xref="S4.T2.16.16.1.m1.4.4.1.3.3.cmml"><mrow id="S4.T2.16.16.1.m1.4.4.1.3.3.2" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.cmml"><mrow id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.cmml"><mn id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.2" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.2.cmml">12.8</mn><mo id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.1" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.1.cmml">⁢</mo><mi id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.3" mathvariant="normal" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.3.cmml">M</mi></mrow><mo id="S4.T2.16.16.1.m1.4.4.1.3.3.2.1" lspace="0.222em" rspace="0.222em" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.1.cmml">×</mo><mfrac id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.cmml"><mi id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.2" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.2.cmml">d</mi><mn id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.3" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.3.cmml">2</mn></mfrac></mrow><mo fence="false" id="S4.T2.16.16.1.m1.4.4.1.3.3.1" xref="S4.T2.16.16.1.m1.4.4.1.3.3.1.cmml">|</mo><mn id="S4.T2.16.16.1.m1.4.4.1.3.3.3" xref="S4.T2.16.16.1.m1.4.4.1.3.3.3.cmml">2</mn></mrow></msubsup><mo id="S4.T2.16.16.1.m1.4.4.1.2" xref="S4.T2.16.16.1.m1.4.4.1.2.cmml">⁢</mo><mrow id="S4.T2.16.16.1.m1.4.4.1.1.1" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.cmml"><mo id="S4.T2.16.16.1.m1.4.4.1.1.1.2" stretchy="false" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.cmml">(</mo><msup id="S4.T2.16.16.1.m1.4.4.1.1.1.1" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.cmml"><mi id="S4.T2.16.16.1.m1.4.4.1.1.1.1.2" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.2.cmml">x</mi><mrow id="S4.T2.16.16.1.m1.3.3.1.1" xref="S4.T2.16.16.1.m1.3.3.1.1.1.cmml"><mo id="S4.T2.16.16.1.m1.3.3.1.1.2" stretchy="false" xref="S4.T2.16.16.1.m1.3.3.1.1.1.cmml">(</mo><mrow id="S4.T2.16.16.1.m1.3.3.1.1.1" xref="S4.T2.16.16.1.m1.3.3.1.1.1.cmml"><mo id="S4.T2.16.16.1.m1.3.3.1.1.1a" xref="S4.T2.16.16.1.m1.3.3.1.1.1.cmml">−</mo><mi id="S4.T2.16.16.1.m1.3.3.1.1.1.2" xref="S4.T2.16.16.1.m1.3.3.1.1.1.2.cmml">i</mi></mrow><mo id="S4.T2.16.16.1.m1.3.3.1.1.3" stretchy="false" xref="S4.T2.16.16.1.m1.3.3.1.1.1.cmml">)</mo></mrow></msup><mo id="S4.T2.16.16.1.m1.4.4.1.1.1.3" stretchy="false" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.1.m1.4b"><apply id="S4.T2.16.16.1.m1.4.4.cmml" xref="S4.T2.16.16.1.m1.4.4"><apply id="S4.T2.16.16.1.m1.4.4.2.cmml" xref="S4.T2.16.16.1.m1.4.4.2"><csymbol cd="ambiguous" id="S4.T2.16.16.1.m1.4.4.2.1.cmml" xref="S4.T2.16.16.1.m1.4.4.2">subscript</csymbol><sum id="S4.T2.16.16.1.m1.4.4.2.2.cmml" xref="S4.T2.16.16.1.m1.4.4.2.2"></sum><apply id="S4.T2.16.16.1.m1.2.2.2.cmml" xref="S4.T2.16.16.1.m1.2.2.2"><in id="S4.T2.16.16.1.m1.2.2.2.3.cmml" xref="S4.T2.16.16.1.m1.2.2.2.3"></in><ci id="S4.T2.16.16.1.m1.2.2.2.4.cmml" xref="S4.T2.16.16.1.m1.2.2.2.4">𝑖</ci><set id="S4.T2.16.16.1.m1.2.2.2.5.1.cmml" xref="S4.T2.16.16.1.m1.2.2.2.5.2"><cn id="S4.T2.16.16.1.m1.1.1.1.1.cmml" type="integer" xref="S4.T2.16.16.1.m1.1.1.1.1">2</cn><cn id="S4.T2.16.16.1.m1.2.2.2.2.cmml" type="integer" xref="S4.T2.16.16.1.m1.2.2.2.2">3</cn></set></apply></apply><apply id="S4.T2.16.16.1.m1.4.4.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1"><times id="S4.T2.16.16.1.m1.4.4.1.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.2"></times><apply id="S4.T2.16.16.1.m1.4.4.1.3.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3"><csymbol cd="ambiguous" id="S4.T2.16.16.1.m1.4.4.1.3.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3">superscript</csymbol><apply id="S4.T2.16.16.1.m1.4.4.1.3.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3"><csymbol cd="ambiguous" id="S4.T2.16.16.1.m1.4.4.1.3.2.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3">subscript</csymbol><ci id="S4.T2.16.16.1.m1.4.4.1.3.2.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.2.2">𝔼</ci><ci id="S4.T2.16.16.1.m1.4.4.1.3.2.3.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.2.3">𝑖</ci></apply><apply id="S4.T2.16.16.1.m1.4.4.1.3.3.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3"><csymbol cd="latexml" id="S4.T2.16.16.1.m1.4.4.1.3.3.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.1">conditional</csymbol><apply id="S4.T2.16.16.1.m1.4.4.1.3.3.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2"><times id="S4.T2.16.16.1.m1.4.4.1.3.3.2.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.1"></times><apply id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2"><times id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.1"></times><cn id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.2.cmml" type="float" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.2">12.8</cn><ci id="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.3.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.2.3">M</ci></apply><apply id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3"><divide id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3"></divide><ci id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.2">𝑑</ci><cn id="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.3.cmml" type="integer" xref="S4.T2.16.16.1.m1.4.4.1.3.3.2.3.3">2</cn></apply></apply><cn id="S4.T2.16.16.1.m1.4.4.1.3.3.3.cmml" type="integer" xref="S4.T2.16.16.1.m1.4.4.1.3.3.3">2</cn></apply></apply><apply id="S4.T2.16.16.1.m1.4.4.1.1.1.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.1.1"><csymbol cd="ambiguous" id="S4.T2.16.16.1.m1.4.4.1.1.1.1.1.cmml" xref="S4.T2.16.16.1.m1.4.4.1.1.1">superscript</csymbol><ci id="S4.T2.16.16.1.m1.4.4.1.1.1.1.2.cmml" xref="S4.T2.16.16.1.m1.4.4.1.1.1.1.2">𝑥</ci><apply id="S4.T2.16.16.1.m1.3.3.1.1.1.cmml" xref="S4.T2.16.16.1.m1.3.3.1.1"><minus id="S4.T2.16.16.1.m1.3.3.1.1.1.1.cmml" xref="S4.T2.16.16.1.m1.3.3.1.1"></minus><ci id="S4.T2.16.16.1.m1.3.3.1.1.1.2.cmml" xref="S4.T2.16.16.1.m1.3.3.1.1.1.2">𝑖</ci></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.1.m1.4c">\sum_{i\in\{2,3\}}\mathbb{E}_{i}^{12.8\mathrm{M}\times\frac{d}{2}|2}(x^{(-i)})</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.1.m1.4d">∑ start_POSTSUBSCRIPT italic_i ∈ { 2 , 3 } end_POSTSUBSCRIPT blackboard_E start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 12.8 roman_M × divide start_ARG italic_d end_ARG start_ARG 2 end_ARG | 2 end_POSTSUPERSCRIPT ( italic_x start_POSTSUPERSCRIPT ( - italic_i ) end_POSTSUPERSCRIPT )</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.3" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.3.1">2.472</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.4" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.4.1">11.854</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.5" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.5.1">2.862</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.6" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.6.1">17.494</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.7" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.7.1">0.342</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.8" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.8.1">0.577</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.9" style="padding:1.5pt 3.5pt;">0.329</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.10" style="padding:1.5pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.16.16.10.1">0.645</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.16.16.11" style="padding:1.5pt 3.5pt;">0.728</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of various input vocabulary designs on model performance.  It compares different configurations of over-encoding, varying the size and structure of the input vocabulary (n-grams and embedding dimensions). The results are evaluated using training loss, perplexity, and multiple downstream benchmark tasks (MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy, and PIQA), each designed to measure specific aspects of language understanding.  All models in the study were trained with 500 billion tokens to ensure sufficient training.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study on different input vocabulary designs. The downstream tasks follow the eval settings in OLMoE, where MMLU-V stands for MMLU-Var, HS for Hellaswag, ARC-C for ARC-Challenge and ARC-E for ARC-Easy. All models are trained with 500B tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.11.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.3.4">1-Gram</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.3.5">2-Gram</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.3.6">3-Gram</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.9.1.1"><math alttext="k" class="ltx_Math" display="inline" id="S4.T3.9.1.1.m1.1"><semantics id="S4.T3.9.1.1.m1.1a"><mi id="S4.T3.9.1.1.m1.1.1" xref="S4.T3.9.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T3.9.1.1.m1.1b"><ci id="S4.T3.9.1.1.m1.1.1.cmml" xref="S4.T3.9.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.1.1.m1.1d">italic_k</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.10.2.2">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.10.2.2.m1.1"><semantics id="S4.T3.10.2.2.m1.1a"><mo id="S4.T3.10.2.2.m1.1.1" stretchy="false" xref="S4.T3.10.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.2.2.m1.1b"><ci id="S4.T3.10.2.2.m1.1.1.cmml" xref="S4.T3.10.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.11.3.3">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.11.3.3.m1.1"><semantics id="S4.T3.11.3.3.m1.1a"><mo id="S4.T3.11.3.3.m1.1.1" stretchy="false" xref="S4.T3.11.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.3.3.m1.1b"><ci id="S4.T3.11.3.3.m1.1.1.cmml" xref="S4.T3.11.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.11.4.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.4.1.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.4.1.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.4.1.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.11.4.1.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.4.1.5">2.714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.4.1.6">15.094</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.5.2">
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.2.1">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.2.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.2.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.11.5.2.4">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.2.5">2.785</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.5.2.6">16.205</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.6.3">
<td class="ltx_td ltx_align_center" id="S4.T3.11.6.3.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.6.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.6.3.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.11.6.3.4">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.6.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.11.6.3.5.1">2.678</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.6.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.11.6.3.6.1">14.555</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.7.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.7.4.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.7.4.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.7.4.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.11.7.4.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.7.4.5">2.670</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.7.4.6">14.447</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.8.5">
<td class="ltx_td ltx_align_center" id="S4.T3.11.8.5.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.8.5.2">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.8.5.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.11.8.5.4">4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.8.5.5">2.684</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.8.5.6">14.642</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.9.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.9.6.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.9.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.9.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.11.9.6.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.9.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.11.9.6.5.1">2.667</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.9.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.11.9.6.6.1">14.394</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the hierarchical design of over-encoding in the context of natural language processing.  It investigates the impact of different combinations of 1-gram, 2-gram, and 3-gram tokens on model performance.  The study uses a fixed embedding size (m=3.2M) and trains the model with 50 billion tokens.  The results, including training loss and perplexity, are compared across different configurations to determine the optimal approach for incorporating hierarchical input tokens in over-encoding models.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study for the hierarchical design of over-encoding. The symbol ‘✓’ on the n𝑛nitalic_n-gram column denotes n𝑛nitalic_n-gram token x(−n)superscript𝑥𝑛x^{(-n)}italic_x start_POSTSUPERSCRIPT ( - italic_n ) end_POSTSUPERSCRIPT is adopted. The experiments are conducted with m=3.2⁢M𝑚3.2Mm=3.2\mathrm{M}italic_m = 3.2 roman_M, and the metrics are reported after training on 50B tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.6.4.5">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.1.1">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.1.1.m1.1"><semantics id="S4.T4.3.1.1.m1.1a"><mo id="S4.T4.3.1.1.m1.1.1" stretchy="false" xref="S4.T4.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.m1.1b"><ci id="S4.T4.3.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.2.2">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.2.2.m1.1"><semantics id="S4.T4.4.2.2.m1.1a"><mo id="S4.T4.4.2.2.m1.1.1" stretchy="false" xref="S4.T4.4.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.2.2.m1.1b"><ci id="S4.T4.4.2.2.m1.1.1.cmml" xref="S4.T4.4.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.3.3">Eval Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.5.3.3.m1.1"><semantics id="S4.T4.5.3.3.m1.1a"><mo id="S4.T4.5.3.3.m1.1.1" stretchy="false" xref="S4.T4.5.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.3.3.m1.1b"><ci id="S4.T4.5.3.3.m1.1.1.cmml" xref="S4.T4.5.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.6.4.4">Eval PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.6.4.4.m1.1"><semantics id="S4.T4.6.4.4.m1.1a"><mo id="S4.T4.6.4.4.m1.1.1" stretchy="false" xref="S4.T4.6.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.4.4.m1.1b"><ci id="S4.T4.6.4.4.m1.1.1.cmml" xref="S4.T4.6.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.8.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.8.7.1.1">baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.7.1.2">2.714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.7.1.3">15.094</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.7.1.4">3.094</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.7.1.5">22.060</td>
</tr>
<tr class="ltx_tr" id="S4.T4.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.7.5.1">+<math alttext="\mathbb{E}^{64V\times d}" class="ltx_Math" display="inline" id="S4.T4.7.5.1.m1.1"><semantics id="S4.T4.7.5.1.m1.1a"><msup id="S4.T4.7.5.1.m1.1.1" xref="S4.T4.7.5.1.m1.1.1.cmml"><mi id="S4.T4.7.5.1.m1.1.1.2" xref="S4.T4.7.5.1.m1.1.1.2.cmml">𝔼</mi><mrow id="S4.T4.7.5.1.m1.1.1.3" xref="S4.T4.7.5.1.m1.1.1.3.cmml"><mrow id="S4.T4.7.5.1.m1.1.1.3.2" xref="S4.T4.7.5.1.m1.1.1.3.2.cmml"><mn id="S4.T4.7.5.1.m1.1.1.3.2.2" xref="S4.T4.7.5.1.m1.1.1.3.2.2.cmml">64</mn><mo id="S4.T4.7.5.1.m1.1.1.3.2.1" xref="S4.T4.7.5.1.m1.1.1.3.2.1.cmml">⁢</mo><mi id="S4.T4.7.5.1.m1.1.1.3.2.3" xref="S4.T4.7.5.1.m1.1.1.3.2.3.cmml">V</mi></mrow><mo id="S4.T4.7.5.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.7.5.1.m1.1.1.3.1.cmml">×</mo><mi id="S4.T4.7.5.1.m1.1.1.3.3" xref="S4.T4.7.5.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.7.5.1.m1.1b"><apply id="S4.T4.7.5.1.m1.1.1.cmml" xref="S4.T4.7.5.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.7.5.1.m1.1.1.1.cmml" xref="S4.T4.7.5.1.m1.1.1">superscript</csymbol><ci id="S4.T4.7.5.1.m1.1.1.2.cmml" xref="S4.T4.7.5.1.m1.1.1.2">𝔼</ci><apply id="S4.T4.7.5.1.m1.1.1.3.cmml" xref="S4.T4.7.5.1.m1.1.1.3"><times id="S4.T4.7.5.1.m1.1.1.3.1.cmml" xref="S4.T4.7.5.1.m1.1.1.3.1"></times><apply id="S4.T4.7.5.1.m1.1.1.3.2.cmml" xref="S4.T4.7.5.1.m1.1.1.3.2"><times id="S4.T4.7.5.1.m1.1.1.3.2.1.cmml" xref="S4.T4.7.5.1.m1.1.1.3.2.1"></times><cn id="S4.T4.7.5.1.m1.1.1.3.2.2.cmml" type="integer" xref="S4.T4.7.5.1.m1.1.1.3.2.2">64</cn><ci id="S4.T4.7.5.1.m1.1.1.3.2.3.cmml" xref="S4.T4.7.5.1.m1.1.1.3.2.3">𝑉</ci></apply><ci id="S4.T4.7.5.1.m1.1.1.3.3.cmml" xref="S4.T4.7.5.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.5.1.m1.1c">\mathbb{E}^{64V\times d}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.5.1.m1.1d">blackboard_E start_POSTSUPERSCRIPT 64 italic_V × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.2">2.702</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.3">14.892</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.4">3.077</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.5.5">21.710</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.8.6.1">+<math alttext="\mathbb{E}^{3.2\mathrm{M}\times d}" class="ltx_Math" display="inline" id="S4.T4.8.6.1.m1.1"><semantics id="S4.T4.8.6.1.m1.1a"><msup id="S4.T4.8.6.1.m1.1.1" xref="S4.T4.8.6.1.m1.1.1.cmml"><mi id="S4.T4.8.6.1.m1.1.1.2" xref="S4.T4.8.6.1.m1.1.1.2.cmml">𝔼</mi><mrow id="S4.T4.8.6.1.m1.1.1.3" xref="S4.T4.8.6.1.m1.1.1.3.cmml"><mrow id="S4.T4.8.6.1.m1.1.1.3.2" xref="S4.T4.8.6.1.m1.1.1.3.2.cmml"><mn id="S4.T4.8.6.1.m1.1.1.3.2.2" xref="S4.T4.8.6.1.m1.1.1.3.2.2.cmml">3.2</mn><mo id="S4.T4.8.6.1.m1.1.1.3.2.1" xref="S4.T4.8.6.1.m1.1.1.3.2.1.cmml">⁢</mo><mi id="S4.T4.8.6.1.m1.1.1.3.2.3" mathvariant="normal" xref="S4.T4.8.6.1.m1.1.1.3.2.3.cmml">M</mi></mrow><mo id="S4.T4.8.6.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S4.T4.8.6.1.m1.1.1.3.1.cmml">×</mo><mi id="S4.T4.8.6.1.m1.1.1.3.3" xref="S4.T4.8.6.1.m1.1.1.3.3.cmml">d</mi></mrow></msup><annotation-xml encoding="MathML-Content" id="S4.T4.8.6.1.m1.1b"><apply id="S4.T4.8.6.1.m1.1.1.cmml" xref="S4.T4.8.6.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.8.6.1.m1.1.1.1.cmml" xref="S4.T4.8.6.1.m1.1.1">superscript</csymbol><ci id="S4.T4.8.6.1.m1.1.1.2.cmml" xref="S4.T4.8.6.1.m1.1.1.2">𝔼</ci><apply id="S4.T4.8.6.1.m1.1.1.3.cmml" xref="S4.T4.8.6.1.m1.1.1.3"><times id="S4.T4.8.6.1.m1.1.1.3.1.cmml" xref="S4.T4.8.6.1.m1.1.1.3.1"></times><apply id="S4.T4.8.6.1.m1.1.1.3.2.cmml" xref="S4.T4.8.6.1.m1.1.1.3.2"><times id="S4.T4.8.6.1.m1.1.1.3.2.1.cmml" xref="S4.T4.8.6.1.m1.1.1.3.2.1"></times><cn id="S4.T4.8.6.1.m1.1.1.3.2.2.cmml" type="float" xref="S4.T4.8.6.1.m1.1.1.3.2.2">3.2</cn><ci id="S4.T4.8.6.1.m1.1.1.3.2.3.cmml" xref="S4.T4.8.6.1.m1.1.1.3.2.3">M</ci></apply><ci id="S4.T4.8.6.1.m1.1.1.3.3.cmml" xref="S4.T4.8.6.1.m1.1.1.3.3">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.6.1.m1.1c">\mathbb{E}^{3.2\mathrm{M}\times d}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.6.1.m1.1d">blackboard_E start_POSTSUPERSCRIPT 3.2 roman_M × italic_d end_POSTSUPERSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.2.1">2.678</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.3.1">14.555</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.4.1">3.054</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.6.5"><span class="ltx_text ltx_font_bold" id="S4.T4.8.6.5.1">21.202</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of hashing collisions in the over-encoding method on model performance.  It compares several model configurations with approximately the same vocabulary size (~3.2M), varying the way input tokens are mapped to embeddings, to isolate the effects of hashing conflicts. All models were trained with 50B tokens, and the results (training loss, evaluation loss, and downstream task performance metrics) are reported to assess the impact of different embedding strategies.  The goal is to determine the best strategy for minimizing the negative effects of hashing collisions on the effectiveness of over-encoding.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on hashing conflicts. Note the experiments are kept roughly the same vocabulary size, i.e. 64⁢V≈3.218⁢M64𝑉3.218M64V\approx 3.218\mathrm{M}64 italic_V ≈ 3.218 roman_M. The metrics are reported after training with 50B tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.3.4">Model</th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.1.1.1.1">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.2.2.2.2">Eval Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.3.3.3">Downstream<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.3.4.1.1">baseline</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.4.1.2">2.554</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.4.1.3">2.924</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.4.1.4">0.510</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.5.2.1">+MTP</th>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.5.2.2">2.556 <span class="ltx_text" id="S4.T5.3.3.5.2.2.1" style="font-size:70%;color:#FF0000;">+0.002</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.5.2.3">2.925 <span class="ltx_text" id="S4.T5.3.3.5.2.3.1" style="font-size:70%;color:#FF0000;">+0.001</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.5.2.4">0.508 <span class="ltx_text" id="S4.T5.3.3.5.2.4.1" style="font-size:70%;color:#FF0000;">-0.002</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.6.3.1">+MTP-DS</th>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.6.3.2">2.555 <span class="ltx_text" id="S4.T5.3.3.6.3.2.1" style="font-size:70%;color:#FF0000;">+0.001</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.6.3.3">2.926 <span class="ltx_text" id="S4.T5.3.3.6.3.3.1" style="font-size:70%;color:#FF0000;">+0.002</span>
</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.6.3.4">0.511 <span class="ltx_text" id="S4.T5.3.3.6.3.4.1" style="font-size:70%;color:#0000FF;">+0.001</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.3.7.4.1">OE-12.8M</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.2">2.472</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.3">2.862</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.4">0.524</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.3.3.8.5.1">OT-12.8M</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.8.5.2">2.481 <span class="ltx_text" id="S4.T5.3.3.8.5.2.1" style="font-size:70%;color:#FF0000;">+0.009</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.8.5.3">2.869 <span class="ltx_text" id="S4.T5.3.3.8.5.3.1" style="font-size:70%;color:#FF0000;">+0.007</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.8.5.4">0.537 <span class="ltx_text" id="S4.T5.3.3.8.5.4.1" style="font-size:70%;color:#0000FF;">+0.013</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted on the OLMoE-1.3B model to evaluate the impact of Multi-Token Prediction (MTP) methods on model performance.  It compares various configurations, including a baseline model without MTP and several models incorporating different MTP techniques. The table shows the training loss (focused on predicting the next token), evaluation loss, and several downstream task evaluation metrics.  Differences that show improvements over the baseline are highlighted in blue, while performance decreases are shown in red.  The metrics are designed to measure different aspects of language model capability, including commonsense reasoning, scientific understanding, and general knowledge.
> <details>
> <summary>read the caption</summary>
> Table 5: MTP Experiments on OLMoE-1.3B. The loss refers to the next one token prediction loss for MTP methods. Metric difference that improves baseline are marked blue while degrations are marked red.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T6.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A3.T6.7.7.8">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.1.1.1">Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.m1.1a"><mo id="A3.T6.1.1.1.m1.1.1" stretchy="false" xref="A3.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.m1.1b"><ci id="A3.T6.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.2.2.2">Eval Loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.2.2.2.m1.1"><semantics id="A3.T6.2.2.2.m1.1a"><mo id="A3.T6.2.2.2.m1.1.1" stretchy="false" xref="A3.T6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.m1.1b"><ci id="A3.T6.2.2.2.m1.1.1.cmml" xref="A3.T6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.3.3.3">MMLU-Var<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.3.3.3.m1.1"><semantics id="A3.T6.3.3.3.m1.1a"><mo id="A3.T6.3.3.3.m1.1.1" stretchy="false" xref="A3.T6.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.m1.1b"><ci id="A3.T6.3.3.3.m1.1.1.cmml" xref="A3.T6.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.4.4.4">Hellaswag<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.4.4.4.m1.1"><semantics id="A3.T6.4.4.4.m1.1a"><mo id="A3.T6.4.4.4.m1.1.1" stretchy="false" xref="A3.T6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.4.m1.1b"><ci id="A3.T6.4.4.4.m1.1.1.cmml" xref="A3.T6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.5.5.5">Arc-Challenge<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.5.5.5.m1.1"><semantics id="A3.T6.5.5.5.m1.1a"><mo id="A3.T6.5.5.5.m1.1.1" stretchy="false" xref="A3.T6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.5.m1.1b"><ci id="A3.T6.5.5.5.m1.1.1.cmml" xref="A3.T6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.6.6.6">Arc-Easy<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.6.6.6.m1.1"><semantics id="A3.T6.6.6.6.m1.1a"><mo id="A3.T6.6.6.6.m1.1.1" stretchy="false" xref="A3.T6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.6.6.6.m1.1b"><ci id="A3.T6.6.6.6.m1.1.1.cmml" xref="A3.T6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.7.7.7">PIQA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.7.7.7.m1.1"><semantics id="A3.T6.7.7.7.m1.1a"><mo id="A3.T6.7.7.7.m1.1.1" stretchy="false" xref="A3.T6.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.7.7.7.m1.1b"><ci id="A3.T6.7.7.7.m1.1.1.cmml" xref="A3.T6.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.12.13.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.12.13.1.1">OLMoE-1.3B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.2">2.554</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.3">2.924</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.4">0.327</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.5"><span class="ltx_text ltx_font_bold" id="A3.T6.12.13.1.5.1">0.553</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.6">0.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.7">0.622</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.13.1.8">0.727</td>
</tr>
<tr class="ltx_tr" id="A3.T6.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T6.8.8.1">+OD <math alttext="\lambda_{2}=0.1" class="ltx_Math" display="inline" id="A3.T6.8.8.1.m1.1"><semantics id="A3.T6.8.8.1.m1.1a"><mrow id="A3.T6.8.8.1.m1.1.1" xref="A3.T6.8.8.1.m1.1.1.cmml"><msub id="A3.T6.8.8.1.m1.1.1.2" xref="A3.T6.8.8.1.m1.1.1.2.cmml"><mi id="A3.T6.8.8.1.m1.1.1.2.2" xref="A3.T6.8.8.1.m1.1.1.2.2.cmml">λ</mi><mn id="A3.T6.8.8.1.m1.1.1.2.3" xref="A3.T6.8.8.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T6.8.8.1.m1.1.1.1" xref="A3.T6.8.8.1.m1.1.1.1.cmml">=</mo><mn id="A3.T6.8.8.1.m1.1.1.3" xref="A3.T6.8.8.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.8.8.1.m1.1b"><apply id="A3.T6.8.8.1.m1.1.1.cmml" xref="A3.T6.8.8.1.m1.1.1"><eq id="A3.T6.8.8.1.m1.1.1.1.cmml" xref="A3.T6.8.8.1.m1.1.1.1"></eq><apply id="A3.T6.8.8.1.m1.1.1.2.cmml" xref="A3.T6.8.8.1.m1.1.1.2"><csymbol cd="ambiguous" id="A3.T6.8.8.1.m1.1.1.2.1.cmml" xref="A3.T6.8.8.1.m1.1.1.2">subscript</csymbol><ci id="A3.T6.8.8.1.m1.1.1.2.2.cmml" xref="A3.T6.8.8.1.m1.1.1.2.2">𝜆</ci><cn id="A3.T6.8.8.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T6.8.8.1.m1.1.1.2.3">2</cn></apply><cn id="A3.T6.8.8.1.m1.1.1.3.cmml" type="float" xref="A3.T6.8.8.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.8.8.1.m1.1c">\lambda_{2}=0.1</annotation><annotation encoding="application/x-llamapun" id="A3.T6.8.8.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.1</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.2">2.549</td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.3">2.920</td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.4">0.325</td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.5"><span class="ltx_text ltx_font_bold" id="A3.T6.8.8.5.1">0.553</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.6"><span class="ltx_text ltx_font_bold" id="A3.T6.8.8.6.1">0.331</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.7">0.610</td>
<td class="ltx_td ltx_align_center" id="A3.T6.8.8.8">0.721</td>
</tr>
<tr class="ltx_tr" id="A3.T6.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T6.9.9.1">+OD <math alttext="\lambda_{2}=0.2" class="ltx_Math" display="inline" id="A3.T6.9.9.1.m1.1"><semantics id="A3.T6.9.9.1.m1.1a"><mrow id="A3.T6.9.9.1.m1.1.1" xref="A3.T6.9.9.1.m1.1.1.cmml"><msub id="A3.T6.9.9.1.m1.1.1.2" xref="A3.T6.9.9.1.m1.1.1.2.cmml"><mi id="A3.T6.9.9.1.m1.1.1.2.2" xref="A3.T6.9.9.1.m1.1.1.2.2.cmml">λ</mi><mn id="A3.T6.9.9.1.m1.1.1.2.3" xref="A3.T6.9.9.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T6.9.9.1.m1.1.1.1" xref="A3.T6.9.9.1.m1.1.1.1.cmml">=</mo><mn id="A3.T6.9.9.1.m1.1.1.3" xref="A3.T6.9.9.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.9.9.1.m1.1b"><apply id="A3.T6.9.9.1.m1.1.1.cmml" xref="A3.T6.9.9.1.m1.1.1"><eq id="A3.T6.9.9.1.m1.1.1.1.cmml" xref="A3.T6.9.9.1.m1.1.1.1"></eq><apply id="A3.T6.9.9.1.m1.1.1.2.cmml" xref="A3.T6.9.9.1.m1.1.1.2"><csymbol cd="ambiguous" id="A3.T6.9.9.1.m1.1.1.2.1.cmml" xref="A3.T6.9.9.1.m1.1.1.2">subscript</csymbol><ci id="A3.T6.9.9.1.m1.1.1.2.2.cmml" xref="A3.T6.9.9.1.m1.1.1.2.2">𝜆</ci><cn id="A3.T6.9.9.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T6.9.9.1.m1.1.1.2.3">2</cn></apply><cn id="A3.T6.9.9.1.m1.1.1.3.cmml" type="float" xref="A3.T6.9.9.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.9.9.1.m1.1c">\lambda_{2}=0.2</annotation><annotation encoding="application/x-llamapun" id="A3.T6.9.9.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.2</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.2">2.549</td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.3"><span class="ltx_text ltx_font_bold" id="A3.T6.9.9.3.1">2.918</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.4">0.327</td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.5">0.551</td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.6">0.323</td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.7"><span class="ltx_text ltx_font_bold" id="A3.T6.9.9.7.1">0.633</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.9.9.8"><span class="ltx_text ltx_font_bold" id="A3.T6.9.9.8.1">0.728</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T6.10.10.1">+OD <math alttext="\lambda_{2}=0.5" class="ltx_Math" display="inline" id="A3.T6.10.10.1.m1.1"><semantics id="A3.T6.10.10.1.m1.1a"><mrow id="A3.T6.10.10.1.m1.1.1" xref="A3.T6.10.10.1.m1.1.1.cmml"><msub id="A3.T6.10.10.1.m1.1.1.2" xref="A3.T6.10.10.1.m1.1.1.2.cmml"><mi id="A3.T6.10.10.1.m1.1.1.2.2" xref="A3.T6.10.10.1.m1.1.1.2.2.cmml">λ</mi><mn id="A3.T6.10.10.1.m1.1.1.2.3" xref="A3.T6.10.10.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T6.10.10.1.m1.1.1.1" xref="A3.T6.10.10.1.m1.1.1.1.cmml">=</mo><mn id="A3.T6.10.10.1.m1.1.1.3" xref="A3.T6.10.10.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.10.10.1.m1.1b"><apply id="A3.T6.10.10.1.m1.1.1.cmml" xref="A3.T6.10.10.1.m1.1.1"><eq id="A3.T6.10.10.1.m1.1.1.1.cmml" xref="A3.T6.10.10.1.m1.1.1.1"></eq><apply id="A3.T6.10.10.1.m1.1.1.2.cmml" xref="A3.T6.10.10.1.m1.1.1.2"><csymbol cd="ambiguous" id="A3.T6.10.10.1.m1.1.1.2.1.cmml" xref="A3.T6.10.10.1.m1.1.1.2">subscript</csymbol><ci id="A3.T6.10.10.1.m1.1.1.2.2.cmml" xref="A3.T6.10.10.1.m1.1.1.2.2">𝜆</ci><cn id="A3.T6.10.10.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T6.10.10.1.m1.1.1.2.3">2</cn></apply><cn id="A3.T6.10.10.1.m1.1.1.3.cmml" type="float" xref="A3.T6.10.10.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.10.10.1.m1.1c">\lambda_{2}=0.5</annotation><annotation encoding="application/x-llamapun" id="A3.T6.10.10.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.5</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.2">2.549</td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.3"><span class="ltx_text ltx_font_bold" id="A3.T6.10.10.3.1">2.918</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.4">0.325</td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.5"><span class="ltx_text ltx_font_bold" id="A3.T6.10.10.5.1">0.553</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.6">0.308</td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.7">0.619</td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.8">0.727</td>
</tr>
<tr class="ltx_tr" id="A3.T6.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A3.T6.11.11.1">+OD <math alttext="\lambda_{2}=1.0" class="ltx_Math" display="inline" id="A3.T6.11.11.1.m1.1"><semantics id="A3.T6.11.11.1.m1.1a"><mrow id="A3.T6.11.11.1.m1.1.1" xref="A3.T6.11.11.1.m1.1.1.cmml"><msub id="A3.T6.11.11.1.m1.1.1.2" xref="A3.T6.11.11.1.m1.1.1.2.cmml"><mi id="A3.T6.11.11.1.m1.1.1.2.2" xref="A3.T6.11.11.1.m1.1.1.2.2.cmml">λ</mi><mn id="A3.T6.11.11.1.m1.1.1.2.3" xref="A3.T6.11.11.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T6.11.11.1.m1.1.1.1" xref="A3.T6.11.11.1.m1.1.1.1.cmml">=</mo><mn id="A3.T6.11.11.1.m1.1.1.3" xref="A3.T6.11.11.1.m1.1.1.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.11.11.1.m1.1b"><apply id="A3.T6.11.11.1.m1.1.1.cmml" xref="A3.T6.11.11.1.m1.1.1"><eq id="A3.T6.11.11.1.m1.1.1.1.cmml" xref="A3.T6.11.11.1.m1.1.1.1"></eq><apply id="A3.T6.11.11.1.m1.1.1.2.cmml" xref="A3.T6.11.11.1.m1.1.1.2"><csymbol cd="ambiguous" id="A3.T6.11.11.1.m1.1.1.2.1.cmml" xref="A3.T6.11.11.1.m1.1.1.2">subscript</csymbol><ci id="A3.T6.11.11.1.m1.1.1.2.2.cmml" xref="A3.T6.11.11.1.m1.1.1.2.2">𝜆</ci><cn id="A3.T6.11.11.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T6.11.11.1.m1.1.1.2.3">2</cn></apply><cn id="A3.T6.11.11.1.m1.1.1.3.cmml" type="float" xref="A3.T6.11.11.1.m1.1.1.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.11.11.1.m1.1c">\lambda_{2}=1.0</annotation><annotation encoding="application/x-llamapun" id="A3.T6.11.11.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 1.0</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.2">2.555</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.3">2.923</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.4"><span class="ltx_text ltx_font_bold" id="A3.T6.11.11.4.1">0.328</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.5">0.550</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.6">0.320</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.7">0.629</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.8">0.722</td>
</tr>
<tr class="ltx_tr" id="A3.T6.12.14.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A3.T6.12.14.2.1">OLMoE-7B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.2">2.306</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.3"><span class="ltx_text ltx_font_bold" id="A3.T6.12.14.2.3.1">2.670</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.4">0.385</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.5"><span class="ltx_text ltx_font_bold" id="A3.T6.12.14.2.5.1">0.695</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.6"><span class="ltx_text ltx_font_bold" id="A3.T6.12.14.2.6.1">0.414</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.7"><span class="ltx_text ltx_font_bold" id="A3.T6.12.14.2.7.1">0.740</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.12.14.2.8">0.775</td>
</tr>
<tr class="ltx_tr" id="A3.T6.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A3.T6.12.12.1">+OD <math alttext="\lambda_{2}=0.1" class="ltx_Math" display="inline" id="A3.T6.12.12.1.m1.1"><semantics id="A3.T6.12.12.1.m1.1a"><mrow id="A3.T6.12.12.1.m1.1.1" xref="A3.T6.12.12.1.m1.1.1.cmml"><msub id="A3.T6.12.12.1.m1.1.1.2" xref="A3.T6.12.12.1.m1.1.1.2.cmml"><mi id="A3.T6.12.12.1.m1.1.1.2.2" xref="A3.T6.12.12.1.m1.1.1.2.2.cmml">λ</mi><mn id="A3.T6.12.12.1.m1.1.1.2.3" xref="A3.T6.12.12.1.m1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T6.12.12.1.m1.1.1.1" xref="A3.T6.12.12.1.m1.1.1.1.cmml">=</mo><mn id="A3.T6.12.12.1.m1.1.1.3" xref="A3.T6.12.12.1.m1.1.1.3.cmml">0.1</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.12.12.1.m1.1b"><apply id="A3.T6.12.12.1.m1.1.1.cmml" xref="A3.T6.12.12.1.m1.1.1"><eq id="A3.T6.12.12.1.m1.1.1.1.cmml" xref="A3.T6.12.12.1.m1.1.1.1"></eq><apply id="A3.T6.12.12.1.m1.1.1.2.cmml" xref="A3.T6.12.12.1.m1.1.1.2"><csymbol cd="ambiguous" id="A3.T6.12.12.1.m1.1.1.2.1.cmml" xref="A3.T6.12.12.1.m1.1.1.2">subscript</csymbol><ci id="A3.T6.12.12.1.m1.1.1.2.2.cmml" xref="A3.T6.12.12.1.m1.1.1.2.2">𝜆</ci><cn id="A3.T6.12.12.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T6.12.12.1.m1.1.1.2.3">2</cn></apply><cn id="A3.T6.12.12.1.m1.1.1.3.cmml" type="float" xref="A3.T6.12.12.1.m1.1.1.3">0.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.12.12.1.m1.1c">\lambda_{2}=0.1</annotation><annotation encoding="application/x-llamapun" id="A3.T6.12.12.1.m1.1d">italic_λ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.1</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.2"><span class="ltx_text ltx_font_bold" id="A3.T6.12.12.2.1">2.304</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.3">2.672</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.4"><span class="ltx_text ltx_font_bold" id="A3.T6.12.12.4.1">0.387</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.5">0.691</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.6">0.409</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.7">0.724</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.12.12.8"><span class="ltx_text ltx_font_bold" id="A3.T6.12.12.8.1">0.776</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different loss weight hyperparameters (λ2) on the performance of the Over-Decoding (OD) method.  The study is conducted on two different sized models, OLMOE-1.3B and OLMOE-7B. The table shows the training loss, evaluation loss (Eval Loss), and average performance across multiple downstream tasks (MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy, and PIQA) for various values of λ2.  This helps determine which weight setting produces the optimal balance between training loss and performance on downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on loss weights for OD. The column downstream represents the average score of MMLU-Var, Hellaswag, ARC-Challenge, ARC-Easy and PIQA.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.16975/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.16975/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}