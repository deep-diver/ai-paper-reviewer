---
title: "Scaling Laws for Floating Point Quantization Training"
summary: "New scaling laws for efficient floating-point quantization training in LLMs are presented, showing optimal bit allocation and critical data size."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tencent AI Lab",]
showSummary: true
date: 2025-01-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.02423 {{< /keyword >}}
{{< keyword icon="writer" >}} Xingwu Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.02423" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.02423" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/scaling-laws-for-floating-point-quantization" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.02423/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Low-precision training, especially using floating-point quantization, is crucial for efficient large language model (LLM) training. However, existing scaling laws primarily focus on integer quantization, which isn't well-suited for the nuances of floating-point methods. This lack of understanding hinders efforts to optimize training costs and predict model performance. This paper addresses these issues by deeply investigating the effects of different floating-point configurations (exponent bits, mantissa bits, scaling factor granularity) on LLM training performance.  The research uses a comprehensive experimental setup involving various data and model sizes, along with multiple precision settings, to establish a robust and accurate scaling law for predicting performance under low-precision training. This new scaling law incorporates these crucial floating-point parameters, unlike prior work that treated precision in a less nuanced way. 

The core contribution of this work is the development of a novel, unified scaling law that accurately predicts LLM performance under various data sizes, model sizes, and floating-point configurations (exponent and mantissa bits).  This law allows researchers to efficiently select optimal parameter settings before running costly experiments and assists in predicting model behavior across a wide range of conditions.  Key insights from the scaling law include discovering the optimal exponent-mantissa bit ratio for various precision levels and determining the critical training data size to prevent performance degradation. This research demonstrates that cost-effective performance can be achieved between 4-8 bits of precision and proposes guidelines for selecting optimal hardware configurations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new unified scaling law accurately predicts the performance of LLMs under various floating-point quantization settings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Optimal exponent-mantissa bit ratios and a critical data size threshold for preventing performance degradation in low-precision LLM training were identified. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study suggests that the best cost-performance precision in LLM training lies between 4-8 bits, depending on computational power. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working on **large language model (LLM) training efficiency** and **low-precision computation**.  It provides a novel scaling law for floating-point quantization, offering **practical guidance for optimizing LLM training costs** and **hardware resource allocation**.  The findings are particularly relevant to current trends in reducing computational expenses and improving LLM deployment on resource-constrained platforms.  It opens up new avenues for exploring **optimal exponent-mantissa bit ratios** and **critical data size thresholds** in low-precision LLM training.

------
#### Visual Insights



![](https://arxiv.org/html/2501.02423/x1.png)

> 🔼 This figure compares the predictions of Kumar et al.'s (2024) scaling law (Equation 7 in the paper) against actual experimental results for various data sizes (D), exponent bits (E), and mantissa bits (M) during floating-point quantization training.  The three subplots show these comparisons, with point sizes in each plot visually representing the magnitude of D, E, and M respectively.  The results show that the scaling law significantly deviates from the observed experimental results particularly when both exponent and mantissa bits are small (E1M1), highlighting the limitations of using this model for this scenario. The plot demonstrates the inaccuracies of Kumar et al.'s scaling law in predicting the loss for floating-point quantization training.
> <details>
> <summary>read the caption</summary>
> Figure 1: The fitting results of the scaling law in Eq. (7) deriving from Kumar et al. (2024), which have large bias in E1M1 case. In the three sub-figures on the left, middle and right, the sizes of the data points are approximately proportional to D𝐷Ditalic_D, E𝐸Eitalic_E, and M𝑀Mitalic_M respectively.
> </details>





{{< table-caption >}}
| Hyper-parameters | 41M | 85M | 154M | 679M | 1.2B |
|---|---|---|---|---|---|---|
| Layers | 12 | 12 | 12 | 24 | 24 |
| Hidden Size | 512 | 768 | 1024 | 1536 | 2048 |
| FFN Hidden Size | 1536 | 2048 | 2816 | 4096 | 5632 |
| Attention Heads | 8 | 12 | 16 | 24 | 32 |
| Attention Head size | 64 | 64 | 64 | 64 | 64 |
| Optimizer | AdamW | AdamW | AdamW | AdamW | AdamW |
| Adam $(\beta_1,\beta_2)$ | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) | (0.9, 0.95) |
| Adam $\epsilon$ | $1\times 10^{-8}$ | $1\times 10^{-8}$ | $1\times 10^{-8}$ | $1\times 10^{-8}$ | $1\times 10^{-8}$ |
| Weight Decay | 0.1 | 0.1 | 0.1 | 0.1 | 0.1 |
| Clip Grad Norm | 1.0 | 1.0 | 1.0 | 1.0 | 1.0 |
| Max LR | $3.0\times 10^{-4}$ | $3.0\times 10^{-4}$ | $3.0\times 10^{-4}$ | $3.0\times 10^{-4}$ | $3.0\times 10^{-4}$ |
| Min LR | 0 | 0 | 0 | 0 | 0 |
| LR Decay | Cosine | Cosine | Cosine | Cosine | Cosine |
| Seqence Length | 2048 | 2048 | 2048 | 2048 | 2048 |
| Batch Size (# Tokens) | 2M | 2M | 2M | 2M | 2M |
| Warmup Steps | 500 | 500 | 500 | 500 | 500 |{{< /table-caption >}}

> 🔼 This table details the specific hyperparameter settings used for training each of the different sized LLaMA language models.  It includes information such as the number of layers, hidden size, feed-forward network (FFN) hidden size, attention heads, attention head size, optimizer, Adam parameters (B1, B2), Adam epsilon, weight decay, gradient clipping norm, maximum learning rate, minimum learning rate, learning rate decay schedule, sequence length, batch size (in tokens), and warmup steps.  These parameters are crucial for understanding the experimental setup and for reproducibility.
> <details>
> <summary>read the caption</summary>
> Table 1: Model hyper-parameters for each size.
> </details>





### In-depth insights


#### FP Quant. Scaling Laws
The research explores **scaling laws for floating-point quantization training in large language models (LLMs)**.  It challenges existing laws that primarily focus on integer quantization, arguing they don't accurately capture the nuances of floating-point precision. The study delves into the impact of exponent and mantissa bit allocation on LLM performance, proposing an **optimal exponent-mantissa bit ratio** for different precision levels.  A crucial finding is the identification of a **critical data size**, beyond which adding more training data hinders performance.  The research culminates in a **unified scaling law that incorporates data size, model size, exponent, mantissa, and block size of scaling factors**, providing a more comprehensive predictive model for low-precision LLM training and guiding cost-effective choices of precision levels for specific computational resources.

#### Optimal Bit Allocation
Optimal bit allocation in quantized neural networks, especially for large language models (LLMs), is crucial for balancing model accuracy and computational efficiency.  **Finding the ideal balance between exponent bits (representing the dynamic range) and mantissa bits (representing precision within that range) is key.**  A common approach is to explore the scaling laws, which describe the relationship between model performance and different hyperparameters, including bit precision.  The research investigates how the choice of exponent and mantissa bits affects LLM performance, aiming to find the optimal allocation for a given total number of bits.  This involves extensive experimentation, fitting the results to scaling laws, and analyzing the resulting trade-offs.  **The optimal allocation often varies based on factors like the model size, dataset size, and the chosen quantization method.**  Further exploration might consider the impact of hardware limitations and the cost-performance trade-offs associated with different bit allocation strategies.  **Ultimately, the goal is to minimize the loss in accuracy while maximizing computational efficiency, resulting in a cost-effective solution for low-precision training and inference.**

#### Critical Data Size
The concept of "Critical Data Size" in the context of low-precision floating-point quantization training for LLMs reveals a crucial limitation.  **Beyond a certain data size**, increasing training data paradoxically leads to **performance degradation** instead of improvement. This is attributed to the combined effects of limited precision and the "knowledge intensity" of the model.  The model's capacity to effectively utilize and learn from additional information is overwhelmed by the precision constraints.  This highlights that **optimal performance is not solely determined by the scale of data**, but by a careful balance between data size, model size, and the selected precision.  **Optimal data size varies significantly depending on the precision level**,  with higher precisions enabling the use of larger datasets before encountering performance decline.  This insight has significant implications for resource allocation and efficient training strategies, emphasizing the importance of precise scaling law estimations that account for the interplay between these factors.

#### Cost-Optimal Precision
The concept of "Cost-Optimal Precision" in the context of large language model (LLM) training centers on finding the **sweet spot** between model accuracy and computational cost.  The paper explores the trade-offs between using higher precision (e.g., FP32) for better accuracy and lower precision (e.g., FP8) for reduced computational expenses. It highlights that **optimal precision isn't fixed**, but rather dynamically depends on factors like model size, training data volume, and available computational resources.  The research likely presents a mathematical framework or scaling laws to predict the best precision for a given set of constraints, enabling researchers and developers to **optimize training efficiency** without significantly sacrificing model performance.  Essentially, the "Cost-Optimal Precision" section aims to guide efficient resource allocation by providing a data-driven method for selecting the most appropriate precision level for LLM training, leading to cost savings and faster training times.

#### Future Work
The authors suggest several avenues for future research.  **Extending the scaling laws to larger models and datasets** is crucial to validate the model's generalizability and predictive power beyond the current experimental scope.  Investigating the applicability of these laws to **different LLM architectures**, such as those beyond the Transformer architecture, is vital to broaden the findings' relevance and practical impact.  The study focused on specific floating-point quantization strategies, therefore, **exploring other quantization methods** will enrich the understanding of the impact of precision on LLM performance.  Finally, a deeper investigation into the **interaction between various quantization techniques and the scaling laws** could reveal valuable insights into the optimization of low-precision LLM training and deployment.  Addressing these points would further enhance the practical use and theoretical significance of the presented work.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.02423/x2.png)

> 🔼 The figure shows the comparison of the Chinchilla scaling law with the actual LLM training losses using BF16 precision.  The plot visualizes the alignment of predicted losses against empirical losses for various model sizes, demonstrating the accuracy of the Chinchilla scaling law in predicting LLM performance under BF16 precision.
> <details>
> <summary>read the caption</summary>
> (a) Chinchilla basic scaling law.
> </details>



![](https://arxiv.org/html/2501.02423/x3.png)

> 🔼 This figure shows the comparison of the OpenAI scaling law with the empirical training loss for various model sizes. The plot illustrates the predicted loss versus the actual training loss observed during experiments. This visualization helps assess the accuracy of the OpenAI scaling law in predicting model performance in the context of the paper's research.
> <details>
> <summary>read the caption</summary>
> (b) OpenAI basic scaling law.
> </details>



![](https://arxiv.org/html/2501.02423/x4.png)

> 🔼 This figure compares the performance of two established scaling laws – the Chinchilla scaling law and the OpenAI scaling law – against actual results obtained from LLM training.  Both laws attempt to predict training loss (L) based on model size (N) and dataset size (D). The plot visually represents the comparison, showing how well each law predicts the observed training losses. The size of each data point corresponds to the dataset size (D). This visualization helps assess the accuracy of the classical scaling laws in predicting LLM training behavior and informs the development of a more precise, precision-aware scaling law.
> <details>
> <summary>read the caption</summary>
> Figure 2: The fitting performance of classical scaling laws. The size of the data point is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x5.png)

> 🔼 This figure illustrates the six different quantization targets considered in the paper: P1 to P6.  Each target represents a specific input tensor to the GEMM (General Matrix Multiplication) operations within the Transformer architecture. These GEMMs are involved in the forward and backward passes of the model during training. The paper explores the impact of quantizing each of these tensors individually on the overall model's performance.  The authors ultimately choose to focus on quantizing P2, P4, and P6 in subsequent experiments due to their findings regarding the impact on model accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Quantization Targets. We select P2, P4, and P6 as our quantization targets for the following exploration of scaling laws.
> </details>



![](https://arxiv.org/html/2501.02423/x6.png)

> 🔼 The bar chart visualizes the performance loss differences when applying various quantization strategies to different components of the transformer model (inputs to GEMM computation).  It shows that quantizing input embeddings during backward propagation (P5) leads to significant performance degradation, while quantizing other inputs, especially P2, P4, or P6 alone, yields near-optimal results.  Quantizing multiple targets together may not always provide additional benefit. The chart highlights the impact of choosing specific inputs for quantization on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Results of loss gaps with different quantization targets.
> </details>



![](https://arxiv.org/html/2501.02423/x7.png)

> 🔼 Figure 5 shows the relationship between the hyperparameters γ and ι (from the exponent scaling law equation 12) and the model size (N) and data size (D).  The plots illustrate that γ and ι are not constant values but rather functions of N and D, indicating that their influence on model performance depends on the model and data size.  The size of each data point in the plot is proportional to the data size (D), providing a visual representation of the relative data sizes used in the experiments.
> <details>
> <summary>read the caption</summary>
> Figure 5: The correlations between γ𝛾\gammaitalic_γ,ι𝜄\iotaitalic_ι in Eq. (12) and N𝑁Nitalic_N,D𝐷Ditalic_D. γ𝛾\gammaitalic_γ,ι𝜄\iotaitalic_ι could be viewed as functions of N𝑁Nitalic_N,D𝐷Ditalic_D. Data point size is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x8.png)

> 🔼 This figure displays the results of fitting the exponent-related scaling law.  The graph shows the relationship between predicted and actual loss values for various LLMs trained under different low-precision settings.  The size of the data points is directly proportional to the amount of training data used in each experiment (D).  This visualization helps assess the accuracy of the proposed Exponent-related scaling law in predicting LLM performance. The graph provides a visual representation of the efficacy of the scaling law to model the effect of the exponent in floating point quantized training on LLM performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: The fitting results of our Exponent-related scaling law. Data point size is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x9.png)

> 🔼 This figure displays the results of the Mantissa-related scaling law, a part of the study on scaling laws for floating-point quantization training of LLMs.  The plot shows the correlation between predicted and actual loss values for different Mantissa configurations. The sizes of the data points in the graph are proportional to the size of the training dataset (D), providing a visual representation of the dataset's influence on the Mantissa scaling law's accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 7: The fitting results of our Mantissa-related scaling law. Data point size is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x10.png)

> 🔼 This figure displays the results of the joint exponent and mantissa scaling law. It shows how well the model's predicted loss matches the actual loss across different combinations of exponent bits (E), mantissa bits (M), data size (D), and other parameters.  The size of the data points in the subfigures visually represents the relative contribution of D, M, and E respectively to the overall scaling law, allowing for a better visualization of their individual impacts on the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: The fitting results of the joint Exponent & Mantissa scaling law: Data point sizes in left, middle, and right sub-figures are proportional to D𝐷Ditalic_D, M𝑀Mitalic_M, and E𝐸Eitalic_E, respectively.
> </details>



![](https://arxiv.org/html/2501.02423/x11.png)

> 🔼 Figure 9 visualizes the relationship between the hyperparameters κ and ψ (from the logarithmic scaling law in Equation 19) and the model size (N) and dataset size (D).  The plots show that κ and ψ exhibit clear correlations with N and D, suggesting that the impact of block size on model performance is dependent on the model and dataset scales.  The size of the data points in the figure is scaled proportionally to the dataset size (D), providing a visual representation of data size's influence on the correlations.
> <details>
> <summary>read the caption</summary>
> Figure 9: The correlations between κ𝜅\kappaitalic_κ,ψ𝜓\psiitalic_ψ in Eq. (19) and N𝑁Nitalic_N,D𝐷Ditalic_D. κ𝜅\kappaitalic_κ,ψ𝜓\psiitalic_ψ could be viewed as functions of N𝑁Nitalic_N,D𝐷Ditalic_D. The data points are scaled proportionally to the value of D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x12.png)

> 🔼 Figure 10 shows the results of experiments on the impact of block size (B) on the validation loss of LLMs. The scaling law proposed in this work accurately predicts the validation loss for different block sizes (B) and data sizes (D).  The left sub-figure shows the correlation between the predicted and actual loss for different data sizes. The right sub-figure emphasizes the relationship between block size (B) and validation loss, showing how accurately the proposed scaling law captures this relationship.  In both sub-figures, the size of the data points is directly proportional to the size of the dataset (D) and block size (B), respectively.
> <details>
> <summary>read the caption</summary>
> Figure 10: Our scaling law precisely forecasts validation loss for diverse block sizes. Data point sizes are directly proportional to D𝐷Ditalic_D and B𝐵Bitalic_B in the respective left and right sub-figures.
> </details>



![](https://arxiv.org/html/2501.02423/x13.png)

> 🔼 This figure shows the fitting results of the channel-wise scaling law. The x-axis represents the actual loss, and the y-axis represents the predicted loss according to the channel-wise scaling law. Each data point corresponds to a specific model trained with a particular combination of model size (N), data size (D), exponent (E), mantissa (M), and block size of scaling factors (B). The size of the data point is proportional to the data size (D). The plot visually demonstrates how well the channel-wise scaling law predicts the loss compared to the actual results. This figure helps assess the accuracy and applicability of the channel-wise scaling law for estimating the performance of low-precision LLMs in training.
> <details>
> <summary>read the caption</summary>
> Figure 11: The fitting results of the channel-wise scaling law. The size of the data point is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x14.png)

> 🔼 Figure 12 shows the relationship between the block size of scaling factors (B) and the ratio of model size (N) to data size (D).  Specifically, it plots log₂B against log₁₀(N/D), illustrating how the choice of block size impacts the scaling behavior as model and dataset sizes vary.  The size of each point in the graph corresponds to the dataset size (D), making larger datasets more visually prominent.
> <details>
> <summary>read the caption</summary>
> Figure 12: The correlations between log2⁡Bsubscript2𝐵\log_{2}Broman_log start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT italic_B and ND𝑁𝐷\frac{N}{D}divide start_ARG italic_N end_ARG start_ARG italic_D end_ARG. The size of the data point is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x15.png)

> 🔼 Figure 13 presents the results obtained by fitting the tensor-wise scaling law.  This scaling law models the relationship between the training loss of a large language model (LLM) and key parameters, specifically the data size, model size, and block size of scaling factors. The figure visually displays the agreement between the predicted loss values (from the scaling law) and the actual losses observed during experiments using the tensor-wise scaling strategy. The size of each data point in the figure is directly proportional to the data size (D), providing a visual representation of how the data size relates to model performance under the tensor-wise scaling approach.  This allows for a visual assessment of the accuracy of the tensor-wise scaling law.
> <details>
> <summary>read the caption</summary>
> Figure 13: The fitting results of the tensor-wise scaling law. The size of the data point is proportional to D𝐷Ditalic_D.
> </details>



![](https://arxiv.org/html/2501.02423/x16.png)

> 🔼 Figure 14 shows the results of the proposed scaling law for low-precision floating-point training.  The plot compares predicted loss values from the scaling law against actual measured losses across a range of training configurations. Each point represents a different training setup. Point size is proportional to the training dataset size (D). The star points show model validation using 1.2 billion parameter models which are not part of the training data used to generate the scaling law.
> <details>
> <summary>read the caption</summary>
> Figure 14: The fitting results of our scaling law for floating-point quantization training. Data point size is proportional to D𝐷Ditalic_D. The star points (1.2B models) are our validation.
> </details>



![](https://arxiv.org/html/2501.02423/x17.png)

> 🔼 This figure visualizes the optimal allocation of exponent and mantissa bits for various floating-point precisions (4, 8, and 16 bits).  It shows how the optimal bit distribution changes as the total number of bits in the floating-point representation increases.  The optimal layout is determined by minimizing the loss of information due to quantization, as derived from the proposed scaling law in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 15: The optimal float layouts of different bit widths.
> </details>



![](https://arxiv.org/html/2501.02423/x18.png)

> 🔼 This figure shows how the training loss changes with respect to the size of the training dataset for different floating-point quantization configurations.  The x-axis represents the dataset size (D), and the y-axis represents the training loss (L).  Multiple lines are presented, each corresponding to a different combination of exponent (E) and mantissa (M) bits in the floating-point format.  This illustrates how the optimal amount of training data might vary depending on the chosen quantization precision.
> <details>
> <summary>read the caption</summary>
> Figure 16: Variation of loss with data size under different floating-point quantization settings.
> </details>



![](https://arxiv.org/html/2501.02423/x19.png)

> 🔼 This figure shows the relationship between optimal precision and data size under a fixed computational budget.  The experiment was conducted with a block size (B) of 128.  The results demonstrate that across a wide range of data sizes (0.1T to 100T), the optimal precision consistently falls between 4 and 8 bits. This suggests that a moderate precision is generally optimal, even with very large datasets.
> <details>
> <summary>read the caption</summary>
> Figure 17: Under the constraint of computing the budget with block size (B𝐵Bitalic_B) set to 128, and based on the results of our experimental data fitting, the optimal precision (P𝑃Pitalic_P) values for different data sizes (D𝐷Ditalic_D) can be deduced. As depicted, across a substantially broad range of data sizes from 0.1T to 100T, the optimal precision value consistently falls within the range of 4 to 8 bits.
> </details>



![](https://arxiv.org/html/2501.02423/x20.png)

> 🔼 Figure 18 shows the relationship between the optimal precision (number of bits used for computation) and the total computational cost.  The optimal precision is determined by balancing the trade-off between achieving high accuracy and minimizing the computational resources. As the computational budget increases, the optimal precision increases but eventually plateaus. This is because with a larger budget, the model can afford higher precision without significantly sacrificing performance. This figure highlights that there is a sweet spot for computational cost and precision. It is generated by setting the block size (B) to 128 and k to 6/16 in the equation derived by the authors.
> <details>
> <summary>read the caption</summary>
> Figure 18: The optimal cost-performance ratio precision as a function of the total compute budget, illustrating the relationship between precision (P𝑃Pitalic_P) and computational budget (C𝐶Citalic_C) when the block size (B𝐵Bitalic_B) is set to 128 and k=6/16𝑘616k=6/16italic_k = 6 / 16.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Constant | Value |
|---|---| 
| n | 69.2343 |
| α | 0.2368 |
| d | 68973.0621 |
| β | 0.5162 |
| ϵ | 1.9061 |
| γ | 11334.5197 |
| δ | 3.1926 |
| ν | 2.9543 |{{< /table-caption >}}
> 🔼 This table presents the fitted hyperparameters and their corresponding values used in the proposed unified scaling law for floating-point quantization training.  These parameters, including α, β, δ, ν, γ, η, and ε, quantify the relationships between various factors such as model size, data size, exponent bits, mantissa bits, and block size, all affecting the performance of LLMs during low-precision training.
> <details>
> <summary>read the caption</summary>
> Table 2: Fitted hyper-parameters and their values in our proposed unified scaling law for floating-point quantization training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A4.T3.4">
<tr class="ltx_tr" id="A4.T3.4.1">
<td class="ltx_td ltx_border_tt" id="A4.T3.4.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.4.1.2">N</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.4.1.3">D</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.4.1.4">E</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.4.1.5">M</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T3.4.1.6">B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T3.4.1.7">Fitting support</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.1">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.2">40894464</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.3">10485760000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.5">7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T3.4.2.6">channel</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T3.4.2.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.3">
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.1">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.3.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.3.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.4">
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.1">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.4.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.4.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.5">
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.1">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.5.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.5.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.6">
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.1">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.6.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.6.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.7">
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.1">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.7.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.7.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.8">
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.1">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.8.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.8.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.9">
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.1">7</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.9.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.9.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.10">
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.1">8</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.10.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.10.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.11">
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.1">9</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.11.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.11.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.12">
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.1">10</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.12.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.12.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.13">
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.1">11</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.13.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.13.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.14">
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.1">12</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.14.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.14.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.15">
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.1">13</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.15.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.15.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.16">
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.1">14</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.16.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.16.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.17">
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.1">15</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.17.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.17.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.18">
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.1">16</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.18.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.18.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.19">
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.1">17</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.19.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.19.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.20">
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.1">18</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.20.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.20.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.21">
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.1">19</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.21.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.21.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.22">
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.1">20</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.22.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.22.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.23">
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.1">21</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.23.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.23.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.24">
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.1">22</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.24.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.24.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.25">
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.1">23</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.25.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.25.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.26">
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.1">24</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.26.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.26.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.27">
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.1">25</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.27.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.27.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.28">
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.1">26</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.28.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.28.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.29">
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.1">27</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.29.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.29.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.30">
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.1">28</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.30.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.30.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.31">
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.1">29</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.31.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.31.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.32">
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.1">30</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.32.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.32.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.33">
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.1">31</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.33.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.33.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.34">
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.1">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.34.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.34.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.35">
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.1">33</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.35.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.35.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.36">
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.1">34</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.36.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.36.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.37">
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.1">35</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.37.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.37.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.38">
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.1">36</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.38.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.38.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.39">
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.1">37</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.39.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.39.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.40">
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.1">38</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.40.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.40.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.41">
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.1">39</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.41.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.41.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.42">
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.1">40</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.42.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.42.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.43">
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.1">41</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.43.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.43.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.44">
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.1">42</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.44.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.44.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.45">
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.1">43</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.45.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.45.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.46">
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.1">44</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.46.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.46.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.47">
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.1">45</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.47.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.47.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.48">
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.1">46</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.48.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.48.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.49">
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.1">47</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.49.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.49.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.50">
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.1">48</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.50.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.50.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.51">
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.1">49</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.51.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.51.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.52">
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.1">50</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.52.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.52.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.53">
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.1">51</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.53.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.53.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.54">
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.1">52</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.54.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.54.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.55">
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.1">53</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.55.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.55.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.56">
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.1">54</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.56.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.56.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.57">
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.1">55</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.57.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.57.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.58">
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.1">56</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.58.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.58.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.59">
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.1">57</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.59.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.59.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.60">
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.1">58</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.60.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.60.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.61">
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.1">59</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.61.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.61.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.62">
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.1">60</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.62.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.62.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.63">
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.1">61</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.63.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.63.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.64">
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.1">62</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.64.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.64.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.65">
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.1">63</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.65.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.65.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.66">
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.1">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.66.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.66.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.67">
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.1">65</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.67.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.67.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.68">
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.1">66</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.68.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.68.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.69">
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.1">67</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.69.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.69.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.70">
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.1">68</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.70.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.70.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.71">
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.1">69</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.71.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.71.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.72">
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.1">70</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.72.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.72.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.73">
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.1">71</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.73.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.73.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.74">
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.1">72</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.74.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.74.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.75">
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.1">73</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.75.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.75.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.76">
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.1">74</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.76.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.76.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.77">
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.1">75</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.77.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.77.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.78">
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.1">76</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.78.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.78.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.79">
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.1">77</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.79.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.79.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.80">
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.1">78</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.80.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.80.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.81">
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.1">79</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.81.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.81.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.82">
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.1">80</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.82.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.82.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.83">
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.1">81</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.83.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.83.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.84">
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.1">82</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.84.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.84.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.85">
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.1">83</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.85.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.85.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.86">
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.1">84</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.86.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.86.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.87">
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.1">85</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.87.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.87.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.88">
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.1">86</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.88.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.88.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.89">
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.1">87</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.89.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.89.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.90">
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.1">88</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.90.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.90.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.91">
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.1">89</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.91.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.91.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.92">
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.1">90</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.92.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.92.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.93">
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.1">91</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.2">40894464</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.93.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.93.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.94">
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.1">92</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.94.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.94.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.95">
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.1">93</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.95.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.95.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.96">
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.1">94</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.96.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.96.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.97">
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.1">95</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.97.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.97.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.98">
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.1">96</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.98.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.98.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.99">
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.1">97</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.99.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.99.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.100">
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.1">98</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.100.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.100.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.101">
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.1">99</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.101.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.101.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.102">
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.1">100</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.102.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.102.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.103">
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.1">101</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.103.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.103.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.104">
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.1">102</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.104.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.104.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.105">
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.1">103</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.105.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.105.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.106">
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.1">104</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.106.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.106.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.107">
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.1">105</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.107.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.107.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.108">
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.1">106</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.108.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.108.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.109">
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.1">107</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.109.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.109.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.110">
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.1">108</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.110.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.110.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.111">
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.1">109</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.111.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.111.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.112">
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.1">110</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.112.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.112.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.113">
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.1">111</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.113.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.113.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.114">
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.1">112</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.114.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.114.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.115">
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.1">113</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.115.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.115.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.116">
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.1">114</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.116.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.116.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.117">
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.1">115</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.117.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.117.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.118">
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.1">116</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.118.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.118.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.119">
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.1">117</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.119.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.119.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.120">
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.1">118</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.120.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.120.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.121">
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.1">119</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.121.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.121.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.122">
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.1">120</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.122.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.122.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.123">
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.1">121</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.123.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.123.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.124">
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.1">122</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.124.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.124.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.125">
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.1">123</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.125.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.125.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.126">
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.1">124</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.126.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.126.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.127">
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.1">125</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.127.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.127.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.128">
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.1">126</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.128.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.128.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.129">
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.1">127</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.129.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.129.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.130">
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.1">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.130.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.130.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.131">
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.1">129</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.131.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.131.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.132">
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.1">130</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.132.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.132.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.133">
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.1">131</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.133.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.133.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.134">
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.1">132</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.134.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.134.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.135">
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.1">133</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.135.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.135.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.136">
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.1">134</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.136.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.136.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.137">
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.1">135</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.137.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.137.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.138">
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.1">136</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.138.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.138.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.139">
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.1">137</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.139.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.139.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.140">
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.1">138</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.140.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.140.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.141">
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.1">139</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.141.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.141.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.142">
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.1">140</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.142.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.142.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.143">
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.1">141</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.143.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.143.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.144">
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.1">142</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.144.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.144.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.145">
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.1">143</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.145.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.145.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.146">
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.1">144</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.146.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.146.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.147">
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.1">145</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.147.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.147.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.148">
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.1">146</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.148.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.148.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.149">
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.1">147</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.149.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.149.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.150">
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.1">148</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.150.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.150.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.151">
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.1">149</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.151.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.151.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.152">
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.1">150</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.152.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.152.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.153">
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.1">151</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.153.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.153.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.154">
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.1">152</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.154.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.154.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.155">
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.1">153</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.155.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.155.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.156">
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.1">154</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.156.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.156.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.157">
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.1">155</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.157.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.157.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.158">
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.1">156</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.158.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.158.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.159">
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.1">157</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.159.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.159.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.160">
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.1">158</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.160.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.160.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.161">
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.1">159</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.161.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.161.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.162">
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.1">160</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.162.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.162.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.163">
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.1">161</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.163.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.163.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.164">
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.1">162</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.164.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.164.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.165">
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.1">163</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.165.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.165.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.166">
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.1">164</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.166.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.166.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.167">
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.1">165</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.167.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.167.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.168">
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.1">166</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.168.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.168.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.169">
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.1">167</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.169.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.169.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.170">
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.1">168</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.170.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.170.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.171">
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.1">169</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.171.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.171.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.172">
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.1">170</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.172.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.172.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.173">
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.1">171</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.173.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.173.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.174">
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.1">172</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.174.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.174.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.175">
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.1">173</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.175.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.175.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.176">
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.1">174</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.176.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.176.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.177">
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.1">175</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.177.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.177.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.178">
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.1">176</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.178.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.178.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.179">
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.1">177</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.179.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.179.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.180">
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.1">178</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.180.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.180.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.181">
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.1">179</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.2">84934656</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.181.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.181.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.182">
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.1">180</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.182.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.182.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.183">
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.1">181</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.183.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.183.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.184">
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.1">182</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.184.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.184.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.185">
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.1">183</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.185.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.185.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.186">
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.1">184</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.186.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.186.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.187">
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.1">185</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.187.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.187.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.188">
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.1">186</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.188.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.188.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.189">
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.1">187</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.189.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.189.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.190">
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.1">188</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.190.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.190.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.191">
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.1">189</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.191.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.191.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.192">
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.1">190</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.192.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.192.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.193">
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.1">191</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.193.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.193.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.194">
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.1">192</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.194.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.194.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.195">
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.1">193</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.195.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.195.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.196">
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.1">194</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.196.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.196.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.197">
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.1">195</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.197.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.197.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.198">
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.1">196</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.198.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.198.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.199">
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.1">197</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.199.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.199.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.200">
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.1">198</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.200.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.200.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.201">
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.1">199</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.201.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.201.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.202">
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.1">200</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.202.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.202.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.203">
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.1">201</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.203.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.203.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.204">
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.1">202</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.204.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.204.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.205">
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.1">203</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.205.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.205.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.206">
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.1">204</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.206.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.206.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.207">
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.1">205</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.207.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.207.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.208">
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.1">206</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.208.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.208.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.209">
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.1">207</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.209.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.209.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.210">
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.1">208</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.210.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.210.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.211">
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.1">209</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.211.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.211.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.212">
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.1">210</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.212.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.212.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.213">
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.1">211</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.213.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.213.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.214">
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.1">212</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.214.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.214.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.215">
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.1">213</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.215.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.215.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.216">
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.1">214</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.216.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.216.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.217">
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.1">215</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.217.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.217.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.218">
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.1">216</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.218.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.218.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.219">
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.1">217</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.219.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.219.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.220">
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.1">218</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.220.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.220.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.221">
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.1">219</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.221.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.221.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.222">
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.1">220</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.222.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.222.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.223">
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.1">221</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.223.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.223.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.224">
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.1">222</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.224.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.224.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.225">
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.1">223</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.225.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.225.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.226">
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.1">224</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.226.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.226.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.227">
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.1">225</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.227.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.227.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.228">
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.1">226</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.228.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.228.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.229">
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.1">227</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.229.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.229.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.230">
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.1">228</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.230.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.230.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.231">
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.1">229</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.231.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.231.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.232">
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.1">230</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.232.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.232.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.233">
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.1">231</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.233.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.233.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.234">
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.1">232</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.234.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.234.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.235">
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.1">233</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.235.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.235.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.236">
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.1">234</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.236.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.236.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.237">
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.1">235</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.237.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.237.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.238">
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.1">236</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.238.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.238.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.239">
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.1">237</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.239.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.239.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.240">
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.1">238</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.240.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.240.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.241">
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.1">239</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.241.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.241.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.242">
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.1">240</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.242.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.242.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.243">
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.1">241</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.243.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.243.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.244">
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.1">242</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.244.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.244.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.245">
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.1">243</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.245.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.245.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.246">
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.1">244</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.246.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.246.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.247">
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.1">245</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.247.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.247.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.248">
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.1">246</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.248.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.248.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.249">
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.1">247</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.249.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.249.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.250">
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.1">248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.250.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.250.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.251">
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.1">249</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.251.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.251.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.252">
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.1">250</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.252.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.252.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.253">
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.1">251</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.253.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.253.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.254">
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.1">252</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.254.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.254.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.255">
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.1">253</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.255.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.255.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.256">
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.1">254</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.256.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.256.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.257">
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.1">255</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.257.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.257.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.258">
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.1">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.258.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.258.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.259">
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.1">257</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.259.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.259.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.260">
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.1">258</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.260.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.260.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.261">
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.1">259</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.261.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.261.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.262">
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.1">260</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.262.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.262.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.263">
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.1">261</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.263.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.263.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.264">
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.1">262</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.264.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.264.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.265">
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.1">263</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.265.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.265.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.266">
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.1">264</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.266.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.266.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.267">
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.1">265</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.267.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.267.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.268">
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.1">266</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.268.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.268.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.269">
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.1">267</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.2">154140672</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.269.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.269.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.270">
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.1">268</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.270.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.270.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.271">
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.1">269</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.271.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.271.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.272">
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.1">270</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.272.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.272.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.273">
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.1">271</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.273.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.273.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.274">
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.1">272</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.274.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.274.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.275">
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.1">273</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.275.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.275.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.276">
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.1">274</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.276.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.276.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.277">
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.1">275</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.277.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.277.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.278">
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.1">276</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.278.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.278.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.279">
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.1">277</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.279.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.279.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.280">
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.1">278</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.280.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.280.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.281">
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.1">279</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.281.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.281.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.282">
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.1">280</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.282.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.282.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.283">
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.1">281</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.283.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.283.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.284">
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.1">282</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.284.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.284.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.285">
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.1">283</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.285.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.285.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.286">
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.1">284</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.286.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.286.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.287">
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.1">285</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.287.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.287.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.288">
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.1">286</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.288.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.288.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.289">
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.1">287</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.289.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.289.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.290">
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.1">288</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.290.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.290.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.291">
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.1">289</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.291.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.291.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.292">
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.1">290</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.292.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.292.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.293">
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.1">291</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.293.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.293.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.294">
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.1">292</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.294.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.294.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.295">
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.1">293</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.295.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.295.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.296">
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.1">294</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.296.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.296.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.297">
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.1">295</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.297.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.297.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.298">
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.1">296</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.298.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.298.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.299">
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.1">297</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.299.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.299.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.300">
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.1">298</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.300.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.300.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.301">
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.1">299</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.301.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.301.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.302">
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.1">300</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.302.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.302.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.303">
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.1">301</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.303.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.303.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.304">
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.1">302</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.304.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.304.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.305">
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.1">303</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.305.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.305.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.306">
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.1">304</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.306.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.306.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.307">
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.1">305</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.307.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.307.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.308">
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.1">306</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.308.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.308.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.309">
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.1">307</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.309.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.309.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.310">
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.1">308</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.310.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.310.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.311">
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.1">309</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.311.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.311.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.312">
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.1">310</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.312.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.312.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.313">
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.1">311</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.313.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.313.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.314">
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.1">312</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.314.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.314.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.315">
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.1">313</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.315.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.315.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.316">
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.1">314</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.316.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.316.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.317">
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.1">315</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.317.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.317.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.318">
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.1">316</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.318.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.318.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.319">
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.1">317</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.319.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.319.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.320">
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.1">318</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.320.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.320.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.321">
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.1">319</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.321.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.321.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.322">
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.1">320</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.322.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.322.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.323">
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.1">321</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.323.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.323.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.324">
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.1">322</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.324.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.324.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.325">
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.1">323</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.325.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.325.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.326">
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.1">324</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.326.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.326.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.327">
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.1">325</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.327.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.327.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.328">
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.1">326</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.328.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.328.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.329">
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.1">327</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.329.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.329.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.330">
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.1">328</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.330.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.330.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.331">
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.1">329</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.331.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.331.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.332">
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.1">330</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.332.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.332.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.333">
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.1">331</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.333.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.333.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.334">
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.1">332</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.334.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.334.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.335">
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.1">333</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.335.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.335.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.336">
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.1">334</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.336.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.336.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.337">
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.1">335</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.337.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.337.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.338">
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.1">336</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.338.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.338.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.339">
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.1">337</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.4">0</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.5">7</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.339.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.339.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.340">
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.1">338</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.340.6">32</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.340.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.341">
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.1">339</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.341.6">64</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.341.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.342">
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.1">340</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.342.6">128</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.342.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.343">
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.1">341</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.343.6">256</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.343.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.344">
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.1">342</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.344.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.344.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.345">
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.1">343</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.345.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.345.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.346">
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.1">344</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.346.6">tensor</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.346.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.347">
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.1">345</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.347.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.347.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.348">
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.1">346</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.348.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.348.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.349">
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.1">347</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.5">4</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.349.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.349.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.350">
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.1">348</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.350.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.350.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.351">
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.1">349</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.5">6</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.351.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.351.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.352">
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.1">350</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.352.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.352.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.353">
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.1">351</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.4">2</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.353.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.353.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.354">
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.1">352</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.354.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.354.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.355">
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.1">353</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.4">3</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.355.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.355.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.356">
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.1">354</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.356.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.356.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.357">
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.1">355</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.357.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.357.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.358">
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.1">356</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.5">5</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.358.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.358.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.359">
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.1">357</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.4">5</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.359.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.359.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.360">
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.1">358</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.2">679477248</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.4">6</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.5">1</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.360.6">channel</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.360.7">✓</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.361">
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.1">359</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.361.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.361.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.362">
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.1">360</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.3">10485760000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.362.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.362.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.363">
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.1">361</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.363.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.363.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.364">
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.1">362</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.3">20971520000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.364.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.364.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.365">
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.1">363</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.365.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.365.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.366">
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.1">364</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.3">52428800000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.4">4</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.5">3</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.366.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.366.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.367">
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.1">365</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.2">1233125376</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.3">104857600000</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.4">1</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.5">2</td>
<td class="ltx_td ltx_align_left" id="A4.T3.4.367.6">512</td>
<td class="ltx_td ltx_align_center" id="A4.T3.4.367.7">✗</td>
</tr>
<tr class="ltx_tr" id="A4.T3.4.368">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.1">366</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.2">1233125376</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.3">104857600000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.4">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.5">3</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T3.4.368.6">512</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T3.4.368.7">✗</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameter settings used in the ablation experiments conducted in the paper. Each row represents a unique experiment configuration, specifying the model size (N), dataset size (D), exponent bits (E), mantissa bits (M), and block size (B).  The 'Fitting support' column indicates whether the corresponding experiment's results were used for fitting the scaling laws presented in the paper.  These ablation studies systematically investigated the impact of various floating-point quantization parameters to better understand their contribution to model performance and the accuracy of the scaling laws.
> <details>
> <summary>read the caption</summary>
> Table 3: All configurations for the ablation experiments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.02423/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.02423/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}