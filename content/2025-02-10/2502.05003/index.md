---
title: "QuEST: Stable Training of LLMs with 1-Bit Weights and Activations"
summary: "QuEST enables stable, accurate LLM training using only 1-bit weights and activations, achieving Pareto-optimal performance compared to higher-precision models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 ISTA",]
showSummary: true
date: 2025-02-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.05003 {{< /keyword >}}
{{< keyword icon="writer" >}} Andrei Panferov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.05003" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.05003" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.05003/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are computationally expensive.  One approach to reduce costs is using quantized representations, but existing Quantization-Aware Training (QAT) methods struggle to achieve high accuracy at low bit-widths, often plateauing around 8-bits.  The open problem is achieving accuracy comparable to higher-precision models while significantly reducing computational resources. 



The paper introduces QuEST, a novel QAT method that solves this problem.  **QuEST uses Hadamard normalization and a new trust gradient estimator for accurate and fast quantization**.  It demonstrates that LLMs can be trained successfully with only 1-bit weights and activations, surpassing existing accuracy at much lower model sizes and significantly reducing inference cost. **Experiments show QuEST induces stable scaling laws, making it highly efficient across different hardware precisions.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} QuEST achieves stable and accurate training of LLMs with 1-bit weights and activations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} QuEST outperforms existing QAT methods, pushing the Pareto-optimal frontier to 4-bits or less. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} QuEST demonstrates new scaling laws for LLMs across a wide range of precisions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents QuEST, a novel method for training large language models (LLMs) with significantly reduced computational costs.  **QuEST achieves this by employing 1-bit weights and activations during training, a significant advancement over existing methods that often plateau at 8-bits.** The research opens new avenues for efficient LLM training and deployment, addressing a critical challenge in the field and influencing future research directions.

------
#### Visual Insights



![](https://arxiv.org/html/2502.05003/x1.png)

> 🔼 This figure illustrates the scaling laws observed when training Llama-family language models using QuEST, a novel quantization-aware training method.  Models ranging in size from 30 million to 800 million parameters were trained on the C4 dataset.  QuEST allows for the use of quantized weights and activations, with bit depths from 1 to 4 bits.  The experiment was conducted in a regime where the number of training tokens was 100 times the number of model parameters.  Importantly, the graph shows that higher compression ratios (fewer bits) require proportionally more training data to achieve comparable performance.  The results demonstrate that QuEST achieves stable training even at the extreme of 1-bit weights and activations (W1A1).  Furthermore, the 4-bit weights and 4-bit activations model (W4A4) trained with QuEST outperforms the baseline BF16 model in terms of achieving lower training loss at a smaller model size (Pareto dominance).
> <details>
> <summary>read the caption</summary>
> Figure 1: The scaling law induced by QuEST when training Llama-family models from 30 to 800M parameters on C4, with quantized weights and activations from 1 to 4 bits, in the 100 tokens/parameter regime (higher compression uses proportionally more data at fixed memory). QuEST allows for stable training at 1-bit weights and activations (W1A1), and the QuEST W4A4 model is Pareto-dominant relative to BF16, with lower loss at lower size.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.1.1.1"><math alttext="P" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml">P</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">𝑃</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">P</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">italic_P</annotation></semantics></math></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.2">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.3">2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.4">3</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.5">4</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.6">8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.7">16</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T1.2.2.1"><math alttext="\text{eff}(P)" class="ltx_Math" display="inline" id="S4.T1.2.2.1.m1.1"><semantics id="S4.T1.2.2.1.m1.1a"><mrow id="S4.T1.2.2.1.m1.1.2" xref="S4.T1.2.2.1.m1.1.2.cmml"><mtext id="S4.T1.2.2.1.m1.1.2.2" xref="S4.T1.2.2.1.m1.1.2.2a.cmml">eff</mtext><mo id="S4.T1.2.2.1.m1.1.2.1" xref="S4.T1.2.2.1.m1.1.2.1.cmml">⁢</mo><mrow id="S4.T1.2.2.1.m1.1.2.3.2" xref="S4.T1.2.2.1.m1.1.2.cmml"><mo id="S4.T1.2.2.1.m1.1.2.3.2.1" stretchy="false" xref="S4.T1.2.2.1.m1.1.2.cmml">(</mo><mi id="S4.T1.2.2.1.m1.1.1" xref="S4.T1.2.2.1.m1.1.1.cmml">P</mi><mo id="S4.T1.2.2.1.m1.1.2.3.2.2" stretchy="false" xref="S4.T1.2.2.1.m1.1.2.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.1.m1.1b"><apply id="S4.T1.2.2.1.m1.1.2.cmml" xref="S4.T1.2.2.1.m1.1.2"><times id="S4.T1.2.2.1.m1.1.2.1.cmml" xref="S4.T1.2.2.1.m1.1.2.1"></times><ci id="S4.T1.2.2.1.m1.1.2.2a.cmml" xref="S4.T1.2.2.1.m1.1.2.2"><mtext id="S4.T1.2.2.1.m1.1.2.2.cmml" xref="S4.T1.2.2.1.m1.1.2.2">eff</mtext></ci><ci id="S4.T1.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.1.m1.1.1">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.1.m1.1c">\text{eff}(P)</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.1.m1.1d">eff ( italic_P )</annotation></semantics></math></th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.2">0.02</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.3">0.16</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.4">0.43</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.5">0.70</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.6">1.02</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T1.2.2.7">1.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the fitted scaling law's 'effective parameter' multipliers for different numerical precisions (P). The effective parameter count is a metric that takes into account the impact of precision on model size and performance, offering a way to compare models of different architectures, sizes, and precisions under the same performance constraints. It shows how many parameters of a full-precision model are effectively being used when training with lower precisions, providing insights into the trade-offs between precision, compute, and model size.
> <details>
> <summary>read the caption</summary>
> Table 1: Fitted scaling-law “effective parameter” multipliers.
> </details>





### In-depth insights


#### QuEST's Novel QAT
QuEST introduces a novel approach to Quantization-Aware Training (QAT) for large language models (LLMs).  Its key innovation lies in a **trust gradient estimator** that directly minimizes the error between the quantized and full-precision gradients. This contrasts with previous methods that primarily relied on the Straight-Through Estimator (STE), often leading to instability and inaccurate gradient estimations.  **Hadamard normalization** is cleverly incorporated to improve the accuracy of quantization by making the data distribution closer to Gaussian, which is vital for optimal fitting.  The method achieves **Pareto-competitive results with FP16**, demonstrating improved accuracy at lower model sizes, and enables stable training with extremely low-bit (even 1-bit) weights and activations, pushing the boundaries of current QAT capabilities.

#### Hadamard Transform
The research paper utilizes the Hadamard Transform as a **pre-processing step** before Gaussian fitting in their quantization method, QuEST.  This is a **crucial innovation**, distinguishing it from previous QAT methods that relied on learned normalization. By applying the Hadamard Transform, the data's distribution is shaped to better approximate a Gaussian distribution, improving the accuracy of subsequent quantization. This technique makes the subsequent MSE-optimal quantization more effective, **reducing quantization errors and thereby improving gradient estimations during backpropagation**. The authors suggest that the orthogonality and fast computation of the Hadamard Transform are key benefits, making their method more efficient than other methods.  The transform facilitates stable training, especially at very low bit-widths such as 1-bit, by mitigating the impact of outliers.  This is a significant advancement that contributes to QuEST's superior performance and ability to achieve a Pareto-optimal frontier in low precision training.

#### Trust Gradient Estimator
The core idea behind the "Trust Gradient Estimator" is to improve the accuracy of gradient estimation during quantization-aware training (QAT) by **reducing the impact of large quantization errors**.  Standard QAT methods often rely on the Straight-Through Estimator (STE), which can lead to significant inaccuracies, especially when quantization errors are substantial. The trust estimator addresses this by **explicitly minimizing the difference between the true, full-precision gradient and the noisy gradient calculated from quantized values**. It achieves this by assigning a "trust score" to each gradient component, based on its corresponding quantization error. Components with small errors are given high trust, while components with large errors (outliers) receive low trust, thus **reducing their influence on the final gradient update**.  This approach is particularly effective at low bit-widths where quantization errors tend to be larger.  The use of a Hadamard transform further enhances the estimator's performance by improving the distribution of weights and activations before quantization, ultimately leading to more stable and accurate training.

#### Optimal Precision Frontier
The concept of "Optimal Precision Frontier" in the context of large language model (LLM) training centers on finding the **sweet spot** between model accuracy and computational efficiency.  It's a Pareto-optimal frontier, where increasing precision beyond a certain point yields diminishing returns in accuracy improvements, while incurring significantly higher computational costs.  The research likely investigates how different quantization techniques impact this frontier, aiming to identify the minimum precision (bit-width) for weights and activations that maintains competitive accuracy while minimizing resource consumption. This involves analyzing the relationship between bit-width, model size, and training data, ultimately determining the optimal balance.  **Finding this frontier is crucial** for deploying LLMs efficiently in resource-constrained environments.

#### GPU Kernel Enhancements
Optimizing GPU performance for quantized large language models (LLMs) is crucial for efficient inference.  **GPU kernel enhancements** are essential in this context, focusing on accelerating computationally intensive operations like matrix multiplication with low-precision arithmetic (e.g., INT4).  The paper likely details custom kernel implementations, potentially leveraging libraries such as CUTLASS, to handle the unique data formats and quantization schemes employed.  **Efficient Hadamard Transform kernels** are also vital, given their use in the proposed QuEST method.  The optimization strategies probably include techniques for memory access optimization, exploiting data parallelism, and minimizing unnecessary data transfers to maximize throughput.  **Performance gains** are likely demonstrated through benchmarks comparing the custom kernels with standard implementations, highlighting improvements in speed and energy efficiency.  **The fusion of multiple operations** into a single kernel is also a critical aspect, minimizing kernel launch overheads.  The overall goal is to bridge the gap between computational support and achievable accuracy, enabling practical deployment of quantized LLMs on GPU hardware.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.05003/x2.png)

> 🔼 This figure displays the cosine similarity between gradients calculated with different methods (Straight-Through Estimator, trust estimation with and without Hadamard Transform) and the true full-precision gradients during the training of a 30M parameter Llama model. The training dataset comprised 2.7B tokens, and all gradients were calculated at 8-bit precision.  The graph shows the alignment for each gradient estimator across different depths (Transformer blocks) in the model.  This helps in visualizing how accurately each method estimates the gradient compared to the true value, providing insight into the effectiveness and stability of these methods during training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Gradient alignment comparison for a 30M Llama model after training on 2.7B tokens in 8-bit precision.
> </details>



![](https://arxiv.org/html/2502.05003/x3.png)

> 🔼 This figure compares the perplexity (a measure of how well a language model predicts a sequence of words) achieved by QuEST and LSQ, two different quantization-aware training (QAT) methods, across various bit-widths (the number of bits used to represent model weights and activations).  The experiment uses a 30M parameter language model. The results show that QuEST consistently outperforms LSQ in terms of perplexity, and the improvement becomes more pronounced as the bit-width decreases (higher compression). This demonstrates QuEST's effectiveness in achieving better accuracy at lower precisions compared to a tuned version of LSQ.
> <details>
> <summary>read the caption</summary>
> Figure 3: Perplexity (PPL) across bit-widths with QuEST vs. a tuned variant of LSQ on a 30M model. QuEST leads to consistently lower PPL, with the advantage growing with compression.
> </details>



![](https://arxiv.org/html/2502.05003/x4.png)

> 🔼 This figure illustrates the efficiency of different numerical precisions and formats used in training large language models.  The efficiency is measured by the ratio eff(P)/P, where eff(P) represents the effective parameter count for a given precision P, normalized by P itself.  INT, FP, and INT+sparse represent integer, floating-point, and integer with sparsity formats, respectively.  The higher the ratio, the more efficient the representation.  The results indicate that INT4 (4-bit integer) offers the highest efficiency among hardware-supported formats, showing its potential advantage in training large language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of the efficiency factors eff⁢(P)/Peff𝑃𝑃\text{eff}(P)/Peff ( italic_P ) / italic_P, arising from our analysis, for different numerical precisions P𝑃Pitalic_P and formats (INT, FP, INT+sparse). Higher is better. INT4 appears to have the highest efficiency among hardware-supported formats.
> </details>



![](https://arxiv.org/html/2502.05003/x5.png)

> 🔼 Figure 5 presents three subfigures illustrating different aspects of QuEST's performance at 4-bit precision. Subfigure (a) compares the performance of three different quantization formats: INT (integer), FP (floating point), and INT+sparse (integer with sparsity). Subfigure (b) shows the scaling laws for weight-only quantization and demonstrates that 2-bit precision achieves Pareto-dominance. Subfigure (c) highlights the positive impact of Hadamard normalization on the trust estimation method used in QuEST.
> <details>
> <summary>read the caption</summary>
> Figure 5: Additional scaling laws induced by QuEST: (a, left) compares INT, FP, and INT+sparse formats at 4-bit precision, (b, middle) shows the scaling laws for weight-only quantization, where 2-bit appears to be Pareto-dominant, while (c, right) shows that trust estimation benefits significantly from Hadamard normalization.
> </details>



![](https://arxiv.org/html/2502.05003/x6.png)

> 🔼 This figure displays the per-layer speedup achieved by using QuEST INT4 compared to BF16 on a single RTX 4090 GPU.  The speedup is calculated considering the costs associated with quantization and dequantization in QuEST, and also factors in the computational overhead of the Hadamard Transform (represented by the orange bars).  Results are shown for both an 800M parameter 4-bit QuEST model and a proportionally larger 7B-parameter model to demonstrate scalability.
> <details>
> <summary>read the caption</summary>
> Figure 6: Per-layer speedups for QuEST INT4 vs BF16, on a single RTX 4090 GPU. The results take into account quantization/dequantization costs for QuEST, and include the cost of the Hadamard transform (orange bar). We present results for the 800M 4-bit QuEST model we trained, as well as inference speedups for a proportional 7B-parameter model.
> </details>



![](https://arxiv.org/html/2502.05003/x7.png)

> 🔼 This figure displays the end-to-end speedup achieved by using QuEST INT4 compared to using BF16 for inference on an 800M parameter model.  The experiment was conducted on a single RTX 4090 GPU, varying the batch size of the input sequences. The results demonstrate that QuEST INT4 offers more significant speedup as the batch size increases. This is expected because larger batch sizes make the computation more compute-bound, allowing QuEST's optimized low-precision operations to show greater performance gains.
> <details>
> <summary>read the caption</summary>
> Figure 7: End-to-end prefill speedups for QuEST INT4 vs BF16, across different batch sizes, using the 800M parameter model on a single RTX 4090 GPU. As expected, QuEST is most effective for larger batch sizes, where the workload is more compute-bound.
> </details>



![](https://arxiv.org/html/2502.05003/x8.png)

> 🔼 This figure shows the fraction of weights masked during training by the QuEST algorithm's trust mask (Mα∗=0) over training iterations for a 30M parameter model.  The trust mask is part of QuEST's approach to estimate gradients accurately in low-precision training.  A higher fraction indicates that a larger portion of the weights are considered unreliable for gradient updates during that iteration. Two lines are plotted, one showing the results with the Hadamard Transform (HT) and the other without. The HT is a component of QuEST, and the figure demonstrates its impact on the fraction of masked weights.  The plot also includes a horizontal line showing the theoretically expected fraction of masked weights, assuming the weights follow a standard normal distribution. The comparison highlights how the Hadamard transform improves the approximation of the weight distribution to a normal distribution, leading to a more consistent trust mask.
> <details>
> <summary>read the caption</summary>
> Figure 8: Fraction of weights for which Mα∗=0subscript𝑀superscript𝛼0M_{\alpha^{*}}=0italic_M start_POSTSUBSCRIPT italic_α start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT end_POSTSUBSCRIPT = 0 as a function of number of training iterations for a 30M model trained with QuEST.
> </details>



![](https://arxiv.org/html/2502.05003/x9.png)

> 🔼 This figure visualizes the persistence of the trust mask in QuEST's training process for a 30M parameter model using 8-bit weights and activations. It displays the percentage of masked values that remain masked from a previous iteration (old mask iteration) to a subsequent iteration (new mask iteration). The figure compares the mask persistence with and without using the Hadamard Transform (HT), demonstrating that the HT makes the masks significantly less persistent.
> <details>
> <summary>read the caption</summary>
> Figure 9: Fraction of masked values retained from an old iteration to a new iteration for a 30M model trained with QuEST W8A8.
> </details>



![](https://arxiv.org/html/2502.05003/x10.png)

> 🔼 This figure illustrates how the performance of the QuEST model varies with changes to the outer trust scaling factor (represented as 's').  The experiment was conducted during the pretraining phase of a 30M parameter model. The x-axis likely shows different values of 's', and the y-axis likely shows a performance metric, potentially validation loss, reflecting the model's performance for each 's' value.  The graph helps determine the optimal 's' value that balances accuracy and stability during training.
> <details>
> <summary>read the caption</summary>
> Figure 10: Performance of QuEST as a function of the outer trust scaling factor s𝑠sitalic_s for a 30M model pretraining.
> </details>



![](https://arxiv.org/html/2502.05003/x11.png)

> 🔼 This figure displays the training loss curves for four different methods used to train a 30-million parameter language model on 3 billion tokens.  The methods compared are QuEST, LSQ, PACT, and the baseline BF16 training.  The graph in (a) shows the full training progression, revealing that QuEST's loss curve closely mirrors the baseline BF16 method while consistently outperforming the other methods. PACT demonstrates poor convergence and high loss values.  The graph in (b) provides a zoomed-in view of the loss curves after the first 1000 training steps.  This view focuses on the comparison between QuEST and LSQ, illustrating QuEST's consistent superiority in maintaining a lower training loss.
> <details>
> <summary>read the caption</summary>
> Figure 11: Training loss curves for a 30M model trained on 3B tokens with W4A4 bitwidth, comparing QuEST (ours), LSQ, PACT, and BF16. (a) Full training loss curves, showing that QuEST closely follows BF16 and consistently outperforms LSQ, while PACT struggles with high loss. (b) Zoomed-in view of training steps after 1000, excluding PACT for clarity, highlighting that QuEST maintains a lower loss than LSQ throughout training.
> </details>



![](https://arxiv.org/html/2502.05003/x12.png)

> 🔼 This figure displays the results of a hyperparameter search performed for the PACT (Parameterized Clipping Activation) method. The goal was to find optimal settings for a 30-million parameter model using 4-bit weights and activations.  The model was trained on only 10% of the complete dataset. The search space included different values for 'learning rate scaling' and 'alpha weight decay'. The validation loss achieved is visualized using a color gradient, where darker colors represent lower validation loss and therefore better model performance. This heatmap allows for the quick identification of the best hyperparameter combination for this specific model and setting.
> <details>
> <summary>read the caption</summary>
> Figure 12: Hyperparameter search for PACT on a 30M parameter model with 4-bit weights and activations, trained on 10% of the dataset. The search explores different values for learning rate scaling (LR Scale) and alpha weight decay, with validation loss indicated by the color gradient. Lower validation loss (darker colors) corresponds to better configurations.
> </details>



![](https://arxiv.org/html/2502.05003/extracted/6183871/figures/PACT-hparam-search.png)

> 🔼 This figure displays the results of fitting the scaling law model (Equation 5 from the paper) to data obtained from training 3-bit and 4-bit models using the QuEST method.  The x-axis represents model size in Megabits, and the y-axis represents the validation loss on the C4 dataset.  Multiple lines show the results for different ratios of tokens to parameters (25, 50, and 100), illustrating how the relationship between model size and loss changes with varying data-model scaling regimes.
> <details>
> <summary>read the caption</summary>
> Figure 13: Scaling law (5) fit for 3 and 4 bit QuEST with tokens/parameters ratios in {25,50,100}2550100\{25,50,100\}{ 25 , 50 , 100 }.
> </details>



![](https://arxiv.org/html/2502.05003/x13.png)

> 🔼 This figure displays the performance of QuEST at various precision levels (different bit-widths for weights and activations) in relation to the ratio of training tokens to model parameters.  The key takeaway is that, while maintaining a constant model size (memory footprint), the optimal precision shifts depending on the amount of training data used.  The graph shows how the loss (a measure of model performance) changes as this token-to-parameter ratio increases.  A gray line is included as a visual reference to show where 4-bit precision becomes optimal.
> <details>
> <summary>read the caption</summary>
> Figure 14: Different QuEST precision performance as a function of tokens-to-parameters ratio at a fixed model memory footprint. The gray line indicates a 4-bit optimality threshold.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T2.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.2">HellaSWAG Accuracy (%) ↑</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T2.1.2.1.1">BF16 (800M, 80B tokens)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.2.1.2">39.52</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T2.1.3.2.1">QuEST 4-bit (800M, 80B tokens)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.1.3.2.2">39.22</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a zero-shot evaluation on the HellaSWAG benchmark, a test of commonsense reasoning.  It compares the accuracy of an 800-million parameter model trained using QuEST with 4-bit precision against a model trained with standard BF16 precision.  Both models were trained on 80 billion tokens.  The nearly identical accuracy scores demonstrate that QuEST's quantization-aware training preserves model performance, even with significantly reduced computational cost and precision.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot evaluation on HellaSWAG comparing QuEST 4-bit to its BF16 counterpart. The results are nearly identical, confirming that training with QuEST is lossless.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.1.1.1">Model size</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.2">30M</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.3">50M</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.4">100M</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.5">200M</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.6">430M</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.1.1.7">800M</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T3.1.2.2.1">Num. Blocks</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.2">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.3">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.4">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.5">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.6">13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T3.1.2.2.7">16</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.3.3.1">Hidden Size</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.2">640</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.3">768</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.4">1024</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.5">1280</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.6">1664</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.3.3.7">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.4.4.1">Num. Attn. Heads</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.2">5</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.3">6</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.4">8</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.5">10</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.6">13</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.4.4.7">16</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.5.5.1">Learning Rate</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.2">0.0012</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.3">0.0012</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.4">0.0006</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.5">0.0003</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.6">0.00015</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.5.5.7">0.000075</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T3.1.6.6.1">Num. Tokens</th>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.2">3B</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.3">5B</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.4">10B</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.5">20B</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.6">43B</td>
<td class="ltx_td ltx_align_center" id="A2.T3.1.6.6.7">80B</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used to train Llama-family language models of different sizes.  It shows the number of blocks, the hidden size, the number of attention heads, the learning rate, and the total number of tokens used for training for each model size (30M, 50M, 100M, 200M, 430M, and 800M parameters). These parameters were used for experiments in the paper to ensure consistent training across different model sizes.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyper-parameters used for each model size.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T4.1.1.1.1">Weight Decay</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.2">2-bit PPL ↓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.3">3-bit PPL ↓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T4.1.1.1.4">4-bit PPL ↓</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.1.2.1.1">0.001</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.1.2">37.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.1.3">31.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.2.1.4">27.93</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.3.2.1">0.01</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.2.2">36.91</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.2.3">30.89</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.3.2.4">27.72</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T4.1.4.3.1">0.1</th>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.3.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.3.2.1">36.54</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.3.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.3.3.1">30.26</span></td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.4.3.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.4.3.4.1">27.51</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A2.T4.1.5.4.1">1.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.5.4.2">38.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.5.4.3">31.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.5.4.4">28.67</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a hyperparameter search for the LSQ (Learned Step Size Quantization) method, focusing on the weight decay parameter.  The search was conducted for a 30-million parameter language model across three different bitwidths (2-bit, 3-bit, and 4-bit).  For each bitwidth, the table shows the validation perplexity (PPL) achieved with various weight decay values. The lowest PPL for each bitwidth, indicating the best-performing hyperparameter setting, is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 4: Weight decay hyperparameter search results for LSQ across different bitwidths of 30M model. The best-performing setting is highlighted in bold.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.05003/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.05003/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}