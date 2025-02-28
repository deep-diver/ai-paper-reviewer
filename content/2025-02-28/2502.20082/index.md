---
title: "LongRoPE2: Near-Lossless LLM Context Window Scaling"
summary: "LongRoPE2: Extends LLM context windows while preserving performance and reducing training costs!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Microsoft",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20082 {{< /keyword >}}
{{< keyword icon="writer" >}} Ning Shang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20082" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20082" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20082/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Extending the context window of Large Language Models (LLMs) is crucial, but existing methods face challenges like performance degradation and high training costs. The core issue is the out-of-distribution (OOD) problem in rotary positional embeddings (RoPE), where higher dimensions aren't sufficiently trained. Previous rescaling methods don't fully address this, leading to suboptimal performance and the need for extensive retraining.



To solve these issues, LongRoPE2 adopts a new approach: It uses needle-driven perplexity evaluation and evolutionary search to identify optimal RoPE rescaling factors, focusing on critical answer tokens. Mixed context window training simultaneously trains with original and rescaled RoPE, preserving short-context performance while adapting to long sequences. Experiments show that LongRoPE2 achieves state-of-the-art results, extending context windows to 128k with minimal performance loss and significantly less training data. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Insufficient training in higher RoPE dimensions causes out-of-distribution issues in long-context extension. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LongRoPE2 uses needle-driven perplexity and evolutionary search to determine optimal RoPE rescaling factors. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Mixed context window training preserves short-context performance while adapting to long contexts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
LongRoPE2 overcomes limitations in extending the context window of LLMs, retaining short-context performance while achieving 128k context length with significantly less training data. This enables more efficient and effective handling of long-range dependencies.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20082/extracted/6233605/ruler.png)

> 🔼 The figure is a graph showing the performance of various large language models (LLMs) on a task requiring long-context understanding.  The x-axis represents the effective context window length (in tokens), and the y-axis represents the accuracy or a similar performance metric on the task.  The graph demonstrates that the LongRoPE2-enhanced LLaMA3-8B model achieves the highest accuracy when using an effective context window of 128k tokens.  Importantly, this performance is achieved while maintaining a model size (around 10B parameters) competitive with other models included in the comparison, showcasing the efficiency of the LongRoPE2 approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: LongRoPE2-extended LLaMA3-8B achieves the best performance at a 128k context length among ∼similar-to\sim∼10B models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.2">
<tr class="ltx_tr" id="S4.T1.2.2.3">
<td class="ltx_td ltx_border_tt" id="S4.T1.2.2.3.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3.2">Short Context Window</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.2.2.3.3">Long Context Window</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td" id="S4.T1.2.2.2.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.1"><math alttext="\leq L_{train}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T1.1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.1.cmml">≤</mo><msub id="S4.T1.1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.3.2" xref="S4.T1.1.1.1.1.m1.1.1.3.2.cmml">L</mi><mrow id="S4.T1.1.1.1.1.m1.1.1.3.3" xref="S4.T1.1.1.1.1.m1.1.1.3.3.cmml"><mi id="S4.T1.1.1.1.1.m1.1.1.3.3.2" xref="S4.T1.1.1.1.1.m1.1.1.3.3.2.cmml">t</mi><mo id="S4.T1.1.1.1.1.m1.1.1.3.3.1" xref="S4.T1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.m1.1.1.3.3.3" xref="S4.T1.1.1.1.1.m1.1.1.3.3.3.cmml">r</mi><mo id="S4.T1.1.1.1.1.m1.1.1.3.3.1a" xref="S4.T1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.m1.1.1.3.3.4" xref="S4.T1.1.1.1.1.m1.1.1.3.3.4.cmml">a</mi><mo id="S4.T1.1.1.1.1.m1.1.1.3.3.1b" xref="S4.T1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.m1.1.1.3.3.5" xref="S4.T1.1.1.1.1.m1.1.1.3.3.5.cmml">i</mi><mo id="S4.T1.1.1.1.1.m1.1.1.3.3.1c" xref="S4.T1.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T1.1.1.1.1.m1.1.1.3.3.6" xref="S4.T1.1.1.1.1.m1.1.1.3.3.6.cmml">n</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"><leq id="S4.T1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1.1"></leq><csymbol cd="latexml" id="S4.T1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S4.T1.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.2">𝐿</ci><apply id="S4.T1.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3"><times id="S4.T1.1.1.1.1.m1.1.1.3.3.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.1"></times><ci id="S4.T1.1.1.1.1.m1.1.1.3.3.2.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.2">𝑡</ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.3.3.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.3">𝑟</ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.3.4.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.4">𝑎</ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.3.5.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.5">𝑖</ci><ci id="S4.T1.1.1.1.1.m1.1.1.3.3.6.cmml" xref="S4.T1.1.1.1.1.m1.1.1.3.3.6">𝑛</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\leq L_{train}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">≤ italic_L start_POSTSUBSCRIPT italic_t italic_r italic_a italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.2">
<math alttext="L_{train}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><msub id="S4.T1.2.2.2.2.m1.1.1" xref="S4.T1.2.2.2.2.m1.1.1.cmml"><mi id="S4.T1.2.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.2.m1.1.1.2.cmml">L</mi><mrow id="S4.T1.2.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.2.m1.1.1.3.cmml"><mi id="S4.T1.2.2.2.2.m1.1.1.3.2" xref="S4.T1.2.2.2.2.m1.1.1.3.2.cmml">t</mi><mo id="S4.T1.2.2.2.2.m1.1.1.3.1" xref="S4.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.2.m1.1.1.3.3" xref="S4.T1.2.2.2.2.m1.1.1.3.3.cmml">r</mi><mo id="S4.T1.2.2.2.2.m1.1.1.3.1a" xref="S4.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.2.m1.1.1.3.4" xref="S4.T1.2.2.2.2.m1.1.1.3.4.cmml">a</mi><mo id="S4.T1.2.2.2.2.m1.1.1.3.1b" xref="S4.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.2.m1.1.1.3.5" xref="S4.T1.2.2.2.2.m1.1.1.3.5.cmml">i</mi><mo id="S4.T1.2.2.2.2.m1.1.1.3.1c" xref="S4.T1.2.2.2.2.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T1.2.2.2.2.m1.1.1.3.6" xref="S4.T1.2.2.2.2.m1.1.1.3.6.cmml">n</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.2.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T1.2.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.2.m1.1.1.2">𝐿</ci><apply id="S4.T1.2.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3"><times id="S4.T1.2.2.2.2.m1.1.1.3.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.1"></times><ci id="S4.T1.2.2.2.2.m1.1.1.3.2.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.2">𝑡</ci><ci id="S4.T1.2.2.2.2.m1.1.1.3.3.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.3">𝑟</ci><ci id="S4.T1.2.2.2.2.m1.1.1.3.4.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.4">𝑎</ci><ci id="S4.T1.2.2.2.2.m1.1.1.3.5.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.5">𝑖</ci><ci id="S4.T1.2.2.2.2.m1.1.1.3.6.cmml" xref="S4.T1.2.2.2.2.m1.1.1.3.6">𝑛</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">L_{train}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">italic_L start_POSTSUBSCRIPT italic_t italic_r italic_a italic_i italic_n end_POSTSUBSCRIPT</annotation></semantics></math>-100k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2.4">100k-200k</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.2.2.4.1">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.2.2.4.2">3B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.2.2.4.3">3B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T1.2.2.4.4">4B</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the composition of the training dataset used in the LongRoPE2 model's mixed context window training approach.  It shows the distribution of training data across two distinct context window sizes: short context windows and long context windows.  The numbers indicate the number of tokens allocated to each context window size for training purposes. This split in the data allows the model to maintain performance on short contexts while learning effective long-context representations.
> <details>
> <summary>read the caption</summary>
> Table 1: Mid-training data mix.
> </details>





### In-depth insights


#### ROPE undertraining
The research posits that **insufficient training in higher RoPE dimensions is a core issue** in context window extension. It suggests that while lower dimensions are well-trained, higher ones, crucial for processing long-range dependencies, receive inadequate exposure during pre-training. This leads to shorter effective ROPE rotation ranges and distorts extended rotation periods beyond theoretical predictions. This **ROPE undertraining explains why scaling factors larger than analytically derived values improve long-context performance**, effectively mitigating the out-of-distribution issues across all dimensions. The work emphasizes the need to address **this training imbalance** for effective context extension.

#### Needle-driven PPL
**Needle-driven Perplexity (PPL)** evaluation offers a targeted method for assessing long-context understanding in LLMs. Traditional PPL averages across all tokens, potentially obscuring the model's ability to grasp dependencies within extended sequences. By focusing solely on specific "needle" tokens—answer tokens deeply reliant on contextual understanding—the evaluation becomes more sensitive to long-range dependencies. This contrasts with vanilla PPL, which may be skewed by irrelevant tokens, leading to inaccurate assessments of long-context capabilities. This method helps in identifying true RoPE dimensions.

#### Mixed context FT
**Mixed Context Fine-Tuning (FT)** is a pivotal strategy for adapting pre-trained LLMs to extended context windows. It involves training the model on a blend of short and long sequences. This **preserves performance** on original tasks while enabling effective handling of extended contexts. Short sequences maintain pre-trained knowledge; long sequences adapt the model to rescaled positional embeddings like RoPE. Careful data mixing and masking strategies are key to prevent cross-document attention and ensure optimal adaptation. FT helps the model retain short-context proficiency while extending its capabilities.

#### Effective dRCD
**Effective dRCD (Real Critical Dimension)** is crucial for optimizing long-context LLMs. This parameter determines the boundary between RoPE dimensions that are sufficiently trained and those that are not. Insufficiently trained higher dimensions lead to OOD issues. Correctly identifying and utilizing the **true dRCD**, not just relying on theoretical calculations, significantly improves performance, especially in long contexts, by guiding the rescaling of RoPE dimensions. By identifying and focusing on the practical critical dimension, the LongRoPE2 is able to outperform YaRN and NTK.

#### OOD RoPE scaling
**Out-of-Distribution (OOD) issues in RoPE scaling arise when extending the context window of LLMs.** RoPE, a positional encoding method, can produce OOD values at extended token positions because higher-dimensional embeddings have incomplete rotation periods relative to the original context window. **ROPE rescaling methods aim to remap these OOD values into the in-distribution range learned during pre-training to mitigate this.** Common techniques involve adjusting the per-dimensional rotation angles to ensure higher ROPE dimensions remain within the pre-trained RoPE range. **The challenge is finding optimal rescaling factors that effectively mitigate OOD issues without sacrificing short-context performance.** Ideally, the rescaling should shift the critical dimensions, aligning with the actual data distribution and retaining as much of the original RoPE information as possible, thus improving overall performance.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.20082/x1.png)

> 🔼 This figure demonstrates the challenges of extending context windows in LLMs. Panel (a) visually shows the out-of-distribution (OOD) problem of Rotary Positional Embeddings (RoPE) when extending the context length from 2k to 4k tokens.  The red area highlights the OOD regions, which are problematic for model performance. Panel (b) compares the per-dimensional RoPE rescaling factors used by different methods (YaRN, NTK, LongRoPE) to extend the context length of the Phi3-mini model from 2k to 128k tokens.  All methods attempt to align with the RoPE OOD theory to mitigate the OOD issue. Panel (c) shows the performance of the Phi3-mini model extended to 128k tokens using different methods, revealing that existing approaches fail to reach an effective 128k context length while maintaining short-context performance.  There is a clear performance drop in short-context tasks after extending the context length.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) RoPE OOD (red area) when extending context length from 2k to 4k. (b) Per-dimensional RoPE rescaling factor from different approaches for extending Phi3-mini from 2k to 128k, all aligning with RoPE OOD theory. (c) Performance of Phi3-mini-128k after fine-tuning. Existing methods fail to achieve an effective 128k context length and show noticeable short-context performance drop.
> </details>



![](https://arxiv.org/html/2502.20082/x2.png)

> 🔼 This figure visualizes the relationship between RoPE (Rotary Positional Embedding) dimension and the length of sequences needed to complete one full cycle of RoPE's periodic function during the Phi3-mini model's pre-training.  Lower dimensions require shorter sequences to complete a full cycle, indicating sufficient training across multiple cycles within the training data. Conversely, higher dimensions necessitate much longer sequences, exceeding the pre-training context window length. This demonstrates insufficient training in these higher dimensions, leading to incomplete rotation periods within the original training context and shorter effective RoPE ranges than theoretically expected. The discrepancy highlights a critical factor contributing to out-of-distribution issues when extrapolating context windows.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sequence length required to span the theoretical period during Phi3-mini pre-training for different RoPE dimensions. Insufficient training in higher RoPE dimensions leads to shorter effective RoPE ranges and longer actual periods.
> </details>



![](https://arxiv.org/html/2502.20082/x3.png)

> 🔼 This figure compares the per-dimension scaling factors applied to the Rotary Position Embeddings (RoPE) in different context window extension methods. The x-axis represents the RoPE dimension index, and the y-axis shows the scaling factor applied to each dimension.  It highlights how LongRoPE2's scaling factors differ from those of YaRN, NTK, and LongRoPE, particularly in the higher dimensions. This difference reflects the unique approach of LongRoPE2 to address the out-of-distribution (OOD) problem in RoPE by adjusting the scaling factor based on the critical dimension, which is dynamically determined through an evolutionary search guided by needle-driven perplexity.
> <details>
> <summary>read the caption</summary>
> Figure 4: Scale factors across different RoPE rescaling approaches.
> </details>



![](https://arxiv.org/html/2502.20082/x4.png)

> 🔼 This figure illustrates the mixed context window training approach used to enhance both short and long context capabilities in LLMs.  The left panel (a) shows the training process for shorter context windows, where the original ROPE (Rotary Position Embeddings) is used and attention is masked to prevent cross-document attention. The right panel (b) shows the training process for longer context windows, where the rescaled ROPE is used for full attention across the entire window. This dual training strategy helps maintain performance on short contexts while improving the model's ability to process longer sequences.
> <details>
> <summary>read the caption</summary>
> Figure 5: Mixed context window training to improve both short and long context capabilities.
> </details>



![](https://arxiv.org/html/2502.20082/x5.png)

> 🔼 The Needle in a Haystack pressure test evaluates the ability of a language model to accurately retrieve specific pieces of text (needles) from long documents, assessing its long-context understanding.  This figure compares the performance of LongRoPE2 against another model on this task, showing that LongRoPE2 achieves near-perfect accuracy across various retrieval depths within a 128k context window, demonstrating its ability to maintain performance in long-context scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: LongRoPE2 (right) delivers near-perfect lossless performance in the ”Needle in a Haystack” pressure test.
> </details>



![](https://arxiv.org/html/2502.20082/x6.png)

> 🔼 This figure displays the complete results of the 'Needle in a Haystack' experiment for the Phi3-mini (3.8B) language model with an extended context window of 128K tokens.  The Needle in a Haystack task assesses a language model's ability to locate specific pieces of text (the 'needles') within very long documents, testing its long-context understanding capabilities. The visualization likely shows the accuracy or success rate of the model in retrieving the needles at various depths within the extended document, which indicates how effectively it processes information over long contextual spans.
> <details>
> <summary>read the caption</summary>
> Figure 7: Needle in a Haystack full results for Phi3-mini (3.8B)-128k.
> </details>



![](https://arxiv.org/html/2502.20082/x7.png)

> 🔼 This figure displays the complete results of the 'Needle in a Haystack' test for the LLaMA3-8B model with its context window extended to 128k tokens using different methods.  The test evaluates the model's ability to accurately retrieve a specific piece of text ('needle') from long documents at different depths. Each subplot shows the success rate at various depths (percentage of the total context length) and context lengths using different ROPE methods (YaRN, NTK, LongRoPE, and LongRoPE2).  The color intensity represents the accuracy rate, showing how well each model performs in retrieving the needles across various positions within the long sequence.  The comparison helps to illustrate the effectiveness and limitations of each ROPE method in handling long context windows.
> <details>
> <summary>read the caption</summary>
> Figure 8: Needle in a Haystack full results for LLaMA3-8B-128k.
> </details>



![](https://arxiv.org/html/2502.20082/extracted/6233605/yarn-ntk.png)

> 🔼 This figure compares the per-dimensional RoPE scaling factors from NTK and YaRN methods, both before and after adjusting for the real critical dimension.  The original NTK and YaRN methods use different scaling strategies across various RoPE dimensions. By incorporating the 'real critical dimension' (determined empirically), the adjusted methods (YaRN-rcd and NTK-rcd) demonstrate how the recalibration impacts the scaling factor distribution, showing differences in how each method adapts scaling across different dimension ranges.
> <details>
> <summary>read the caption</summary>
> Figure 9: The RoPE rescaling factor distributions of NTK/YaRN adjusted based on the real critical dimension (i.e., YaRN-rcd, NTK-rcd).
> </details>



![](https://arxiv.org/html/2502.20082/x8.png)

> 🔼 This figure shows the pseudocode for LongRoPE2's mixed context window training and inference.  The code demonstrates how the model uses different positional embeddings (original RoPE and rescaled RoPE) depending on whether the input sequence length is within the original pre-trained context window or exceeds it. If the input length exceeds the original context window, rescaled RoPE is utilized; otherwise, the original ROPE is used.  The pseudocode also highlights the use of FlashAttention-2 for efficient attention calculation during both training and inference, showing how it handles different sequence lengths using functions like `flash_attn_func` and `flash_attn_varlen_func`.
> <details>
> <summary>read the caption</summary>
> Figure 10: The pseudocode for mixed context window training and inference.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2">4k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3">8k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.4">16k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.5">32k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.6">64k</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.7">128k</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.1.1.2.1">Base Model: Phi3-mini (3.8B)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.1">YaRN</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2">85.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3">78.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.4">75.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.5">65.22</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.6">52.16</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.7">39.37</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.1">NTK</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.2.1">91.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3">87.02</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4">80.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.5">72.81</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.6">61.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.7">49.37</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.1">LongRoPE</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2">88.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3">83.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4">79.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5">71.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.6">64.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.7">53.71</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.1.1" style="background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.2"><span class="ltx_text" id="S4.T2.1.1.6.2.1" style="background-color:#D3E9E8;">90.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.3.1" style="background-color:#D3E9E8;">87.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.4.1" style="background-color:#D3E9E8;">83.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.5.1" style="background-color:#D3E9E8;">76.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.6.1" style="background-color:#D3E9E8;">65.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.7.1" style="background-color:#D3E9E8;">58.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.1.1.7.1">Base Model: LLaMA3-8B</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.1">YaRN</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.2">91.86</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3">87.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4">84.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5">68.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6">62.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7">49.39</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.1">NTK</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.2">94.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.3">92.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.4">91.93</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.5">87.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.6">79.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.7">73.19</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.1">LongRoPE</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.2">94.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.3">92.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.4">91.01</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.5">86.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.6">81.23</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.7">73.40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.1.1" style="background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.2.1" style="background-color:#D3E9E8;">94.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.3.1" style="background-color:#D3E9E8;">93.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.4.1" style="background-color:#D3E9E8;">92.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.5.1" style="background-color:#D3E9E8;">90.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.6.1" style="background-color:#D3E9E8;">85.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.11.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.11.7.1" style="background-color:#D3E9E8;">82.03</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of LongRoPE2's performance against other state-of-the-art (SOTA) RoPE rescaling methods on the RULER benchmark.  The RULER benchmark consists of thirteen tasks designed to evaluate the ability of large language models to handle long contexts. The table shows the average score across these thirteen tasks for each method at various context lengths, highlighting the effectiveness of LongRoPE2 in maintaining performance as context length increases.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with prior SOTA RoPE rescaling methods on RULER Benchmark. We report the average score across 13 tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.1">
<tr class="ltx_tr" id="S4.T3.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1"><span class="ltx_text" id="S4.T3.3.1.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S4.T3.3.1.1.2"><span class="ltx_text" id="S4.T3.3.1.1.2.1" style="font-size:90%;">LOFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S4.T3.3.1.1.3"><span class="ltx_text" id="S4.T3.3.1.1.3.1" style="font-size:90%;">InfiniteBench - LongBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2">
<td class="ltx_td" id="S4.T3.3.1.2.1"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.3.1.2.3"><span class="ltx_text" id="S4.T3.3.1.2.3.1" style="font-size:90%;">ArguAna</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.3.1.2.4"><span class="ltx_text" id="S4.T3.3.1.2.4.1" style="font-size:90%;">FEVER</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.3.1.2.5"><span class="ltx_text" id="S4.T3.3.1.2.5.1" style="font-size:90%;">HotPotQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.3.1.2.6">
<span class="ltx_text" id="S4.T3.3.1.2.6.1"></span><span class="ltx_text" id="S4.T3.3.1.2.6.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T3.3.1.2.6.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.2.6.3.1">
<span class="ltx_tr" id="S4.T3.3.1.2.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.6.3.1.1.1">MS</span></span>
<span class="ltx_tr" id="S4.T3.3.1.2.6.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.6.3.1.2.1">MACRO</span></span>
</span></span><span class="ltx_text" id="S4.T3.3.1.2.6.4"></span><span class="ltx_text" id="S4.T3.3.1.2.6.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.7"><span class="ltx_text" id="S4.T3.3.1.2.7.1" style="font-size:90%;">NQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.8"><span class="ltx_text" id="S4.T3.3.1.2.8.1" style="font-size:90%;">Quora</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.9"><span class="ltx_text" id="S4.T3.3.1.2.9.1" style="font-size:90%;">SciFact</span></td>
<td class="ltx_td" id="S4.T3.3.1.2.10"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.11"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.11.1" style="font-size:90%;">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.12">
<span class="ltx_text" id="S4.T3.3.1.2.12.1"></span><span class="ltx_text" id="S4.T3.3.1.2.12.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T3.3.1.2.12.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.2.12.3.1">
<span class="ltx_tr" id="S4.T3.3.1.2.12.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.12.3.1.1.1">KV</span></span>
<span class="ltx_tr" id="S4.T3.3.1.2.12.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.1.2.12.3.1.2.1">retrieval</span></span>
</span></span><span class="ltx_text" id="S4.T3.3.1.2.12.4"></span><span class="ltx_text" id="S4.T3.3.1.2.12.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.13"><span class="ltx_text" id="S4.T3.3.1.2.13.1" style="font-size:90%;">En.MC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.14"><span class="ltx_text" id="S4.T3.3.1.2.14.1" style="font-size:90%;">TriviaQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.15"><span class="ltx_text" id="S4.T3.3.1.2.15.1" style="font-size:90%;">TREC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.16"><span class="ltx_text" id="S4.T3.3.1.2.16.1" style="font-size:90%;">LCC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.3.1.2.17"><span class="ltx_text" id="S4.T3.3.1.2.17.1" style="font-size:90%;">RepoBench-P</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3">
<td class="ltx_td ltx_align_center" colspan="17" id="S4.T3.3.1.3.1"><span class="ltx_text" id="S4.T3.3.1.3.1.1" style="font-size:90%;">Base model: Phi3-mini (3.8B)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.1"><span class="ltx_text" id="S4.T3.3.1.4.1.1" style="font-size:90%;">YaRN</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.4.2"><span class="ltx_text" id="S4.T3.3.1.4.2.1" style="font-size:90%;">5.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.4.3"><span class="ltx_text" id="S4.T3.3.1.4.3.1" style="font-size:90%;">4.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.4.4"><span class="ltx_text" id="S4.T3.3.1.4.4.1" style="font-size:90%;">4.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.4.5"><span class="ltx_text" id="S4.T3.3.1.4.5.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.4.6"><span class="ltx_text" id="S4.T3.3.1.4.6.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.7"><span class="ltx_text" id="S4.T3.3.1.4.7.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.8"><span class="ltx_text" id="S4.T3.3.1.4.8.1" style="font-size:90%;">1.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.9"><span class="ltx_text" id="S4.T3.3.1.4.9.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.4.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.11"><span class="ltx_text" id="S4.T3.3.1.4.11.1" style="font-size:90%;">50.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.12"><span class="ltx_text" id="S4.T3.3.1.4.12.1" style="font-size:90%;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.13"><span class="ltx_text" id="S4.T3.3.1.4.13.1" style="font-size:90%;">31.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.14"><span class="ltx_text" id="S4.T3.3.1.4.14.1" style="font-size:90%;">84.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.15"><span class="ltx_text" id="S4.T3.3.1.4.15.1" style="font-size:90%;">61.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.16"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.4.16.1" style="font-size:90%;">63.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.4.17"><span class="ltx_text" id="S4.T3.3.1.4.17.1" style="font-size:90%;">59.23</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.1"><span class="ltx_text" id="S4.T3.3.1.5.1.1" style="font-size:90%;">NTK</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.5.2"><span class="ltx_text" id="S4.T3.3.1.5.2.1" style="font-size:90%;">7.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.5.3"><span class="ltx_text" id="S4.T3.3.1.5.3.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.5.4"><span class="ltx_text" id="S4.T3.3.1.5.4.1" style="font-size:90%;">21.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.5.5"><span class="ltx_text" id="S4.T3.3.1.5.5.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.5.6"><span class="ltx_text" id="S4.T3.3.1.5.6.1" style="font-size:90%;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.7"><span class="ltx_text" id="S4.T3.3.1.5.7.1" style="font-size:90%;">13.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.8"><span class="ltx_text" id="S4.T3.3.1.5.8.1" style="font-size:90%;">4.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.9"><span class="ltx_text" id="S4.T3.3.1.5.9.1" style="font-size:90%;">9.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.5.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.11"><span class="ltx_text" id="S4.T3.3.1.5.11.1" style="font-size:90%;">52.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.12"><span class="ltx_text" id="S4.T3.3.1.5.12.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.13"><span class="ltx_text" id="S4.T3.3.1.5.13.1" style="font-size:90%;">37.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.14"><span class="ltx_text" id="S4.T3.3.1.5.14.1" style="font-size:90%;">84.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.15"><span class="ltx_text" id="S4.T3.3.1.5.15.1" style="font-size:90%;">65.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.16"><span class="ltx_text" id="S4.T3.3.1.5.16.1" style="font-size:90%;">62.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.5.17"><span class="ltx_text" id="S4.T3.3.1.5.17.1" style="font-size:90%;">59.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.1"><span class="ltx_text" id="S4.T3.3.1.6.1.1" style="font-size:90%;">LongRoPE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.6.2"><span class="ltx_text" id="S4.T3.3.1.6.2.1" style="font-size:90%;">21.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.6.3"><span class="ltx_text" id="S4.T3.3.1.6.3.1" style="font-size:90%;">5.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.6.4"><span class="ltx_text" id="S4.T3.3.1.6.4.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.6.5"><span class="ltx_text" id="S4.T3.3.1.6.5.1" style="font-size:90%;">3.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.6.6"><span class="ltx_text" id="S4.T3.3.1.6.6.1" style="font-size:90%;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.7"><span class="ltx_text" id="S4.T3.3.1.6.7.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.8"><span class="ltx_text" id="S4.T3.3.1.6.8.1" style="font-size:90%;">8.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.9"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.9.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.6.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.11"><span class="ltx_text" id="S4.T3.3.1.6.11.1" style="font-size:90%;">50.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.12"><span class="ltx_text" id="S4.T3.3.1.6.12.1" style="font-size:90%;">5.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.13"><span class="ltx_text" id="S4.T3.3.1.6.13.1" style="font-size:90%;">35.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.14"><span class="ltx_text" id="S4.T3.3.1.6.14.1" style="font-size:90%;">86.47</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.15"><span class="ltx_text" id="S4.T3.3.1.6.15.1" style="font-size:90%;">62.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.16"><span class="ltx_text" id="S4.T3.3.1.6.16.1" style="font-size:90%;">55.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.6.17"><span class="ltx_text" id="S4.T3.3.1.6.17.1" style="font-size:90%;">58.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.1.1" style="font-size:90%;background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.2.1" style="font-size:90%;background-color:#D3E9E8;">23.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.3.1" style="font-size:90%;background-color:#D3E9E8;">5.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.4.1" style="font-size:90%;background-color:#D3E9E8;">70.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.5.1" style="font-size:90%;background-color:#D3E9E8;">4.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.6.1" style="font-size:90%;background-color:#D3E9E8;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.7"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.7.1" style="font-size:90%;background-color:#D3E9E8;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.8"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.8.1" style="font-size:90%;background-color:#D3E9E8;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.9"><span class="ltx_text" id="S4.T3.3.1.7.9.1" style="font-size:90%;background-color:#D3E9E8;">14.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.7.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.11"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.11.1" style="font-size:90%;background-color:#D3E9E8;">55.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.12"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.12.1" style="font-size:90%;background-color:#D3E9E8;">12.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.13"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.13.1" style="font-size:90%;background-color:#D3E9E8;">42.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.14"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.14.1" style="font-size:90%;background-color:#D3E9E8;">87.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.15"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.15.1" style="font-size:90%;background-color:#D3E9E8;">67.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.16"><span class="ltx_text" id="S4.T3.3.1.7.16.1" style="font-size:90%;background-color:#D3E9E8;">62.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.7.17"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.17.1" style="font-size:90%;background-color:#D3E9E8;">60.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S4.T3.3.1.8.1"><span class="ltx_text" id="S4.T3.3.1.8.1.1" style="font-size:90%;">Base model: LLaMA3-8B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.1"><span class="ltx_text" id="S4.T3.3.1.9.1.1" style="font-size:90%;">YaRN</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.9.2"><span class="ltx_text" id="S4.T3.3.1.9.2.1" style="font-size:90%;">26.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.9.3"><span class="ltx_text" id="S4.T3.3.1.9.3.1" style="font-size:90%;">7.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.9.4"><span class="ltx_text" id="S4.T3.3.1.9.4.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.9.5"><span class="ltx_text" id="S4.T3.3.1.9.5.1" style="font-size:90%;">15.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.9.6"><span class="ltx_text" id="S4.T3.3.1.9.6.1" style="font-size:90%;">21.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.7"><span class="ltx_text" id="S4.T3.3.1.9.7.1" style="font-size:90%;">43.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.8"><span class="ltx_text" id="S4.T3.3.1.9.8.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.9"><span class="ltx_text" id="S4.T3.3.1.9.9.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.9.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.11"><span class="ltx_text" id="S4.T3.3.1.9.11.1" style="font-size:90%;">51.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.12"><span class="ltx_text" id="S4.T3.3.1.9.12.1" style="font-size:90%;">2.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.13"><span class="ltx_text" id="S4.T3.3.1.9.13.1" style="font-size:90%;">30.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.14"><span class="ltx_text" id="S4.T3.3.1.9.14.1" style="font-size:90%;">88.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.15"><span class="ltx_text" id="S4.T3.3.1.9.15.1" style="font-size:90%;">73.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.16"><span class="ltx_text" id="S4.T3.3.1.9.16.1" style="font-size:90%;">65.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.9.17"><span class="ltx_text" id="S4.T3.3.1.9.17.1" style="font-size:90%;">62.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.10">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.1"><span class="ltx_text" id="S4.T3.3.1.10.1.1" style="font-size:90%;">NTK</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.10.2"><span class="ltx_text" id="S4.T3.3.1.10.2.1" style="font-size:90%;">67.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.10.3"><span class="ltx_text" id="S4.T3.3.1.10.3.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.10.4"><span class="ltx_text" id="S4.T3.3.1.10.4.1" style="font-size:90%;">96.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.10.5"><span class="ltx_text" id="S4.T3.3.1.10.5.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.10.6"><span class="ltx_text" id="S4.T3.3.1.10.6.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.7"><span class="ltx_text" id="S4.T3.3.1.10.7.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.8"><span class="ltx_text" id="S4.T3.3.1.10.8.1" style="font-size:90%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.9"><span class="ltx_text" id="S4.T3.3.1.10.9.1" style="font-size:90%;">64.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.10.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.11"><span class="ltx_text" id="S4.T3.3.1.10.11.1" style="font-size:90%;">67.98</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.12"><span class="ltx_text" id="S4.T3.3.1.10.12.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.13"><span class="ltx_text" id="S4.T3.3.1.10.13.1" style="font-size:90%;">42.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.14"><span class="ltx_text" id="S4.T3.3.1.10.14.1" style="font-size:90%;">90.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.15"><span class="ltx_text" id="S4.T3.3.1.10.15.1" style="font-size:90%;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.16"><span class="ltx_text" id="S4.T3.3.1.10.16.1" style="font-size:90%;">68.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.10.17"><span class="ltx_text" id="S4.T3.3.1.10.17.1" style="font-size:90%;">65.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.11">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.1"><span class="ltx_text" id="S4.T3.3.1.11.1.1" style="font-size:90%;">LongRoPE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.11.2"><span class="ltx_text" id="S4.T3.3.1.11.2.1" style="font-size:90%;">60.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.11.3"><span class="ltx_text" id="S4.T3.3.1.11.3.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.11.4"><span class="ltx_text" id="S4.T3.3.1.11.4.1" style="font-size:90%;">96.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.11.5"><span class="ltx_text" id="S4.T3.3.1.11.5.1" style="font-size:90%;">25.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.3.1.11.6"><span class="ltx_text" id="S4.T3.3.1.11.6.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.7"><span class="ltx_text" id="S4.T3.3.1.11.7.1" style="font-size:90%;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.8"><span class="ltx_text" id="S4.T3.3.1.11.8.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.9"><span class="ltx_text" id="S4.T3.3.1.11.9.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td" id="S4.T3.3.1.11.10"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.11"><span class="ltx_text" id="S4.T3.3.1.11.11.1" style="font-size:90%;">70.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.12"><span class="ltx_text" id="S4.T3.3.1.11.12.1" style="font-size:90%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.13"><span class="ltx_text" id="S4.T3.3.1.11.13.1" style="font-size:90%;">45.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.14"><span class="ltx_text" id="S4.T3.3.1.11.14.1" style="font-size:90%;">89.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.15"><span class="ltx_text" id="S4.T3.3.1.11.15.1" style="font-size:90%;">76.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.11.16"><span class="ltx_text" id="S4.T3.3.1.11.16.1" style="font-size:90%;">69.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T3.3.1.11.17"><span class="ltx_text" id="S4.T3.3.1.11.17.1" style="font-size:90%;">67.38</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.12" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.1.1" style="font-size:90%;background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.2.1" style="font-size:90%;background-color:#D3E9E8;">74.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.3.1" style="font-size:90%;background-color:#D3E9E8;">28.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.4.1" style="font-size:90%;background-color:#D3E9E8;">96.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.5.1" style="font-size:90%;background-color:#D3E9E8;">70.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.6"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.6.1" style="font-size:90%;background-color:#D3E9E8;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.7"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.7.1" style="font-size:90%;background-color:#D3E9E8;">94.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.8"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.8.1" style="font-size:90%;background-color:#D3E9E8;">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.9"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.9.1" style="font-size:90%;background-color:#D3E9E8;">73.0</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T3.3.1.12.10"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.11"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.11.1" style="font-size:90%;background-color:#D3E9E8;">73.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.12"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.12.1" style="font-size:90%;background-color:#D3E9E8;">88.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.13"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.13.1" style="font-size:90%;background-color:#D3E9E8;">46.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.14"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.14.1" style="font-size:90%;background-color:#D3E9E8;">91.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.15"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.15.1" style="font-size:90%;background-color:#D3E9E8;">76.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.16"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.16.1" style="font-size:90%;background-color:#D3E9E8;">70.47</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.3.1.12.17"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.12.17.1" style="font-size:90%;background-color:#D3E9E8;">67.39</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different context window extension methods on several real-world long-context benchmarks.  It shows the average scores achieved by various methods (YaRN, NTK, LongRoPE, and LongRoPE2) on different benchmarks, such as LOFT (which includes tasks like argumentative retrieval, fact-checking, etc.), InfiniteBench (for tasks like key-value retrieval and multi-choice QA), and LongBench (evaluating performance on in-context learning and code completion). The results are broken down by benchmark and method, allowing for easy comparison of performance across the different techniques.
> <details>
> <summary>read the caption</summary>
> Table 3: Long context performance comparison under different extension methods on real-world benchmarks
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S4.T4.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1.1" style="font-size:90%;">(a) Phi3-mini (3.8B) with 128k context window</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1"><span class="ltx_text" id="S4.T4.1.1.3.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.3.2.1" style="font-size:90%;background-color:#D3E9E8;">Avg.</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.3.3"><span class="ltx_text" id="S4.T4.1.1.3.3.1" style="font-size:90%;">MMLU</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.3.4"><span class="ltx_text" id="S4.T4.1.1.3.4.1" style="font-size:90%;">MMLU-Pro</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.3.5"><span class="ltx_text" id="S4.T4.1.1.3.5.1" style="font-size:90%;">HellaSwag</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.3.6"><span class="ltx_text" id="S4.T4.1.1.3.6.1" style="font-size:90%;">TruthfulQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.3.7"><span class="ltx_text" id="S4.T4.1.1.3.7.1" style="font-size:90%;">GSM8K</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.1"><span class="ltx_text" id="S4.T4.1.1.4.1.1" style="font-size:90%;">Original Phi3-mini (2k)</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.4.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.4.2.1" style="font-size:90%;background-color:#D3E9E8;">63.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.4.3"><span class="ltx_text" id="S4.T4.1.1.4.3.1" style="font-size:90%;">70.78</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.4.4"><span class="ltx_text" id="S4.T4.1.1.4.4.1" style="font-size:90%;">41.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.4.5"><span class="ltx_text" id="S4.T4.1.1.4.5.1" style="font-size:90%;">77.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.4.6"><span class="ltx_text" id="S4.T4.1.1.4.6.1" style="font-size:90%;">47.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.4.7"><span class="ltx_text" id="S4.T4.1.1.4.7.1" style="font-size:90%;">78.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.1">
<span class="ltx_ERROR undefined" id="S4.T4.1.1.5.1.1">\hdashline</span><span class="ltx_text" id="S4.T4.1.1.5.1.2" style="font-size:90%;">YaRN</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.5.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.5.2.1" style="font-size:90%;background-color:#D3E9E8;">53.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.5.3"><span class="ltx_text" id="S4.T4.1.1.5.3.1" style="font-size:90%;">63.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.5.4"><span class="ltx_text" id="S4.T4.1.1.5.4.1" style="font-size:90%;">30.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.5.5"><span class="ltx_text" id="S4.T4.1.1.5.5.1" style="font-size:90%;">75.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.5.6"><span class="ltx_text" id="S4.T4.1.1.5.6.1" style="font-size:90%;">42.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.5.7"><span class="ltx_text" id="S4.T4.1.1.5.7.1" style="font-size:90%;">57.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.1"><span class="ltx_text" id="S4.T4.1.1.6.1.1" style="font-size:90%;">NTK</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.6.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.6.2.1" style="font-size:90%;background-color:#D3E9E8;">57.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.6.3"><span class="ltx_text" id="S4.T4.1.1.6.3.1" style="font-size:90%;">66.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.6.4"><span class="ltx_text" id="S4.T4.1.1.6.4.1" style="font-size:90%;">36.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.6.5"><span class="ltx_text" id="S4.T4.1.1.6.5.1" style="font-size:90%;">76.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.6.6"><span class="ltx_text" id="S4.T4.1.1.6.6.1" style="font-size:90%;">43.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.6.7"><span class="ltx_text" id="S4.T4.1.1.6.7.1" style="font-size:90%;">63.99</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.1"><span class="ltx_text" id="S4.T4.1.1.7.1.1" style="font-size:90%;">LongRoPE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.7.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.7.2.1" style="font-size:90%;background-color:#D3E9E8;">58.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.7.3"><span class="ltx_text" id="S4.T4.1.1.7.3.1" style="font-size:90%;">67.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.7.4"><span class="ltx_text" id="S4.T4.1.1.7.4.1" style="font-size:90%;">36.28</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.7.5"><span class="ltx_text" id="S4.T4.1.1.7.5.1" style="font-size:90%;">75.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.7.6"><span class="ltx_text" id="S4.T4.1.1.7.6.1" style="font-size:90%;">46.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.7.7"><span class="ltx_text" id="S4.T4.1.1.7.7.1" style="font-size:90%;">67.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.1.1" style="font-size:90%;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.8.2" style="background-color:#D3E9E8;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.2.1" style="font-size:90%;background-color:#D3E9E8;">61.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.8.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.3.1" style="font-size:90%;">70.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.8.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.4.1" style="font-size:90%;">40.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.5.1" style="font-size:90%;">77.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.8.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.6.1" style="font-size:90%;">47.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.8.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.7.1" style="font-size:90%;">73.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T4.1.1.9.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.9.1.1" style="font-size:90%;">(b) LLaMA3-8B with 128k context window</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.10.1"><span class="ltx_text" id="S4.T4.1.1.10.1.1" style="font-size:90%;">LLaMA3.1-8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.10.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.10.2.1" style="font-size:90%;background-color:#D3E9E8;">57.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.10.3"><span class="ltx_text" id="S4.T4.1.1.10.3.1" style="font-size:90%;">66.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.10.4"><span class="ltx_text" id="S4.T4.1.1.10.4.1" style="font-size:90%;">36.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.10.5"><span class="ltx_text" id="S4.T4.1.1.10.5.1" style="font-size:90%;">81.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T4.1.1.10.6"><span class="ltx_text" id="S4.T4.1.1.10.6.1" style="font-size:90%;">45.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.1.10.7"><span class="ltx_text" id="S4.T4.1.1.10.7.1" style="font-size:90%;">56.18</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.1"><span class="ltx_text" id="S4.T4.1.1.11.1.1" style="font-size:90%;">Original LLaMA3-8B (8k)</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.11.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.11.2.1" style="font-size:90%;background-color:#D3E9E8;">56.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.11.3"><span class="ltx_text" id="S4.T4.1.1.11.3.1" style="font-size:90%;">66.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.11.4"><span class="ltx_text" id="S4.T4.1.1.11.4.1" style="font-size:90%;">35.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.11.5"><span class="ltx_text" id="S4.T4.1.1.11.5.1" style="font-size:90%;">82.08</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.11.6"><span class="ltx_text" id="S4.T4.1.1.11.6.1" style="font-size:90%;">44.04</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.11.7"><span class="ltx_text" id="S4.T4.1.1.11.7.1" style="font-size:90%;">54.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.1">
<span class="ltx_ERROR undefined" id="S4.T4.1.1.12.1.1">\hdashline</span><span class="ltx_text" id="S4.T4.1.1.12.1.2" style="font-size:90%;">YaRN</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.12.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.12.2.1" style="font-size:90%;background-color:#D3E9E8;">52.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.12.3"><span class="ltx_text" id="S4.T4.1.1.12.3.1" style="font-size:90%;">62.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.12.4"><span class="ltx_text" id="S4.T4.1.1.12.4.1" style="font-size:90%;">31.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.12.5"><span class="ltx_text" id="S4.T4.1.1.12.5.1" style="font-size:90%;">81.25</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.12.6"><span class="ltx_text" id="S4.T4.1.1.12.6.1" style="font-size:90%;">42.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.12.7"><span class="ltx_text" id="S4.T4.1.1.12.7.1" style="font-size:90%;">42.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:90%;">NTK</span><sup class="ltx_sup" id="S4.T4.1.1.1.1.2"><span class="ltx_text" id="S4.T4.1.1.1.1.2.1" style="font-size:90%;">∗</span></sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.1.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="font-size:90%;background-color:#D3E9E8;">54.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.1.3"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="font-size:90%;">63.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.1.4"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="font-size:90%;">34.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.1.5"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="font-size:90%;">82.11</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.1.6"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="font-size:90%;">43.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.7"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="font-size:90%;">46.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.1"><span class="ltx_text" id="S4.T4.1.1.13.1.1" style="font-size:90%;">LongRoPE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.13.2" style="background-color:#D3E9E8;"><span class="ltx_text" id="S4.T4.1.1.13.2.1" style="font-size:90%;background-color:#D3E9E8;">54.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.13.3"><span class="ltx_text" id="S4.T4.1.1.13.3.1" style="font-size:90%;">64.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.13.4"><span class="ltx_text" id="S4.T4.1.1.13.4.1" style="font-size:90%;">33.74</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.13.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.13.5.1" style="font-size:90%;">82.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T4.1.1.13.6"><span class="ltx_text" id="S4.T4.1.1.13.6.1" style="font-size:90%;">43.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.1.13.7"><span class="ltx_text" id="S4.T4.1.1.13.7.1" style="font-size:90%;">48.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.14">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.1.1" style="font-size:90%;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T4.1.1.14.2" style="background-color:#D3E9E8;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.2.1" style="font-size:90%;background-color:#D3E9E8;">55.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T4.1.1.14.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.3.1" style="font-size:90%;">65.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T4.1.1.14.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.4.1" style="font-size:90%;">34.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T4.1.1.14.5"><span class="ltx_text" id="S4.T4.1.1.14.5.1" style="font-size:90%;">81.69</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T4.1.1.14.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.6.1" style="font-size:90%;">46.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.1.1.14.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.14.7.1" style="font-size:90%;">50.80</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several large language models (LLMs) on standard short-context benchmark tasks.  It compares models extended to have long context windows (using different methods) against their original, unextended versions for both Phi-3 Mini and LLaMA3-8B.  The results show the impact of long context window extension on performance in tasks designed for shorter contexts.  This comparison highlights the impact of various context extension techniques on short context capabilities.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of long-context LLMs with original Phi3-mini and LLaMA3-8B on regular short benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T5.1.1.1.2">Regular short tasks</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T5.1.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T5.1.1.1.4">RULER</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1">MMLU</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.2">
<span class="ltx_text" id="S4.T5.1.1.2.2.1"></span> <span class="ltx_text" id="S4.T5.1.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.2.2.2.1">
<span class="ltx_tr" id="S4.T5.1.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.1.1.2.2.2.1.1.1">MMLU</span></span>
<span class="ltx_tr" id="S4.T5.1.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T5.1.1.2.2.2.1.2.1">Pro</span></span>
</span></span><span class="ltx_text" id="S4.T5.1.1.2.2.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.3">GSM8K</td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.2.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.5">4k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.6">8k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.7">16k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.8">32k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.9">64k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.2.10">128k</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T5.1.1.3.1">Base Model: Phi3-mini (3.8B)</td>
<td class="ltx_td ltx_border_t" id="S4.T5.1.1.3.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.1"><span class="ltx_text" id="S4.T5.1.1.4.1.1" style="background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.2.1" style="background-color:#D3E9E8;">70.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.3.1" style="background-color:#D3E9E8;">40.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.4.1" style="background-color:#D3E9E8;">73.62</span></td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.6.1" style="background-color:#D3E9E8;">90.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.7.1" style="background-color:#D3E9E8;">87.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.8.1" style="background-color:#D3E9E8;">83.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.9.1" style="background-color:#D3E9E8;">76.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.10.1" style="background-color:#D3E9E8;">65.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.4.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.4.11.1" style="background-color:#D3E9E8;">58.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.1">YaRN</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.2.1">63.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.3.1">30.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.4.1">57.39</span></td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.5.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.6">85.74</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.7.1">78.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.5.8.1">75.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.9">65.22</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.10">52.16</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.5.11">39.37</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.1.1">YaRN-rcd</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.2">62.30</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.3">30.24</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.4">56.48</td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.6.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.6.1">86.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.7">77.66</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.8">74.48</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.9.1">67.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.10.1">52.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.6.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.6.11.1">44.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.1">NTK</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.2.1">66.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.3.1">36.09</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.4.1">63.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T5.1.1.7.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.6.1">91.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.7.7.1">87.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.8">80.57</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.9">72.81</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.10">61.91</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.7.11">49.37</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.1.1">NTK-rcd</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.2">65.31</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.3">35.09</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.4">59.29</td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.8.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.6">90.51</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.7">85.32</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.8.1">81.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.9.1">73.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.10.1">63.59</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.8.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.8.11.1">54.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T5.1.1.9.1">Base Model: LLaMA3-8B</td>
<td class="ltx_td ltx_border_t" id="S4.T5.1.1.9.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.10" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.1"><span class="ltx_text" id="S4.T5.1.1.10.1.1" style="background-color:#D3E9E8;">LongRoPE2</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.2.1" style="background-color:#D3E9E8;">65.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.3.1" style="background-color:#D3E9E8;">34.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.4.1" style="background-color:#D3E9E8;">50.80</span></td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.10.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.10.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.6.1" style="background-color:#D3E9E8;">94.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.7.1" style="background-color:#D3E9E8;">93.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.8.1" style="background-color:#D3E9E8;">92.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.9.1" style="background-color:#D3E9E8;">90.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.10.1" style="background-color:#D3E9E8;">85.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.10.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.10.11.1" style="background-color:#D3E9E8;">82.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.11">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.1">YaRN</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.2">62.25</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.3">31.88</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.4">42.45</td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.11.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.11.6">91.86</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.7">87.87</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.8">84.67</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.9">68.80</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.10">62.51</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.11.11">49.39</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.1.1">YaRN-rcd</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.2.1">64.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.3.1">33.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.4.1">50.34</span></td>
<td class="ltx_td ltx_nopad_l" id="S4.T5.1.1.12.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.12.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.6.1">94.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.7.1">92.02</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.8.1">89.20</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.9.1">82.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.10.1">76.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T5.1.1.12.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.12.11.1">71.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.13.1">NTK</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.2">63.84</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.3">34.14</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.13.4.1">46.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T5.1.1.13.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.13.6"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.13.6.1">94.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.7"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.13.7.1">92.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.8"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.13.8.1">91.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.9">87.33</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.10">79.26</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T5.1.1.13.11">73.19</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.14">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.1.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.1.1">NTK-rcd</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.2.1">64.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.3.1">34.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.4">45.87</td>
<td class="ltx_td ltx_nopad_l ltx_border_b" id="S4.T5.1.1.14.5"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.1.1.14.6">94.39</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.7">92.35</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.8">91.43</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.9"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.9.1">88.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.10"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.10.1">83.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T5.1.1.14.11"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.14.11.1">77.25</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of using the real (empirically determined) critical dimension, instead of the theoretical critical dimension, on the performance of the LongRoPE2 model.  It shows the results of the LongRoPE2 method and two baselines (YaRN and NTK)  on various metrics (MMLU, GSM8K, RULER) using different context window sizes. This helps to demonstrate the importance of the real critical dimension in achieving optimal long context performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on real critical dimension.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.1.1">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.1">Search Metric</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.2">4k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.3">8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.4">16k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.5">32k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.6">64k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.1.1.7">128k</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T6.1.1.2.1">Base Model: Phi3-mini (3.8B)</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.1">PG19-128k PPL</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.3.2.1">91.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.3.3.1">87.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.4">83.05</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.5">75.27</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.6">62.72</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.3.7">50.23</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.1.1">PG19-Needle 128k PPL (ours)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.2">90.41</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.3">87.22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.4.1">83.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.5.1">76.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.6"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.6.1">65.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.4.7"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.4.7.1">58.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T6.1.1.5.1">Base Model: LLaMA3-8B</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.1">PG19-128k PPL</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.2">94.46</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.3">93.36</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.4">91.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.5">90.28</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.6">84.55</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.6.7">78.68</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.1.1">PG19-Needle 128k PPL (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.2"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.2.1">94.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.3"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.3.1">93.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.4"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.4.1">92.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.5.1">90.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.6"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.6.1">85.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.1.1.7.7"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.7.7.1">82.03</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of LongRoPE2 using two different search methods for finding optimal rescaling factors: a standard perplexity (PPL)-guided search and a novel needle-driven PPL-guided search.  The needle-driven approach focuses on specific, crucial tokens within the long sequences, improving the accuracy of the search and ultimately leading to better performance.  The table shows the RULER scores for both Phi3-mini and LLaMA3-8B models at different context lengths (4k to 128k) under each search method, highlighting the improvement achieved by the needle-driven PPL approach.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on needle-PPL guided search.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.1.1">
<tr class="ltx_tr" id="S4.T7.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.1.1.1">Method</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.2">MMLU</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.3">
<span class="ltx_text" id="S4.T7.1.1.1.3.1"></span> <span class="ltx_text" id="S4.T7.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T7.1.1.1.3.2.1">
<span class="ltx_tr" id="S4.T7.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.1.1.1.3.2.1.1.1">MMLU</span></span>
<span class="ltx_tr" id="S4.T7.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T7.1.1.1.3.2.1.2.1">Pro</span></span>
</span></span><span class="ltx_text" id="S4.T7.1.1.1.3.3"></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.4">GSM8K</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.5">4k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.6">8k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.7">16k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.8">32k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.9">64k</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T7.1.1.1.10">128k</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T7.1.1.2.1">Base Model: Phi3 June</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.3.1">LongRoPE2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.2.1">70.07</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.3.1">40.30</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.4.1">73.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.5">90.41</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.6.1">86.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.7"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.7.1">83.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.8"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.8.1">76.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.9"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.9.1">65.37</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.3.10"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.10.1">58.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.4.1">LongRoPE2/ wo.</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.2">66.56</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.3">34.86</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.4">64.67</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.4.5.1">90.55</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.6">85.77</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.7">81.08</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.8">73.31</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.9">63.75</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.4.10">56.22</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T7.1.1.5.1">Base Model: LLaMA3-8B</td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.6.1">LongRoPE2</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.2"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.2.1">65.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.3.1">34.61</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.4.1">50.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.5">94.61</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.6.1">93.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.7"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.7.1">92.31</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.8"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.8.1">90.49</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.9"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.9.1">85.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T7.1.1.6.10"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.6.10.1">82.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.1.1.7.1">LongRoPE2/ wo.</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.2">64.57</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.3">33.83</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.4">48.37</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.7.5.1">94.67</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.6">93.15</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.7">91.24</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.8">89.38</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.9">83.53</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_b" id="S4.T7.1.1.7.10">80.18</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the mixed context window training approach on the overall performance of the model. The study compares the performance of the model with and without the proposed mixed context window training. The performance is evaluated using various metrics across different context window sizes. This helps to determine the effectiveness of this new training method.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on mixed context window training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.1">Length</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.2">
<span class="ltx_text" id="A2.T8.1.1.1.2.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.2.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.2.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.2.2.1.2.1">single1</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.3">
<span class="ltx_text" id="A2.T8.1.1.1.3.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.3.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.3.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.3.2.1.2.1">single2</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.4">
<span class="ltx_text" id="A2.T8.1.1.1.4.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.4.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.4.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.4.2.1.2.1">single3</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.5">
<span class="ltx_text" id="A2.T8.1.1.1.5.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.5.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.5.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.5.2.1.2.1">multikey1</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.6">
<span class="ltx_text" id="A2.T8.1.1.1.6.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.6.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.6.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.6.2.1.2.1">multikey2</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.7">
<span class="ltx_text" id="A2.T8.1.1.1.7.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.7.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.7.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.7.2.1.2.1">multikey3</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.8">
<span class="ltx_text" id="A2.T8.1.1.1.8.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.8.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.8.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.8.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.8.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.8.2.1.2.1">multivalue</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.9">
<span class="ltx_text" id="A2.T8.1.1.1.9.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.9.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.9.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.9.2.1.2.1">multiquery</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.10">VT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.11">CWE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.12">FEW</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.13">
<span class="ltx_text" id="A2.T8.1.1.1.13.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.13.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.13.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.13.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.13.2.1.1.1">single-hop</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.13.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.13.2.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.13.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.14">
<span class="ltx_text" id="A2.T8.1.1.1.14.1"></span> <span class="ltx_text" id="A2.T8.1.1.1.14.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.14.2.1">
<span class="ltx_tr" id="A2.T8.1.1.1.14.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.14.2.1.1.1">multi-hop</span></span>
<span class="ltx_tr" id="A2.T8.1.1.1.14.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T8.1.1.1.14.2.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="A2.T8.1.1.1.14.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.1.1.1.15">Avg.</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.1">4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.4">99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.5">91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.6">96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.7">97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.8">97.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.9">97.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.10">85.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.11">93.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.12">85.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.13">82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.14">50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.15">90.41</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.1">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.4">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.5">90</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.6">93</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.7">97</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.8">89.5</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.9">93.75</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.10">84</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.11">87.2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.12">86</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.13">68</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.14">47</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.15">87.34</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.1">16384</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.4">99</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.5">87</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.6">88</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.7">82</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.8">91.25</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.9">89</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.10">85</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.11">55.4</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.12">91.67</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.13">70</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.14">45</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.15">83.33</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.1">32768</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.4">99</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.5">86</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.6">86</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.7">57</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.8">87</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.9">78</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.10">76.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.11">33.2</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.12">91.67</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.13">56</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.14">44</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.15">76.51</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.6">
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.1">65536</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.4">99</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.5">85</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.6">71</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.7">32</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.8">67.75</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.9">69.25</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.10">66.8</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.11">0.4</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.12">71.67</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.13">50</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.14">37</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.15">65.37</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.1">131072</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.3">98</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.4">95</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.5">92</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.6">40</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.7">18</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.8">56.75</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.9">59</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.10">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.11">0.3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.12">89.33</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.13">47</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.14">34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T8.1.1.7.15">58.81</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the detailed per-task performance of the Phi3-mini (3.8B) language model after being extended to a 128K context window using the LongRoPE2 method. It shows the performance on the RULER benchmark, which comprises various tasks with varying sequence lengths (4k, 8k, 16k, 32k, 64k, and 128k).  The results are broken down by individual task and sequence length, providing a comprehensive view of the model's performance across different task complexities and context lengths.  
> <details>
> <summary>read the caption</summary>
> Table 8: LongRoPE2-extended Phi3-mini (3.8B)-128k per-task performance on RULER.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T9.1.1">
<tr class="ltx_tr" id="A2.T9.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.1">Length</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.2">
<span class="ltx_text" id="A2.T9.1.1.1.2.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.2.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.2.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.2.2.1.2.1">single1</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.3">
<span class="ltx_text" id="A2.T9.1.1.1.3.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.3.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.3.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.3.2.1.2.1">single2</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.4">
<span class="ltx_text" id="A2.T9.1.1.1.4.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.4.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.4.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.4.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.4.2.1.2.1">single3</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.5">
<span class="ltx_text" id="A2.T9.1.1.1.5.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.5.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.5.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.5.2.1.2.1">multikey1</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.6">
<span class="ltx_text" id="A2.T9.1.1.1.6.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.6.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.6.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.6.2.1.2.1">multikey2</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.7">
<span class="ltx_text" id="A2.T9.1.1.1.7.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.7.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.7.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.7.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.7.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.7.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.7.2.1.2.1">multikey3</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.8">
<span class="ltx_text" id="A2.T9.1.1.1.8.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.8.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.8.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.8.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.8.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.8.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.8.2.1.2.1">multivalue</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.9">
<span class="ltx_text" id="A2.T9.1.1.1.9.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.9.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.9.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.9.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.9.2.1.1.1">NIAH</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.9.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.9.2.1.2.1">multiquery</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.10">VT</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.11">CWE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.12">FEW</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.13">
<span class="ltx_text" id="A2.T9.1.1.1.13.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.13.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.13.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.13.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.13.2.1.1.1">single-hop</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.13.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.13.2.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.13.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.14">
<span class="ltx_text" id="A2.T9.1.1.1.14.1"></span> <span class="ltx_text" id="A2.T9.1.1.1.14.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T9.1.1.1.14.2.1">
<span class="ltx_tr" id="A2.T9.1.1.1.14.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.14.2.1.1.1">multi-hop</span></span>
<span class="ltx_tr" id="A2.T9.1.1.1.14.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T9.1.1.1.14.2.1.2.1">QA</span></span>
</span></span><span class="ltx_text" id="A2.T9.1.1.1.14.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1.15">Avg.</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.1">4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.4">99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.5">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.6">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.7">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.8">99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.9">99.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.10">98.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.11">98.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.12">96.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.13">79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.14">60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.1.2.15">94.61</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.3">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.1">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.4">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.5">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.6">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.7">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.8">99</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.9">99.75</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.10">99.8</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.11">95.9</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.12">91.33</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.13">74</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.14">58</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.3.15">93.68</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.4">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.1">16384</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.4">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.5">99</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.6">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.7">98</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.8">95</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.9">98.25</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.10">99.6</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.11">86.8</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.12">96.33</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.13">69</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.14">58</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.4.15">92.31</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.5">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.1">32768</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.4">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.5">99</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.6">98</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.7">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.8">98</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.9">96.25</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.10">98.6</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.11">63.9</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.12">95.67</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.13">72</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.14">55</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.5.15">90.49</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.6">
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.1">65536</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.2">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.3">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.4">100</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.5">98</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.6">98</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.7">95</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.8">95.75</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.9">99.75</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.10">98.6</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.11">33.6</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.12">80.33</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.13">62</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.14">52</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.1.6.15">85.62</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.1">131072</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.4">99</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.5">96</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.6">91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.7">94</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.8">96.5</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.9">97</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.10">92.6</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.11">9</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.12">85.33</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.13">56</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.14">50</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T9.1.1.7.15">82.03</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the LongRoPE2 model's performance on the RULER benchmark, specifically for the LLaMA3-8B model extended to a 128k context window.  It shows the per-task accuracy across 13 RULER tasks for various context lengths, ranging from 4096 tokens to 131072 tokens. The tasks include various question answering and reasoning tasks assessing different aspects of long-context understanding.  The data allows for a precise evaluation of the model's performance at different context lengths and across multiple task types.
> <details>
> <summary>read the caption</summary>
> Table 9: LongRoPE2-extended LLaMA3-8B-128k per-task performance on RULER.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T10.2.2">
<tr class="ltx_tr" id="A2.T10.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.3.1" rowspan="2"><span class="ltx_text" id="A2.T10.2.2.3.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T10.2.2.3.2">Regular short tasks</td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.3.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="A2.T10.2.2.3.4">RULER</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.1">MMLU</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.2">
<span class="ltx_text" id="A2.T10.2.2.4.2.1"></span> <span class="ltx_text" id="A2.T10.2.2.4.2.2">
<span class="ltx_tabular ltx_align_middle" id="A2.T10.2.2.4.2.2.1">
<span class="ltx_tr" id="A2.T10.2.2.4.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T10.2.2.4.2.2.1.1.1">MMLU Pro</span></span>
</span></span><span class="ltx_text" id="A2.T10.2.2.4.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.3">GSM8K</td>
<td class="ltx_td" id="A2.T10.2.2.4.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.5">4k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.6">8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.7">16k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.8">32k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.9">64k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.2.4.10">128k</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="A2.T10.2.2.5.1">Base Model: Phi3-mini (3.8B)</td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.5.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T10.1.1.1" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.1"><span class="ltx_text" id="A2.T10.1.1.1.1.1" style="background-color:#D3E9E8;">LongRoPE2 (<math alttext="d_{rcd}" class="ltx_Math" display="inline" id="A2.T10.1.1.1.1.1.m1.1"><semantics id="A2.T10.1.1.1.1.1.m1.1a"><msub id="A2.T10.1.1.1.1.1.m1.1.1" xref="A2.T10.1.1.1.1.1.m1.1.1.cmml"><mi id="A2.T10.1.1.1.1.1.m1.1.1.2" mathbackground="#D3E9E8" xref="A2.T10.1.1.1.1.1.m1.1.1.2.cmml">d</mi><mrow id="A2.T10.1.1.1.1.1.m1.1.1.3" xref="A2.T10.1.1.1.1.1.m1.1.1.3.cmml"><mi id="A2.T10.1.1.1.1.1.m1.1.1.3.2" mathbackground="#D3E9E8" xref="A2.T10.1.1.1.1.1.m1.1.1.3.2.cmml">r</mi><mo id="A2.T10.1.1.1.1.1.m1.1.1.3.1" xref="A2.T10.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T10.1.1.1.1.1.m1.1.1.3.3" mathbackground="#D3E9E8" xref="A2.T10.1.1.1.1.1.m1.1.1.3.3.cmml">c</mi><mo id="A2.T10.1.1.1.1.1.m1.1.1.3.1a" xref="A2.T10.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T10.1.1.1.1.1.m1.1.1.3.4" mathbackground="#D3E9E8" xref="A2.T10.1.1.1.1.1.m1.1.1.3.4.cmml">d</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A2.T10.1.1.1.1.1.m1.1b"><apply id="A2.T10.1.1.1.1.1.m1.1.1.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T10.1.1.1.1.1.m1.1.1.1.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T10.1.1.1.1.1.m1.1.1.2.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.2">𝑑</ci><apply id="A2.T10.1.1.1.1.1.m1.1.1.3.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.3"><times id="A2.T10.1.1.1.1.1.m1.1.1.3.1.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.3.1"></times><ci id="A2.T10.1.1.1.1.1.m1.1.1.3.2.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.3.2">𝑟</ci><ci id="A2.T10.1.1.1.1.1.m1.1.1.3.3.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.3.3">𝑐</ci><ci id="A2.T10.1.1.1.1.1.m1.1.1.3.4.cmml" xref="A2.T10.1.1.1.1.1.m1.1.1.3.4">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.1.1.1.1.1.m1.1c">d_{rcd}</annotation><annotation encoding="application/x-llamapun" id="A2.T10.1.1.1.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_r italic_c italic_d end_POSTSUBSCRIPT</annotation></semantics></math> and higher dims)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.2.1" style="background-color:#D3E9E8;">70.07</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.3.1" style="background-color:#D3E9E8;">40.30</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.4"><span class="ltx_text" id="A2.T10.1.1.1.4.1" style="background-color:#D3E9E8;">73.62</span></td>
<td class="ltx_td" id="A2.T10.1.1.1.5"></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.6.1" style="background-color:#D3E9E8;">90.41</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.7.1" style="background-color:#D3E9E8;">87.22</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.8.1" style="background-color:#D3E9E8;">83.33</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.9.1" style="background-color:#D3E9E8;">76.51</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.10"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.10.1" style="background-color:#D3E9E8;">65.37</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.1.1.1.11"><span class="ltx_text ltx_font_bold" id="A2.T10.1.1.1.11.1" style="background-color:#D3E9E8;">58.81</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.6">
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.1">LongRoPE2 (all dims)</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.2">69.96</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.3">39.84</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.4"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.6.4.1">74.83</span></td>
<td class="ltx_td" id="A2.T10.2.2.6.5"></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.6">90.02</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.7">87.21</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.8">82.42</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.9">74.86</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.10">63.95</td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.6.11">57.34</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="A2.T10.2.2.7.1">Base Model: LLaMA3-8B</td>
<td class="ltx_td ltx_border_t" id="A2.T10.2.2.7.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.2" style="background-color:#D3E9E8;">
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.1"><span class="ltx_text" id="A2.T10.2.2.2.1.1" style="background-color:#D3E9E8;">LongRoPE2 (<math alttext="d_{rcd}" class="ltx_Math" display="inline" id="A2.T10.2.2.2.1.1.m1.1"><semantics id="A2.T10.2.2.2.1.1.m1.1a"><msub id="A2.T10.2.2.2.1.1.m1.1.1" xref="A2.T10.2.2.2.1.1.m1.1.1.cmml"><mi id="A2.T10.2.2.2.1.1.m1.1.1.2" mathbackground="#D3E9E8" xref="A2.T10.2.2.2.1.1.m1.1.1.2.cmml">d</mi><mrow id="A2.T10.2.2.2.1.1.m1.1.1.3" xref="A2.T10.2.2.2.1.1.m1.1.1.3.cmml"><mi id="A2.T10.2.2.2.1.1.m1.1.1.3.2" mathbackground="#D3E9E8" xref="A2.T10.2.2.2.1.1.m1.1.1.3.2.cmml">r</mi><mo id="A2.T10.2.2.2.1.1.m1.1.1.3.1" xref="A2.T10.2.2.2.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T10.2.2.2.1.1.m1.1.1.3.3" mathbackground="#D3E9E8" xref="A2.T10.2.2.2.1.1.m1.1.1.3.3.cmml">c</mi><mo id="A2.T10.2.2.2.1.1.m1.1.1.3.1a" xref="A2.T10.2.2.2.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A2.T10.2.2.2.1.1.m1.1.1.3.4" mathbackground="#D3E9E8" xref="A2.T10.2.2.2.1.1.m1.1.1.3.4.cmml">d</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="A2.T10.2.2.2.1.1.m1.1b"><apply id="A2.T10.2.2.2.1.1.m1.1.1.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T10.2.2.2.1.1.m1.1.1.1.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1">subscript</csymbol><ci id="A2.T10.2.2.2.1.1.m1.1.1.2.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.2">𝑑</ci><apply id="A2.T10.2.2.2.1.1.m1.1.1.3.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.3"><times id="A2.T10.2.2.2.1.1.m1.1.1.3.1.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.3.1"></times><ci id="A2.T10.2.2.2.1.1.m1.1.1.3.2.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.3.2">𝑟</ci><ci id="A2.T10.2.2.2.1.1.m1.1.1.3.3.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.3.3">𝑐</ci><ci id="A2.T10.2.2.2.1.1.m1.1.1.3.4.cmml" xref="A2.T10.2.2.2.1.1.m1.1.1.3.4">𝑑</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T10.2.2.2.1.1.m1.1c">d_{rcd}</annotation><annotation encoding="application/x-llamapun" id="A2.T10.2.2.2.1.1.m1.1d">italic_d start_POSTSUBSCRIPT italic_r italic_c italic_d end_POSTSUBSCRIPT</annotation></semantics></math> and higher dims)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.2"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.2.1" style="background-color:#D3E9E8;">65.01</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.3"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.3.1" style="background-color:#D3E9E8;">34.61</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.4"><span class="ltx_text" id="A2.T10.2.2.2.4.1" style="background-color:#D3E9E8;">50.80</span></td>
<td class="ltx_td" id="A2.T10.2.2.2.5"></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.6"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.6.1" style="background-color:#D3E9E8;">94.61</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.7"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.7.1" style="background-color:#D3E9E8;">93.68</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.8"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.8.1" style="background-color:#D3E9E8;">92.31</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.9"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.9.1" style="background-color:#D3E9E8;">90.49</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.10"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.10.1" style="background-color:#D3E9E8;">85.62</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.2.2.11"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.2.11.1" style="background-color:#D3E9E8;">82.03</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.1">LongRoPE2 (all dims)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.2">64.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.3">33.83</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.4"><span class="ltx_text ltx_font_bold" id="A2.T10.2.2.8.4.1">51.55</span></td>
<td class="ltx_td ltx_border_b" id="A2.T10.2.2.8.5"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.6">93.92</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.7">92.61</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.8">91.41</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.9">89.30</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.10">83.11</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T10.2.2.8.11">78.07</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of the number of RoPE dimensions included in the evolutionary search process on the overall model performance.  It compares the performance of LongRoPE2 when the search is restricted to only the critical dimensions and higher (drcd and higher dims), versus when all dimensions are included in the search (all dims). The comparison is done across various metrics including MMLU, MMLU-Pro, GSM8K, and RULER scores at different context lengths (4k, 8k, 16k, 32k, 64k, 128k), showing how the search space affects the final model's ability to handle both short and long contexts effectively.
> <details>
> <summary>read the caption</summary>
> Table 10: Ablation study on the number of searched dimensions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20082/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20082/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}